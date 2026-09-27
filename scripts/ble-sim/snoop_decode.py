#!/usr/bin/env python3
"""Decode a Xiaomi Band 9/10 session (Bluetooth Classic / SPP) from an Android btsnoop_hci.log.

Goal: find the commands Mi Fitness sends to start / pause / resume / stop a workout from the phone,
so XEMS can do the same (the band then records a native workout that syncs to Mi Fitness).

usage: snoop_decode.py <btsnoop_hci.log> <auth key hex> [--all] [--hex]
  default output hides the chatty commands (auth, realtime HR 8/45..47, battery 2/1, 2/78, 2/79);
  --all shows everything, --hex adds the raw decrypted protobuf.
The log must contain the connect + auth (turn Bluetooth off/on after enabling the snoop log).
Layers: btsnoop (H4) → ACL → L2CAP → RFCOMM (UIH) → Xiaomi v1 (ba dc fe) / v2 (a5 a5) → AES → protobuf.
"""
import hashlib, hmac, struct, sys
from collections import Counter as Tally, defaultdict
from datetime import datetime, timedelta
from Crypto.Cipher import AES
from Crypto.Util import Counter

CHATTY = {"1/26", "1/27", "8/45", "8/46", "8/47", "2/1", "2/78", "2/79"}
EPOCH_US = 0x00dcddb30f2f8000        # btsnoop time is µs since year 0; this is 1970-01-01


def ts(us):
    return datetime(1970, 1, 1) + timedelta(microseconds=max(0, us - EPOCH_US))


# ---------------------------------------------------------------- protobuf
def varint(b, i):
    v = s = 0
    while True:
        c = b[i]; i += 1; v |= (c & 0x7F) << s; s += 7
        if c < 0x80:
            return v, i


def pb(buf):
    """Strict parse: raises if buf is not a whole protobuf message."""
    i, out = 0, []
    while i < len(buf):
        k, i = varint(buf, i)
        f, w = k >> 3, k & 7
        if f == 0:
            raise ValueError("field 0")
        if w == 0:
            v, i = varint(buf, i)
        elif w == 2:
            n, i = varint(buf, i)
            if i + n > len(buf):
                raise ValueError("len")
            v = bytes(buf[i:i + n]); i += n
        elif w == 5:
            v = struct.unpack("<I", buf[i:i + 4])[0]; i += 4
        elif w == 1:
            v = struct.unpack("<Q", buf[i:i + 8])[0]; i += 8
        else:
            raise ValueError("wire %d" % w)
        if i > len(buf):
            raise ValueError("eof")
        out.append((f, w, v))
    return out


def first(msg, f):
    for ff, _, v in msg:
        if ff == f:
            return v
    return None


def dump(buf, ind="  "):
    lines = []
    for f, w, v in pb(buf):
        if w != 2:
            lines.append("%s%d: %s" % (ind, f, v))
            continue
        try:
            if not v:
                raise ValueError
            sub = dump(v, ind + "  ")
            lines.append("%s%d {" % (ind, f)); lines += sub; lines.append(ind + "}")
        except Exception:
            txt = v.decode("utf-8", "strict") if v and all(32 <= c < 127 or c > 127 for c in v) else None
            lines.append("%s%d: %s" % (ind, f, repr(txt) if txt is not None else "0x" + v.hex()))
    return lines


# ---------------------------------------------------------------- crypto (same as XiaomiBandCrypto)
def derive(key, pn, wn):
    k = hmac.new(pn + wn, key, hashlib.sha256).digest()
    blob, prev, i = b"", b"", 1
    while len(blob) < 64:
        prev = hmac.new(k, prev + b"miwear-auth" + bytes([i]), hashlib.sha256).digest()
        blob += prev; i += 1
    # phone view: dec = band→phone, enc = phone→band
    return {"dec": blob[0:16], "enc": blob[16:32], "dec_n": blob[32:36], "enc_n": blob[36:40]}


