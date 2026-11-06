package com.isaigu.gymapp.wearable.face;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.isaigu.gymapp.widget.XemsGuard;
import com.isaigu.gymapp.widget.XemsLang;
import com.isaigu.gymapp.widget.XemsUi;

import java.util.Calendar;
import java.util.List;

/**
 * The face studio (owner, 2026-11-06 — docs/xems-face.md): one full-screen page for the face procedures, the same
 * for the XEMS suit and for Bluetens. Left the owner's face picture with the anatomy over it ({@link FaceView});
 * right the one thing to do now: pick the effect → place the pads → find the strength → the run ({@link FaceRing})
 * → done with the course. Words for the client and the staff: the aesthetic result, the right name of the muscle,
 * the numbers last; explanations behind ⓘ.
 */
public final class FaceStudio {
    static final int PICK = 0, PLACE = 1, STRENGTH = 2, RUN = 3, DONE = 4;
    static final String PREFS = "xems_face";
    static final long TICK_MS = 250;

    private static Studio current;

    private FaceStudio() {}

    // ================================================================ entry points

    /** From the automatic mode: a face card was picked (the session is in its setup). */
    public static void openAuto(Activity a, String autoProgramId) {
        int p = "face_tone".equals(autoProgramId) ? FaceProgram.TONE : FaceProgram.LIFT;
        open(a, new FaceAuto(), p);
    }

    /** From the Bluetens page: its face card. */
    public static void openDevice(Activity a, FaceDevice d) {
        Studio c = current;
        if (c != null && !c.closed && c.dev.kind() == d.kind()) {
            c.reshow(a);
            return;
        }
        open(a, d, FaceProgram.LIFT);
    }

    private static void open(Activity a, FaceDevice d, int program) {
        try {
            Studio old = current;
            if (old != null && !old.closed) {
                old.close();
            }
            current = new Studio(a, d, program);
            current.show();
        } catch (Throwable t) {
            XemsGuard.report("FaceStudio.open", t);
        }
    }

    /** The automatic mode belongs to the studio (its sheets and board stay away). */
    public static boolean ownsAuto() {
        Studio c = current;
        return c != null && !c.closed && c.dev.kind() == FaceDevice.XEMS;
    }

    /** Auto wanted its board back (a stop, a pause from the main screen): the studio comes back instead. */
    public static void bringBack(Activity a) {
        Studio c = current;
        if (c != null && !c.closed) {
            c.reshow(a);
        }
    }

    /** The automatic mode's run ended (time, the second ■, from the main screen). */
    public static void onAutoFinished() {
        Studio c = current;
        if (c != null && !c.closed && c.dev instanceof FaceAuto) {
            ((FaceAuto) c.dev).onEnded();
            c.toDone();
        }
    }

    /** Is the Bluetens face run going (the page shows the studio's card as running). */
    public static boolean deviceRunning(int kind) {
        Studio c = current;
        return c != null && !c.closed && c.dev.kind() == kind && c.step == RUN;
    }

    static boolean bg() {
        return XemsLang.isBg();
    }

    static String tr(String b, String e) {
        return XemsLang.tr(b, e);
    }

    // ================================================================ the page

    static final class Studio {
        Activity a;
        final FaceDevice dev;
        final SharedPreferences prefs;
        final Handler main = new Handler(Looper.getMainLooper());
        final Tick tick = new Tick(this);
        XemsUi.Shell s;
        boolean closed;
        int step = PICK;
        int program;
        /** Answered "yes" to the face's own question (botox / filler …): the start is blocked, said where. */
        boolean contra;
        boolean prepared;
        String prepareError;
        boolean recorded;

        FaceView face;
        TextView caption;
        TextView captionSub;
        LinearLayout right;
        TextView primary;
        TextView hint;
        FaceRing ring;
        final TextView[] values = new TextView[2];
        TextView pauseBtn;
        TextView stopBtn;
        TextView statusLine;
        int[] lastShown = {-1, -1};

        Studio(Activity a, FaceDevice dev, int program) {
            this.a = a;
            this.dev = dev;
            this.program = program;
            prefs = a.getApplicationContext().getSharedPreferences(PREFS, Context.MODE_PRIVATE);
            boolean ok = false;
            for (int p : dev.programs()) {
                ok |= p == program;
            }
            if (!ok) {
                this.program = dev.programs()[0];
            }
        }

        int dp(float v) {
            return XemsUi.dp(a, v);
        }

        FaceProgram prog() {
            return FaceProgram.get(program);
        }

        // ------------------------------------------------------------ shell

        void show() {
            XemsUi.init(a);
            s = XemsUi.shell(a, tr("Лице", "Face"), subtitle(), 1280);
            XemsUi.fullScreen(s);
            s.dialog.setCancelable(false);
            s.close.setOnClickListener(new Close(this));
            s.info.setVisibility(View.VISIBLE);
            s.info.setOnClickListener(new Info(this));
            s.badge.setVisibility(View.VISIBLE);
            s.scroll.setFillViewport(true);

            LinearLayout row = XemsUi.horizontal(a);
            row.setGravity(Gravity.TOP);
            DisplayMetrics dm = a.getResources().getDisplayMetrics();
            int faceH = Math.max(dp(380), (int) (dm.heightPixels * 0.70f));
            FrameLayout left = new FrameLayout(a);
            face = new FaceView(a);
            face.setColors(XemsUi.dark ? 0xFF5EEAFF : 0xFF37D0EB, 0xFFFF6F91, 0xFFFF5A5A);
            face.setSource(new Scene(this));
            left.addView(face, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
            LinearLayout cap = XemsUi.vertical(a);
            cap.setPadding(dp(20), 0, dp(20), dp(16));
            caption = XemsUi.text(a, "", 18, 0xFFFFFFFF, true);
            captionSub = XemsUi.text(a, "", 13, 0xCCE6F3FF, false);
            captionSub.setTypeface(Typeface.create(Typeface.DEFAULT, Typeface.ITALIC));
            cap.addView(caption);
            cap.addView(captionSub);
            FrameLayout.LayoutParams cp = new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT, Gravity.BOTTOM);
            left.addView(cap, cp);
            row.addView(left, new LinearLayout.LayoutParams(0, faceH, 1f));

            right = XemsUi.vertical(a);
            LinearLayout.LayoutParams rp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.12f);
            rp.leftMargin = dp(24);
            row.addView(right, rp);
            s.body.addView(row, XemsUi.matchWrap(a, 4));

