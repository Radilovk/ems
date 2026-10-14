#include "bytes.h"

std::string toHex(const Bytes &b) {
    static const char *H = "0123456789ABCDEF";
    std::string s;
    s.reserve(b.size() * 2);
    for (size_t i = 0; i < b.size(); i++) {
        s += H[b[i] >> 4];
        s += H[b[i] & 15];
    }
    return s;
}

static int nib(char c) {
    if (c >= '0' && c <= '9') return c - '0';
    if (c >= 'a' && c <= 'f') return c - 'a' + 10;
    if (c >= 'A' && c <= 'F') return c - 'A' + 10;
    return -1;
}

bool fromHex(const std::string &s, Bytes &out) {
    out.clear();
    if (s.size() % 2) return false;
    for (size_t i = 0; i < s.size(); i += 2) {
        int a = nib(s[i]), b = nib(s[i + 1]);
        if (a < 0 || b < 0) return false;
        out.push_back((unsigned char)(a * 16 + b));
    }
    return true;
}
