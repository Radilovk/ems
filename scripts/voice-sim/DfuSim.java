import com.isaigu.gymapp.wearable.voice.VoiceDfu;

import java.io.ByteArrayOutputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * Offline test of the USB update (wearable/voice/VoiceDfu): a simulated Adafruit nRF52 bootloader decodes every
 * frame — SLIP, header checksum, CRC16, sequence — acks it, and rebuilds the image; it must equal the .bin, the INIT
 * payload the .dat, and the first frames must be byte-equal to adafruit-nrfutil's own (ref file from run-dfu.sh).
 * Args: app.bin app.dat ref.hex
 */
public class DfuSim implements VoiceDfu.Io {
    final List<byte[]> frames = new ArrayList<byte[]>();
    final ByteArrayOutputStream image = new ByteArrayOutputStream();
    byte[] init;
    int appSize = -1, expectSeq = 1, pendingAcks, stops, fails;
    long slept;

    public void write(byte[] b) {
        frames.add(b.clone());
        if (b[0] != (byte) 0xC0 || b[b.length - 1] != (byte) 0xC0) { fail("no SLIP ends"); return; }
        ByteArrayOutputStream d = new ByteArrayOutputStream();
        for (int i = 1; i < b.length - 1; i++) {
            if (b[i] == (byte) 0xC0) { fail("raw C0 inside"); return; }
            if (b[i] == (byte) 0xDB) { i++; d.write(b[i] == (byte) 0xDC ? 0xC0 : 0xDB); } else d.write(b[i]);
        }
        byte[] r = d.toByteArray();
        int seq = r[0] & 7, len = ((r[1] & 0xFF) >> 4) | ((r[2] & 0xFF) << 4);
        if (((r[0] + r[1] + r[2] + r[3]) & 0xFF) != 0) fail("header checksum");
        if ((r[1] & 0x0F) != 14) fail("type");
        if (seq != expectSeq) fail("seq " + seq + " want " + expectSeq);
        expectSeq = (expectSeq + 1) % 8;
        if (r.length != 4 + len + 2) { fail("length"); return; }
        int crc = crc(r, 4 + len);
        if ((r[4 + len] & 0xFF) != (crc & 0xFF) || (r[5 + len] & 0xFF) != (crc >> 8)) fail("crc");
        int kind = le(r, 4);
        if (kind == 3) appSize = le(r, 20);
        else if (kind == 1) init = Arrays.copyOfRange(r, 8, 4 + len - 2);
        else if (kind == 4) image.write(r, 8, len - 4);
        else if (kind == 5) stops++;
        pendingAcks++;
    }

    public int read(byte[] b, int timeoutMs) {
        if (pendingAcks == 0) return 0;
        pendingAcks--;
        byte[] ack = {(byte) 0xC0, (byte) (expectSeq << 3), 0, 0, 0, (byte) 0xC0};
        System.arraycopy(ack, 0, b, 0, ack.length);
        return ack.length;
    }

    public void sleep(long ms) { slept += ms; }

    void fail(String s) { fails++; System.out.println("FAIL " + s); }

    static int le(byte[] b, int o) {
        return (b[o] & 0xFF) | (b[o + 1] & 0xFF) << 8 | (b[o + 2] & 0xFF) << 16 | (b[o + 3] & 0xFF) << 24;
    }

    static int crc(byte[] d, int n) {
        int c = 0xFFFF;
        for (int i = 0; i < n; i++) {
            c = (c >> 8 & 0xFF) | (c << 8 & 0xFF00);
            c ^= d[i] & 0xFF; c ^= (c & 0xFF) >> 4; c ^= (c << 8) << 4; c ^= ((c & 0xFF) << 4) << 1; c &= 0xFFFF;
        }
        return c;
    }

    public static void main(String[] a) throws Exception {
        byte[] bin = Files.readAllBytes(Paths.get(a[0])), dat = Files.readAllBytes(Paths.get(a[1]));
        String[] ref = new String(Files.readAllBytes(Paths.get(a[2]))).trim().split("\n");
        DfuSim sim = new DfuSim();
        new VoiceDfu(sim).run(dat, bin, null);
        if (sim.appSize != bin.length) sim.fail("start size " + sim.appSize);
        if (!Arrays.equals(sim.init, dat)) sim.fail("init != dat");
        if (!Arrays.equals(sim.image.toByteArray(), bin)) sim.fail("image != bin");
        if (sim.stops != 1) sim.fail("stop");
        for (int i = 0; i < ref.length; i++) {
            StringBuilder h = new StringBuilder();
            for (byte x : sim.frames.get(i)) h.append(String.format("%02x", x & 0xFF));
            if (!h.toString().equals(ref[i])) sim.fail("frame " + i + " differs from adafruit-nrfutil");
        }
        System.out.println((sim.fails == 0 ? "ok" : "FAIL") + " — " + sim.frames.size() + " frames, " + bin.length
                + " B image, " + ref.length + " frames byte-equal to adafruit-nrfutil, waits " + sim.slept / 1000.0 + " s");
        System.exit(sim.fails == 0 ? 0 : 1);
    }
}
