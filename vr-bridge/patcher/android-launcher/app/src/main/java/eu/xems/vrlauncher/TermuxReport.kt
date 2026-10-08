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

    /** "game <package>". */
    fun games(stdout: String): List<String> = lines(stdout, "game ").map(String::trim).filter(String::isNotEmpty).distinct()

    /** "ok <what>" / "missing <what>" → what → present. */
    fun checks(stdout: String): List<Pair<String, Boolean>> =
        lines(stdout, "ok ").map { it.trim() to true } + lines(stdout, "missing ").map { it.trim() to false }

    private fun lines(text: String, prefix: String): List<String> =
        text.lineSequence().map { it.trim('\r', ' ') }.filter { it.startsWith(prefix) }.map { it.removePrefix(prefix) }.toList()
}
