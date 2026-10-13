package com.isaigu.gymapp.wearable.bluetens;

import android.app.Activity;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.isaigu.gymapp.wearable.WearableBlePermissions;
import com.isaigu.gymapp.widget.XemsGuard;
import com.isaigu.gymapp.widget.XemsLang;
import com.isaigu.gymapp.widget.XemsUi;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;

/**
 * The Bluetens page (dock → "Bluetens"): a tool of its own, apart from the suit and its training — owner, 2026-10-13.
 * Landscape: on the left "Готови" (XEMS's own, {@link BluetensPrograms}, with minutes) or "Мои" (the manual module:
 * programs the trainer builds parameter by parameter, {@link BluetensEditor}) or "На живо" (owner, 2026-10-13: real-time
 * control — frequency, width, impulse / pause and the Australian current change while the pads run,
 * {@link BluetensShell#swap}); the pads (classic, or the two of a
 * Duo) on the right with their strength big; one primary button ▶ / ■. The pads are found and linked by themselves.
 * Closing the page stops the output.
 */
public final class BluetensScreen {
    static final String PREFS = "xems_bluetens";
    static final int MAX_PADS = 2;
    /** Live mode swaps between two files so the one playing is never overwritten. */
    static final String LIVE_A = "XLIVA", LIVE_B = "XLIVB";

    private BluetensScreen() {}

    public static void open(Activity a) {
        try {
            new Page(a).show();
        } catch (Throwable t) {
            XemsGuard.report("BluetensScreen.open", t);
        }
    }

    static String tr(String bg, String en) {
        return XemsLang.tr(bg, en);
    }

    static boolean bg() {
        return XemsLang.isBg();
    }

    /** One pad on the page: its link and its card. */
    static final class Pad {
        BluetensLink link;
        LinearLayout card;
        TextView name;
        TextView battery;
        TextView status;
        TextView value;
        TextView minus;
        TextView plus;
        TextView warn;
        LinearLayout control;
        Runnable hideWarn;
    }

    static final class Page implements BluetensScan.Listener, BluetensLink.Listener, BluetensShell.Events {
        final Activity a;
        final Handler main = new Handler(Looper.getMainLooper());
        final SharedPreferences prefs;
        XemsUi.Shell s;
        BluetensScan scan;
        final List<Pad> pads = new ArrayList<Pad>();
        final Set<String> skip = new HashSet<String>();
        boolean closed;

        int program;
        int minutes;
        /** "Мои" tab: the trainer's own programs; {@code mineId} = the chosen one ("" = none). */
        boolean mine;
        String mineId = "";
        /** "На живо" tab: one step whose values change while it runs. */
        boolean live;
        BluetensProgram.Step liveStep;
        String liveFile = LIVE_A;
        String liveWhy = "";
        int liveToken;
        boolean wasSwapping;
        XemsUi.Stepper lHz, lUs, lBurst, lWork, lRest;
        View lRestBox;
        View lBurstBox;
        TextView lNote;
        LinearLayout tabHolder;
        LinearLayout minuteBox;
        boolean running;
        long startedAt;
        long lengthMs;
        boolean finished;
        String hintText;

        LinearLayout programList;
        LinearLayout minuteRow;
        TextView clock;
        TextView clockLabel;
        View barDone;
        View barLeft;
        LinearLayout padRow;
        LinearLayout empty;
        TextView emptyText;
        TextView hint;
        TextView go;
        int goStyle = -1;

        Page(Activity a) {
            this.a = a;
            prefs = a.getApplicationContext().getSharedPreferences(PREFS, Context.MODE_PRIVATE);
            program = prefs.getInt("program", BluetensPrograms.RECOVER);
            minutes = prefs.getInt("minutes", BluetensPrograms.defaultMinutes(program));
            mine = prefs.getBoolean("mine", false);
            mineId = prefs.getString("mine_id", "");
            live = prefs.getBoolean("live", false);
            BluetensProgram lp = BluetensProgram.decode(prefs.getString("live_step", ""));
            liveStep = lp != null ? lp.steps.get(0) : liveDefault();
            BluetensProgram.safe(liveStep);
        }

        /** A first live setting: 5 Hz massage, continuous. */
        static BluetensProgram.Step liveDefault() {
            BluetensProgram.Step st = new BluetensProgram.Step();
            st.hz = 5;
            st.us = 200;
            return st;
        }

        int dp(float v) {
            return XemsUi.dp(a, v);
        }

        // ------------------------------------------------------------------ layout

        void show() {
            XemsUi.init(a);
            s = XemsUi.shell(a, "Bluetens", tr("Електростимулация с Bluetens — отделно от костюма",
                    "Bluetens stimulation — apart from the suit"), 1280);
            XemsUi.fullScreen(s);
            s.info.setVisibility(View.VISIBLE);
            s.info.setOnClickListener(new Info(this));

            LinearLayout row = XemsUi.horizontal(a);
            row.addView(leftColumn(), new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            LinearLayout right = XemsUi.vertical(a);
            LinearLayout.LayoutParams rp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.55f);
            rp.leftMargin = dp(18);
            row.addView(right, rp);
            right.addView(clockCard(), XemsUi.matchWrap(a, 0));
            padRow = XemsUi.horizontal(a);
            right.addView(padRow, XemsUi.matchWrap(a, 14));
            empty = emptyCard();
            right.addView(empty, XemsUi.matchWrap(a, 14));
            s.body.addView(row, XemsUi.matchWrap(a, 4));

            hint = XemsUi.text(a, "", 14, XemsUi.MUTED, false);
            hint.setGravity(Gravity.CENTER_VERTICAL);
            s.footer.addView(hint, new LinearLayout.LayoutParams(0, dp(56), 1f));
            go = XemsUi.button(a, "", XemsUi.PRIMARY);
            go.setOnClickListener(new Go(this));
            LinearLayout.LayoutParams gp = new LinearLayout.LayoutParams(dp(260), dp(56));
            gp.leftMargin = dp(16);
            s.footer.addView(go, gp);

            fillPrograms();
            fillMinutes();
            render();
            s.dialog.setOnDismissListener(new Dismissed(this));
            s.dialog.show();
            WearableBlePermissions.ensureConnectPermission(a, new StartScan(this));
        }

