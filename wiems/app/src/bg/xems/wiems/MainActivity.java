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
    private final Handler main = new Handler(Looper.getMainLooper());
    private final Tick tick = new Tick();
    private boolean resumed;

    @Override
    protected void onCreate(Bundle b) {
        super.onCreate(b);
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        getWindow().addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN | WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
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
        resumed = false;            // a running session keeps its tick (posted below while it runs)
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
        lastMac = null;
        save();
    }

    public void startPause() {
        if (session == null) return;
        if (session.state() == Session.RUNNING || session.startPending()) session.pause(now());
        else session.start(now());
    }

    /** New program from the sheet: through the safety limits, the correction (if any) as a red note. */
    public void applyProgram(Session.Program p, boolean a60) {
        Session.Program q = p.copy();
        String why = Safe.apply(q, a60);
        prog = q;
        age60 = a60;
        if (session != null && session.state() != Session.RUNNING) session.setProgram(prog);
        if (why.length() > 0) setNote("Граница за безопасност: " + why.replace("\n", "  ·  "), true);
        save();
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
        session = new Session();
        session.setProgram(prog);
        session.setStrength(0);       // a new link always starts from 0
        session.linked();
        lastMac = linkingMac;
        linkingMac = null;
        disconnectWhenIdle = false;
        save();
        setNote("Свързан ✓  " + linkedName, false);
    }

    @Override
    public void lost(String why) {
        session = null;
        linkingMac = null;
        disconnectWhenIdle = false;
        setNote(why, true);
    }

    @Override
    public void written(boolean ok) {
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
        if (session != null) session.runNotify(v);
    }

    @Override
    public void battery(int pct) {
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
            if (resumed || (session != null && session.state() != Session.IDLE)) main.postDelayed(this, 50);
        }
    }

    private void step(long t) {
        for (int i = seen.size() - 1; i >= 0; i--) if (t - seen.get(i).lastMs > 6000) seen.remove(i);
        boolean wantScan = viewKind() == VIEW_PICK;
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
            if (was && session.finished()) {
                session.clearFinished();
                setNote("Тренировката завърши ✓", false);
            }
            if (session.ackLate(t)) {
                ble.disconnect(null);
                lost("WiEMS спря да отговаря — тренировката спря");
            } else if (ble.ready()) {
                byte[] op = session.next(t);
                if (op != null && !ble.write(op)) {
                    ble.disconnect(null);
                    lost("WiEMS не прие команда — тренировката спря");
                } else if (op == null && disconnectWhenIdle) {
                    ble.disconnect(null);
                    session = null;
                    disconnectWhenIdle = false;
                }
            }
        }
        view.tick(t);
    }

    // ---------------------------------------------------------------- saved

    private void load() {
        SharedPreferences p = getSharedPreferences("wiems", MODE_PRIVATE);
        lastMac = p.getString("last", null);
        prog.hz = p.getInt("hz", prog.hz);
        prog.onS = p.getInt("on", prog.onS);
        prog.offS = p.getInt("off", prog.offS);
        prog.totalS = p.getInt("total", prog.totalS);
        age60 = p.getBoolean("age60", false);
        Safe.apply(prog, age60);    // a saved value goes through the limits too
    }

    void save() {
        getSharedPreferences("wiems", MODE_PRIVATE).edit().putString("last", lastMac).putInt("hz", prog.hz)
                .putInt("on", prog.onS).putInt("off", prog.offS).putInt("total", prog.totalS)
                .putBoolean("age60", age60).apply();
    }
}