            hint = XemsUi.text(a, "", 14, XemsUi.MUTED, false);
            hint.setGravity(Gravity.CENTER_VERTICAL);
            hint.setMaxLines(2);
            hint.setEllipsize(TextUtils.TruncateAt.END);
            s.dialog.setOnKeyListener(new BackKey(this));
            go(step);
            s.dialog.show();
            main.postDelayed(tick, TICK_MS);
        }

        String subtitle() {
            String name = dev.clientName();
            String d = dev.kind() == FaceDevice.XEMS
                    ? tr("Костюм XEMS · електродите на изходите за ръце", "XEMS suit · pads on the arm outputs")
                    : tr("Bluetens · по едно устройство на буза", "Bluetens · a pad per cheek");
            return name != null && name.length() > 0 ? name + "  ·  " + d : d;
        }

        void reshow(Activity act) {
            try {
                if (s != null && s.dialog.isShowing()) {
                    return;
                }
                if (act != null && act != a) {
                    a = act;
                }
                show();
            } catch (Throwable t) {
                XemsGuard.report("FaceStudio.reshow", t);
            }
        }

        void hide() {
            main.removeCallbacks(tick);
            try {
                if (s != null) {
                    s.dialog.dismiss();
                }
            } catch (Throwable ignored) {
            }
        }

        /** ✕: during the run it only hides (the device keeps working, the entry brings it back); else it ends. */
        void closeTapped() {
            if (step == RUN && dev.active()) {
                hide();
                return;
            }
            if (step == DONE) {
                finishDone();
                return;
            }
            close();
        }

        void close() {
            closed = true;
            hide();
            try {
                dev.cancel();
            } catch (Throwable t) {
                XemsGuard.report("FaceStudio.cancel", t);
            }
            if (current == this) {
                current = null;
            }
        }

        // ------------------------------------------------------------ steps

        void go(int st) {
            step = st;
            right.removeAllViews();
            s.footer.removeAllViews();
            values[0] = null;
            values[1] = null;
            ring = null;
            pauseBtn = null;
            stopBtn = null;
            statusLine = null;
            lastShown[0] = -1;
            lastShown[1] = -1;
            face.focusChin(prog().target == FaceProgram.CHIN);
            if (st <= STRENGTH) {
                right.addView(progress(st), XemsUi.matchWrap(a, 0));
            }
            switch (st) {
                case PICK: buildPick(); break;
                case PLACE: buildPlace(); break;
                case STRENGTH: buildStrength(); break;
                case RUN: buildRun(); break;
                default: buildDone(); break;
            }
            updateCaption();
            updateBadge();
            XemsUi.enter(right);
            refresh();
        }

        /** "1 Ефект · 2 Поставяне · 3 Сила" — the current one lit. */
        View progress(int st) {
            LinearLayout r = XemsUi.horizontal(a);
            r.setGravity(Gravity.CENTER_VERTICAL);
            String[] names = {tr("Ефект", "Effect"), tr("Поставяне", "Placement"), tr("Сила", "Strength")};
            for (int i = 0; i < 3; i++) {
                boolean on = i == st;
                boolean done = i < st;
                TextView n = XemsUi.text(a, done ? "✓" : String.valueOf(i + 1), 13, on ? XemsUi.ON_ACCENT : done ? XemsUi.GO_TEXT : XemsUi.MUTED, true);
                n.setGravity(Gravity.CENTER);
                n.setBackgroundDrawable(XemsUi.rounded(on ? XemsUi.ACCENT : XemsUi.alpha(done ? XemsUi.GO : XemsUi.MUTED, 0x26),
                        dp(13), 0, 0));
                r.addView(n, new LinearLayout.LayoutParams(dp(26), dp(26)));
                TextView t = XemsUi.text(a, names[i], 14, on ? XemsUi.TEXT : XemsUi.MUTED, on);
                t.setPadding(dp(8), 0, dp(10), 0);
                r.addView(t);
                if (i < 2) {
                    View line = new View(a);
                    line.setBackgroundColor(XemsUi.alpha(XemsUi.MUTED, 0x44));
                    LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(dp(28), dp(1));
                    lp.rightMargin = dp(10);
                    r.addView(line, lp);
                }
            }
            return r;
        }

        TextView title(String t) {
            TextView v = XemsUi.text(a, t, 22, XemsUi.TEXT, true);
            v.setPadding(0, dp(18), 0, dp(4));
            return v;
        }

        // ---------------------------------------------------------------- 1 · the effect

        void buildPick() {
            right.addView(title(tr("Какъв ефект търсим днес?", "What effect today?")));
            for (int id : dev.programs()) {
                right.addView(programCard(FaceProgram.get(id)), XemsUi.matchWrap(a, 12));
            }
            statusLine = XemsUi.text(a, "", 14, XemsUi.MUTED, false);
            right.addView(statusLine, XemsUi.matchWrap(a, 14));
            primary = footer(tr("Към поставянето  →", "To the placement  →"), XemsUi.PRIMARY, new Next(this, PLACE));
        }

