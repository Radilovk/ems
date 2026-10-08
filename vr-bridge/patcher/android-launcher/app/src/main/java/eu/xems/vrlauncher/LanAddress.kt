package eu.xems.vrlauncher

import android.content.Context
import android.net.ConnectivityManager
import java.net.DatagramSocket
import java.net.Inet4Address
import java.net.InetAddress
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

    /**
     * Android 11+ hides most interfaces from NetworkInterface for ordinary apps, so ask ConnectivityManager first
     * (every network with its link addresses), then NetworkInterface, then the address a UDP socket would use.
     */
    fun current(context: Context): String? =
        pick(fromConnectivity(context)) ?: pick(fromInterfaces()) ?: viaSocket()

    private fun fromConnectivity(context: Context): List<Candidate> = try {
        val cm = context.getSystemService(ConnectivityManager::class.java)
        val list = mutableListOf<Candidate>()
        for (n in cm.allNetworks) {
            val lp = cm.getLinkProperties(n) ?: continue
            for (la in lp.linkAddresses) {
                val a = la.address
                if (a is Inet4Address) list += Candidate(lp.interfaceName ?: "wlan?", a.hostAddress ?: continue)
            }
        }
        list
    } catch (e: Exception) {
        emptyList()
    }

    private fun fromInterfaces(): List<Candidate> = try {
        val list = mutableListOf<Candidate>()
        for (ni in NetworkInterface.getNetworkInterfaces()?.toList().orEmpty()) {
            for (a in ni.inetAddresses.toList()) {
                if (a is Inet4Address) list += Candidate(ni.name, a.hostAddress ?: continue, ni.isUp && !ni.isLoopback)
            }
        }
        list
    } catch (e: Exception) {
        emptyList()
    }

    /** connect() on a UDP socket sends nothing; it only makes the kernel choose the outgoing address. */
    private fun viaSocket(): String? = try {
        DatagramSocket().use { s ->
            s.connect(InetAddress.getByName("192.168.1.1"), 9)
            s.localAddress.hostAddress?.takeIf { PatchRequest.isIpv4(it) && isPrivate(it) }
        }
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
