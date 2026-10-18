package bg.xems.fleshka;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/**
 * Just enough ext2/3/4 to put the XEMS mod onto the XBody unit's own SD card from a phone — what build.py --img does
 * with debugfs: make missing directories, replace / add regular files and symlinks, delete files, read them back.
 * ext3: block maps (direct, single, double indirect). ext4 as Yocto 1.7 makes it (the owner's card: extents + flex_bg +
 * uninit_bg): extent trees read at any depth, new files written as extents (≤ 4 in the inode, else one leaf block),
 * group descriptor checksums (crc16) kept, uninitialised groups left alone. 1–4 KB blocks, 128/256-byte inodes,
 * 32-byte descriptors. Anything else (64bit, metadata_csum, bigalloc, inline data, a journal that needs recovery) is
 * refused before a byte changes.
 * Writes go straight to the disk (no journal): the card must be out of the unit, the unit shut down cleanly.
 * Directories that carry an htree index lose the index flag when they get an entry (the kernel reads them linearly).
 */
public final class Ext3 {
    static final int ROOT = 2;
    static final int S_IFREG = 0100000, S_IFDIR = 040000, S_IFLNK = 0120000, S_IFMT = 0170000;
    static final int FT_REG = 1, FT_DIR = 2, FT_LNK = 7;
    static final int INDEX_FL = 0x1000;

    final BlockDev d;
    final long base;
    final byte[] sb = new byte[1024];
    int bs, firstData, bpg, ipg, inodeSize, groups, firstIno, wantExtra;
    long blocksCount;
    boolean fileType, extents, gdtCsum;
    byte[] gdt;
    final byte[] uuid = new byte[16];
    static final int EXTENTS_FL = 0x80000, HUGE_FILE_FL = 0x40000;
    final HashMap<Integer, byte[]> blockBm = new HashMap<Integer, byte[]>(), inodeBm = new HashMap<Integer, byte[]>();
    int now = (int) (System.currentTimeMillis() / 1000);

    Ext3(BlockDev dev, long partOff) { d = dev; base = partOff; }

    /** An ext2/3 superblock at this partition offset? (no feature checks) */
    public static boolean probe(BlockDev dev, long partOff) {
        try {
            byte[] b = new byte[2];
            dev.read(partOff + 1024 + 56, b, 0, 2);
            return (b[0] & 0xff) == 0x53 && (b[1] & 0xff) == 0xEF;
        } catch (Exception e) {
            return false;
        }
    }

    public static Ext3 open(BlockDev dev, long partOff) throws Exception {
        Ext3 f = new Ext3(dev, partOff);
        f.load();
        return f;
    }

    void load() throws Exception {
        d.read(base + 1024, sb, 0, 1024);
        if (u16(sb, 56) != 0xEF53) throw new Exception("няма ext файлова система");
        int incompat = (int) u32(sb, 96), ro = (int) u32(sb, 100);
        if ((incompat & 0x4) != 0)
            throw new Exception("картата не е изключена правилно (журналът чака) — сложи я в XBody, включи и изключи с Shut down");
        // filetype, extents, flex_bg — what ext3 and Yocto 1.7's ext4 use
        if ((incompat & ~(0x2 | 0x40 | 0x200)) != 0)
            throw new Exception("непозната файлова система (incompat " + Integer.toHexString(incompat) + ")");
        // sparse_super, large_file, btree_dir, huge_file, gdt_csum (uninit_bg), dir_nlink, extra_isize
        if ((ro & ~(0x1 | 0x2 | 0x4 | 0x8 | 0x10 | 0x20 | 0x40)) != 0)
            throw new Exception("непозната файлова система (ro_compat " + Integer.toHexString(ro) + ")");
        fileType = (incompat & 0x2) != 0;
        extents = (incompat & 0x40) != 0;
        gdtCsum = (ro & 0x10) != 0;
        System.arraycopy(sb, 104, uuid, 0, 16);
        bs = 1024 << (int) u32(sb, 24);
        if (bs > 4096) throw new Exception("блокове " + bs);
        blocksCount = u32(sb, 4);
        firstData = (int) u32(sb, 20);
        bpg = (int) u32(sb, 32);
        ipg = (int) u32(sb, 40);
        int rev = (int) u32(sb, 76);
        inodeSize = rev == 0 ? 128 : u16(sb, 88);
        firstIno = rev == 0 ? 11 : (int) u32(sb, 84);
        wantExtra = inodeSize > 128 && (ro & 0x40) != 0 ? u16(sb, 0x15E) : 0;
        if (inodeSize < 128 || inodeSize > bs) throw new Exception("inode " + inodeSize);
        groups = (int) ((blocksCount - firstData + bpg - 1) / bpg);
        gdt = new byte[groups * 32];
        d.read(base + (long) (firstData + 1) * bs, gdt, 0, gdt.length);
    }