        View programCard(FaceProgram p) {
            boolean on = p.id == program;
            boolean b = bg();
            LinearLayout card = XemsUi.horizontal(a);
            card.setGravity(Gravity.CENTER_VERTICAL);
            card.setPadding(dp(16), dp(14), dp(10), dp(14));
            float r = dp(18);
            card.setBackgroundDrawable(XemsUi.ripple(on
                    ? XemsUi.rounded(XemsUi.alpha(p.tint, 0x24), r, XemsUi.alpha(p.tint, 0xDD), dp(2))
                    : XemsUi.rounded(XemsUi.SURFACE, r, XemsUi.STROKE, dp(1)), p.tint, r));
            card.setClickable(true);
            card.setOnClickListener(new Pick(this, p.id));
            XemsUi.pressable(card);
            TextView mark = XemsUi.text(a, p.id == FaceProgram.LIFT ? "↗" : p.id == FaceProgram.TONE ? "≈" : "◡", 22,
                    on ? 0xFFFFFFFF : p.tint, true);
            mark.setGravity(Gravity.CENTER);
            mark.setBackgroundDrawable(XemsUi.rounded(on ? p.tint : XemsUi.alpha(p.tint, 0x30), dp(24), 0, 0));
            card.addView(mark, new LinearLayout.LayoutParams(dp(48), dp(48)));
            LinearLayout texts = XemsUi.vertical(a);
            texts.setPadding(dp(14), 0, dp(6), 0);
            LinearLayout head = XemsUi.horizontal(a);
            head.setGravity(Gravity.CENTER_VERTICAL);
            head.addView(XemsUi.text(a, p.name(b), 19, on ? p.tint : XemsUi.TEXT, true));
            TextView res = XemsUi.text(a, "  ·  " + p.result(b), 15, XemsUi.TEXT, false);
            head.addView(res);
            texts.addView(head);
            TextView mus = XemsUi.text(a, p.muscle(b) + "  ·  " + p.latin, 13, XemsUi.MUTED, false);
            mus.setPadding(0, dp(3), 0, 0);
            texts.addView(mus);
            LinearLayout chips = XemsUi.horizontal(a);
            chips.setPadding(0, dp(8), 0, 0);
            chips.addView(XemsUi.badge(a, p.rhythm(b), on ? p.tint : XemsUi.MUTED));
            TextView c2 = XemsUi.badge(a, p.course(b), on ? XemsUi.ACCENT : XemsUi.MUTED);
            LinearLayout.LayoutParams cl = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            cl.leftMargin = dp(8);
            chips.addView(c2, cl);
            texts.addView(chips);
            card.addView(texts, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            TextView info = XemsUi.iconButton(a, "i", XemsUi.SURFACE, XemsUi.TEXT, 34);
            info.setOnClickListener(new HowInfo(this, p.id));
            card.addView(info, new LinearLayout.LayoutParams(dp(48), dp(48)));
            info.setLayoutParams(new LinearLayout.LayoutParams(dp(40), dp(40)));
            return card;
        }

        // ---------------------------------------------------------------- 2 · the pads

        void buildPlace() {
            boolean b = bg();
            FaceProgram p = prog();
            right.addView(title(tr("Поставяне на електродите", "Placing the pads")));
            String[] lines = p.place(b);
            for (int i = 0; i < lines.length; i++) {
                right.addView(placeRow(i == 0 ? "✓" : String.valueOf(i), lines[i], i == 0 ? XemsUi.GO_TEXT : XemsUi.ACCENT),
                        XemsUi.matchWrap(a, 10));
            }
            if (dev.kind() == FaceDevice.XEMS) {
                right.addView(placeRow("⇄", tr("Кабелите за ръцете: левият към лявата буза, десният към дясната. Другите канали са изключени.",
                        "The arm cables: left to the left cheek, right to the right. Every other channel is off."), XemsUi.AMBER),
                        XemsUi.matchWrap(a, 10));
            } else {
                for (int ch = 0; ch < Math.max(1, dev.channels()); ch++) {
                    if (dev.channels() == 0) {
                        break;
                    }
                    int bat = dev.battery(ch);
                    right.addView(placeRow("◉", dev.channelName(ch, b) + "  ·  Bluetens ✓" + (bat >= 0 ? "  ·  " + bat + " %" : ""),
                            XemsUi.GO_TEXT), XemsUi.matchWrap(a, 10));
                }
            }
            String why = dev.notReady(program, b);
            if (why != null) {
                TextView w = XemsUi.text(a, why, 14, XemsUi.AMBER, true);
                right.addView(w, XemsUi.matchWrap(a, 12));
            }
            // the face's one question: the confirmation is the primary button (fewest steps)
            LinearLayout q = XemsUi.vertical(a);
            q.setPadding(dp(16), dp(14), dp(16), dp(14));
            q.setBackgroundDrawable(XemsUi.rounded(XemsUi.alpha(contra ? XemsUi.DANGER : XemsUi.AMBER, 0x1C), dp(16),
                    XemsUi.alpha(contra ? XemsUi.DANGER : XemsUi.AMBER, 0x88), dp(1)));
            String question = dev.kind() == FaceDevice.XEMS
                    ? tr("Ботокс или филър в лицето през последните 2 седмици?",
                    "Botox or filler in the face within the last 2 weeks?")
                    : tr("Ботокс или филър през последните 2 седмици, пейсмейкър, бременност, епилепсия или раздразнена кожа?",
                    "Botox or filler within 2 weeks, a pacemaker, pregnancy, epilepsy or irritated skin?");
            q.addView(XemsUi.text(a, question, 15, XemsUi.TEXT, true));
            if (contra) {
                TextView no = XemsUi.text(a, tr("Днес без лице. След ботокс или филър — 2 седмици: токът засилва и разнася действието им.",
                        "No face today. After botox or filler — 2 weeks: the current strengthens and spreads them."),
                        14, XemsUi.DANGER, false);
                no.setPadding(0, dp(6), 0, 0);
                q.addView(no);
            }
            right.addView(q, XemsUi.matchWrap(a, 18));
            ghost(tr("←  Назад", "←  Back"), new Next(this, PICK));
            TextView yes = XemsUi.button(a, contra ? tr("Промени отговора", "Change the answer") : tr("Да, има", "Yes"), XemsUi.SECONDARY);
            yes.setOnClickListener(new Contra(this));
            LinearLayout.LayoutParams yl = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, dp(56));
            yl.leftMargin = dp(12);
            s.footer.addView(yes, yl);
            primary = footer(tr("✓  Не · към силата", "✓  No · to the strength"), XemsUi.PRIMARY, new Next(this, STRENGTH));
            boolean ok = !contra && (why == null || dev.channels() > 0) && (dev.kind() == FaceDevice.XEMS || dev.channels() > 0);
            enable(primary, ok);
        }

