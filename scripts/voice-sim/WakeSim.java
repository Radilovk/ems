import com.isaigu.gymapp.ai.WakeWord;
import java.io.*;
import java.nio.file.*;
import java.util.*;

/**
 * The tablet's wake word "тренер" (ai/WakeWord) on the JVM: espeak-ng says it 3 times (the examples, one speaker at a
 * slightly different speed / pitch each), then phrases with and without it, in quiet and over noise. Each must fire
 * where "тренер" is said (and only there); near words must not.
 * Usage: sh scripts/voice-sim/run-wake.sh   (needs espeak-ng, ffmpeg)
 */
public class WakeSim {
    static int checks, fails;
    static File dir;

    static void check(boolean ok, String what) {
        checks++;
        if (!ok) {
            fails++;
            System.out.println("FAIL " + what);
        }
    }

    static short[] say(String text, int speed, int pitch) throws Exception {
        File wav = new File(dir, "w" + Math.abs((text + speed + pitch).hashCode()) + ".wav");
        File raw = new File(wav.getPath() + ".raw");
        if (!raw.exists()) {
            File txt = new File(wav.getPath() + ".txt");      // Cyrillic through a UTF-8 file (argv may lose it)
            Files.write(txt.toPath(), text.getBytes("UTF-8"));
            run("espeak-ng", "-v", "bg", "-s", "" + speed, "-p", "" + pitch, "-w", wav.getPath(), "-f", txt.getPath());
            run("ffmpeg", "-loglevel", "error", "-y", "-i", wav.getPath(), "-ar", "16000", "-ac", "1", "-f", "s16le", raw.getPath());
        }
        byte[] b = Files.readAllBytes(raw.toPath());
        short[] s = new short[b.length / 2];
        for (int i = 0; i < s.length; i++) {
            s[i] = (short) ((b[2 * i] & 0xff) | (b[2 * i + 1] << 8));
        }
        return s;
    }

    static void run(String... cmd) throws Exception {
        Process p = new ProcessBuilder(cmd).redirectErrorStream(true).start();
        p.getInputStream().readAllBytes();
        if (p.waitFor() != 0) throw new IOException("failed: " + String.join(" ", cmd));
    }

    static Random rnd = new Random(541);

    /** Silence / noise of n samples at a level (0 = quiet room hiss). */
    static short[] noise(int n, double level) {
        short[] s = new short[n];
        for (int i = 0; i < n; i++) s[i] = (short) (rnd.nextGaussian() * (30 + level));
        return s;
    }

    static short[] cat(short[]... parts) {
        int n = 0;
        for (short[] p : parts) n += p.length;
        short[] o = new short[n];
        int k = 0;
        for (short[] p : parts) { System.arraycopy(p, 0, o, k, p.length); k += p.length; }
        return o;
    }

    /** espeak pads with silence: cut it to the speech. */
    static short[] trim(short[] s) {
        int a = 0, b = s.length;
        while (a < b && Math.abs(s[a]) < 300) a++;
        while (b > a && Math.abs(s[b - 1]) < 300) b--;
        return Arrays.copyOfRange(s, Math.max(0, a - 400), Math.min(s.length, b + 400));
    }

    static short[] add(short[] s, double level) {
        short[] o = s.clone();
        for (int i = 0; i < o.length; i++) o[i] = (short) Math.max(-32000, Math.min(32000, o[i] + rnd.nextGaussian() * level));
        return o;
    }

    /** Feeds the audio; returns the sample positions where it fired. */
    static List<Integer> feed(WakeWord w, short[] a) {
        List<Integer> at = new ArrayList<>();
        for (int i = 0; i < a.length; i++) {
            int e = w.push(a[i]);
            if (e == WakeWord.WAKE) at.add(i);
        }
        return at;
    }

