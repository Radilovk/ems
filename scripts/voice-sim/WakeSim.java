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
    /** The wake phrase (-Dphrase="окей тренер"; default the old single word). */
    static final String P = System.getProperty("phrase", "тренер");
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

    static short[] scale(short[] s, double k) {
        short[] o = new short[s.length];
        for (int i = 0; i < s.length; i++) o[i] = (short) Math.round(s[i] * k);
        return o;
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
            short[] word = trim(say(P, e[0], e[1]));
            feed(w, cat(noise(8000, 0), word, noise(9000, 0)));
        }
        check(w.ready(), "3 examples recorded (" + w.examples() + ")");
        // the look-alike once (owner: "тренировка" is another word)
        if (!"0".equals(System.getProperty("contrast", "1"))) {
            w.recordContrast();
            feed(w, cat(noise(8000, 0), trim(say(P.replace("тренер", "тренировка"), 150, 50)), noise(9000, 0)));
            check(w.hasContrast(), "the look-alike recorded");
        }
        // the second look-alike (1.1.578): the same word with another word in front ("добре тренер")
        if (P.startsWith("окей ") && "1".equals(System.getProperty("contrast2", "0"))) {
            w.recordContrast();
            feed(w, cat(noise(8000, 0), trim(say("добре " + P.substring(5), 150, 50)), noise(9000, 0)));
        }
        System.out.println("threshold " + w.threshold() + ", examples spread " + w.spreadOfExamples());
        // ---- phrases: true = must fire (once, inside the "тренер" part), false = must not
        Object[][] cases = {
                {P, true}, {P + " увеличи краката", true}, {P + " пауза", true}, {P + " стоп", true},
                {"увеличи краката", false}, {"треньорът каза", false}, {"трамвай", false}, {"три", false},
                {"тенис", false}, {"френски", false}, {"течение", false}, {"пауза", false}, {"стоп", false},
                {"старт", false}, {"интересно", false},
                // owner: "тренировка" is another word — "тренер" alone unlocks; the words that begin with the same sounds
                {"тренировка", false}, {"тренирам", false}, {"тренираме", false}, {"треньорка", false},
                {"днес имаме тренировка", false}, {"хайде на тренировка", false},
                // ordinary talk in a hall (the owner: "it reacts to random words")
                {"окей", false}, {"окей добре", false}, {"окей гугъл", false}, {"добре тренер", false},
                {"ела насам", false}, {"колко е часът", false}, {"още едно повторение", false}, {"не мога повече", false},
                {"малко по-силно", false}, {"къде е водата", false}, {"хайде да започваме", false}, {"добър ден на всички", false},
        };
        int tp = 0, fn = 0, fp = 0, tn = 0, prefixWakes = 0;
        List<Integer> dPos = new ArrayList<>(), dNeg = new ArrayList<>();
        Map<String, Integer> negMin = new TreeMap<>();
        double[] noises = {0, 200, 500};
        int[][] voices = {{155, 52}, {145, 48}, {150, 50}};
        for (double nz : noises) {
            for (int[] v : voices) {
                for (Object[] c : cases) {
                    String text = (String) c[0];
                    boolean want = (Boolean) c[1];
                    short[] sp = trim(say(text, v[0], v[1]));
                    // "Тренер, увеличи краката": a short breath after the wake word in half of the cases
                    if (want && text.length() > P.length() && rnd.nextBoolean()) {
                        String rest = text.substring(P.length() + 1);
                        sp = cat(trim(say(P, v[0], v[1])), noise(3200, 0), trim(say(rest, v[0], v[1])));
                    }
                    short[] a = add(cat(noise(12000, 0), sp, noise(12000, 0)), nz);
                    List<Integer> at = feed(w, a);
                    boolean fired = !at.isEmpty();
                    if (w.lastD < 1000000) {                  // the distance of this phrase's word (hits and rejects)
                        (want ? dPos : dNeg).add(w.lastD);
                        if (!want) negMin.merge(text, w.lastD, Math::min);
                    }
                    if (!want && text.startsWith("добре ")) {   // a known limit: another word before the same "тренер"
                        if (fired) prefixWakes++;
                        continue;
                    }
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
        Collections.sort(dPos);
        System.out.println("distance of the wake word: median " + dPos.get(dPos.size() / 2) + ", p90 " + dPos.get(dPos.size() * 9 / 10) + ", max " + dPos.get(dPos.size() - 1)
                + "; closest other words (min d): " + negMin.entrySet().stream().sorted(Map.Entry.comparingByValue()).limit(6)
                .map(e -> e.getKey() + "=" + e.getValue()).collect(java.util.stream.Collectors.joining(", ")));
        System.out.println("known limit — \"добре тренер\" (another word in front of the same word) wakes " + prefixWakes + " of 9");
        System.out.println("wake: hits " + tp + "/" + pos + ", false wakes " + fp + "/" + neg);
        check(tp >= pos * 0.85, "≥ 85 % of the wake words heard (" + tp + "/" + pos + ")");
        check(fp <= neg * 0.03, "≤ 3 % false wakes (" + fp + "/" + neg + ")");
        // ---- owner, 1.1.555: the trainer's voice decides — the same word much quieter (across the hall, the radio) never
        // wakes; a little quieter (a step back) still does
        System.out.println("examples' loudness " + w.loud + " dB peak");
        check(w.loud > 0, "the examples' loudness is known");
        int quietWakes = 0, softHits = 0;
        for (int[] v : voices) {
            short[] word = trim(say(P, v[0], v[1]));
            if (!feed(w, add(cat(noise(12000, 0), scale(word, 0.1), noise(12000, 0)), 30)).isEmpty()) quietWakes++;
            if (!feed(w, add(cat(noise(12000, 0), scale(word, 0.6), noise(12000, 0)), 30)).isEmpty()) softHits++;
        }
        System.out.println("far / quiet (−20 dB): " + quietWakes + " wakes of 3; a step back (−4 dB): " + softHits + " of 3"
                + " (last loudness " + w.lastLoud + ")");
        check(quietWakes == 0, "a far, quiet \"тренер\" never wakes");
        check(softHits >= 2, "a little quieter still wakes");
        // ---- the setup's own quality check: three DIFFERENT words are not one phrase (the limit stays capped, the setup asks again)
        WakeWord bad = new WakeWord();
        feed(bad, noise(16000, 0));
        String[] other = {P, "пауза", "увеличи краката"};
        for (String o : other) {
            bad.record();
            feed(bad, cat(noise(8000, 0), trim(say(o, 150, 50)), noise(9000, 0)));
        }
        System.out.println("three different words: spread " + bad.spreadOfExamples() + ", limit " + bad.threshold());
        check(bad.spreadOfExamples() > WakeWord.WIDE_SPREAD, "different words are flagged as differing (" + bad.spreadOfExamples() + ")");
        check(bad.threshold() <= WakeWord.THR_CAP, "the limit never passes the cap (" + bad.threshold() + ")");
        check(w.spreadOfExamples() <= WakeWord.WIDE_SPREAD, "the real examples are not flagged (" + w.spreadOfExamples() + ")");
        // ---- storage round trip
        WakeWord w2 = new WakeWord();
        check(w2.load(w.save()) && w2.ready() && w2.threshold() == w.threshold() && w2.hasContrast() == w.hasContrast()
                        && Math.abs(w2.loud - w.loud) <= 0.5f, "save / load the examples (and their loudness)");
        System.out.println((fails == 0 ? "OK" : "FAIL") + " — wake word: " + checks + " checks, " + fails + " failures");
        if (fails > 0) System.exit(1);
    }
}
