package bg.xems.fleshka;

import java.io.File;
import java.io.RandomAccessFile;

/** An image file as a disk (host tests; the card's image kept on the phone). */
public final class FileDev implements BlockDev {
    final RandomAccessFile f;

    public FileDev(File file, boolean writable) throws Exception { f = new RandomAccessFile(file, writable ? "rw" : "r"); }

    @Override
    public long size() throws Exception { return f.length(); }

    @Override
    public void read(long off, byte[] b, int o, int n) throws Exception {
        f.seek(off);
        f.readFully(b, o, n);
    }

    @Override
    public void write(long off, byte[] b, int o, int n) throws Exception {
        f.seek(off);
        f.write(b, o, n);
    }

    @Override
    public void sync() throws Exception { f.getFD().sync(); }

    public void close() throws Exception { f.close(); }
}