    public static void main(String[] args) throws Exception {
        dir = Files.createTempDirectory("wake").toFile();
        WakeWord w = new WakeWord();
        w.sens = Float.parseFloat(System.getProperty("sens", "1")); w.sens = Float.parseFloat(System.getProperty("sens", "1")); w.sens = Float.parseFloat(System.getProperty("sens", "1")); w.sens = Float.parseFloat(System.getProperty("sens", "1"));
        // ---- learning: "тренер" 3 times, a pause before each
        feed(w, noise(16000, 0));
        int[][] ex = {{150, 50}, {140, 46}, {162, 54}};
        for (int[] e : ex) {
            w.record();
            short[] word = trim(say("тренер", e[0], e[1]));
            feed(w, cat(noise(8000, 0), word, noise(9000, 0)));
        }
        check(w.ready(), "3 examples recorded (" + w.examples() + ")");
        // the look-alike once (owner: "тренировка" is another word)
        if (!"0".equals(System.getProperty("contrast", "1"))) {
            w.recordContrast();
            feed(w, cat(noise(8000, 0), trim(say("тренировка", 150, 50)), noise(9000, 0)));
            check(w.hasContrast(), "the look-alike recorded");
        }
        System.out.println("threshold " + w.threshold() + ", examples spread " + w.spreadOfExamples());
        // ---- phrases: true = must fire (once, inside the "тренер" part), false = must not
        Object[][] cases = {
                {"тренер", true}, {"тренер увеличи краката", true}, {"тренер пауза", true}, {"тренер стоп", true},
                {"увеличи краката", false}, {"треньорът каза", false}, {"трамвай", false}, {"три", false},
                {"тенис", false}, {"френски", false}, {"течение", false}, {"пауза", false}, {"стоп", false},
                {"старт", false}, {"интересно", false},
                // owner: "тренировка" is another word — "тренер" alone unlocks; the words that begin with the same sounds
                {"тренировка", false}, {"тренирам", false}, {"тренираме", false}, {"треньорка", false},
                {"днес имаме тренировка", false}, {"хайде на тренировка", false},
        };
        int tp = 0, fn = 0, fp = 0, tn = 0;
        double[] noises = {0, 200, 500};
        int[][] voices = {{155, 52}, {145, 48}, {150, 50}};
        for (double nz : noises) {
            for (int[] v : voices) {
                for (Object[] c : cases) {
                    String text = (String) c[0];
                    boolean want = (Boolean) c[1];
                    short[] sp = trim(say(text, v[0], v[1]));
                    // "Тренер, увеличи краката": a short breath after the wake word in half of the cases
                    if (want && text.contains(" ") && rnd.nextBoolean()) {
                        String rest = text.substring(text.indexOf(' ') + 1);
                        sp = cat(trim(say("тренер", v[0], v[1])), noise(3200, 0), trim(say(rest, v[0], v[1])));
                    }
                    short[] a = add(cat(noise(12000, 0), sp, noise(12000, 0)), nz);
                    List<Integer> at = feed(w, a);
                    boolean fired = !at.isEmpty();
                    if (want && fired) tp++;
                    else if (want) fn++;
                    else if (fired) fp++;
                    else tn++;
                    if (want != fired) {
                        System.out.println("  " + (want ? "missed " : "false wake ") + "\"" + text + "\" noise " + nz
                                + " voice " + v[0] + "/" + v[1] + " d=" + w.lastD + " thr=" + w.threshold());
                    }
                    if (want && fired) {
                        check(at.size() == 1, "one wake per phrase: \"" + text + "\" (" + at.size() + ")");
                    }
                }
            }
        }
        int pos = tp + fn, neg = fp + tn;
        System.out.println("wake: hits " + tp + "/" + pos + ", false wakes " + fp + "/" + neg);
        check(tp >= pos * 0.85, "≥ 85 % of the wake words heard (" + tp + "/" + pos + ")");
        check(fp <= neg * 0.03, "≤ 3 % false wakes (" + fp + "/" + neg + ")");
        // ---- storage round trip
        WakeWord w2 = new WakeWord();
        check(w2.load(w.save()) && w2.ready() && w2.threshold() == w.threshold() && w2.hasContrast() == w.hasContrast(),
                "save / load the examples");
        System.out.println((fails == 0 ? "OK" : "FAIL") + " — wake word: " + checks + " checks, " + fails + " failures");
        if (fails > 0) System.exit(1);
    }
}
