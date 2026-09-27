#!/usr/bin/env python3
"""Offline test for snoop_decode.py: builds a btsnoop log (v2 auth + encrypted workout-like command,
ACL split in two fragments) and checks the decoder recovers the command."""
import os, struct, subprocess, sys, tempfile
sys.path.insert(0, os.path.dirname(__file__))
from snoop_decode import derive, ctr, crc_arc, EPOCH_US

KEY = bytes(range(16))
PN, WN = b"\x11" * 16, b"\x22" * 16


def uv(x):
    out = bytearray()
    while True:
        b = x & 0x7F; x >>= 7
        out.append(b | (0x80 if x else 0))
        if not x:
            return bytes(out)


def fv(f, v):
    return uv(f << 3) + uv(v)


def _fb(f, b):
    return uv(f << 3 | 2) + uv(len(b)) + b


def cmd(t, s, body=b""):
    return fv(1, t) + fv(2, s) + body


def v2(payload, seq=0):
    return b"\xa5\xa5" + bytes([3, seq]) + struct.pack("<HH", len(payload), crc_arc(payload)) + payload


def rfcomm(data, dlci=2):
    return bytes([(dlci << 2) | 3, 0xEF]) + (bytes([len(data) << 1 | 1]) if len(data) < 128
                                               else struct.pack("<H", len(data) << 1)) + data + b"\x00"


def acl(l2, cid=0x40, frag=False):
    l2 = struct.pack("<HH", len(l2), cid) + l2
    parts = [l2[:10], l2[10:]] if frag else [l2]
    out = []
    for i, p in enumerate(parts):
        out.append(b"\x02" + struct.pack("<HH", 0x0001 | ((1 if i else 2) << 12), len(p)) + p)
    return out


keys = derive(KEY, PN, WN)
t0 = EPOCH_US + 1_700_000_000 * 10**6
recs = []
def add(pkts, rx):
    for p in pkts:
        recs.append((p, 1 if rx else 0))

add(acl(rfcomm(v2(b"\x01\x01" + cmd(1, 26, _fb(3, _fb(30, _fb(1, PN))))))), False)
add(acl(rfcomm(v2(b"\x01\x01" + cmd(1, 26, _fb(3, _fb(31, _fb(1, WN) + _fb(2, b"p" * 32))))))), True)
add(acl(rfcomm(v2(b"\x01\x02" + ctr(keys["enc"], cmd(8, 45, _fb(3, fv(1, 1))))))), False)
workout = cmd(8, 26, _fb(3, _fb(40, fv(1, 21) + fv(2, 1) + _fb(3, b"strength"))))
add(acl(rfcomm(v2(b"\x01\x02" + ctr(keys["enc"], workout))), frag=True), False)
add(acl(rfcomm(v2(b"\x01\x02" + ctr(keys["dec"], cmd(8, 27, _fb(3, fv(1, 0))))))), True)

f = tempfile.NamedTemporaryFile(suffix=".log", delete=False)
f.write(b"btsnoop\0" + struct.pack(">II", 1, 1002))
for i, (p, fl) in enumerate(recs):
    f.write(struct.pack(">IIIIq", len(p), len(p), fl, 0, t0 + i * 1000) + p)
f.close()
out = subprocess.run([sys.executable, os.path.join(os.path.dirname(__file__), "snoop_decode.py"),
                      f.name, KEY.hex()], capture_output=True, text=True)
print(out.stdout, out.stderr)
ok = ("P>B 8/26" in out.stdout and "'strength'" in out.stdout and "B>P 8/27" in out.stdout
      and "8/45" not in out.stdout.split("==")[0] and "auth: session keys derived" in out.stdout)
print("PASS" if ok else "FAIL")
sys.exit(0 if ok else 1)
