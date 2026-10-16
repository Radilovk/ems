package bg.xems.wiems;

import android.Manifest;
import android.app.Activity;
import android.bluetooth.BluetoothAdapter;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;

import java.util.ArrayList;
import java.util.List;

/**
 * XEMS WiEMS — a light tablet app for ONE WiEMS unit (docs/xems-wiems-app.md): the XBody training screen
 * ({@link XView}), the unit's driver ({@link Session}, the XBody panel's logic) and the BLE link ({@link Ble}).
 * The brain lives here: what the screen shows, what a tap does, the 50 ms tick that paces the unit.
 */
public final class MainActivity extends Activity implements Ble.Listener, Host {
    static final int VIEW_NO_BT = 0, VIEW_PERMISSION = 1, VIEW_BT_OFF = 2, VIEW_PICK = 3, VIEW_LINKING = 4, VIEW_TRAIN = 5;

    Ble ble;
    Session session;
    /** A session whose link dropped: kept (zones, strength, program, time done) until its unit is back. */
    Session held;
    String heldMac;
    /** Every unit write, answer, notification and strength change, with times (the evidence for a fault). */
    Trace trace;
    /** The zones and strength as last set: kept across sessions and app restarts (owner). */
    final int[] savedZones = new int[Session.ZONES];
    int savedStrength = 100;
    /** The suit's connector standard (owner: both, switchable): false XBody, true XEMS. */
    boolean xemsWiring;
    private long zonesSavedMs;
    private final TraceSink sink = new TraceSink();

    final class TraceSink implements Session.Sink {
        @Override
        public void log(String s) {
            trace(s);
        }
    }

    void trace(String s) {
        if (trace != null) trace.add(now(), s);
    }
    XView view;
    final List<Seen> seen = new ArrayList<Seen>();
    String linkingMac, linkedName, lastMac;
    long linkingSince;
    Session.Program prog = new Session.Program();
    boolean age60;
    String note = "";
    boolean noteWarn;
    long noteUntil;
    boolean disconnectWhenIdle;
    /** −1: the program screen; else Procs.MODE_* (a new link starts on the program screen, as XBody's training). */
    int mode = -1;
    String procId;
    int procMin;
    private final Handler main = new Handler(Looper.getMainLooper());
    private final Tick tick = new Tick();
    private boolean resumed;

    @Override
    protected void onCreate(Bundle b) {
        super.onCreate(b);
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        getWindow().addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN | WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
        java.io.File dir = getExternalFilesDir(null);
        trace = new Trace(new java.io.File(dir != null ? dir : getFilesDir(), "wiems-log.txt"));
        trace("app start " + android.os.Build.MODEL + " Android " + Build.VERSION.RELEASE);
        load();
        ble = new Ble(this, this);
        view = new XView(this, this);
        setContentView(view);
        immersive();
        askPermission();
    }

    @Override
    protected void onResume() {
        super.onResume();
        resumed = true;
        immersive();
        main.removeCallbacks(tick);
        main.post(tick);
    }

    @Override
    protected void onPause() {
        super.onPause();
        resumed = false;
        zonesSavedMs = 0;
        rememberZones(now());
        save();            // a running session keeps its tick (posted below while it runs)
    }

    @Override
    protected void onDestroy() {
        main.removeCallbacks(tick);
        if (session != null) session.stop();
        ble.disconnect(Session.safeOp());
        ble.scan(false);
        super.onDestroy();
    }

    @Override
    public void onWindowFocusChanged(boolean f) {
        super.onWindowFocusChanged(f);
        if (f) immersive();
    }

    private void immersive() {
        if (Build.VERSION.SDK_INT >= 19) {
            view_().setSystemUiVisibility(View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY | View.SYSTEM_UI_FLAG_FULLSCREEN
                    | View.SYSTEM_UI_FLAG_HIDE_NAVIGATION | View.SYSTEM_UI_FLAG_LAYOUT_STABLE
                    | View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION | View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN);
        }
    }

    private View view_() {
        return view != null ? view : getWindow().getDecorView();
    }

    // ---------------------------------------------------------------- permissions / Bluetooth

    boolean permitted() {
        if (Build.VERSION.SDK_INT < 23) return true;
        return checkSelfPermission(Manifest.permission.ACCESS_FINE_LOCATION) == PackageManager.PERMISSION_GRANTED;
    }

    public void askPermission() {
        if (Build.VERSION.SDK_INT >= 23 && !permitted())
            requestPermissions(new String[] {Manifest.permission.ACCESS_FINE_LOCATION}, 1);
    }

