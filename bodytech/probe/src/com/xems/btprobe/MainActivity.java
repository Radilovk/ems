package com.xems.btprobe;

import android.Manifest;
import android.app.Activity;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.le.BluetoothLeScanner;
import android.bluetooth.le.ScanCallback;
import android.bluetooth.le.ScanRecord;
import android.bluetooth.le.ScanResult;
import android.bluetooth.le.ScanSettings;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.location.LocationManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.provider.MediaStore;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;

/**
 * XEMS BT Probe — talks to the bodytech (EMSFIT) suit directly and logs every byte, so the protocol can
 * be checked on the real device and brought into XEMS. Landscape: device + channels | parameters + tests | log.
 */
public class MainActivity extends Activity implements Link.Listener {

    static final int BG = 0xFF111418, CARD = 0xFF1C2127, TEXT = 0xFFE8ECEF, DIM = 0xFF8A949E,
            ACCENT = 0xFF2BB673, BLUE = 0xFF2F7DE1, RED = 0xFFD9363E, AMBER = 0xFFE0A526, CHIP = 0xFF2A3139;

    final Handler main = new Handler(Looper.getMainLooper());
    Link link;
    BluetoothAdapter adapter;
    BluetoothLeScanner scanner;
    boolean scanning;
    final LinkedHashMap<String, Found> found = new LinkedHashMap<String, Found>();

    // session state
    final int[] level = new int[9];
    volatile boolean running;
    volatile boolean testBusy;
    volatile boolean abort;
    boolean heartbeatOn = true, batteryPollOn = true;
    /** A guided test is waiting for the user's answer (channel map, watchdog). */
    volatile boolean uiTest, wdActive;
    long wdFrom;
    int mapCh, mapLevel;
    final String[] mapResult = new String[9];
    int lastBatteryRaw = -1;

    // parameters (defaults = EMSFIT program: 85 Hz, 360 µs, 0.4 s up, 4 s work, 0.4 s down, 4 s pause)
    int hz = 85, widthUs = 360, t1 = 400, t2 = 4000, t3 = 400, t4 = 4000, wave = -1, target = 0;
    int testLevel = 10, settleMs = 1500, samples = 3;

    // views
    TextView status, battery, result, logView, runState, askTitle;
    LinearLayout askBox, askButtons;
    ScrollView logScroll;
    LinearLayout devices;
    final TextView[] levelText = new TextView[9];
    final List<Button> waveChips = new ArrayList<Button>();
    final List<Button> targetChips = new ArrayList<Button>();
    Button hbBtn, batBtn;

    final StringBuilder logBuf = new StringBuilder();
    boolean logDirty;
    final String startedAt = new SimpleDateFormat("yyyyMMdd-HHmmss", Locale.US).format(new Date());

    static final class Found {
        BluetoothDevice dev;
        String name;
        int rssi;
        boolean suit, fe50;
    }

    // =====================================================================================
    @Override
    protected void onCreate(Bundle b) {
        super.onCreate(b);
        getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
        setContentView(buildUi());
        link = new Link(this, this);
        adapter = BluetoothAdapter.getDefaultAdapter();
        onLog("XEMS BT Probe 0.3 · " + Build.MANUFACTURER + " " + Build.MODEL + " · Android " + Build.VERSION.RELEASE
                + " (API " + Build.VERSION.SDK_INT + ") · " + startedAt);
        if (Build.VERSION.SDK_INT >= 23
                && checkSelfPermission(Manifest.permission.ACCESS_FINE_LOCATION) != PackageManager.PERMISSION_GRANTED) {
            requestPermissions(new String[]{Manifest.permission.ACCESS_FINE_LOCATION,
                    Manifest.permission.ACCESS_COARSE_LOCATION}, 1);
        }
        main.postDelayed(new Ticker(), 1000);
        main.postDelayed(new HeartbeatTick(), 4500);
        main.postDelayed(new BatteryTick(), 10000);
        main.postDelayed(new LogFlush(), 250);
    }

    @Override
    protected void onDestroy() {
        stopScan();
        if (link.ready()) {
            link.clearQueue();
            link.post(new Runnable() {
                @Override public void run() {
                    link.write(Proto.allOff(), "изход");
                    link.write(Proto.reset(), "изход");
                    link.disconnect();
                }
            });
        }
        saveLog(false);
        super.onDestroy();
    }

    // =====================================================================================
    // UI
    View buildUi() {
        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.HORIZONTAL);
        root.setBackgroundColor(BG);
        root.setPadding(dp(10), dp(10), dp(10), dp(10));

        // ---- column 1: device, channels, start/stop
        LinearLayout c1 = column();
        status = text("Не е свързан", 19, TEXT, true);
        c1.addView(status);
        battery = text("Батерия: —", 14, DIM, false);
        c1.addView(battery);
        LinearLayout r = row();
        r.addView(button("Търси костюм", BLUE, new View.OnClickListener() {
            @Override public void onClick(View v) { startScan(); }
        }), weight());
        r.addView(button("Прекъсни", CHIP, new View.OnClickListener() {
            @Override public void onClick(View v) { stopScan(); link.disconnect(); }
        }), weight());
        c1.addView(r);
        devices = new LinearLayout(this);
        devices.setOrientation(LinearLayout.VERTICAL);
        c1.addView(devices);

        c1.addView(title("Канали (сила 0–99)"));
        for (int ch = 1; ch <= 8; ch++) c1.addView(channelRow(ch));
        c1.addView(channelRow(0));

        LinearLayout ctl = row();
        ctl.addView(button("▶ Старт", ACCENT, new View.OnClickListener() {
            @Override public void onClick(View v) { start(); }
        }), weight());
        ctl.addView(button("⏸ Пауза", AMBER, new View.OnClickListener() {
            @Override public void onClick(View v) { pause(); }
        }), weight());
        Button stop = button("■ СТОП", RED, new View.OnClickListener() {
            @Override public void onClick(View v) { stopAll(); }
        });
        stop.setTextSize(20);
        ctl.addView(stop, weight(1.4f));
        c1.addView(ctl);
        runState = text("", 17, DIM, true);
        runState.setPadding(0, dp(6), 0, dp(2));
        c1.addView(runState);
        root.addView(scroll(c1), colParams(1.15f));

        // ---- column 2: parameters + tests
        LinearLayout c2 = column();
        c2.addView(title("Параметри на импулса"));
        c2.addView(stepper("Честота, Hz", 1, 200, 5, new Getter() { public int get() { return hz; } },
                new Setter() { public void set(int v) { hz = v; } }));
        c2.addView(stepper("Ширина, µs", 50, 500, 10, new Getter() { public int get() { return widthUs; } },
                new Setter() { public void set(int v) { widthUs = v; } }));
        c2.addView(stepper("Рампа нагоре (T1), ms", 0, 3000, 100, new Getter() { public int get() { return t1; } },
                new Setter() { public void set(int v) { t1 = v; } }));
        c2.addView(stepper("Работа (T2), ms", 500, 60000, 500, new Getter() { public int get() { return t2; } },
                new Setter() { public void set(int v) { t2 = v; } }));
        c2.addView(stepper("Рампа надолу (T3), ms", 0, 3000, 100, new Getter() { public int get() { return t3; } },
                new Setter() { public void set(int v) { t3 = v; } }));
        c2.addView(stepper("Пауза (T4), ms", 0, 60000, 500, new Getter() { public int get() { return t4; } },
                new Setter() { public void set(int v) { t4 = v; } }));

        c2.addView(small("Форма на импулса (EMSFIT не я праща — стандартно „не пращай“)"));
        String[] waves = {"не пращай", "0 квадрат", "1 синус", "2 трапец", "3 трапец"};
        LinearLayout wr = row();
        for (int i = 0; i < waves.length; i++) {
            final int w = i - 1;
            Button bt = chip(waves[i], new View.OnClickListener() {
                @Override public void onClick(View v) { wave = w; paintChips(); }
            });
            waveChips.add(bt);
            wr.addView(bt);
        }
        c2.addView(hscroll(wr));

        c2.addView(small("Към кои канали отиват параметрите"));
        LinearLayout tr = row();
        for (int i = 0; i <= 8; i++) {
            final int t = i;
            Button bt = chip(i == 0 ? "Всички" : "C" + i, new View.OnClickListener() {
                @Override public void onClick(View v) { target = t; paintChips(); }
            });
            targetChips.add(bt);
            tr.addView(bt);
        }
        c2.addView(hscroll(tr));