    // ---------------------------------------------------------------- bytes

    static int u16(byte[] b, int o) { return (b[o] & 0xff) | (b[o + 1] & 0xff) << 8; }

    static long u32(byte[] b, int o) {
        return ((b[o] & 0xffL) | (b[o + 1] & 0xffL) << 8 | (b[o + 2] & 0xffL) << 16 | (b[o + 3] & 0xffL) << 24);
    }

    static void p16(byte[] b, int o, int v) { b[o] = (byte) v; b[o + 1] = (byte) (v >> 8); }

    static void p32(byte[] b, int o, long v) {
        b[o] = (byte) v; b[o + 1] = (byte) (v >> 8); b[o + 2] = (byte) (v >> 16); b[o + 3] = (byte) (v >> 24);
    }

    byte[] readBlock(long blk) throws Exception {
        byte[] b = new byte[bs];
        d.read(base + blk * bs, b, 0, bs);
        return b;
    }

    void writeBlock(long blk, byte[] b) throws Exception {
        if (blk <= 0 || blk < firstData || blk >= blocksCount) throw new Exception("блок извън картата " + blk);
        d.write(base + blk * bs, b, 0, bs);
    }

    // ---------------------------------------------------------------- inodes

    long inodeOff(int ino) {
        int g = (ino - 1) / ipg, i = (ino - 1) % ipg;
        return base + u32(gdt, g * 32 + 8) * bs + (long) i * inodeSize;
    }

    byte[] readInode(int ino) throws Exception {
        byte[] b = new byte[inodeSize];
        d.read(inodeOff(ino), b, 0, inodeSize);
        return b;
    }

    void writeInode(int ino, byte[] b) throws Exception { d.write(inodeOff(ino), b, 0, inodeSize); }

    static int mode(byte[] in) { return u16(in, 0); }

    static long fsize(byte[] in) { return u32(in, 4); }

    /** A symlink whose target lives in i_block (no data block). */
    static boolean fastLink(byte[] in) { return (mode(in) & S_IFMT) == S_IFLNK && u32(in, 28) == 0; }

    long ptr(byte[] in, int i) { return u32(in, 40 + 4 * i); }

    /** Physical block of logical block l (0 = hole). */
    long bmap(byte[] in, long l) throws Exception {
        if ((u32(in, 32) & EXTENTS_FL) != 0) return extMap(in, 40, l);
        int per = bs / 4;
        if (l < 12) return ptr(in, (int) l);
        l -= 12;
        if (l < per) return ind(ptr(in, 12), l);
        l -= per;
        if (l < (long) per * per) return ind(ind(ptr(in, 13), l / per), l % per);
        l -= (long) per * per;
        return ind(ind(ind(ptr(in, 14), l / per / per), l / per % per), l % per);
    }

    /** Extent tree lookup from the node at b[o] (the inode's i_block, or a tree block at 0). 0 = hole / unwritten. */
    long extMap(byte[] b, int o, long l) throws Exception {
        if (u16(b, o) != 0xF30A) throw new Exception("развален extent");
        int n = u16(b, o + 2), depth = u16(b, o + 6);
        if (depth == 0) {
            for (int i = 0; i < n; i++) {
                int e = o + 12 + 12 * i;
                long first = u32(b, e);
                int len = u16(b, e + 4);
                boolean unwritten = len > 32768;
                if (unwritten) len -= 32768;
                if (l >= first && l < first + len) {
                    if (unwritten) return 0;
                    return ((long) u16(b, e + 6) << 32 | u32(b, e + 8)) + (l - first);
                }
            }
            return 0;
        }
        int pick = -1;
        for (int i = 0; i < n; i++) if (u32(b, o + 12 + 12 * i) <= l) pick = i;
        if (pick < 0) return 0;
        int e = o + 12 + 12 * pick;
        long child = u32(b, e + 4) | (long) u16(b, e + 8) << 32;
        return extMap(readBlock(child), 0, l);
    }

