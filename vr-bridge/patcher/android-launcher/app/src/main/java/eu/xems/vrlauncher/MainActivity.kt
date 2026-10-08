package eu.xems.vrlauncher

import android.app.Activity
import android.app.AlertDialog
import android.content.SharedPreferences
import android.content.pm.PackageManager
import android.os.Bundle
import android.view.View
import android.widget.Button
import android.widget.CheckBox
import android.widget.EditText
import android.widget.ProgressBar
import android.widget.TextView

/**
 * XEMS VR launcher — a thin tablet front end for vr-bridge/patcher/xems_vr_patch.py running in Termux.
 *
 * One tap: Termux runs termux-run.sh, which does `adb connect <Quest IP>` and then the patcher with
 * `--tablet <this tablet's Wi-Fi IP>` (found automatically) and `--yes`. The result (exit code + last lines)
 * comes back through a PendingIntent → [PatchResultReceiver] → [RunStore] → this screen.
 * Nothing is patched here; all the work stays in the Python script.
 */
class MainActivity : Activity(), SharedPreferences.OnSharedPreferenceChangeListener {

    private lateinit var store: RunStore
    private lateinit var questField: EditText
    private lateinit var packageField: EditText
    private lateinit var tabletField: EditText
    private lateinit var tabletNote: TextView
    private lateinit var showInTermux: CheckBox
    private lateinit var runButton: Button
    private lateinit var statusTitle: TextView
    private lateinit var statusDetail: TextView
    private lateinit var progress: ProgressBar
    private lateinit var logView: TextView

    /** A run waiting for the RUN_COMMAND permission dialog. */
    private var pending: PatchRequest? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        store = RunStore(this)

        questField = findViewById(R.id.input_quest_ip)
        packageField = findViewById(R.id.input_package)
        tabletField = findViewById(R.id.input_tablet_ip)
        tabletNote = findViewById(R.id.tablet_ip_note)
        showInTermux = findViewById(R.id.check_show_termux)
        runButton = findViewById(R.id.btn_execute)
        statusTitle = findViewById(R.id.status_title)
        statusDetail = findViewById(R.id.status_detail)
        progress = findViewById(R.id.status_progress)
        logView = findViewById(R.id.status_log)