        LinearLayout pr = row();
        pr.addView(button("Нова програма (нулира силата)", BLUE, new View.OnClickListener() {
            @Override public void onClick(View v) { uploadProgram(); }
        }), weight());
        pr.addView(button("Смени на целта", CHIP, new View.OnClickListener() {
            @Override public void onClick(View v) { applyToTarget(); }
        }), weight());
        c2.addView(pr);

        c2.addView(title("Тестове"));
        Button auto = button("▶ АВТО ТЕСТ (без човек, ~2 мин)", ACCENT, new View.OnClickListener() {
            @Override public void onClick(View v) { autoAsk(); }
        });
        auto.setTextSize(18);
        c2.addView(auto, new LinearLayout.LayoutParams(-1, dp(58)));
        c2.addView(stepper("Ниво за теста на електродите", 1, 40, 1, new Getter() { public int get() { return testLevel; } },
                new Setter() { public void set(int v) { testLevel = v; } }));
        c2.addView(stepper("Изчакване на канал, ms", 500, 5000, 250, new Getter() { public int get() { return settleMs; } },
                new Setter() { public void set(int v) { settleMs = v; } }));
        c2.addView(stepper("Отчета на канал", 1, 8, 1, new Getter() { public int get() { return samples; } },
                new Setter() { public void set(int v) { samples = v; } }));
        LinearLayout tt = row();
        tt.addView(button("Тест електроди", ACCENT, new View.OnClickListener() {
            @Override public void onClick(View v) { electrodeTest(); }
        }), weight());
        tt.addView(button("Тест скорост", CHIP, new View.OnClickListener() {
            @Override public void onClick(View v) { speedTest(); }
        }), weight());
        c2.addView(tt);
        result = text("", 13, TEXT, false);
        result.setTypeface(Typeface.MONOSPACE);
        c2.addView(result);
        LinearLayout gt = row();
        gt.addView(button("Карта на каналите", ACCENT, new View.OnClickListener() {
            @Override public void onClick(View v) { mapStart(); }
        }), weight());
        gt.addView(button("Тест watchdog", CHIP, new View.OnClickListener() {
            @Override public void onClick(View v) { wdStart(); }
        }), weight());
        gt.addView(button("Батерия под товар", CHIP, new View.OnClickListener() {
            @Override public void onClick(View v) { loadTest(); }
        }), weight());
        c2.addView(gt);
        askBox = new LinearLayout(this);
        askBox.setOrientation(LinearLayout.VERTICAL);
        askBox.setPadding(dp(10), dp(8), dp(10), dp(10));
        GradientDrawable ag = new GradientDrawable();
        ag.setColor(0xFF263240);
        ag.setCornerRadius(dp(12));
        ag.setStroke(dp(2), AMBER);
        askBox.setBackground(ag);
        askTitle = text("", 17, TEXT, true);
        askBox.addView(askTitle);
        askButtons = new LinearLayout(this);
        askButtons.setOrientation(LinearLayout.VERTICAL);
        askBox.addView(askButtons);
        askBox.setVisibility(View.GONE);
        LinearLayout.LayoutParams ap = new LinearLayout.LayoutParams(-1, -2);
        ap.setMargins(0, dp(8), 0, dp(4));
        c2.addView(askBox, ap);

        LinearLayout tg = row();
        hbBtn = chip("", new View.OnClickListener() {
            @Override public void onClick(View v) {
                heartbeatOn = !heartbeatOn;
                link.heartbeatEnabled = heartbeatOn;
                onLog("HEARTBEAT " + (heartbeatOn ? "ВКЛ" : "ИЗКЛ — засечи след колко секунди костюмът спира"));
                paintToggles();
            }
        });
        batBtn = chip("", new View.OnClickListener() {
            @Override public void onClick(View v) { batteryPollOn = !batteryPollOn; paintToggles(); }
        });
        tg.addView(hbBtn);
        tg.addView(batBtn);
        c2.addView(hscroll(tg));
        root.addView(scroll(c2), colParams(1f));

        // ---- column 3: log
        LinearLayout c3 = column();
        LinearLayout lr = row();
        lr.addView(text("Лог", 17, TEXT, true), weight());
        lr.addView(chip("Запази", new View.OnClickListener() {
            @Override public void onClick(View v) { saveLog(true); }
        }));
        lr.addView(chip("Сподели", new View.OnClickListener() {
            @Override public void onClick(View v) { shareLog(); }
        }));
        lr.addView(chip("Изчисти", new View.OnClickListener() {
            @Override public void onClick(View v) {
                synchronized (logBuf) { logBuf.setLength(0); }
                logDirty = true;
            }
        }));
        c3.addView(lr);
        logView = text("", 11, 0xFFB8C2CC, false);
        logView.setTypeface(Typeface.MONOSPACE);
        logView.setTextIsSelectable(true);
        logScroll = new ScrollView(this);
        logScroll.addView(logView);
        c3.addView(logScroll, new LinearLayout.LayoutParams(-1, 0, 1f));
        LinearLayout.LayoutParams lp3 = colParams(1.3f);
        root.addView(c3, lp3);