    void freeExt(byte[] b, int o) throws Exception {
        if (u16(b, o) != 0xF30A) return;
        int n = u16(b, o + 2), depth = u16(b, o + 6);
        for (int i = 0; i < n; i++) {
            int e = o + 12 + 12 * i;
            if (depth == 0) {
                int len = u16(b, e + 4);
                if (len > 32768) len -= 32768;
                long start = (long) u16(b, e + 6) << 32 | u32(b, e + 8);
                for (int k = 0; k < len; k++) freeBlock(start + k);
            } else {
                long child = u32(b, e + 4) | (long) u16(b, e + 8) << 32;
                freeExt(readBlock(child), 0);
                freeBlock(child);
            }
        }
    }

    long ind(long blk, long i) throws Exception {
        if (blk == 0) return 0;
        byte[] b = readBlock(blk);
        return u32(b, (int) i * 4);
    }

    // ---------------------------------------------------------------- bitmaps

    byte[] bitmap(HashMap<Integer, byte[]> cache, int g, int field) throws Exception {
        Integer k = Integer.valueOf(g);
        byte[] b = cache.get(k);
        if (b == null) {
            b = readBlock(u32(gdt, g * 32 + field));
            cache.put(k, b);
        }
        return b;
    }

    void addFree(int g, int field, int delta) {
        p16(gdt, g * 32 + field, u16(gdt, g * 32 + field) + delta);
        int so = field == 12 ? 12 : 16;
        p32(sb, so, u32(sb, so) + delta);
    }

    long allocBlock(int prefer) throws Exception {
        for (int k = 0; k < groups; k++) {
            int g = (prefer + k) % groups;
            if (u16(gdt, g * 32 + 12) == 0) continue;
            if (gdtCsum && (u16(gdt, g * 32 + 18) & 0x2) != 0) continue;   // BLOCK_UNINIT: its bitmap is not on disk
            byte[] bm = bitmap(blockBm, g, 0);
            long valid = Math.min(bpg, blocksCount - firstData - (long) g * bpg);
            for (int i = 0; i < valid; i++) {
                if ((bm[i >> 3] & (1 << (i & 7))) != 0) continue;
                long blk = firstData + (long) g * bpg + i;
                if (blk == 0) continue;   // never hand out the superblock's block, whatever the bitmap says
                bm[i >> 3] |= (byte) (1 << (i & 7));
                addFree(g, 12, -1);
                return blk;
            }
        }
        throw new Exception("картата е пълна");
    }

    void freeBlock(long blk) throws Exception {
        // 0 is "no block" in a block map — and with 4 KB blocks (first data block 0) also the superblock's own block.
        if (blk == 0 || blk < firstData || blk >= blocksCount) return;
        int g = (int) ((blk - firstData) / bpg), i = (int) ((blk - firstData) % bpg);
        byte[] bm = bitmap(blockBm, g, 0);
        if ((bm[i >> 3] & (1 << (i & 7))) == 0) return;
        bm[i >> 3] &= (byte) ~(1 << (i & 7));
        addFree(g, 12, 1);
    }

    int allocInode(int prefer, boolean dir) throws Exception {
        for (int k = 0; k < groups; k++) {
            int g = (prefer + k) % groups;
            if (u16(gdt, g * 32 + 14) == 0) continue;
            if (gdtCsum && (u16(gdt, g * 32 + 18) & 0x1) != 0) continue;   // INODE_UNINIT
            byte[] bm = bitmap(inodeBm, g, 4);
            for (int i = 0; i < ipg; i++) {
                int ino = g * ipg + i + 1;
                if (ino < firstIno || (bm[i >> 3] & (1 << (i & 7))) != 0) continue;
                bm[i >> 3] |= (byte) (1 << (i & 7));
                addFree(g, 14, -1);
                if (dir) p16(gdt, g * 32 + 16, u16(gdt, g * 32 + 16) + 1);
                if (gdtCsum && ipg - u16(gdt, g * 32 + 28) <= i) p16(gdt, g * 32 + 28, ipg - i - 1);   // itable_unused
                return ino;
            }
        }
        throw new Exception("няма свободни inode-и");
    }

    void freeInode(int ino, boolean dir) throws Exception {
        int g = (ino - 1) / ipg, i = (ino - 1) % ipg;
        byte[] bm = bitmap(inodeBm, g, 4);
        bm[i >> 3] &= (byte) ~(1 << (i & 7));
        addFree(g, 14, 1);
        if (dir) p16(gdt, g * 32 + 16, u16(gdt, g * 32 + 16) - 1);
    }

