// xems-xbproxy — XBody's cable output, shaped (xbody/panel/core/xbcable.h): sits between xbody_control and the
// stimulator's serial daemon. /etc/default/emsc-tcpseriald moves the daemon to 1236 when this program passes
// --selftest; xbody_control still connects to 1235 and gets us. Frames from xbody_control run through
// xbcable::Shaper, everything else (and the other direction) passes byte for byte.
//   settings  /opt/xems/xbody-cable.conf   (the panel writes it; re-read when it changes)
//   state     /tmp/xems-cable.state        (for the panel: training, live wiring, second impulse, program)
//   board     /opt/xems/board-rx.log       anything the stimulator board sends back (xbody_control never reads
//             it; whether the board talks at all is unknown — this answers it on the unit). Capped at 64 KB, kept
//             across boots; the USB installer copies it to the stick.
// Env (tests): XEMS_XB_LISTEN, XEMS_XB_UP (ports), XEMS_XB_CONF, XEMS_XB_STATE, XEMS_XB_RXLOG.
#include "../core/xbcable.h"
#include <arpa/inet.h>
#include <cerrno>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <netinet/in.h>
#include <netinet/tcp.h>
#include <signal.h>
#include <string>
#include <sys/select.h>
#include <sys/socket.h>
#include <sys/stat.h>
#include <sys/time.h>
#include <unistd.h>

static unsigned nowMs() {
    struct timeval tv;
    gettimeofday(&tv, 0);
    return (unsigned)(tv.tv_sec * 1000ULL + tv.tv_usec / 1000);
}

static int envInt(const char *k, int d) { const char *v = std::getenv(k); return v ? std::atoi(v) : d; }
static std::string envStr(const char *k, const char *d) { const char *v = std::getenv(k); return v ? v : d; }

static bool sendAll(int fd, const char *p, size_t n) {
    while (n) {
        ssize_t w = send(fd, p, n, MSG_NOSIGNAL);
        if (w < 0 && errno == EINTR) continue;
        if (w <= 0) return false;
        p += w;
        n -= (size_t)w;
    }
    return true;
}

static std::string readFile(const std::string &path) {
    std::string s;
    FILE *f = std::fopen(path.c_str(), "r");
    if (!f) return s;
    char buf[512];
    size_t n;
    while ((n = std::fread(buf, 1, sizeof buf, f)) > 0) s.append(buf, n);
    std::fclose(f);
    return s;
}

static void writeState(const std::string &path, const std::string &text) {
    std::string tmp = path + ".tmp";
    FILE *f = std::fopen(tmp.c_str(), "w");
    if (!f) return;
    std::fputs(text.c_str(), f);
    std::fclose(f);
    std::rename(tmp.c_str(), path.c_str());
}

static int selftest() {
    xbcable::Shaper s;
    Bytes f(xbcable::FRAME, 0), back;
    f[0] = 'R';
    f[2] = 3;
    f[16 + 8 * 2] = 60;
    xbcable::Config c;
    c.wiring = xbcable::WIRE_XEMS;
    s.setConfig(c);
    Bytes o = s.process(f, 0);
    if (!xbcable::decodeLine(xbcable::encodeLine(o).substr(0, 77), back)) return 1;
    return back[16 + 4 * 2] == 60 ? 0 : 1;   // legflex → the arm lead
}

