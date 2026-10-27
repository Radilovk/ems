package com.isaigu.gymapp.wearable.mastogo;

import android.app.Activity;
import android.bluetooth.BluetoothDevice;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Typeface;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.Looper;
import android.text.InputType;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.EditorInfo;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

import com.isaigu.gymapp.bodytech.SuitStandard;
import com.isaigu.gymapp.wearable.WearableBlePermissions;
import com.isaigu.gymapp.widget.XemsGuard;
import com.isaigu.gymapp.widget.XemsLang;
import com.isaigu.gymapp.widget.XemsUi;

import java.util.ArrayList;
import java.util.List;

/**
 * The MASTOGO page (menu → "Mastogo"): the H-024B TENS / EMS unit, apart from the suit — owner, 2026-10-27 ("I want
 * the maximum from the hardware: parameters, refresh, feedback"). Landscape: on the left three tabs — "Модули"
 * (the unit's 26 programs with their Hz / width, {@link MastogoModes}, and the minutes), "Импулс" (the strength drawn
 * over time from here: work / pause, wave, impulses, ramp, triangle, random, and modules taken in turn —
 * {@link MastogoShell#modulate}) and "Изследване"
 * (a sweep of read-only queries for commands the vendor app never sends, the full feedback, a console and a copyable
 * report); on the right the unit — strength big, time left, battery, contact; one primary button ▶ / ■.
 * The unit is found and linked by itself. ✕ stops the output. Only on an unlocked (admin) tablet.
 */
public final class MastogoScreen {
    static final String PREFS = "xems_mastogo";
    static final int TINT = 0xFFA78BFA;
    static final int[] MINUTES = {10, 15, 20, 30, 45, 60};

    private MastogoScreen() {}

    static Page current;

    public static boolean allowed() {
        return SuitStandard.unlocked();
    }

    public static void open(Activity a) {
        try {
            if (!allowed()) {
                return;
            }
            Page c = current;
            if (c != null && !c.closed) {
                if (c.a == a && !a.isFinishing()) {
                    c.s.dialog.show();
                    return;
                }
                try {
                    c.s.dialog.dismiss();
                } catch (Throwable ignored) {
                }
            }
            current = new Page(a);
            current.show();
        } catch (Throwable t) {
            XemsGuard.report("MastogoScreen.open", t);
        }
    }

    static String tr(String bg, String en) {
        return XemsLang.tr(bg, en);
    }

    /**
     * The 26 firmware programs as universal modules (owner, 2026-10-27: "not for parts of the body — universal"), in
     * DOMAS's groups and names (massage techniques), with frequency, width, feel and DOMAS's picture of the impulse
     * ({@link MastogoModes}).
     */
    static String modeName(int id) {
        return id < 0 ? "—" : (id + 1) + " " + MastogoModes.name(id, XemsLang.isBg());
    }

    static int groupOf(int id) {
        return MastogoModes.group(id);
    }

    static String groupName(int g) {
        switch (g) {
            case MastogoModes.MASSAGE: return tr("Масаж", "Massage");
            case MastogoModes.TENS: return "TENS";
            case MastogoModes.EMS: return "EMS";
            default: return tr("Женски", "Female");
        }
    }

    static String shapeName(int s) {
        switch (s) {
            case MastogoShell.Mod.STEPS: return tr("Свой цикъл", "Own cycle");
            case MastogoShell.Mod.WORK: return tr("Работа / Пауза", "Work / Pause");
            case MastogoShell.Mod.PULSE: return tr("Импулси", "Impulses");
            case MastogoShell.Mod.RAMP: return tr("Нарастване", "Ramp");
            case MastogoShell.Mod.TRIANGLE: return tr("Триъгълник", "Triangle");
            case MastogoShell.Mod.RANDOM: return tr("Случайно", "Random");
            default: return tr("Вълна", "Wave");
        }
    }

    static String offName(int r) {
        switch (r) {
            case 0: return tr("изключи се — дълго без ток", "off — idle too long");
            case 1: return tr("изключи се — твърде дълго работи", "off — ran too long");
            case 2: return tr("изключи се — слаба батерия", "off — low battery");
            case 3: return tr("изключен от бутона", "off by its button");
            default: return tr("изключи се", "switched off");
        }
    }

    static String mmss(int s) {
        return (s / 60) + ":" + (s % 60 < 10 ? "0" : "") + (s % 60);
    }

    // ====================================================================== the page

    static final class Page implements MastogoScan.Listener, MastogoLink.Listener, MastogoShell.Events {
        final Activity a;
        final Handler main = new Handler(Looper.getMainLooper());
        final SharedPreferences prefs;
        XemsUi.Shell s;
        MastogoScan scan;
        MastogoLink link;
        boolean closed;

        int tab;
        int mode;
        int minutes;
        MastogoShell.Mod mod;
        boolean modOn;
        String hintText;
        boolean probeArmed;
        /** The armed (or running) sweep is the write one. */
        boolean armWrite;
        final List<String> console = new ArrayList<String>();

        LinearLayout tabHolder;
        LinearLayout tabBody;
        TextView unitName;
        TextView linkBadge;
        TextView battery;
        TextView contact;
        XemsUi.Stepper level;
        TextView clock;
        TextView clockLabel;
        TextView facts;
        TextView hint;
        TextView go;
        int goStyle = -1;
        // live panel ("Пулт"): the XBody-style manual screen
        MastogoShell.Mod live;
        /** The running modulation is the panel's (not the "Импулс" tab's). */
        boolean liveRun;
        /** The strength ▶ starts at (set with − / + before it), manual mode. */
        int startLevel;
        final XemsUi.Stepper[] liveSt = new XemsUi.Stepper[6];
        PhaseView phase;
        TextView phaseText;
        TextView liveInfo;
        // tilt: the tablet's tilt drives the impulse strength (owner, 2026-10-27, a test) — off on every open
        boolean tiltOn;
        Tilt tilt;
        /** Tilt angle at the zero (−1 = take the next reading), the latest angle, degrees. */
        float tiltZero = -1, tiltDeg;
        /** The impulse strength the tilt gives now (−1 = none yet). */
        int tiltHi = -1;
        static final float TILT_FULL = 30f;
        // a hit (VR idea): the way and its length, kept
        /** Each feeling's length, ms (the squeeze has none: it lasts while held). */
        final int[] fxMs = new int[FX.length];
        /**
         * The background between feelings: 0 = nothing between them (owner, 2026-10-27: tying it to the panel's
         * pause strength in 1.1.475 left the output running at 13 "and it does not stop"). Only raised on purpose.
         */
        int fxBase;
        XemsUi.Stepper fxBaseSt;
        TextView hitInfo;
        // modules tab
        final TextView[] tiles = new TextView[MastogoShell.MODES];
        // modulation tab
        EnvelopeView env;
        LinearLayout rotRow;
        TextView rotSum;
        // exploration tab
        TextView probeBtn;
        TextView writeBtn;
        TextView probeText;
        LinearLayout hitList;
        TextView consoleView;
        ScrollView consoleScroll;
        TextView feedback;

        Page(Activity a) {
            this.a = a;
            prefs = a.getApplicationContext().getSharedPreferences(PREFS, Context.MODE_PRIVATE);
            tab = prefs.getInt("tab", 0);
            mode = prefs.getInt("mode", 0);
            minutes = prefs.getInt("minutes", 20);
            mod = MastogoShell.Mod.decode(prefs.getString("mod", new MastogoShell.Mod().encode()));
            startLevel = prefs.getInt("start_level", 1);
            for (int i = 0; i < FX.length; i++) {
                fxMs[i] = prefs.getInt("fx_ms_" + i, FX_MS[i]);
            }
            fxBase = 0;                                     // never carried over: every open starts silent
            live = MastogoShell.Mod.decode(prefs.getString("live", ""));
            if (!prefs.contains("live")) {
                live.lo = 0;
                live.hi = 8;
            }
            live.shape = MastogoShell.Mod.WORK;
            live.rotate = new int[0];
            live.gate = true;
            if (!MastogoModes.sharp(live.carrier)) {
                live.carrier = 18;
            }
            if (live.carrier < 0) {
                live.carrier = 18;                  // DOMAS "Continuous", 77 Hz — a steady carrier
            }
            live.stepMs = 100;
            live.safe();
            modOn = prefs.getBoolean("mod_on", false);
        }

        int dp(float v) {
            return XemsUi.dp(a, v);
        }

        String moduleText(int id) {
            return id < 0 ? "—" : modeName(id) + " · " + MastogoModes.hz(id);
        }

        /** Two lines: name, then frequency (≈ = a steady carrier). */
        String chipName(int id) {
            return modeName(id) + "\n" + (MastogoModes.steady(id) ? "≈ " : MastogoModes.sharp(id) ? "◆ " : "")
                    + MastogoModes.hz(id);
        }

        /** A module chip with DOMAS's picture of its impulse above the text. */
        TextView moduleChip(int id, boolean on, int tint) {
            TextView chip = XemsUi.chip(a, chipName(id), on, tint);
            chip.setTextSize(12.5f);
            chip.setMaxLines(2);
            chip.setPadding(dp(8), dp(6), dp(8), dp(6));
            WaveDrawable w = new WaveDrawable(id, on ? tint : XemsUi.MUTED);
            w.setBounds(0, 0, dp(84), dp(18));
            chip.setCompoundDrawables(null, w, null, null);
            chip.setCompoundDrawablePadding(dp(4));
            return chip;
        }

        MastogoShell sh() {
            return link != null && link.state == MastogoLink.READY ? link.shell : null;
        }

        // ------------------------------------------------------------------ layout

        void show() {
            XemsUi.init(a);
            s = XemsUi.shell(a, "Mastogo", tr("TENS / EMS апаратче H-024B — отделно от костюма",
                    "H-024B TENS / EMS unit — apart from the suit"), 1280);
            Window w = s.dialog.getWindow();
            if (w != null) {
                android.util.DisplayMetrics dm = a.getResources().getDisplayMetrics();
                w.setLayout(Math.min(dp(1280), (int) (dm.widthPixels * 0.96f)), (int) (dm.heightPixels * 0.94f));
                WindowManager.LayoutParams lp = w.getAttributes();
                lp.dimAmount = 0.45f;
                w.setAttributes(lp);
            }
            s.info.setVisibility(View.VISIBLE);
            s.info.setOnClickListener(new Info(this));

            LinearLayout row = XemsUi.horizontal(a);
            LinearLayout left = XemsUi.vertical(a);
            String[] tabs = {tr("Пулт", "Panel"), tr("Модули", "Modules"), tr("Импулс", "Impulse"),
                tr("Изследване", "Explore")};
            tabHolder = XemsUi.vertical(a);
            tabHolder.addView(XemsUi.segmented(a, tabs, tab, new Tab(this)));
            left.addView(tabHolder);
            tabBody = XemsUi.vertical(a);
            left.addView(tabBody, XemsUi.matchWrap(a, 14));
            row.addView(left, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.35f));
            LinearLayout right = unitCard();
            LinearLayout.LayoutParams rp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
            rp.leftMargin = dp(18);
            row.addView(right, rp);
            s.body.addView(row, XemsUi.matchWrap(a, 4));

            hint = XemsUi.text(a, "", 14, XemsUi.MUTED, false);
            hint.setGravity(Gravity.CENTER_VERTICAL);
            s.footer.addView(hint, new LinearLayout.LayoutParams(0, dp(56), 1f));
            go = XemsUi.button(a, "", XemsUi.PRIMARY);
            go.setOnClickListener(new Go(this));
            LinearLayout.LayoutParams gp = new LinearLayout.LayoutParams(dp(260), dp(56));
            gp.leftMargin = dp(16);
            s.footer.addView(go, gp);