    /** Bitmaps, group descriptors and the superblock's free counts to the disk, then the reader's cache. */
    public void flush() throws Exception {
        for (Iterator<Map.Entry<Integer, byte[]>> it = blockBm.entrySet().iterator(); it.hasNext();) {
            Map.Entry<Integer, byte[]> e = it.next();
            writeBlock(u32(gdt, e.getKey().intValue() * 32), e.getValue());
        }
        for (Iterator<Map.Entry<Integer, byte[]>> it = inodeBm.entrySet().iterator(); it.hasNext();) {
            Map.Entry<Integer, byte[]> e = it.next();
            writeBlock(u32(gdt, e.getKey().intValue() * 32 + 4), e.getValue());
        }
        if (gdtCsum) for (int g = 0; g < groups; g++) p16(gdt, g * 32 + 30, descCsum(g));
        d.write(base + (long) (firstData + 1) * bs, gdt, 0, gdt.length);
        d.write(base + 1024, sb, 0, 1024);
        d.sync();
    }

    /** ext4's group descriptor checksum: crc16 (0xA001, start ~0) over the uuid, the group number, the descriptor. */
    int descCsum(int g) {
        int c = crc16(0xFFFF, uuid, 0, 16);
        byte[] gn = new byte[4];
        p32(gn, 0, g);
        c = crc16(c, gn, 0, 4);
        return crc16(c, gdt, g * 32, 30);
    }

    static int crc16(int crc, byte[] b, int o, int n) {
        for (int i = 0; i < n; i++) {
            crc ^= b[o + i] & 0xff;
            for (int k = 0; k < 8; k++) crc = (crc & 1) != 0 ? (crc >>> 1) ^ 0xA001 : crc >>> 1;
        }
        return crc & 0xffff;
    }

    // ---------------------------------------------------------------- file data

    /** Every block the inode owns (data and indirect) back to the bitmap; i_block cleared. */
    void freeData(byte[] in) throws Exception {
        if (fastLink(in)) {
            for (int i = 40; i < 100; i++) in[i] = 0;
            return;
        }
        if ((u32(in, 32) & EXTENTS_FL) != 0) {
            freeExt(in, 40);
            for (int i = 40; i < 100; i++) in[i] = 0;
            p32(in, 28, 0);
            p32(in, 32, u32(in, 32) & ~(EXTENTS_FL | HUGE_FILE_FL));
            return;
        }
        for (int i = 0; i < 12; i++) freeBlock(ptr(in, i));
        freeTree(ptr(in, 12), 1);
        freeTree(ptr(in, 13), 2);
        freeTree(ptr(in, 14), 3);
        for (int i = 40; i < 100; i++) in[i] = 0;
        p32(in, 28, 0);
    }

    void freeTree(long blk, int depth) throws Exception {
        if (blk == 0) return;
        byte[] b = readBlock(blk);
        for (int i = 0; i < bs / 4; i++) {
            long c = u32(b, i * 4);
            if (c == 0) continue;
            if (depth > 1) freeTree(c, depth - 1);
            else freeBlock(c);
        }
        freeBlock(blk);
    }

    /** The data into freshly allocated blocks (the inode's old ones must be freed first); size and i_blocks set. */
    void writeData(byte[] in, byte[] data, int group) throws Exception {
        p32(in, 32, u32(in, 32) & ~(EXTENTS_FL | HUGE_FILE_FL));
        if (inodeSize >= 120) p16(in, 116, 0);   // i_blocks_hi
        if (extents) { writeExtents(in, data, group); return; }
        int per = bs / 4;
        int n = (data.length + bs - 1) / bs;
        if (n > 12 + per + per * per) throw new Exception("файлът е твърде голям");
        long used = 0;
        long[] blk = new long[n];
        for (int i = 0; i < n; i++) {
            blk[i] = allocBlock(group);
            byte[] b = new byte[bs];
            System.arraycopy(data, i * bs, b, 0, Math.min(bs, data.length - i * bs));
            writeBlock(blk[i], b);
            used++;
        }
        for (int i = 0; i < Math.min(n, 12); i++) p32(in, 40 + 4 * i, blk[i]);
        if (n > 12) {
            long ib = allocBlock(group);
            used++;
            byte[] b = new byte[bs];
            for (int i = 12; i < Math.min(n, 12 + per); i++) p32(b, (i - 12) * 4, blk[i]);
            writeBlock(ib, b);
            p32(in, 40 + 48, ib);
        }
        if (n > 12 + per) {
            long db = allocBlock(group);
            used++;
            byte[] top = new byte[bs];
            int rest = n - 12 - per;
            for (int j = 0; j * per < rest; j++) {
                long ib = allocBlock(group);
                used++;
                byte[] b = new byte[bs];
                for (int i = 0; i < per && j * per + i < rest; i++) p32(b, i * 4, blk[12 + per + j * per + i]);
                writeBlock(ib, b);
                p32(top, j * 4, ib);
            }
            writeBlock(db, top);
            p32(in, 40 + 52, db);
        }
        p32(in, 4, data.length);
        p32(in, 108, 0);
        p32(in, 28, used * (bs / 512));
    }

