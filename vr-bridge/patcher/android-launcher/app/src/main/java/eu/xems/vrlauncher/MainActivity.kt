package eu.xems.vrlauncher

import android.app.Activity
import android.app.AlertDialog
import android.content.ClipData
import android.content.ClipboardManager
import android.content.Intent
import android.content.SharedPreferences
import android.content.pm.PackageManager
import android.app.PendingIntent
import android.hardware.usb.UsbDevice
import android.hardware.usb.UsbManager
import android.os.Build
import android.os.Bundle
import android.view.View
import android.widget.Button
import android.widget.CheckBox
import android.widget.EditText
import android.widget.ProgressBar
import android.widget.TextView
import android.widget.Toast

/**
 * XEMS VR launcher — a thin tablet front end for vr-bridge/patcher/xems_vr_patch.py running in Termux.
 *
 * As hands-off as Termux allows: on open it finds the headset on the Wi-Fi (FIND), then lists its games
 * (GAMES) for a one-tap pick; the tablet's own IP goes to `--tablet` by itself. One tap + one confirmation
 * runs the patcher (PATCH). Setup (SETUP) and a readiness check (CHECK) are buttons, offered by the status
 * card whenever an answer says something is missing. Answers come back through a PendingIntent →
 * [PatchResultReceiver] → [RunStore] → [render]. Nothing is patched here.
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
    private lateinit var statusAction: Button
    private lateinit var progress: ProgressBar
    private lateinit var logView: TextView

    /** Work waiting for the RUN_COMMAND permission dialog. */
    private var afterPermission: (() -> Unit)? = null
    /** The automatic find → games chain runs once per screen. */
    private var autoDone = false
    private var dialog: AlertDialog? = null
    /** USB device id already switched to Wi-Fi adb (once per plug-in); -1 = none. */
    private var usbHandled = -1
    private var usbBusy = false

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
        statusAction = findViewById(R.id.status_action)
        progress = findViewById(R.id.status_progress)
        logView = findViewById(R.id.status_log)

        autoDone = savedInstanceState?.getBoolean(STATE_AUTO) ?: false
        if (savedInstanceState == null) {
            questField.setText(store.questIp)
            packageField.setText(store.targetPackage)
            showInTermux.isChecked = store.showInTermux
            detectTabletIp()
        }
        findViewById<View>(R.id.btn_detect_ip).setOnClickListener { detectTabletIp() }
        findViewById<View>(R.id.btn_find_quest).setOnClickListener { findQuest() }
        findViewById<View>(R.id.btn_pick_game).setOnClickListener { listGames() }
        findViewById<View>(R.id.btn_setup).setOnClickListener { setupTermux() }
        findViewById<View>(R.id.btn_check).setOnClickListener { withTermux { start(Task.CHECK, TermuxScript.check()) } }
        showInTermux.setOnCheckedChangeListener { _, on -> store.showInTermux = on }
        runButton.setOnClickListener { onRunClicked() }
        handleUsb(intent)
    }

    override fun onNewIntent(intent: Intent) {
        super.onNewIntent(intent)
        setIntent(intent)
        handleUsb(intent)
    }

    override fun onSaveInstanceState(out: Bundle) {
        super.onSaveInstanceState(out)
        out.putBoolean(STATE_AUTO, autoDone)
    }

    override fun onStart() {
        super.onStart()
        store.prefs.registerOnSharedPreferenceChangeListener(this)
        render()
        if (!checkUsb()) autoStart()
    }

    override fun onStop() {
        store.prefs.unregisterOnSharedPreferenceChangeListener(this)
        dialog?.dismiss()
        super.onStop()
    }

    override fun onSharedPreferenceChanged(prefs: SharedPreferences?, key: String?) = render()

    // ---------------------------------------------------------------- automatic start

    /** No headset yet → look for it (and then for its games) without being asked; once per screen. */
    private fun autoStart() {
        if (autoDone || store.running) return
        autoDone = true
        if (!TermuxBridge.isInstalled(this)) return render()
        if (PatchRequest.questSerial(questField.text.toString()) == null) findQuest()
    }

    private fun detectTabletIp() {
        val ip = LanAddress.current()
        if (ip != null) {
            tabletField.setText(ip)
            tabletNote.setText(R.string.tablet_ip_found)
        } else {
            tabletNote.setText(R.string.tablet_ip_missing)
        }
    }

    // ---------------------------------------------------------------- headset on the USB cable

    /** Attach / permission answer → [checkUsb]. A denied permission is shown, not asked again in a loop. */
    private fun handleUsb(i: Intent?) {
        if (i?.action == ACTION_USB_PERMISSION && !i.getBooleanExtra(UsbManager.EXTRA_PERMISSION_GRANTED, false)) {
            setStatus(getString(R.string.status_usb_denied), getString(R.string.detail_usb_denied), R.color.danger, false, "", null)
            return
        }
        if (i?.action == UsbManager.ACTION_USB_DEVICE_ATTACHED || i?.action == ACTION_USB_PERMISSION) checkUsb()
    }

    /** A Quest on the cable → adb tcpip 5555, then the Wi-Fi search. true = the cable path took over. */
    private fun checkUsb(): Boolean {
        val d = UsbAdb.findQuest(this) ?: return false
        if (usbBusy || d.deviceId == usbHandled) return usbBusy
        val usb = getSystemService(UsbManager::class.java)
        if (!usb.hasPermission(d)) {
            val flags = if (Build.VERSION.SDK_INT >= 31) PendingIntent.FLAG_MUTABLE else 0
            val pi = PendingIntent.getActivity(this, 1,
                Intent(this, MainActivity::class.java).setAction(ACTION_USB_PERMISSION), flags or PendingIntent.FLAG_UPDATE_CURRENT)
            usb.requestPermission(d, pi)
            return true
        }
        usbBusy = true
        setStatus(getString(R.string.status_usb), getString(R.string.detail_usb), R.color.amber, true, "", null)
        Thread(UsbRun(d), "xems-usb-adb").start()
        return true
    }

    private inner class UsbRun(private val d: UsbDevice) : Runnable {
        override fun run() {
            val r = UsbAdb(this@MainActivity).run(d)
            runOnUiThread { onUsbDone(d, r) }
        }
    }

    private fun onUsbDone(d: UsbDevice, r: UsbAdb.Result) {
        usbBusy = false
        if (isFinishing) return
        when (r.outcome) {
            UsbAdb.Outcome.OK -> {
                usbHandled = d.deviceId
                setStatus(getString(R.string.status_usb_ok), getString(R.string.detail_usb_ok), R.color.go_text, false, r.detail, null)
                autoDone = true
                // adbd restarts on the Wi-Fi port in ~1–2 s; then the usual search finds it.
                runButton.postDelayed({ if (!isFinishing && !store.running) findQuest() }, 3_000)
            }
            UsbAdb.Outcome.NOT_ALLOWED -> setStatus(getString(R.string.status_usb_allow), getString(R.string.detail_usb_allow),
                R.color.danger, false, r.detail, null)
            UsbAdb.Outcome.FAILED -> setStatus(getString(R.string.status_usb_failed), getString(R.string.detail_usb_failed),
                R.color.danger, false, r.detail, null)
        }
    }

    // ---------------------------------------------------------------- tasks

    private fun findQuest() {
        val tablet = tabletField.text.toString().trim().ifEmpty { LanAddress.current().orEmpty() }
        if (!PatchRequest.isIpv4(tablet)) {
            tabletField.error = getString(R.string.err_no_wifi)
            return
        }
        withTermux { start(Task.FIND, TermuxScript.find(tablet)) }
    }

    private fun listGames() {
        val serial = PatchRequest.questSerial(questField.text.toString())
        if (serial == null) {
            questField.error = getString(R.string.err_quest_ip)
            questField.requestFocus()
            return
        }
        store.questIp = questField.text.toString().trim()
        withTermux { start(Task.GAMES, TermuxScript.games(serial)) }
    }

    private fun setupTermux() {
        val script = assets.open(TermuxScript.SETUP_ASSET).bufferedReader().use { it.readText() }
        withTermux { start(Task.SETUP, TermuxScript.setup(script)) }
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
        withTermux { confirmReinstall(request) }
    }

    /**
     * The script runs with --yes (no stdin in Termux), so its "reinstall?" question is asked here instead:
     * the game's internal saves are lost (new signature), Android/data + obb are kept.
     */
    private fun confirmReinstall(request: PatchRequest) {
        showDialog(
            AlertDialog.Builder(this, R.style.Xems_Dialog)
                .setTitle(getString(R.string.confirm_title, request.targetPackage))
                .setMessage(getString(R.string.confirm_message, request.targetPackage))
                .setPositiveButton(R.string.confirm_yes) { _, _ -> start(Task.PATCH, TermuxScript.patch(request)) }
                .setNegativeButton(R.string.confirm_no, null)
        )
    }

    /** Termux installed + RUN_COMMAND granted, then [action]. */
    private fun withTermux(action: () -> Unit) {
        if (!TermuxBridge.isInstalled(this)) {
            setStatus(getString(R.string.status_no_termux), getString(R.string.detail_no_termux), R.color.danger, false, "", null)
            return
        }
        if (checkSelfPermission(TermuxBridge.PERMISSION) != PackageManager.PERMISSION_GRANTED) {
            afterPermission = action
            requestPermissions(arrayOf(TermuxBridge.PERMISSION), REQ_RUN_COMMAND)
            return
        }
        action()
    }

    override fun onRequestPermissionsResult(requestCode: Int, permissions: Array<out String>, grantResults: IntArray) {
        if (requestCode != REQ_RUN_COMMAND) return
        val action = afterPermission
        afterPermission = null
        if (action != null && grantResults.firstOrNull() == PackageManager.PERMISSION_GRANTED) action()
        else setStatus(getString(R.string.status_no_permission), getString(R.string.detail_no_permission), R.color.danger, false, "", null)
    }

    private fun start(task: Task, args: Array<String>) {
        val runId = System.currentTimeMillis()
        // Only the long runs may open a Termux session; lookups always run in the background.
        val visible = showInTermux.isChecked && (task == Task.PATCH || task == Task.SETUP)
        store.start(runId, task, TermuxScript.display(args), visible)
        try {
            TermuxBridge.run(this, args, "XEMS VR · ${task.name.lowercase()}", runId, visible)
        } catch (e: Exception) {
            // Termux refused: RUN_COMMAND not granted or allow-external-apps still false.
            store.finish(runId, PatchResult(null, "", "", 1, e.message ?: e.javaClass.simpleName))
        }
    }

    // ---------------------------------------------------------------- status

    private fun render() {
        val result = store.lastResult()
        val task = store.task
        when {
            store.running -> setStatus(
                getString(runningTitle(task)), getString(runningDetail(task)),
                R.color.amber, running = true, log = store.command, action = null,
            )
            result != null -> renderResult(task, result)
            else -> setStatus(getString(R.string.status_idle), getString(R.string.detail_idle), R.color.text, false, "", null)
        }
    }

    private fun runningTitle(task: Task) = when (task) {
        Task.PATCH -> if (store.runVisible) R.string.status_in_termux else R.string.status_running
        Task.FIND -> R.string.status_finding
        Task.GAMES -> R.string.status_listing
        Task.CHECK -> R.string.status_checking
        Task.SETUP -> R.string.status_setting_up
    }

    private fun runningDetail(task: Task) = when (task) {
        Task.PATCH -> if (store.runVisible) R.string.detail_in_termux else R.string.detail_running
        Task.FIND -> R.string.detail_finding
        Task.GAMES -> R.string.detail_listing
        Task.CHECK -> R.string.detail_checking
        Task.SETUP -> R.string.detail_setting_up
    }

    private fun renderResult(task: Task, r: PatchResult) {
        if (r.outcome == PatchResult.Outcome.DONE) {
            when (task) {
                Task.FIND -> return onQuestsFound(TermuxReport.quests(r.stdout))
                Task.GAMES -> return onGamesListed(TermuxReport.games(r.stdout))
                Task.CHECK, Task.SETUP -> {
                    setStatus(
                        getString(R.string.status_ready), getString(R.string.detail_ready),
                        R.color.go_text, false, checklist(r.stdout), null,
                    )
                    // Termux just became ready → carry on with the headset by itself.
                    if (task == Task.SETUP && !store.consumed) {
                        store.consume()
                        if (PatchRequest.questSerial(questField.text.toString()) == null) findQuest()
                    }
                    return
                }
                Task.PATCH -> return setStatus(
                    getString(R.string.status_done), getString(R.string.detail_done),
                    R.color.go_text, false, r.tail(), null,
                )
            }
        }
        val (title, detail, action) = when (r.outcome) {
            PatchResult.Outcome.BAD_INPUT -> Triple(R.string.status_bad_input, R.string.detail_bad_input, null)
            PatchResult.Outcome.NO_ADB, PatchResult.Outcome.NOT_SET_UP ->
                Triple(R.string.status_not_set_up, R.string.detail_not_set_up, Action.SETUP)
            PatchResult.Outcome.NO_QUEST -> Triple(R.string.status_no_quest, R.string.detail_no_quest, Action.FIND)
            PatchResult.Outcome.UNAUTHORIZED ->
                Triple(R.string.status_unauthorized, R.string.detail_unauthorized, if (task == Task.PATCH) null else Action.GAMES)
            PatchResult.Outcome.TERMUX -> Triple(R.string.status_termux, R.string.detail_termux, Action.ALLOW)
            else -> Triple(R.string.status_failed, R.string.detail_failed, null)
        }
        val log = if (task == Task.CHECK || task == Task.SETUP) checklist(r.stdout).ifEmpty { r.tail() } else r.tail()
        setStatus(getString(title), getString(detail), R.color.danger, false, log, action)
    }

    private fun onQuestsFound(quests: List<TermuxReport.Quest>) {
        val label = { q: TermuxReport.Quest -> if (q.model != null) "${q.ip} · ${q.model}" else getString(R.string.quest_unauthorized, q.ip) }
        val first = quests.firstOrNull()
        setStatus(
            getString(R.string.status_found),
            if (first != null) label(first) else getString(R.string.detail_no_quest),
            R.color.go_text, false, quests.joinToString("\n") { label(it) }, null,
        )
        if (store.consumed || first == null) return
        store.consume()
        if (quests.size == 1) return useQuest(first)
        showDialog(
            AlertDialog.Builder(this, R.style.Xems_Dialog)
                .setTitle(R.string.pick_quest)
                .setItems(quests.map(label).toTypedArray()) { _, i -> useQuest(quests[i]) }
        )
    }

    /** Headset chosen → straight on to its games when no game is picked yet. */
    private fun useQuest(q: TermuxReport.Quest) {
        questField.setText(q.ip)
        questField.error = null
        store.questIp = q.ip
        if (packageField.text.isNullOrBlank()) listGames()
    }

    private fun onGamesListed(games: List<String>) {
        setStatus(
            getString(if (games.isEmpty()) R.string.status_no_games else R.string.status_pick_game),
            if (games.isEmpty()) getString(R.string.detail_no_games)
            else resources.getQuantityString(R.plurals.detail_pick_game, games.size, games.size),
            if (games.isEmpty()) R.color.danger else R.color.go_text, false, "", null,
        )
        if (store.consumed || games.isEmpty()) return
        store.consume()
        showDialog(
            AlertDialog.Builder(this, R.style.Xems_Dialog)
                .setTitle(R.string.pick_game)
                .setItems(games.toTypedArray()) { _, i ->
                    packageField.setText(games[i])
                    packageField.error = null
                    store.targetPackage = games[i]
                    setStatus(getString(R.string.status_idle), getString(R.string.detail_game_picked), R.color.text, false, "", null)
                }
        )
    }

    private fun checklist(stdout: String): String = TermuxReport.checks(stdout).joinToString("\n") { (what, ok) ->
        (if (ok) "✓ " else "✗ ") + what
    }

    private enum class Action(val label: Int) {
        SETUP(R.string.action_setup), FIND(R.string.action_find), GAMES(R.string.action_games), ALLOW(R.string.action_allow)
    }

    private fun runAction(a: Action) = when (a) {
        Action.SETUP -> setupTermux()
        Action.FIND -> findQuest()
        Action.GAMES -> listGames()
        Action.ALLOW -> {
            // The only line the user has to type in Termux: copy it and open Termux to paste it.
            getSystemService(ClipboardManager::class.java)
                .setPrimaryClip(ClipData.newPlainText("termux", TermuxBridge.ALLOW_COMMAND))
            Toast.makeText(this, R.string.allow_copied, Toast.LENGTH_LONG).show()
            TermuxBridge.openTermux(this)
            Unit
        }
    }

    private fun setStatus(title: String, detail: String, colorRes: Int, running: Boolean, log: String, action: Action?) {
        statusTitle.text = title
        statusTitle.setTextColor(getColor(colorRes))
        statusDetail.text = detail
        progress.visibility = if (running) View.VISIBLE else View.GONE
        logView.text = log
        logView.visibility = if (log.isEmpty()) View.GONE else View.VISIBLE
        if (action == null) {
            statusAction.visibility = View.GONE
        } else {
            statusAction.visibility = View.VISIBLE
            statusAction.setText(action.label)
            statusAction.setOnClickListener { runAction(action) }
        }
        runButton.setText(if (running && store.task == Task.PATCH) R.string.btn_run_again else R.string.btn_execute)
    }

    private fun showDialog(builder: AlertDialog.Builder) {
        if (isFinishing) return
        dialog?.dismiss()
        dialog = builder.show()
    }

    companion object {
        private const val REQ_RUN_COMMAND = 7
        private const val STATE_AUTO = "auto_done"
        private const val ACTION_USB_PERMISSION = "eu.xems.vrlauncher.USB_PERMISSION"
    }
}