            fillTab();
            render();
            s.dialog.setOnDismissListener(new Dismissed(this));
            s.dialog.show();
            main.postDelayed(new Tick(this), 500);
            WearableBlePermissions.ensureConnectPermission(a, new StartScan(this));
        }

        LinearLayout unitCard() {
            LinearLayout c = XemsUi.card(a);
            c.setPadding(dp(18), dp(16), dp(18), dp(16));
            LinearLayout top = XemsUi.horizontal(a);
            top.setGravity(Gravity.CENTER_VERTICAL);
            unitName = XemsUi.text(a, "MASTOGO H-024B", 17, XemsUi.TEXT, true);
            top.addView(unitName, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            linkBadge = XemsUi.badge(a, "", XemsUi.MUTED);
            top.addView(linkBadge);
            c.addView(top);

            LinearLayout st = XemsUi.horizontal(a);
            battery = XemsUi.text(a, "", 13, XemsUi.MUTED, false);
            contact = XemsUi.text(a, "", 13, XemsUi.MUTED, true);
            st.addView(battery, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            st.addView(contact);
            c.addView(st, XemsUi.matchWrap(a, 6));

            level = XemsUi.stepper(a, "0", tr("сила от 25", "strength of 25"), 56, new Step(this));
            c.addView(level.view, XemsUi.matchWrap(a, 14));

            LinearLayout cl = XemsUi.horizontal(a);
            cl.setGravity(Gravity.BOTTOM);
            clock = XemsUi.text(a, "—", 34, XemsUi.TEXT, true);
            clockLabel = XemsUi.text(a, "", 13, XemsUi.MUTED, false);
            clockLabel.setPadding(dp(10), 0, 0, dp(6));
            cl.addView(clock);
            cl.addView(clockLabel);
            c.addView(cl, XemsUi.matchWrap(a, 12));

            facts = XemsUi.text(a, "", 12.5f, XemsUi.HINT, false);
            c.addView(facts, XemsUi.matchWrap(a, 8));
            return c;
        }

        void setTab(int i) {
            tab = i;
            prefs.edit().putInt("tab", i).apply();
            tabHolder.removeAllViews();
            String[] tabs = {tr("Пулт", "Panel"), tr("Модули", "Modules"), tr("Импулс", "Impulse"),
                tr("Изследване", "Explore")};
            tabHolder.addView(XemsUi.segmented(a, tabs, tab, new Tab(this)));
            fillTab();
            render();
        }

        void fillTab() {
            tabBody.removeAllViews();
            env = null;
            rotRow = null;
            rotSum = null;
            stepRow = null;
            java.util.Arrays.fill(tiles, null);
            probeBtn = null;
            writeBtn = null;
            probeText = null;
            hitList = null;
            consoleView = null;
            feedback = null;
            java.util.Arrays.fill(liveSt, null);
            phase = null;
            phaseText = null;
            liveInfo = null;
            hitInfo = null;
            java.util.Arrays.fill(fxSt, null);
            if (tab == 0) {
                fillPult();
            } else if (tab == 2) {
                fillMod();
            } else if (tab == 3) {
                fillExplore();
            } else {
                fillProgram();
            }
            XemsUi.enter(tabBody);
        }

        // ------------------------------------------------------------------ tab: live panel

        static final int F_L_HZ = 30, F_L_ON = 31, F_L_OFF = 32, F_L_UP = 33, F_L_DOWN = 34, F_L_LO = 35;
        /** Simulated beats a second ×10 (one pulse of DOMAS "Toning" let through per beat). */
        static final int[] BEATS = {5, 10, 15, 20, 25, 30, 40};
        static final int BEAT_CARRIER = 19;
        /**
         * The panel's frequency − / + list, low to high: the simulated beats (code = −tenths), then the sharp carriers
         * by their (first) frequency (code = module id).
         */
        static final int[] FREQS = freqs();

        static int[] freqs() {
            Integer[] ids = new Integer[MastogoModes.SHARP.length];
            for (int i = 0; i < ids.length; i++) {
                ids[i] = MastogoModes.SHARP[i];
            }
            java.util.Arrays.sort(ids, new ByHz());
            int[] out = new int[BEATS.length + ids.length];
            for (int i = 0; i < BEATS.length; i++) {
                out[i] = -BEATS[i];
            }
            for (int i = 0; i < ids.length; i++) {
                out[BEATS.length + i] = ids[i];
            }
            return out;
        }

        int freqCode() {
            return live.beatTenths > 0 ? -live.beatTenths : live.carrier;
        }

        static double firstHz(int id) {
            String h = MastogoModes.hz(id);
            int e = 0;
            while (e < h.length() && (Character.isDigit(h.charAt(e)) || h.charAt(e) == '.')) {
                e++;
            }
            try {
                return Double.parseDouble(h.substring(0, e));
            } catch (Throwable t) {
                return 0;
            }
        }

        MastogoShell.Mod active() {
            return liveRun ? live : mod;
        }

        /**
         * Owner, 2026-10-27: "like we change the parameters on XEMS, XBody — change them in real time". The XBody
         * manual-training layout: big parameter tiles changed live (− / +, hold repeats), the phase box under them
         * (impulse green, pause grey, seconds counting), strength and time on the right card, ▶ / ■ below.
         */
        void fillPult() {
            LinearLayout r1 = XemsUi.horizontal(a);
            pultTile(r1, tr("ЧЕСТОТА", "FREQUENCY"), F_L_HZ);
            pultTile(r1, tr("ИМПУЛС", "IMPULSE"), F_L_ON);
            pultTile(r1, tr("ПАУЗА", "PAUSE"), F_L_OFF);
            tabBody.addView(r1);
            LinearLayout r2 = XemsUi.horizontal(a);
            pultTile(r2, tr("НАРАСТВАНЕ", "RISE"), F_L_UP);
            pultTile(r2, tr("СПАДАНЕ", "FALL"), F_L_DOWN);
            pultTile(r2, tr("СИЛА В ПАУЗАТА", "PAUSE STRENGTH"), F_L_LO);
            tabBody.addView(r2, XemsUi.matchWrap(a, 10));

            LinearLayout box = XemsUi.card(a);
            box.setPadding(dp(16), dp(10), dp(16), dp(12));
            phaseText = XemsUi.text(a, "", 22, XemsUi.TEXT, true);
            box.addView(phaseText);
            phase = new PhaseView(a, this);
            LinearLayout.LayoutParams pl = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(34));
            pl.topMargin = dp(8);
            box.addView(phase, pl);
            tabBody.addView(box, XemsUi.matchWrap(a, 12));
            fillHit();
            tabBody.addView(XemsUi.toggleRow(a, tr("Наклон управлява силата", "Tilt drives the strength"),
                    tr("Наклони таблета: 0° = силата в паузата, 30° = силата вдясно (никога повече). Нулата е "
                            + "положението при включване и при ▶.", "Tilt the tablet: 0° = the pause strength, 30° = "
                            + "the strength on the right (never more). Zero = the position when switched on and at ▶."),
                    tiltOn, new TiltToggle(this)), XemsUi.matchWrap(a, 8));
            liveInfo = XemsUi.text(a, "", 12.5f, XemsUi.HINT, false);
            tabBody.addView(liveInfo, XemsUi.matchWrap(a, 8));
            renderPult();
        }

        void pultTile(LinearLayout row, String label, int f) {
            LinearLayout col = XemsUi.card(a);
            col.setPadding(dp(10), dp(8), dp(10), dp(10));
            col.addView(XemsUi.label(a, label));
            XemsUi.Stepper st = XemsUi.stepper(a, "", "", 28, new ModStep(this, f));
            col.addView(st.view, XemsUi.matchWrap(a, 6));
            liveSt[f - F_L_HZ] = st;
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
            if (row.getChildCount() > 0) {
                lp.leftMargin = dp(10);
            }
            row.addView(col, lp);
        }

        void renderPult() {
            if (liveSt[0] == null) {
                return;
            }
            boolean bg = XemsLang.isBg();
            int c = live.carrier;
            if (live.beatTenths > 0) {
                liveSt[0].set(String.format(java.util.Locale.US, "%.1f Hz", live.beatTenths / 10f),
                        tr("удари: по един импулс от ", "beats: one pulse of ") + MastogoModes.name(c, bg));
            } else {
                liveSt[0].set(MastogoModes.hz(c), (MastogoModes.steady(c) ? "≈ " : "◆ ") + MastogoModes.name(c, bg)
                        + " · " + MastogoModes.width(c));
            }
            liveSt[1].set(secs(live.onMs), tr("секунди", "seconds"));
            liveSt[2].set(secs(live.offMs), live.offMs == 0 ? tr("без пауза", "no pause") : tr("секунди", "seconds"));
            liveSt[3].set(secs(live.upMs), tr("секунди", "seconds"));
            liveSt[4].set(secs(live.downMs), tr("секунди", "seconds"));
            liveSt[5].set(String.valueOf(live.lo), tr("от ", "of ") + live.hi + tr(" в импулса", " in the impulse"));
            MastogoShell sh = sh();
            boolean on = sh != null && sh.running && liveRun && sh.mod() != null;
            if (on) {
                int[] ph = MastogoShell.phaseOf(live, sh.modElapsed());
                int left = Math.max(0, ph[2] - ph[1]);
                String name = ph[0] == MastogoShell.IMPULSE ? tr("ИМПУЛС ", "IMPULSE ")
                        : ph[0] == MastogoShell.PAUSE ? tr("ПАУЗА ", "PAUSE ")
                        : ph[0] == MastogoShell.RISE ? tr("НАРАСТВАНЕ ", "RISE ") : tr("СПАДАНЕ ", "FALL ");
                phaseText.setText(name + String.format(java.util.Locale.US, "%.1f", left / 1000f)
                        + tr(" с", " s"));
                phaseText.setTextColor(ph[0] == MastogoShell.PAUSE ? XemsUi.MUTED : XemsUi.GO_TEXT);
            } else {
                phaseText.setText(tr("Импулс ", "Impulse ") + secs(live.onMs) + tr(" с · пауза ", " s · pause ")
                        + secs(live.offMs) + tr(" с", " s"));
                phaseText.setTextColor(XemsUi.TEXT);
            }
            phase.invalidate();
            liveInfo.setText((tiltOn ? tr("Наклон ", "Tilt ") + Math.round(Math.abs(tiltDeg - Math.max(0, tiltZero)))
                    + tr("° → сила ", "° → strength ") + Math.max(live.lo, tiltHi) + tr(" от ", " of ") + live.hi
                    + ". " : "") + (live.beatTenths > 0
                    ? tr("Симулирана честота: в импулса изходът се пуска за 0.2 с на всеки удар — минава по един "
                    + "импулс на „Тонус“. До 4 удара в секунда (толкова команди поема връзката). ",
                    "Simulated frequency: inside the impulse the output is let through for 0.2 s per beat — one "
                    + "pulse of \"Toning\" passes. Up to 4 beats a second (what the link carries). ")
                    : MastogoModes.steady(c)
                    ? tr("≈ Постоянен носител — цикълът е изцяло твой. ", "≈ Steady carrier — the cycle is all yours. ")
                    : tr("◆ Тръгва рязко, но има свои пакети — те вървят в импулса. ",
                            "◆ Starts sharp but has its own bursts — they run inside the impulse. "))
                    + tr("Паузата спира изхода, импулсът тръгва рязко на силата вдясно (или по твоето нарастване). "
                    + "Всичко важи веднага; носителят се сменя в следващата пауза.",
                    "The pause stops the output, the impulse starts sharp at the strength on the right (or by your "
                    + "rise). Everything applies at once; the carrier changes in the next pause."));
        }

        void pultStep(int f, int dir) {
            if (f == F_L_FXBASE) {
                fxBase = Math.max(0, Math.min(Math.max(0, live.hi - 1), fxBase + dir));
                fxBaseSt.set(String.valueOf(fxBase), fxBase == 0 ? tr("нищо между усещанията", "nothing in between")
                        : tr("фон между усещанията", "background in between"));
                MastogoShell hs = sh();
                if (hs != null) {
                    hs.setHitBase(fxBase);
                }
                renderHit();
                return;
            }
            if (f >= F_L_FX) {
                int i = f - F_L_FX;
                int v = fxMs[i];
                fxMs[i] = Math.max(10, Math.min(500, v + dir * (v < 100 || v == 100 && dir < 0 ? 10 : 50)));
                prefs.edit().putInt("fx_ms_" + i, fxMs[i]).apply();
                if (fxSt[i] != null) {
                    fxSt[i].set(String.valueOf(fxMs[i]), "ms");
                }
                return;
            }
            switch (f) {
                case F_L_HZ: {
                    int at = 0;
                    int code = freqCode();
                    for (int i = 0; i < FREQS.length; i++) {
                        if (FREQS[i] == code) {
                            at = i;
                        }
                    }
                    code = FREQS[Math.max(0, Math.min(FREQS.length - 1, at + dir))];
                    live.beatTenths = code < 0 ? -code : 0;
                    live.carrier = code < 0 ? BEAT_CARRIER : code;
                    mode = live.carrier;
                    prefs.edit().putInt("mode", mode).apply();
                    break;
                }
                case F_L_ON: live.onMs = tenths(live.onMs, dir); break;
                case F_L_OFF: live.offMs = tenths(live.offMs, dir); break;
                case F_L_UP: live.upMs = tenths(live.upMs, dir); break;
                case F_L_DOWN: live.downMs = tenths(live.downMs, dir); break;
                default: live.lo = Math.max(0, Math.min(live.hi, live.lo + dir)); break;
            }

            live.safe();
            liveChanged();
            renderPult();
        }

        /**
         * The owner's palette of feelings for VR (2026-10-27), each its own carrier and length, all by the strength
         * way (the only one the unit does not soften away): УДАР = Пеперуда 40 ms; КЛИК = 77 Hz 10 ms ("a light
         * touch or click"); СТИСКАНЕ = Шиацу, as long as the finger is down ("a squeeze in depth, by the length of
         * the event"); УБОЖДАНЕ = Женски 1, 200 Hz ("sharp, like a stab into the skin").
         */
        static final int FX_HIT = 0, FX_CLICK = 1, FX_SQUEEZE = 2, FX_STAB = 3;
        static final int[] FX = {FX_HIT, FX_CLICK, FX_SQUEEZE, FX_STAB};
        static final int[] FX_CARRIER = {13, 18, 11, 24};
        static final int[] FX_MS = {40, 10, -1, 40};
        static final int F_L_FX = 40;
        static final int F_L_FXBASE = 50;
        final XemsUi.Stepper[] fxSt = new XemsUi.Stepper[FX.length];

        static String fxName(int i) {
            switch (i) {
                case FX_CLICK: return tr("КЛИК", "CLICK");
                case FX_SQUEEZE: return tr("СТИСКАНЕ", "SQUEEZE");
                case FX_STAB: return tr("УБОЖДАНЕ", "STAB");
                default: return tr("УДАР", "HIT");
            }
        }

        void fillHit() {
            LinearLayout card = XemsUi.card(a);
            card.setPadding(dp(14), dp(12), dp(14), dp(12));
            LinearLayout row = XemsUi.horizontal(a);
            for (int i = 0; i < FX.length; i++) {
                LinearLayout col = XemsUi.vertical(a);
                TextView b = XemsUi.button(a, fxName(i), i == FX_HIT ? XemsUi.DANGER_BTN : XemsUi.SECONDARY);
                b.setTextSize(19);
                b.setOnTouchListener(new HitPress(this, i));   // on the touch itself, not on lifting the finger
                col.addView(b, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(76)));
                TextView sub = XemsUi.text(a, MastogoModes.name(FX_CARRIER[i], XemsLang.isBg()) + " · "
                        + MastogoModes.hz(FX_CARRIER[i]), 12, XemsUi.MUTED, false);
                sub.setGravity(Gravity.CENTER);
                col.addView(sub, XemsUi.matchWrap(a, 4));
                if (FX_MS[i] < 0) {
                    TextView hold = XemsUi.text(a, tr("задръж = продължителност", "hold = duration"), 12.5f,
                            XemsUi.TEXT, true);
                    hold.setGravity(Gravity.CENTER);
                    hold.setPadding(0, dp(14), 0, dp(14));
                    col.addView(hold, XemsUi.matchWrap(a, 4));
                } else {
                    XemsUi.Stepper st = XemsUi.stepper(a, "", "", 18, new ModStep(this, F_L_FX + i));
                    st.set(String.valueOf(fxMs[i]), "ms");
                    fxSt[i] = st;
                    col.addView(st.view, XemsUi.matchWrap(a, 4));
                }
                LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT,
                        1f);
                if (i > 0) {
                    lp.leftMargin = dp(8);
                }
                row.addView(col, lp);
            }
            card.addView(row);
            LinearLayout br = XemsUi.horizontal(a);
            br.setGravity(Gravity.CENTER_VERTICAL);
            br.addView(XemsUi.label(a, tr("ФОН", "BACKGROUND")), new LinearLayout.LayoutParams(dp(90),
                    ViewGroup.LayoutParams.WRAP_CONTENT));
            fxBaseSt = XemsUi.stepper(a, "", "", 18, new ModStep(this, F_L_FXBASE));
            fxBaseSt.set(String.valueOf(fxBase), fxBase == 0 ? tr("нищо между усещанията", "nothing in between")
                    : tr("фон между усещанията", "background in between"));
            br.addView(fxBaseSt.view, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            card.addView(br, XemsUi.matchWrap(a, 10));
            hitInfo = XemsUi.text(a, "", 12.5f, XemsUi.HINT, false);
            card.addView(hitInfo, XemsUi.matchWrap(a, 8));
            tabBody.addView(card, XemsUi.matchWrap(a, 12));
            renderHit();
        }

