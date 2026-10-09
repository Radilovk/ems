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

    data class CatalogGame(val id: String, val name: String, val direct: Boolean, val note: String)

    /** "item <id>\t<name>\t<github|page>\t<note>" (catalog.json through catalog.py). */
    fun catalog(stdout: String): List<CatalogGame> = lines(stdout, "item ").mapNotNull { rest ->
        val f = rest.split('\t')
        if (f.size < 3 || f[0].isBlank()) null else CatalogGame(f[0].trim(), f[1].trim(), f[2].trim() == "github", f.getOrElse(3) { "" }.trim())
    }.distinctBy { it.id }

    /** "page <url>": where the APK has to be downloaded by hand. */
    fun page(stdout: String): String? = lines(stdout, "page ").lastOrNull()?.trim()?.takeIf { it.startsWith("https://") }

    /** What `vrcheck` saw: games carrying the haptics and the layer's own log, read into one verdict. */
    data class VrCheck(val patched: List<Pair<String, Boolean>>, val log: List<String>, val evidence: List<String> = emptyList()) {
        enum class Verdict { PAIRED, ACTIVE, SHIM_ONLY, NOT_LOADED, NONE_PATCHED }

        val verdict: Verdict
            get() = when {
                log.any { "paired with" in it } -> Verdict.PAIRED
                log.any { "active, session" in it } -> Verdict.ACTIVE
                log.any { "loader shim" in it } -> Verdict.SHIM_ONLY
                patched.isNotEmpty() -> Verdict.NOT_LOADED
                else -> Verdict.NONE_PATCHED
            }
    }

    /** "patched <pkg> shim|asset" + "log <logcat line>". */
    fun vrcheck(stdout: String) = VrCheck(
        lines(stdout, "patched ").mapNotNull { r ->
            val f = r.trim().split(' ')
            if (f.isEmpty() || f[0].isEmpty()) null else f[0] to (f.getOrNull(1) == "shim")
        },
        lines(stdout, "log ").map { it.trim() },
        lines(stdout, "lib ").map { "📦 " + it.trim() } + lines(stdout, "plog ").map { "· " + it.trim() },
    )

    /** "ok <what>" / "missing <what>" → what → present. */
    fun checks(stdout: String): List<Pair<String, Boolean>> =
        lines(stdout, "ok ").map { it.trim() to true } + lines(stdout, "missing ").map { it.trim() to false }

    private fun lines(text: String, prefix: String): List<String> =
        text.lineSequence().map { it.trim('\r', ' ') }.filter { it.startsWith(prefix) }.map { it.removePrefix(prefix) }.toList()
}