    public void askBluetooth() {
        try {
            startActivity(new Intent(BluetoothAdapter.ACTION_REQUEST_ENABLE));
        } catch (Throwable t) {
            setNote("Включи Bluetooth от настройките", true);
        }
    }

    // ---------------------------------------------------------------- what the screen shows

    public long now() {
        return SystemClock.elapsedRealtime();
    }

    public int viewKind() {
        if (!ble.hasBluetooth()) return VIEW_NO_BT;
        if (!permitted()) return VIEW_PERMISSION;
        if (!ble.enabled()) return VIEW_BT_OFF;
        if (session != null) return VIEW_TRAIN;
        if (linkingMac != null) return VIEW_LINKING;
        return VIEW_PICK;
    }

    public List<Seen> seen() {
        return seen;
    }

    public Session session() {
        return session;
    }

    public String linkedName() {
        return linkedName;
    }

    public String linkingMac() {
        return linkingMac;
    }

    public boolean age60() {
        return age60;
    }

    boolean female = true;

    public boolean female() {
        return female;
    }

    public void setFemale(boolean f) {
        female = f;
        save();
    }

    public java.io.InputStream openAsset(String name) {
        try {
            return getAssets().open(name);
        } catch (java.io.IOException e) {
            return null;
        }
    }

    public boolean noteWarn() {
        return noteWarn;
    }

    public String note() {
        return now() < noteUntil ? note : "";
    }

    void setNote(String s, boolean warn) {
        note = s;
        noteWarn = warn;
        noteUntil = now() + 8000;
    }

    // ---------------------------------------------------------------- actions

    public void connectTo(String mac) {
        if (session != null || linkingMac != null) return;
        linkingMac = mac;
        linkingSince = now();
        linkedName = mac;
        for (Seen s : seen) if (s.mac.equals(mac)) linkedName = s.name;
        ble.connect(mac);
    }

    /** The header's "disconnect": outputs off first, then the link closes when the unit has taken it. */
    public void forget() {
        if (session != null) {
            session.stop();
            disconnectWhenIdle = true;
        }
        held = null;
        lastMac = null;
        save();
    }

    public void startPause() {
        if (session == null) return;
        if (session.state() == Session.RUNNING || session.startPending()) session.pause(now());
        else session.start(now());
    }

    /**
     * New program from the sheet: through the safety limits, the correction (if any) as a red note. Manual keeps it
     * for next time; a mode's change holds for this session; a procedure takes only the client (60+ → its limits).
     */
    public void applyProgram(Session.Program p, boolean a60) {
        age60 = a60;
        if (mode == Procs.MODE_PROC) {
            if (session != null && session.state() == Session.IDLE) chooseProc(procId, procMin);
            save();
            return;
        }
        Session.Program q = p.copy();
        String why = Safe.apply(q, a60);
        if (mode == Procs.MODE_MANUAL) prog = q;
        if (session != null && session.state() != Session.RUNNING) session.setProgram(q);
        if (why.length() > 0) setNote("Граница за безопасност: " + why.replace("\n", "  ·  "), true);
        save();
    }

    public boolean xemsWiring() {
        return xemsWiring;
    }

    public void setXemsWiring(boolean x) {
        if (session != null && !session.setWiring(x)) {
            setNote("Стандартът на костюма се сменя на пауза", true);
            return;
        }
        xemsWiring = x;
        save();
    }

    public boolean held() {
        return held != null;
    }

    public int mode() {
        return mode;
    }

    public void chooseMode(int m) {
        if (session == null || session.state() != Session.IDLE) return;
        Session.Program q = m == Procs.MODE_MANUAL ? prog.copy() : Procs.mode(m);
        Safe.apply(q, age60);          // XBody's own defaults too: the absolute limits hold for every program
        session.setProgram(q);
        mode = m;
    }

    public void chooseProc(String id, int minutes) {
        Procs.Proc p = Procs.byId(id);
        if (p == null || session == null || session.state() != Session.IDLE) return;
        session.setPlan(Procs.plan(p, minutes), age60);
        mode = Procs.MODE_PROC;
        procId = id;
        procMin = minutes;
    }

    public void backToModes() {
        if (session != null && session.state() == Session.IDLE) mode = -1;
    }

    // ---------------------------------------------------------------- Ble.Listener (main thread)

    @Override
    public void seen(String mac, String name, int rssi) {
        Seen s = null;
        for (Seen x : seen) if (x.mac.equals(mac)) s = x;
        if (s == null) {
            s = new Seen();
            s.mac = mac;
            seen.add(s);
        }
        s.name = name;
        s.rssi = rssi;
        s.lastMs = now();
    }

