package com.isaigu.gymapp.wearable.voice;

/**
 * Puts new firmware on the voice module from XEMS over its USB cable — pure Java, no Android (the offline test
 * drives it against a simulated bootloader, scripts/voice-sim/DfuSim.java). The XIAO's bootloader (Adafruit nRF52)
 * speaks Nordic's legacy serial DFU: SLIP-framed HCI packets, each answered by an ack frame. The same steps and
 * waits as adafruit-nrfutil `dfu serial` (dfu_transport_serial.py): START (application, its size) → wait for the
 * erase → INIT (the .dat) → DATA 512 bytes at a time (a short wait every 8) → STOP. The module then restarts on
 * its own with the new firmware. docs/xems-voice.md.
 */
public final class VoiceDfu {
    /** The byte pipe (USB CDC); read returns the bytes read, 0 on timeout. */
    public interface Io {
        void write(byte[] b) throws Exception;

        int read(byte[] b, int timeoutMs) throws Exception;

        void sleep(long ms) throws Exception;
    }

    public interface Progress {
        void onProgress(int percent);
    }

    static final int INIT = 1, START = 3, DATA = 4, STOP = 5, MODE_APP = 4;
    static final int PACKET = 512, PAGE = 4096;

    final Io io;
    int seq;

    public VoiceDfu(Io io) {
        this.io = io;
    }

    /** The whole update; throws with a short reason when the module stops answering. */
    public void run(byte[] dat, byte[] bin, Progress p) throws Exception {
        seq = 0;
        byte[] start = new byte[20];
        le32(start, 0, START);
        le32(start, 4, MODE_APP);
        le32(start, 8, 0);                              // softdevice size
        le32(start, 12, 0);                             // bootloader size
        le32(start, 16, bin.length);                    // application size
        send(start);
        io.sleep(Math.max(500, (bin.length / PAGE + 1) * 90L));   // the bank is erased now

        byte[] init = new byte[4 + dat.length + 2];      // + 2 bytes of padding, as nrfutil
        le32(init, 0, INIT);
        System.arraycopy(dat, 0, init, 4, dat.length);
        send(init);

        int frames = (bin.length + PACKET - 1) / PACKET;
        for (int i = 0; i < frames; i++) {
            int off = i * PACKET, n = Math.min(PACKET, bin.length - off);
            byte[] d = new byte[4 + n];
            le32(d, 0, DATA);
            System.arraycopy(bin, off, d, 4, n);
            send(d);
            if (i % 8 == 0) {
                io.sleep(103);                          // a 4 KB page is being written
            }
            if (p != null) {
                p.onProgress(i * 100 / frames);
            }
        }
        io.sleep(103);
        byte[] stop = new byte[4];
        le32(stop, 0, STOP);
        send(stop);
        if (p != null) {
            p.onProgress(100);
        }
    }

    void send(byte[] payload) throws Exception {
        io.write(packet(payload));
        waitAck();
    }

    /** One HCI packet: header (seq, ack, integrity + reliable, type 14, length, checksum), payload, CRC16, SLIP. */
    byte[] packet(byte[] payload) {
        seq = (seq + 1) % 8;
        int len = payload.length;
        byte[] raw = new byte[4 + len + 2];
        raw[0] = (byte) (seq | (((seq + 1) % 8) << 3) | (1 << 6) | (1 << 7));
        raw[1] = (byte) (14 | ((len & 0x0F) << 4));
        raw[2] = (byte) ((len & 0x0FF0) >> 4);
        raw[3] = (byte) ((~((raw[0] & 0xFF) + (raw[1] & 0xFF) + (raw[2] & 0xFF)) + 1) & 0xFF);
        System.arraycopy(payload, 0, raw, 4, len);
        int crc = crc16(raw, 4 + len);
        raw[4 + len] = (byte) (crc & 0xFF);
        raw[5 + len] = (byte) ((crc >> 8) & 0xFF);
        byte[] out = new byte[raw.length * 2 + 2];
        int k = 0;
        out[k++] = (byte) 0xC0;
        for (byte b : raw) {
            if (b == (byte) 0xC0) {
                out[k++] = (byte) 0xDB;
                out[k++] = (byte) 0xDC;
            } else if (b == (byte) 0xDB) {
                out[k++] = (byte) 0xDB;
                out[k++] = (byte) 0xDD;
            } else {
                out[k++] = b;
            }
        }
        out[k++] = (byte) 0xC0;
        byte[] r = new byte[k];
        System.arraycopy(out, 0, r, 0, k);
        return r;
    }

    /** Reads until a whole ack frame (two 0xC0) is in, 1 s at most — as nrfutil, which does not check its number. */
    void waitAck() throws Exception {
        byte[] b = new byte[64];
        int seen = 0, got = 0;
        long end = System.currentTimeMillis() + 1000;
        while (seen < 2) {
            long left = end - System.currentTimeMillis();
            if (left <= 0) {
                break;
            }
            int n = io.read(b, (int) Math.min(left, 200));
            for (int i = 0; i < n; i++) {
                if (b[i] == (byte) 0xC0) {
                    seen++;
                }
            }
            got += Math.max(0, n);
        }
        if (got < 2) {
            throw new Exception("no answer");
        }
    }

    static int crc16(byte[] d, int len) {
        int crc = 0xFFFF;
        for (int i = 0; i < len; i++) {
            crc = ((crc >> 8) & 0x00FF) | ((crc << 8) & 0xFF00);
            crc ^= d[i] & 0xFF;
            crc ^= (crc & 0x00FF) >> 4;
            crc ^= (crc << 8) << 4;
            crc ^= ((crc & 0x00FF) << 4) << 1;
            crc &= 0xFFFF;
        }
        return crc;
    }

    static void le32(byte[] b, int off, int v) {
        b[off] = (byte) v;
        b[off + 1] = (byte) (v >> 8);
        b[off + 2] = (byte) (v >> 16);
        b[off + 3] = (byte) (v >> 24);
    }
}
