package eu.xems.vrlauncher

/** Reads the machine lines termux-run.sh prints (stdout, or a session transcript). Pure — unit-tested. */
object TermuxReport {

    data class Quest(val ip: String, val model: String?)

    /** "quest <ip> <model…>"; model "?" = not authorised yet. */
    fun quests(stdout: String): List<Quest> = lines(stdout, "quest ").mapNotNull { rest ->
        val ip = rest.substringBefore(' ')
        if (!PatchRequest.isIpv4(ip)) return@mapNotNull null
        val model = rest.substringAfter(' ', "").trim()
        Quest(ip, model.takeIf { it.isNotEmpty() && it != "?" })
    }.distinct()

    /** OK = OpenXR loader in the APK (the layer goes in) · VRAPI = old VrApi/OVRPlugin (cannot) · UNKNOWN = neither. */
    enum class Fit { OK, UNKNOWN, VRAPI }

    data class Game(val pkg: String, val fit: Fit)

    /** "game <package> [ok|vrapi|?]", the ones that can be patched first. */
    fun games(stdout: String): List<Game> = lines(stdout, "game ").mapNotNull { rest ->
        val parts = rest.trim().split(Regex("\\s+"))
        val pkg = parts.firstOrNull()?.takeIf { it.isNotEmpty() } ?: return@mapNotNull null
        Game(pkg, when (parts.getOrNull(1)) { "ok" -> Fit.OK; "vrapi" -> Fit.VRAPI; else -> Fit.UNKNOWN })
    }.distinctBy { it.pkg }.sortedBy { it.fit.ordinal }

    /** "ok <what>" / "missing <what>" → what → present. */
    fun checks(stdout: String): List<Pair<String, Boolean>> =
        lines(stdout, "ok ").map { it.trim() to true } + lines(stdout, "missing ").map { it.trim() to false }

    private fun lines(text: String, prefix: String): List<String> =
        text.lineSequence().map { it.trim('\r', ' ') }.filter { it.startsWith(prefix) }.map { it.removePrefix(prefix) }.toList()
}
