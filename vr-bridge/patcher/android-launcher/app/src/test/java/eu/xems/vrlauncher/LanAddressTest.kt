package eu.xems.vrlauncher

import eu.xems.vrlauncher.LanAddress.Candidate
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

class LanAddressTest {

    @Test fun prefersWifi() {
        val list = listOf(
            Candidate("lo", "127.0.0.1"),
            Candidate("rmnet_data0", "10.45.1.2"),
            Candidate("eth0", "192.168.0.9"),
            Candidate("wlan0", "192.168.1.50"),
        )
        assertEquals("192.168.1.50", LanAddress.pick(list))
    }

    @Test fun skipsDownCellularVpnAndPublic() {
        val list = listOf(
            Candidate("wlan0", "192.168.1.50", up = false),
            Candidate("tun0", "10.8.0.2"),
            Candidate("ccmni0", "10.1.1.1"),
            Candidate("wlan1", "169.254.3.4"),
            Candidate("wlan2", "8.8.8.8"),
        )
        assertNull(LanAddress.pick(list))
    }

    @Test fun fallsBackToAnyPrivateLan() {
        assertEquals("172.20.1.4", LanAddress.pick(listOf(Candidate("ap0", "172.20.1.4"))))
        assertEquals("192.168.0.9", LanAddress.pick(listOf(Candidate("ap0", "172.32.1.4"), Candidate("eth0", "192.168.0.9"))))
    }
}
