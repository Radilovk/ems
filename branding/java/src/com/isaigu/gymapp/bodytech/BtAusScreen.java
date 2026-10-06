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
    int shownCur = -2;                    // and the phase

    // live views of the running screen
    TextView tvTime, tvPhase, tvLeft, tvFeel, tvStage;
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
        if (run.state != shown || run.cur != shownCur) {
            render();
            return;
        }
        if (run.state == BtAusRun.RUN || run.state == BtAusRun.PAUSE) live();
    }

    void render() {
        shown = run.state;
        shownCur = run.cur;
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
        int i = run.sel;
        BtAus.Ph p = run.ph(i);
        LinearLayout row = XemsUi.horizontal(a);
        row.setGravity(Gravity.TOP);

        // left: what the procedure is (one procedure per card in the automatic mode)
        LinearLayout left = XemsUi.vertical(a);
        left.addView(XemsUi.label(a, "Цел"));
        left.addView(XemsUi.text(a, t.goal, 14, XemsUi.TEXT, false));
        if (t.advanced) {
            TextView adv = XemsUi.text(a, "Само след няколко по-леки сеанса (адаптация).", 13, XemsUi.AMBER, true);
            adv.setPadding(0, XemsUi.dp(a, 8), 0, 0);
            left.addView(adv);
        }
        TextView how = XemsUi.label(a, "Как");
        how.setPadding(0, XemsUi.dp(a, 12), 0, 0);
        left.addView(how);
        left.addView(XemsUi.text(a, t.how, 13, XemsUi.MUTED, false));
        TextView cr = XemsUi.label(a, "Курс");
        cr.setPadding(0, XemsUi.dp(a, 12), 0, 0);
        left.addView(cr);
        left.addView(XemsUi.text(a, t.course, 13, XemsUi.MUTED, false));
        row.addView(left, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 4f));

        // right: zones, the phases side by side, the chosen phase's values
        LinearLayout right = XemsUi.vertical(a);
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

        LinearLayout phHead = XemsUi.horizontal(a);
        phHead.setGravity(Gravity.CENTER_VERTICAL);
        phHead.addView(XemsUi.label(a, "Фази · общо " + Math.round(run.totalSec() / 60) + " мин"),
                new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        TextView info = XemsUi.iconButton(a, "i", XemsUi.SURFACE, XemsUi.TEXT, 36);
        info.setOnClickListener(new Do(this, Do.INFO, 0));
        phHead.addView(info, new LinearLayout.LayoutParams(XemsUi.dp(a, 36), XemsUi.dp(a, 36)));
        LinearLayout.LayoutParams hp = XemsUi.matchWrap(a, 12);
        right.addView(phHead, hp);
        if (run.n > 1) {
            LinearLayout phs = XemsUi.horizontal(a);
            for (int k = 0; k < run.n; k++) {
                LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
                if (k > 0) lp.leftMargin = XemsUi.dp(a, 6);
                phs.addView(phaseCard(k, k == i), lp);
            }
            right.addView(phs, XemsUi.matchWrap(a, 6));
        }

        TextView feel = XemsUi.text(a, (run.n > 1 ? p.name + ": " : "") + p.feel, 14, XemsUi.GO_TEXT, true);
        feel.setPadding(0, XemsUi.dp(a, 8), 0, XemsUi.dp(a, 4));
        right.addView(feel);

        LinearLayout r1 = XemsUi.horizontal(a);
        r1.setGravity(Gravity.TOP);
        r1.addView(field("Ниво в началото", run.level[i] + " %", Stp.LEVEL),
                new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        r1.addView(field("Време", run.minutes[i] + " мин", Stp.MIN), XemsUi.weight(1f, 12, a));
        if (!p.ifc) {
            r1.addView(field("Ток / почивка", run.offS[i] == 0 ? "непрекъснато" : run.onS[i] + " / " + run.offS[i] + " s",
                    Stp.OFF), XemsUi.weight(1.2f, 12, a));
        }
        right.addView(r1, XemsUi.matchWrap(a, 8));
        LinearLayout[] lh = new LinearLayout[1];
        HorizontalScrollView ls = XemsUi.chipRow(a, lh);
        for (int k = 0; k < LEVELS.length; k++) {
            TextView c = XemsUi.chip(a, LEVELS[k] + "", LEVELS[k] == run.level[i], XemsUi.GO_TEXT);
            c.setOnClickListener(new Do(this, Do.LEVEL, LEVELS[k]));
            XemsUi.addChip(a, lh[0], c);
        }
        right.addView(ls, XemsUi.matchWrap(a, 6));

        TextView mt = XemsUi.text(a, more ? "▴ По-малко" : "▾ Още параметри", 13, XemsUi.MUTED, true);
        mt.setPadding(0, XemsUi.dp(a, 10), 0, XemsUi.dp(a, 6));
        mt.setOnClickListener(new Do(this, Do.MORE, 0));
        right.addView(mt);
        if (more) moreBox(right);
        TextView sum = XemsUi.text(a, summary(i), 12, XemsUi.HINT, false);
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
        TextView go = XemsUi.button(a, why != null ? why : "▶ Пусни тока · " + Math.round(run.totalSec() / 60) + " мин",
                XemsUi.PRIMARY);
        if (why != null) go.setAlpha(0.4f);
        else go.setOnClickListener(new Do(this, Do.START, 0));
        sh.footer.addView(go);
    }

    /** One phase in the setup row: its name, minutes and the kind of current; the chosen one is lit. */
    private View phaseCard(int k, boolean on) {
        BtAus.Ph p = run.ph(k);
        LinearLayout card = XemsUi.vertical(a);
        card.setPadding(XemsUi.dp(a, 10), XemsUi.dp(a, 8), XemsUi.dp(a, 10), XemsUi.dp(a, 8));
        card.setBackgroundDrawable(on
                ? XemsUi.rounded(XemsUi.alpha(XemsUi.GO, 0x26), XemsUi.dp(a, 12), XemsUi.GO, XemsUi.dp(a, 2))
                : XemsUi.rounded(XemsUi.SURFACE, XemsUi.dp(a, 12), XemsUi.STROKE, XemsUi.dp(a, 1)));
        TextView nm = XemsUi.text(a, (k + 1) + ". " + p.name, 13, on ? XemsUi.GO_TEXT : XemsUi.TEXT, true);
        nm.setSingleLine(true);
        nm.setEllipsize(android.text.TextUtils.TruncateAt.END);
        card.addView(nm);
        TextView m = XemsUi.text(a, run.minutes[k] + " мин · " + kindOf(k), 11.5f, XemsUi.MUTED, false);
        m.setSingleLine(true);
        m.setEllipsize(android.text.TextUtils.TruncateAt.END);
        card.addView(m);
        XemsUi.pressable(card);
        card.setOnClickListener(new Do(this, Do.PHASE, k));
        return card;
    }

    /** The kind of current of phase k in a few words. */
    String kindOf(int k) {
        BtAus.Ph p = run.ph(k);
        int hz = run.carrier[k];
        if (p.ifc) return "IFC " + (hz >= 1000 ? (hz / 100) / 10.0 + " kHz" : hz + " Hz");
        if (hz >= 1000) return (hz % 1000 == 0 ? hz / 1000 + "" : (hz / 100) / 10.0 + "") + " kHz"
                + (run.burstHz[k] > 0 ? " · " + run.burstMs[k] + " ms" : "");
        return hz + " Hz";
    }

    private void moreBox(LinearLayout right) {
        int i = run.sel;
        LinearLayout r = XemsUi.horizontal(a);
        r.setGravity(Gravity.TOP);
        LinearLayout bz = XemsUi.vertical(a);
        bz.addView(XemsUi.label(a, "Пакети в секунда"));
        LinearLayout[] h = new LinearLayout[1];
        HorizontalScrollView hs = XemsUi.chipRow(a, h);
        for (int k = 0; k < BURST_HZ.length; k++) {
            TextView c = XemsUi.chip(a, BURST_HZ[k] == 0 ? "без" : BURST_HZ[k] + " Hz", run.burstHz[i] == BURST_HZ[k],
                    XemsUi.GO_TEXT);
            c.setOnClickListener(new Do(this, Do.BURST, BURST_HZ[k]));
            XemsUi.addChip(a, h[0], c);
        }
        bz.addView(hs);
        r.addView(bz, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        LinearLayout wv = XemsUi.vertical(a);
        wv.addView(XemsUi.label(a, "Форма"));
        LinearLayout[] w = new LinearLayout[1];
        HorizontalScrollView ws = XemsUi.chipRow(a, w);
        for (int k = 0; k < 3; k++) {
            TextView c = XemsUi.chip(a, BtSettings.WAVES[k + 1], run.wave[i] == k, XemsUi.GO_TEXT);
            c.setOnClickListener(new Do(this, Do.WAVE, k));
            XemsUi.addChip(a, w[0], c);
        }
        wv.addView(ws);
        r.addView(wv, XemsUi.weight(1f, 12, a));
        right.addView(r, XemsUi.matchWrap(a, 4));
        LinearLayout r2 = XemsUi.horizontal(a);
        r2.setGravity(Gravity.TOP);
        r2.addView(field("Дължина на пакета", run.burstHz[i] == 0 ? "—" : run.burstMs[i] + " ms", Stp.BMS),
                new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        if (!run.ph(i).ifc) {
            r2.addView(field("Ток тече", run.offS[i] == 0 ? "непрекъснато" : run.onS[i] + " s", Stp.ON),
                    XemsUi.weight(1f, 12, a));
        }
        r2.addView(field("Плавно вдигане / сваляне", run.rampS[i] + " s", Stp.RAMP), XemsUi.weight(1f, 12, a));
        right.addView(r2, XemsUi.matchWrap(a, 10));
    }

    private View field(String label, String value, int what) {
        LinearLayout f = XemsUi.vertical(a);
        f.addView(XemsUi.label(a, label));
        f.addView(XemsUi.stepper(a, value, null, 18, new Stp(this, what)).view);
        return f;
    }

    /** One line of what goes to the suit in phase i (µs / Hz are for the trainer). */
    String summary(int i) {
        BtAus.Ph p = run.ph(i);
        int hz = run.carrier[i];
        int[] b = BtAus.burst(run.burstHz[i], run.burstMs[i]);
        String s = hz + " Hz · " + BtAus.widthFor(hz, p.us) + " µs · "
                + (b[0] == 0 ? "без пакети" : "пакети " + b[0] + " / " + b[1] + " ms (" + run.burstHz[i] + " в секунда, "
                + Math.round(b[0] * 100f / (b[0] + b[1])) + " %)")
                + " · " + BtSettings.WAVES[run.wave[i] + 1];
        if (p.ifc) {
            if (p.beatHi > p.beatLo) {
                s = hz + " Hz · смесване " + p.beatLo + "–" + p.beatHi + " Hz за " + p.sweepS + " s · "
                        + BtAus.widthFor(hz, p.us) + " µs · " + BtSettings.WAVES[run.wave[i] + 1];
            } else {
                int[] pr = BtAus.ifcPair(hz, p.beatLo);
                double real = BtAus.realHz(pr[1]) - BtAus.realHz(pr[0]);
                s = Math.round(BtAus.realHz(pr[0])) + " Hz и " + Math.round(BtAus.realHz(pr[1])) + " Hz · смесване ≈ "
                        + (Math.round(real * 10) / 10.0) + " Hz · " + BtAus.widthFor(pr[0], p.us) + " µs · "
                        + BtSettings.WAVES[run.wave[i] + 1];
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
        tvStage = XemsUi.text(a, "", 15, XemsUi.MUTED, true);
        tvStage.setGravity(Gravity.CENTER);
        c2.addView(tvStage);
        tvPhase = XemsUi.text(a, "", 30, XemsUi.GO_TEXT, true);
        tvPhase.setGravity(Gravity.CENTER);
        c2.addView(tvPhase);
        tvFeel = XemsUi.text(a, "", 13, XemsUi.HINT, false);
        tvFeel.setGravity(Gravity.CENTER);
        tvFeel.setPadding(0, XemsUi.dp(a, 8), 0, 0);
        c2.addView(tvFeel);
        row.addView(c2, XemsUi.weight(5f, 12, a));

        LinearLayout c3 = XemsUi.vertical(a);
        c3.addView(XemsUi.label(a, "Ниво на тока"));
        lvl = XemsUi.stepper(a, "", null, 28, new Stp(this, Stp.LEVEL));
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
        if (!done && run.n > 1 && run.cur >= 0 && run.cur < run.n - 1) {
            TextView sk = XemsUi.button(a, "⏭ Следваща фаза", XemsUi.GHOST);
            sk.setOnClickListener(new Do(this, Do.SKIP, 0));
            LinearLayout.LayoutParams sp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT);
            sp.leftMargin = XemsUi.dp(a, 10);
            sh.footer.addView(sk, sp);
        }
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
        tvLeft.setText("от " + Math.round(total / 60) + " мин");
        int i = run.cur < 0 ? 0 : run.cur;
        BtAus.Ph cp = run.ph(i);
        String next = run.n > 1 && i < run.n - 1 ? " · след това " + run.ph(i + 1).name.toLowerCase() : "";
        tvStage.setText(run.n > 1 ? "Фаза " + (i + 1) + " от " + run.n + " · " + cp.name + " · " + clock(run.phaseLeft())
                + next : cp.name);
        tvFeel.setText(cp.feel);
        BtAus.Pos p = run.pos;
        int col = XemsUi.GO_TEXT;
        String ph;
        if (run.state == BtAusRun.DONE) {
            ph = "ГОТОВО ✓";
            tvStage.setText(run.t.name);
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
        if (lvl != null) lvl.set(run.level[i] + " %", null);
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
        StringBuilder ph = new StringBuilder("Фази");
        for (int k = 0; k < run.n; k++) {
            ph.append("\n").append(k + 1).append(". ").append(run.ph(k).name).append(" · ").append(run.minutes[k])
                    .append(" мин · ").append(kindOf(k)).append(" — ").append(run.ph(k).feel);
        }
        TextView pv = XemsUi.text(a, ph.toString(), 13, XemsUi.TEXT, false);
        pv.setPadding(0, XemsUi.dp(a, 12), 0, 0);
        d.body.addView(pv);
        TextView hint = XemsUi.text(a, "Силата е по усещане: всяка фаза започва ниско и плавно — вдигай, докато стане "
                + "това, което пише за фазата. При 4 kHz за същото усещане трябва по-високо ниво. Спри при болка, парене, "
                + "спазъм, замайване, гадене, сърцебиене. Костюмът не връща ток, съпротивление или температура — следи "
                + "кожата и човека.", 12, XemsUi.HINT, false);
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
        static final int PHASE = 0, SKIP = 11, CHAN = 1, LEVEL = 2, MORE = 3, BURST = 4, WAVE = 5, START = 6, PAUSE = 7, STOP = 8,
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
            int i = r.sel;
            if (what == PHASE) {
                r.sel = arg;
            } else if (what == SKIP) {
                r.skip();
                return;
            } else if (what == CHAN) {
                r.chans[arg] = !r.chans[arg];
            } else if (what == LEVEL) {
                r.level[i] = arg;
            } else if (what == MORE) {
                s.more = !s.more;
            } else if (what == BURST) {
                r.burstHz[i] = arg;
                if (arg > 0 && r.burstMs[i] == 0) r.burstMs[i] = 2;
                if (arg > 0) r.burstMs[i] = Math.min(r.burstMs[i], 1000 / arg - 1);
            } else if (what == WAVE) {
                r.wave[i] = arg;
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
            // live (running) the level is the running phase's; in the setup every value is the chosen phase's
            int i = r.state != BtAusRun.IDLE && r.cur >= 0 ? r.cur : r.sel;
            BtAus.Ph p = r.ph(i);
            if (what == LEVEL) {
                int lv = r.level[i];
                int st = lv < 10 ? 1 : (lv < 40 ? 2 : 5);
                if (dir < 0 && lv > 1) st = Math.min(st, lv - 1);
                r.level[i] = Math.max(1, Math.min(BtTranslator.MAX_PCT, lv + dir * st));
                if (r.state != BtAusRun.IDLE) {
                    s.live();
                    return;
                }
            } else if (what == MIN) {
                int m = r.minutes[i];
                int st = m < 10 ? 1 : 5;
                if (dir < 0 && m > 1) st = Math.min(st, m - 1);
                r.minutes[i] = Math.max(1, Math.min(60, m + dir * st));
            } else if (what == ON) {
                if (r.offS[i] == 0) {
                    if (dir > 0) {
                        r.onS[i] = p.onS > 0 ? p.onS : 10;
                        r.offS[i] = p.offS > 0 ? p.offS : r.onS[i];
                    }
                } else {
                    int st = r.onS[i] < 10 ? 1 : 5;
                    r.onS[i] = Math.max(2, Math.min(60, r.onS[i] + dir * st));
                }
            } else if (what == OFF) {
                if (r.offS[i] == 0) {
                    if (dir > 0) {
                        r.onS[i] = r.onS[i] > 0 ? r.onS[i] : 10;
                        r.offS[i] = p.offS > 0 ? p.offS : 10;
                    }
                } else {
                    int st = r.offS[i] < 10 ? 1 : 5;
                    r.offS[i] = Math.max(0, Math.min(120, r.offS[i] + dir * st));
                }
            } else if (what == BMS) {
                if (r.burstHz[i] > 0) r.burstMs[i] = Math.max(1, Math.min(1000 / r.burstHz[i] - 1, r.burstMs[i] + dir));
            } else {
                r.rampS[i] = Math.max(0, Math.min(5, r.rampS[i] + dir));
            }
            s.render();
        }
    }
}
