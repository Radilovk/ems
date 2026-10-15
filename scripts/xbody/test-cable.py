#!/usr/bin/env python3
"""xems-xbproxy end to end on the host: a fake serial daemon (upstream), the proxy, a fake xbody_control.
   python3 scripts/xbody/test-cable.py PROXY_BINARY"""
import os, socket, struct, subprocess, sys, tempfile, time

def crc(b):
    c = 0xFFFF
    for x in b:
        c ^= x
        for _ in range(8):
            c = (c >> 1) ^ 0xA001 if c & 1 else c >> 1
    return c

def frame(bits, tp, levels):
    b = bytearray(38); b[0] = 0x52
    struct.pack_into('<HHHHH', b, 2, bits, 0, 100, 350, tp)
    struct.pack_into('<10H', b, 16, *levels)
    struct.pack_into('<H', b, 36, crc(b[:36]))
    return b'S' + b.hex().upper().encode() + b'\r\n'

def parse(line):
    b = bytes.fromhex(line[1:].decode())
    assert crc(b[:36]) == struct.unpack_from('<H', b, 36)[0], 'bad crc out'
    return struct.unpack_from('<H', b, 2)[0], struct.unpack_from('<H', b, 10)[0], struct.unpack_from('<10H', b, 16)

def free_port():
    s = socket.socket(); s.bind(('127.0.0.1', 0)); p = s.getsockname()[1]; s.close(); return p

fails = 0
def check(what, ok):
    global fails
    print(('  ok  ' if ok else '  FAIL ') + what)
    fails += 0 if ok else 1

d = tempfile.mkdtemp()
conf, state = os.path.join(d, 'cable.conf'), os.path.join(d, 'state')
lp, up = free_port(), free_port()
srv = socket.socket(); srv.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1); srv.bind(('127.0.0.1', up)); srv.listen(1)
open(conf, 'w').write('wiring=xems\ndouble=0\n')
env = dict(os.environ, XEMS_XB_LISTEN=str(lp), XEMS_XB_UP=str(up), XEMS_XB_CONF=conf, XEMS_XB_STATE=state)
check('selftest', subprocess.call([sys.argv[1], '--selftest']) == 0)
px = subprocess.Popen([sys.argv[1]], env=env)
try:
    time.sleep(0.3)
    ctl = socket.create_connection(('127.0.0.1', lp)); ctl.settimeout(2)
    board, _ = srv.accept(); board.settimeout(2)
    rx = b''
    def recv_line():
        global rx
        while b'\n' not in rx: rx += board.recv(4096)
        l, rx = rx.split(b'\n', 1)
        return l.rstrip(b'\r')
    lv = [0] * 10; lv[8] = 60
    ctl.sendall(frame(3, 12, lv))
    bits, tp, out = parse(recv_line())
    check('xems wiring: legflex 60 → arm lead', out[4] == 60 and out[8] == 0 and bits == 3)
    ctl.sendall(b'S4F003580\r\n')
    check('other lines pass byte for byte', recv_line() == b'S4F003580')
    ctl.sendall(b'garbage line\r\n')
    check('undecodable lines pass', recv_line() == b'garbage line')
    board.sendall(b'X\r\n')
    check('board → control passes', ctl.recv(16) == b'X\r\n')
    # Settings change mid-run: wiring stays, double impulse follows (from the 2nd measured pause).
    time.sleep(1.1)
    open(conf, 'w').write('wiring=xbody\ndouble=1\ndouble_hz=5\ndouble_pct=50\n')
    os.utime(conf, (time.time() + 2, time.time() + 2))
    time.sleep(0.8)
    t0 = time.time()
    def step(bits, at):
        while time.time() - t0 < at: time.sleep(0.01)
        ctl.sendall(frame(bits, 12, lv)); return parse(recv_line())
    step(2, 0.0); step(3, 0.6); step(2, 1.2)            # pause measured: 0.6 s < 0.8 s → never a 2nd impulse
    b2 = step(2, 1.6)
    check('short pause: no 2nd impulse', b2[0] == 2)
    step(3, 2.2); step(2, 3.2); step(3, 4.4)            # pause 1.2 s measured
    step(2, 5.0); s1 = step(2, 5.4)
    check('2nd impulse in the pause: 5 Hz, 50 %', s1[0] == 3 and s1[1] == 200 and s1[2][4] == 30)
    check('wiring still latched (xems) mid-run', s1[2][8] == 0)
    st = open(state).read()
    check('state file for the panel', 'training=1' in st and 'wiring=xems' in st)
    ctl.sendall(frame(0, 12, [0] * 10)); recv_line()
    ctl.sendall(frame(3, 12, lv)); b3 = parse(recv_line())
    check('after stop the new wiring (xbody) applies', b3[2][8] == 60)
    ctl.close()
    time.sleep(0.4)
    ctl = socket.create_connection(('127.0.0.1', lp)); board, _ = srv.accept(); board.settimeout(2); rx = b''
    ctl.sendall(frame(3, 12, lv))
    check('xbody_control reconnects through the proxy', parse(recv_line())[2][8] == 60)
finally:
    px.kill()
print('cable proxy: %s' % ('FAIL' if fails else 'OK'))
sys.exit(1 if fails else 0)