        View placeRow(String num, String line, int tint) {
            LinearLayout r = XemsUi.horizontal(a);
            r.setGravity(Gravity.CENTER_VERTICAL);
            TextView n = XemsUi.text(a, num, 14, tint, true);
            n.setGravity(Gravity.CENTER);
            n.setBackgroundDrawable(XemsUi.rounded(XemsUi.alpha(tint, 0x26), dp(15), XemsUi.alpha(tint, 0x99), dp(1)));
            r.addView(n, new LinearLayout.LayoutParams(dp(30), dp(30)));
            TextView t = XemsUi.text(a, line, 15, XemsUi.TEXT, false);
            t.setPadding(dp(12), 0, 0, 0);
            r.addView(t, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            return r;
        }

        // ---------------------------------------------------------------- 3 · the strength

        void buildStrength() {
            boolean b = bg();
            FaceProgram p = prog();
            if (!prepared) {
                prepareError = dev.prepare(program, minutes(), b);
                prepared = prepareError == null;
            }
            right.addView(title(tr("Сила", "Strength")));
            LinearLayout goal = XemsUi.horizontal(a);
            goal.setGravity(Gravity.CENTER_VERTICAL);
            goal.setPadding(dp(14), dp(12), dp(14), dp(12));
            goal.setBackgroundDrawable(XemsUi.rounded(XemsUi.alpha(p.tint, 0x1E), dp(14), XemsUi.alpha(p.tint, 0x77), dp(1)));
            goal.addView(XemsUi.text(a, "◉", 18, p.tint, true));
            TextView gt = XemsUi.text(a, p.strengthGoal(b), 15, XemsUi.TEXT, true);
            gt.setPadding(dp(12), 0, 0, 0);
            goal.addView(gt, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            right.addView(goal, XemsUi.matchWrap(a, 8));
            if (prepareError != null) {
                right.addView(XemsUi.text(a, prepareError, 15, XemsUi.DANGER, true), XemsUi.matchWrap(a, 14));
            }
            right.addView(strengthRow(), XemsUi.matchWrap(a, 18));
            if (dev.kind() == FaceDevice.XEMS) {
                TextView n = XemsUi.text(a, tr("Една сила за двете бузи — затова електродите стоят еднакво от двете страни.",
                        "One strength for both cheeks — so the pads sit the same on both sides."), 13, XemsUi.MUTED, false);
                right.addView(n, XemsUi.matchWrap(a, 12));
            }
            ghost(tr("←  Назад", "←  Back"), new Back(this));
            primary = footer(dev.kind() == FaceDevice.XEMS ? tr("▶  Старт", "▶  Start") : tr("✓  Добре е · продължи", "✓  Good · go on"),
                    XemsUi.PRIMARY, new Start(this));
            enable(primary, false);
        }

        /** One big stepper per channel: − value + (hold = fast). */
        View strengthRow() {
            LinearLayout r = XemsUi.horizontal(a);
            int n = Math.max(1, dev.channels());
            for (int ch = 0; ch < n && ch < 2; ch++) {
                LinearLayout col = XemsUi.vertical(a);
                col.setGravity(Gravity.CENTER_HORIZONTAL);
                col.setPadding(dp(10), dp(12), dp(10), dp(14));
                col.setBackgroundDrawable(XemsUi.glass(a, dp(18)));
                TextView name = XemsUi.text(a, dev.channelName(ch, bg()), 14, XemsUi.MUTED, true);
                name.setGravity(Gravity.CENTER);
                col.addView(name);
                LinearLayout st = XemsUi.horizontal(a);
                st.setGravity(Gravity.CENTER);
                TextView minus = XemsUi.iconButton(a, "−", XemsUi.SURFACE, XemsUi.TEXT, 60);
                TextView plus = XemsUi.iconButton(a, "+", XemsUi.SURFACE, XemsUi.TEXT, 60);
                // − may be held (fast down); + is one step per tap — never a run-away on the face
                XemsUi.repeatOnHold(minus, new StepCh(this, ch), -1);
                plus.setOnClickListener(new PlusTap(this, ch));
                TextView v = XemsUi.text(a, "0", 44, XemsUi.TEXT, true);
                v.setGravity(Gravity.CENTER);
                values[ch] = v;
                st.addView(minus, new LinearLayout.LayoutParams(dp(60), dp(60)));
                st.addView(v, new LinearLayout.LayoutParams(dp(104), ViewGroup.LayoutParams.WRAP_CONTENT));
                st.addView(plus, new LinearLayout.LayoutParams(dp(60), dp(60)));
                col.addView(st, XemsUi.matchWrap(a, 8));
                LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
                if (ch > 0) {
                    lp.leftMargin = dp(12);
                }
                r.addView(col, lp);
            }
            return r;
        }

        int minutes() {
            FaceCourse.Stats st = stats();
            if (program == FaceProgram.LIFT) {
                return st.week >= 3 ? 20 : 10;
            }
            return 10;
        }

        // ---------------------------------------------------------------- the run

        void buildRun() {
            boolean b = bg();
            LinearLayout r = XemsUi.horizontal(a);
            r.setGravity(Gravity.CENTER_VERTICAL);
            ring = new FaceRing(a);
            ring.setColors(XemsUi.ACCENT, 0xFFFF6F91, XemsUi.TEXT, XemsUi.MUTED, XemsUi.alpha(XemsUi.MUTED, 0x30));
            ring.setWords(new String[] {tr("Включване", "Wake-up"), prog().name(b), tr("Отпускане", "Let go")},
                    tr("СТЯГАНЕ", "HOLD"), tr("ОТДИХ", "REST"), tr("ПАУЗА", "PAUSED"));
            r.addView(ring, new LinearLayout.LayoutParams(dp(300), dp(300)));
            LinearLayout side = XemsUi.vertical(a);
            side.setPadding(dp(18), 0, 0, 0);
            statusLine = XemsUi.text(a, "", 15, XemsUi.TEXT, false);
            side.addView(statusLine);
            r.addView(side, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            right.addView(r, XemsUi.matchWrap(a, 8));
            right.addView(strengthRow(), XemsUi.matchWrap(a, 16));
            if (dev.canPause()) {
                pauseBtn = XemsUi.button(a, tr("❚❚  Пауза", "❚❚  Pause"), XemsUi.SECONDARY);
                pauseBtn.setOnClickListener(new Pause(this));
                s.footer.addView(pauseBtn, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, dp(56)));
            }
            s.footer.addView(hint, new LinearLayout.LayoutParams(0, dp(56), 1f));
            hint.setPadding(dp(16), 0, dp(16), 0);
            stopBtn = XemsUi.button(a, dev.stopLabel(b), XemsUi.DANGER_BTN);
            stopBtn.setOnClickListener(new Stop(this));
            s.footer.addView(stopBtn, new LinearLayout.LayoutParams(dp(260), dp(56)));
            primary = null;
        }

        // ---------------------------------------------------------------- done

        void toDone() {
            if (step == DONE || closed) {
                return;
            }
            record();
            if (s == null || !s.dialog.isShowing()) {
                reshow(a);
            }
            go(DONE);
        }

        void buildDone() {
            boolean b = bg();
            FaceProgram p = prog();
            FaceCourse.Stats st = stats();
            LinearLayout box = XemsUi.vertical(a);
            box.setGravity(Gravity.CENTER_HORIZONTAL);
            box.setPadding(0, dp(30), 0, 0);
            TextView ok = XemsUi.text(a, "✓", 44, 0xFFFFFFFF, true);
            ok.setGravity(Gravity.CENTER);
            ok.setBackgroundDrawable(XemsUi.rounded(XemsUi.GO, dp(44), 0, 0));
            box.addView(ok, new LinearLayout.LayoutParams(dp(88), dp(88)));
            boolean counted = recorded;
            String head = counted
                    ? (st.planned > 0 ? tr("Сесия ", "Session ") + st.done + tr(" от ", " of ") + st.planned + tr(" е готова", " done")
                    : tr("Сесия ", "Session ") + st.done + tr(" е готова", " done"))
                    : tr("Спряно рано — не се брои в курса", "Stopped early — not counted in the course");
            TextView h = XemsUi.text(a, head, 24, XemsUi.TEXT, true);
            h.setGravity(Gravity.CENTER);
            h.setPadding(0, dp(18), 0, 0);
            box.addView(h);
            if (st.planned > 0 && counted) {
                box.addView(courseBar(st, p), new LinearLayout.LayoutParams(dp(420), dp(10)));
            }
            if (st.nextMs > 0) {
                TextView nx = XemsUi.text(a, tr("Следваща: ", "Next: ") + when(st.nextMs, System.currentTimeMillis(), b), 17,
                        XemsUi.ACCENT, true);
                nx.setGravity(Gravity.CENTER);
                nx.setPadding(0, dp(18), 0, 0);
                box.addView(nx);
            }
            if (st.finished && program == FaceProgram.LIFT) {
                TextView up = XemsUi.text(a, tr("Курсът за повдигане е завършен — оттук „Тонус“ 2–3 пъти седмично пази ефекта.",
                        "The lift course is complete — from here Tone 2–3 times a week keeps the effect."), 15, XemsUi.GO_TEXT, false);
                up.setGravity(Gravity.CENTER);
                up.setPadding(0, dp(10), 0, 0);
                box.addView(up);
            }
            TextView care = XemsUi.text(a, tr("Лека червенина под електродите е нормална и минава до 20 минути.",
                    "A light redness under the pads is normal and fades within 20 minutes."), 14, XemsUi.MUTED, false);
            care.setGravity(Gravity.CENTER);
            care.setPadding(0, dp(18), 0, 0);
            box.addView(care);
            right.addView(box, XemsUi.matchWrap(a, 0));
            s.footer.addView(XemsUi.spacer(a));
            primary = footer(tr("Готово", "Done"), XemsUi.PRIMARY, new Finish(this));
        }

        View courseBar(FaceCourse.Stats st, FaceProgram p) {
            LinearLayout bar = XemsUi.horizontal(a);
            bar.setPadding(0, 0, 0, 0);
            bar.setBackgroundDrawable(XemsUi.rounded(XemsUi.alpha(XemsUi.MUTED, 0x30), dp(5), 0, 0));
            View fill = new View(a);
            fill.setBackgroundDrawable(XemsUi.rounded(p.tint, dp(5), 0, 0));
            float share = Math.min(1f, st.done / (float) Math.max(1, st.planned));
            bar.addView(fill, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, share));
            bar.addView(new View(a), new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1f - share));
            bar.setPadding(0, 0, 0, 0);
            return bar;
        }