        if (savedInstanceState == null) {
            questField.setText(store.questIp)
            packageField.setText(store.targetPackage)
            showInTermux.isChecked = store.showInTermux
            detectTabletIp()
        }
        findViewById<View>(R.id.btn_detect_ip).setOnClickListener { detectTabletIp() }
        runButton.setOnClickListener { onRunClicked() }
    }

    override fun onStart() {
        super.onStart()
        store.prefs.registerOnSharedPreferenceChangeListener(this)
        render()
    }

    override fun onStop() {
        store.prefs.unregisterOnSharedPreferenceChangeListener(this)
        super.onStop()
    }

    override fun onSharedPreferenceChanged(prefs: SharedPreferences?, key: String?) = render()

    private fun detectTabletIp() {
        val ip = LanAddress.current()
        if (ip != null) {
            tabletField.setText(ip)
            tabletNote.setText(R.string.tablet_ip_found)
        } else {
            tabletNote.setText(R.string.tablet_ip_missing)
        }
    }

    private fun onRunClicked() {
        val parsed = PatchRequest.parse(questField.text.toString(), packageField.text.toString(), tabletField.text.toString())
        if (parsed is PatchRequest.Parsed.Invalid) {
            val (field, msg) = when (parsed.problem) {
                PatchRequest.Problem.QUEST_IP -> questField to R.string.err_quest_ip
                PatchRequest.Problem.PACKAGE -> packageField to R.string.err_package
                PatchRequest.Problem.TABLET_IP -> tabletField to R.string.err_tablet_ip
            }
            field.error = getString(msg)
            field.requestFocus()
            return
        }
        val request = (parsed as PatchRequest.Parsed.Ok).request
        store.questIp = questField.text.toString().trim()
        store.targetPackage = request.targetPackage
        store.showInTermux = showInTermux.isChecked

        if (!TermuxBridge.isInstalled(this)) {
            showProblem(R.string.status_no_termux, R.string.detail_no_termux)
            return
        }
        confirmReinstall(request)
    }

    /**
     * The script runs with --yes (no stdin in Termux), so its "reinstall?" question is asked here instead:
     * the game's internal saves are lost (new signature), Android/data + obb are kept.
     */
    private fun confirmReinstall(request: PatchRequest) {
        AlertDialog.Builder(this, R.style.Xems_Dialog)
            .setTitle(getString(R.string.confirm_title, request.targetPackage))
            .setMessage(getString(R.string.confirm_message, request.targetPackage))
            .setPositiveButton(R.string.confirm_yes) { _, _ -> checkPermissionAndLaunch(request) }
            .setNegativeButton(R.string.confirm_no, null)
            .show()
    }

    private fun checkPermissionAndLaunch(request: PatchRequest) {
        if (checkSelfPermission(TermuxBridge.PERMISSION) != PackageManager.PERMISSION_GRANTED) {
            pending = request
            requestPermissions(arrayOf(TermuxBridge.PERMISSION), REQ_RUN_COMMAND)
            return
        }
        launch(request)
    }

    override fun onRequestPermissionsResult(requestCode: Int, permissions: Array<out String>, grantResults: IntArray) {
        if (requestCode != REQ_RUN_COMMAND) return
        val request = pending
        pending = null
        if (request != null && grantResults.firstOrNull() == PackageManager.PERMISSION_GRANTED) launch(request)
        else showProblem(R.string.status_no_permission, R.string.detail_no_permission)
    }

    private fun launch(request: PatchRequest) {
        val runId = System.currentTimeMillis()
        val visible = showInTermux.isChecked
        store.start(runId, request.commandLine(), visible)
        try {
            TermuxBridge.run(this, request, runId, visible)
        } catch (e: Exception) {
            // Termux refused: RUN_COMMAND not granted or allow-external-apps still false.
            store.finish(runId, PatchResult(null, "", "", 1, e.message ?: e.javaClass.simpleName))
        }
    }

    private fun showProblem(title: Int, detail: Int) {
        setStatus(getString(title), getString(detail), R.color.danger, running = false, log = "")
    }

    private fun render() {
        val result = store.lastResult()
        when {
            store.running && store.runVisible -> setStatus(
                getString(R.string.status_in_termux), getString(R.string.detail_in_termux),
                R.color.amber, running = true, log = store.command,
            )
            store.running -> setStatus(
                getString(R.string.status_running), getString(R.string.detail_running),
                R.color.amber, running = true, log = store.command,
            )
            result != null -> renderResult(result)
            else -> setStatus(getString(R.string.status_idle), getString(R.string.detail_idle), R.color.text, false, "")
        }
    }

    private fun renderResult(r: PatchResult) {
        val (title, detail) = when (r.outcome) {
            PatchResult.Outcome.DONE -> R.string.status_done to R.string.detail_done
            PatchResult.Outcome.BAD_INPUT -> R.string.status_bad_input to R.string.detail_bad_input
            PatchResult.Outcome.NO_ADB -> R.string.status_no_adb to R.string.detail_no_adb
            PatchResult.Outcome.NO_QUEST -> R.string.status_no_quest to R.string.detail_no_quest
            PatchResult.Outcome.UNAUTHORIZED -> R.string.status_unauthorized to R.string.detail_unauthorized
            PatchResult.Outcome.FAILED -> R.string.status_failed to R.string.detail_failed
            PatchResult.Outcome.TERMUX -> R.string.status_termux to R.string.detail_termux
        }
        val color = if (r.outcome == PatchResult.Outcome.DONE) R.color.go_text else R.color.danger
        setStatus(getString(title), getString(detail), color, running = false, log = r.tail())
    }

    private fun setStatus(title: String, detail: String, colorRes: Int, running: Boolean, log: String) {
        statusTitle.text = title
        statusTitle.setTextColor(getColor(colorRes))
        statusDetail.text = detail
        progress.visibility = if (running) View.VISIBLE else View.GONE
        logView.text = log
        logView.visibility = if (log.isEmpty()) View.GONE else View.VISIBLE
        runButton.setText(if (running) R.string.btn_run_again else R.string.btn_execute)
    }

    companion object {
        private const val REQ_RUN_COMMAND = 7
    }
}
