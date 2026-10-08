package eu.xems.vrlauncher

/**
 * What one run needs: the headset to `adb connect` to, the game to patch and the tablet IP for `--tablet`.
 * Pure Kotlin (no Android) so the validation and the argument vector are unit-tested on the JVM.
 */
data class PatchRequest(
    val questHost: String,
    val questPort: Int,
    val targetPackage: String,
    val tabletIp: String?,
) {
    /** "host:port" for adb. */
    val questSerial: String get() = "$questHost:$questPort"

    enum class Problem { QUEST_IP, PACKAGE, TABLET_IP }

    sealed class Parsed {
        data class Ok(val request: PatchRequest) : Parsed()
        data class Invalid(val problem: Problem) : Parsed()
    }

    companion object {
        const val DEFAULT_ADB_PORT = 5555

        private val PACKAGE = Regex("^[A-Za-z][A-Za-z0-9_]*(\\.[A-Za-z][A-Za-z0-9_]*)+$")

        /** Raw field values → request. A blank tablet field means "let the layer find the tablet by itself". */
        fun parse(quest: String, pkg: String, tablet: String): Parsed {
            val serial = questSerial(quest) ?: return Parsed.Invalid(Problem.QUEST_IP)
            val p = pkg.trim()
            if (!PACKAGE.matches(p)) return Parsed.Invalid(Problem.PACKAGE)
            val t = tablet.trim()
            if (t.isNotEmpty() && !isIpv4(t)) return Parsed.Invalid(Problem.TABLET_IP)
            return Parsed.Ok(PatchRequest(serial.substringBefore(':'), serial.substringAfter(':').toInt(), p, t.ifEmpty { null }))
        }

        /** "ip" or "ip:port" → "ip:port", or null when it is not an IPv4 headset address. */
        fun questSerial(quest: String): String? {
            val q = quest.trim()
            val host = q.substringBefore(':')
            val port = if (':' in q) q.substringAfter(':').toIntOrNull() else DEFAULT_ADB_PORT
            if (!isIpv4(host) || port == null || port !in 1..65535) return null
            return "$host:$port"
        }

        fun isIpv4(s: String): Boolean {
            val parts = s.split('.')
            return parts.size == 4 && parts.all { it.isNotEmpty() && it.length <= 3 && it.all(Char::isDigit) && it.toInt() <= 255 }
        }
    }
}