        void record() {
            if (recorded) {
                return;
            }
            double share = dev.doneShare();
            String key = dev.courseKey();
            if (share < 0.6 || key == null || key.length() == 0) {
                return;
            }
            List<Long> t = FaceCourse.decode(prefs.getString(key + ":" + program, ""));
            t.add(System.currentTimeMillis());
            prefs.edit().putString(key + ":" + program, FaceCourse.encode(t)).apply();
            recorded = true;
        }

        void finishDone() {
            closed = true;
            hide();
            if (current == this) {
                current = null;
            }
            if (dev.kind() == FaceDevice.XEMS) {
                try {
                    com.isaigu.gymapp.wearable.SessionRecorder.finishAssisted();
                } catch (Throwable t) {
                    XemsGuard.report("FaceStudio.report", t);
                }
                try {
                    com.isaigu.gymapp.ai.AutoSession.close();
                } catch (Throwable t) {
                    XemsGuard.report("FaceStudio.closeAuto", t);
                }
            }
        }

        FaceCourse.Stats stats() {
            String key = dev.courseKey();
            List<Long> t = FaceCourse.decode(key != null && key.length() > 0 ? prefs.getString(key + ":" + program, "") : "");
            return FaceCourse.stats(t, prog(), System.currentTimeMillis());
        }

