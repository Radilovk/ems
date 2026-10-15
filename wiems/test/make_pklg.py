"""Synthetic PacketLogger capture for test/run.sh: discovery, a write request, a write command, and a
notification split over two ACL fragments."""
import struct
import sys

def u128(n):  # little-endian 128-bit UUID 6e4000NN-b5a3-f393-e0a9-e50e24dcca9e
    return bytes.fromhex("6e4000%02xb5a3f393e0a9e50e24dcca9e" % n)[::-1]

recs, t = [], [0]
def rec(kind, body):
    t[0] += 1
    r = struct.pack(">II", 1000 + t[0] // 100, (t[0] % 100) * 10000) + bytes([kind]) + body
    recs.append(struct.pack(">I", len(r)) + r)

def acl(kind, att, conn=64, split=None):
    l2 = struct.pack("<HH", len(att), 4) + att
    parts = [l2] if split is None else [l2[:split], l2[split:]]
    for i, p in enumerate(parts):
        rec(kind, struct.pack("<HH", conn | ((0 if i == 0 else 1) << 12), len(p)) + p)

TX, RX = 2, 3
acl(TX, bytes([0x10]) + struct.pack("<HHH", 1, 0xFFFF, 0x2800))
acl(RX, bytes([0x11, 20]) + struct.pack("<HH", 0x10, 0xFFFF) + u128(1))
acl(TX, bytes([0x08]) + struct.pack("<HHH", 0x10, 0xFFFF, 0x2803))
acl(RX, bytes([0x09, 21]) + struct.pack("<HBH", 0x11, 0x0C, 0x12) + u128(2)
    + struct.pack("<HBH", 0x13, 0x10, 0x14) + u128(3))
acl(TX, bytes([0x12]) + struct.pack("<H", 0x12) + bytes.fromhex("53010aff"))
acl(RX, bytes([0x13]))
acl(TX, bytes([0x52]) + struct.pack("<H", 0x12) + bytes.fromhex("00"))
acl(RX, bytes([0x1B]) + struct.pack("<H", 0x14) + bytes([0xA5] + list(range(32))), split=10)
open(sys.argv[1], "wb").write(b"".join(recs))
