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
    /** argv for `bash android-launcher/termux-run.sh …`; RunCommandService passes it without shell parsing. */
    fun scriptArgs(): Array<String> {
        val args = mutableListOf(SCRIPT, "$questHost:$questPort", targetPackage)
        if (tabletIp != null) args += tabletIp
        return args.toTypedArray()
    }

    /** Human-readable form for the status card. */
    fun commandLine(): String = scriptArgs().joinToString(" ")

    enum class Problem { QUEST_IP, PACKAGE, TABLET_IP }

    sealed class Parsed {
        data class Ok(val request: PatchRequest) : Parsed()
        data class Invalid(val problem: Problem) : Parsed()
    }

    companion object {
        /** Relative to the Termux workdir (vr-bridge/patcher). */
        const val SCRIPT = "android-launcher/termux-run.sh"
        const val DEFAULT_ADB_PORT = 5555

        private val PACKAGE = Regex("^[A-Za-z][A-Za-z0-9_]*(\\.[A-Za-z][A-Za-z0-9_]*)+$")

        /** Raw field values → request. A blank tablet field means "let the layer find the tablet by itself". */
        fun parse(quest: String, pkg: String, tablet: String): Parsed {
            val q = quest.trim()
            val host = q.substringBefore(':')
            val port = if (':' in q) q.substringAfter(':').toIntOrNull() else DEFAULT_ADB_PORT
            if (!isIpv4(host) || port == null || port !in 1..65535) return Parsed.Invalid(Problem.QUEST_IP)
            val p = pkg.trim()
            if (!PACKAGE.matches(p)) return Parsed.Invalid(Problem.PACKAGE)
            val t = tablet.trim()
            if (t.isNotEmpty() && !isIpv4(t)) return Parsed.Invalid(Problem.TABLET_IP)
            return Parsed.Ok(PatchRequest(host, port, p, t.ifEmpty { null }))
        }

        fun isIpv4(s: String): Boolean {
            val parts = s.split('.')
            return parts.size == 4 && parts.all { it.isNotEmpty() && it.length <= 3 && it.all(Char::isDigit) && it.toInt() <= 255 }
        }
    }
}
