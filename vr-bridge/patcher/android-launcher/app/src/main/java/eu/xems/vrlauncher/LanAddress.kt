package eu.xems.vrlauncher

import java.net.Inet4Address
import java.net.NetworkInterface

/**
 * The tablet's own Wi-Fi IPv4 — what the Quest layer must send haptics to (`--tablet`).
 * [pick] is pure so the choice rules are unit-tested; [current] reads the real interfaces.
 */
object LanAddress {

    data class Candidate(val iface: String, val address: String, val up: Boolean = true)

    /** Wi-Fi first (wlan*), then any other private LAN address; never loopback, link-local, cellular or VPN. */
    fun pick(candidates: List<Candidate>): String? {
        val usable = candidates.filter { it.up && PatchRequest.isIpv4(it.address) && isPrivate(it.address) && !isCellularOrVpn(it.iface) }
        return usable.firstOrNull { it.iface.startsWith("wlan") }?.address
            ?: usable.firstOrNull { it.iface.startsWith("eth") }?.address
            ?: usable.firstOrNull()?.address
    }

    fun current(): String? = try {
        val list = mutableListOf<Candidate>()
        for (ni in NetworkInterface.getNetworkInterfaces()?.toList().orEmpty()) {
            for (a in ni.inetAddresses.toList()) {
                if (a is Inet4Address) list += Candidate(ni.name, a.hostAddress ?: continue, ni.isUp && !ni.isLoopback)
            }
        }
        pick(list)
    } catch (e: Exception) {
        null
    }

    private fun isPrivate(ip: String): Boolean {
        val (a, b) = ip.split('.').map(String::toInt)
        return a == 10 || (a == 172 && b in 16..31) || (a == 192 && b == 168)
    }

    private fun isCellularOrVpn(iface: String): Boolean =
        iface.startsWith("rmnet") || iface.startsWith("ccmni") || iface.startsWith("tun") ||
            iface.startsWith("ppp") || iface.startsWith("ipsec") || iface == "lo"
}
