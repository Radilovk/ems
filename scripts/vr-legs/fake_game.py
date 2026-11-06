# Test only: the VR game's side of the link, in Python — asks "XEMS-LEGS? <port>" like motion_link.gd and counts what
# comes back. Exit 1 if the phone side never answered.
import socket, sys, time, json
port = int(sys.argv[1]) if len(sys.argv) > 1 else 47990
s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM); s.setsockopt(socket.SOL_SOCKET, socket.SO_BROADCAST, 1)
s.bind(('0.0.0.0', port)); s.settimeout(0.05)
got, lat, first, t_end, ask = [], [], None, time.time() + 4.5, 0
while time.time() < t_end:
    if time.time() > ask:
        ask = time.time() + 1.0
        for dst in ('255.255.255.255', '127.0.0.1'):
            try: s.sendto(('XEMS-LEGS? %d' % port).encode(), (dst, 47811))
            except OSError: pass
    try:
        b, _ = s.recvfrom(2048)
        d = json.loads(b); got.append(d['n']); lat.append(time.time() * 1000 - d['t'])
        if first is None: first = time.time()
    except socket.timeout: pass
if not got: print('fake game: nothing came back'); sys.exit(1)
lost = (max(got) + 1) - len(set(got))
print('fake game: %d poses, %d lost, latency median %.1f ms, max %.1f ms' % (len(got), lost, sorted(lat)[len(lat) // 2], max(lat)))