int main(int argc, char **argv) {
    if (argc > 1 && !std::strcmp(argv[1], "--selftest")) return selftest();
    signal(SIGPIPE, SIG_IGN);
    int listenPort = envInt("XEMS_XB_LISTEN", 1235), upPort = envInt("XEMS_XB_UP", 1236);
    std::string confPath = envStr("XEMS_XB_CONF", "/opt/xems/xbody-cable.conf");
    std::string statePath = envStr("XEMS_XB_STATE", "/tmp/xems-cable.state");
    std::string rxPath = envStr("XEMS_XB_RXLOG", "/opt/xems/board-rx.log");
    struct stat rxst;
    long rxTotal = 0, rxLogged = stat(rxPath.c_str(), &rxst) == 0 ? (long)rxst.st_size : 0;

    int ls = socket(AF_INET, SOCK_STREAM, 0);
    int one = 1;
    setsockopt(ls, SOL_SOCKET, SO_REUSEADDR, &one, sizeof one);
    struct sockaddr_in a;
    std::memset(&a, 0, sizeof a);
    a.sin_family = AF_INET;
    a.sin_addr.s_addr = htonl(INADDR_LOOPBACK);
    a.sin_port = htons((unsigned short)listenPort);
    if (ls < 0 || bind(ls, (struct sockaddr *)&a, sizeof a) < 0 || listen(ls, 2) < 0) {
        std::perror("xems-xbproxy: listen");
        return 1;
    }
    time_t confTime = (time_t)-1;
    for (;;) {
        int cl = accept(ls, 0, 0);
        if (cl < 0) { if (errno == EINTR) continue; usleep(200000); continue; }
        int up = -1;
        for (int tries = 0; tries < 25 && up < 0; tries++) {   // the daemon may still be starting
            up = socket(AF_INET, SOCK_STREAM, 0);
            struct sockaddr_in u = a;
            u.sin_port = htons((unsigned short)upPort);
            if (connect(up, (struct sockaddr *)&u, sizeof u) < 0) { close(up); up = -1; usleep(200000); }
        }
        if (up < 0) { close(cl); continue; }   // xbody_control reconnects by itself
        setsockopt(cl, IPPROTO_TCP, TCP_NODELAY, &one, sizeof one);
        setsockopt(up, IPPROTO_TCP, TCP_NODELAY, &one, sizeof one);
        xbcable::Shaper shaper;
        confTime = (time_t)-1;
        std::string line, lastState;
        unsigned lastCheck = 0, lastStateMs = 0;
        bool open = true;
        while (open) {
            unsigned t = nowMs();
            if (t - lastCheck >= 500) {   // settings changed?
                lastCheck = t;
                struct stat st;
                time_t mt = stat(confPath.c_str(), &st) == 0 ? st.st_mtime : 0;
                if (mt != confTime) { confTime = mt; shaper.setConfig(xbcable::parseConfig(readFile(confPath))); }
            }
            char sbuf[256];
            std::snprintf(sbuf, sizeof sbuf,
                          "training=%d\nwiring=%s\nsecond=%d\npause_ms=%d\nprogram=%s\nprogram_seg=%d\nprogram_s=%u\n"
                          "program_over=%d\nboard_rx=%ld\n",
                          shaper.training() ? 1 : 0, shaper.wiringLive() == xbcable::WIRE_XEMS ? "xems" : "xbody",
                          shaper.secondNow() ? 1 : 0, shaper.learnedPauseMs(),
                          shaper.training() ? shaper.programLive().c_str() : "", shaper.programSeg(),
                          shaper.programMs() / 1000, shaper.programOver() ? 1 : 0, rxTotal);
            if (sbuf != lastState || t - lastStateMs >= 1000) { writeState(statePath, sbuf); lastState = sbuf; lastStateMs = t; }

            fd_set rd;
            FD_ZERO(&rd);
            FD_SET(cl, &rd);
            FD_SET(up, &rd);
            struct timeval tv = {0, 200000};
            int r = select((cl > up ? cl : up) + 1, &rd, 0, 0, &tv);
            if (r < 0) { if (errno == EINTR) continue; break; }
            char buf[4096];
            if (FD_ISSET(up, &rd)) {   // board side → xbody_control: as is
                ssize_t n = recv(up, buf, sizeof buf, 0);
                if (n <= 0 || !sendAll(cl, buf, (size_t)n)) open = false;
                if (n > 0) {   // the board said something: keep it (capped)
                    rxTotal += n;
                    if (rxLogged < 65536) {
                        FILE *lf = std::fopen(rxPath.c_str(), "a");
                        if (lf) {
                            std::fprintf(lf, "%u ", nowMs());
                            std::fwrite(buf, 1, (size_t)n, lf);
                            std::fputc('\n', lf);
                            std::fclose(lf);
                            rxLogged += n + 12;
                        }
                    }
                }
            }
            if (open && FD_ISSET(cl, &rd)) {
                ssize_t n = recv(cl, buf, sizeof buf, 0);
                if (n <= 0) { open = false; break; }
                for (ssize_t i = 0; i < n && open; i++) {
                    line += buf[i];
                    if (buf[i] != '\n') {
                        if (line.size() > 512) { open = sendAll(up, line.data(), line.size()); line.clear(); }
                        continue;
                    }
                    std::string body = line;
                    while (!body.empty() && (body[body.size() - 1] == '\n' || body[body.size() - 1] == '\r'))
                        body.erase(body.size() - 1);
                    Bytes fr;
                    std::string out = line;
                    if (xbcable::decodeLine(body, fr)) out = xbcable::encodeLine(shaper.process(fr, nowMs()));
                    open = sendAll(up, out.data(), out.size());
                    line.clear();
                }
            }
        }
        close(cl);
        close(up);
        writeState(statePath, "training=0\nwiring=xbody\nsecond=0\npause_ms=0\n");
    }
}