        void renderHit() {
            if (hitInfo == null) {
                return;
            }
            MastogoShell sh = sh();
            hitInfo.setText(tr("Сила = вдясно (", "Strength = on the right (") + live.hi + tr("). Между усещанията "
                    + "изходът е на ФОН (0 = тишина; по-висок фон прави усещането по-силно, но се усеща постоянно). "
                    + "Смяна на вида = смяна на програмата: първият му път ~0.5 с. ■ спира всичко. ",
                    "). Between feelings the output sits at BACKGROUND (0 = silence; a higher one makes the feel "
                    + "stronger but is felt all the time). Another kind = another program: its first time ~0.5 s. "
                    + "■ stops everything. ") + (sh != null && sh.hitArmed >= 0 ? tr("Готово · събития: ", "Ready · events: ")
                    + sh.hitCount + tr(" · апаратчето се държи будно.", " · the unit is kept awake.") : ""));
        }

        void fxDown(int i) {
            MastogoShell sh = sh();
            if (sh == null || sh.probing) {
                return;
            }
            int carrier = FX_CARRIER[i];
            if (sh.hitArmed != MastogoShell.HIT_LEVEL || sh.mode != carrier) {
                liveRun = false;
                sh.armHit(MastogoShell.HIT_LEVEL, carrier, live.hi, fxBase, minutes * 60);
            }
            if (FX_MS[i] < 0) {
                sh.press(true);
            } else {
                sh.hit(fxMs[i]);
            }
            renderHit();
            render();
        }

        void fxUp(int i) {
            MastogoShell sh = sh();
            if (sh != null && FX_MS[i] < 0) {
                sh.press(false);
            }
        }

        /** The panel's modulation as it should run: the impulse strength from the tilt while that is on. */
        MastogoShell.Mod liveMod() {
            MastogoShell.Mod m = live.copy();
            if (tiltOn) {
                m.hi = Math.max(m.lo, Math.min(live.hi, tiltHi < 0 ? m.lo : tiltHi));
            }
            return m;
        }

        void tiltToggle(boolean on) {
            tiltOn = on;
            tiltZero = -1;
            tiltHi = -1;
            SensorManager sm = (SensorManager) a.getSystemService(Context.SENSOR_SERVICE);
            if (on) {
                Sensor acc = sm != null ? sm.getDefaultSensor(Sensor.TYPE_ACCELEROMETER) : null;
                if (acc == null) {
                    tiltOn = false;
                    hintText = tr("Таблетът няма сензор за наклон.", "The tablet has no tilt sensor.");
                    fillTab();
                    render();
                    return;
                }
                tilt = new Tilt(this);
                sm.registerListener(tilt, acc, SensorManager.SENSOR_DELAY_GAME, main);
            } else {
                tiltOff();
            }
            liveChanged();
            render();
        }

        void tiltOff() {
            if (tilt != null) {
                SensorManager sm = (SensorManager) a.getSystemService(Context.SENSOR_SERVICE);
                if (sm != null) {
                    sm.unregisterListener(tilt);
                }
                tilt = null;
            }
        }

        /** The screen's angle to the horizontal, from the (smoothed) gravity. */
        void onTilt(float deg) {
            if (closed || !tiltOn) {
                return;
            }
            tiltDeg = deg;
            if (tiltZero < 0) {
                tiltZero = deg;
            }
            float f = Math.min(1f, Math.abs(deg - tiltZero) / TILT_FULL);
            int hi = live.lo + Math.round((live.hi - live.lo) * f);
            if (hi != tiltHi) {
                tiltHi = hi;
                MastogoShell sh = sh();
                if (sh != null && sh.running && liveRun) {
                    sh.modulate(liveMod());
                }
                renderPult();
            }
        }

        void liveChanged() {
            prefs.edit().putString("live", live.encode()).apply();
            MastogoShell sh = sh();
            if (sh != null && sh.running && liveRun) {
                sh.modulate(liveMod());
            }
        }

        // ------------------------------------------------------------------ tab: program

