import com.isaigu.gymapp.ai.Kws;
import com.isaigu.gymapp.ai.KwsTrain;

import java.io.File;
import java.io.FileInputStream;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.List;

/**
 * A ready model of one trainer's voice, trained here exactly as the tablet would (KwsTrain.train with the app's pack),
 * shipped in the APK as the default (owner, 1.1.599: "send the voice already trained, inside the version").
 * Usage: sh scripts/voice-kws/run-owner.sh <enroll dir: cut_*.raw [own.raw]> <out model>
 */
public class KwsOwner {
    static float[] read(File f) throws Exception {
        byte[] b = Files.readAllBytes(f.toPath());
        float[] s = new float[b.length / 2];
        for (int i = 0; i < s.length; i++) {
            s[i] = (short) ((b[2 * i] & 0xff) | (b[2 * i + 1] << 8));
        }
        return s;
    }

    public static void main(String[] a) throws Exception {
        File en = new File(a[0]);
        File[] cf = en.listFiles();
        java.util.Arrays.sort(cf);
        List<float[]> cuts = new ArrayList<float[]>();
        for (File c : cf) {
            if (c.getName().startsWith("cut_")) {
                cuts.add(read(c));
            }
        }
        File o = new File(en, "own.raw");
        float[] own = o.exists() ? read(o) : null;
        KwsTrain.Pack pack = KwsTrain.loadPack(new FileInputStream(a[2]));
        long t0 = System.currentTimeMillis();
        Kws m = KwsTrain.train(cuts, own, pack, 599, null);
        Files.write(new File(a[1]).toPath(), m.save());
        System.out.printf("model of %d cuts%s trained in %.1f s → %s%n", cuts.size(), own != null ? " + own speech" : "",
                (System.currentTimeMillis() - t0) / 1000.0, a[1]);
    }
}