        paintChips();
        paintToggles();
        return root;
    }

    View channelRow(final int ch) {
        LinearLayout r = row();
        r.setGravity(Gravity.CENTER_VERTICAL);
        TextView name = text(ch == 0 ? "Всички" : "C" + ch + " " + CH_NAMES[ch], 14, ch == 0 ? DIM : TEXT, true);
        r.addView(name, new LinearLayout.LayoutParams(dp(118), -2));
        r.addView(button("−", CHIP, new View.OnClickListener() {
            @Override public void onClick(View v) { changeLevel(ch, -1); }
        }), new LinearLayout.LayoutParams(dp(64), dp(46)));
        TextView val = text(ch == 0 ? "" : "0", 20, TEXT, true);
        val.setGravity(Gravity.CENTER);
        if (ch > 0) levelText[ch] = val;
        r.addView(val, new LinearLayout.LayoutParams(dp(56), -2));
        r.addView(button("+", CHIP, new View.OnClickListener() {
            @Override public void onClick(View v) { changeLevel(ch, +1); }
        }), new LinearLayout.LayoutParams(dp(64), dp(46)));
        if (ch > 0) {
            r.addView(button("0", CHIP, new View.OnClickListener() {
                @Override public void onClick(View v) { setLevel(ch, 0); }
            }), new LinearLayout.LayoutParams(dp(52), dp(46)));
        }
        return r;
    }

    interface Getter { int get(); }
    interface Setter { void set(int v); }

    View stepper(String label, final int min, final int max, final int step, final Getter g, final Setter s) {
        LinearLayout r = row();
        r.setGravity(Gravity.CENTER_VERTICAL);
        r.addView(text(label, 14, DIM, false), weight());
        final TextView val = text(String.valueOf(g.get()), 17, TEXT, true);
        val.setGravity(Gravity.CENTER);
        r.addView(button("−", CHIP, new View.OnClickListener() {
            @Override public void onClick(View v) {
                int cur = g.get();
                int st = (step == 5 && cur <= 20) ? 1 : step;
                s.set(Math.max(min, cur - st));
                val.setText(String.valueOf(g.get()));
            }
        }), new LinearLayout.LayoutParams(dp(54), dp(42)));
        r.addView(val, new LinearLayout.LayoutParams(dp(70), -2));
        r.addView(button("+", CHIP, new View.OnClickListener() {
            @Override public void onClick(View v) {
                int cur = g.get();
                int st = (step == 5 && cur < 20) ? 1 : step;
                s.set(Math.min(max, cur + st));
                val.setText(String.valueOf(g.get()));
            }
        }), new LinearLayout.LayoutParams(dp(54), dp(42)));
        return r;
    }

    void paintChips() {
        for (int i = 0; i < waveChips.size(); i++) tint(waveChips.get(i), (i - 1) == wave ? BLUE : CHIP);
        for (int i = 0; i < targetChips.size(); i++) tint(targetChips.get(i), i == target ? BLUE : CHIP);
    }

    void paintToggles() {
        hbBtn.setText("Heartbeat: " + (heartbeatOn ? "вкл" : "ИЗКЛ"));
        tint(hbBtn, heartbeatOn ? ACCENT : RED);
        batBtn.setText("Батерия на 10 s: " + (batteryPollOn ? "вкл" : "изкл"));
        tint(batBtn, batteryPollOn ? ACCENT : CHIP);
    }

    // ---- small view helpers
    int dp(float v) {
        return (int) TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, v, getResources().getDisplayMetrics());
    }

    LinearLayout column() {
        LinearLayout l = new LinearLayout(this);
        l.setOrientation(LinearLayout.VERTICAL);
        l.setPadding(dp(10), dp(8), dp(10), dp(8));
        GradientDrawable g = new GradientDrawable();
        g.setColor(CARD);
        g.setCornerRadius(dp(14));
        l.setBackground(g);
        return l;
    }

    ScrollView scroll(View v) {
        ScrollView s = new ScrollView(this);
        s.addView(v);
        return s;
    }

    HorizontalScrollView hscroll(View v) {
        HorizontalScrollView s = new HorizontalScrollView(this);
        s.addView(v);
        return s;
    }

    LinearLayout.LayoutParams colParams(float w) {
        LinearLayout.LayoutParams p = new LinearLayout.LayoutParams(0, -1, w);
        p.setMargins(dp(5), 0, dp(5), 0);
        return p;
    }

    LinearLayout row() {
        LinearLayout l = new LinearLayout(this);
        l.setOrientation(LinearLayout.HORIZONTAL);
        l.setPadding(0, dp(3), 0, dp(3));
        return l;
    }

    LinearLayout.LayoutParams weight() { return weight(1f); }

    LinearLayout.LayoutParams weight(float w) {
        LinearLayout.LayoutParams p = new LinearLayout.LayoutParams(0, -2, w);
        p.setMargins(dp(3), 0, dp(3), 0);
        return p;
    }

    TextView text(String s, float sp, int color, boolean bold) {
        TextView t = new TextView(this);
        t.setText(s);
        t.setTextSize(sp);
        t.setTextColor(color);
        if (bold) t.setTypeface(Typeface.DEFAULT_BOLD);
        return t;
    }

    TextView title(String s) {
        TextView t = text(s, 15, ACCENT, true);
        t.setPadding(0, dp(12), 0, dp(4));
        return t;
    }

    TextView small(String s) {
        TextView t = text(s, 12, DIM, false);
        t.setPadding(0, dp(8), 0, dp(2));
        return t;
    }

    Button button(String s, int color, View.OnClickListener l) {
        Button b = new Button(this);
        b.setText(s);
        b.setAllCaps(false);
        b.setTextColor(Color.WHITE);
        b.setTextSize(16);
        b.setOnClickListener(l);
        tint(b, color);
        return b;
    }

    Button chip(String s, View.OnClickListener l) {
        Button b = button(s, CHIP, l);
        b.setTextSize(13);
        b.setMinWidth(0);
        b.setMinimumWidth(0);
        b.setPadding(dp(12), 0, dp(12), 0);
        return b;
    }

    void tint(Button b, int color) {
        GradientDrawable g = new GradientDrawable();
        g.setColor(color);
        g.setCornerRadius(dp(10));
        b.setBackground(new RippleDrawable(ColorStateList.valueOf(0x40FFFFFF), g, null));
    }

    // =====================================================================================
    // Link.Listener (any thread)
    @Override
    public void onLog(String line) {
        synchronized (logBuf) {
            logBuf.append(line).append('\n');
            if (logBuf.length() > 3000000) logBuf.delete(0, logBuf.length() - 2500000);
        }
        logDirty = true;
    }

    @Override
    public void onState(final int st, final String txt) {
        main.post(new Runnable() {
            @Override public void run() {
                status.setText(txt);
                status.setTextColor(st == Link.ST_READY ? ACCENT : st == Link.ST_CONNECTING ? AMBER : TEXT);
                if (st == Link.ST_READY) onReady();
                if (st == Link.ST_IDLE) {
                    running = false;
                    saveLog(false);
                }
            }
        });
    }

    @Override
    public void onBattery(final int raw) {
        lastBatteryRaw = raw;
        main.post(new Runnable() {
            @Override public void run() {
                battery.setText(String.format(Locale.US, "Батерия: %.3f V · %d %% (raw %d)",
                        Proto.volts(raw), Proto.percent(raw), raw));
            }
        });
    }

    // =====================================================================================
    // scanning
    void startScan() {
        if (adapter == null) { onLog("Няма Bluetooth"); return; }
        if (!adapter.isEnabled()) {
            startActivity(new Intent(BluetoothAdapter.ACTION_REQUEST_ENABLE));
            return;
        }
        if (Build.VERSION.SDK_INT >= 28) {
            LocationManager lm = (LocationManager) getSystemService(Context.LOCATION_SERVICE);
            if (lm != null && !lm.isLocationEnabled()) {
                onLog("ВНИМАНИЕ: Местоположението е изключено — Android не показва BLE устройства. Включи го.");
            }
        }
        if (Build.VERSION.SDK_INT >= 23
                && checkSelfPermission(Manifest.permission.ACCESS_FINE_LOCATION) != PackageManager.PERMISSION_GRANTED) {
            onLog("Нужно е разрешение „Местоположение“ — без него Android не показва BLE устройства.");
            requestPermissions(new String[]{Manifest.permission.ACCESS_FINE_LOCATION,
                    Manifest.permission.ACCESS_COARSE_LOCATION}, 1);
            return;
        }
        scanner = adapter.getBluetoothLeScanner();
        if (scanner == null) { onLog("Скенерът не е наличен"); return; }
        found.clear();
        devices.removeAllViews();
        ScanSettings s = new ScanSettings.Builder().setScanMode(ScanSettings.SCAN_MODE_LOW_LATENCY).build();
        try {
            scanner.startScan(null, s, scanCb);
            scanning = true;
            status.setText("Търся… (15 s)");
            onLog("SCAN start");
            main.postDelayed(new Runnable() {
                @Override public void run() { stopScan(); }
            }, 15000);
        } catch (SecurityException e) {
            onLog("Няма разрешение за търсене: " + e.getMessage());
        }
    }

    void stopScan() {
        if (scanning && scanner != null) {
            try { scanner.stopScan(scanCb); } catch (Exception ignored) { }
            scanning = false;
            onLog("SCAN stop · намерени " + found.size());
            if (!link.ready()) status.setText("Избери костюма от списъка");
        }
    }

    final ScanCallback scanCb = new ScanCallback() {
        @Override
        public void onScanResult(int type, ScanResult r) {
            BluetoothDevice d = r.getDevice();
            String addr = d.getAddress();
            Found f = found.get(addr);
            boolean isNew = f == null;
            if (f == null) { f = new Found(); f.dev = d; found.put(addr, f); }
            ScanRecord rec = r.getScanRecord();
            String name = rec != null && rec.getDeviceName() != null ? rec.getDeviceName() : d.getName();
            if (name != null) f.name = name;
            f.rssi = r.getRssi();
            List<?> uuids = rec != null ? rec.getServiceUuids() : null;
            f.fe50 = f.fe50 || Link.looksLikeSuit(null, uuids);
            f.suit = f.fe50 || Link.looksLikeSuit(f.name, null);
            if (isNew) {
                onLog("SCAN " + addr + " rssi=" + f.rssi + " name=" + f.name + " uuids=" + uuids
                        + (f.suit ? "  ← прилича на bodytech" : ""));
                renderDevices();
            }
        }

        @Override
        public void onScanFailed(int code) { onLog("SCAN грешка " + code); }
    };

    void renderDevices() {
        List<Found> list = new ArrayList<Found>(found.values());
        Collections.sort(list, new Comparator<Found>() {
            @Override public int compare(Found a, Found b) {
                if (a.suit != b.suit) return a.suit ? -1 : 1;
                return b.rssi - a.rssi;
            }
        });
        devices.removeAllViews();
        int n = 0;
        for (final Found f : list) {
            if (++n > 24) break;
            String label = (f.suit ? "★ " : "") + (f.name == null ? "(без име)" : f.name) + "   "
                    + f.dev.getAddress() + "   " + f.rssi + " dBm" + (f.fe50 ? " · FE50" : "");
            Button b = button(label, f.suit ? ACCENT : CHIP, new View.OnClickListener() {
                @Override public void onClick(View v) { stopScan(); link.connect(f.dev); }
            });
            b.setTextSize(14);
            b.setGravity(Gravity.START | Gravity.CENTER_VERTICAL);
            LinearLayout.LayoutParams p = new LinearLayout.LayoutParams(-1, -2);
            p.setMargins(0, dp(2), 0, dp(2));
            devices.addView(b, p);
        }
    }

    // =====================================================================================
    // session
    void onReady() {
        devices.removeAllViews();
        // measured: default ≈ 25 ms per frame, BALANCED ≈ 90 ms — always ask for HIGH
        link.setFast(true);
        link.post(new Runnable() {
            @Override public void run() {
                link.write(Proto.batteryInit(), "инициализация (като EMSFIT)");
                link.write(Proto.batteryInit2(), "инициализация (като EMSFIT)");
                long[] lat = new long[1];
                int raw = link.readBattery(2000, lat);
                if (raw > 0) link.log("  батерия отговори за " + lat[0] + " ms");
                link.write(Proto.sync(6), "heartbeat (watchdog 6 s)");
            }
        });
        uploadProgram();
    }

    /** EMSFIT ZProgramMode: reset, then every register of every channel, intensity 0, all off. */
    void uploadProgram() {
        if (!requireReady()) return;
        final int fHz = hz, fW = widthUs, f1 = t1, f2 = t2, f3 = t3, f4 = t4, fWave = wave;
        running = false;
        Arrays.fill(level, 0);
        refreshLevels();
        link.post(new Runnable() {
            @Override public void run() {
                link.log("— НОВА ПРОГРАМА: " + fHz + " Hz, " + fW + " µs, T1 " + f1 + " / T2 " + f2 + " / T3 " + f3
                        + " / T4 " + f4 + " ms" + (fWave >= 0 ? ", форма " + fWave : ""));
                link.write(Proto.reset(), null);
                for (int ch = 1; ch <= 8; ch++) writeChannelProgram(ch, fHz, fW, f1, f2, f3, f4, fWave, true);
                link.write(Proto.allOff(), "всички изкл");
                link.log("— програмата е качена");
            }
        });
    }

    void writeChannelProgram(int ch, int fHz, int fW, int f1, int f2, int f3, int f4, int fWave, boolean full) {
        link.write(Proto.hz(ch, fHz), null);
        if (full) {
            link.write(Proto.stepNor(ch, Proto.STEP_NOR_DEFAULT), null);
            link.write(Proto.intensity(ch, 0), null);
        }
        link.write(Proto.width(ch, fW), null);
        if (full) link.write(Proto.tPeriod(ch, 0), null);
        link.write(Proto.t(ch, 1, f1), null);
        link.write(Proto.t(ch, 2, f2), null);
        link.write(Proto.t(ch, 3, f3), null);
        link.write(Proto.t(ch, 4, f4), null);
        if (full) {
            link.write(Proto.t1IntStep(ch, 1), null);
            link.write(Proto.t1WidthStep(ch, 0), null);
            link.write(Proto.t3IntStep(ch, 1), null);
            link.write(Proto.t3WidthStep(ch, 0), null);
        }
        if (fWave >= 0) link.write(Proto.waveform(ch, fWave), null);
    }

    void applyToTarget() {
        if (!requireReady()) return;
        final int fHz = hz, fW = widthUs, f1 = t1, f2 = t2, f3 = t3, f4 = t4, fWave = wave, fT = target;
        link.post(new Runnable() {
            @Override public void run() {
                link.log("— ПАРАМЕТРИ към " + (fT == 0 ? "всички" : "C" + fT) + ": " + fHz + " Hz, " + fW + " µs, T "
                        + f1 + "/" + f2 + "/" + f3 + "/" + f4 + (fWave >= 0 ? ", форма " + fWave : ""));
                for (int ch = 1; ch <= 8; ch++) {
                    if (fT == 0 || fT == ch) writeChannelProgram(ch, fHz, fW, f1, f2, f3, f4, fWave, false);
                }
            }
        });
    }

    int onMask() {
        int m = 0;
        for (int ch = 1; ch <= 8; ch++) if (level[ch] > 0) m |= 1 << (ch - 1);
        return m;
    }

    void changeLevel(int ch, int d) {
        if (ch == 0) {
            for (int c = 1; c <= 8; c++) setLevel(c, level[c] + d);
        } else {
            setLevel(ch, level[ch] + d);
        }
    }

    void setLevel(final int ch, int v) {
        if (testBusy) { onLog("Изчакай теста да свърши"); return; }
        v = Math.max(0, Math.min(99, v));
        final int old = level[ch];
        if (v == old) return;
        level[ch] = v;
        refreshLevels();
        if (!link.ready()) return;
        final int fv = v;
        final boolean crosses = (old == 0) != (v == 0);
        link.post(new Runnable() {
            @Override public void run() {
                link.write(Proto.intensity(ch, fv), null);
                if (running && crosses) link.write(Proto.enable(onMask()), null);
            }
        });
    }

    void refreshLevels() {
        main.post(new Runnable() {
            @Override public void run() {
                for (int ch = 1; ch <= 8; ch++) {
                    levelText[ch].setText(String.valueOf(level[ch]));
                    levelText[ch].setTextColor(level[ch] > 0 ? AMBER : TEXT);
                }
                showRunState();
            }
        });
    }

    void showRunState() {
        main.post(new Runnable() {
            @Override public void run() {
                if (runState == null) return;
                if (running && onMask() != 0) {
                    runState.setText("▶ РАБОТИ");
                    runState.setTextColor(ACCENT);
                } else if (running) {
                    runState.setText("▶ пуснат, но всички канали са на 0");
                    runState.setTextColor(AMBER);
                } else if (onMask() != 0) {
                    runState.setText("■ СПРЯН — натисни ▶ Старт, за да тръгне");
                    runState.setTextColor(AMBER);
                } else {
                    runState.setText("■ СПРЯН");
                    runState.setTextColor(DIM);
                }
            }
        });
    }

    void start() {
        if (!requireReady() || testBusy) return;
        running = true;
        final int m = onMask();
        link.post(new Runnable() {
            @Override public void run() { link.write(Proto.enable(m), "СТАРТ"); }
        });
        if (m == 0) onLog("Старт без сила — вдигни канал с +");
        showRunState();
    }

    void pause() {
        if (!requireReady()) return;
        running = false;
        link.post(new Runnable() {
            @Override public void run() { link.write(Proto.allOff(), "ПАУЗА"); }
        });
        showRunState();
    }

    void stopAll() {
        abort = true;
        running = false;
        Arrays.fill(level, 0);
        refreshLevels();
        link.clearQueue();
        final boolean guided = uiTest;
        if (uiTest) {
            uiTest = false;
            wdActive = false;
            testBusy = false;
            heartbeatOn = true;
            link.heartbeatEnabled = true;
            paintToggles();
            hideAsk();
            result.setText("Тестът е спрян.");
        }
        link.post(new Runnable() {
            @Override public void run() {
                link.write(Proto.allOff(), "СТОП");
                for (int ch = 1; ch <= 8; ch++) link.write(Proto.intensity(ch, 0), "СТОП");
                if (guided) uploadProgramOnWorker();
                abort = false;
            }
        });
    }

    boolean requireReady() {
        if (!link.ready()) { onLog("Няма връзка с костюма"); return false; }
        return true;
    }

    // =====================================================================================
    // tests

    /**
     * Each channel alone at a low level: battery voltage with the channel off vs on. A channel whose
     * electrode or cable is open draws (almost) nothing, so its drop stays at the noise.
     */
    void electrodeTest() {
        if (!requireReady() || testBusy) return;
        testBusy = true;
        abort = false;
        running = false;
        Arrays.fill(level, 0);
        refreshLevels();
        final int L = testLevel, settle = settleMs, n = samples, fHz = hz, fW = widthUs;
        result.setText("Тестът върви…");
        link.post(new Runnable() {
            @Override public void run() {
                StringBuilder rep = new StringBuilder();
                try {
                    link.log("===== ТЕСТ ЕЛЕКТРОДИ: ниво " + L + ", " + fHz + " Hz, " + fW + " µs, изчакване "
                            + settle + " ms, " + n + " отчета =====");
                    link.write(Proto.reset(), "тест");
                    for (int ch = 1; ch <= 8; ch++) {
                        // continuous output while the channel is measured: no ramps, no pause
                        writeChannelProgram(ch, fHz, fW, 0, 60000, 0, 0, -1, true);
                    }
                    link.write(Proto.allOff(), "тест");
                    double[] off = new double[9], on = new double[9], delta = new double[9];
                    double noiseSum = 0;
                    int noiseN = 0;
                    for (int ch = 1; ch <= 8 && !abort; ch++) {
                        double[] a = sample(n);
                        link.write(Proto.intensity(ch, L), "тест C" + ch);
                        link.write(Proto.enable(1 << (ch - 1)), "тест C" + ch + " сам");
                        sleepAbortable(settle);
                        double[] b = abort ? new double[]{Double.NaN, 0} : sample(n);
                        link.write(Proto.allOff(), "тест C" + ch + " край");
                        link.write(Proto.intensity(ch, 0), null);
                        sleepAbortable(400);
                        off[ch] = a[0];
                        on[ch] = b[0];
                        delta[ch] = a[0] - b[0];
                        noiseSum += a[1] + b[1];
                        noiseN += 2;
                        link.log(String.format(Locale.US, "  C%d: изкл %.1f · вкл %.1f · спад %.1f raw (%.1f mV)",
                                ch, a[0], b[0], delta[ch], delta[ch] * 2.4));
                    }
                    if (abort) {
                        rep.append("Прекъснат.");
                    } else {
                        double noise = noiseN > 0 ? noiseSum / noiseN : 0;
                        double[] sorted = new double[8];
                        for (int i = 0; i < 8; i++) sorted[i] = delta[i + 1];
                        Arrays.sort(sorted);
                        double med = (sorted[3] + sorted[4]) / 2;
                        rep.append(String.format(Locale.US, "Шум ±%.1f raw · медиана на спада %.1f raw%n", noise, med));
                        boolean noSignal = med < 3 * Math.max(noise, 0.5);
                        if (noSignal) {
                            rep.append("Батерията не показва товара — каналите НЕ могат да се оценят така.\n"
                                    + "Вдигни нивото на теста или пусни „Батерия под товар“.\n");
                        }
                        for (int ch = 1; ch <= 8; ch++) {
                            String verdict;
                            if (Double.isNaN(delta[ch])) verdict = "няма отчет";
                            else if (noSignal) verdict = "неизвестно";
                            else if (med > 0 && delta[ch] < 0.25 * med && delta[ch] < 2 * Math.max(noise, 0.5)) verdict = "НЯМА ТОК — кабел/електрод?";
                            else if (med > 0 && delta[ch] > 2.5 * med) verdict = "ТВЪРДЕ МНОГО — утечка?";
                            else verdict = "ок";
                            rep.append(String.format(Locale.US, "C%d  спад %6.1f raw %7.1f mV  %s%n",
                                    ch, delta[ch], delta[ch] * 2.4, verdict));
                        }
                    }
                } finally {
                    link.write(Proto.allOff(), "тест край");
                    link.log("===== КРАЙ НА ТЕСТА =====\n" + rep);
                    final String text = rep.toString();
                    testBusy = false;
                    main.post(new Runnable() {
                        @Override public void run() { result.setText(text); saveLog(false); }
                    });
                }
                if (!abort) uploadProgramOnWorker();
            }
        });
    }

    void uploadProgramOnWorker() {
        link.log("— връщам обикновената програма");
        link.write(Proto.reset(), null);
        for (int ch = 1; ch <= 8; ch++) writeChannelProgram(ch, hz, widthUs, t1, t2, t3, t4, wave, true);
        link.write(Proto.allOff(), null);
    }

    /** Worker thread: n battery readings → {mean, mean absolute deviation}. */
    double[] sample(int n) {
        double s = 0;
        int k = 0;
        double[] v = new double[n];
        for (int i = 0; i < n && !abort; i++) {
            int raw = link.readBattery(1500, null);
            if (raw > 0) v[k++] = raw;
            s += raw > 0 ? raw : 0;
        }
        if (k == 0) return new double[]{Double.NaN, 0};
        double mean = s / k, dev = 0;
        for (int i = 0; i < k; i++) dev += Math.abs(v[i] - mean);
        return new double[]{mean, dev / k};
    }

    void sleepAbortable(int ms) {
        long end = SystemClock.elapsedRealtime() + ms;
        while (!abort && SystemClock.elapsedRealtime() < end) {
            link.keepAlive(4000);
            SystemClock.sleep(50);
        }
    }

    /** How fast frames go out (write → ACK) and how fast the battery answers. Harmless frames only. */
    void speedTest() {
        if (!requireReady() || testBusy) return;
        testBusy = true;
        result.setText("Тест скорост…");
        link.post(new Runnable() {
            @Override public void run() {
                String rep;
                try {
                    link.log("===== ТЕСТ СКОРОСТ (heartbeat кадри + батерия) =====");
                    long min = Long.MAX_VALUE, max = 0, sum = 0;
                    int ok = 0;
                    long t0 = SystemClock.elapsedRealtime();
                    for (int i = 0; i < 30; i++) {
                        long dt = link.write(Proto.sync(6), "скорост " + (i + 1));
                        if (dt >= 0) { ok++; sum += dt; min = Math.min(min, dt); max = Math.max(max, dt); }
                    }
                    long total = SystemClock.elapsedRealtime() - t0;
                    long bmin = Long.MAX_VALUE, bmax = 0, bsum = 0;
                    int bok = 0;
                    long[] lat = new long[1];
                    for (int i = 0; i < 10; i++) {
                        if (link.readBattery(2000, lat) > 0) {
                            bok++; bsum += lat[0]; bmin = Math.min(bmin, lat[0]); bmax = Math.max(bmax, lat[0]);
                        }
                    }
                    rep = String.format(Locale.US,
                            "Запис→ACK: %d/30, средно %s ms, мин %s, макс %s; 30 кадъра за %d ms (%.1f кадъра/s)%n"
                                    + "Батерия: %d/10 отговора, средно %s ms, мин %s, макс %s",
                            ok, ok > 0 ? String.valueOf(sum / ok) : "—", ok > 0 ? String.valueOf(min) : "—",
                            ok > 0 ? String.valueOf(max) : "—", total, 30000.0 / Math.max(1, total),
                            bok, bok > 0 ? String.valueOf(bsum / bok) : "—", bok > 0 ? String.valueOf(bmin) : "—",
                            bok > 0 ? String.valueOf(bmax) : "—");
                } finally {
                    testBusy = false;
                }
                link.log("===== КРАЙ =====\n" + rep);
                final String text = rep;
                main.post(new Runnable() {
                    @Override public void run() { result.setText(text); }
                });
            }
        });
    }

    // =====================================================================================
    // guided tests (the user answers on screen)

    interface Pick { void pick(int i); }

    void ask(String title, String[] options, final Pick cb) {
        askTitle.setText(title);
        askButtons.removeAllViews();
        LinearLayout r = null;
        for (int i = 0; i < options.length; i++) {
            if (i % 3 == 0) {
                r = row();
                askButtons.addView(r);
            }
            final int k = i;
            Button b = button(options[i], i == options.length - 1 && options.length > 2 ? CHIP : BLUE,
                    new View.OnClickListener() {
                        @Override public void onClick(View v) { cb.pick(k); }
                    });
            b.setTextSize(15);
            r.addView(b, weight());
        }
        askBox.setVisibility(View.VISIBLE);
    }

    void hideAsk() {
        askBox.setVisibility(View.GONE);
        askButtons.removeAllViews();
    }

    /** EMSFIT 5.1 labels: customButtonN → CH, activity_control.xml titleString (EN / ZH). */
    static final String[] CH_NAMES = {"", "Кръст", "Седалище", "Рамене", "Среден гръб", "Гърди", "Ръце",
            "Бедра", "Корем"};

    static final String[] MUSCLES = {"Гърди", "Корем", "Ръце", "Рамене / трапец", "Горен гръб", "Кръст",
            "Седалище", "Предно бедро", "Задно бедро", "Прасец", "Нищо не усещам", "+2 сила"};

    /** One channel at a time, continuous output; the user taps which muscle works. */
    void mapStart() {
        if (!requireReady() || testBusy) return;
        testBusy = true;
        uiTest = true;
        running = false;
        Arrays.fill(level, 0);
        Arrays.fill(mapResult, null);
        refreshLevels();
        mapLevel = testLevel;
        final int fHz = hz, fW = widthUs;
        result.setText("Карта на каналите…");
        link.post(new Runnable() {
            @Override public void run() {
                link.log("===== КАРТА НА КАНАЛИТЕ: ниво " + mapLevel + ", " + fHz + " Hz, " + fW + " µs, без пауза =====");
                link.write(Proto.reset(), "карта");
                for (int ch = 1; ch <= 8; ch++) writeChannelProgram(ch, fHz, fW, 0, 60000, 0, 0, -1, true);
                link.write(Proto.allOff(), "карта");
                main.post(new Runnable() {
                    @Override public void run() { if (uiTest) mapNext(1); }
                });
            }
        });
    }

    void mapNext(final int ch) {
        if (ch > 8) { mapFinish(); return; }
        mapCh = ch;
        final int lv = mapLevel;
        link.post(new Runnable() {
            @Override public void run() {
                link.write(Proto.intensity(ch, lv), "карта C" + ch);
                link.write(Proto.enable(1 << (ch - 1)), "карта C" + ch + " сам");
            }
        });
        ask("Работи само C" + ch + " (сила " + lv + "). Кой мускул се свива?", MUSCLES, new Pick() {
            @Override public void pick(int i) {
                if (!uiTest) return;
                if (i == MUSCLES.length - 1) {
                    mapLevel = Math.min(60, mapLevel + 2);
                    final int nl = mapLevel;
                    link.post(new Runnable() {
                        @Override public void run() { link.write(Proto.intensity(ch, nl), "карта C" + ch + " +2"); }
                    });
                    askTitle.setText("Работи само C" + ch + " (сила " + nl + "). Кой мускул се свива?");
                    return;
                }
                mapResult[ch] = MUSCLES[i] + " (сила " + mapLevel + ")";
                onLog("КАРТА C" + ch + " = " + mapResult[ch]);
                link.post(new Runnable() {
                    @Override public void run() {
                        link.write(Proto.allOff(), "карта C" + ch + " край");
                        link.write(Proto.intensity(ch, 0), null);
                    }
                });
                mapNext(ch + 1);
            }
        });
    }

    void mapFinish() {
        hideAsk();
        StringBuilder r = new StringBuilder("Карта на каналите:\n");
        for (int ch = 1; ch <= 8; ch++) r.append("C").append(ch).append(" → ").append(mapResult[ch]).append('\n');
        final String text = r.toString();
        result.setText(text);
        uiTest = false;
        link.post(new Runnable() {
            @Override public void run() {
                link.log("===== КРАЙ НА КАРТАТА =====\n" + text);
                uploadProgramOnWorker();
                testBusy = false;
                main.post(new Runnable() {
                    @Override public void run() { saveLog(false); }
                });
            }
        });
    }

    /** Stops the heartbeat while a channel runs; the user taps when the suit stops by itself. */
    void wdStart() {
        if (!requireReady() || testBusy) return;
        if (!running || onMask() == 0) {
            result.setText("Първо пусни един канал на ниска сила с ▶ Старт, после натисни „Тест watchdog“.");
            return;
        }
        testBusy = true;
        uiTest = true;
        wdActive = true;
        heartbeatOn = false;
        link.heartbeatEnabled = false;
        paintToggles();
        wdFrom = link.lastSyncAt;
        onLog("===== WATCHDOG: heartbeat спрян, канали " + Proto.bits(onMask()) + " =====");
        result.setText("Чакам костюмът да спре сам…");
        ask("Heartbeat спрян. Натисни, когато костюмът спре:", new String[]{"Спря!", "Не спира"}, new Pick() {
            @Override public void pick(int i) { wdFinish(i == 0 ? 1 : 0); }
        });
    }

    /** stopped: 1 = the user saw it stop, 0 = says it keeps going, −1 = 40 s timeout. */
    void wdFinish(int stopped) {
        if (!wdActive) return;
        double secs = (SystemClock.elapsedRealtime() - wdFrom) / 1000.0;
        String msg = stopped == 1
                ? String.format(Locale.US, "WATCHDOG: костюмът спря %.1f s след последния heartbeat", secs)
                : String.format(Locale.US, "WATCHDOG: костюмът НЕ спря за %.1f s без heartbeat", secs);
        onLog(msg);
        result.setText(msg);
        wdActive = false;
        uiTest = false;
        heartbeatOn = true;
        link.heartbeatEnabled = true;
        paintToggles();
        hideAsk();
        running = false;
        showRunState();
        link.post(new Runnable() {
            @Override public void run() {
                link.write(Proto.allOff(), "watchdog край");
                link.write(Proto.sync(6), "heartbeat обратно");
                testBusy = false;
            }
        });
    }

    /** All channels with strength > 0 run without pause; battery read as fast as it answers, off / on / off. */
    void loadTest() {
        if (!requireReady() || testBusy) return;
        final int mask = onMask();
        if (mask == 0) {
            result.setText("Вдигни силата на каналите до ниво, което ясно усещаш (напр. 20–30), после „Батерия под товар“.");
            return;
        }
        testBusy = true;
        abort = false;
        running = false;
        final int[] lv = level.clone();
        final int fHz = hz, fW = widthUs, f1 = t1, f2 = t2, f3 = t3, f4 = t4, fWave = wave;
        result.setText("Батерия под товар: 5 s изкл · 8 s вкл · 5 s изкл…");
        link.post(new Runnable() {
            @Override public void run() {
                String rep;
                try {
                    StringBuilder l = new StringBuilder();
                    for (int ch = 1; ch <= 8; ch++) l.append(" C").append(ch).append('=').append(lv[ch]);
                    link.log("===== БАТЕРИЯ ПОД ТОВАР:" + l + ", " + fHz + " Hz, " + fW + " µs =====");
                    link.write(Proto.allOff(), "товар");
                    for (int ch = 1; ch <= 8; ch++) writeChannelProgram(ch, fHz, fW, 0, 60000, 0, 0, -1, false);
                    double[] a = phase("изкл", 5000);
                    link.write(Proto.enable(mask), "товар ВКЛ");
                    double[] b = phase("вкл", 8000);
                    link.write(Proto.allOff(), "товар ИЗКЛ");
                    double[] c = phase("изкл 2", 5000);
                    double offMean = (a[1] + c[1]) / 2, drop = offMean - b[1];
                    rep = String.format(Locale.US,
                            "изкл:   %3.0f отчета, средно %.1f (%.0f–%.0f)%n"
                                    + "вкл:    %3.0f отчета, средно %.1f (%.0f–%.0f)%n"
                                    + "изкл 2: %3.0f отчета, средно %.1f (%.0f–%.0f)%n"
                                    + "Спад при товар: %.1f raw = %.1f mV%n%s",
                            a[0], a[1], a[2], a[3], b[0], b[1], b[2], b[3], c[0], c[1], c[2], c[3], drop, drop * 2.4,
                            Math.abs(drop) < 1.0
                                    ? "Батерията НЕ реагира на товара → проверка на електродите през батерията не става."
                                    : "Батерията реагира на товара → проверката на електродите е възможна при тази сила.");
                } finally {
                    link.write(Proto.allOff(), "товар край");
                    for (int ch = 1; ch <= 8; ch++) writeChannelProgram(ch, fHz, fW, f1, f2, f3, f4, fWave, false);
                    testBusy = false;
                }
                link.log("===== КРАЙ =====\n" + rep);
                final String text = rep;
                main.post(new Runnable() {
                    @Override public void run() { result.setText(text); showRunState(); saveLog(false); }
                });
            }
        });
    }

    /** Worker thread: battery readings for ms → {count, mean, min, max}. */
    double[] phase(String name, int ms) {
        long end = SystemClock.elapsedRealtime() + ms;
        double n = 0, sum = 0, mn = Double.MAX_VALUE, mx = 0;
        while (!abort && SystemClock.elapsedRealtime() < end) {
            int raw = link.readBattery(800, null);
            if (raw > 0) { n++; sum += raw; mn = Math.min(mn, raw); mx = Math.max(mx, raw); }
        }
        if (n == 0) return new double[]{0, Double.NaN, 0, 0};
        link.log(String.format(Locale.US, "  %s: %d отчета, средно %.2f (%.0f–%.0f)", name, (int) n, sum / n, mn, mx));
        return new double[]{n, sum / n, mn, mx};
    }

    // =====================================================================================
    // automatic test — no person in the suit, no answers needed; the log is the result

    static final int AUTO_LEVEL = 30;

    void autoAsk() {
        if (!requireReady() || testBusy) return;
        ask("Автоматичният тест пуска каналите до сила " + AUTO_LEVEL + ". Костюмът НЕ трябва да е облечен.",
                new String[]{"Започни", "Отказ"}, new Pick() {
                    @Override public void pick(int i) {
                        hideAsk();
                        if (i == 0) autoTest();
                    }
                });
    }

    final StringBuilder auto = new StringBuilder();

    void say(String line) {
        auto.append(line).append('\n');
        link.log("» " + line);
        final String t = auto.toString();
        main.post(new Runnable() {
            @Override public void run() { result.setText(t); }
        });
    }

    void autoTest() {
        testBusy = true;
        abort = false;
        running = false;
        Arrays.fill(level, 0);
        refreshLevels();
        auto.setLength(0);
        result.setText("Авто тест…");
        link.post(new Runnable() {
            @Override public void run() {
                long t0 = SystemClock.elapsedRealtime();
                try {
                    link.log("================ АВТО ТЕСТ ================");
                    autoSpeed();
                    if (!abort) autoBatteryIdle();
                    if (!abort) autoRead();
                    java.util.Map<String, String> idle = abort ? null : autoSweep("изход ИЗКЛ");
                    if (!abort) autoProgram(false);
                    if (!abort) autoLoadAll(idle);
                    if (!abort) autoPerChannel(idle);
                    if (!abort) autoWatchdog(idle);
                    if (!abort) autoParams();
                } catch (Throwable t) {
                    say("ГРЕШКА: " + t);
                } finally {
                    link.heartbeatEnabled = heartbeatOn;
                    link.write(Proto.allOff(), "авто край");
                    for (int ch = 1; ch <= 8; ch++) link.write(Proto.intensity(ch, 0), null);
                    if (!abort) uploadProgramOnWorker();
                    say(abort ? "ПРЕКЪСНАТ." : String.format(Locale.US, "ГОТОВО за %d s — натисни „Сподели“ и прати лога.",
                            (SystemClock.elapsedRealtime() - t0) / 1000));
                    link.log("================ КРАЙ НА АВТО ТЕСТА ================\n" + auto);
                    testBusy = false;
                    main.post(new Runnable() {
                        @Override public void run() { saveLog(true); showRunState(); }
                    });
                }
            }
        });
    }

    /** 1. How fast frames go out and the battery answers (HIGH priority). */
    void autoSpeed() {
        say("1/8 Скорост на връзката");
        long sum = 0, mx = 0;
        int ok = 0;
        long t = SystemClock.elapsedRealtime();
        for (int i = 0; i < 40 && !abort; i++) {
            long dt = link.write(Proto.sync(6), "скорост");
            if (dt >= 0) { ok++; sum += dt; mx = Math.max(mx, dt); }
        }
        long total = SystemClock.elapsedRealtime() - t;
        say(String.format(Locale.US, "   запис→ACK: %d/40, средно %d ms, макс %d ms, %.1f кадъра/s",
                ok, ok > 0 ? sum / ok : -1, mx, 40000.0 / Math.max(1, total)));
    }

    /** 2. Battery noise with everything off. */
    void autoBatteryIdle() {
        say("2/8 Батерия в покой (5 s)");
        double[] a = phase("покой", 5000);
        say(String.format(Locale.US, "   %d отчета, средно %.2f raw = %.3f V (%.0f–%.0f)", (int) a[0], a[1],
                a[1] * 0.0024, a[2], a[3]));
    }

    /** 3. Does a plain GATT read of FE51 return anything? */
    void autoRead() {
        say("3/8 GATT четене на FE51");
        byte[] v = link.readChar();
        say("   " + (v == null ? "няма отговор" : Proto.hex(v) + "  " + Proto.decode(v)));
    }

    /** STATUS / VER requests; the battery query is STATUS 0x08 01 0000 — look for other readable values. */
    static int[] sweepCodes() {
        List<Integer> c = new ArrayList<Integer>();
        for (int k = 0; k <= 0x1F; k++) c.add(0x08000000 | (k << 16));
        for (int n = 1; n <= 8; n++) c.add(0x08010000 | n);
        for (int n = 1; n <= 8; n++) c.add(0x08000000 | (n << 4 << 16));
        int[] r = new int[c.size()];
        for (int i = 0; i < r.length; i++) r[i] = c.get(i);
        return r;
    }

    /** Returns code → reply hex for every request (outputs as they are now). */
    java.util.Map<String, String> autoSweep(String when) {
        say("Регистри (" + when + "): заявки към STATUS и VER");
        java.util.Map<String, String> m = new java.util.LinkedHashMap<String, String>();
        int answered = 0;
        for (int code : sweepCodes()) {
            if (abort) break;
            byte[] r = link.query(Proto.frame(0, Proto.G_STATUS, code), "проба", 250);
            String k = String.format("STATUS %08X", code);
            m.put(k, r == null ? "-" : Proto.hex(r));
            if (r != null) answered++;
        }
        for (int v : new int[]{0, 1, 0x08000000}) {
            if (abort) break;
            byte[] r = link.query(Proto.frame(0, Proto.G_VER, v), "проба VER", 300);
            m.put(String.format("VER %08X", v), r == null ? "-" : Proto.hex(r));
            if (r != null) answered++;
        }
        StringBuilder sb = new StringBuilder();
        for (java.util.Map.Entry<String, String> e : m.entrySet()) {
            if (!"-".equals(e.getValue())) sb.append("   ").append(e.getKey()).append(" → ").append(e.getValue()).append('\n');
        }
        say("   отговорили: " + answered + " от " + m.size() + (sb.length() > 0 ? "\n" + sb.toString().replaceAll("\n$", "") : ""));
        return m;
    }

    String diff(java.util.Map<String, String> a, java.util.Map<String, String> b) {
        if (a == null || b == null) return "";
        StringBuilder sb = new StringBuilder();
        for (java.util.Map.Entry<String, String> e : b.entrySet()) {
            String before = a.get(e.getKey());
            if (before != null && !before.equals(e.getValue())) {
                sb.append("   РАЗЛИКА ").append(e.getKey()).append(": ").append(before).append(" → ").append(e.getValue()).append('\n');
            }
        }
        return sb.toString();
    }

    /** Only the requests that answered with outputs off (fast re-check while running). */
    java.util.Map<String, String> quickSweep(java.util.Map<String, String> idle) {
        java.util.Map<String, String> m = new java.util.LinkedHashMap<String, String>();
        if (idle == null) return m;
        for (java.util.Map.Entry<String, String> e : idle.entrySet()) {
            if (abort) break;
            if ("-".equals(e.getValue()) || !e.getKey().startsWith("STATUS")) continue;
            int code = (int) Long.parseLong(e.getKey().substring(7), 16);
            byte[] r = link.query(Proto.frame(0, Proto.G_STATUS, code), "проба", 250);
            m.put(e.getKey(), r == null ? "-" : Proto.hex(r));
        }
        return m;
    }

    /** Continuous output (no ramps, no pause) on every channel, intensity 0. */
    void autoProgram(boolean quiet) {
        if (!quiet) say("Програма без пауза за теста: " + hz + " Hz, " + widthUs + " µs");
        link.write(Proto.reset(), "авто");
        for (int ch = 1; ch <= 8; ch++) writeChannelProgram(ch, hz, widthUs, 0, 60000, 0, 0, -1, true);
        link.write(Proto.allOff(), "авто");
    }

    /** 4. All eight channels at AUTO_LEVEL, no body: battery and registers vs idle. */
    void autoLoadAll(java.util.Map<String, String> idle) {
        say("4/8 Всички канали на сила " + AUTO_LEVEL + " (отворена верига, без тяло)");
        double[] off = phase("изкл", 3000);
        for (int ch = 1; ch <= 8; ch++) link.write(Proto.intensity(ch, AUTO_LEVEL), null);
        link.write(Proto.enable(0xFF), "всички ВКЛ");
        double[] on = phase("вкл", 6000);
        java.util.Map<String, String> run = quickSweep(idle);
        link.write(Proto.allOff(), "всички ИЗКЛ");
        for (int ch = 1; ch <= 8; ch++) link.write(Proto.intensity(ch, 0), null);
        double[] off2 = phase("изкл 2", 3000);
        double drop = (off[1] + off2[1]) / 2 - on[1];
        say(String.format(Locale.US, "   батерия: изкл %.2f · вкл %.2f · изкл %.2f → спад %.2f raw (%.1f mV)",
                off[1], on[1], off2[1], drop, drop * 2.4));
        String d = diff(idle, run);
        say(d.isEmpty() ? "   регистри: без промяна при включен изход" : "   регистри се ПРОМЕНЯТ при включен изход:\n" + d);
    }

    /** 5. Each channel alone at AUTO_LEVEL: battery and registers. */
    void autoPerChannel(java.util.Map<String, String> idle) {
        say("5/8 Всеки канал сам на сила " + AUTO_LEVEL);
        for (int ch = 1; ch <= 8 && !abort; ch++) {
            double[] a = phase("C" + ch + " изкл", 1200);
            link.write(Proto.intensity(ch, AUTO_LEVEL), null);
            link.write(Proto.enable(1 << (ch - 1)), "C" + ch + " сам");
            double[] b = phase("C" + ch + " вкл", 2500);
            java.util.Map<String, String> run = quickSweep(idle);
            link.write(Proto.allOff(), null);
            link.write(Proto.intensity(ch, 0), null);
            String d = diff(idle, run);
            say(String.format(Locale.US, "   C%d %-11s батерия %.2f → %.2f (спад %.2f raw)%s", ch, CH_NAMES[ch],
                    a[1], b[1], a[1] - b[1], d.isEmpty() ? "" : "\n" + d.replaceAll("\n$", "")));
        }
    }

    /** 6. Heartbeat stopped with outputs on: does any register change after ~6 s? */
    void autoWatchdog(java.util.Map<String, String> idle) {
        say("6/8 Watchdog: всички канали на " + AUTO_LEVEL + ", heartbeat спрян 15 s");
        for (int ch = 1; ch <= 8; ch++) link.write(Proto.intensity(ch, AUTO_LEVEL), null);
        link.write(Proto.sync(6), "последен heartbeat");
        long from = SystemClock.elapsedRealtime();
        link.heartbeatEnabled = false;
        link.write(Proto.enable(0xFF), "всички ВКЛ");
        java.util.Map<String, String> first = null;
        while (!abort && SystemClock.elapsedRealtime() - from < 15000) {
            SystemClock.sleep(2500);
            java.util.Map<String, String> m = quickSweep(idle);
            long s = (SystemClock.elapsedRealtime() - from) / 1000;
            if (first == null) {
                first = m;
                say("   " + s + " s: снимка на регистрите");
            } else {
                String d = diff(first, m);
                say("   " + s + " s: " + (d.isEmpty() ? "без промяна" : "\n" + d.replaceAll("\n$", "")));
            }
        }
        link.heartbeatEnabled = heartbeatOn;
        link.write(Proto.allOff(), "watchdog край");
        for (int ch = 1; ch <= 8; ch++) link.write(Proto.intensity(ch, 0), null);
        link.write(Proto.sync(6), "heartbeat обратно");
    }

    /** 7–8. Every parameter at its limits is ACKed? (no output). */
    void autoParams() {
        say("7/8 Граници на параметрите (изход изключен)");
        int okHz = 0, okW = 0, okWave = 0;
        for (int hzv : new int[]{1, 7, 50, 85, 120, 150, 200, 500, 1000}) if (link.write(Proto.hz(1, hzv), "граница Hz") >= 0) okHz++;
        for (int w : new int[]{50, 100, 200, 300, 400, 450, 500, 511}) if (link.write(Proto.width(1, w), "граница µs") >= 0) okW++;
        for (int wv = 0; wv <= 3; wv++) if (link.write(Proto.waveform(1, wv), "форма") >= 0) okWave++;
        say("   ACK: Hz " + okHz + "/9, ширина " + okW + "/8, форма " + okWave + "/4 (ACK = приет кадър, не доказва ефект)");
        say("8/8 Нулиране и обикновена програма");
        link.write(Proto.reset(), "авто");
        autoProgram(true);
    }

    // =====================================================================================
    // periodic
    /** EMSFIT sends SYNC(6) every 4.5 s; long jobs slip their own heartbeats in (Link.keepAlive). */
    final class HeartbeatTick implements Runnable {
        @Override public void run() {
            if (heartbeatOn && link.ready()) {
                link.post(new Runnable() {
                    @Override public void run() { link.keepAlive(3000); }
                });
            }
            main.postDelayed(this, 1500);
        }
    }

    final class BatteryTick implements Runnable {
        @Override public void run() {
            if (batteryPollOn && link.ready() && !testBusy && !wdActive) {
                link.post(new Runnable() {
                    @Override public void run() { link.readBattery(1500, null); }
                });
            }
            main.postDelayed(this, 10000);
        }
    }

    final class Ticker implements Runnable {
        @Override public void run() {
            if (link.ready() && !heartbeatOn && link.lastSyncAt > 0) {
                long s = (SystemClock.elapsedRealtime() - link.lastSyncAt) / 1000;
                status.setText("Готов · без heartbeat от " + s + " s");
                if (wdActive) askTitle.setText("Heartbeat спрян от " + s + " s. Натисни, когато костюмът спре:");
                if (wdActive && s >= 40) wdFinish(-1);
            }
            main.postDelayed(this, 1000);
        }
    }

    final class LogFlush implements Runnable {
        @Override public void run() {
            if (logDirty) {
                logDirty = false;
                String tail;
                synchronized (logBuf) {
                    int from = Math.max(0, logBuf.length() - 60000);
                    tail = logBuf.substring(from);
                }
                logView.setText(tail);
                logScroll.post(new Runnable() {
                    @Override public void run() { logScroll.fullScroll(View.FOCUS_DOWN); }
                });
            }
            main.postDelayed(this, 300);
        }
    }

    // =====================================================================================
    // log file
    String logText() {
        synchronized (logBuf) { return logBuf.toString(); }
    }

    void saveLog(boolean announce) {
        String name = "xems-btprobe-" + startedAt + ".txt";
        byte[] data;
        try { data = logText().getBytes("UTF-8"); } catch (Exception e) { return; }
        try {
            if (Build.VERSION.SDK_INT >= 29) {
                ContentValues cv = new ContentValues();
                cv.put(MediaStore.MediaColumns.DISPLAY_NAME, name);
                cv.put(MediaStore.MediaColumns.MIME_TYPE, "text/plain");
                cv.put(MediaStore.MediaColumns.RELATIVE_PATH, Environment.DIRECTORY_DOWNLOADS);
                Uri uri = savedUri;
                if (uri == null) {
                    uri = getContentResolver().insert(MediaStore.Downloads.EXTERNAL_CONTENT_URI, cv);
                    savedUri = uri;
                }
                if (uri == null) throw new IllegalStateException("MediaStore insert");
                OutputStream os = getContentResolver().openOutputStream(uri, "wt");
                os.write(data);
                os.close();
            } else {
                File dir = getExternalFilesDir(null);
                File f = new File(dir, name);
                FileOutputStream os = new FileOutputStream(f);
                os.write(data);
                os.close();
            }
            if (announce) onLog("Логът е записан: Download/" + name);
        } catch (Exception e) {
            if (announce) onLog("Логът не се записа: " + e);
        }
    }

    Uri savedUri;

    void shareLog() {
        saveLog(false);
        String t = logText();
        if (t.length() > 400000) t = "…(начало отрязано — пълният лог е в Download)\n" + t.substring(t.length() - 400000);
        Intent i = new Intent(Intent.ACTION_SEND);
        i.setType("text/plain");
        i.putExtra(Intent.EXTRA_SUBJECT, "XEMS BT Probe лог " + startedAt);
        i.putExtra(Intent.EXTRA_TEXT, t);
        startActivity(Intent.createChooser(i, "Сподели лога"));
    }
}