def ctr(key, data):
    return AES.new(key, AES.MODE_CTR, counter=Counter.new(128, initial_value=int.from_bytes(key, "big"))).decrypt(data)


def ccm(key, n4, c, data):
    a = AES.new(key, AES.MODE_CCM, nonce=n4 + struct.pack("<II", 0, c), mac_len=4)
    return a.decrypt_and_verify(data[:-4], data[-4:])


def crc_arc(data):
    crc = 0
    for b in data:
        crc ^= b
        for _ in range(8):
            crc = (crc >> 1) ^ 0xA001 if crc & 1 else crc >> 1
    return crc


# ---------------------------------------------------------------- btsnoop → RFCOMM byte streams
def records(path):
    with open(path, "rb") as fh:
        head = fh.read(16)
        if head[:8] != b"btsnoop\0":
            sys.exit("not a btsnoop file")
        dlt = struct.unpack(">I", head[12:16])[0]
        while True:
            h = fh.read(24)
            if len(h) < 24:
                return
            _, incl, flags, _, t = struct.unpack(">IIIIq", h)
            pkt = fh.read(incl)
            if dlt == 1002:          # H4: first byte is the packet type
                if not pkt or pkt[0] != 2:
                    continue
                pkt = pkt[1:]
            elif dlt != 1001 or flags & 2:
                continue             # 1001 = raw HCI; flags bit1 = command/event
            yield t, "P>B" if not flags & 1 else "B>P", pkt


def rfcomm_streams(path):
    """Yields (time, direction, key, bytes) for every RFCOMM UIH payload on DLCI > 0."""
    frag = {}
    for t, d, acl in records(path):
        if len(acl) < 4:
            continue
        hdl, n = struct.unpack("<HH", acl[:4])
        pbf, hdl = (hdl >> 12) & 3, hdl & 0x0FFF
        data = acl[4:4 + n]
        k = (hdl, d)
        if pbf == 1:                 # continuation
            if k not in frag:
                continue
            frag[k] += data
        else:
            frag[k] = data
        buf = frag[k]
        if len(buf) < 4:
            continue
        ln, cid = struct.unpack("<HH", buf[:4])
        if len(buf) < 4 + ln:
            continue
        del frag[k]
        if cid < 0x40:
            continue                 # signalling / fixed channels
        f = buf[4:4 + ln]
        if len(f) < 4:
            continue
        addr, ctl = f[0], f[1]
        dlci = addr >> 2
        if dlci == 0 or (ctl & 0xEF) != 0xEF:
            continue                 # not UIH on a data channel
        i = 2
        if f[i] & 1:
            size = f[i] >> 1; i += 1
        else:
            size = (f[i] >> 1) | (f[i + 1] << 7); i += 2
        if ctl & 0x10:
            i += 1                   # credit byte
        if size:
            yield t, d, (hdl, cid if d == "P>B" else -cid, dlci), f[i:i + size]


