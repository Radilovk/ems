#include "serial.h"
#include "../core/bridge.h"
#include <cstdio>
#include <errno.h>
#include <fcntl.h>
#include <termios.h>
#include <unistd.h>

SerialPort::SerialPort() : fd_(-1) {}
SerialPort::~SerialPort() { close(); }

void SerialPort::close() {
    if (fd_ >= 0) ::close(fd_);
    fd_ = -1;
    buf_.clear();
}

bool SerialPort::open() {
    for (int i = 0; i < 4; i++) {
        char p[32];
        std::snprintf(p, sizeof p, "/dev/ttyACM%d", i);
        int fd = ::open(p, O_RDWR | O_NOCTTY | O_NONBLOCK);
        if (fd < 0) continue;
        struct termios t;
        if (tcgetattr(fd, &t) == 0) {
            cfmakeraw(&t);
            cfsetispeed(&t, B115200);
            cfsetospeed(&t, B115200);
            t.c_cflag |= CLOCAL | CREAD;
            tcsetattr(fd, TCSANOW, &t);
        }
        fd_ = fd;
        path_ = p;
        return true;
    }
    return false;
}

void SerialPort::write(const std::string &s) {
    if (fd_ < 0) return;
    size_t off = 0;
    int tries = 0;
    while (off < s.size() && tries < 50) {
        ssize_t n = ::write(fd_, s.data() + off, s.size() - off);
        if (n > 0) off += (size_t)n;
        else if (n < 0 && errno != EAGAIN) { close(); return; }
        else { tries++; usleep(1000); }
    }
}

void SerialPort::poll(unsigned) {
    if (fd_ < 0) return;
    char tmp[512];
    for (;;) {
        ssize_t n = ::read(fd_, tmp, sizeof tmp);
        if (n > 0) { buf_.append(tmp, (size_t)n); continue; }
        if (n == 0 || (n < 0 && errno != EAGAIN && errno != EWOULDBLOCK)) close();   // unplugged
        break;
    }
}

bool SerialPort::readLine(std::string &line) {
    size_t nl = buf_.find('\n');
    if (nl == std::string::npos) {
        if (buf_.size() > 8192) buf_.clear();
        return false;
    }
    line = buf_.substr(0, nl);
    buf_.erase(0, nl + 1);
    if (!line.empty() && line[line.size() - 1] == '\r') line.erase(line.size() - 1);
    return true;
}

// ---------------------------------------------------------------- fake bridge (emulator / tests)

FakeBridge::FakeBridge() : scanning_(false), lastAdvMs_(0), battery_(78) { say("HELLO XEMS-BRIDGE 1 4"); }

void FakeBridge::write(const std::string &s) {
    std::string line = s;
    while (!line.empty() && (line[line.size() - 1] == '\n' || line[line.size() - 1] == '\r')) line.erase(line.size() - 1);
    std::string cmd = line.substr(0, line.find(' '));
    std::string rest = line.size() > cmd.size() ? line.substr(cmd.size() + 1) : "";
    std::string mac = rest.substr(0, rest.find(' '));
    if (cmd == "PING") say("PONG 1");
    else if (cmd == "SCAN") { scanning_ = rest == "1"; say(scanning_ ? "SCANNING 1" : "SCANNING 0"); }
    else if (cmd == "CONN") {
        linked_ = mac;
        say("LINK " + mac + (mac == "02:BC:34:D6:2D:93" ? " FE50" : " FFF0"));
    } else if (cmd == "DISC") { say("LOST " + mac + " 22"); linked_.clear(); }
    else if (cmd == "SAFE") say("SAFEOK " + mac);
    else if (cmd == "W") {
        say("WOK " + mac);
        std::string hx = rest.substr(rest.find(' ') + 1);
        if (hx == "5304055C") {   // XEMS battery query
            char n[64];
            int s = 0x53 + 5 + 6 + battery_ + 0;
            std::snprintf(n, sizeof n, "N %s 530506%02X00%02X", mac.c_str(), battery_, s & 255);
            say(n);
        } else if (hx == "3600010801" "0000C9") {
            say("N " + mac + " 36000108010622C9");
        }
    }
}

void FakeBridge::poll(unsigned now) {
    if (scanning_ && now - lastAdvMs_ > 700) {
        lastAdvMs_ = now;
        say("ADV C4:7F:0E:21:A3:5B -58 FFF0 NB-2231");
        say("ADV 02:BC:34:D6:2D:93 -66 FE50 EMS08-05629");
        say("ADV 5A:11:90:CC:02:7E -81 - Mi_Band_10");
    }
}

bool FakeBridge::readLine(std::string &line) {
    if (lines_.empty()) return false;
    line = lines_.front();
    lines_.pop_front();
    return true;
}
