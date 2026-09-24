#!/usr/bin/env python3
"""Xiaomi Band 9/10 simulator over Bluetooth Classic (SPP) — written for the XEMS test,
independent of the Java client. Byte layouts are described in XiaomiBandSppFrames.java.

usage: spp_band.py <auth key hex>      env: SPP_VERSION=1|2 (default 2), NOT_WORN=1
Line protocol on stdin/stdout:
  in : W <hex>      bytes the phone wrote to the RFCOMM socket
       TICK         time passes (band may push a realtime event)
       SUMMARY
  out: B <hex>      bytes the band writes
       X <reason>   band drops the link
       L <text>     log
       .            end of reply batch
"""
import hashlib, hmac, os, struct, sys
from Crypto.Cipher import AES
from Crypto.Util import Counter

KEY = bytes.fromhex(sys.argv[1])
VERSION = int(os.environ.get("SPP_VERSION", "2"))
NOT_WORN = os.environ.get("NOT_WORN") == "1"


def emit(*a):
    print(*a, flush=True)


def log(t):
    emit("L", t)


# ---------------------------------------------------------------- protobuf
def uvar(v):
    out = bytearray()
    while True:
        b = v & 0x7F
        v >>= 7
        out.append(b | (0x80 if v else 0))
        if not v:
            return bytes(out)


def fv(n, v):
    return uvar(n << 3) + uvar(v)


def fb(n, b):
    return uvar((n << 3) | 2) + uvar(len(b)) + b


def pb(buf):
    i, d = 0, {}
    while i < len(buf):
        k, s = 0, 0
        while True:
            c = buf[i]; i += 1; k |= (c & 0x7F) << s; s += 7
            if c < 0x80:
                break
        f, w = k >> 3, k & 7
        if w == 0:
            v, s = 0, 0
            while True:
                c = buf[i]; i += 1; v |= (c & 0x7F) << s; s += 7
                if c < 0x80:
                    break
        elif w == 2:
            n, s = 0, 0
            while True:
                c = buf[i]; i += 1; n |= (c & 0x7F) << s; s += 7
                if c < 0x80:
                    break
            v = buf[i:i + n]; i += n
        elif w == 5:
            v = buf[i:i + 4]; i += 4
        else:
            raise ValueError("wire type %d" % w)
        d.setdefault(f, []).append(v)
    return d


def command(t, s, body=b""):
    return fv(1, t) + fv(2, s) + body


# ---------------------------------------------------------------- crypto
def keys_for(phone_nonce, watch_nonce):
    k = hmac.new(phone_nonce + watch_nonce, KEY, hashlib.sha256).digest()
    blob, prev, i = b"", b"", 1
    while len(blob) < 64:
        prev = hmac.new(k, prev + b"miwear-auth" + bytes([i]), hashlib.sha256).digest()
        blob += prev; i += 1
    # as seen from the phone: dec (band→phone), enc (phone→band)
    return {"dec": blob[0:16], "enc": blob[16:32], "dec_n": blob[32:36], "enc_n": blob[36:40]}


def ccm(key, n4, ctr):
    return AES.new(key, AES.MODE_CCM, nonce=n4 + struct.pack("<II", 0, ctr), mac_len=4)


def ctr(key, data):
    c = AES.new(key, AES.MODE_CTR, counter=Counter.new(128, initial_value=int.from_bytes(key, "big")))
    return c.encrypt(data)


def crc_arc(data):
    crc = 0
    for b in data:
        crc ^= b
        for _ in range(8):
            crc = (crc >> 1) ^ 0xA001 if crc & 1 else crc >> 1
    return crc


# ---------------------------------------------------------------- framing
def v1_frame(channel, opcode, serial, dtype, payload, reply=False):
    return (b"\xba\xdc\xfe" + bytes([channel, 0x80 | (0x40 if reply else 0)])
            + struct.pack("<H", len(payload) + 3) + bytes([opcode, serial, dtype]) + payload + b"\xef")


def v2_frame(ptype, seq, payload):
    return b"\xa5\xa5" + bytes([ptype, seq & 0xFF]) + struct.pack("<HH", len(payload), crc_arc(payload)) + payload


