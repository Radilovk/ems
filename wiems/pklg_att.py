#!/usr/bin/env python3
"""WiEMS BLE capture → readable ATT log (wiems/README.md, step 1).

Reads an Apple PacketLogger file (.pklg — from an iPad sysdiagnose with the Apple "Bluetooth" logging profile,
or saved from PacketLogger on a Mac) or a btsnoop file (Android "HCI snoop log"), reassembles ACL → L2CAP,
keeps the ATT channel (CID 4) and prints one line per GATT operation:

    t=12.345  >W   0x0012 [6e400002-…]  53 01 0a ff     (write request, tablet → device)
    t=12.371  <N   0x0014 [6e400003-…]  a5 00 01        (notification, device → tablet)

The HCI log is taken after the link-layer decryption, so pairing / bonding does not hide anything.
Handles are named from the GATT discovery in the same capture (connect the app AFTER logging starts).

usage: pklg_att.py CAPTURE [--all] [--csv OUT]
    --all   also print discovery, MTU and error traffic (default: reads, writes, notifications only)
"""
import struct
import sys

ATT_CID = 0x0004
OPS = {
    0x01: ("ERR", "error"), 0x02: (">MTU", "mtu req"), 0x03: ("<MTU", "mtu rsp"),
    0x08: (">RT", "read by type"), 0x09: ("<RT", "read by type rsp"),
    0x0A: (">R", "read"), 0x0B: ("<R", "read rsp"), 0x0C: (">RB", "read blob"), 0x0D: ("<RB", "read blob rsp"),
    0x10: (">RG", "read by group"), 0x11: ("<RG", "read by group rsp"),
    0x04: (">FI", "find info"), 0x05: ("<FI", "find info rsp"),
    0x12: (">W", "write req"), 0x13: ("<WA", "write rsp"), 0x52: (">C", "write cmd"),
    0x16: (">PW", "prepare write"), 0x17: ("<PW", "prepare write rsp"), 0x18: (">EW", "execute write"),
    0x1B: ("<N", "notify"), 0x1D: ("<I", "indicate"), 0x1E: (">IC", "confirm"),
}
DATA_OPS = {0x0A, 0x0B, 0x12, 0x52, 0x1B, 0x1D, 0x16}
BASE = "-0000-1000-8000-00805f9b34fb"


def uuid_str(b):
    if len(b) == 2:
        return "%04x" % struct.unpack("<H", b)[0]
    h = b[::-1].hex()
    s = "%s-%s-%s-%s-%s" % (h[:8], h[8:12], h[12:16], h[16:20], h[20:])
    return s[4:8] if s.startswith("0000") and s.endswith(BASE) else s


def read_records(path):
    """Yield (time_s, direction 'tx'|'rx', acl_bytes) for every ACL packet in the file."""
    data = open(path, "rb").read()
    if data[:8] == b"btsnoop\0":
        pos, t0 = 16, None
        while pos + 24 <= len(data):
            olen, ilen, flags, _drops, ts = struct.unpack(">IIIIq", data[pos:pos + 24])
            pkt = data[pos + 24:pos + 24 + ilen]
            pos += 24 + ilen
            if not pkt or pkt[0] != 0x02:  # H4 type: ACL
                continue
            t = ts / 1e6
            t0 = t if t0 is None else t0
            yield t - t0, ("rx" if flags & 1 else "tx"), pkt[1:]
        return
    pos, t0 = 0, None
    while pos + 4 <= len(data):
        (n,) = struct.unpack(">I", data[pos:pos + 4])
        rec = data[pos + 4:pos + 4 + n]
        pos += 4 + n
        if len(rec) < 9:
            continue
        secs, usecs = struct.unpack(">II", rec[:8])
        kind, body = rec[8], rec[9:]
        if kind not in (0x02, 0x03):  # 2 = ACL sent, 3 = ACL received
            continue
        t = secs + usecs / 1e6
        t0 = t if t0 is None else t0
        yield t - t0, ("tx" if kind == 0x02 else "rx"), body


