package eu.xems.vrlauncher

import android.content.ComponentName
import android.content.Context
import android.content.Intent
import android.os.Build
import android.os.Bundle
import android.text.TextUtils
import android.widget.Button
import android.widget.EditText
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity

/**
 * XEMS VR launcher — a thin on-device front end for the already-shipped
 * vr-bridge/patcher/xems_vr_patch.py.
 *
 * It does NOT patch anything itself: it only hands a ready-made command line to
 * Termux's RunCommandService so the existing script runs locally on the phone
 * (instead of on a PC). All decompile / inject / re-sign logic stays in the
 * Python script; this Activity is just a two-field + one-button trigger.
 *
 * Prerequisites on the device:
 *   - Termux installed, with the vr-bridge/ tree present under
 *     $HOME (so the prebuilt layer sits next to the script).
 *   - python3 + adb available inside Termux (pkg install python android-tools).
 *   - ~/.termux/termux.properties contains `allow-external-apps=true`.
 *   - This app granted com.termux.permission.RUN_COMMAND (declared below).
 */
class MainActivity : AppCompatActivity() {

    private lateinit var packageField: EditText
    private lateinit var tabletIpField: EditText
    private lateinit var statusView: TextView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        packageField = findViewById(R.id.input_package)
        tabletIpField = findViewById(R.id.input_tablet_ip)
        statusView = findViewById(R.id.status)
        val runButton = findViewById<Button>(R.id.btn_execute)

        runButton.setOnClickListener { onExecuteClicked() }
    }

    private fun onExecuteClicked() {
        val pkg = packageField.text.toString().trim()
        val ip = tabletIpField.text.toString().trim()

        if (TextUtils.isEmpty(pkg)) {
            toast(getString(R.string.err_no_package))
            return
        }
        if (TextUtils.isEmpty(ip)) {
            toast(getString(R.string.err_no_ip))
            return
        }

        try {
            sendPatchCommand(pkg, ip)
            statusView.text = getString(R.string.status_sent, pkg, ip)
        } catch (e: Exception) {
            // Most common cause: Termux not installed, or RUN_COMMAND not granted,
            // or allow-external-apps still false.
            statusView.text = getString(R.string.status_failed, e.message ?: e.javaClass.simpleName)
            toast(getString(R.string.err_termux))
        }
    }

    /**
     * Build and dispatch the IPC Intent to Termux's RunCommandService.
     *
     * Equivalent shell command that Termux ends up running (in the background):
     *
     *   cd $PATCHER_WORKDIR
     *   python3 xems_vr_patch.py <package> --tablet <ip> --yes
     *
     * `--yes` is added because a background Termux run has no stdin to answer the
     * reinstall confirmation; without it the script would hang on the prompt.
     */
    private fun sendPatchCommand(targetPackage: String, tabletIp: String) {
        val intent = Intent(RUN_COMMAND_ACTION)
        intent.setClassName(TERMUX_PACKAGE, RUN_COMMAND_SERVICE)

        // Absolute path to the Termux python3 binary.
        intent.putExtra(EXTRA_COMMAND_PATH, "$TERMUX_PREFIX/bin/python3")

        // Argument vector passed verbatim to the executable (no shell parsing),
        // so each token is its own array element.
        intent.putExtra(
            EXTRA_COMMAND_ARGUMENTS,
            arrayOf(
                "xems_vr_patch.py",
                targetPackage,
                "--tablet", tabletIp,
                "--yes"
            )
        )

        // Run from the patcher directory so the prebuilt layer (../prebuilt/…)
        // resolves relative to the script, exactly as on a PC.
        intent.putExtra(EXTRA_WORKDIR, PATCHER_WORKDIR)

        // true => headless background run; the Termux session UI is not opened.
        intent.putExtra(EXTRA_BACKGROUND, true)

        // Group background runs so Termux reuses one session for them.
        intent.putExtra(EXTRA_SESSION_ACTION, "0")

        // RunCommandService must be started as a foreground service on O+.
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            startForegroundService(intent)
        } else {
            startService(intent)
        }
    }

    private fun toast(msg: String) =
        Toast.makeText(this, msg, Toast.LENGTH_LONG).show()

    companion object {
        // Termux RunCommandService IPC contract.
        private const val TERMUX_PACKAGE = "com.termux"
        private const val RUN_COMMAND_SERVICE = "com.termux.app.RunCommandService"
        private const val RUN_COMMAND_ACTION = "com.termux.RUN_COMMAND"
        private const val TERMUX_PREFIX = "/data/data/com.termux/files/usr"

        private const val EXTRA_COMMAND_PATH = "com.termux.RUN_COMMAND_PATH"
        private const val EXTRA_COMMAND_ARGUMENTS = "com.termux.RUN_COMMAND_ARGUMENTS"
        private const val EXTRA_WORKDIR = "com.termux.RUN_COMMAND_WORKDIR"
        private const val EXTRA_BACKGROUND = "com.termux.RUN_COMMAND_BACKGROUND"
        private const val EXTRA_SESSION_ACTION = "com.termux.RUN_COMMAND_SESSION_ACTION"

        // Where the vr-bridge/patcher/ tree lives inside Termux's $HOME.
        private const val PATCHER_WORKDIR =
            "/data/data/com.termux/files/home/ems/vr-bridge/patcher"
    }
}
