package eu.xems.vrlauncher

import android.content.Context
import android.content.SharedPreferences

/** Remembered fields + the state of the last run, shared by the screen and [PatchResultReceiver]. */
class RunStore(context: Context) {
    val prefs: SharedPreferences = context.getSharedPreferences("vr_launcher", Context.MODE_PRIVATE)

    var questIp: String
        get() = prefs.getString(K_QUEST, "").orEmpty()
        set(v) = prefs.edit().putString(K_QUEST, v).apply()
    var targetPackage: String
        get() = prefs.getString(K_PACKAGE, "").orEmpty()
        set(v) = prefs.edit().putString(K_PACKAGE, v).apply()
    var showInTermux: Boolean
        get() = prefs.getBoolean(K_VISIBLE, false)
        set(v) = prefs.edit().putBoolean(K_VISIBLE, v).apply()

    val runId: Long get() = prefs.getLong(K_RUN, 0L)
    val running: Boolean get() = prefs.getBoolean(K_RUNNING, false)
    val command: String get() = prefs.getString(K_COMMAND, "").orEmpty()

    fun start(runId: Long, command: String, waitForResult: Boolean) {
        prefs.edit().putLong(K_RUN, runId).putString(K_COMMAND, command).putBoolean(K_RUNNING, waitForResult)
            .remove(K_EXIT).remove(K_OUT).remove(K_ERR).remove(K_TERR).remove(K_TERRMSG).apply()
    }

    /** Ignores answers to an older run (the user may have started a new one meanwhile). */
    fun finish(runId: Long, r: PatchResult) {
        if (runId != this.runId) return
        prefs.edit().putBoolean(K_RUNNING, false)
            .putInt(K_EXIT, r.exitCode ?: Int.MIN_VALUE)
            .putString(K_OUT, r.stdout.takeLast(MAX_TEXT)).putString(K_ERR, r.stderr.takeLast(MAX_TEXT))
            .putInt(K_TERR, r.termuxErr).putString(K_TERRMSG, r.termuxErrMsg).apply()
    }

    fun lastResult(): PatchResult? {
        if (!prefs.contains(K_TERR)) return null
        val exit = prefs.getInt(K_EXIT, Int.MIN_VALUE)
        return PatchResult(
            if (exit == Int.MIN_VALUE) null else exit,
            prefs.getString(K_OUT, "").orEmpty(), prefs.getString(K_ERR, "").orEmpty(),
            prefs.getInt(K_TERR, PatchResult.TERMUX_OK), prefs.getString(K_TERRMSG, null),
        )
    }

    companion object {
        private const val MAX_TEXT = 8_000
        private const val K_QUEST = "quest_ip"
        private const val K_PACKAGE = "package"
        private const val K_VISIBLE = "show_in_termux"
        private const val K_RUN = "run_id"
        private const val K_RUNNING = "running"
        private const val K_COMMAND = "command"
        private const val K_EXIT = "exit"
        private const val K_OUT = "stdout"
        private const val K_ERR = "stderr"
        private const val K_TERR = "termux_err"
        private const val K_TERRMSG = "termux_errmsg"
    }
}
