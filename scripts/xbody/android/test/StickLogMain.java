import bg.xems.fleshka.StickLog;

import java.nio.file.Files;
import java.nio.file.Paths;

/** scripts/xbody/test.sh: prints StickLog.lastRun of a stick's xems-update.log. */
public class StickLogMain {
    public static void main(String[] a) throws Exception {
        System.out.println(StickLog.lastRun(new String(Files.readAllBytes(Paths.get(a[0])), "UTF-8")));
    }
}
