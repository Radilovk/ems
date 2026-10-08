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
        assertEquals(listOf("com.a.fight", "com.beat.games"), TermuxReport.games(out))
    }

    @Test fun checks() {
        assertEquals(
            listOf("python3" to true, "adb" to true, "java" to false),
            TermuxReport.checks("ok python3\nmissing java\nok adb\n"),
        )
    }
}