        void fillProgram() {
            for (int g = 0; g < MastogoModes.GROUPS; g++) {
                tabBody.addView(XemsUi.label(a, groupName(g)), XemsUi.matchWrap(a, g == 0 ? 0 : 10));
                LinearLayout grid = XemsUi.vertical(a);
                LinearLayout line = null;
                int n = 0;
                for (int id = 0; id < MastogoShell.MODES; id++) {
                    if (MastogoModes.group(id) != g) {
                        continue;
                    }
                    if (n % 4 == 0) {
                        line = XemsUi.horizontal(a);
                        grid.addView(line, XemsUi.matchWrap(a, 6));
                    }
                    n++;
                    TextView chip = moduleChip(id, id == mode, XemsUi.GO_TEXT);
                    chip.setOnClickListener(new PickMode(this, id));
                    tiles[id] = chip;
                    LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, dp(82), 1f);
                    lp.rightMargin = dp(6);
                    line.addView(chip, lp);
                }
                for (int i = 0; n % 4 > 0 && i < 4 - n % 4; i++) {
                    LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, dp(82), 1f);
                    lp.rightMargin = dp(6);
                    line.addView(new View(a), lp);
                }
                tabBody.addView(grid, XemsUi.matchWrap(a, 4));
            }

            // the chosen module: what it is, big and first
            LinearLayout card = XemsUi.card(a);
            card.setPadding(dp(16), dp(12), dp(16), dp(12));
            LinearLayout top = XemsUi.horizontal(a);
            top.setGravity(Gravity.BOTTOM);
            top.addView(XemsUi.text(a, MastogoModes.hz(mode), 24, XemsUi.TEXT, true));
            TextView w = XemsUi.text(a, "   " + MastogoModes.width(mode) + " · " + modeName(mode) + " · "
                    + groupName(groupOf(mode)), 13, XemsUi.MUTED, false);
            w.setPadding(0, 0, 0, dp(4));
            top.addView(w);
            card.addView(top);
            View pic = new View(a);
            pic.setBackgroundDrawable(new WaveDrawable(mode, XemsUi.GO_TEXT));
            card.addView(pic, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(46)));
            if (MastogoModes.steady(mode)) {
                card.addView(XemsUi.text(a, tr("≈ Постоянен носител: една честота, равна сила, без свои паузи — "
                        + "цикълът в „Импулс“ е изцяло твой.", "≈ Steady carrier: one frequency, even strength, no "
                        + "pauses of its own — the cycle in \"Impulse\" is entirely yours."), 12.5f, XemsUi.GO_TEXT,
                        false), XemsUi.matchWrap(a, 4));
            }
            card.addView(XemsUi.text(a, MastogoModes.feel(mode, XemsLang.isBg()), 13.5f, XemsUi.TEXT, false),
                    XemsUi.matchWrap(a, 4));
            tabBody.addView(card, XemsUi.matchWrap(a, 12));

            LinearLayout r = XemsUi.horizontal(a);
            r.setGravity(Gravity.BOTTOM);
            LinearLayout col = XemsUi.vertical(a);
            col.addView(XemsUi.label(a, tr("Време", "Time")));
            LinearLayout[] m = new LinearLayout[1];
            col.addView(XemsUi.chipRow(a, m), XemsUi.matchWrap(a, 4));
            for (int min : MINUTES) {
                TextView chip = XemsUi.chip(a, min + tr(" мин", " min"), min == minutes, XemsUi.GO_TEXT);
                chip.setOnClickListener(new PickMinutes(this, min));
                XemsUi.addChip(a, m[0], chip);
            }
            r.addView(col, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            tabBody.addView(r, XemsUi.matchWrap(a, 14));
            TextView note = XemsUi.text(a, tr("Честотата и ширината са вградени в модула (данни от приложението "
                    + "DOMAS на производителя). Картинката е импулсът на програмата: висока черта = силно, гъсто = "
                    + "висока честота, празно = пауза. „а–б“ се плъзга, „а / б“ се редува; ≈ = постоянен носител, ◆ = тръгва рязко (само ≈ и ◆ са в „Пулт“).",
                    "Frequency and width are built into the module (from the maker's DOMAS app). The picture is the "
                    + "program's impulse: tall = strong, dense = high frequency, gap = pause. \"a–b\" sweeps, "
                    + "\"a / b\" alternates; ≈ = steady carrier, ◆ = starts sharp (only ≈ and ◆ are in \"Panel\")."), 12.5f, XemsUi.HINT, false);
            tabBody.addView(note, XemsUi.matchWrap(a, 10));
        }

        // ------------------------------------------------------------------ tab: modulation

        void fillMod() {
            tabBody.addView(XemsUi.toggleRow(a, tr("Импулс от таблета", "Impulse from the tablet"),
                    tr("Силата следва формата долу, докато апаратчето работи",
                            "The strength follows the shape below while the unit runs"), modOn, new ModToggle(this)));
            LinearLayout[] h = new LinearLayout[1];
            tabBody.addView(XemsUi.chipRow(a, h), XemsUi.matchWrap(a, 8));
            int[] order = {MastogoShell.Mod.STEPS, MastogoShell.Mod.WORK, MastogoShell.Mod.WAVE,
                MastogoShell.Mod.PULSE, MastogoShell.Mod.RAMP, MastogoShell.Mod.TRIANGLE, MastogoShell.Mod.RANDOM};
            for (int sh : order) {
                TextView chip = XemsUi.chip(a, shapeName(sh), sh == mod.shape, TINT);
                chip.setOnClickListener(new PickShape(this, sh));
                XemsUi.addChip(a, h[0], chip);
            }
            env = new EnvelopeView(a, this);
            LinearLayout.LayoutParams el = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(110));
            el.topMargin = dp(10);
            tabBody.addView(env, el);
            if (mod.shape == MastogoShell.Mod.STEPS) {
                fillSteps();
                return;
            }

            boolean work = mod.shape == MastogoShell.Mod.WORK;
            LinearLayout r1 = XemsUi.horizontal(a);
            if (work) {
                addField(r1, tr("Нарастване", "Rise"), F_UP, false);
                addField(r1, tr("Работа", "Work"), F_ON, true);
                addField(r1, tr("Спадане", "Fall"), F_DOWN, true);
                addField(r1, tr("Пауза", "Pause"), F_OFF, true);
            } else {
                addField(r1, mod.shape == MastogoShell.Mod.RANDOM ? tr("Смяна", "Change") : tr("Цикъл", "Cycle"),
                        F_PERIOD, false);
                if (mod.shape == MastogoShell.Mod.PULSE) {
                    addField(r1, tr("Импулс", "Impulse"), F_DUTY, true);
                }
            }
            tabBody.addView(r1, XemsUi.matchWrap(a, 10));
            LinearLayout r2 = XemsUi.horizontal(a);
            addField(r2, work ? tr("Сила в паузата", "Pause strength") : tr("Дълбочина от", "Depth from"), F_LO,
                    false);
            addField(r2, work ? tr("Сила в работата", "Work strength") : tr("до", "to"), F_HI, true);
            addField(r2, tr("Опресняване", "Refresh"), F_STEP, true);
            tabBody.addView(r2, XemsUi.matchWrap(a, 8));

            // frequency change: the modules taken in turn, switched at the start of each pause
            tabBody.addView(XemsUi.label(a, tr("Смяна на честотата — модули подред", "Frequency change — modules in "
                    + "turn")), XemsUi.matchWrap(a, 14));
            LinearLayout[] rm = new LinearLayout[1];
            tabBody.addView(XemsUi.chipRow(a, rm), XemsUi.matchWrap(a, 4));
            rotRow = rm[0];
            fillRotate();
            LinearLayout r3 = XemsUi.horizontal(a);
            r3.setGravity(Gravity.CENTER_VERTICAL);
            addField(r3, tr("Цикли на модул", "Cycles per module"), F_EVERY, false);
            rotSum = XemsUi.text(a, rotateText(), 13, XemsUi.MUTED, false);
            rotSum.setPadding(dp(14), dp(18), 0, 0);
            r3.addView(rotSum, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 2f));
            tabBody.addView(r3, XemsUi.matchWrap(a, 6));
        }

        // ------------------------------------------------------------------ own cycle (steps)

        int stepSel;
        LinearLayout stepRow;
        LinearLayout carrierRow;
        LinearLayout stepFields;
        TextView stepSum;

        MastogoShell.Step step() {
            stepSel = Math.max(0, Math.min(mod.steps.size() - 1, stepSel));
            return mod.steps.get(stepSel);
        }

        /** Owner, 2026-10-27: "no set cycles — we set them, as long as the impulse lasts". */
        void fillSteps() {
            LinearLayout head = XemsUi.horizontal(a);
            head.setGravity(Gravity.CENTER_VERTICAL);
            head.addView(XemsUi.label(a, tr("Стъпки — вървят подред, после отначало", "Steps — in order, then again")),
                    new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            TextView add = XemsUi.button(a, tr("+ Стъпка", "+ Step"), XemsUi.SECONDARY);
            add.setOnClickListener(new StepAdd(this, true));
            head.addView(add, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, dp(40)));
            TextView del = XemsUi.button(a, tr("Махни", "Remove"), XemsUi.GHOST);
            del.setOnClickListener(new StepAdd(this, false));
            LinearLayout.LayoutParams dl = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, dp(40));
            dl.leftMargin = dp(6);
            head.addView(del, dl);
            tabBody.addView(head, XemsUi.matchWrap(a, 12));
            LinearLayout[] sr = new LinearLayout[1];
            tabBody.addView(XemsUi.chipRow(a, sr), XemsUi.matchWrap(a, 6));
            stepRow = sr[0];

            tabBody.addView(XemsUi.label(a, tr("Носител (честотата) на избраната стъпка — ≈ първо",
                    "Carrier (the frequency) of the chosen step — ≈ first")), XemsUi.matchWrap(a, 12));
            LinearLayout[] cr = new LinearLayout[1];
            tabBody.addView(XemsUi.chipRow(a, cr), XemsUi.matchWrap(a, 4));
            carrierRow = cr[0];
            stepFields = XemsUi.vertical(a);
            tabBody.addView(stepFields, XemsUi.matchWrap(a, 8));
            stepSum = XemsUi.text(a, "", 12.5f, XemsUi.HINT, false);
            tabBody.addView(stepSum, XemsUi.matchWrap(a, 8));
            renderSteps();
        }

        void renderSteps() {
            if (stepRow == null) {
                return;
            }
            MastogoShell.Step cur = step();
            stepRow.removeAllViews();
            for (int i = 0; i < mod.steps.size(); i++) {
                MastogoShell.Step st = mod.steps.get(i);
                TextView chip = XemsUi.chip(a, (i + 1) + " · " + MastogoModes.name(st.mode, XemsLang.isBg()) + " "
                        + MastogoModes.hz(st.mode) + "\n" + secs(st.onMs) + tr(" с / ", " s / ") + secs(st.offMs)
                        + tr(" с · сила ", " s · level ") + st.hi + " × " + st.reps, i == stepSel, TINT);
                chip.setTextSize(12.5f);
                chip.setOnClickListener(new StepPick(this, i));
                XemsUi.addChip(a, stepRow, chip);
            }
            carrierRow.removeAllViews();
            for (int pass = 0; pass < 2; pass++) {
                for (int id = 0; id < MastogoShell.MODES; id++) {
                    if (MastogoModes.steady(id) != (pass == 0)) {
                        continue;
                    }
                    TextView chip = moduleChip(id, id == cur.mode, TINT);
                    chip.setOnClickListener(new StepCarrier(this, id));
                    XemsUi.addChip(a, carrierRow, chip);
                }
            }
            stepFields.removeAllViews();
            LinearLayout r1 = XemsUi.horizontal(a);
            addField(r1, tr("Нарастване", "Rise"), F_S_UP, false);
            addField(r1, tr("Импулс", "Impulse"), F_S_ON, true);
            addField(r1, tr("Спадане", "Fall"), F_S_DOWN, true);
            addField(r1, tr("Пауза", "Pause"), F_S_OFF, true);
            stepFields.addView(r1);
            LinearLayout r2 = XemsUi.horizontal(a);
            addField(r2, tr("Сила в импулса", "Impulse strength"), F_S_HI, false);
            addField(r2, tr("Сила в паузата", "Pause strength"), F_S_LO, true);
            addField(r2, tr("Повторения", "Repeats"), F_S_REPS, true);
            addField(r2, tr("Опресняване", "Refresh"), F_STEP, true);
            stepFields.addView(r2, XemsUi.matchWrap(a, 8));
            stepSum.setText(stepSummary());
        }

        String stepSummary() {
            int total = mod.periodMs;
            return tr("Целият цикъл: ", "Whole cycle: ") + secs(total) + tr(" с. Смяна на носител става в паузата "
                    + "преди следващата стъпка (поне 0.5 с). Носител без ≈ добавя своите пакети и паузи върху твоя "
                    + "цикъл. Силата се качва най-много с 3 нива на опресняване.", " s. A carrier changes in the "
                    + "pause before the next step (at least 0.5 s). A carrier without ≈ adds its own bursts and "
                    + "pauses on top of your cycle. Strength rises at most 3 levels per refresh.");
        }

        void stepAdd(boolean add) {
            if (add) {
                if (mod.steps.size() >= MastogoShell.Mod.MAX_STEPS) {
                    return;
                }
                mod.steps.add(stepSel + 1, step().copy());
                stepSel++;
            } else if (mod.steps.size() > 1) {
                mod.steps.remove(stepSel);
                stepSel = Math.max(0, stepSel - 1);
            }
            mod.safe();
            modChanged();
            renderSteps();
        }

        void stepPick(int i) {
            stepSel = i;
            renderSteps();
        }

        void stepCarrier(int id) {
            step().mode = id;
            mod.safe();
            modChanged();
            renderSteps();
        }

        /** The rotation chips, rebuilt in place (the strip keeps its scroll position). */
        void fillRotate() {
            rotRow.removeAllViews();
            for (int id = 0; id < MastogoShell.MODES; id++) {
                int at = indexOf(mod.rotate, id);
                TextView chip = XemsUi.chip(a, (at >= 0 ? (at + 1) + "▸ " : "") + chipName(id), at >= 0, TINT);
                chip.setOnClickListener(new PickRotate(this, id));
                XemsUi.addChip(a, rotRow, chip);
            }
        }

        String rotateText() {
            if (mod.rotate.length < 2) {
                return tr("Избери 2 или повече модула: всеки поема след паузата (апаратчето сменя програма само "
                        + "без ток). Един или нито един — модулът от „Модули“ остава.",
                        "Pick 2 or more modules: each takes over after the pause (the unit changes program only "
                        + "without output). One or none — the module from \"Modules\" stays.");
            }
            StringBuilder b = new StringBuilder();
            for (int id : mod.rotate) {
                if (b.length() > 0) {
                    b.append(" → ");
                }
                b.append(id + 1).append(" (").append(MastogoModes.hz(id)).append(')');
            }
            return b.append(" → …").toString();
        }

        static int indexOf(int[] a, int v) {
            for (int i = 0; i < a.length; i++) {
                if (a[i] == v) {
                    return i;
                }
            }
            return -1;
        }

        void pickRotate(int id) {
            int at = indexOf(mod.rotate, id);
            int[] r;
            if (at >= 0) {
                r = new int[mod.rotate.length - 1];
                for (int i = 0, k = 0; i < mod.rotate.length; i++) {
                    if (i != at) {
                        r[k++] = mod.rotate[i];
                    }
                }
            } else {
                r = new int[mod.rotate.length + 1];
                System.arraycopy(mod.rotate, 0, r, 0, mod.rotate.length);
                r[mod.rotate.length] = id;
            }
            mod.rotate = r;
            mod.safe();
            modChanged();
            if (rotRow != null) {
                fillRotate();
                rotSum.setText(rotateText());
            }
        }

        void addField(LinearLayout row, String label, int f, boolean gap) {
            LinearLayout col = XemsUi.vertical(a);
            col.addView(XemsUi.label(a, label));
            XemsUi.Stepper st = XemsUi.stepper(a, "", "", 22, new ModStep(this, f));
            st.set(fieldValue(f), fieldUnit(f));
            st.view.setTag(Integer.valueOf(f));
            col.addView(st.view, XemsUi.matchWrap(a, 4));
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
            if (row.getChildCount() > 0 || gap) {
                lp.leftMargin = dp(10);
            }
            row.addView(col, lp);
        }

        static final int F_LO = 0, F_HI = 1, F_PERIOD = 2, F_DUTY = 3, F_STEP = 4, F_UP = 5, F_ON = 6, F_DOWN = 7,
                F_OFF = 8, F_EVERY = 9, F_S_LO = 10, F_S_HI = 11, F_S_UP = 12, F_S_ON = 13, F_S_DOWN = 14,
                F_S_OFF = 15, F_S_REPS = 16;

        static String secs(int ms) {
            return ms % 1000 == 0 ? String.valueOf(ms / 1000)
                    : String.format(java.util.Locale.US, "%.1f", ms / 1000f);
        }

        String fieldValue(int f) {
            switch (f) {
                case F_LO: return String.valueOf(mod.lo);
                case F_HI: return String.valueOf(mod.hi);
                case F_PERIOD: return secs(mod.periodMs);
                case F_DUTY: return String.valueOf(mod.duty);
                case F_UP: return secs(mod.upMs);
                case F_ON: return secs(mod.onMs);
                case F_DOWN: return secs(mod.downMs);
                case F_OFF: return secs(mod.offMs);
                case F_EVERY: return String.valueOf(mod.every);
                case F_S_LO: return String.valueOf(step().lo);
                case F_S_HI: return String.valueOf(step().hi);
                case F_S_UP: return secs(step().upMs);
                case F_S_ON: return secs(step().onMs);
                case F_S_DOWN: return secs(step().downMs);
                case F_S_OFF: return secs(step().offMs);
                case F_S_REPS: return String.valueOf(step().reps);
                default: return String.valueOf(mod.stepMs);
            }
        }

        String fieldUnit(int f) {
            switch (f) {
                case F_LO:
                case F_HI:
                case F_S_LO:
                case F_S_HI: return tr("сила", "level");
                case F_S_UP:
                case F_S_ON:
                case F_S_DOWN:
                case F_S_OFF: return tr("секунди", "seconds");
                case F_S_REPS: return tr("пъти", "times");
                case F_PERIOD:
                case F_UP:
                case F_ON:
                case F_DOWN:
                case F_OFF: return tr("секунди", "seconds");
                case F_DUTY: return tr("% от цикъла", "% of the cycle");
                case F_EVERY: return tr("цикъла", "cycles");
                default: return tr("ms (≥ 100)", "ms (≥ 100)");
            }
        }

        /** Step times: 0.1 s up to 2 s, 0.5 s up to 10 s, whole seconds above. */
        static int tenths(int ms, int dir) {
            int step = ms < 2000 || ms == 2000 && dir < 0 ? 100 : ms < 10000 || ms == 10000 && dir < 0 ? 500 : 1000;
            return ms + dir * step;
        }

        /** Seconds fields: 0.5 s steps up to 10 s, whole seconds above. */
        static int msStep(int ms, int dir) {
            int step = ms < 10000 || ms == 10000 && dir < 0 ? 500 : 1000;
            return ms + dir * step;
        }

        void modStep(int f, int dir) {
            if (f >= F_L_HZ) {
                pultStep(f, dir);
                return;
            }
            switch (f) {
                case F_LO: mod.lo = Math.max(0, Math.min(mod.hi, mod.lo + dir)); break;
                case F_HI: mod.hi = Math.max(mod.lo, Math.min(MastogoShell.MAX_LEVEL, mod.hi + dir)); break;
                case F_PERIOD: {
                    int step = mod.periodMs < 2000 ? 100 : mod.periodMs < 10000 ? 500 : 5000;
                    mod.periodMs += dir * step;
                    break;
                }
                case F_DUTY: mod.duty += dir * 5; break;
                case F_UP: mod.upMs = msStep(mod.upMs, dir); break;
                case F_ON: mod.onMs = msStep(mod.onMs, dir); break;
                case F_DOWN: mod.downMs = msStep(mod.downMs, dir); break;
                case F_OFF: mod.offMs = msStep(mod.offMs, dir); break;
                case F_EVERY: mod.every += dir; break;
                case F_S_LO: step().lo = Math.max(0, Math.min(step().hi, step().lo + dir)); break;
                case F_S_HI: step().hi = Math.max(step().lo, Math.min(MastogoShell.MAX_LEVEL, step().hi + dir)); break;
                case F_S_UP: step().upMs = tenths(step().upMs, dir); break;
                case F_S_ON: step().onMs = tenths(step().onMs, dir); break;
                case F_S_DOWN: step().downMs = tenths(step().downMs, dir); break;
                case F_S_OFF: step().offMs = tenths(step().offMs, dir); break;
                case F_S_REPS: step().reps += dir; break;
                default: mod.stepMs += dir * 50; break;
            }
            mod.safe();
            modChanged();
            refreshFields(tabBody);
            if (f >= F_S_LO && stepRow != null) {
                renderSteps();
            }
        }

        void refreshFields(ViewGroup g) {
            for (int i = 0; i < g.getChildCount(); i++) {
                View v = g.getChildAt(i);
                if (v.getTag() instanceof Integer && v instanceof LinearLayout) {
                    int f = (Integer) v.getTag();
                    LinearLayout st = (LinearLayout) v;
                    LinearLayout mid = (LinearLayout) st.getChildAt(1);
                    ((TextView) mid.getChildAt(0)).setText(fieldValue(f));
                } else if (v instanceof ViewGroup) {
                    refreshFields((ViewGroup) v);
                }
            }
        }

        void modChanged() {
            prefs.edit().putString("mod", mod.encode()).apply();
            MastogoShell sh = sh();
            if (sh != null && modOn && sh.running && !liveRun) {
                sh.modulate(mod.copy());
            }
            if (env != null) {
                env.invalidate();
            }
        }

        // ------------------------------------------------------------------ tab: exploration

        void fillExplore() {
            LinearLayout top = XemsUi.horizontal(a);
            top.setGravity(Gravity.CENTER_VERTICAL);
            probeBtn = XemsUi.button(a, "", XemsUi.SECONDARY);
            probeBtn.setOnClickListener(new Probe(this, false));
            top.addView(probeBtn, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, dp(48)));
            writeBtn = XemsUi.button(a, "", XemsUi.SECONDARY);
            writeBtn.setOnClickListener(new Probe(this, true));
            LinearLayout.LayoutParams wl = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, dp(48));
            wl.leftMargin = dp(8);
            top.addView(writeBtn, wl);
            TextView copy = XemsUi.button(a, tr("Копирай отчета", "Copy the report"), XemsUi.GHOST);
            copy.setOnClickListener(new Copy(this));
            LinearLayout.LayoutParams cl = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, dp(48));
            cl.leftMargin = dp(8);
            top.addView(copy, cl);
            tabBody.addView(top);
            probeText = XemsUi.text(a, "", 13, XemsUi.MUTED, false);
            tabBody.addView(probeText, XemsUi.matchWrap(a, 6));
            hitList = XemsUi.vertical(a);
            tabBody.addView(hitList, XemsUi.matchWrap(a, 6));

            tabBody.addView(XemsUi.label(a, tr("Обратна връзка", "Feedback")), XemsUi.matchWrap(a, 12));
            feedback = XemsUi.text(a, "", 13, XemsUi.TEXT, false);
            feedback.setTypeface(Typeface.MONOSPACE);
            tabBody.addView(feedback, XemsUi.matchWrap(a, 4));

            tabBody.addView(XemsUi.label(a, tr("Конзола", "Console")), XemsUi.matchWrap(a, 12));
            consoleScroll = new ScrollView(a);
            consoleScroll.setBackgroundDrawable(XemsUi.rounded(XemsUi.SURFACE, dp(12), XemsUi.STROKE, dp(1)));
            consoleView = XemsUi.text(a, "", 12, XemsUi.MUTED, false);
            consoleView.setTypeface(Typeface.MONOSPACE);
            consoleView.setPadding(dp(12), dp(8), dp(12), dp(8));
            consoleScroll.addView(consoleView);
            tabBody.addView(consoleScroll, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                    dp(150)));
            LinearLayout in = XemsUi.horizontal(a);
            in.setGravity(Gravity.CENTER_VERTICAL);
            EditText edit = new EditText(a);
            edit.setSingleLine(true);
            edit.setHint("AT+…");
            edit.setTextColor(XemsUi.TEXT);
            edit.setHintTextColor(XemsUi.HINT);
            edit.setTypeface(Typeface.MONOSPACE);
            edit.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_FLAG_CAP_CHARACTERS
                    | InputType.TYPE_TEXT_FLAG_NO_SUGGESTIONS);
            edit.setImeOptions(EditorInfo.IME_ACTION_SEND);
            in.addView(edit, new LinearLayout.LayoutParams(0, dp(48), 1f));
            TextView send = XemsUi.button(a, tr("Прати", "Send"), XemsUi.SECONDARY);
            send.setOnClickListener(new SendRaw(this, edit));
            LinearLayout.LayoutParams sl = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, dp(48));
            sl.leftMargin = dp(8);
            in.addView(send, sl);
            tabBody.addView(in, XemsUi.matchWrap(a, 8));
            renderExplore();
            renderConsole();
        }

        void renderExplore() {
            if (probeBtn == null) {
                return;
            }
            MastogoShell sh = sh();
            boolean probing = sh != null && sh.probing;
            boolean waiting = link != null && link.shell.probeSuspended();
            boolean write = probing || waiting ? link.shell.probeWrite : armWrite;
            // while one sweep runs (or is armed) only its button stays: it becomes "stop" / "start"
            TextView btn = write ? writeBtn : probeBtn;
            TextView other = write ? probeBtn : writeBtn;
            other.setVisibility(probing || waiting || probeArmed ? View.GONE : View.VISIBLE);
            other.setText(write ? tr("Търси скрити команди", "Search hidden commands")
                    : tr("Изследване на запис", "Write exploration"));
            btn.setVisibility(View.VISIBLE);
            String what = write ? tr(" записа", " writes") : tr(" команди", " commands");
            if (waiting) {
                btn.setText(tr("■ Спри търсенето", "■ Stop the search"));
                probeText.setText(tr("Чакам апаратчето да се включи — ", "Waiting for the unit — ")
                        + link.shell.probeDone + " / " + link.shell.probeTotal);
            } else if (probing) {
                btn.setText(tr("■ Спри търсенето", "■ Stop the search"));
                probeText.setText(tr("Пробвам ", "Trying ") + sh.probeDone + " / " + sh.probeTotal + what
                        + " · " + sh.hits.size() + (write ? tr(" познати", " known") : tr(" отговорили", " answered")));
            } else if (probeArmed) {
                btn.setText(tr("✓ Електродите са свалени · започни", "✓ Pads are off · start"));
                probeText.setText(write
                        ? tr("Свали електродите от тялото: позната команда може да приеме стойността (50 Hz, 200 µs).",
                                "Take the pads off the body: a known command may take the value (50 Hz, 200 µs).")
                        : tr("Свали електродите от тялото: някоя непозната команда може да пусне ток.",
                                "Take the pads off the body: an unknown command might start the output."));
            } else {
                btn.setText(write ? tr("Изследване на запис", "Write exploration")
                        : tr("Търси скрити команди", "Search hidden commands"));
                String last = sh != null && sh.probeTotal > 0
                        ? (sh.probeWrite ? tr("Последно (запис): ", "Last (write): ") : tr("Последно: ", "Last: "))
                        + sh.probeDone + " / " + sh.probeTotal + " · " + sh.hits.size()
                        + (sh.probeWrite ? tr(" познати", " known") : tr(" отговорили", " answered")) + "\n"
                        : "";
                probeText.setText(last + tr("Търсене: ~600 въпроса (?, =?), ~2 мин. Запис: ~320 команди със стойност"
                        + " (напр. AT+CFRQ=0,50), ~1 мин — непозната = ERROR:104. Силата е 0 през цялото време.",
                        "Search: ~600 queries (?, =?), ~2 min. Write: ~320 commands with a value (e.g. AT+CFRQ=0,50),"
                        + " ~1 min — unknown = ERROR:104. Strength stays 0 throughout."));
            }
            float alpha = sh == null && !waiting ? 0.4f : 1f;
            btn.setAlpha(alpha);
            other.setAlpha(alpha);
            hitList.removeAllViews();
            if (sh != null) {
                for (String[] hit : sh.hits) {
                    LinearLayout r = XemsUi.horizontal(a);
                    TextView c = XemsUi.text(a, hit[0], 13, XemsUi.GO_TEXT, true);
                    c.setTypeface(Typeface.MONOSPACE);
                    r.addView(c, new LinearLayout.LayoutParams(dp(170), ViewGroup.LayoutParams.WRAP_CONTENT));
                    TextView v = XemsUi.text(a, hit[1], 13, XemsUi.TEXT, false);
                    v.setTypeface(Typeface.MONOSPACE);
                    r.addView(v, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
                    hitList.addView(r, XemsUi.matchWrap(a, 2));
                }
            }
            if (feedback != null) {
                StringBuilder b = new StringBuilder();
                if (sh != null) {
                    for (java.util.Map.Entry<String, String> e : sh.tags.entrySet()) {
                        b.append('+').append(e.getKey()).append(": ").append(e.getValue()).append("   ");
                    }
                    if (sh.rttCount > 0) {
                        b.append("\n").append(tr("отговор ", "reply ")).append(sh.rttMin).append('–')
                                .append(sh.rttMax).append(" ms, ").append(tr("средно ", "avg "))
                                .append(sh.rttSum / sh.rttCount).append(" ms · ").append(sh.sentCount)
                                .append(" ↑ ").append(sh.recvCount).append(" ↓");
                    }
                    if (sh.heartMs > 0) {
                        b.append(tr(" · пулс на връзката ", " · heartbeat ")).append(sh.heartMs).append(" ms");
                    }
                }
                feedback.setText(b.length() > 0 ? b.toString() : "—");
            }
        }

        void renderConsole() {
            if (consoleView == null) {
                return;
            }
            StringBuilder b = new StringBuilder();
            for (String l : console) {
                b.append(l).append('\n');
            }
            consoleView.setText(b.toString());
            consoleScroll.post(new ScrollDown(consoleScroll));
        }

        // ------------------------------------------------------------------ state → views

        void render() {
            if (closed) {
                return;
            }
            MastogoShell sh = sh();
            if (link == null) {
                unitName.setText("MASTOGO H-024B");
                XemsUi.setBadge(linkBadge, tr("търся…", "searching…"), XemsUi.MUTED);
            } else {
                unitName.setText(link.name);
                if (link.state == MastogoLink.READY) {
                    XemsUi.setBadge(linkBadge, tr("✓ свързан", "✓ linked"), XemsUi.GO_TEXT);
                } else if (link.state == MastogoLink.LOST) {
                    XemsUi.setBadge(linkBadge, tr("⊘ връзката падна", "⊘ link lost"), XemsUi.AMBER);
                } else {
                    XemsUi.setBadge(linkBadge, tr("свързвам…", "linking…"), XemsUi.MUTED);
                }
            }
            battery.setText(sh != null && sh.battery >= 0 ? tr("Батерия ", "Battery ") + sh.battery + " %"
                    + (sh.batteryV > 0 ? String.format(java.util.Locale.US, " · %.2f V", sh.batteryV) : "") : "");
            if (sh != null && sh.contact == 0) {
                contact.setText(tr("⚠ електродите не допират", "⚠ pads not touching"));
                contact.setTextColor(XemsUi.AMBER);
            } else if (sh != null && sh.running) {
                contact.setText(tr("✓ допир", "✓ contact"));
                contact.setTextColor(XemsUi.GO_TEXT);
            } else {
                contact.setText("");
            }
            int lv = sh != null ? Math.max(0, sh.level) : 0;
            if (tab == 0 && (sh == null || !sh.running)) {
                level.set(String.valueOf(live.hi), tr("сила в импулса · от 25", "impulse strength · of 25"));
            } else if (sh != null && !sh.running && !modOn) {
                level.set(String.valueOf(startLevel), tr("тръгва рязко на тази сила", "starts sharply at this level"));
            } else {
                level.set(String.valueOf(lv), sh != null && sh.mod() != null
                        ? tr("сила · импулс ", "strength · impulse ") + active().lo + "–" + active().hi
                        : tr("сила от 25", "strength of 25"));
            }
            level.view.setAlpha(sh != null ? 1f : 0.4f);
            int left = sh != null ? sh.secondsLeft() : -1;
            if (sh != null && sh.running && left >= 0) {
                clock.setText(mmss(left));
                clockLabel.setText(tr("остават · ", "left · ") + moduleText(sh.mode));
            } else {
                clock.setText(minutes + tr(" мин", " min"));
                clockLabel.setText(moduleText(mode));
            }
            StringBuilder f = new StringBuilder();
            if (sh != null) {
                f.append(tr("На апаратчето: ", "On the unit: ")).append(sh.mode >= 0
                        ? moduleText(sh.mode) + " (" + groupName(groupOf(sh.mode)) + ")" : "—");
                if (sh.switches > 0) {
                    f.append(tr(" · смени ", " · changes ")).append(sh.switches);
                }
                if (sh.offReason >= 0) {
                    f.append(" · ").append(offName(sh.offReason));
                }
            }
            facts.setText(f.toString());

            boolean running = sh != null && sh.running;
            int style = running ? XemsUi.DANGER_BTN : XemsUi.PRIMARY;
            if (style != goStyle) {
                goStyle = style;
                TextView fresh = XemsUi.button(a, "", style);
                go.setBackgroundDrawable(fresh.getBackground());
                go.setTextColor(fresh.getCurrentTextColor());
            }
            go.setText(running ? tr("■ Спри", "■ Stop") : tr("▶ Пусни", "▶ Start"));
            go.setAlpha(sh != null && !sh.probing ? 1f : 0.4f);
            String h;
            if (hintText != null) {
                h = hintText;
            } else if (link != null && link.shell.probeSuspended()) {
                h = tr("Апаратчето се изключи само (дълго без ток). Включи го — изследването продължава оттам.",
                        "The unit switched itself off (idle). Switch it on — the search goes on from there.");
            } else if (link == null) {
                h = tr("Включи апаратчето (задръж бутона му) — свързва се само.",
                        "Switch the unit on (hold its button) — it links by itself.");
            } else if (sh == null) {
                h = tr("Свързвам се…", "Linking…");
            } else if (sh.probing) {
                h = tr("Търся команди — изходът е спрян.", "Searching commands — output paused.");
            } else if (sh.hitArmed >= 0) {
                h = tr("Удар готов — тапни УДАР. ■ спира.", "Hit ready — tap HIT. ■ stops.");
            } else if (running) {
                h = liveRun ? tr("Пулт: ", "Panel: ") + MastogoModes.hz(live.carrier) + " · " + secs(live.onMs)
                        + " / " + secs(live.offMs) + tr(" с — пипай на живо", " s — change it live")
                        : modOn ? tr("Импулс: ", "Impulse: ") + shapeName(mod.shape) + (mod.rotate.length > 1
                        ? tr(" · модули ", " · modules ") + rotateText() : "") : tr("Работи.", "Running.");
            } else {
                h = tr("Готово. − / + задават силата, ▶ тръгва рязко на нея.",
                        "Ready. − / + set the strength, ▶ starts sharply at it.");
            }
            hint.setText(h);
            if (env != null) {
                env.invalidate();
            }
            renderPult();
            renderExplore();
        }

        // ------------------------------------------------------------------ actions

        void go() {
            MastogoShell sh = sh();
            if (sh == null || sh.probing) {
                return;
            }
            hintText = null;
            if (sh.running) {
                sh.stop();
            } else if (tab == 0) {                         // the panel: its own work / pause on its carrier
                liveRun = true;
                if (sh.mode != live.carrier) {
                    sh.setMode(live.carrier);
                }
                // sharp at the preset strength (no rise set) — or the rise's first level; beats start paused
                if (tiltOn) {
                    tiltZero = -1;                          // ▶ sets the zero where the tablet is now
                }
                MastogoShell.Mod lm = liveMod();
                sh.start(minutes * 60, live.beatTenths > 0 ? 1 : Math.max(1, MastogoShell.envelope(lm, 0)));
                sh.modulate(lm);
            } else {
                liveRun = false;
                int first = !modOn ? mode : mod.shape == MastogoShell.Mod.STEPS ? mod.steps.get(0).mode
                        : mod.rotate.length > 1 ? mod.rotate[0] : mode;
                if (sh.mode != first) {
                    sh.setMode(first);
                }
                if (modOn) {
                    mod.gate = mod.shape == MastogoShell.Mod.STEPS || mod.shape == MastogoShell.Mod.WORK;
                    sh.start(minutes * 60, mod.gate ? Math.max(1, MastogoShell.envelope(mod, 0)) : 1);
                    sh.modulate(mod.copy());
                } else {
                    sh.start(minutes * 60, startLevel);       // the strength set before ▶, sharp
                }
            }
            render();
        }

        void step(int dir) {
            MastogoShell sh = sh();
            if (sh == null) {
                return;
            }
            hintText = null;
            if (liveRun && sh.mod() != null || tab == 0 && !sh.running || sh.hitArmed >= 0) {  // panel / hit strength
                live.hi = Math.max(live.lo, Math.min(MastogoShell.MAX_LEVEL, live.hi + dir));
                live.safe();
                liveChanged();
                if (sh.hitArmed >= 0) {
                    sh.setHitLevel(live.hi);
                }
                renderPult();
                renderHit();
            } else if (sh.mod() != null) {                  // shift the whole envelope
                if (dir > 0 && mod.hi < MastogoShell.MAX_LEVEL || dir < 0 && mod.lo > 0) {
                    mod.lo += dir;
                    mod.hi += dir;
                }
                mod.safe();
                modChanged();
                if (tab == 2) {
                    refreshFields(tabBody);
                }
            } else {
                if (!sh.running) {                         // preset: ▶ starts sharply right there
                    startLevel = Math.max(1, Math.min(MastogoShell.MAX_LEVEL, startLevel + dir));
                    prefs.edit().putInt("start_level", startLevel).apply();
                    render();
                    return;
                }
                sh.setLevel(Math.max(0, sh.level) + dir);
            }
            render();
        }

        void pickMode(int id) {
            mode = id;
            if (MastogoModes.sharp(id)) {               // the panel takes only sharp carriers
                live.carrier = id;
                live.beatTenths = 0;
                prefs.edit().putString("live", live.encode()).apply();
            }
            prefs.edit().putInt("mode", id).apply();
            MastogoShell sh = sh();
            if (sh != null) {
                boolean was = sh.running;
                sh.setMode(id);
                hintText = was ? tr("Нова програма — апаратчето спира и нулира силата. ▶ за старт.",
                        "New program — the unit pauses and zeroes the strength. ▶ to start.") : null;
            }
            fillTab();
            render();
        }

        void pickMinutes(int m) {
            minutes = m;
            prefs.edit().putInt("minutes", m).apply();
            MastogoShell sh = sh();
            if (sh != null && sh.running) {
                sh.setTimer(m * 60);
            }
            fillTab();
            render();
        }

        void pickShape(int shape) {
            mod.shape = shape;
            mod.safe();
            modChanged();
            fillTab();
        }

        void modToggle(boolean on) {
            modOn = on;
            liveRun = false;
            prefs.edit().putBoolean("mod_on", on).apply();
            MastogoShell sh = sh();
            if (sh != null) {
                sh.modulate(on && sh.running ? mod.copy() : null);
            }
            render();
        }

        void probe(boolean write) {
            if (link != null && link.shell.probeSuspended()) {      // waiting for the unit: just forget the rest
                link.shell.probeStop();
                render();
                return;
            }
            MastogoShell sh = sh();
            if (sh == null) {
                return;
            }
            if (sh.probing || sh.probeSuspended()) {
                sh.probeStop();
            } else if (!probeArmed) {
                probeArmed = true;
                armWrite = write;
                main.postDelayed(new Disarm(this), 6000);
            } else {
                probeArmed = false;
                modOn = false;
                if (write) {
                    sh.probeWrites();
                } else {
                    sh.probe();
                }
            }
            render();
        }

        void copy() {
            MastogoShell sh = sh();
            StringBuilder b = new StringBuilder(sh != null ? sh.report() : "MASTOGO: not linked\n");
            b.append("\nconsole:\n");
            for (String l : console) {
                b.append(l).append('\n');
            }
            try {
                ClipboardManager cm = (ClipboardManager) a.getSystemService(Context.CLIPBOARD_SERVICE);
                cm.setPrimaryClip(ClipData.newPlainText("mastogo", b.toString()));
                hintText = tr("✓ Отчетът е копиран.", "✓ Report copied.");
            } catch (Throwable t) {
                hintText = tr("Не можах да копирам.", "Could not copy.");
            }
            render();
        }

        void sendRaw(EditText e) {
            MastogoShell sh = sh();
            String t = e.getText().toString().trim().toUpperCase();
            if (sh == null || t.length() == 0) {
                return;
            }
            if (!t.startsWith("AT")) {
                t = "AT+" + t;
            }
            sh.raw(t);
            e.setText("");
        }

        void tick() {
            if (closed) {
                return;
            }
            MastogoShell sh = sh();
            if (sh != null && (sh.running || env != null)) {
                render();
            }
            main.postDelayed(new Tick(this), tab == 0 && sh != null && sh.running ? 200 : 500);
        }

        // ------------------------------------------------------------------ link

        void startScan() {
            if (closed) {
                return;
            }
            scan = new MastogoScan(this);
            if (!scan.start()) {
                hintText = tr("Bluetooth е изключен.", "Bluetooth is off.");
                render();
            }
        }

        @Override
        public void onUnit(BluetoothDevice d, String name) {
            if (closed || link != null) {
                return;
            }
            scan.stop();
            link = new MastogoLink(a, d, name, this, this);
            link.connect();
            render();
        }

        @Override
        public void onLinkState(MastogoLink l, int state) {
            if (state == MastogoLink.READY && modOn && l.shell.running) {
                l.shell.modulate(mod.copy());
            }
            render();
        }

        @Override
        public void onChanged(MastogoShell sh) {
            if (sh.contact == 0 && sh.running) {
                hintText = tr("⚠ Електродите не допират — силата е 0. Притисни ги и увеличи отново.",
                        "⚠ Pads not touching — strength is 0. Press them on and raise again.");
            }
            if (!closed && s.dialog.isShowing()) {
                render();
            }
        }

        @Override
        public void onLine(MastogoShell sh, boolean out, String line) {
            long t = sh.io.now() % 100000;
            console.add(String.format(java.util.Locale.US, "%05.1f %s %s", t / 1000.0, out ? "→" : "←", line));
            while (console.size() > 200) {
                console.remove(0);
            }
            if (consoleView != null) {
                renderConsole();
            }
        }

        @Override
        public void onProbe(MastogoShell sh, int done, int total, String[] hit) {
            renderExplore();
            render();
        }

        void dismissed() {
            closed = true;
            current = null;
            main.removeCallbacksAndMessages(null);
            tiltOff();
            if (scan != null) {
                scan.stop();
            }
            if (link != null) {
                MastogoShell sh = link.shell;
                if (sh.running || sh.probing) {
                    sh.probeStop();
                    sh.stop();
                }
                main.postDelayed(new CloseLink(link), 600);   // let the pause go out first
            }
        }

        void info() {
            XemsUi.Shell i = XemsUi.shell(a, tr("Какво може апаратчето", "What the unit can do"), null, 720);
            String text = tr(
                    "• Импулсът (честота, ширина, форма) е вграден във всяка от 26-те програми — протоколът не го "
                    + "променя. Платката е ZX-571C с чип SYD8811.\n"
                    + "• 26 модула, номерирани 1–26, по действие (облекчаване, масаж, мускули, възстановяване) — без "
                    + "части на тялото. Честотата и ширината са от приложението DOMAS на производителя.\n"
                    + "• „Импулс“ рисува силата (0–25) във времето, до ≈ 10 пъти в секунда, покачване най-много с 3 "
                    + "нива наведнъж. „Работа / Пауза“: твоите времена за нарастване, работа, спадане и пауза.\n"
                    + "• Смяна на честотата: модулите подред, всеки поема в началото на паузата (апаратчето сменя "
                    + "програма само без ток и нулира силата — силата пак се качва от 0).\n"
                    + "• Апаратчето казва: батерия, допир на електродите, оставащо време, защо се е изключило.\n"
                    + "• „Изследване“ пробва ~600 команди само за четене и записва всичко, което отговори. "
                    + "„Изследване на запис“ праща ~320 команди със стойност: непозната отговаря ERROR:104, "
                    + "всичко друго значи, че командата съществува.\n"
                    + "„Копирай отчета“ дава целия резултат за анализ.",
                    "• The impulse (frequency, width, shape) is built into each of the 26 programs — the protocol "
                    + "does not change it. Board ZX-571C, SYD8811 chip.\n"
                    + "• 26 modules numbered 1–26 by what they do (relief, massage, muscles, recovery) — no body "
                    + "parts. Frequency and width come from the maker's DOMAS app.\n"
                    + "• \"Impulse\" draws the strength (0–25) over time, up to ≈ 10 times a second, rising at most "
                    + "3 levels at once. \"Work / Pause\": your rise, work, fall and pause times.\n"
                    + "• Frequency change: the modules in turn, each taking over at the start of a pause (the unit "
                    + "changes program only without output and zeroes the strength — it climbs again from 0).\n"
                    + "• The unit reports battery, pad contact, time left and why it switched off.\n"
                    + "• \"Explore\" tries ~600 read-only commands and records everything that answers. "
                    + "\"Write exploration\" sends ~320 commands with a value: an unknown one answers ERROR:104, "
                    + "anything else means the command exists.\n"
                    + "\"Copy the report\" gives the whole result for analysis.");
            i.body.addView(XemsUi.text(a, text, 14, XemsUi.TEXT, false));
            i.dialog.show();
        }
    }

    // ====================================================================== the envelope, drawn

    static final class EnvelopeView extends View {
        final Page p;
        final Paint line = new Paint(Paint.ANTI_ALIAS_FLAG);
        final Paint grid = new Paint(Paint.ANTI_ALIAS_FLAG);
        final Paint dot = new Paint(Paint.ANTI_ALIAS_FLAG);
        final Paint label = new Paint(Paint.ANTI_ALIAS_FLAG);
        final Path path = new Path();

        EnvelopeView(Context c, Page p) {
            super(c);
            this.p = p;
            line.setStyle(Paint.Style.STROKE);
            line.setStrokeWidth(XemsUi.dp(c, 2.5f));
            line.setColor(TINT);
            grid.setColor(XemsUi.alpha(XemsUi.TEXT, 0x22));
            grid.setStrokeWidth(XemsUi.dp(c, 1));
            dot.setColor(XemsUi.GO_TEXT);
            label.setColor(XemsUi.HINT);
            label.setTextSize(XemsUi.sp(c, 11));
            setBackgroundDrawable(XemsUi.rounded(XemsUi.SURFACE, XemsUi.dp(c, 12), XemsUi.STROKE, XemsUi.dp(c, 1)));
        }

        @Override
        protected void onDraw(Canvas c) {
            MastogoShell.Mod m = p.mod;
            float pad = XemsUi.dp(getContext(), 12);
            float w = getWidth() - 2 * pad;
            float h = getHeight() - 2 * pad;
            if (w <= 0 || h <= 0) {
                return;
            }
            for (int i = 0; i <= 5; i++) {
                float y = pad + h - h * i / 5f;
                c.drawLine(pad, y, pad + w, y, grid);
            }
            long span = m.shape == MastogoShell.Mod.STEPS ? m.periodMs : 2L * m.periodMs;
            path.reset();
            int n = (int) Math.max(60, w / 3);
            for (int i = 0; i <= n; i++) {
                long t = span * i / n;
                float x = pad + w * i / n;
                float y = pad + h - h * MastogoShell.envelope(m, t) / (float) MastogoShell.MAX_LEVEL;
                if (i == 0) {
                    path.moveTo(x, y);
                } else {
                    path.lineTo(x, y);
                }
            }
            c.drawPath(path, line);
            c.drawText("25", pad, pad + label.getTextSize(), label);
            c.drawText("0", pad, pad + h, label);
            MastogoShell sh = p.sh();
            long el = sh != null && sh.running ? sh.modElapsed() : -1;
            if (el >= 0) {
                long t = el % span;
                float x = pad + w * t / span;
                float y = pad + h - h * Math.max(0, sh.level) / (float) MastogoShell.MAX_LEVEL;
                c.drawCircle(x, y, XemsUi.dp(getContext(), 6), dot);
            }
        }
    }

    // ====================================================================== named listeners (dx: no anonymous)

    static final class Tab implements XemsUi.OnIndex {
        final Page p;

        Tab(Page p) {
            this.p = p;
        }

        @Override
        public void onIndex(int index) {
            p.setTab(index);
        }
    }

    static final class Go implements View.OnClickListener {
        final Page p;

        Go(Page p) {
            this.p = p;
        }

        @Override
        public void onClick(View v) {
            p.go();
        }
    }

    static final class Step implements XemsUi.OnStep {
        final Page p;

        Step(Page p) {
            this.p = p;
        }

        @Override
        public void onStep(int direction) {
            p.step(direction);
        }
    }

    static final class PickMode implements View.OnClickListener {
        final Page p;
        final int id;

        PickMode(Page p, int id) {
            this.p = p;
            this.id = id;
        }

        @Override
        public void onClick(View v) {
            p.pickMode(id);
        }
    }

    static final class PickMinutes implements View.OnClickListener {
        final Page p;
        final int m;

        PickMinutes(Page p, int m) {
            this.p = p;
            this.m = m;
        }

        @Override
        public void onClick(View v) {
            p.pickMinutes(m);
        }
    }

    /** The panel's phase bar: one cycle — rise, impulse (green), fall, pause (grey) — and where it is now. */
    static final class PhaseView extends View {
        final Page p;
        final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
        final android.graphics.RectF r = new android.graphics.RectF();

        PhaseView(Context c, Page p) {
            super(c);
            this.p = p;
        }

        @Override
        protected void onDraw(Canvas c) {
            MastogoShell.Mod m = p.live;
            float w = getWidth(), h = getHeight(), rad = h / 4f;
            float total = Math.max(1, m.upMs + m.onMs + m.downMs + m.offMs);
            float x = 0;
            int[] lens = {m.upMs, m.onMs, m.downMs, m.offMs};
            int[] cols = {XemsUi.alpha(XemsUi.GO_TEXT, 0x80), XemsUi.GO_TEXT, XemsUi.alpha(XemsUi.GO_TEXT, 0x80),
                XemsUi.alpha(XemsUi.MUTED, 0x55)};
            for (int i = 0; i < 4; i++) {
                float seg = w * lens[i] / total;
                if (seg <= 0) {
                    continue;
                }
                paint.setColor(cols[i]);
                r.set(x, h * 0.2f, x + seg - (i < 3 ? 2 : 0), h * 0.8f);
                c.drawRoundRect(r, rad, rad, paint);
                x += seg;
            }
            MastogoShell sh = p.sh();
            if (sh != null && sh.running && p.liveRun && sh.mod() != null) {
                float at = w * (sh.modElapsed() % (long) total) / total;
                paint.setColor(XemsUi.TEXT);
                r.set(at - XemsUi.dp(getContext(), 2), 0, at + XemsUi.dp(getContext(), 2), h);
                c.drawRoundRect(r, rad, rad, paint);
            }
        }
    }

    static final class ByHz implements java.util.Comparator<Integer> {
        @Override
        public int compare(Integer x, Integer y) {
            return Double.compare(Page.firstHz(x), Page.firstHz(y));
        }
    }

    /** DOMAS's picture of a program's impulse, drawn from {@link MastogoModes#wave} in the theme's colour. */
    static final class WaveDrawable extends android.graphics.drawable.Drawable {
        static final String DIGITS = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ+/";
        final String bars;
        final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);

        WaveDrawable(int id, int color) {
            bars = MastogoModes.wave(id);
            paint.setColor(color);
        }

        @Override
        public void draw(Canvas c) {
            android.graphics.Rect b = getBounds();
            float w = b.width(), h = b.height();
            paint.setStrokeWidth(Math.max(1f, w / 160f));
            for (int i = 0; i + 2 < bars.length(); i += 3) {
                float x = b.left + (DIGITS.indexOf(bars.charAt(i)) + 0.5f) * w / 64f;
                float top = b.top + DIGITS.indexOf(bars.charAt(i + 1)) * h / 36f;
                float bot = b.top + (DIGITS.indexOf(bars.charAt(i + 2)) + 1) * h / 36f;
                c.drawLine(x, top, x, bot, paint);
            }
        }

        @Override
        public void setAlpha(int alpha) {
            paint.setAlpha(alpha);
        }

        @Override
        public void setColorFilter(android.graphics.ColorFilter cf) {
            paint.setColorFilter(cf);
        }

        @Override
        public int getOpacity() {
            return android.graphics.PixelFormat.TRANSLUCENT;
        }
    }

    static final class StepAdd implements View.OnClickListener {
        final Page p;
        final boolean add;

        StepAdd(Page p, boolean add) {
            this.p = p;
            this.add = add;
        }

        @Override
        public void onClick(View v) {
            p.stepAdd(add);
        }
    }

    static final class StepPick implements View.OnClickListener {
        final Page p;
        final int i;

        StepPick(Page p, int i) {
            this.p = p;
            this.i = i;
        }

        @Override
        public void onClick(View v) {
            p.stepPick(i);
        }
    }

    static final class StepCarrier implements View.OnClickListener {
        final Page p;
        final int id;

        StepCarrier(Page p, int id) {
            this.p = p;
            this.id = id;
        }

        @Override
        public void onClick(View v) {
            p.stepCarrier(id);
        }
    }

    static final class PickRotate implements View.OnClickListener {
        final Page p;
        final int id;

        PickRotate(Page p, int id) {
            this.p = p;
            this.id = id;
        }

        @Override
        public void onClick(View v) {
            p.pickRotate(id);
        }
    }

    static final class PickShape implements View.OnClickListener {
        final Page p;
        final int shape;

        PickShape(Page p, int shape) {
            this.p = p;
            this.shape = shape;
        }

        @Override
        public void onClick(View v) {
            p.pickShape(shape);
        }
    }

    /**
     * A feeling fires the moment the finger lands (owner: "it starts on lifting the finger — that delays it"); the
     * squeeze ends when it lifts.
     */
    static final class HitPress implements View.OnTouchListener {
        final Page p;
        final int i;

        HitPress(Page p, int i) {
            this.p = p;
            this.i = i;
        }

        @Override
        public boolean onTouch(View v, android.view.MotionEvent e) {
            int act = e.getActionMasked();
            if (act == android.view.MotionEvent.ACTION_DOWN) {
                v.setPressed(true);
                v.setScaleX(0.96f);
                v.setScaleY(0.96f);
                p.fxDown(i);
            } else if (act == android.view.MotionEvent.ACTION_UP || act == android.view.MotionEvent.ACTION_CANCEL) {
                p.fxUp(i);
                v.setPressed(false);
                v.setScaleX(1f);
                v.setScaleY(1f);
            }
            return true;
        }
    }

    static final class TiltToggle implements XemsUi.OnToggle {
        final Page p;

        TiltToggle(Page p) {
            this.p = p;
        }

        @Override
        public void onToggle(boolean on) {
            p.tiltToggle(on);
        }
    }

    /** Accelerometer → the screen's tilt, low-passed (gravity), on the main thread. */
    static final class Tilt implements SensorEventListener {
        final Page p;
        float gx, gy, gz;
        boolean first = true;

        Tilt(Page p) {
            this.p = p;
        }

        @Override
        public void onSensorChanged(SensorEvent e) {
            float k = first ? 1f : 0.15f;
            first = false;
            gx += k * (e.values[0] - gx);
            gy += k * (e.values[1] - gy);
            gz += k * (e.values[2] - gz);
            double n = Math.sqrt(gx * gx + gy * gy + gz * gz);
            if (n < 1) {
                return;
            }
            p.onTilt((float) Math.toDegrees(Math.acos(Math.max(-1, Math.min(1, gz / n)))));
        }

        @Override
        public void onAccuracyChanged(Sensor s, int accuracy) {
        }
    }

    static final class ModToggle implements XemsUi.OnToggle {
        final Page p;

        ModToggle(Page p) {
            this.p = p;
        }

        @Override
        public void onToggle(boolean on) {
            p.modToggle(on);
        }
    }

    static final class ModStep implements XemsUi.OnStep {
        final Page p;
        final int f;

        ModStep(Page p, int f) {
            this.p = p;
            this.f = f;
        }

        @Override
        public void onStep(int direction) {
            p.modStep(f, direction);
        }
    }

    static final class Probe implements View.OnClickListener {
        final Page p;
        final boolean write;

        Probe(Page p, boolean write) {
            this.p = p;
            this.write = write;
        }

        @Override
        public void onClick(View v) {
            p.probe(write);
        }
    }

    static final class Disarm implements Runnable {
        final Page p;

        Disarm(Page p) {
            this.p = p;
        }

        @Override
        public void run() {
            if (p.probeArmed) {
                p.probeArmed = false;
                p.render();
            }
        }
    }

    static final class Copy implements View.OnClickListener {
        final Page p;

        Copy(Page p) {
            this.p = p;
        }

        @Override
        public void onClick(View v) {
            p.copy();
        }
    }

    static final class SendRaw implements View.OnClickListener {
        final Page p;
        final EditText e;

        SendRaw(Page p, EditText e) {
            this.p = p;
            this.e = e;
        }

        @Override
        public void onClick(View v) {
            p.sendRaw(e);
        }
    }

    static final class ScrollDown implements Runnable {
        final ScrollView v;

        ScrollDown(ScrollView v) {
            this.v = v;
        }

        @Override
        public void run() {
            v.fullScroll(View.FOCUS_DOWN);
        }
    }

    static final class Tick implements Runnable {
        final Page p;

        Tick(Page p) {
            this.p = p;
        }

        @Override
        public void run() {
            try {
                p.tick();
            } catch (Throwable t) {
                XemsGuard.report("MastogoScreen.tick", t);
            }
        }
    }

    static final class StartScan implements Runnable {
        final Page p;

        StartScan(Page p) {
            this.p = p;
        }

        @Override
        public void run() {
            p.startScan();
        }
    }

    static final class Info implements View.OnClickListener {
        final Page p;

        Info(Page p) {
            this.p = p;
        }

        @Override
        public void onClick(View v) {
            p.info();
        }
    }

    static final class Dismissed implements DialogInterface.OnDismissListener {
        final Page p;

        Dismissed(Page p) {
            this.p = p;
        }

        @Override
        public void onDismiss(DialogInterface d) {
            p.dismissed();
        }
    }

    static final class CloseLink implements Runnable {
        final MastogoLink l;

        CloseLink(MastogoLink l) {
            this.l = l;
        }

        @Override
        public void run() {
            l.close();
        }
    }
}