        LinearLayout leftColumn() {
            LinearLayout col = XemsUi.card(a);
            tabHolder = XemsUi.vertical(a);
            col.addView(tabHolder);
            programList = XemsUi.vertical(a);
            col.addView(programList, XemsUi.matchWrap(a, 10));
            minuteBox = XemsUi.vertical(a);
            minuteBox.addView(XemsUi.label(a, tr("Минути", "Minutes")), XemsUi.matchWrap(a, 16));
            minuteRow = XemsUi.horizontal(a);
            minuteBox.addView(minuteRow, XemsUi.matchWrap(a, 8));
            col.addView(minuteBox);
            return col;
        }

        void fillPrograms() {
            tabHolder.removeAllViews();
            LinearLayout seg = XemsUi.segmented(a, new String[] {tr("Готови", "Ready"), tr("Мои · ръчно", "Mine · manual"),
                    tr("На живо", "Live")}, live ? 2 : mine ? 1 : 0, new Tab(this));
            seg.setAlpha(running ? 0.4f : 1f);
            tabHolder.addView(seg);
            programList.removeAllViews();
            minuteBox.setVisibility(mine && !live ? View.GONE : View.VISIBLE);
            if (live) {
                fillLive();
                return;
            }
            if (mine) {
                fillMine();
                return;
            }
            boolean b = bg();
            for (int p : BluetensPrograms.ALL) {
                boolean sel = p == program;
                int tint = BluetensPrograms.tint(p);
                LinearLayout r = XemsUi.horizontal(a);
                r.setGravity(Gravity.CENTER_VERTICAL);
                r.setPadding(dp(12), dp(8), dp(12), dp(8));
                float rad = dp(14);
                r.setBackground(XemsUi.ripple(sel ? XemsUi.rounded(XemsUi.alpha(tint, 0x26), rad, XemsUi.alpha(tint, 0xCC), dp(1.5f))
                        : XemsUi.rounded(0x00000000, rad, 0, 0), tint, rad));
                r.setClickable(true);
                r.setOnClickListener(new PickProgram(this, p));
                XemsUi.pressable(r);
                TextView dot = XemsUi.text(a, sel ? "✓" : "", 14, XemsUi.ON_ACCENT, true);
                dot.setGravity(Gravity.CENTER);
                dot.setBackground(XemsUi.rounded(sel ? tint : XemsUi.alpha(tint, 0x55), dp(13), 0, 0));
                r.addView(dot, new LinearLayout.LayoutParams(dp(26), dp(26)));
                LinearLayout texts = XemsUi.vertical(a);
                texts.addView(XemsUi.text(a, BluetensPrograms.name(p, b), 16, sel ? tint : XemsUi.TEXT, true));
                TextView feel = XemsUi.text(a, BluetensPrograms.feel(p, b), 12.5f, XemsUi.MUTED, false);
                texts.addView(feel);
                LinearLayout.LayoutParams tp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
                tp.leftMargin = dp(12);
                r.addView(texts, tp);
                r.setAlpha(running && !sel ? 0.4f : 1f);
                programList.addView(r, XemsUi.matchWrap(a, 4));
            }
        }

