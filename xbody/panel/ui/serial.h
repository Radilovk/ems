// The bridge's USB serial port (/dev/ttyACM*), raw 115200 8N1, non-blocking; or an in-process fake bridge
// (XEMS_FAKE_BRIDGE=1) that answers like the firmware — the emulator and the tests drive the real code with it.
#pragma once
#include <deque>
#include <string>

class BridgePort {
public:
    virtual ~BridgePort() {}
    virtual bool ok() const = 0;
    virtual void write(const std::string &s) = 0;
    virtual bool readLine(std::string &line) = 0;   // one complete line, false if none
    virtual void poll(unsigned now) = 0;
    virtual std::string name() const = 0;
    virtual long rxBytes() const { return 0; }   // bytes heard since the port opened (the "plug the XIAO" diagnosis)
};

class SerialPort : public BridgePort {
public:
    SerialPort();
    ~SerialPort();
    bool open();                 // the first /dev/ttyACM* that opens
    bool ok() const { return fd_ >= 0; }
    void write(const std::string &s);
    bool readLine(std::string &line);
    void poll(unsigned now);
    std::string name() const { return path_; }
    long rxBytes() const { return rx_; }
private:
    void close();
    int fd_;
    long rx_;
    std::string path_, buf_;
};

class FakeBridge : public BridgePort {
public:
    FakeBridge();
    bool ok() const { return true; }
    void write(const std::string &s);
    bool readLine(std::string &line);
    void poll(unsigned now);
    std::string name() const { return "fake"; }
private:
    void say(const std::string &s) { lines_.push_back(s); }
    std::deque<std::string> lines_;
    bool scanning_;
    unsigned lastAdvMs_;
    std::string linked_;
    int battery_;
};
