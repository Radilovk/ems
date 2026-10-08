package eu.xems.vrlauncher

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent

/** Receives Termux's result for a background run and keeps it in [RunStore]; the screen listens to the store. */
class PatchResultReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent) {
        val runId = intent.getLongExtra(TermuxBridge.EXTRA_RUN_ID, 0L)
        val b = intent.getBundleExtra(TermuxBridge.RESULT_BUNDLE)
        val result = if (b == null) {
            PatchResult(null, "", "", 0, context.getString(R.string.result_no_bundle))
        } else {
            PatchResult(
                exitCode = if (b.containsKey(TermuxBridge.RESULT_EXIT_CODE)) b.getInt(TermuxBridge.RESULT_EXIT_CODE) else null,
                stdout = b.getString(TermuxBridge.RESULT_STDOUT).orEmpty(),
                stderr = b.getString(TermuxBridge.RESULT_STDERR).orEmpty(),
                termuxErr = b.getInt(TermuxBridge.RESULT_ERR, PatchResult.TERMUX_OK),
                termuxErrMsg = b.getString(TermuxBridge.RESULT_ERRMSG),
            )
        }
        RunStore(context).finish(runId, result)
    }
}