    @Override
    public void linked() {
        boolean back = held != null && linkingMac != null && linkingMac.equals(heldMac);
        if (back) {                   // the same unit is back: the training goes on from where it stopped
            session = held;
            setNote(session.state() == Session.PAUSED ? "Свързан отново ✓ — натисни ПРОДЪЛЖИ" : "Свързан отново ✓", false);
        } else {
            session = new Session();
            session.setProgram(prog);
            session.setStrength(100); // every zone starts at 0 (owner); СИЛА scales them all — 100 % = as set
            mode = -1;
            setNote("Свързан ✓  " + linkedName, false);
        }
        held = null;
        session.sink = sink;
        if (!back) {                  // the zones and strength as left last time (owner: they stay as set)
            session.setWiring(xemsWiring);
            for (int z = 0; z < Session.ZONES; z++) session.setZone(z, savedZones[z]);
            session.setStrength(savedStrength);
        }
        trace("LINKED " + linkingMac + (back ? " (the same unit back: the training goes on)" : ""));
        session.linked();             // whatever the unit does now: 0 and stopped
        lastMac = linkingMac;
        linkingMac = null;
        disconnectWhenIdle = false;
        save();
    }

    @Override
    public void lost(String why) {
        trace("LOST: " + why);
        // keep the training (unless it was being closed): the last unit reconnects by itself and it goes on
        if (session != null && !disconnectWhenIdle && lastMac != null) {
            session.lost(now());
            held = session;
            heldMac = lastMac;
            why = why.replace("тренировката спря", "тренировката е на пауза") + " · свързвам отново…";
        }
        session = null;
        linkingMac = null;
        disconnectWhenIdle = false;
        setNote(why, true);
    }

    @Override
    public void written(boolean ok) {
        trace(ok ? "  ack" : "  WRITE REJECTED by the unit");
        if (session == null) return;
        if (!ok) {
            ble.disconnect(null);
            lost("WiEMS не прие команда — тренировката спря");
            return;
        }
        session.ack();
    }

    @Override
    public void runNotify(byte[] v) {
        trace("  ← run " + Trace.hex(v));
        if (session != null) session.runNotify(v, now());
    }

    @Override
    public void notified(String what, byte[] v) {
        trace("  ← " + what + " " + Trace.hex(v));
    }

    @Override
    public void battery(int pct) {
        trace("  ← battery " + pct + "%");
        if (session != null) session.setBattery(pct);
    }

    // ---------------------------------------------------------------- the tick

    final class Tick implements Runnable {
        @Override
        public void run() {
            long t = now();
            try {
                step(t);
            } catch (Throwable e) {
                android.util.Log.e(Ble.TAG, "tick: " + e);
            }
            // keeps running while the screen is shown, or while a session runs behind another app
            // (and until the last "outputs off" went, so a training that ends behind another app stops the unit)
            if (resumed || held != null || (session != null && (session.state() != Session.IDLE || session.busy())))
                main.postDelayed(this, 50);
        }
    }

    private void step(long t) {
        for (int i = seen.size() - 1; i >= 0; i--) if (t - seen.get(i).lastMs > 6000) seen.remove(i);
        boolean wantScan = viewKind() == VIEW_PICK;
        if (held != null && lastMac == null) held = null;
        ble.scan(wantScan);
        // derive, don't ask: the last unit reconnects by itself when it shows up
        if (wantScan && lastMac != null)
            for (Seen s : seen) if (s.mac.equals(lastMac)) { connectTo(lastMac); break; }
        if (linkingMac != null && t - linkingSince > 15000) {
            ble.disconnect(null);
            linkingMac = null;
            setNote("WiEMS не отговори — включен ли е?", true);
        }
        if (session != null) {
            boolean was = session.state() != Session.IDLE;
            session.tick(t);
            if (session.takeUnitStopped()) {
                int tz = session.takeTripZone();
                if (tz != -1) {
                    setNote("WiEMS спря — защита на тока (код " + Integer.toHexString(session.tripCodeLast()) + ")"
                            + (tz >= 0 ? " след промяната на " + Session.ZONE[tz] : "")
                            + ". Силите са както вървяха. Без облечен костюм модулът не дава различни сили по зоните", true);
                    noteUntil = now() + 20000;
                } else
                    setNote(session.haltReason().startsWith("no") ? "WiEMS не отговаря — пауза. Натисни ПРОДЪЛЖИ"
                            : "WiEMS спря сам — пауза. Натисни ПРОДЪЛЖИ", true);
            }
            if (was && session.finished()) {
                session.clearFinished();
                setNote("Тренировката завърши ✓", false);
            }
            if (session.ackLate(t)) {
                ble.disconnect(null);
                lost("WiEMS спря да отговаря — тренировката спря");
            } else if (ble.ready()) {
                byte[] op = session.next(t);
                if (op != null) trace("→ " + opName(op[0]) + " " + Trace.hex(com.isaigu.gymapp.bodytech.WiProto.value(op)));
                if (op != null && !ble.write(op)) {
                    ble.disconnect(null);
                    lost("WiEMS не прие команда — тренировката спря");
                } else if (op == null && disconnectWhenIdle && !session.busy()) {
                    ble.disconnect(null);
                    session = null;
                    disconnectWhenIdle = false;
                }
            }
        }
        rememberZones(t);
        view.tick(t);
    }