        // ------------------------------------------------------------ footer helpers

        TextView footer(String label, int style, View.OnClickListener l) {
            if (hint.getParent() == null) {
                s.footer.addView(hint, new LinearLayout.LayoutParams(0, dp(56), 1f));
                hint.setPadding(dp(16), 0, dp(16), 0);
            }
            TextView b = XemsUi.button(a, label, style);
            b.setOnClickListener(l);
            s.footer.addView(b, new LinearLayout.LayoutParams(dp(300), dp(56)));
            return b;
        }

        void ghost(String label, View.OnClickListener l) {
            TextView b = XemsUi.button(a, label, XemsUi.GHOST);
            b.setOnClickListener(l);
            s.footer.addView(b, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, dp(56)));
        }

        static void enable(TextView b, boolean on) {
            if (b == null) {
                return;
            }
            b.setEnabled(on);
            b.setAlpha(on ? 1f : 0.4f);
        }

        // ------------------------------------------------------------ live

        void refresh() {
            if (closed || s == null) {
                return;
            }
            boolean b = bg();
            long now = System.currentTimeMillis();
            if (step == PICK && statusLine != null) {
                FaceCourse.Stats st = stats();
                String line = FaceCourse.line(st, b);
                if (st.nextMs > now) {
                    line += "  ·  " + tr("мускулът се възстановява — най-добре ", "the muscle recovers — best ")
                            + when(st.nextMs, now, b);
                    statusLine.setTextColor(XemsUi.AMBER);
                } else {
                    statusLine.setTextColor(XemsUi.MUTED);
                }
                if (st.finished && program == FaceProgram.LIFT) {
                    line = tr("Курсът е завършен — за поддръжка избери „Тонус“", "The course is complete — for upkeep pick Tone");
                }
                statusLine.setText(line);
            }
            for (int ch = 0; ch < 2; ch++) {
                if (values[ch] != null) {
                    int v = dev.strength(ch);
                    if (v != lastShown[ch]) {
                        lastShown[ch] = v;
                        values[ch].setText(String.valueOf(v));
                    }
                }
            }
            if (step == STRENGTH) {
                enable(primary, prepared && dev.canStart());
                hint.setText(prepared ? (dev.kind() == FaceDevice.XEMS
                        ? tr("Костюмът дава ритъма на програмата — качвай по едно", "The suit runs the program's rhythm — raise one step at a time")
                        : tr("Програмата тече — началото е включването", "The program runs — it starts with the wake-up")) : "");
            }
            if (step == RUN) {
                FaceTimeline.State st = dev.state(now);
                if (ring != null) {
                    ring.set(dev.phases(), st, dev.paused());
                }
                if (statusLine != null) {
                    statusLine.setText(runLine(st, b));
                }
                if (pauseBtn != null) {
                    pauseBtn.setText(dev.paused() ? tr("▶  Продължи", "▶  Resume") : tr("❚❚  Пауза", "❚❚  Pause"));
                }
                if (stopBtn != null) {
                    stopBtn.setText(dev.stopLabel(b));
                }
                hint.setText(st.on ? tr("Лицето отпуснато — мускулът работи сам", "Face relaxed — the muscle works by itself")
                        : tr("Отдих — кръвта се връща в мускула", "Rest — the blood returns to the muscle"));
                if (dev.finished()) {
                    toDone();
                }
            }
        }

        String runLine(FaceTimeline.State st, boolean b) {
            FaceProgram p = prog();
            return p.name(b) + "\n" + p.muscle(b) + "\n" + st.hz + " Hz  ·  " + p.onS + " s / " + p.offS + " s";
        }

        void updateCaption() {
            boolean b = bg();
            FaceProgram p = prog();
            if (step == PLACE) {
                caption.setText(tr("1 и 2 — двойката е от една страна", "1 and 2 — the pair stays on one side"));
                captionSub.setText(tr("⊘ не: около окото, пред ухото, отстрани на шията", "⊘ never: around the eye, in front of the ear, the side of the neck"));
            } else {
                caption.setText(p.muscle(b));
                captionSub.setText(p.latin);
            }
        }

        void updateBadge() {
            FaceCourse.Stats st = stats();
            XemsUi.setBadge(s.badge, FaceCourse.line(st, bg()), prog().tint);
        }

        // ------------------------------------------------------------ actions

        void pick(int id) {
            if (id == program || step != PICK) {
                return;
            }
            program = id;
            prepared = false;
            go(PICK);
        }

        void next(int st) {
            if (st == STRENGTH && contra) {
                return;
            }
            go(st);
        }

        void back() {
            if (step == STRENGTH) {
                if (dev instanceof FaceAuto) {
                    if (com.isaigu.gymapp.ai.AutoSession.getStage() == com.isaigu.gymapp.ai.AutoSession.Stage.CALIB) {
                        com.isaigu.gymapp.ai.AutoSession.stop();     // calibration off, back to the setup
                    }
                } else {
                    dev.cancel();
                }
                prepared = false;
                go(PLACE);
            } else if (step == PLACE) {
                go(PICK);
            }
        }

        void start() {
            if (!dev.canStart()) {
                return;
            }
            dev.start(a);
            go(RUN);
        }

        void tickNow() {
            try {
                refresh();
            } catch (Throwable t) {
                XemsGuard.report("FaceStudio.tick", t);
            }
            if (!closed && s != null && s.dialog.isShowing()) {
                main.postDelayed(tick, TICK_MS);
            }
        }
    }

    /** "днес след 18:00" / "утре след 14:00" / "в петък след 10:00". */
    static String when(long t, long now, boolean bg) {
        Calendar c = Calendar.getInstance();
        c.setTimeInMillis(now);
        int today = c.get(Calendar.DAY_OF_YEAR) + c.get(Calendar.YEAR) * 400;
        c.setTimeInMillis(t);
        int day = c.get(Calendar.DAY_OF_YEAR) + c.get(Calendar.YEAR) * 400;
        String hm = c.get(Calendar.HOUR_OF_DAY) + ":" + FaceRing.pad2(c.get(Calendar.MINUTE));
        if (t <= now) {
            return bg ? "днес" : "today";
        }
        if (day == today) {
            return (bg ? "днес след " : "today after ") + hm;
        }
        if (day == today + 1) {
            return (bg ? "утре след " : "tomorrow after ") + hm;
        }
        String[] bgDays = {"", "в неделя", "в понеделник", "във вторник", "в сряда", "в четвъртък", "в петък", "в събота"};
        String[] enDays = {"", "on Sunday", "on Monday", "on Tuesday", "on Wednesday", "on Thursday", "on Friday", "on Saturday"};
        int dow = c.get(Calendar.DAY_OF_WEEK);
        return (bg ? bgDays[dow] + " след " : enDays[dow] + " after ") + hm;
    }

    // ================================================================ the picture's source

    static final class Scene implements FaceView.Source {
        private final Studio v;

        Scene(Studio v) {
            this.v = v;
        }

        @Override
        public void fill(FaceArt.Scene s, long now) {
            FaceProgram p = v.prog();
            s.target = p.target;
            s.hz = p.hz;
            s.pads = true;
            s.nogo = v.step == PLACE;
            s.placing = v.step == PLACE;
            s.muscle = true;
            s.side[0] = true;
            s.side[1] = true;
            if (v.step == PICK || v.step == DONE) {
                // a preview of the effect: the program's own rhythm, gently
                FaceTimeline.State st = FaceTimeline.cycle((long) (s.t * 1000), p.onS, p.offS, 500, 500, p.hz);
                float lv = v.step == DONE ? 0f : st.level * 0.85f;
                s.level[0] = lv;
                s.level[1] = lv;
                return;
            }
            if (v.step == PLACE) {
                return;
            }
            FaceTimeline.State st = v.dev.active() ? v.dev.state(now) : new FaceTimeline.State();
            if (st.hz > 0) {
                s.hz = st.hz;
            }
            int n = v.dev.channels();
            if (p.target == FaceProgram.CHEEK && v.dev.kind() == FaceDevice.BLUETENS) {
                s.side[0] = false;
                s.side[1] = false;
                for (int ch = 0; ch < n; ch++) {
                    int side = v.dev.sideOf(ch);
                    if (side >= 0) {
                        s.side[side] = true;
                        s.level[side] = v.dev.strength(ch) > 0 ? st.level : 0f;
                    }
                }
                return;
            }
            float lv = v.dev.strength(0) > 0 ? st.level : 0f;
            s.level[0] = lv;
            s.level[1] = lv;
        }
    }

    // ================================================================ listeners (named: dx-safe)

    static final class Tick implements Runnable {
        private final Studio v;

        Tick(Studio v) {
            this.v = v;
        }

        @Override
        public void run() {
            v.tickNow();
        }
    }

    static final class Close implements View.OnClickListener {
        private final Studio v;

        Close(Studio v) {
            this.v = v;
        }

        @Override
        public void onClick(View view) {
            v.closeTapped();
        }
    }

    static final class BackKey implements android.content.DialogInterface.OnKeyListener {
        private final Studio v;

        BackKey(Studio v) {
            this.v = v;
        }

        @Override
        public boolean onKey(android.content.DialogInterface d, int code, android.view.KeyEvent e) {
            if (code != android.view.KeyEvent.KEYCODE_BACK || e.getAction() != android.view.KeyEvent.ACTION_UP) {
                return code == android.view.KeyEvent.KEYCODE_BACK;
            }
            if (v.step == PLACE || v.step == STRENGTH) {
                v.back();
            } else {
                v.closeTapped();
            }
            return true;
        }
    }

    static final class Info implements View.OnClickListener {
        private final Studio v;

        Info(Studio v) {
            this.v = v;
        }

        @Override
        public void onClick(View view) {
            boolean b = bg();
            sheet(v.a, tr("Лицеви процедури", "Face procedures"), b
                    ? "Електрическият импулс възбужда двигателните разклонения на лицевия нерв и мимическите мускули се "
                    + "съкращават сами — без усилие и без бръчки от мимика. Мускулите на лицето нямат сухожилия: те се "
                    + "захващат директно за кожата, затова по-плътният мускул дава повече опора отвътре.\n\n"
                    + "Честотата е винаги 20 Hz и нагоре (под 20 Hz на лицето има неприятни потрепвания), импулсът е тесен "
                    + "(100 µs), а силата стига само до видимо движение — без болка.\n\n"
                    + "Днес без лице: ботокс или филър през последните 2 седмици, пейсмейкър, бременност, епилепсия, "
                    + "скорошна операция на лицето, раздразнена кожа, парализа на лицевия нерв."
                    : "The electric impulse excites the motor branches of the facial nerve and the face muscles contract by "
                    + "themselves — no effort, no expression lines. Face muscles have no tendons: they attach straight to the "
                    + "skin, so a fuller muscle gives more support from within.\n\n"
                    + "The rate is always 20 Hz or more (under 20 Hz the face twitches unpleasantly), the pulse narrow "
                    + "(100 µs), and the strength only up to visible movement — no pain.\n\n"
                    + "Not today: botox or filler within 2 weeks, a pacemaker, pregnancy, epilepsy, recent facial surgery, "
                    + "irritated skin, facial palsy.");
        }
    }

    static final class HowInfo implements View.OnClickListener {
        private final Studio v;
        private final int id;

        HowInfo(Studio v, int id) {
            this.v = v;
            this.id = id;
        }

        @Override
        public void onClick(View view) {
            FaceProgram p = FaceProgram.get(id);
            boolean b = bg();
            sheet(v.a, p.name(b) + " · " + p.result(b), p.how(b) + "\n\n" + p.muscle(b) + " · " + p.latin + "\n" + p.rhythm(b)
                    + "\n" + p.course(b));
        }
    }

    /** A small sheet with a text (the ⓘ). */
    static void sheet(Activity a, String title, String body) {
        try {
            XemsUi.Shell sh = XemsUi.shell(a, title, null, 640);
            TextView t = XemsUi.text(a, body, 15, XemsUi.TEXT, false);
            t.setLineSpacing(0, 1.18f);
            sh.body.addView(t, XemsUi.matchWrap(a, 4));
            sh.footer.setVisibility(View.GONE);
            sh.dialog.show();
            XemsUi.fitHeight(a, sh, 0.86f);
        } catch (Throwable t) {
            XemsGuard.report("FaceStudio.sheet", t);
        }
    }

    static final class Pick implements View.OnClickListener {
        private final Studio v;
        private final int id;

        Pick(Studio v, int id) {
            this.v = v;
            this.id = id;
        }

        @Override
        public void onClick(View view) {
            XemsUi.haptic(view);
            v.pick(id);
        }
    }

    static final class Next implements View.OnClickListener {
        private final Studio v;
        private final int to;

        Next(Studio v, int to) {
            this.v = v;
            this.to = to;
        }

        @Override
        public void onClick(View view) {
            if (!view.isEnabled()) {
                return;
            }
            v.next(to);
        }
    }

    static final class Back implements View.OnClickListener {
        private final Studio v;

        Back(Studio v) {
            this.v = v;
        }

        @Override
        public void onClick(View view) {
            v.back();
        }
    }

    static final class Contra implements View.OnClickListener {
        private final Studio v;

        Contra(Studio v) {
            this.v = v;
        }

        @Override
        public void onClick(View view) {
            v.contra = !v.contra;
            v.go(PLACE);
        }
    }

    static final class StepCh implements XemsUi.OnStep {
        private final Studio v;
        private final int ch;

        StepCh(Studio v, int ch) {
            this.v = v;
            this.ch = ch;
        }

        @Override
        public void onStep(int direction) {
            v.dev.step(ch, direction);
            v.refresh();
        }
    }

    static final class PlusTap implements View.OnClickListener {
        private final Studio v;
        private final int ch;

        PlusTap(Studio v, int ch) {
            this.v = v;
            this.ch = ch;
        }

        @Override
        public void onClick(View view) {
            XemsUi.haptic(view);
            v.dev.step(ch, 1);
            v.refresh();
        }
    }

    static final class Start implements View.OnClickListener {
        private final Studio v;

        Start(Studio v) {
            this.v = v;
        }

        @Override
        public void onClick(View view) {
            v.start();
        }
    }

    static final class Pause implements View.OnClickListener {
        private final Studio v;

        Pause(Studio v) {
            this.v = v;
        }

        @Override
        public void onClick(View view) {
            v.dev.pause();
            v.refresh();
        }
    }

    static final class Stop implements View.OnClickListener {
        private final Studio v;

        Stop(Studio v) {
            this.v = v;
        }

        @Override
        public void onClick(View view) {
            XemsUi.haptic(view);
            v.dev.stop();
            v.refresh();
        }
    }

    static final class Finish implements View.OnClickListener {
        private final Studio v;

        Finish(Studio v) {
            this.v = v;
        }

        @Override
        public void onClick(View view) {
            v.finishDone();
        }
    }
}
