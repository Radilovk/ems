import com.isaigu.gymapp.ai.PathNorm;

import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

/** PathNorm (Java, on the tablet) must give exactly what scripts/exercise-paths.py gives: dir/*.svg vs dir/*.norm. */
public final class PathNormSim {
    /** Same commands, numbers within 0.01 (a last-digit rounding after float accumulation is fine). */
    static boolean close(String a, String b) {
        String[] x = a.split("(?=[MLCZ])|\\s+");
        String[] y = b.split("(?=[MLCZ])|\\s+");
        if (x.length != y.length) {
            return false;
        }
        for (int i = 0; i < x.length; i++) {
            String p = x[i];
            String q = y[i];
            if (p.equals(q)) {
                continue;
            }
            String pc = p.replaceAll("[0-9.\\-]", "");
            String qc = q.replaceAll("[0-9.\\-]", "");
            if (!pc.equals(qc)) {
                return false;
            }
            double u = Double.parseDouble(p.replaceAll("[MLCZ]", ""));
            double v = Double.parseDouble(q.replaceAll("[MLCZ]", ""));
            if (Math.abs(u - v) > 0.0101) {
                return false;
            }
        }
        return true;
    }

    public static void main(String[] args) throws Exception {
        Path dir = Paths.get(args[0]);
        int n = 0;
        int bad = 0;
        try (java.util.stream.Stream<Path> s = Files.list(dir)) {
            for (Path p : (Iterable<Path>) s.filter(x -> x.toString().endsWith(".svg")).sorted()::iterator) {
                String svg = new String(Files.readAllBytes(p), StandardCharsets.UTF_8);
                String want = new String(Files.readAllBytes(Paths.get(p.toString().replace(".svg", ".norm"))),
                        StandardCharsets.UTF_8).trim();
                String got = PathNorm.normalize(PathNorm.pathOf(svg));
                n++;
                if (!got.equals(want) && !close(got, want)) {
                    bad++;
                    if (bad <= 3) {
                        int i = 0;
                        while (i < Math.min(got.length(), want.length()) && got.charAt(i) == want.charAt(i)) {
                            i++;
                        }
                        System.out.println("DIFF " + p.getFileName() + " at " + i + ": got …"
                                + got.substring(Math.max(0, i - 30), Math.min(got.length(), i + 40)) + "\n   want …"
                                + want.substring(Math.max(0, i - 30), Math.min(want.length(), i + 40)));
                    }
                }
            }
        }
        System.out.println((bad == 0 ? "OK" : "FAIL") + " — PathNorm: " + n + " frames, " + bad + " differ");
        if (bad > 0 || n == 0) {
            System.exit(1);
        }
    }
}
