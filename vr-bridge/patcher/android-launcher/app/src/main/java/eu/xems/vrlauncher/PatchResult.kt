package eu.xems.vrlauncher

/**
 * Termux's answer to one background run (the "result" bundle it puts into our PendingIntent), reduced to
 * what the status card shows. Pure Kotlin; exit codes come from termux-run.sh / xems_vr_patch.py.
 */
data class PatchResult(
    val exitCode: Int?,
    val stdout: String,
    val stderr: String,
    /** Termux's own error: RESULT_OK (-1) when the command could be started at all. */
    val termuxErr: Int,
    val termuxErrMsg: String?,
) {
    enum class Outcome { DONE, BAD_INPUT, NO_ADB, NO_QUEST, UNAUTHORIZED, FAILED, TERMUX }

    val outcome: Outcome
        get() = when {
            termuxErr != TERMUX_OK -> Outcome.TERMUX
            exitCode == 0 -> Outcome.DONE
            exitCode == 2 -> Outcome.BAD_INPUT
            exitCode == 3 -> Outcome.NO_ADB
            exitCode == 4 -> Outcome.NO_QUEST
            exitCode == 5 -> Outcome.UNAUTHORIZED
            else -> Outcome.FAILED
        }

    /** The last meaningful lines of both streams, in order of interest: the script's ✗ line first. */
    fun tail(maxLines: Int = 12): String {
        val err = stderr.lines().map(String::trimEnd).filter(String::isNotEmpty)
        val out = stdout.lines().map(String::trimEnd).filter(String::isNotEmpty)
        val lines = (out + err).takeLast(maxLines)
        return if (lines.isEmpty()) termuxErrMsg.orEmpty() else lines.joinToString("\n")
    }

    companion object {
        const val TERMUX_OK = -1
    }
}
