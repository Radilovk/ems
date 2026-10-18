#!/usr/bin/env python3
"""Stand-in for the license server's /v1/unit/* (scripts/xbody/test.sh 10): HTTPS on 127.0.0.1:<port>.
  test-net-server.py DIR PACK PORT VERSION [BADSHA]   DIR has cert.pem/key.pem; POSTed logs land in DIR/posted.txt."""
import hashlib, http.server, ssl, sys

D, PACK, PORT, VER = sys.argv[1], open(sys.argv[2], 'rb').read(), int(sys.argv[3]), sys.argv[4]
SHA = '0' * 64 if len(sys.argv) > 5 else hashlib.sha256(PACK).hexdigest()


class H(http.server.BaseHTTPRequestHandler):
    def log_message(self, *a):
        with open(D + '/requests.log', 'a') as f:
            f.write(self.requestline + '\n')

    def reply(self, body, ctype='text/plain; charset=utf-8'):
        self.send_response(200)
        self.send_header('Content-Type', ctype)
        self.send_header('Content-Length', str(len(body)))
        self.end_headers()
        self.wfile.write(body)

    def do_GET(self):
        if self.path.startswith('/v1/unit/update'):
            self.reply(f'version={VER}\nsha256={SHA}\nsize={len(PACK)}\nnotes=test\n'.encode())
        elif self.path.startswith('/v1/unit/pack'):
            self.reply(PACK, 'application/x-tar')
        else:
            self.send_error(404)

    def do_POST(self):
        body = self.rfile.read(int(self.headers.get('Content-Length', 0)))
        with open(D + '/posted.txt', 'wb') as f:
            f.write(body)
        self.reply(b'OK 42\n')


s = http.server.HTTPServer(('127.0.0.1', PORT), H)
c = ssl.SSLContext(ssl.PROTOCOL_TLS_SERVER)
c.load_cert_chain(D + '/cert.pem', D + '/key.pem')
s.socket = c.wrap_socket(s.socket, server_side=True)
s.serve_forever()