    /** n blocks as up to a few contiguous runs: [start, len] pairs (len ≤ 32768). */
    ArrayList<long[]> allocRuns(int n, int group) throws Exception {
        ArrayList<long[]> runs = new ArrayList<long[]>();
        long one = n <= 32768 ? findRun(n, group) : -1;   // one contiguous run when the card has it (it nearly always does)
        if (one >= 0) {
            for (long b = one; b < one + n; b++) {
                int g = (int) ((b - firstData) / bpg), i = (int) ((b - firstData) % bpg);
                bitmap(blockBm, g, 0)[i >> 3] |= (byte) (1 << (i & 7));
                addFree(g, 12, -1);
            }
            runs.add(new long[] {one, n});
            return runs;
        }
        while (n > 0) {
            long first = allocBlock(group);
            long len = 1;
            int g = (int) ((first - firstData) / bpg);
            byte[] bm = bitmap(blockBm, g, 0);
            long valid = Math.min(bpg, blocksCount - firstData - (long) g * bpg);
            while (len < n && len < 32768) {
                long i = first + len - firstData - (long) g * bpg;
                if (i >= valid || (bm[(int) (i >> 3)] & (1 << (i & 7))) != 0) break;
                bm[(int) (i >> 3)] |= (byte) (1 << (i & 7));
                addFree(g, 12, -1);
                len++;
            }
            runs.add(new long[] {first, len});
            n -= (int) len;
        }
        return runs;
    }

    /** First block of n free ones in a row inside one initialised group (from the preferred group on), or -1. */
    long findRun(int n, int prefer) throws Exception {
        for (int k = 0; k < groups; k++) {
            int g = (prefer + k) % groups;
            if (u16(gdt, g * 32 + 12) < n) continue;
            if (gdtCsum && (u16(gdt, g * 32 + 18) & 0x2) != 0) continue;
            byte[] bm = bitmap(blockBm, g, 0);
            long valid = Math.min(bpg, blocksCount - firstData - (long) g * bpg);
            int run = 0;
            for (int i = 0; i < valid; i++) {
                if ((bm[i >> 3] & (1 << (i & 7))) != 0) { run = 0; continue; }
                if (firstData + (long) g * bpg + i == 0) { run = 0; continue; }
                if (++run == n) return firstData + (long) g * bpg + i - n + 1;
            }
        }
        return -1;
    }

    static void extHeader(byte[] b, int o, int entries, int max, int depth) {
        p16(b, o, 0xF30A);
        p16(b, o + 2, entries);
        p16(b, o + 4, max);
        p16(b, o + 6, depth);
        p32(b, o + 8, 0);
    }

    static void extLeaf(byte[] b, int e, long logical, long start, long len) {
        p32(b, e, logical);
        p16(b, e + 4, (int) len);
        p16(b, e + 6, (int) (start >>> 32));
        p32(b, e + 8, start);
    }

