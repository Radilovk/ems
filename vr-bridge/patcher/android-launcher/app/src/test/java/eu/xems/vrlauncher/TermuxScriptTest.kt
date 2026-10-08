package eu.xems.vrlauncher

import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Test

class TermuxScriptTest {
    private val run = TermuxScript.RUN

    @Test fun argvPerTask() {
        assertArrayEquals(arrayOf(run, "check"), TermuxScript.check())
        assertArrayEquals(arrayOf(run, "find", "192.168.1.50"), TermuxScript.find("192.168.1.50"))
        assertArrayEquals(arrayOf(run, "games", "192.168.1.23:5555"), TermuxScript.games("192.168.1.23:5555"))
        assertArrayEquals(
            arrayOf(run, "patch", "192.168.1.23:5555", "com.a.game", "192.168.1.50"),
            TermuxScript.patch(PatchRequest("192.168.1.23", 5555, "com.a.game", "192.168.1.50")),
        )
        assertArrayEquals(
            arrayOf(run, "patch", "10.0.0.7:5037", "com.a.game"),
            TermuxScript.patch(PatchRequest("10.0.0.7", 5037, "com.a.game", null)),
        )
        assertArrayEquals(arrayOf("-c", "echo hi", "xems-setup"), TermuxScript.setup("echo hi"))
    }

    @Test fun scriptPathMatchesTheRepoLayout() {
        assertEquals("/data/data/com.termux/files/home/ems/vr-bridge/patcher/android-launcher/termux/termux-run.sh", run)
    }

    @Test fun display() {
        assertEquals("termux-run.sh games 192.168.1.23:5555", TermuxScript.display(TermuxScript.games("192.168.1.23:5555")))
        assertEquals("termux-setup.sh", TermuxScript.display(TermuxScript.setup("long script")))
    }
}
