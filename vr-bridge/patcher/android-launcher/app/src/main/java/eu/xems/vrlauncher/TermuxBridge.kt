package eu.xems.vrlauncher

import android.annotation.SuppressLint
import android.app.PendingIntent
import android.content.Context
import android.content.Intent
import android.os.Build

/**
 * Termux RunCommandService IPC. Runs `bash android-launcher/termux-run.sh <quest> <pkg> [tablet]` from the
 * patcher directory inside Termux's $HOME.
 *
 * Background runs carry a PendingIntent to [PatchResultReceiver]: Termux fills it with stdout / stderr / exit
 * code when the command ends. A visible run opens a Termux session instead (Termux returns no result then).
 */
@SuppressLint("SdCardPath") // Termux's fixed install paths, not ours
object TermuxBridge {
    const val PACKAGE = "com.termux"
    const val PERMISSION = "com.termux.permission.RUN_COMMAND"

    private const val SERVICE = "com.termux.app.RunCommandService"
    private const val ACTION = "com.termux.RUN_COMMAND"
    private const val PREFIX = "/data/data/com.termux/files/usr"
    private const val WORKDIR = "/data/data/com.termux/files/home/ems/vr-bridge/patcher"

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

    /** Throws when Termux refuses the service start (not installed, permission missing, external apps off). */
    fun run(context: Context, request: PatchRequest, runId: Long, showInTermux: Boolean) {
        val intent = Intent(ACTION).setClassName(PACKAGE, SERVICE)
            .putExtra(EXTRA_PATH, "$PREFIX/bin/bash")
            .putExtra(EXTRA_ARGUMENTS, request.scriptArgs())
            .putExtra(EXTRA_WORKDIR, WORKDIR)
            .putExtra(EXTRA_BACKGROUND, !showInTermux)
            .putExtra(EXTRA_SESSION_ACTION, "0")           // new session, switch to it (visible runs only)
            .putExtra(EXTRA_LABEL, "XEMS VR · ${request.targetPackage}")
        if (!showInTermux) intent.putExtra(EXTRA_PENDING_INTENT, resultIntent(context, runId))

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