    /** ext4: the data in a few contiguous runs, mapped by an extent tree (in the inode, or one leaf block). */
    void writeExtents(byte[] in, byte[] data, int group) throws Exception {
        int n = (data.length + bs - 1) / bs;
        ArrayList<long[]> runs = allocRuns(n, group);
        long logical = 0, used = n;
        for (int r = 0; r < runs.size(); r++) {
            long[] run = runs.get(r);
            for (int k = 0; k < run[1]; k++) {
                byte[] b = new byte[bs];
                int at = (int) ((logical + k) * bs);
                System.arraycopy(data, at, b, 0, Math.min(bs, data.length - at));
                writeBlock(run[0] + k, b);
            }
            logical += run[1];
        }
        for (int i = 40; i < 100; i++) in[i] = 0;
        if (runs.size() <= 4) {
            extHeader(in, 40, runs.size(), 4, 0);
            logical = 0;
            for (int r = 0; r < runs.size(); r++) {
                extLeaf(in, 52 + 12 * r, logical, runs.get(r)[0], runs.get(r)[1]);
                logical += runs.get(r)[1];
            }
        } else {
            int max = (bs - 12) / 12;
            if (runs.size() > max) throw new Exception("картата е твърде накъсана");
            long leaf = allocBlock(group);
            used++;
            byte[] b = new byte[bs];
            extHeader(b, 0, runs.size(), max, 0);
            logical = 0;
            for (int r = 0; r < runs.size(); r++) {
                extLeaf(b, 12 + 12 * r, logical, runs.get(r)[0], runs.get(r)[1]);
                logical += runs.get(r)[1];
            }
            writeBlock(leaf, b);
            extHeader(in, 40, 1, 4, 1);
            p32(in, 52, 0);
            p32(in, 56, leaf);
            p16(in, 60, (int) (leaf >>> 32));
        }
        p32(in, 32, u32(in, 32) | EXTENTS_FL);
        p32(in, 4, data.length);
        p32(in, 108, 0);
        p32(in, 28, used * (bs / 512));
    }

    byte[] readData(byte[] in) throws Exception {
        long size = fsize(in);
        if (size > 64L << 20) throw new Exception("файлът е твърде голям");
        byte[] out = new byte[(int) size];
        if (fastLink(in)) {
            System.arraycopy(in, 40, out, 0, out.length);
            return out;
        }
        for (long l = 0; l * bs < size; l++) {
            long p = bmap(in, l);
            int n = (int) Math.min(bs, size - l * bs);
            if (p != 0) System.arraycopy(readBlock(p), 0, out, (int) (l * bs), n);
        }
        return out;
    }

    // ---------------------------------------------------------------- directories

    /** One directory entry, found or to be changed. */
    static final class Ent {
        long blk;
        int off, prevOff, ino, type;
    }

    Ent find(int dir, String name) throws Exception {
        byte[] in = readInode(dir);
        byte[] nm = name.getBytes("UTF-8");
        long size = fsize(in);
        for (long l = 0; l * bs < size; l++) {
            long p = bmap(in, l);
            if (p == 0) continue;
            byte[] b = readBlock(p);
            int off = 0, prev = -1;
            while (off < bs) {
                int ino = (int) u32(b, off), rec = u16(b, off + 4), len = b[off + 6] & 0xff;
                if (rec < 8 || off + rec > bs) break;
                if (ino != 0 && len == nm.length && eq(b, off + 8, nm)) {
                    Ent e = new Ent();
                    e.blk = p;
                    e.off = off;
                    e.prevOff = prev;
                    e.ino = ino;
                    e.type = b[off + 7] & 0xff;
                    return e;
                }
                prev = off;
                off += rec;
            }
        }
        return null;
    }

    static boolean eq(byte[] b, int o, byte[] n) {
        for (int i = 0; i < n.length; i++) if (b[o + i] != n[i]) return false;
        return true;
    }

    void addEntry(int dir, String name, int ino, int type) throws Exception {
        byte[] nm = name.getBytes("UTF-8");
        if (nm.length > 255) throw new Exception("име " + name);
        int need = (8 + nm.length + 3) & ~3;
        byte[] in = readInode(dir);
        if ((u32(in, 32) & INDEX_FL) != 0) {   // an htree directory read linearly from now on (valid ext2/3)
            p32(in, 32, u32(in, 32) & ~INDEX_FL);
            writeInode(dir, in);
        }
        long size = fsize(in);
        for (long l = 0; l * bs < size; l++) {
            long p = bmap(in, l);
            if (p == 0) continue;
            byte[] b = readBlock(p);
            int off = 0;
            while (off < bs) {
                int cur = (int) u32(b, off), rec = u16(b, off + 4), len = b[off + 6] & 0xff;
                if (rec < 8 || off + rec > bs) break;
                int real = cur == 0 ? 0 : (8 + len + 3) & ~3;
                if (rec - real >= need) {
                    int at = off;
                    if (cur != 0) {
                        p16(b, off + 4, real);
                        at = off + real;
                    }
                    putEnt(b, at, ino, rec - (at - off), nm, type);
                    writeBlock(p, b);
                    return;
                }
                off += rec;
            }
        }
        // A new block at the end of the directory.
        int g = (dir - 1) / ipg;
        long nb = allocBlock(g);
        byte[] b = new byte[bs];
        putEnt(b, 0, ino, bs, nm, type);
        writeBlock(nb, b);
        in = readInode(dir);
        setBlock(in, size / bs, nb, g);
        p32(in, 4, size + bs);
        p32(in, 28, u32(in, 28) + bs / 512);
        writeInode(dir, in);
    }

