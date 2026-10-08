package eu.xems.vrlauncher

import eu.xems.vrlauncher.PatchResult.Outcome
import org.junit.Assert.assertEquals
import org.junit.Test

class PatchResultTest {

    private fun r(exit: Int?, err: Int = PatchResult.TERMUX_OK, out: String = "", stderr: String = "", msg: String? = null) =
        PatchResult(exit, out, stderr, err, msg)

    @Test fun outcomesFollowScriptExitCodes() {
        assertEquals(Outcome.DONE, r(0).outcome)
        assertEquals(Outcome.BAD_INPUT, r(2).outcome)
        assertEquals(Outcome.NO_ADB, r(3).outcome)
        assertEquals(Outcome.NO_QUEST, r(4).outcome)
        assertEquals(Outcome.UNAUTHORIZED, r(5).outcome)
        assertEquals(Outcome.NOT_SET_UP, r(6).outcome)
        assertEquals(Outcome.NOT_SET_UP, r(127).outcome)
        assertEquals(Outcome.FAILED, r(1).outcome)
        assertEquals(Outcome.FAILED, r(null).outcome)
        assertEquals(Outcome.TERMUX, r(0, err = 1).outcome)
    }

    @Test fun tailKeepsLastNonEmptyLinesWithErrorsLast() {
        val out = (1..20).joinToString("\n") { "line $it" } + "\n\n"
        val tail = r(1, out = out, stderr = "✗ boom\n").tail(3)
        assertEquals("line 19\nline 20\n✗ boom", tail)
    }

    @Test fun tailFallsBackToTermuxMessage() {
        assertEquals("allow-external-apps", r(null, err = 1, msg = "allow-external-apps").tail())
    }
}
