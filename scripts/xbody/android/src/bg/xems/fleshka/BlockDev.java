package bg.xems.fleshka;

/** A disk as bytes: the SD card behind a USB reader (UsbDisk), an image file (FileDev), or either under an undo log. */
public interface BlockDev {
    long size() throws Exception;

    void read(long off, byte[] b, int o, int n) throws Exception;

    void write(long off, byte[] b, int o, int n) throws Exception;

    /** Everything written is on the medium (the reader's cache flushed). */
    void sync() throws Exception;
}