    void putEnt(byte[] b, int at, int ino, int rec, byte[] nm, int type) {
        p32(b, at, ino);
        p16(b, at + 4, rec);
        b[at + 6] = (byte) nm.length;
        b[at + 7] = (byte) (fileType ? type : 0);
        System.arraycopy(nm, 0, b, at + 8, nm.length);
    }

    /** Logical block l of a directory → pb (direct or single indirect; directories here stay small). */
    void setBlock(byte[] in, long l, long pb, int g) throws Exception {
        if ((u32(in, 32) & EXTENTS_FL) != 0) {   // grow the last extent, or add one (a depth-0 tree in the inode)
            int n = u16(in, 42), depth = u16(in, 46);
            if (depth != 0) throw new Exception("папката е твърде сложна");
            if (n > 0) {
                int e = 40 + 12 + 12 * (n - 1);
                long first = u32(in, e), start = (long) u16(in, e + 6) << 32 | u32(in, e + 8);
                int len = u16(in, e + 4);
                if (len < 32768 && first + len == l && start + len == pb) { p16(in, e + 4, len + 1); return; }
            }
            if (n >= 4) throw new Exception("папката е твърде накъсана");
            extLeaf(in, 52 + 12 * n, l, pb, 1);
            p16(in, 42, n + 1);
            return;
        }
        if (l < 12) { p32(in, 40 + 4 * (int) l, pb); return; }
        l -= 12;
        if (l >= bs / 4) throw new Exception("папката е твърде голяма");
        long ib = ptr(in, 12);
        byte[] b;
        if (ib == 0) {
            ib = allocBlock(g);
            p32(in, 88, ib);
            p32(in, 28, u32(in, 28) + bs / 512);
            b = new byte[bs];
        } else b = readBlock(ib);
        p32(b, (int) l * 4, pb);
        writeBlock(ib, b);
    }

    void removeEntry(Ent e) throws Exception {
        byte[] b = readBlock(e.blk);
        if (e.prevOff >= 0) p16(b, e.prevOff + 4, u16(b, e.prevOff + 4) + u16(b, e.off + 4));
        else p32(b, e.off, 0);
        writeBlock(e.blk, b);
    }

    void setType(Ent e, int type) throws Exception {
        if (!fileType) return;
        byte[] b = readBlock(e.blk);
        b[e.off + 7] = (byte) type;
        writeBlock(e.blk, b);
    }

    // ---------------------------------------------------------------- paths

    static String[] parts(String path) {
        ArrayList<String> out = new ArrayList<String>();
        for (String s : path.split("/")) if (s.length() > 0 && !s.equals(".")) out.add(s);
        return out.toArray(new String[0]);
    }

    /** Inode of a path (0 = missing). Symlinks on the way are not followed: refused. */
    public int lookup(String path) throws Exception {
        int ino = ROOT;
        String[] p = parts(path);
        for (int i = 0; i < p.length; i++) {
            if ((mode(readInode(ino)) & S_IFMT) != S_IFDIR) throw new Exception("/" + path + ": не е папка по пътя");
            Ent e = find(ino, p[i]);
            if (e == null) return 0;
            ino = e.ino;
        }
        return ino;
    }

    int mkdirs(String[] p, int count) throws Exception {
        int ino = ROOT;
        for (int i = 0; i < count; i++) {
            byte[] in = readInode(ino);
            if ((mode(in) & S_IFMT) != S_IFDIR) throw new Exception(p[i - 1] + " не е папка");
            Ent e = find(ino, p[i]);
            ino = e != null ? e.ino : mkdir(ino, p[i]);
        }
        if ((mode(readInode(ino)) & S_IFMT) != S_IFDIR) throw new Exception(p[count - 1] + " не е папка");
        return ino;
    }

    byte[] freshInode(int m, int mtime) {
        byte[] in = new byte[inodeSize];
        p16(in, 0, m);
        p32(in, 8, now);
        p32(in, 12, now);
        p32(in, 16, mtime);
        if (inodeSize > 128) p16(in, 128, wantExtra);
        return in;
    }