def att_pdus(records):
    """ACL fragments → whole L2CAP frames on the ATT channel: (t, dir, conn, pdu)."""
    pending = {}
    for t, d, acl in records:
        if len(acl) < 4:
            continue
        hf, ln = struct.unpack("<HH", acl[:4])
        conn, pb = hf & 0x0FFF, (hf >> 12) & 0x3
        frag = acl[4:4 + ln]
        key = (conn, d)
        if pb == 0x1:  # continuation
            if key not in pending:
                continue
            pending[key][1] += frag
        else:
            pending[key] = [t, bytearray(frag)]
        t1, buf = pending[key]
        if len(buf) < 4:
            continue
        l2len, cid = struct.unpack("<HH", buf[:4])
        if len(buf) < 4 + l2len:
            continue
        del pending[key]
        if cid == ATT_CID:
            yield t1, d, conn, bytes(buf[4:4 + l2len])


class Gatt:
    """Handle → name from the discovery seen in the capture."""

    def __init__(self):
        self.names = {}
        self.services = []  # (start, end, uuid)
        self.chars = []  # (decl, value_handle, props, uuid)

    def learn(self, op, pdu):
        if op == 0x11 and len(pdu) > 2:  # read by group type rsp: services
            n = pdu[1]
            for i in range(2, len(pdu) - n + 1, n):
                s, e = struct.unpack("<HH", pdu[i:i + 4])
                self.services.append((s, e, uuid_str(pdu[i + 4:i + n])))
        elif op == 0x09 and len(pdu) > 2:  # read by type rsp: characteristic declarations
            n = pdu[1]
            if n not in (7, 21):
                return
            for i in range(2, len(pdu) - n + 1, n):
                decl, props, vh = struct.unpack("<HBH", pdu[i:i + 5])
                u = uuid_str(pdu[i + 5:i + n])
                self.chars.append((decl, vh, props, u))
                self.names[vh] = u
        elif op == 0x05 and len(pdu) > 2:  # find info rsp: descriptors (0x2902 = CCCD)
            fmt = pdu[1]
            n = 4 if fmt == 1 else 18
            for i in range(2, len(pdu) - n + 1, n):
                (h,) = struct.unpack("<H", pdu[i:i + 2])
                u = uuid_str(pdu[i + 2:i + n])
                if h not in self.names:
                    self.names[h] = "desc " + u

    def name(self, h):
        return self.names.get(h, "?")


def main(argv):
    if len(argv) < 2:
        print(__doc__)
        return 2
    path, show_all = argv[1], "--all" in argv
    csv = argv[argv.index("--csv") + 1] if "--csv" in argv else None
    gatt, rows, last_req = Gatt(), [], {}
    for t, d, conn, pdu in att_pdus(read_records(path)):
        if not pdu:
            continue
        op = pdu[0]
        gatt.learn(op, pdu)
        tag = OPS.get(op, ("?%02x" % op, "op"))[0]
        handle, value = None, b""
        if op in (0x12, 0x52, 0x1B, 0x1D, 0x0A) and len(pdu) >= 3:
            (handle,) = struct.unpack("<H", pdu[1:3])
            value = pdu[3:]
            last_req[conn] = handle
        elif op == 0x16 and len(pdu) >= 5:
            (handle,) = struct.unpack("<H", pdu[1:3])
            value = pdu[5:]
        elif op == 0x0B:  # read rsp: handle of the matching read
            handle, value = last_req.get(conn), pdu[1:]
        if not show_all and op not in DATA_OPS:
            continue
        rows.append((t, tag, conn, handle, value if handle is not None else pdu))
    for t, tag, conn, h, v in rows:
        hs = "0x%04x [%s]" % (h, gatt.name(h)) if h is not None else ""
        print("t=%9.3f  %-4s c%-3d %-30s %s" % (t, tag, conn, hs, v.hex(" ")))
    if gatt.services:
        print("\n# services")
        for s, e, u in gatt.services:
            print("  0x%04x-0x%04x %s" % (s, e, u))
        print("# characteristics (value handle, props)")
        for _d, vh, p, u in gatt.chars:
            print("  0x%04x 0x%02x %s" % (vh, p, u))
    if csv:
        with open(csv, "w") as f:
            f.write("t,op,conn,handle,uuid,hex\n")
            for t, tag, conn, h, v in rows:
                f.write("%.4f,%s,%d,%s,%s,%s\n" % (t, tag, conn, "" if h is None else "0x%04x" % h,
                                                   "" if h is None else gatt.name(h), v.hex()))
    print("\n%d ATT operations" % len(rows), file=sys.stderr)
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv))