st = {"proto": 1, "keys": None, "pn": None, "wn": os.urandom(16), "authed": False, "rt": False,
      "rt_sent": 0, "cmds": [], "seq": 0, "rx": b"", "acks": 0, "unacked": 0, "v1_ctr": 0,
      "music": 0, "track": None}


def send_cmd(proto):
    """Band → phone command, encrypted once authenticated."""
    if st["proto"] == 2:
        enc = st["authed"]
        body = ctr(st["keys"]["dec"], proto) if enc else proto
        emit("B", v2_frame(3, st["seq"], bytes([1, 2 if enc else 1]) + body).hex())
        st["seq"] += 1
        st["unacked"] += 1
    else:
        if st["authed"]:
            c = ccm(st["keys"]["dec"], st["keys"]["dec_n"], 0)
            ct, tag = c.encrypt_and_digest(proto)
            emit("B", v1_frame(1, 2, 0, 1, ct + tag).hex())
        else:
            emit("B", v1_frame(1, 2, 0, 2, proto).hex())


def on_command(proto):
    d = pb(proto)
    t, s = d[1][0], d.get(2, [0])[0]
    st["cmds"].append("%d/%d" % (t, s))
    if t == 1 and s == 26:
        pn = pb(pb(d[3][0])[30][0])[1][0]
        st["pn"] = pn
        st["keys"] = keys_for(pn, st["wn"])
        proof = hmac.new(st["keys"]["dec"], st["wn"] + pn, hashlib.sha256).digest()
        send_cmd(command(1, 26, fb(3, fb(31, fb(1, st["wn"]) + fb(2, proof)))))
    elif t == 1 and s == 27:
        k = st["keys"]
        step3 = pb(pb(d[3][0])[32][0])
        want = hmac.new(k["enc"], st["pn"] + st["wn"], hashlib.sha256).digest()
        if step3[1][0] != want:
            emit("X", "step3 nonces mismatch"); return
        info = step3[2][0]
        try:
            ccm(k["enc"], k["enc_n"], 0).decrypt_and_verify(info[:-4], info[-4:])
        except Exception as e:
            emit("X", "step3 device info: %s" % e); return
        send_cmd(command(1, 27))
        st["authed"] = True
        log("auth ok")
    elif not st["authed"]:
        emit("X", "command %d/%d before auth" % (t, s))
    elif t == 2 and s == 2:
        send_cmd(command(2, 2, fb(4, fb(3, fb(1, b"SN10") + fb(2, b"3.0.1") + fb(3, b"M2455B1")))))
    elif t == 2 and s == 78:
        send_cmd(command(2, 78, fb(4, fb(48, fv(1, 0) + fv(2, 64) + fv(3, 0 if NOT_WORN else 1) + fv(4, 0)))))
    elif t == 2 and s == 1:
        send_cmd(command(2, 1, fb(4, fb(2, fb(1, fv(1, 64))))))
    elif t == 2 and s == 3:
        clock = pb(pb(d[4][0])[4][0])
        if 1 not in clock or 2 not in clock or 3 not in clock:
            emit("X", "clock without date/time/zone")
    elif t == 8 and s == 0:
        info = pb(pb(d[10][0])[1][0])
        log("user info height=%d gender=%d" % (info[1][0], info[4][0]))
    elif t == 18 and s == 1:
        info = pb(pb(d[20][0])[1][0])
        st["track"] = (info.get(4, [b"?"])[0].decode(), info.get(5, [b""])[0].decode(), info[1][0])
        log("music screen: %r / %r state=%d" % st["track"])
        log("music text utf8 %s" % ("ok" if st["track"][1].startswith("\u041e\u0441\u043d") else "BROKEN"))
    elif t == 8 and s == 45:
        st["rt"] = True
    elif t == 8 and s == 46:
        st["rt"] = False