    int mkdir(int parent, String name) throws Exception {
        int g = (parent - 1) / ipg;
        int ino = allocInode(g, true);
        g = (ino - 1) / ipg;
        long b0 = allocBlock(g);
        byte[] b = new byte[bs];
        putEnt(b, 0, ino, 12, ".".getBytes("UTF-8"), FT_DIR);
        putEnt(b, 12, parent, bs - 12, "..".getBytes("UTF-8"), FT_DIR);
        writeBlock(b0, b);
        byte[] in = freshInode(S_IFDIR | 0755, now);
        p16(in, 26, 2);
        p32(in, 4, bs);
        if (extents) {
            extHeader(in, 40, 1, 4, 0);
            extLeaf(in, 52, 0, b0, 1);
            p32(in, 32, EXTENTS_FL);
        } else p32(in, 40, b0);
        p32(in, 28, bs / 512);
        writeInode(ino, in);
        byte[] pin = readInode(parent);
        p16(pin, 26, u16(pin, 26) + 1);
        writeInode(parent, pin);
        addEntry(parent, name, ino, FT_DIR);
        return ino;
    }

    /** A regular file (mode = permission bits) or a symlink (link != null) at path, made or replaced. */
    public void put(String path, int perm, int mtime, byte[] data, String link) throws Exception {
        String[] p = parts(path);
        if (p.length == 0) throw new Exception("празен път");
        int dir = mkdirs(p, p.length - 1);
        String name = p[p.length - 1];
        Ent e = find(dir, name);
        int type = link != null ? FT_LNK : FT_REG;
        int m = link != null ? S_IFLNK | 0777 : S_IFREG | (perm & 07777);
        byte[] tgt = link != null ? link.getBytes("UTF-8") : null;
        int ino;
        byte[] in;
        if (e != null) {
            in = readInode(e.ino);
            if ((mode(in) & S_IFMT) == S_IFDIR) throw new Exception("/" + path + " е папка на картата");
            if (u16(in, 26) > 1) {   // a hard link elsewhere keeps the old content (debugfs rm + write does the same)
                p16(in, 26, u16(in, 26) - 1);
                writeInode(e.ino, in);
                removeEntry(e);
                e = null;
            }
        }
        if (e != null) {
            ino = e.ino;
            in = readInode(ino);
            freeData(in);
            p16(in, 0, m);
            p32(in, 16, mtime);
            p32(in, 12, now);
            p16(in, 2, 0);
            p16(in, 24, 0);
            if (inodeSize >= 124) { p16(in, 120, 0); p16(in, 122, 0); }
            if (e.type != type) setType(e, type);
        } else {
            ino = allocInode((dir - 1) / ipg, false);
            in = freshInode(m, mtime);
            p16(in, 26, 1);
        }
        int g = (ino - 1) / ipg;
        if (tgt != null && tgt.length < 60) {
            System.arraycopy(tgt, 0, in, 40, tgt.length);
            p32(in, 4, tgt.length);
            p32(in, 28, 0);
        } else writeData(in, tgt != null ? tgt : data, g);
        writeInode(ino, in);
        if (e == null) addEntry(dir, name, ino, type);
    }

    /** Delete a file or symlink (false: not there). A directory is refused. */
    public boolean remove(String path) throws Exception {
        String[] p = parts(path);
        if (p.length == 0) return false;
        int dir = ROOT;
        for (int i = 0; i < p.length - 1; i++) {
            Ent e = find(dir, p[i]);
            if (e == null) return false;
            dir = e.ino;
            if ((mode(readInode(dir)) & S_IFMT) != S_IFDIR) return false;
        }
        Ent e = find(dir, p[p.length - 1]);
        if (e == null) return false;
        byte[] in = readInode(e.ino);
        if ((mode(in) & S_IFMT) == S_IFDIR) throw new Exception("/" + path + " е папка — изтриват се само файлове");
        removeEntry(e);
        int links = u16(in, 26) - 1;
        p16(in, 26, Math.max(0, links));
        if (links <= 0) {
            freeData(in);
            p32(in, 20, now);
            p32(in, 4, 0);
            freeInode(e.ino, false);
        }
        writeInode(e.ino, in);
        return true;
    }

    /** File bytes (null: missing); a symlink gives its target. */
    public byte[] read(String path) throws Exception {
        int ino = lookup(path);
        return ino == 0 ? null : readData(readInode(ino));
    }

    public int modeOf(String path) throws Exception {
        int ino = lookup(path);
        return ino == 0 ? 0 : mode(readInode(ino));
    }
}
