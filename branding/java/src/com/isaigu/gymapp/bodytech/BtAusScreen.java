package com.isaigu.gymapp.bodytech;

import android.app.Activity;
import android.content.DialogInterface;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.isaigu.gymapp.widget.XemsUi;

/**
 * "Модулация" (owner, 1.1.372; was "Австралийски ток"): one passive procedure of the 1–2 kHz current (atrophy,
 * passive lipolysis, interferential pain), run by {@link BtAusRun} on one bodytech suit. Opened from the automatic
 * mode's passive cards ({@link #open}), only for a row whose suit is a bodytech one. Setup: what it is on the left,
 * zones / level / time on the right. Running: the clock, the phase and the level, big. Landscape; nothing is saved
 * into the training program. Docs: docs/xems-modulation.md.
 */
public final class BtAusScreen {
    static final int[] LEVELS = {1, 3, 5, 10, 20, 30, 50};
    static final int[] BURST_HZ = {0, 10, 50, 100};
    static final String CONTRA = "Не се пуска при: пейсмейкър, дефибрилатор или друг имплантиран уред; бременност (корем, "
            + "кръст); активно онкологично заболяване; неуправлявана епилепсия; тромбоза, тежки артериални "
            + "нарушения, активен кръвоизлив; рана, възпаление или изгаряне под електродите.\n\nПърво при лекар: диабет с "
            + "невропатия, сърдечна болест или аритмия, управлявана епилепсия, метален имплант в зоната, алергия към "
            + "електроди, нарушена кожна чувствителност.";

    final Activity a;
    final String mac;
    final XemsUi.Shell sh;
    final BtAusRun run;
    boolean more;
    int shown = -1;                       // the state the body was drawn for

    // live views of the running screen
    TextView tvTime, tvPhase, tvLeft, tvFeel;
    View barFill, barRest;
    TextView[] chTv = new TextView[BtSettings.CHANNELS + 1];
    XemsUi.Stepper lvl;

    /** The automatic mode's modulation card → this procedure on that row's suit. false = no such procedure. */
    public static boolean open(Activity a, String mac, String id, String who) {
        BtAus.T t = BtAus.byId(id);
        if (a == null || t == null) return false;
        BtSettings.load(a);
        new BtAusScreen(a, mac, t, who).show();
        return true;
    }

    BtAusScreen(Activity a, String mac, BtAus.T t, String who) {
        this.a = a;
        this.mac = mac;
        XemsUi.init(a);
        String tail = mac != null && mac.length() >= 8 ? mac.substring(mac.length() - 8) : "";
        String sub = who != null && who.length() > 0 ? who : "";
        if (tail.length() > 0) sub += (sub.length() > 0 ? " · " : "") + "костюм …" + tail;
        sh = XemsUi.shell(a, "Модулация · " + t.name, sub.length() > 0 ? sub : null, 1060);
        run = new BtAusRun(mac, new Refresh(this));
        run.load(t);
        sh.dialog.setOnDismissListener(new Stop(run));
        render();
    }

    void show() {
        sh.dialog.show();
        XemsUi.fitHeight(a, sh, 0.94f);
    }

    // ------------------------------------------------------------------ drawing

    /** Called by the runner every tick and on state changes. */
    void refresh() {
        if (run.state != shown) {
            render();
            return;
        }
        if (run.state == BtAusRun.RUN || run.state == BtAusRun.PAUSE) live();
    }

    void render() {
        shown = run.state;
        sh.body.removeAllViews();
        sh.footer.removeAllViews();
        for (int i = 0; i < chTv.length; i++) chTv[i] = null;
        if (run.error != null) {
            sh.subtitle.setText(run.error);
            sh.subtitle.setVisibility(View.VISIBLE);
        }
        if (run.state == BtAusRun.IDLE) setup();
        else running();
    }

