#include "xbres.h"
#include <QFile>
#include <algorithm>
#include <vector>

namespace {

struct Elf {
    QByteArray b;
    struct Sec { unsigned type, addr, off, size, link; };
    std::vector<Sec> secs;

    unsigned u32(unsigned o) const {
        if (o + 4 > (unsigned)b.size()) return 0;
        const unsigned char *p = (const unsigned char *)b.constData() + o;
        return p[0] | p[1] << 8 | p[2] << 16 | (unsigned)p[3] << 24;
    }
    unsigned u16(unsigned o) const {
        if (o + 2 > (unsigned)b.size()) return 0;
        const unsigned char *p = (const unsigned char *)b.constData() + o;
        return p[0] | p[1] << 8;
    }
    bool parse() {
        if (b.size() < 52 || b.left(4) != QByteArray("\177ELF", 4) || b.at(4) != '\1' || b.at(5) != '\1') return false;   // ELF32 LE
        unsigned shoff = u32(0x20), shentsize = u16(0x2E), shnum = u16(0x30);
        for (unsigned i = 0; i < shnum; i++) {
            unsigned h = shoff + i * shentsize;
            Sec s = {u32(h + 4), u32(h + 12), u32(h + 16), u32(h + 20), u32(h + 24)};
            secs.push_back(s);
        }
        return !secs.empty();
    }
    // File offset of a virtual address in a loaded, file-backed section (−1: none).
    long long fileOff(unsigned addr) const {
        for (size_t i = 0; i < secs.size(); i++)
            if (secs[i].type == 1 && addr >= secs[i].addr && addr < secs[i].addr + secs[i].size)
                return (long long)secs[i].off + (addr - secs[i].addr);
        return -1;
    }
};

unsigned be32(const QByteArray &b, long long o) {
    if (o < 0 || o + 4 > b.size()) return 0;
    const unsigned char *p = (const unsigned char *)b.constData() + o;
    return (unsigned)p[0] << 24 | p[1] << 16 | p[2] << 8 | p[3];
}
unsigned be16(const QByteArray &b, long long o) {
    if (o < 0 || o + 2 > b.size()) return 0;
    const unsigned char *p = (const unsigned char *)b.constData() + o;
    return p[0] << 8 | p[1];
}

struct Tree {
    const QByteArray *b;
    long long data, name, tree;
    const QStringList *wanted;
    QMap<QString, QByteArray> *out;

    QString nameAt(unsigned o) const {
        unsigned len = be16(*b, name + o);
        QString s;
        for (unsigned i = 0; i < len && i < 512; i++) s += QChar((ushort)be16(*b, name + o + 6 + i * 2));
        return s;
    }
    void walk(unsigned node, const QString &path, int depth) {
        if (depth > 16 || node > 100000) return;
        long long e = tree + node * 14;
        if (e + 14 > b->size()) return;
        QString p = node ? path + QLatin1Char('/') + nameAt(be32(*b, e)) : QString();
        unsigned flags = be16(*b, e + 4);
        if (flags & 2) {   // directory
            unsigned count = be32(*b, e + 6), first = be32(*b, e + 10);
            for (unsigned c = first; c < first + count && c < first + 4096; c++) walk(c, p, depth + 1);
            return;
        }
        if (!wanted->isEmpty() && !wanted->contains(p)) return;
        long long d = data + be32(*b, e + 10);
        unsigned len = be32(*b, d);
        if (d + 4 + len > b->size()) return;
        QByteArray raw = b->mid((int)(d + 4), (int)len);
        (*out)[p] = (flags & 1) ? qUncompress(raw) : raw;   // rcc compression = qCompress format
    }
};

}  // namespace

QMap<QString, QByteArray> xbres::load(const QString &elfPath, const QStringList &wanted) {
    QMap<QString, QByteArray> out;
    QFile f(elfPath);
    if (!f.open(QIODevice::ReadOnly)) return out;
    Elf elf;
    elf.b = f.readAll();
    if (!elf.parse()) return out;
    // Every compiled .qrc leaves three local symbols: _ZL16qt_resource_data / _name, _ZL18qt_resource_struct.
    std::vector<unsigned> data, name, tree;
    for (size_t i = 0; i < elf.secs.size(); i++) {
        if (elf.secs[i].type != 2 || elf.secs[i].link >= elf.secs.size()) continue;   // SHT_SYMTAB
        const Elf::Sec &st = elf.secs[i], &str = elf.secs[st.link];
        for (unsigned o = st.off; o + 16 <= st.off + st.size; o += 16) {
            unsigned n = elf.u32(o);
            if (str.off + n >= (unsigned)elf.b.size()) continue;
            const char *s = elf.b.constData() + str.off + n;
            if (!qstrcmp(s, "_ZL16qt_resource_data")) data.push_back(elf.u32(o + 4));
            else if (!qstrcmp(s, "_ZL16qt_resource_name")) name.push_back(elf.u32(o + 4));
            else if (!qstrcmp(s, "_ZL18qt_resource_struct")) tree.push_back(elf.u32(o + 4));
        }
    }
    if (data.empty() || data.size() != name.size() || data.size() != tree.size()) return out;
    // The three arrays of one .qrc sit next to each other: sorted by address they pair up.
    std::sort(data.begin(), data.end());
    std::sort(name.begin(), name.end());
    std::sort(tree.begin(), tree.end());
    for (size_t i = 0; i < data.size(); i++) {
        Tree t = {&elf.b, elf.fileOff(data[i]), elf.fileOff(name[i]), elf.fileOff(tree[i]), &wanted, &out};
        if (t.data < 0 || t.name < 0 || t.tree < 0) continue;
        t.walk(0, QString(), 0);
    }
    return out;
}
