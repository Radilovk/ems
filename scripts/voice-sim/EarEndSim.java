import com.isaigu.gymapp.ai.EarEnd;

import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Random;

/**
 * The cloud ear's end of speech (ai/EarEnd) on real speech (16 kHz raw PCM files: any Bulgarian phrases, e.g. made by
 * a TTS) over noise: quiet room, a noise-suppressed headset, white hiss, "music" (chords + a beat) at several levels,
 * near the tablet and across the hall. The listening starts where the spotter fires (~1 s in); it must end 0.3–1.4 s
 * after the speech does — never run to the 7.5 s limit (stt_log 1.1.595: 7 of 13 did).
 * Usage: sh scripts/voice-sim/run-earend.sh <dir with *.raw>
 */
public class EarEndSim {
    static Random rnd = new Random(596);

    static short[] read(String f) throws Exception {
        byte[] b = Files.readAllBytes(Paths.get(f));
        short[] s = new short[b.length / 2];
        for (int i = 0; i < s.length; i++) {
            s[i] = (short) ((b[2 * i] & 0xff) | (b[2 * i + 1] << 8));
        }
        return s;
    }

    /** kind: 0 white, 1 music (chords + a beat every 0.5 s). */
    static double noise(int kind, int i, double level) {
        if (level == 0) {
            return 0;
        }
        if (kind == 0) {
            return rnd.nextGaussian() * level;
        }
        double t = i / 16000.0;
        double beat = Math.exp(-((t % 0.5) * 20)) * 2.5;
        double chord = Math.sin(2 * Math.PI * 220 * t) + 0.7 * Math.sin(2 * Math.PI * 277 * t)
                + 0.5 * Math.sin(2 * Math.PI * 330 * t);
        return level * (0.6 * chord * (0.7 + 0.3 * Math.sin(2 * Math.PI * 0.3 * t)) + beat * rnd.nextGaussian());
    }

    public static void main(String[] a) throws Exception {
        java.io.File[] fs = new java.io.File(a[0]).listFiles();
        int bad = 0, runs = 0, hardCapped = 0;
        double[][] rooms = {{0, 3}, {0, 40}, {0, 300}, {1, 200}, {1, 600}, {1, 1200}};
        String[] names = {"quiet", "headset (suppressed)", "hiss", "music soft", "music loud", "music very loud"};
        for (java.io.File f : fs) {
            if (!f.getName().endsWith(".raw")) {
                continue;
            }
            short[] sp = read(f.getPath());
            for (double gain : new double[] {1.0, 0.25}) {
                for (int r = 0; r < rooms.length; r++) {
                    // the room for 1 s, then the phrase; the spotter fires ~1 s into the phrase and hands over the
                    // last 2 s (WakeListener's pre-roll)
                    int lead = 16000, len = lead + sp.length + 16000 * 8;
                    short[] mix = new short[len];
                    for (int i = 0; i < len; i++) {
                        int k = i - lead;
                        double v = (k >= 0 && k < sp.length ? sp[k] * gain : 0) + noise((int) rooms[r][0], i, rooms[r][1]);
                        mix[i] = (short) Math.max(-32768, Math.min(32767, Math.round(v)));
                    }
                    int start = lead + Math.min(sp.length, 16000);
                    EarEnd e = new EarEnd(1);
                    e.prime(mix, Math.max(0, start - 32000), Math.min(start, 32000));
                    int end = -1;
                    for (int i = start; i < len; i++) {
                        if (e.push(mix[i]) || i - start >= EarEnd.MAX_AFTER) {
                            end = i;
                            break;
                        }
                    }
                    double after = (end - lead - sp.length) / 16000.0;
                    // a far voice under loud music is barely over it: there the listening may run to its cap (4 s
                    // after the spotter), never longer
                    boolean hard = gain < 1 && rooms[r][0] == 1 && rooms[r][1] >= 600;
                    boolean capped = end - start >= EarEnd.MAX_AFTER;
                    boolean ok = after >= 0.3 && (after <= 1.4 || hard && end - start <= EarEnd.MAX_AFTER);
                    runs++;
                    if (!ok) {
                        bad++;
                    }
                    if (hard && capped) {
                        hardCapped++;
                    }
                    System.out.printf("%s %-22s %-5s ends %+.2f s after the speech%s%n", ok ? (capped ? "cap " : "ok  ")
                            : "FAIL", names[r], gain == 1 ? "near" : "far", after, ok ? "" : "  <--");
                }
            }
            System.out.println("   (" + f.getName() + ")");
        }
        System.out.println((bad == 0 ? "PASS " + runs + "/" + runs : "FAIL " + bad + " of " + runs)
                + (hardCapped > 0 ? " (" + hardCapped + " far-voice-in-loud-music runs ended at the 4 s cap)" : ""));
        if (bad > 0) {
            System.exit(1);
        }
    }
}