    private void setup() {
        BtAus.T t = run.t;
        LinearLayout row = XemsUi.horizontal(a);
        row.setGravity(Gravity.TOP);

        // left: what the procedure is (one procedure per card in the automatic mode)
        LinearLayout left = XemsUi.vertical(a);
        left.addView(XemsUi.label(a, "Цел"));
        left.addView(XemsUi.text(a, t.goal, 14, XemsUi.TEXT, false));
        TextView how = XemsUi.label(a, "Как");
        how.setPadding(0, XemsUi.dp(a, 12), 0, 0);
        left.addView(how);
        left.addView(XemsUi.text(a, t.how, 13, XemsUi.MUTED, false));
        TextView cr = XemsUi.label(a, "Курс");
        cr.setPadding(0, XemsUi.dp(a, 12), 0, 0);
        left.addView(cr);
        left.addView(XemsUi.text(a, t.course, 13, XemsUi.MUTED, false));
        row.addView(left, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 4f));

        // right: the chosen one
        LinearLayout right = XemsUi.vertical(a);
        LinearLayout head = XemsUi.horizontal(a);
        head.setGravity(Gravity.CENTER_VERTICAL);
        head.addView(XemsUi.text(a, "Усещане", 13, XemsUi.MUTED, true),
                new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        TextView info = XemsUi.iconButton(a, "i", XemsUi.SURFACE, XemsUi.TEXT, 40);
        info.setOnClickListener(new Do(this, Do.INFO, 0));
        head.addView(info, new LinearLayout.LayoutParams(XemsUi.dp(a, 40), XemsUi.dp(a, 40)));
        right.addView(head);
        TextView feel = XemsUi.text(a, t.feel, 15, XemsUi.GO_TEXT, true);
        feel.setPadding(0, XemsUi.dp(a, 2), 0, XemsUi.dp(a, 10));
        right.addView(feel);

        right.addView(XemsUi.label(a, "Зони (канали)"));
        LinearLayout[] ch = new LinearLayout[1];
        HorizontalScrollView cs = XemsUi.chipRow(a, ch);
        for (int pos = 0; pos < BtSettings.CHANNELS; pos++) {
            int c = BtSettings.channelAt(pos);
            TextView chip = XemsUi.chip(a, BtSettings.name(c), run.chans[c], XemsUi.GO_TEXT);
            chip.setOnClickListener(new Do(this, Do.CHAN, c));
            XemsUi.addChip(a, ch[0], chip);
        }
        right.addView(cs, XemsUi.matchWrap(a, 6));

        LinearLayout r1 = XemsUi.horizontal(a);
        r1.setGravity(Gravity.TOP);
        r1.addView(field("Ниво на тока", run.level + " %", Stp.LEVEL),
                new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        r1.addView(field("Време", run.minutes + " мин", Stp.MIN), XemsUi.weight(1f, 12, a));
        right.addView(r1, XemsUi.matchWrap(a, 12));
        LinearLayout lc = XemsUi.horizontal(a);
        LinearLayout[] lh = new LinearLayout[1];
        HorizontalScrollView ls = XemsUi.chipRow(a, lh);
        for (int i = 0; i < LEVELS.length; i++) {
            TextView c = XemsUi.chip(a, LEVELS[i] + "", LEVELS[i] == run.level, XemsUi.GO_TEXT);
            c.setOnClickListener(new Do(this, Do.LEVEL, LEVELS[i]));
            XemsUi.addChip(a, lh[0], c);
        }
        lc.addView(ls, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        right.addView(lc, XemsUi.matchWrap(a, 6));

        if (!t.ifc) {
            LinearLayout r2 = XemsUi.horizontal(a);
            r2.setGravity(Gravity.TOP);
            r2.addView(field("Ток тече", run.offS == 0 ? "непрекъснато" : run.onS + " s", Stp.ON),
                    new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            r2.addView(field("Почивка", run.offS == 0 ? "—" : run.offS + " s", Stp.OFF), XemsUi.weight(1f, 12, a));
            right.addView(r2, XemsUi.matchWrap(a, 12));
        }

        TextView mt = XemsUi.text(a, more ? "▴ По-малко" : "▾ Още параметри", 13, XemsUi.MUTED, true);
        mt.setPadding(0, XemsUi.dp(a, 12), 0, XemsUi.dp(a, 6));
        mt.setOnClickListener(new Do(this, Do.MORE, 0));
        right.addView(mt);
        if (more) moreBox(right);
        TextView sum = XemsUi.text(a, summary(), 12, XemsUi.HINT, false);
        sum.setPadding(0, XemsUi.dp(a, 4), 0, 0);
        right.addView(sum);
        row.addView(right, XemsUi.weight(7f, 18, a));
        sh.body.addView(row);

        // footer
        TextView ci = XemsUi.button(a, "ⓘ Противопоказания", XemsUi.GHOST);
        ci.setOnClickListener(new Do(this, Do.CONTRA, 0));
        sh.footer.addView(ci);
        sh.footer.addView(XemsUi.spacer(a));
        String why = run.blocker();
        TextView go = XemsUi.button(a, why != null ? why : "▶ Пусни тока", XemsUi.PRIMARY);
        if (why != null) go.setAlpha(0.4f);
        else go.setOnClickListener(new Do(this, Do.START, 0));
        sh.footer.addView(go);
    }

    private void moreBox(LinearLayout right) {
        LinearLayout r = XemsUi.horizontal(a);
        r.setGravity(Gravity.TOP);
        LinearLayout bz = XemsUi.vertical(a);
        bz.addView(XemsUi.label(a, "Пакети в секунда"));
        LinearLayout[] h = new LinearLayout[1];
        HorizontalScrollView hs = XemsUi.chipRow(a, h);
        for (int i = 0; i < BURST_HZ.length; i++) {
            TextView c = XemsUi.chip(a, BURST_HZ[i] == 0 ? "без" : BURST_HZ[i] + " Hz", run.burstHz == BURST_HZ[i],
                    XemsUi.GO_TEXT);
            c.setOnClickListener(new Do(this, Do.BURST, BURST_HZ[i]));
            XemsUi.addChip(a, h[0], c);
        }
        bz.addView(hs);
        r.addView(bz, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        LinearLayout wv = XemsUi.vertical(a);
        wv.addView(XemsUi.label(a, "Форма"));
        LinearLayout[] w = new LinearLayout[1];
        HorizontalScrollView ws = XemsUi.chipRow(a, w);
        for (int i = 0; i < 3; i++) {
            TextView c = XemsUi.chip(a, BtSettings.WAVES[i + 1], run.wave == i, XemsUi.GO_TEXT);
            c.setOnClickListener(new Do(this, Do.WAVE, i));
            XemsUi.addChip(a, w[0], c);
        }
        wv.addView(ws);
        r.addView(wv, XemsUi.weight(1f, 12, a));
        right.addView(r, XemsUi.matchWrap(a, 4));
        LinearLayout r2 = XemsUi.horizontal(a);
        r2.setGravity(Gravity.TOP);
        r2.addView(field("Дължина на пакета", run.burstHz == 0 ? "—" : run.burstMs + " ms", Stp.BMS),
                new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        r2.addView(field("Плавно вдигане / сваляне", run.rampS + " s", Stp.RAMP), XemsUi.weight(1f, 12, a));
        right.addView(r2, XemsUi.matchWrap(a, 10));
    }

    private View field(String label, String value, int what) {
        LinearLayout f = XemsUi.vertical(a);
        f.addView(XemsUi.label(a, label));
        f.addView(XemsUi.stepper(a, value, null, 18, new Stp(this, what)).view);
        return f;
    }

    /** One line of what goes to the suit (µs / Hz are for the trainer). */
    String summary() {
        BtAus.T t = run.t;
        int[] b = BtAus.burst(run.burstHz, run.burstMs);
        String s = run.carrier + " Hz · " + BtAus.widthFor(run.carrier, t.us) + " µs · "
                + (b[0] == 0 ? "без пакети" : "пакети " + b[0] + " / " + b[1] + " ms (" + run.burstHz + " в секунда)")
                + " · " + BtSettings.WAVES[run.wave + 1];
        if (t.ifc) {
            if (t.beatHi > t.beatLo) {
                s += " · смесване " + t.beatLo + "–" + t.beatHi + " Hz за " + t.sweepS + " s";
            } else {
                int[] p = BtAus.ifcPair(run.carrier, t.beatLo);
                double real = BtAus.realHz(p[1]) - BtAus.realHz(p[0]);
                s = Math.round(BtAus.realHz(p[0])) + " Hz и " + Math.round(BtAus.realHz(p[1])) + " Hz · смесване ≈ "
                        + (Math.round(real * 10) / 10.0) + " Hz · " + BtAus.widthFor(p[0], t.us) + " µs · "
                        + BtSettings.WAVES[run.wave + 1];
            }
        }
        return s;
    }

    // ------------------------------------------------------------------ running

    private void running() {
        boolean done = run.state == BtAusRun.DONE;
        LinearLayout row = XemsUi.horizontal(a);
        row.setGravity(Gravity.CENTER_VERTICAL);

        LinearLayout c1 = XemsUi.vertical(a);
        c1.setGravity(Gravity.CENTER_HORIZONTAL);
        tvTime = XemsUi.text(a, "", 64, XemsUi.TEXT, true);
        tvTime.setGravity(Gravity.CENTER);
        c1.addView(tvTime);
        tvLeft = XemsUi.text(a, "", 13, XemsUi.MUTED, false);
        tvLeft.setGravity(Gravity.CENTER);
        c1.addView(tvLeft);
        row.addView(c1, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 4f));

        LinearLayout c2 = XemsUi.vertical(a);
        c2.setGravity(Gravity.CENTER_HORIZONTAL);
        tvPhase = XemsUi.text(a, "", 30, XemsUi.GO_TEXT, true);
        tvPhase.setGravity(Gravity.CENTER);
        c2.addView(tvPhase);
        tvFeel = XemsUi.text(a, run.t.feel, 13, XemsUi.HINT, false);
        tvFeel.setGravity(Gravity.CENTER);
        tvFeel.setPadding(0, XemsUi.dp(a, 8), 0, 0);
        c2.addView(tvFeel);
        row.addView(c2, XemsUi.weight(5f, 12, a));

        LinearLayout c3 = XemsUi.vertical(a);
        c3.addView(XemsUi.label(a, "Ниво на тока"));
        lvl = XemsUi.stepper(a, run.level + " %", null, 28, new Stp(this, Stp.LEVEL));
        c3.addView(lvl.view);
        row.addView(c3, XemsUi.weight(4f, 12, a));
        sh.body.addView(row, XemsUi.matchWrap(a, 8));

        LinearLayout bar = XemsUi.horizontal(a);
        barFill = new View(a);
        barFill.setBackgroundDrawable(XemsUi.rounded(XemsUi.GO, XemsUi.dp(a, 4), 0, 0));
        barRest = new View(a);
        barRest.setBackgroundDrawable(XemsUi.rounded(XemsUi.SURFACE, XemsUi.dp(a, 4), 0, 0));
        bar.addView(barFill, new LinearLayout.LayoutParams(0, XemsUi.dp(a, 8), 0f));
        bar.addView(barRest, new LinearLayout.LayoutParams(0, XemsUi.dp(a, 8), 1f));
        sh.body.addView(bar, XemsUi.matchWrap(a, 18));

        LinearLayout chips = XemsUi.horizontal(a);
        chips.setGravity(Gravity.CENTER);
        for (int pos = 0; pos < BtSettings.CHANNELS; pos++) {
            int c = BtSettings.channelAt(pos);
            if (!run.chans[c]) continue;
            LinearLayout cell = XemsUi.surface(a);
            cell.setGravity(Gravity.CENTER_HORIZONTAL);
            TextView nm = XemsUi.text(a, BtSettings.name(c), 13, XemsUi.MUTED, false);
            nm.setSingleLine(true);
            nm.setGravity(Gravity.CENTER);
            cell.addView(nm);
            chTv[c] = XemsUi.text(a, "0 %", 22, XemsUi.TEXT, true);
            chTv[c].setGravity(Gravity.CENTER);
            cell.addView(chTv[c]);
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
            lp.leftMargin = XemsUi.dp(a, 6);
            chips.addView(cell, lp);
        }
        sh.body.addView(chips, XemsUi.matchWrap(a, 18));

        TextView stop = XemsUi.button(a, done ? "Към настройката" : "■ Стоп", XemsUi.SECONDARY);
        stop.setOnClickListener(new Do(this, Do.STOP, 0));
        sh.footer.addView(stop);
        sh.footer.addView(XemsUi.spacer(a));
        if (done) {
            TextView again = XemsUi.button(a, "↻ Още веднъж", XemsUi.PRIMARY);
            again.setOnClickListener(new Do(this, Do.START, 0));
            sh.footer.addView(again);
        } else if (run.state == BtAusRun.PAUSE) {
            TextView go = XemsUi.button(a, "▶ Продължи", XemsUi.PRIMARY);
            go.setOnClickListener(new Do(this, Do.START, 0));
            sh.footer.addView(go);
        } else {
            TextView p = XemsUi.button(a, "❚❚ Пауза", XemsUi.PRIMARY);
            p.setOnClickListener(new Do(this, Do.PAUSE, 0));
            sh.footer.addView(p);
        }
        live();
    }

    /** Update the running screen in place (no layout jump while a finger is on it). */
    void live() {
        if (tvTime == null) return;
        double total = run.totalSec();
        double left = Math.max(0, total - run.elapsed);
        tvTime.setText(clock(left));
        tvLeft.setText("от " + run.minutes + " мин");
        BtAus.Pos p = run.pos;
        int col = XemsUi.GO_TEXT;
        String ph;
        if (run.state == BtAusRun.DONE) {
            ph = "ГОТОВО ✓";
        } else if (run.state == BtAusRun.PAUSE) {
            ph = "ПАУЗА";
            col = XemsUi.AMBER;
        } else if (p.phase == BtAus.REST) {
            ph = "ПОЧИВКА · " + p.left + " s";
            col = XemsUi.MUTED;
        } else if (p.phase == BtAus.RAMP_UP) {
            ph = "ВДИГАНЕ · " + p.left + " s";
            col = XemsUi.AMBER;
        } else if (p.phase == BtAus.RAMP_DOWN) {
            ph = "СВАЛЯНЕ · " + p.left + " s";
            col = XemsUi.AMBER;
        } else if (p.phase == BtAus.HOLD) {
            ph = "ТОК · " + p.left + " s";
        } else {
            ph = "ТОКЪТ ТЕЧЕ";
        }
        tvPhase.setText(ph);
        tvPhase.setTextColor(col);
        float frac = total > 0 ? (float) Math.min(1.0, run.elapsed / total) : 0f;
        ((LinearLayout.LayoutParams) barFill.getLayoutParams()).weight = frac;
        ((LinearLayout.LayoutParams) barRest.getLayoutParams()).weight = 1f - frac;
        barFill.requestLayout();
        for (int c = 1; c <= BtSettings.CHANNELS; c++) {
            if (chTv[c] != null) chTv[c].setText(run.pcts[c] + " %");
        }
        if (lvl != null) lvl.set(run.level + " %", null);
    }

    static String clock(double sec) {
        int s = (int) Math.ceil(sec);
        int m = s / 60;
        int r = s % 60;
        return m + ":" + (r < 10 ? "0" : "") + r;
    }

    // ------------------------------------------------------------------ dialogs

    void info() {
        BtAus.T t = run.t;
        XemsUi.Shell d = XemsUi.shell(a, t.name, t.goal, 760);
        TextView how = XemsUi.text(a, "Как се провежда\n" + t.how, 14, XemsUi.TEXT, false);
        d.body.addView(how);
        TextView cr = XemsUi.text(a, "Курс\n" + t.course, 14, XemsUi.TEXT, false);
        cr.setPadding(0, XemsUi.dp(a, 12), 0, 0);
        d.body.addView(cr);
        TextView cb = XemsUi.text(a, "Съчетание\n" + t.combine, 14, XemsUi.TEXT, false);
        cb.setPadding(0, XemsUi.dp(a, 12), 0, 0);
        d.body.addView(cb);
        TextView hint = XemsUi.text(a, "Силата на тока е по усещане: започни ниско и вдигай, докато стане това, което "
                + "пише под „Усещане“. Ефектът върху тялото при този костюм не е измерен — костюмът не "
                + "връща обратна връзка.", 12, XemsUi.HINT, false);
        hint.setPadding(0, XemsUi.dp(a, 14), 0, 0);
        d.body.addView(hint);
        d.dialog.show();
    }

    void contra() {
        XemsUi.Shell d = XemsUi.shell(a, "Противопоказания", null, 700);
        d.body.addView(XemsUi.text(a, CONTRA, 14, XemsUi.TEXT, false));
        d.dialog.show();
    }

    // ------------------------------------------------------------------ actions

    static final class Refresh implements Runnable {
        final BtAusScreen s;

        Refresh(BtAusScreen s) {
            this.s = s;
        }

        @Override
        public void run() {
            s.refresh();
        }
    }

    static final class Stop implements DialogInterface.OnDismissListener {
        final BtAusRun r;

        Stop(BtAusRun r) {
            this.r = r;
        }

        @Override
        public void onDismiss(DialogInterface d) {
            r.stop();
        }
    }

    /** A tap on a protocol, a zone, a chip or a button. */
    static final class Do implements View.OnClickListener {
        static final int CHAN = 1, LEVEL = 2, MORE = 3, BURST = 4, WAVE = 5, START = 6, PAUSE = 7, STOP = 8,
                INFO = 9, CONTRA = 10;
        final BtAusScreen s;
        final int what, arg;

        Do(BtAusScreen s, int what, int arg) {
            this.s = s;
            this.what = what;
            this.arg = arg;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            BtAusRun r = s.run;
            if (what == CHAN) {
                r.chans[arg] = !r.chans[arg];
            } else if (what == LEVEL) {
                r.level = arg;
            } else if (what == MORE) {
                s.more = !s.more;
            } else if (what == BURST) {
                r.burstHz = arg;
                if (arg > 0 && r.burstMs == 0) r.burstMs = 4;
            } else if (what == WAVE) {
                r.wave = arg;
            } else if (what == START) {
                r.start();
                s.render();
                return;
            } else if (what == PAUSE) {
                r.pause();
                return;
            } else if (what == STOP) {
                r.stop();
                s.render();
                return;
            } else if (what == INFO) {
                s.info();
                return;
            } else {
                s.contra();
                return;
            }
            s.render();
        }
    }

    /** − / + of level, minutes, ON, OFF, burst ms, ramp. Level also works live during a session. */
    static final class Stp implements XemsUi.OnStep {
        static final int LEVEL = 0, MIN = 1, ON = 2, OFF = 3, BMS = 4, RAMP = 5;
        final BtAusScreen s;
        final int what;

        Stp(BtAusScreen s, int what) {
            this.s = s;
            this.what = what;
        }

        @Override
        public void onStep(int dir) {
            BtAusRun r = s.run;
            if (what == LEVEL) {
                int st = r.level < 10 ? 1 : (r.level < 40 ? 2 : 5);
                if (dir < 0 && r.level > 1) st = Math.min(st, r.level - 1);
                r.level = Math.max(1, Math.min(BtTranslator.MAX_PCT, r.level + dir * st));
                if (r.state != BtAusRun.IDLE) {
                    s.live();
                    return;
                }
            } else if (what == MIN) {
                int st = r.minutes < 10 ? 1 : 5;
                if (dir < 0 && r.minutes > 1) st = Math.min(st, r.minutes - 1);
                r.minutes = Math.max(1, Math.min(90, r.minutes + dir * st));
            } else if (what == ON) {
                if (r.offS == 0) {
                    if (dir > 0) {
                        r.onS = r.t.onS > 0 ? r.t.onS : 10;
                        r.offS = r.t.offS > 0 ? r.t.offS : r.onS;
                    }
                } else {
                    int st = r.onS < 10 ? 1 : 5;
                    r.onS = Math.max(2, Math.min(60, r.onS + dir * st));
                }
            } else if (what == OFF) {
                if (r.offS == 0) {
                    if (dir > 0) {
                        r.onS = r.onS > 0 ? r.onS : 10;
                        r.offS = r.t.offS > 0 ? r.t.offS : 10;
                    }
                } else {
                    int st = r.offS < 10 ? 1 : 5;
                    r.offS = Math.max(0, Math.min(120, r.offS + dir * st));
                }
            } else if (what == BMS) {
                if (r.burstHz > 0) r.burstMs = Math.max(1, Math.min(1000 / r.burstHz - 1, r.burstMs + dir));
            } else {
                r.rampS = Math.max(0, Math.min(5, r.rampS + dir));
            }
            s.render();
        }
    }
}
