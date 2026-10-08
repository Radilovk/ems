package eu.xems.vrlauncher

import android.app.PendingIntent
import android.content.Context
import android.content.Intent
import android.os.Build

/**
 * Termux RunCommandService IPC: runs `bash <argv>` from Termux's $HOME ([TermuxScript] builds the argv).
 *
 * Every run carries a PendingIntent to [PatchResultReceiver]; Termux (0.118+) fills it when the command ends:
 * background → stdout / stderr / exit code; visible session → exit code + the terminal transcript as stdout.
 */
object TermuxBridge {
    const val PACKAGE = "com.termux"
    const val PERMISSION = "com.termux.permission.RUN_COMMAND"
    /** The one line Termux needs before it accepts any command from another app. */
    const val ALLOW_COMMAND = "echo allow-external-apps=true >> ~/.termux/termux.properties && termux-reload-settings"

    private const val SERVICE = "com.termux.app.RunCommandService"
    private const val ACTION = "com.termux.RUN_COMMAND"

    private const val EXTRA_PATH = "com.termux.RUN_COMMAND_PATH"
    private const val EXTRA_ARGUMENTS = "com.termux.RUN_COMMAND_ARGUMENTS"
    private const val EXTRA_WORKDIR = "com.termux.RUN_COMMAND_WORKDIR"
    private const val EXTRA_BACKGROUND = "com.termux.RUN_COMMAND_BACKGROUND"
    private const val EXTRA_SESSION_ACTION = "com.termux.RUN_COMMAND_SESSION_ACTION"
    private const val EXTRA_LABEL = "com.termux.RUN_COMMAND_COMMAND_LABEL"
    private const val EXTRA_PENDING_INTENT = "com.termux.RUN_COMMAND_PENDING_INTENT"

    // Keys of the "result" bundle Termux adds to the PendingIntent.
    const val RESULT_BUNDLE = "result"
    const val RESULT_STDOUT = "stdout"
    const val RESULT_STDERR = "stderr"
    const val RESULT_EXIT_CODE = "exitCode"
    const val RESULT_ERR = "err"
    const val RESULT_ERRMSG = "errmsg"

    const val EXTRA_RUN_ID = "eu.xems.vrlauncher.RUN_ID"

    fun isInstalled(context: Context): Boolean = try {
        context.packageManager.getPackageInfo(PACKAGE, 0)
        true
    } catch (e: Exception) {
        false
    }

    fun openTermux(context: Context): Boolean {
        val launch = context.packageManager.getLaunchIntentForPackage(PACKAGE) ?: return false
        context.startActivity(launch.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK))
        return true
    }

    /** Throws when Termux refuses the service start (not installed, permission missing, external apps off). */
    fun run(context: Context, args: Array<String>, label: String, runId: Long, visible: Boolean) {
        val intent = Intent(ACTION).setClassName(PACKAGE, SERVICE)
            .putExtra(EXTRA_PATH, TermuxScript.BASH)
            .putExtra(EXTRA_ARGUMENTS, args)
            .putExtra(EXTRA_WORKDIR, TermuxScript.HOME)
            .putExtra(EXTRA_BACKGROUND, !visible)
            .putExtra(EXTRA_SESSION_ACTION, "0")           // new session, switch to it (visible runs only)
            .putExtra(EXTRA_LABEL, label)
            .putExtra(EXTRA_PENDING_INTENT, resultIntent(context, runId))

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) context.startForegroundService(intent)
        else context.startService(intent)
    }

    private fun resultIntent(context: Context, runId: Long): PendingIntent {
        val target = Intent(context, PatchResultReceiver::class.java).putExtra(EXTRA_RUN_ID, runId)
        // Mutable: Termux must be able to add its result bundle.
        val flags = PendingIntent.FLAG_ONE_SHOT or
            (if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) PendingIntent.FLAG_MUTABLE else 0)
        return PendingIntent.getBroadcast(context, runId.toInt(), target, flags)
    }
}