    private static String opName(int sel) {
        String[] n = {"currents", "program", "rest", "widths", "run"};
        return sel >= 0 && sel < n.length ? n[sel] : "op" + sel;
    }

    /** The zones and strength as set now → kept (at most every 2 s; also when the app goes to the background). */
    private void rememberZones(long t) {
        Session s = session != null ? session : held;
        if (s == null) return;
        boolean changed = s.strength() != savedStrength;
        for (int z = 0; z < Session.ZONES; z++) changed |= s.zone(z) != savedZones[z];
        if (!changed) return;
        for (int z = 0; z < Session.ZONES; z++) savedZones[z] = s.zone(z);
        savedStrength = s.strength();
        if (t - zonesSavedMs > 2000 || !resumed) {
            zonesSavedMs = t;
            save();
        }
    }

    /** The trace to whoever should see it (a message, mail, Drive…): long press on the logo. */
    public void shareLog() {
        try {
            Intent i = new Intent(Intent.ACTION_SEND);
            i.setType("text/plain");
            i.putExtra(Intent.EXTRA_SUBJECT, "XEMS WiEMS дневник");
            i.putExtra(Intent.EXTRA_TEXT, trace.dump());
            startActivity(Intent.createChooser(i, "Изпрати дневника"));
        } catch (Throwable t) {
            setNote("Дневникът е във файл: Android/data/bg.xems.wiems/files/wiems-log.txt", false);
        }
    }

    // ---------------------------------------------------------------- saved

    private void load() {
        SharedPreferences p = getSharedPreferences("wiems", MODE_PRIVATE);
        lastMac = p.getString("last", null);
        prog.hz = p.getInt("hz", prog.hz);
        prog.onS = p.getInt("on", prog.onS);
        prog.offS = p.getInt("off", prog.offS);
        prog.totalS = p.getInt("total", prog.totalS);
        prog.rampMs = p.getInt("ramp", prog.rampMs);
        prog.dbl = p.getBoolean("dbl", false);
        prog.dblHz = p.getInt("dbl_hz", prog.dblHz);
        prog.dblPct = p.getInt("dbl_pct", prog.dblPct);
        age60 = p.getBoolean("age60", false);
        female = p.getBoolean("female", true);
        for (int z = 0; z < Session.ZONES; z++) savedZones[z] = p.getInt("zone" + z, 0);
        savedStrength = p.getInt("strength", 100);
        xemsWiring = p.getBoolean("wiring_xems", false);
        Safe.apply(prog, age60);    // a saved value goes through the limits too
    }

    void save() {
        getSharedPreferences("wiems", MODE_PRIVATE).edit().putString("last", lastMac).putInt("hz", prog.hz)
                .putInt("on", prog.onS).putInt("off", prog.offS).putInt("total", prog.totalS).putInt("ramp", prog.rampMs)
                .putBoolean("dbl", prog.dbl).putInt("dbl_hz", prog.dblHz).putInt("dbl_pct", prog.dblPct)
                .putBoolean("age60", age60).putBoolean("female", female).putBoolean("wiring_xems", xemsWiring).putInt("strength", savedStrength)
                .putInt("zone0", savedZones[0]).putInt("zone1", savedZones[1]).putInt("zone2", savedZones[2])
                .putInt("zone3", savedZones[3]).putInt("zone4", savedZones[4]).putInt("zone5", savedZones[5])
                .putInt("zone6", savedZones[6]).putInt("zone7", savedZones[7]).putInt("zone8", savedZones[8])
                .putInt("zone9", savedZones[9]).apply();
    }
}
