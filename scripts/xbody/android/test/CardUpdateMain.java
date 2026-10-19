import bg.xems.fleshka.CardUpdate;
import bg.xems.fleshka.FileDev;
import bg.xems.fleshka.UndoDev;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Paths;

/**
 * Host test of the app's SD-card update (scripts/xbody/test.sh 13) on image files:
 *   apply IMG STICKDIR UNDOLOG   the stick's xems/{payload.tar.gz,remove.list,VERSION} onto the card image, logged
 *   undo IMG UNDOLOG             put the logged sectors back
 */
public class CardUpdateMain {
    static final class Print implements CardUpdate.Progress {
        @Override
        public void step(String what, int pct) {}
    }

    public static void main(String[] a) throws Exception {
        if (a[0].equals("apply")) {
            FileDev f = new FileDev(new File(a[1]), true);
            UndoDev u = new UndoDev(f, new File(a[3]));
            String dir = a[2] + "/xems/";
            String v = CardUpdate.apply(u, Files.readAllBytes(Paths.get(dir + "payload.tar.gz")),
                    new String(Files.readAllBytes(Paths.get(dir + "remove.list")), "UTF-8"),
                    new String(Files.readAllBytes(Paths.get(dir + "VERSION")), "UTF-8").trim(), new Print());
            u.close();
            f.close();
            System.out.println("OK " + v + " sectors=" + UndoDev.count(new File(a[3])));
        } else if (a[0].equals("undo")) {
            FileDev f = new FileDev(new File(a[1]), true);
            System.out.println("UNDONE " + UndoDev.undo(f, new File(a[2])));
            f.close();
        }
    }
}
