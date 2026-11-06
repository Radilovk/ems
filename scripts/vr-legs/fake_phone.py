# Test only: the phone's side for the Godot test — answers the game's "XEMS-LEGS? <port>" like VrLink.java and streams
# a fixed pose (knee_l 1.2 m below the head, 5 cm ahead, 10 cm left) at 50 Hz for 8 s. If no question arrives
# (broadcast not looped back on this machine) it sends to 127.0.0.1:47812 after 1.5 s anyway.
import socket, time, json
s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM); s.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
s.bind(('0.0.0.0', 47811)); s.settimeout(0.02)
target, how, t0 = None, '', time.time()
while time.time() - t0 < 8:
    try:
        b, a = s.recvfrom(256)
        if b.startswith(b'XEMS-LEGS?'):
            target, how = (a[0], int(b.split()[1])), 'asked by the game'
    except socket.timeout: pass
    if target is None and time.time() - t0 > 1.5: target, how = ('127.0.0.1', 47812), 'fallback (no broadcast here)'
    if target:
        m = {'v': 1, 't': int(time.time() * 1000), 'H': 1.75, 'L': {'kl': [0.05, 0.1, -1.2], 'kr': [0.05, -0.1, -1.2], 'fl': [0.1, 0.1, -1.6], 'fr': [0.1, -0.1, -1.6]},
             'V': {'kl': [0, 0, 0], 'kr': [0, 0, 0], 'fl': [0, 0, 0], 'fr': [0, 0, 0]}, 'air': [0, 0]}
        s.sendto(json.dumps(m).encode(), target)
print('fake phone: sent to %s (%s)' % (target, how))