# ---------------------------------------------------------------- Xiaomi frames
class Session:
    def __init__(self, key, show_all, show_hex):
        self.key, self.all, self.hex = key, show_all, show_hex
        self.keys = self.pn = None
        self.rx = defaultdict(bytes)
        self.tally = Tally()
        self.when = {}

    def feed(self, t, d, sk, data):
        self.rx[sk] += data
        while self.rx[sk]:
            b = self.rx[sk]
            j = min([x for x in (b.find(b"\xba\xdc\xfe"), b.find(b"\xa5\xa5")) if x >= 0], default=-1)
            if j < 0:
                self.rx[sk] = b""; return
            b = self.rx[sk] = b[j:]
            if b[:3] == b"\xba\xdc\xfe":
                if len(b) < 11:
                    return
                n = struct.unpack("<H", b[5:7])[0] - 3
                end = 10 + n + 1
                if len(b) < end:
                    return
                self.rx[sk] = b[end:]
                if b[end - 1] == 0xEF:
                    self.v1(t, d, b[3] & 0x0F, b[9], b[10:10 + n])
            else:
                if len(b) < 8:
                    return
                n, crc = struct.unpack("<HH", b[4:8])
                if len(b) < 8 + n:
                    return
                p = b[8:8 + n]
                if crc_arc(p) != crc:
                    self.rx[sk] = b[2:]; continue
                self.rx[sk] = b[8 + n:]
                self.v2(t, d, b[2] & 0x0F, p)

    def v2(self, t, d, ptype, p):
        if ptype != 3 or len(p) < 2:
            return                   # 1 = ack, 2 = session start
        ch, op, body = p[0], p[1], p[2:]
        if ch != 1:
            self.out(t, d, None, "data channel %d: %d bytes" % (ch, len(body)))
            return
        if op == 2:
            if not self.keys:
                self.out(t, d, None, "encrypted command before auth — log started too late"); return
            body = ctr(self.keys["enc" if d == "P>B" else "dec"], body)
        self.command(t, d, body)

    def v1(self, t, d, ch, dtype, p):
        if ch == 0:
            return
        if ch not in (1, 2) or dtype != 1:
            if dtype == 0:
                self.command(t, d, p)
            else:
                self.out(t, d, None, "v1 channel %d type %d: %d bytes" % (ch, dtype, len(p)))
            return
        if not self.keys:
            return
        k, n = (self.keys["enc"], self.keys["enc_n"]) if d == "P>B" else (self.keys["dec"], self.keys["dec_n"])
        for c, body in ((struct.unpack("<H", p[:2])[0], p[2:]), (0, p)):
            try:
                self.command(t, d, ccm(k, n, c, body)); return
            except Exception:
                pass
        self.out(t, d, None, "v1 decrypt failed (%d bytes)" % len(p))

    def command(self, t, d, proto):
        try:
            msg = pb(proto)
        except Exception:
            self.out(t, d, None, "not protobuf: " + proto[:32].hex()); return
        ty, sub = first(msg, 1), first(msg, 2) or 0
        name = "%s/%s" % (ty, sub)
        if name == "1/26":
            try:
                inner = pb(first(msg, 3))
                if first(inner, 30):           # phone → band: phone nonce
                    self.pn = first(pb(first(inner, 30)), 1); self.keys = None
                elif first(inner, 31) and self.pn:
                    wn = first(pb(first(inner, 31)), 1)
                    self.keys = derive(self.key, self.pn, wn)
                    self.out(t, d, name, "auth: session keys derived")
            except Exception as e:
                self.out(t, d, name, "auth parse: %s" % e)
        self.tally[(d, name)] += 1
        self.when.setdefault((d, name), t)
        if not self.all and name in CHATTY:
            return
        body = first(msg, 3)
        lines = []
        if body is not None or len(msg) > 2:
            try:
                lines = dump(proto)[2:] if body is None else dump(body)
            except Exception:
                lines = ["  0x" + proto.hex()]
        if self.hex:
            lines.append("  raw " + proto.hex())
        self.out(t, d, name, "\n".join(lines))

    def out(self, t, d, name, text):
        print("%s %s %-6s %s" % (ts(t).strftime("%H:%M:%S.%f")[:-3], d, name or "-", text.strip("\n")
                                 if "\n" not in text.strip() else "\n" + text.rstrip()))


def main():
    a = [x for x in sys.argv[1:] if not x.startswith("--")]
    if len(a) != 2:
        sys.exit(__doc__)
    s = Session(bytes.fromhex(a[1]), "--all" in sys.argv, "--hex" in sys.argv)
    for t, d, sk, data in rfcomm_streams(a[0]):
        s.feed(t, d, sk, data)
    print("\n== commands (direction type/sub: count, first seen) ==")
    for (d, name), c in sorted(s.tally.items(), key=lambda x: s.when[x[0]]):
        print("%s %-6s %5d  %s" % (d, name, c, ts(s.when[(d, name)]).strftime("%H:%M:%S")))
    if not s.tally:
        print("nothing decoded: no Xiaomi SPP traffic (band connected over BLE? log enabled after connect?)")


if __name__ == "__main__":
    main()
