import bg.xems.fleshka.PhoneServer;

import java.nio.file.Files;
import java.nio.file.Paths;

/** Host test of the phone's link server (scripts/xbody/test.sh 7): serves a stick folder like the app's assets. */
public class PhoneServerMain {
    static final class Dir implements PhoneServer.Files {
        final String root;

        Dir(String r) { root = r; }

        @Override
        public byte[] get(String path) throws Exception { return Files.readAllBytes(Paths.get(root, path)); }
    }

    static final class Print implements PhoneServer.Listener {
        @Override
        public void unit(String have, String pending) {
            System.out.println("UNIT have=" + have + " pending=" + pending);
            System.out.flush();
        }
    }

    public static void main(String[] a) throws Exception {
        new PhoneServer(a[0], new Dir(a[1]), new Print(), Integer.parseInt(a[2])).run();
    }
}
