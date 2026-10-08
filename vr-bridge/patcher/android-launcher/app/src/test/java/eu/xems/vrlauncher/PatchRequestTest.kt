package eu.xems.vrlauncher

import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class PatchRequestTest {

    private fun ok(q: String, p: String, t: String) =
        (PatchRequest.parse(q, p, t) as PatchRequest.Parsed.Ok).request

    private fun problem(q: String, p: String, t: String) =
        (PatchRequest.parse(q, p, t) as PatchRequest.Parsed.Invalid).problem

    @Test fun defaultPortAndTabletIp() {
        val r = ok(" 192.168.1.23 ", "com.a.game", "192.168.1.50")
        assertEquals(PatchRequest("192.168.1.23", 5555, "com.a.game", "192.168.1.50"), r)
        assertArrayEquals(
            arrayOf("android-launcher/termux-run.sh", "192.168.1.23:5555", "com.a.game", "192.168.1.50"),
            r.scriptArgs(),
        )
    }

    @Test fun explicitPortAndBlankTablet() {
        val r = ok("10.0.0.7:5037", "com.a.game", "  ")
        assertEquals(5037, r.questPort)
        assertEquals(null, r.tabletIp)
        assertArrayEquals(arrayOf("android-launcher/termux-run.sh", "10.0.0.7:5037", "com.a.game"), r.scriptArgs())
    }

    @Test fun rejectsBadInput() {
        assertEquals(PatchRequest.Problem.QUEST_IP, problem("", "com.a.game", ""))
        assertEquals(PatchRequest.Problem.QUEST_IP, problem("192.168.1", "com.a.game", ""))
        assertEquals(PatchRequest.Problem.QUEST_IP, problem("192.168.1.300", "com.a.game", ""))
        assertEquals(PatchRequest.Problem.QUEST_IP, problem("192.168.1.2:0", "com.a.game", ""))
        assertEquals(PatchRequest.Problem.QUEST_IP, problem("192.168.1.2:x", "com.a.game", ""))
        assertEquals(PatchRequest.Problem.PACKAGE, problem("192.168.1.2", "game", ""))
        assertEquals(PatchRequest.Problem.PACKAGE, problem("192.168.1.2", "com.a; rm -rf /", ""))
        assertEquals(PatchRequest.Problem.TABLET_IP, problem("192.168.1.2", "com.a.game", "tablet"))
    }

    @Test fun ipv4() {
        assertTrue(PatchRequest.isIpv4("0.0.0.0"))
        assertTrue(PatchRequest.isIpv4("255.255.255.255"))
        assertFalse(PatchRequest.isIpv4("1.2.3"))
        assertFalse(PatchRequest.isIpv4("1.2.3.4.5"))
        assertFalse(PatchRequest.isIpv4("1..3.4"))
        assertFalse(PatchRequest.isIpv4("1.2.3.-4"))
    }
}