        /** The trainer's own programs: tap = choose, ✎ = the manual module; ＋ makes a new one. */
        void fillMine() {
            List<BluetensProgram> all = BluetensStore.list(a);
            if (find(all, mineId) == null) {
                mineId = all.isEmpty() ? "" : all.get(0).id;
            }
            int tint = XemsUi.GO;
            for (BluetensProgram p : all) {
                boolean sel = p.id.equals(mineId);
                LinearLayout r = XemsUi.horizontal(a);
                r.setGravity(Gravity.CENTER_VERTICAL);
                r.setPadding(dp(12), dp(6), dp(6), dp(6));
                float rad = dp(14);
                r.setBackground(XemsUi.ripple(sel ? XemsUi.rounded(XemsUi.alpha(tint, 0x26), rad, XemsUi.alpha(tint, 0xCC), dp(1.5f))
                        : XemsUi.rounded(0x00000000, rad, 0, 0), tint, rad));
                r.setClickable(true);
                r.setOnClickListener(new PickMine(this, p.id));
                XemsUi.pressable(r);
                LinearLayout texts = XemsUi.vertical(a);
                texts.addView(XemsUi.text(a, p.name.length() > 0 ? p.name : tr("Без име", "Untitled"), 16,
                        sel ? XemsUi.GO_TEXT : XemsUi.TEXT, true));
                texts.addView(XemsUi.text(a, BluetensEditor.time(p.seconds()) + " · " + p.steps.size()
                        + tr(p.steps.size() == 1 ? " стъпка" : " стъпки", p.steps.size() == 1 ? " step" : " steps")
                        + " · " + summary(p), 12.5f, XemsUi.MUTED, false));
                r.addView(texts, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
                TextView edit = XemsUi.iconButton(a, "✎", XemsUi.SURFACE, XemsUi.TEXT, 48);
                edit.setOnClickListener(new EditMine(this, p.id));
                edit.setEnabled(!running);
                r.addView(edit);
                r.setAlpha(running && !sel ? 0.4f : 1f);
                programList.addView(r, XemsUi.matchWrap(a, 4));
            }
            if (all.isEmpty()) {
                TextView none = XemsUi.text(a, tr("Още нямаш свои програми. Направи първата: ти задаваш честотата, "
                        + "импулса, паузите и времето.", "No programs of your own yet. Make the first: you set the "
                        + "frequency, pulse, pauses and time."), 14, XemsUi.MUTED, false);
                none.setPadding(dp(4), dp(6), dp(4), dp(6));
                programList.addView(none);
            }
            TextView add = XemsUi.button(a, tr("＋  Нова програма", "＋  New program"),
                    all.isEmpty() ? XemsUi.PRIMARY : XemsUi.SECONDARY);
            add.setOnClickListener(new NewMine(this));
            add.setEnabled(!running);
            add.setAlpha(running ? 0.4f : 1f);
            programList.addView(add, XemsUi.matchWrap(a, 12));
        }

        /**
         * "На живо": the values you turn act on the running pads within about a second (the pad gets a new
         * program and the strength comes straight back). Kind of current on top; the steppers side by side.
         */
        void fillLive() {
            LinearLayout kind = XemsUi.segmented(a, new String[] {tr("Импулси", "Pulses"),
                    tr("Австралийски ток", "Australian current")}, liveStep.aussie() ? 1 : 0, new LiveKind(this));
            programList.addView(kind, XemsUi.matchWrap(a, 2));
            LinearLayout cols = XemsUi.horizontal(a);
            LinearLayout left = XemsUi.vertical(a);
            LinearLayout right = XemsUi.vertical(a);
            cols.addView(left, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            LinearLayout.LayoutParams rp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
            rp.leftMargin = dp(10);
            cols.addView(right, rp);
            programList.addView(cols, XemsUi.matchWrap(a, 4));
            lHz = liveField(left, tr("Честота", "Frequency"), L_HZ);
            lUs = liveField(left, tr("Ширина на импулса", "Pulse width"), L_US);
            LinearLayout bb = XemsUi.vertical(a);
            left.addView(bb);
            lBurstBox = bb;
            lBurst = liveField(bb, tr("Дължина на пакета", "Burst length"), L_BURST);
            lWork = liveField(right, tr("Импулс", "Impulse"), L_WORK);
            LinearLayout rb = XemsUi.vertical(a);
            right.addView(rb);
            lRestBox = rb;
            lRest = liveField(rb, tr("Пауза", "Pause"), L_REST);
            lNote = XemsUi.text(a, "", 13, XemsUi.AMBER, true);
            programList.addView(lNote, XemsUi.matchWrap(a, 8));
            TextView keep = XemsUi.button(a, tr("Запази като моя програма", "Save as my program"), XemsUi.GHOST);
            keep.setOnClickListener(new LiveSave(this));
            programList.addView(keep, XemsUi.matchWrap(a, 4));
            renderLive();
        }

        XemsUi.Stepper liveField(LinearLayout col, String label, int f) {
            col.addView(XemsUi.text(a, label, 12.5f, XemsUi.MUTED, true), XemsUi.matchWrap(a, 8));
            XemsUi.Stepper st = XemsUi.stepper(a, "", "", 22, new LiveChange(this, f));
            col.addView(st.view, XemsUi.matchWrap(a, 4));
            return st;
        }

        static final int L_HZ = 0, L_US = 1, L_BURST = 2, L_WORK = 3, L_REST = 4;

        void renderLive() {
            if (lHz == null) {
                return;
            }
            BluetensProgram.Step st = liveStep;
            boolean aus = st.aussie();
            lHz.set(String.valueOf(st.hz), aus ? tr("пакета в секунда", "bursts a second") : "Hz");
            lUs.set(String.valueOf(st.us), "µs");
            lBurstBox.setVisibility(aus ? View.VISIBLE : View.GONE);
            lBurst.set(st.burstMs + tr(" мс", " ms"), tr("при 1 kHz", "at 1 kHz"));
            lWork.set(st.continuous() ? tr("без пауза", "continuous") : st.workS + " s",
                    st.continuous() ? tr("под 20 Hz", "under 20 Hz") : tr("после пауза", "then a pause"));
            lRestBox.setAlpha(st.continuous() ? 0.35f : 1f);
            lRest.set(st.restS + " s", "");
            lNote.setText(liveWhy.length() > 0 ? "⚠ " + liveWhy : "");
            lNote.setVisibility(liveWhy.length() > 0 ? View.VISIBLE : View.GONE);
        }

        void liveKind(int i) {
            if ((i == 1) == liveStep.aussie()) {
                return;
            }
            if (i == 1) {
                liveStep.burstMs = 4;                         // the classic: 4 ms bursts at 1 kHz, 50 a second
                liveStep.hz = 50;
                liveStep.us = Math.min(liveStep.us, BluetensProgram.BURST_US_MAX);
            } else {
                liveStep.burstMs = 0;
            }
            liveChanged();
            fillPrograms();
        }

        void liveChange(int f, int dir) {
            BluetensProgram.Step st = liveStep;
            switch (f) {
                case L_HZ:
                    st.hz = Math.max(1, Math.min(120, st.hz + dir));
                    if (st.hz >= 20 && st.continuous()) {
                        st.workS = st.hz >= 50 ? 4 : 6;
                    }
                    break;
                case L_US:
                    st.us = Math.max(50, Math.min(400, st.us + dir * 10));
                    break;
                case L_BURST:
                    st.burstMs = Math.max(1, Math.min(BluetensProgram.BURST_MAX_MS, st.burstMs + dir));
                    break;
                case L_WORK:
                    st.workS = Math.max(0, Math.min(BluetensProgram.WORK_MAX, st.workS + dir));
                    break;
                default:
                    st.restS = Math.max(1, Math.min(BluetensProgram.REST_MAX, st.restS + dir));
                    break;
            }
            liveChanged();
            renderLive();
        }

        /** Held inside the limits, remembered, and — while running — sent once the turning stops. */
        void liveChanged() {
            liveStep.seconds = BluetensProgram.SEC_MAX;
            String[] why = BluetensProgram.safe(liveStep);
            liveWhy = bg() ? why[0] : why[1];
            BluetensProgram one = new BluetensProgram();
            one.id = "live";
            one.steps.add(liveStep);
            prefs.edit().putString("live_step", one.encode()).apply();
            if (running && live) {
                main.postDelayed(new LiveApply(this, ++liveToken), 600);
            }
            render();
        }

        BluetensLok liveLok(long ms) {
            BluetensProgram one = new BluetensProgram();
            BluetensProgram.Step st = liveStep.copy();
            st.seconds = (int) Math.max(BluetensProgram.SEC_MIN, Math.min(BluetensProgram.SEC_MAX, ms / 1000));
            one.steps.add(st);
            return one.toLok();
        }

        /** The new values to the running pads, under the other live file name (never over the one playing). */
        void liveApply(int t) {
            if (t != liveToken || closed || !running || !live) {
                return;
            }
            long left = lengthMs - (System.currentTimeMillis() - startedAt);
            if (left < 15000) {
                return;
            }
            liveFile = LIVE_A.equals(liveFile) ? LIVE_B : LIVE_A;
            byte[] content = BluetensShell.ascii(liveLok(left).build());
            for (Pad p : pads) {
                if (p.link.state == BluetensLink.READY && p.link.shell.running) {
                    p.link.shell.swap(liveFile, content);
                }
            }
            render();
        }

        void liveSave() {
            int n = BluetensStore.list(a).size() + 1;
            BluetensProgram p = BluetensProgram.fresh(BluetensStore.newId(), tr("На живо ", "Live ") + n);
            BluetensProgram.Step st = liveStep.copy();
            st.seconds = minutes * 60;
            p.steps.set(0, st);
            BluetensStore.save(a, p);
            hintText = tr("✓ Записана в „Мои“ като „", "✓ Saved in “Mine” as “") + p.name + tr("“", "”");
            render();
        }

        static BluetensProgram find(List<BluetensProgram> all, String id) {
            for (BluetensProgram p : all) {
                if (p.id.equals(id)) {
                    return p;
                }
            }
            return null;
        }

        /** "5–50 Hz · 250 µs" — the range of the program at a glance. */
        static String summary(BluetensProgram p) {
            int lo = 999, hi = 0, us = 0;
            for (BluetensProgram.Step st : p.steps) {
                lo = Math.min(lo, st.hz);
                hi = Math.max(hi, st.hz);
                us = Math.max(us, st.us);
            }
            return (lo == hi ? String.valueOf(lo) : lo + "–" + hi) + " Hz · " + us + " µs";
        }

        void setTab(int i) {
            if (running || i == (live ? 2 : mine ? 1 : 0)) {
                return;
            }
            mine = i == 1;
            live = i == 2;
            prefs.edit().putBoolean("mine", mine).putBoolean("live", live).apply();
            finished = false;
            fillPrograms();
            render();
        }

        void pickMine(String id) {
            if (running || id.equals(mineId)) {
                return;
            }
            mineId = id;
            prefs.edit().putString("mine_id", id).apply();
            finished = false;
            fillPrograms();
            render();
        }

        void editMine(String id) {
            if (running) {
                return;
            }
            BluetensProgram p = BluetensStore.find(a, id);
            if (p != null) {
                BluetensEditor.open(a, p, new Edited(this));
            }
        }

        void newMine() {
            if (running) {
                return;
            }
            int n = BluetensStore.list(a).size() + 1;
            BluetensProgram p = BluetensProgram.fresh(BluetensStore.newId(), tr("Моя програма ", "My program ") + n);
            BluetensStore.save(a, p);
            BluetensEditor.open(a, p, new Edited(this));
        }

        void edited(BluetensProgram p) {
            if (p != null) {
                mineId = p.id;
                prefs.edit().putString("mine_id", mineId).apply();
            }
            finished = false;
            fillPrograms();
            render();
        }

        /** What ▶ would run now: null when "Мои" has nothing chosen. */
        BluetensLok currentLok() {
            if (live) {
                return liveLok(minutes * 60000L);
            }
            if (!mine) {
                return BluetensPrograms.build(program, minutes);
            }
            BluetensProgram p = BluetensStore.find(a, mineId);
            return p != null ? p.toLok() : null;
        }

        String currentName() {
            if (live) {
                return tr("На живо", "Live");
            }
            if (!mine) {
                return BluetensPrograms.name(program, bg());
            }
            BluetensProgram p = BluetensStore.find(a, mineId);
            return p != null ? p.name : "";
        }

        void fillMinutes() {
            minuteRow.removeAllViews();
            for (int m : BluetensPrograms.MINUTES) {
                TextView c = XemsUi.chip(a, m + tr(" мин", " min"), m == minutes, XemsUi.GO);
                c.setOnClickListener(new PickMinutes(this, m));
                c.setAlpha(running && m != minutes ? 0.4f : 1f);
                c.setMinHeight(dp(48));
                XemsUi.addChip(a, minuteRow, c);
            }
        }

        LinearLayout clockCard() {
            LinearLayout card = XemsUi.card(a);
            LinearLayout top = XemsUi.horizontal(a);
            top.setGravity(Gravity.BOTTOM);
            clock = XemsUi.text(a, "", 52, XemsUi.TEXT, true);
            clock.setIncludeFontPadding(false);
            top.addView(clock);
            clockLabel = XemsUi.text(a, "", 15, XemsUi.MUTED, true);
            clockLabel.setPadding(dp(14), 0, 0, dp(8));
            top.addView(clockLabel, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            card.addView(top);
            LinearLayout bar = XemsUi.horizontal(a);
            bar.setBackground(XemsUi.rounded(XemsUi.SURFACE, dp(4), 0, 0));
            barDone = new View(a);
            barDone.setBackground(XemsUi.rounded(XemsUi.GO, dp(4), 0, 0));
            barLeft = new View(a);
            bar.addView(barDone, new LinearLayout.LayoutParams(0, dp(8), 0f));
            bar.addView(barLeft, new LinearLayout.LayoutParams(0, dp(8), 1f));
            card.addView(bar, XemsUi.matchWrap(a, 12));
            return card;
        }

        LinearLayout emptyCard() {
            LinearLayout card = XemsUi.card(a);
            card.setGravity(Gravity.CENTER);
            card.setPadding(dp(22), dp(28), dp(22), dp(28));
            emptyText = XemsUi.text(a, "", 18, XemsUi.TEXT, true);
            emptyText.setGravity(Gravity.CENTER);
            card.addView(emptyText);
            TextView sub = XemsUi.text(a, tr("Включи устройството с бутона му. Duo — включи и двете.",
                    "Switch the pad on with its button. Duo — switch on both."), 14, XemsUi.MUTED, false);
            sub.setGravity(Gravity.CENTER);
            sub.setPadding(0, dp(8), 0, 0);
            card.addView(sub);
            return card;
        }

        Pad padCard(BluetensLink link) {
            Pad p = new Pad();
            p.link = link;
            p.card = XemsUi.card(a);
            LinearLayout head = XemsUi.horizontal(a);
            head.setGravity(Gravity.CENTER_VERTICAL);
            p.name = XemsUi.text(a, "", 17, XemsUi.TEXT, true);
            head.addView(p.name, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            p.battery = XemsUi.text(a, "", 14, XemsUi.MUTED, true);
            head.addView(p.battery);
            p.card.addView(head);
            p.status = XemsUi.text(a, "", 13, XemsUi.MUTED, false);
            p.card.addView(p.status, XemsUi.matchWrap(a, 2));

            p.control = XemsUi.horizontal(a);
            p.control.setGravity(Gravity.CENTER);
            p.minus = XemsUi.iconButton(a, "−", XemsUi.SURFACE, XemsUi.TEXT, 64);
            p.plus = XemsUi.iconButton(a, "+", XemsUi.SURFACE, XemsUi.TEXT, 64);
            XemsUi.repeatOnHold(p.minus, new Step(this, p), -1);
            XemsUi.repeatOnHold(p.plus, new Step(this, p), +1);
            LinearLayout mid = XemsUi.vertical(a);
            mid.setGravity(Gravity.CENTER);
            p.value = XemsUi.text(a, "0", 60, XemsUi.TEXT, true);
            p.value.setGravity(Gravity.CENTER);
            p.value.setIncludeFontPadding(false);
            mid.addView(p.value);
            TextView unit = XemsUi.text(a, tr("сила от 60", "strength of 60"), 12.5f, XemsUi.MUTED, false);
            unit.setGravity(Gravity.CENTER);
            mid.addView(unit);
            p.control.addView(p.minus);
            p.control.addView(mid, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            p.control.addView(p.plus);
            p.card.addView(p.control, XemsUi.matchWrap(a, 14));

            p.warn = XemsUi.text(a, tr("⚠ Провери електродите — не допират добре",
                    "⚠ Check the electrodes — poor contact"), 13.5f, XemsUi.AMBER, true);
            p.warn.setPadding(dp(12), dp(8), dp(12), dp(8));
            p.warn.setBackground(XemsUi.rounded(XemsUi.alpha(XemsUi.AMBER, 0x22), dp(12), 0, 0));
            p.warn.setVisibility(View.GONE);
            p.card.addView(p.warn, XemsUi.matchWrap(a, 10));
            return p;
        }

        // ------------------------------------------------------------------ state → screen

        void render() {
            if (s == null) {
                return;
            }
            boolean b = bg();
            BluetensLok cur = running ? null : currentLok();
            long left = running ? Math.max(0, lengthMs - (System.currentTimeMillis() - startedAt))
                    : cur != null ? (long) cur.ms() : 0;
            long secs = (left + 999) / 1000;
            clock.setText(String.format(Locale.ROOT, "%d:%02d", secs / 60, secs % 60));
            clockLabel.setText(running ? tr("остават · ", "left · ") + currentName()
                    : finished ? tr("Готово ✓", "Done ✓") : currentName());
            clockLabel.setTextColor(finished && !running ? XemsUi.GO_TEXT : XemsUi.MUTED);
            float done = running && lengthMs > 0 ? Math.min(1f, (System.currentTimeMillis() - startedAt) / (float) lengthMs) : 0f;
            ((LinearLayout.LayoutParams) barDone.getLayoutParams()).weight = done;
            ((LinearLayout.LayoutParams) barLeft.getLayoutParams()).weight = 1f - done;
            barDone.requestLayout();

            int ready = 0;
            boolean uploading = false;
            boolean swapping = false;
            for (int i = 0; i < pads.size(); i++) {
                Pad p = pads.get(i);
                renderPad(p, i);
                if (p.link.state == BluetensLink.READY) {
                    ready++;
                }
                uploading |= p.link.shell.uploading;
                swapping |= p.link.shell.swapping;
            }
            if (wasSwapping && !swapping && running) {
                hintText = tr("✓ Новите стойности работят", "✓ The new values are on");
            }
            wasSwapping = swapping;
            empty.setVisibility(pads.isEmpty() ? View.VISIBLE : View.GONE);
            emptyText.setText(scan == null ? tr("Bluetooth е изключен", "Bluetooth is off")
                    : tr("Търся Bluetens…", "Looking for Bluetens…"));

            go.setText(running ? tr("■  Спри", "■  Stop") : tr("▶  Пусни", "▶  Start"));
            int style = running ? XemsUi.DANGER_BTN : XemsUi.PRIMARY;
            if (style != goStyle) {
                goStyle = style;
                go.setBackgroundDrawable(XemsUi.button(a, "", style).getBackground());
            }
            boolean can = running || (ready > 0 && cur != null);
            boolean busy = uploading && !swapping;           // a live change never locks ■
            go.setEnabled(can && !busy);
            go.setAlpha(can && !busy ? 1f : 0.4f);
            String h;
            if (swapping) {
                h = tr("Прилагам новите стойности…", "Applying the new values…");
            } else if (hintText != null) {
                h = hintText;
            } else if (uploading) {
                h = tr("Качвам програмата в устройството…", "Sending the program to the pad…");
            } else if (running && live) {
                h = tr("Променяй отляво — устройството следва за около секунда.",
                        "Change the values on the left — the pad follows in about a second.");
            } else if (running) {
                h = tr("Качвай силата, докато е приятно — не до болка.", "Raise the strength until it feels good — never to pain.");
            } else if (cur == null) {
                h = tr("Направи своя програма с ＋ или избери от „Готови“.", "Make a program with ＋ or pick a ready one.");
            } else if (ready == 0) {
                h = pads.isEmpty() ? "" : tr("Свързвам…", "Connecting…");
            } else {
                h = tr("Сложи електродите и пусни. Силата започва от 1.", "Place the electrodes and start. Strength starts at 1.");
            }
            hint.setText(h);
        }

        void renderPad(Pad p, int index) {
            BluetensLink l = p.link;
            BluetensShell sh = l.shell;
            boolean twin = pads.size() > 1;
            String base = l.duo ? "Duo" : "Bluetens";
            p.name.setText(twin ? base + " " + (index + 1) : base);
            int pct = sh.batteryPct();
            p.battery.setText(pct >= 0 ? "▮ " + pct + " %" : "");
            p.battery.setTextColor(pct >= 0 && pct <= 25 ? XemsUi.DANGER : XemsUi.MUTED);
            String st;
            int col = XemsUi.MUTED;
            if (l.state == BluetensLink.READY) {
                st = sh.running ? tr("Работи ●", "Running ●") : tr("Свързан ✓", "Connected ✓");
                col = XemsUi.GO_TEXT;
            } else if (l.state == BluetensLink.LOST) {
                st = tr("Връзката падна — свързвам отново", "Link lost — reconnecting");
                col = XemsUi.AMBER;
            } else {
                st = tr("Свързвам…", "Connecting…");
            }
            p.status.setText(st);
            p.status.setTextColor(col);
            p.value.setText(String.valueOf(sh.running ? sh.strength : 0));
            boolean live = sh.running && l.state == BluetensLink.READY;
            p.control.setAlpha(live ? 1f : 0.4f);
            p.minus.setEnabled(live);
            p.plus.setEnabled(live);
        }

        // ------------------------------------------------------------------ pads

        void startScan() {
            if (closed) {
                return;
            }
            scan = new BluetensScan(this);
            if (!scan.start()) {
                scan = null;
            }
            render();
        }

        @Override
        public void onPad(BluetoothDevice d, int kind) {
            if (closed || d.getAddress() == null || skip.contains(d.getAddress()) || pads.size() >= MAX_PADS) {
                return;
            }
            for (Pad p : pads) {
                if (p.link.mac.equals(d.getAddress())) {
                    return;
                }
            }
            BluetensLink link = new BluetensLink(a, d, (kind & BluetensAdvert.DUO) != 0,
                    (kind & BluetensAdvert.V2) != 0, this, this);
            Pad p = padCard(link);
            pads.add(p);
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
            if (padRow.getChildCount() > 0) {
                lp.leftMargin = dp(14);
            }
            padRow.addView(p.card, lp);
            XemsUi.enter(p.card);
            if (pads.size() >= MAX_PADS && scan != null) {
                scan.stop();
            }
            link.connect();
            render();
        }

        @Override
        public void onLinkState(BluetensLink link, int state) {
            if (link.notPad) {
                skip.add(link.mac);
                Pad gone = find(link);
                link.close();
                if (gone != null) {
                    pads.remove(gone);
                    padRow.removeView(gone.card);
                }
                if (scan != null) {
                    scan.start();
                }
            }
            if (state == BluetensLink.READY && running) {
                hintText = tr("Устройството се върна — пусни отново, ако е спряло.",
                        "The pad is back — start again if it stopped.");
            }
            render();
        }

        Pad find(BluetensLink link) {
            for (Pad p : pads) {
                if (p.link == link) {
                    return p;
                }
            }
            return null;
        }

        Pad find(BluetensShell sh) {
            for (Pad p : pads) {
                if (p.link.shell == sh) {
                    return p;
                }
            }
            return null;
        }

        // ------------------------------------------------------------------ actions

        void pickProgram(int p) {
            if (running || p == program) {
                return;
            }
            program = p;
            minutes = BluetensPrograms.defaultMinutes(p);
            prefs.edit().putInt("program", program).putInt("minutes", minutes).apply();
            finished = false;
            fillPrograms();
            fillMinutes();
            render();
        }

        void pickMinutes(int m) {
            if (running || m == minutes) {
                return;
            }
            minutes = m;
            prefs.edit().putInt("minutes", minutes).apply();
            finished = false;
            fillMinutes();
            render();
        }

        void go() {
            hintText = null;
            if (running) {
                for (Pad p : pads) {
                    p.link.shell.stop();
                }
                return;
            }
            BluetensLok lok = currentLok();
            if (lok == null) {
                return;
            }
            byte[] content = BluetensShell.ascii(lok.build());
            // own programs share one file on the pad (it is replaced when it changes — the md5 decides)
            liveFile = LIVE_A;
            String file = live ? LIVE_A : mine ? "XMINE" : BluetensPrograms.fileName(program, minutes);
            lengthMs = (long) lok.ms();
            finished = false;
            for (Pad p : pads) {
                if (p.link.state == BluetensLink.READY) {
                    p.link.shell.start(file, content);
                }
            }
            render();
        }

        void step(Pad p, int dir) {
            BluetensShell sh = p.link.shell;
            if (!sh.running) {
                return;
            }
            int v = Math.max(1, Math.min(BluetensShell.MAX_STRENGTH, sh.strength + dir));
            if (v != sh.strength) {
                sh.strength = v;                              // shown at once; the pad confirms
                sh.strength(v);
                p.value.setText(String.valueOf(v));
            }
        }

        void tick() {
            if (closed || !running) {
                return;
            }
            render();
            main.postDelayed(new Tick(this), 1000);
        }

        // ------------------------------------------------------------------ BluetensShell.Events

        @Override
        public void onInfo(BluetensShell sh) {
            render();
        }

        @Override
        public void onStrength(BluetensShell sh, int value, boolean fromPad) {
            Pad p = find(sh);
            if (p != null) {
                p.value.setText(String.valueOf(sh.running ? value : 0));
            }
        }

        @Override
        public void onRunning(BluetensShell sh, boolean on) {
            boolean any = false;
            for (Pad p : pads) {
                any |= p.link.shell.running;
            }
            if (any && !running) {
                running = true;
                startedAt = System.currentTimeMillis();
                fillPrograms();
                fillMinutes();
                main.postDelayed(new Tick(this), 1000);
            } else if (!any && running) {
                running = false;
                finished = System.currentTimeMillis() - startedAt >= lengthMs - 5000;
                fillPrograms();
                fillMinutes();
            }
            render();
        }

        @Override
        public void onNotice(BluetensShell sh, int notice) {
            Pad p = find(sh);
            if (notice == BluetensShell.NOTICE_NOLOAD && p != null) {
                p.warn.setVisibility(View.VISIBLE);
                main.removeCallbacks(p.hideWarn);
                p.hideWarn = new HideWarn(p);
                main.postDelayed(p.hideWarn, 6000);
            } else if (notice == BluetensShell.NOTICE_LOW) {
                hintText = tr("Батерията свърши — зареди устройството.", "Battery empty — charge the pad.");
            } else if (notice == BluetensShell.NOTICE_OFF) {
                hintText = tr("Устройството се изключи.", "The pad switched off.");
            } else if (notice == BluetensShell.NOTICE_ERROR) {
                hintText = tr("Устройството спря с грешка — пусни отново.", "The pad stopped with an error — start again.");
            } else if (notice == BluetensShell.NOTICE_FULL) {
                hintText = tr("Паметта на устройството е пълна.", "The pad's memory is full.");
            }
            render();
        }

        @Override
        public void onUpload(BluetensShell sh, boolean busy) {
            render();
        }

        @Override
        public void onFailed(BluetensShell sh, String what) {
            if (!"str".equals(what) && !"bat".equals(what)) {
                hintText = tr("Устройството не отговори — опитай пак.", "The pad did not answer — try again.");
            }
            render();
        }

        // ------------------------------------------------------------------ close

        void dismissed() {
            closed = true;
            if (scan != null) {
                scan.stop();
            }
            for (Pad p : pads) {
                if (p.link.shell.running) {
                    p.link.shell.stop();                      // never leave a pad stimulating behind a closed page
                }
            }
            main.postDelayed(new CloseLinks(new ArrayList<Pad>(pads)), 800);
        }
    }

    // ------------------------------------------------------------------ named listeners (dx: no anonymous classes)

    static final class StartScan implements Runnable {
        final Page v;

        StartScan(Page v) {
            this.v = v;
        }

        @Override
        public void run() {
            try {
                v.startScan();
            } catch (Throwable t) {
                XemsGuard.report("BluetensScreen.scan", t);
            }
        }
    }

    static final class Go implements View.OnClickListener {
        final Page v;

        Go(Page v) {
            this.v = v;
        }

        @Override
        public void onClick(View view) {
            XemsUi.haptic(view);
            v.go();
        }
    }

    static final class PickProgram implements View.OnClickListener {
        final Page v;
        final int p;

        PickProgram(Page v, int p) {
            this.v = v;
            this.p = p;
        }

        @Override
        public void onClick(View view) {
            v.pickProgram(p);
        }
    }

    static final class Tab implements XemsUi.OnIndex {
        final Page v;

        Tab(Page v) {
            this.v = v;
        }

        @Override
        public void onIndex(int index) {
            v.setTab(index);
        }
    }

    static final class PickMine implements View.OnClickListener {
        final Page v;
        final String id;

        PickMine(Page v, String id) {
            this.v = v;
            this.id = id;
        }

        @Override
        public void onClick(View view) {
            v.pickMine(id);
        }
    }

    static final class EditMine implements View.OnClickListener {
        final Page v;
        final String id;

        EditMine(Page v, String id) {
            this.v = v;
            this.id = id;
        }

        @Override
        public void onClick(View view) {
            v.editMine(id);
        }
    }

    static final class NewMine implements View.OnClickListener {
        final Page v;

        NewMine(Page v) {
            this.v = v;
        }

        @Override
        public void onClick(View view) {
            v.newMine();
        }
    }

    static final class Edited implements BluetensEditor.Listener {
        final Page v;

        Edited(Page v) {
            this.v = v;
        }

        @Override
        public void onClosed(BluetensProgram p) {
            v.edited(p);
        }
    }

    static final class PickMinutes implements View.OnClickListener {
        final Page v;
        final int m;

        PickMinutes(Page v, int m) {
            this.v = v;
            this.m = m;
        }

        @Override
        public void onClick(View view) {
            v.pickMinutes(m);
        }
    }

    static final class Step implements XemsUi.OnStep {
        final Page v;
        final Pad p;

        Step(Page v, Pad p) {
            this.v = v;
            this.p = p;
        }

        @Override
        public void onStep(int direction) {
            v.step(p, direction);
        }
    }

    static final class Tick implements Runnable {
        final Page v;

        Tick(Page v) {
            this.v = v;
        }

        @Override
        public void run() {
            v.tick();
        }
    }

    static final class HideWarn implements Runnable {
        final Pad p;

        HideWarn(Pad p) {
            this.p = p;
        }

        @Override
        public void run() {
            p.warn.setVisibility(View.GONE);
        }
    }

    static final class CloseLinks implements Runnable {
        final List<Pad> pads;

        CloseLinks(List<Pad> pads) {
            this.pads = pads;
        }

        @Override
        public void run() {
            for (Pad p : pads) {
                p.link.close();
            }
        }
    }

    static final class Dismissed implements DialogInterface.OnDismissListener {
        final Page v;

        Dismissed(Page v) {
            this.v = v;
        }

        @Override
        public void onDismiss(DialogInterface d) {
            v.dismissed();
        }
    }

    static final class LiveKind implements XemsUi.OnIndex {
        final Page v;

        LiveKind(Page v) {
            this.v = v;
        }

        @Override
        public void onIndex(int index) {
            v.liveKind(index);
        }
    }

    static final class LiveChange implements XemsUi.OnStep {
        final Page v;
        final int f;

        LiveChange(Page v, int f) {
            this.v = v;
            this.f = f;
        }

        @Override
        public void onStep(int direction) {
            v.liveChange(f, direction);
        }
    }

    static final class LiveApply implements Runnable {
        final Page v;
        final int t;

        LiveApply(Page v, int t) {
            this.v = v;
            this.t = t;
        }

        @Override
        public void run() {
            try {
                v.liveApply(t);
            } catch (Throwable e) {
                XemsGuard.report("BluetensScreen.live", e);
            }
        }
    }

    static final class LiveSave implements View.OnClickListener {
        final Page v;

        LiveSave(Page v) {
            this.v = v;
        }

        @Override
        public void onClick(View view) {
            v.liveSave();
        }
    }

    static final class Info implements View.OnClickListener {
        final Page v;

        Info(Page v) {
            this.v = v;
        }

        @Override
        public void onClick(View view) {
            boolean b = bg();
            XemsUi.Shell s = XemsUi.shell(v.a, v.live ? tr("На живо", "Live") : v.mine ? tr("Ръчен режим", "Manual mode")
                    : BluetensPrograms.name(v.program, b),
                    v.live ? tr("Стойностите се сменят, докато устройството работи: то получава нова програма за около "
                            + "секунда и силата се връща там, където беше. Австралийски ток — пакети по 1–5 мс от импулси "
                            + "с 1 kHz (най-високото, което устройството може, е 1,2 kHz — вариантът с 4 kHz не става); "
                            + "класиката е 4 мс пакети, 50 в секунда. Всичко стои в границите за безопасност на костюма.",
                            "The values change while the pad runs: it gets a new program in about a second and the "
                            + "strength comes back to where it was. Australian current — 1–5 ms bursts of 1 kHz pulses "
                            + "(the pad tops out at 1.2 kHz — the 4 kHz kind is out of reach); the classic is 4 ms bursts, "
                            + "50 a second. Everything stays inside the suit's safety limits.")
                    : v.mine ? tr("Ти задаваш всяка стъпка: време, честота, ширина на импулса, импулс и пауза, "
                            + "импулси в паузата, плавно качване. Всичко стои в границите за безопасност на костюма.",
                            "You set every step: time, frequency, pulse width, impulse and pause, pulses in the pause, "
                            + "soft rise. Everything stays inside the suit's safety limits.")
                            : BluetensPrograms.detail(v.program, b), 620);
            String[] lines = b ? new String[] {
                    "• Електродите — на чиста, суха кожа, върху мускула, не върху става или кост.",
                    "• Започва от сила 1. Качвай, докато е приятно — никога до болка.",
                    "• Не върху гърдите при пейсмейкър, не по време на бременност, не върху рани.",
                    "• Duo: двете устройства тръгват заедно, силата е отделна за всяко.",
                    "• Затвориш ли страницата, устройствата спират."}
                    : new String[] {
                    "• Electrodes on clean, dry skin over the muscle — not on a joint or bone.",
                    "• It starts at strength 1. Raise it until it feels good — never to pain.",
                    "• Not on the chest with a pacemaker, not in pregnancy, not on wounds.",
                    "• Duo: both pads start together; each has its own strength.",
                    "• Closing the page stops the pads."};
            for (String l : lines) {
                s.body.addView(XemsUi.text(v.a, l, 15, XemsUi.TEXT, false), XemsUi.matchWrap(v.a, 8));
            }
            s.dialog.show();
        }
    }
}
