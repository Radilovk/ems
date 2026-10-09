package eu.xems.vrlauncher

import eu.xems.vrlauncher.TermuxReport.Quest
import org.junit.Assert.assertEquals
import org.junit.Test

class TermuxReportTest {

    @Test fun quests() {
        val out = "→ търся шлем в 192.168.1.0/24 (порт 5555)\r\nquest 192.168.1.23 Quest 3\r\nquest 192.168.1.77 ?\nquest nope x\n"
        assertEquals(listOf(Quest("192.168.1.23", "Quest 3"), Quest("192.168.1.77", null)), TermuxReport.quests(out))
    }

    @Test fun gamesFromATerminalTranscript() {
        val out = "~ $ bash termux-run.sh games 1.2.3.4\n→ adb connect 1.2.3.4:5555\ngame com.a.fight\r\ngame com.beat.games\n[Process completed]"
        assertEquals(listOf("com.a.fight", "com.beat.games"), TermuxReport.games(out).map { it.pkg })
    }

    @Test fun downloadsOkFirst() {
        val out = "dl /sdcard/Download/Old.apk\tOld.apk\tvrapi\t80\r\ndl /sdcard/Download/My Game.apk\tMy Game.apk\tok\t120\nnoise\n"
        val d = TermuxReport.downloads(out)
        assertEquals(listOf("My Game.apk", "Old.apk"), d.map { it.file })
        assertEquals("/sdcard/Download/My Game.apk", d[0].path)
        assertEquals(120, d[0].mb)
        assertEquals(TermuxReport.Fit.VRAPI, d[1].fit)
    }

    @Test fun vrcheckVerdicts() {
        val v = { s: String -> TermuxReport.vrcheck(s).verdict }
        assertEquals(TermuxReport.VrCheck.Verdict.NONE_PATCHED, v("noise\n"))
        assertEquals(TermuxReport.VrCheck.Verdict.NOT_LOADED, v("patched org.saber shim\r\n"))
        assertEquals(TermuxReport.VrCheck.Verdict.SHIM_ONLY, v("patched a shim\nlog I XemsVrLayer: loader shim: original loader loaded\n"))
        assertEquals(TermuxReport.VrCheck.Verdict.ACTIVE, v("log I XemsVrLayer: active, session 1a2b\n"))
        assertEquals(TermuxReport.VrCheck.Verdict.PAIRED, v("log x active, session 1\nlog x paired with 192.168.43.1:47800\n"))
        assertEquals(listOf("org.saber" to true, "b" to false), TermuxReport.vrcheck("patched org.saber shim\npatched b asset\n").patched)
        assertEquals(listOf("📦 org.saber 281552 libopenxr_loader.so", "· E linker: x"),
            TermuxReport.vrcheck("lib org.saber 281552 libopenxr_loader.so\nplog E linker: x\n").evidence)
    }

    @Test fun catalogAndPage() {
        val out = "item opensaber\tOpen Saber\tpage\tРитъм\r\nitem q\tQuestZDoom\tgithub\t\nnoise\npage https://x.itch.io/g\n"
        val c = TermuxReport.catalog(out)
        assertEquals(listOf("opensaber", "q"), c.map { it.id })
        assertEquals(listOf(false, true), c.map { it.direct })
        assertEquals("Ритъм", c[0].note)
        assertEquals("https://x.itch.io/g", TermuxReport.page(out))
        assertEquals(null, TermuxReport.page("page javascript:x"))
    }

    @Test fun gamesWithFitOkFirst() {
        val out = "game com.old.one vrapi\ngame com.web.app ?\r\ngame com.new.one ok\n"
        val g = TermuxReport.games(out)
        assertEquals(listOf("com.new.one", "com.web.app", "com.old.one"), g.map { it.pkg })
        assertEquals(listOf(TermuxReport.Fit.OK, TermuxReport.Fit.UNKNOWN, TermuxReport.Fit.VRAPI), g.map { it.fit })
    }

    @Test fun checks() {
        assertEquals(
            listOf("python3" to true, "adb" to true, "java" to false),
            TermuxReport.checks("ok python3\nmissing java\nok adb\n"),
        )
    }
}
