import org.vosk.Model;
import org.vosk.Recognizer;

import java.io.File;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/**
 * "Тренер" by Vosk (the small Russian model — Bulgarian "тренер" sounds the same) with a grammar: the wake word, its
 * look-alikes as their own words (so they never come out as "тренер") and [unk] for the rest. Speaker-independent:
 * nothing is taught. The same phrases, voices and noise as WakeSim (the taught DTW spotter) — side by side.
 * Usage: sh scripts/voice-sim/run-vosk.sh   (needs espeak-ng, ffmpeg; downloads the model and the jar once)
 */
public class VoskSim {
    static File dir;
    static Random rnd = new Random(541);

    static short[] say(String text, int speed, int pitch) throws Exception {
        File wav = new File(dir, "w" + Math.abs((text + speed + pitch).hashCode()) + ".wav");
        File raw = new File(wav.getPath() + ".raw");
        if (!raw.exists()) {
            File txt = new File(wav.getPath() + ".txt");
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
        if (p.waitFor() != 0) throw new RuntimeException("failed: " + String.join(" ", cmd));
    }

    static short[] noise(int n, double level) {
        short[] s = new short[n];
        for (int i = 0; i < n; i++) s[i] = (short) (rnd.nextGaussian() * (30 + level));
        return s;
    }

    static short[] mix(short[] a, double level) {
        short[] o = new short[a.length];
        for (int i = 0; i < a.length; i++) o[i] = (short) Math.max(-32768, Math.min(32767, a[i] + rnd.nextGaussian() * level));
        return o;
    }

    static short[] cat(short[]... parts) {
        int n = 0;
        for (short[] p : parts) n += p.length;
        short[] o = new short[n];
        int k = 0;
        for (short[] p : parts) { System.arraycopy(p, 0, o, k, p.length); k += p.length; }
        return o;
    }

    static double minConf = Double.parseDouble(System.getProperty("conf", "0.75"));
    static boolean partials = Boolean.getBoolean("partials");

    /** "тренер" in a result with its confidence ≥ minConf (word-level results). */
    static boolean wakeIn(String res) {
        java.util.regex.Matcher m = java.util.regex.Pattern
                .compile("\\{[^{}]*?\"conf\"\\s*:\\s*([0-9.]+)[^{}]*?\"word\"\\s*:\\s*\"тренер[аы]?\"[^{}]*\\}").matcher(res);
        while (m.find()) {
            if (Double.parseDouble(m.group(1)) >= minConf) {
                return true;
            }
        }
        return false;
    }

    /** Streams the audio in 100 ms chunks, as the tablet's AudioRecord would; true = "тренер" came out. */
    static boolean heard(Model m, String grammar, short[] audio, List<String> got) throws Exception {
        try (Recognizer r = new Recognizer(m, 16000f, grammar)) {
            r.setWords(true);
            boolean wake = false;
            byte[] buf = new byte[3200];
            StringBuilder all = new StringBuilder();
            for (int i = 0; i < audio.length; i += 1600) {
                int n = Math.min(1600, audio.length - i);
                for (int k = 0; k < n; k++) {
                    buf[2 * k] = (byte) audio[i + k];
                    buf[2 * k + 1] = (byte) (audio[i + k] >> 8);
                }
                if (r.acceptWaveForm(buf, n * 2)) {
                    String res = r.getResult();
                    all.append(res);
                    wake |= wakeIn(res);
                } else if (partials && r.getPartialResult().contains("тренер")) {
                    wake = true;
                }
            }
            String fin = r.getFinalResult();
            all.append(fin);
            got.add(all.toString().replaceAll("\\s+", " ").replaceAll("\"(start|end)\" : [0-9.]+, ?", ""));
            return wake || wakeIn(fin);
        }
    }

    public static void main(String[] a) throws Exception {
        dir = Files.createTempDirectory("vosk").toFile();
        org.vosk.LibVosk.setLogLevel(org.vosk.LogLevel.WARNINGS);
        Model m = new Model(System.getProperty("model"));
        String grammar = System.getProperty("grammar", "[\"тренер\", \"тренера\", \"тренеры\", \"тренировка\", \"тренировки\", \"тренировать\", \"тренируем\", \"тренирую\", \"[unk]\"]");
        Object[][] phrases = {
                {"тренер", true}, {"тренер увеличи краката", true}, {"тренер пауза", true}, {"тренер стоп", true},
                {"тренер намали ръцете", true}, {"тренер колко повторения", true},
                {"увеличи краката", false}, {"треньорът каза", false}, {"трамвай", false}, {"три", false},
                {"тенис", false}, {"френски", false}, {"течение", false}, {"пауза", false}, {"стоп", false},
                {"старт", false}, {"интересно", false},
                {"тренировка", false}, {"тренирам", false}, {"тренираме", false}, {"треньорка", false},
                {"днес имаме тренировка", false}, {"хайде на тренировка", false},
        };
        int[][] voices = {{150, 50}, {130, 40}, {175, 60}, {120, 70}, {165, 30}};
        double[] noises = {0, 600, 1500};
        int pos = 0, tp = 0, neg = 0, fp = 0;
        for (Object[] ph : phrases) {
            String text = (String) ph[0];
            boolean want = (Boolean) ph[1];
            for (int[] v : voices) {
                for (double nz : noises) {
                    short[] sp = mix(say(text, v[0], v[1]), nz);
                    short[] audio = cat(noise(4800, nz), sp, noise(6400, nz));
                    List<String> got = new ArrayList<String>();
                    boolean w = heard(m, grammar, audio, got);
                    if (want) {
                        pos++;
                        tp += w ? 1 : 0;
                    } else {
                        neg++;
                        fp += w ? 1 : 0;
                    }
                    if (w != want) {
                        System.out.println("  " + (want ? "missed " : "false wake ") + "\"" + text + "\" voice " + v[0] + "/"
                                + v[1] + " noise " + (int) nz + " → " + got.get(0));
                    }
                }
            }
        }
        System.out.println("vosk: hits " + tp + "/" + pos + ", false wakes " + fp + "/" + neg);
    }
}