def on_v1(pk_channel, dtype, payload):
    if pk_channel == 0:
        emit("B", v1_frame(0, 0, 0, 0, bytes([VERSION, 0, 0])).hex())
        if VERSION >= 2:
            st["proto"] = 2
        return
    if pk_channel != 2:
        emit("X", "v1 phone packet on channel %d" % pk_channel); return
    if dtype == 1:
        if not st["keys"]:
            emit("X", "encrypted before keys"); return
        c = struct.unpack("<H", payload[:2])[0]
        if c != st["v1_ctr"] + 1:
            emit("X", "v1 counter %d, expected %d" % (c, st["v1_ctr"] + 1)); return
        st["v1_ctr"] = c
        body = payload[2:]
        try:
            proto = ccm(st["keys"]["enc"], st["keys"]["enc_n"], c).decrypt_and_verify(body[:-4], body[-4:])
        except Exception as e:
            emit("X", "v1 decrypt: %s" % e); return
    else:
        if st["authed"]:
            emit("X", "plain command after auth"); return
        proto = payload
    on_command(proto)


def on_v2(ptype, seq, payload):
    if ptype == 2:
        if payload[:1] != b"\x01":
            emit("X", "session opcode %r" % payload[:1]); return
        emit("B", v2_frame(2, 0, bytes([2]) + payload[1:]).hex())
        return
    if ptype == 1:
        st["acks"] += 1
        st["unacked"] = max(0, st["unacked"] - 1)
        return
    if ptype != 3:
        emit("X", "v2 type %d" % ptype); return
    emit("B", v2_frame(1, seq, b"").hex())
    ch, op, body = payload[0], payload[1], payload[2:]
    if ch != 1:
        emit("X", "v2 channel %d" % ch); return
    if op == 2:
        if not st["authed"]:
            emit("X", "encrypted before auth"); return
        proto = ctr(st["keys"]["enc"], body)
    else:
        if st["authed"]:
            emit("X", "plain command after auth"); return
        proto = body
    on_command(proto)


def feed(data):
    st["rx"] += data
    while st["rx"]:
        b = st["rx"]
        if b[:3] == b"\xba\xdc\xfe":
            if len(b) < 11:
                return
            n = struct.unpack("<H", b[5:7])[0] - 3
            total = 10 + n + 1
            if len(b) < total:
                return
            if b[total - 1] != 0xEF:
                emit("X", "v1 epilogue"); st["rx"] = b""; return
            st["rx"] = b[total:]
            if st["proto"] == 2 and b[3] != 0:
                emit("X", "v1 packet after switching to v2"); return
            on_v1(b[3] & 0x0F, b[9], b[10:10 + n])
        elif b[:2] == b"\xa5\xa5":
            if len(b) < 8:
                return
            n, crc = struct.unpack("<HH", b[4:8])
            if len(b) < 8 + n:
                return
            payload = b[8:8 + n]
            st["rx"] = b[8 + n:]
            if crc_arc(payload) != crc:
                emit("X", "v2 crc"); return
            if st["proto"] != 2:
                emit("X", "v2 packet on a v1 link"); return
            on_v2(b[2] & 0x0F, b[3], payload)
        else:
            emit("X", "garbage %s" % b[:8].hex()); st["rx"] = b""; return


def tick():
    # The user opens the music screen, then presses ⏭ on the band.
    if st["authed"] and st["rt_sent"] >= 3 and st["music"] == 0:
        send_cmd(command(18, 0)); st["music"] = 1; return
    if st["music"] == 1 and st["track"] is not None:
        send_cmd(command(18, 2, fb(20, fb(2, fv(1, 4))))); st["music"] = 2; return
    if st["rt"] and st["rt_sent"] < 5:
        hr = 0 if st["rt_sent"] == 0 else 70 + st["rt_sent"]
        stats = fv(1, 2000 + st["rt_sent"]) + fv(2, 40) + fv(3, 7) + fv(4, hr)
        send_cmd(command(8, 47, fb(10, fb(39, stats))))
        st["rt_sent"] += 1


for line in sys.stdin:
    parts = line.split()
    if not parts:
        continue
    if parts[0] == "W":
        feed(bytes.fromhex(parts[1]))
    elif parts[0] == "TICK":
        tick()
    elif parts[0] == "SUMMARY":
        log("summary proto=v%d cmds=%s rt_sent=%d acks_from_phone=%d unacked=%d"
            % (st["proto"], ",".join(st["cmds"]), st["rt_sent"], st["acks"], st["unacked"]))
        if st["track"] is not None and st["music"] == 2:
            log("MUSIC ok")
    emit(".")
