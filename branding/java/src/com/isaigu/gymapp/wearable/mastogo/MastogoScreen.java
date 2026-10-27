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
     * The 26 firmware programs as universal modules 1–26 (owner, 2026-10-27: "not for parts of the body —
     * universal"), grouped by what they do; frequency, width and feel from the vendor's DOMAS app
     * ({@link MastogoModes}).
     */
    static String modeName(int id) {
        return id < 0 ? "—" : tr("Модул ", "Module ") + (id + 1);
    }

    static int groupOf(int id) {
        return MastogoModes.kind(id);
    }

    static String groupName(int g) {
        switch (g) {
            case MastogoModes.MASSAGE: return tr("Масаж", "Massage");
            case MastogoModes.MUSCLE: return tr("Мускули", "Muscles");
            case MastogoModes.RECOVERY: return tr("Възстановяване", "Recovery");
            default: return tr("Облекчаване", "Relief");
        }
    }

    static String shapeName(int s) {
        switch (s) {
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
            modOn = prefs.getBoolean("mod_on", false);
        }

        int dp(float v) {
            return XemsUi.dp(a, v);
        }

        String moduleText(int id) {
            return id < 0 ? "—" : modeName(id) + " · " + MastogoModes.hz(id);
        }

        String chipName(int id) {
            return (id + 1) + " · " + MastogoModes.hz(id);
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
            String[] tabs = {tr("Модули", "Modules"), tr("Импулс", "Impulse"), tr("Изследване", "Explore")};
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
            String[] tabs = {tr("Модули", "Modules"), tr("Импулс", "Impulse"), tr("Изследване", "Explore")};
            tabHolder.addView(XemsUi.segmented(a, tabs, tab, new Tab(this)));
            fillTab();
            render();
        }

        void fillTab() {
            tabBody.removeAllViews();
            env = null;
            rotRow = null;
            rotSum = null;
            java.util.Arrays.fill(tiles, null);
            probeBtn = null;
            writeBtn = null;
            probeText = null;
            hitList = null;
            consoleView = null;
            feedback = null;
            if (tab == 1) {
                fillMod();
            } else if (tab == 2) {
                fillExplore();
            } else {
                fillProgram();
            }
            XemsUi.enter(tabBody);
        }

        // ------------------------------------------------------------------ tab: program

        void fillProgram() {
            for (int g = 0; g < MastogoModes.KINDS; g++) {
                tabBody.addView(XemsUi.label(a, groupName(g)), XemsUi.matchWrap(a, g == 0 ? 0 : 10));
                LinearLayout grid = XemsUi.vertical(a);
                LinearLayout line = null;
                int n = 0;
                for (int id = 0; id < MastogoShell.MODES; id++) {
                    if (MastogoModes.kind(id) != g) {
                        continue;
                    }
                    if (n % 5 == 0) {
                        line = XemsUi.horizontal(a);
                        grid.addView(line, XemsUi.matchWrap(a, 6));
                    }
                    n++;
                    TextView chip = XemsUi.chip(a, chipName(id), id == mode, XemsUi.GO_TEXT);
                    chip.setTextSize(13);
                    chip.setSingleLine(true);
                    chip.setOnClickListener(new PickMode(this, id));
                    tiles[id] = chip;
                    LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, dp(44), 1f);
                    lp.rightMargin = dp(6);
                    line.addView(chip, lp);
                }
                for (int i = 0; n % 5 > 0 && i < 5 - n % 5; i++) {
                    LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, dp(44), 1f);
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
                    + "DOMAS на производителя). Често се менят вътре в програмата: „а–б“ се плъзга, „а / б“ се редува. "
                    + "В „Импулс“ модулите се сменят в паузите.",
                    "Frequency and width are built into the module (from the maker's DOMAS app). They often change "
                    + "inside the program: \"a–b\" sweeps, \"a / b\" alternates. In \"Impulse\" modules change "
                    + "in the pauses."), 12.5f, XemsUi.HINT, false);
            tabBody.addView(note, XemsUi.matchWrap(a, 10));
        }

        // ------------------------------------------------------------------ tab: modulation

        void fillMod() {
            tabBody.addView(XemsUi.toggleRow(a, tr("Импулс от таблета", "Impulse from the tablet"),
                    tr("Силата следва формата долу, докато апаратчето работи",
                            "The strength follows the shape below while the unit runs"), modOn, new ModToggle(this)));
            LinearLayout[] h = new LinearLayout[1];
            tabBody.addView(XemsUi.chipRow(a, h), XemsUi.matchWrap(a, 8));
            int[] order = {MastogoShell.Mod.WORK, MastogoShell.Mod.WAVE, MastogoShell.Mod.PULSE,
                MastogoShell.Mod.RAMP, MastogoShell.Mod.TRIANGLE, MastogoShell.Mod.RANDOM};
            for (int sh : order) {
                TextView chip = XemsUi.chip(a, shapeName(sh), sh == mod.shape, TINT);
                chip.setOnClickListener(new PickShape(this, sh));
                XemsUi.addChip(a, h[0], chip);
            }
            env = new EnvelopeView(a, this);
            LinearLayout.LayoutParams el = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(110));
            el.topMargin = dp(10);
            tabBody.addView(env, el);

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
                F_OFF = 8, F_EVERY = 9;

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
                default: return String.valueOf(mod.stepMs);
            }
        }

        String fieldUnit(int f) {
            switch (f) {
                case F_LO:
                case F_HI: return tr("сила", "level");
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

        /** Seconds fields: 0.5 s steps up to 10 s, whole seconds above. */
        static int msStep(int ms, int dir) {
            int step = ms < 10000 || ms == 10000 && dir < 0 ? 500 : 1000;
            return ms + dir * step;
        }

        void modStep(int f, int dir) {
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
                default: mod.stepMs += dir * 50; break;
            }
            mod.safe();
            modChanged();
            refreshFields(tabBody);
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
            if (sh != null && modOn && sh.running) {
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
            level.set(String.valueOf(lv), sh != null && sh.mod() != null
                    ? tr("сила · импулс ", "strength · impulse ") + mod.lo + "–" + mod.hi
                    : tr("сила от 25", "strength of 25"));
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
            } else if (running) {
                h = modOn ? tr("Импулс: ", "Impulse: ") + shapeName(mod.shape) + (mod.rotate.length > 1
                        ? tr(" · модули ", " · modules ") + rotateText() : "") : tr("Работи.", "Running.");
            } else {
                h = tr("Готово. Силата тръгва от 1.", "Ready. Strength starts at 1.");
            }
            hint.setText(h);
            if (env != null) {
                env.invalidate();
            }
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
            } else {
                int first = modOn && mod.rotate.length > 1 ? mod.rotate[0] : mode;
                if (sh.mode != first) {
                    sh.setMode(first);
                }
                sh.start(minutes * 60);
                if (modOn) {
                    sh.modulate(mod.copy());
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
            if (sh.mod() != null) {                         // shift the whole envelope
                if (dir > 0 && mod.hi < MastogoShell.MAX_LEVEL || dir < 0 && mod.lo > 0) {
                    mod.lo += dir;
                    mod.hi += dir;
                }
                mod.safe();
                modChanged();
                if (tab == 1) {
                    refreshFields(tabBody);
                }
            } else {
                if (!sh.running && dir > 0) {
                    hintText = tr("Първо ▶ Пусни.", "Press ▶ Start first.");
                    render();
                    return;
                }
                sh.setLevel(Math.max(0, sh.level) + dir);
            }
            render();
        }

        void pickMode(int id) {
            mode = id;
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
            modChanged();
            fillTab();
        }

        void modToggle(boolean on) {
            modOn = on;
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
            main.postDelayed(new Tick(this), 500);
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
            long span = 2L * m.periodMs;
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
