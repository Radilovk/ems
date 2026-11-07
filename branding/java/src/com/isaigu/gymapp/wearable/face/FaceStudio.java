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

    /**
     * From the automatic mode's client step: the face question was answered there (botox / filler —
     * {@code AutoModel.Extra.injectable} blocks before this); the studio starts at the effect (the one card in Auto
     * stands for all four).
     */
    public static void openAuto(Activity a, String autoProgramId) {
        open(a, new FaceAuto(), FaceAuto.programOf(autoProgramId), PICK);
    }

    /** From the Bluetens page: its face card. */
    public static void openDevice(Activity a, FaceDevice d) {
        Studio c = current;
        if (c != null && !c.closed && c.dev.kind() == d.kind()) {
            c.reshow(a);
            return;
        }
        open(a, d, FaceProgram.LIFT, PICK);
    }

    private static void open(Activity a, FaceDevice d, int program, int step) {
        try {
            Studio old = current;
            if (old != null && !old.closed) {
                old.close();
            }
            current = new Studio(a, d, program);
            current.step = step;
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
        /** "Неприятно" taps this session: the second one opens what to check. */
        int eased;

        FaceView face;
        int faceH;
        LinearLayout floor;
        TextView caption;
        TextView captionSub;
        LinearLayout right;
        TextView primary;
        TextView hint;
        FaceRing ring;
        final TextView[] values = new TextView[12];
        TextView pauseBtn;
        TextView stopBtn;
        TextView statusLine;
        final int[] lastShown = new int[12];

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
            dev.select(this.program);
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
            // the picture fills the page's height (header and footer aside); the right column is just as tall
            faceH = Math.max(dp(380), dm.heightPixels - dp(178));
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

            // the right column: the step (scrolls if it must) over the course card on the floor, as tall as the picture
            LinearLayout column = XemsUi.vertical(a);
            android.widget.ScrollView sc = new android.widget.ScrollView(a);
            sc.setVerticalScrollBarEnabled(false);
            sc.setOverScrollMode(View.OVER_SCROLL_NEVER);
            right = XemsUi.vertical(a);
            sc.addView(right);
            column.addView(sc, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
            floor = XemsUi.vertical(a);
            column.addView(floor, XemsUi.matchWrap(a, 10));
            LinearLayout.LayoutParams rp = new LinearLayout.LayoutParams(0, faceH, 1.12f);
            rp.leftMargin = dp(24);
            row.addView(column, rp);
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
                    ? tr("Костюм XEMS · букса за лице F1–F10", "XEMS suit · face connector F1–F10")
                    : tr("Bluetens · до 3 устройства", "Bluetens · up to 3 pads");
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
            java.util.Arrays.fill(values, null);
            ring = null;
            pauseBtn = null;
            stopBtn = null;
            statusLine = null;
            java.util.Arrays.fill(lastShown, -1);
            face.focusChin(prog().id == FaceProgram.CONTOUR);
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
            floor.removeAllViews();
            if (st != DONE && (st != PICK || dev.programs().length <= 4)) {
                floor.addView(courseCard(), XemsUi.matchWrap(a, 0));     // the course on the floor: no empty half-screen
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
            int[] ids = dev.programs();
            LinearLayout rowL = null;
            for (int k = 0; k < ids.length; k++) {
                if (k % 2 == 0) {
                    rowL = XemsUi.horizontal(a);
                    right.addView(rowL, XemsUi.matchWrap(a, k == 0 ? 6 : 10));
                }
                LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1f);
                if (k % 2 == 1) {
                    lp.leftMargin = dp(10);
                }
                rowL.addView(programCard(FaceProgram.get(ids[k])), lp);
            }
            if (ids.length % 2 == 1 && rowL != null) {
                LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, 1, 1f);
                lp.leftMargin = dp(10);
                rowL.addView(new View(a), lp);
            }
            primary = footer(tr("Към поставянето  →", "To the placement  →"), XemsUi.PRIMARY, new Next(this, PLACE));
        }

        /** A compact card: the mark, the name, the promise, two short chips; ⓘ = how it works and how sure. */
        View programCard(FaceProgram p) {
            boolean on = p.id == program;
            boolean b = bg();
            LinearLayout card = XemsUi.vertical(a);
            card.setPadding(dp(14), dp(10), dp(10), dp(10));
            float r = dp(18);
            card.setBackgroundDrawable(XemsUi.ripple(on
                    ? XemsUi.rounded(XemsUi.alpha(p.tint, 0x24), r, XemsUi.alpha(p.tint, 0xDD), dp(2))
                    : XemsUi.rounded(XemsUi.SURFACE, r, XemsUi.STROKE, dp(1)), p.tint, r));
            card.setClickable(true);
            card.setOnClickListener(new Pick(this, p.id));
            XemsUi.pressable(card);
            LinearLayout head = XemsUi.horizontal(a);
            head.setGravity(Gravity.CENTER_VERTICAL);
            TextView mark = XemsUi.text(a, p.glyph, 19, on ? 0xFFFFFFFF : p.tint, true);
            mark.setGravity(Gravity.CENTER);
            mark.setBackgroundDrawable(XemsUi.rounded(on ? p.tint : XemsUi.alpha(p.tint, 0x30), dp(19), 0, 0));
            head.addView(mark, new LinearLayout.LayoutParams(dp(38), dp(38)));
            LinearLayout names = XemsUi.vertical(a);
            names.setPadding(dp(10), 0, dp(4), 0);
            TextView nm = XemsUi.text(a, p.name(b), 18, on ? p.tint : XemsUi.TEXT, true);
            nm.setSingleLine(true);
            nm.setEllipsize(TextUtils.TruncateAt.END);
            names.addView(nm);
            TextView st = XemsUi.text(a, p.stars(), 11, on ? p.tint : XemsUi.MUTED, false);
            names.addView(st);
            head.addView(names, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            TextView info = XemsUi.iconButton(a, "i", XemsUi.SURFACE, XemsUi.TEXT, 34);
            info.setOnClickListener(new HowInfo(this, p.id));
            head.addView(info, new LinearLayout.LayoutParams(dp(34), dp(34)));
            card.addView(head);
            TextView tag = XemsUi.text(a, p.tag(b), 14.5f, XemsUi.TEXT, false);
            tag.setSingleLine(true);
            tag.setEllipsize(TextUtils.TruncateAt.END);
            tag.setPadding(0, dp(6), 0, 0);
            card.addView(tag);
            LinearLayout chips = XemsUi.horizontal(a);
            chips.setPadding(0, dp(6), 0, 0);
            TextView c1 = XemsUi.badge(a, p.rhythm(b), on ? p.tint : XemsUi.MUTED);
            c1.setSingleLine(true);
            chips.addView(c1);
            TextView c2 = XemsUi.badge(a, p.course(b), on ? XemsUi.ACCENT : XemsUi.MUTED);
            c2.setSingleLine(true);
            c2.setEllipsize(TextUtils.TruncateAt.END);
            LinearLayout.LayoutParams cl = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
            cl.leftMargin = dp(6);
            chips.addView(c2, cl);
            card.addView(chips);
            return card;
        }

        /** The floor of the column: the client's course of this procedure — where, the bar, the next good time. */
        View courseCard() {
            boolean b = bg();
            FaceProgram p = prog();
            FaceCourse.Stats st = stats();
            long now = System.currentTimeMillis();
            LinearLayout c = XemsUi.vertical(a);
            c.setPadding(dp(16), dp(12), dp(16), dp(14));
            c.setBackgroundDrawable(XemsUi.rounded(XemsUi.alpha(p.tint, 0x14), dp(16), XemsUi.alpha(p.tint, 0x55), dp(1)));
            LinearLayout top = XemsUi.horizontal(a);
            top.setGravity(Gravity.CENTER_VERTICAL);
            top.addView(XemsUi.text(a, p.name(b), 14, p.tint, true));
            TextView line = XemsUi.text(a, "  ·  " + FaceCourse.line(st, b), 14, XemsUi.TEXT, false);
            top.addView(line, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            c.addView(top);
            if (st.planned > 0) {
                LinearLayout.LayoutParams bl = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(8));
                bl.topMargin = dp(10);
                c.addView(courseBar(st, p), bl);
            }
            String next;
            int col = XemsUi.MUTED;
            if (st.finished && program == FaceProgram.LIFT) {
                next = tr("Курсът е завършен — „Стегнат овал“ 2–3 пъти седмично пази ефекта",
                        "The course is complete — Firm contour 2–3 times a week keeps the effect");
                col = XemsUi.GO_TEXT;
            } else if (st.nextMs > now) {
                next = tr("Мускулът се възстановява — най-добре ", "The muscle recovers — best ") + when(st.nextMs, now, b);
                col = XemsUi.AMBER;
            } else {
                next = p.course(b) + "  ·  " + p.muscle(b);
            }
            TextView n = XemsUi.text(a, next, 13, col, false);
            n.setPadding(0, dp(8), 0, 0);
            c.addView(n);
            return c;
        }

        // ---------------------------------------------------------------- 2 · the pads

        void buildPlace() {
            boolean b = bg();
            FaceProgram p = prog();
            right.addView(title(tr("Поставяне на електродите", "Placing the pads")));
            String[] lines = p.place(b, dev.kind() == FaceDevice.XEMS);
            for (int i = 0; i < lines.length; i++) {
                right.addView(placeRow(i == 0 ? "✓" : String.valueOf(i), lines[i], i == 0 ? XemsUi.GO_TEXT : XemsUi.ACCENT),
                        XemsUi.matchWrap(a, 10));
            }
            right.addView(socketTable(b), XemsUi.matchWrap(a, 14));
            String why = dev.notReady(program, b);
            if (why != null) {
                TextView w = XemsUi.text(a, why, 14, XemsUi.AMBER, true);
                right.addView(w, XemsUi.matchWrap(a, 12));
            }
            if (dev.kind() == FaceDevice.XEMS) {
                // asked on Auto's client step already (a "yes" blocks there): shown, not asked again
                right.addView(placeRow("✓", tr("Ботокс / филър до 2 седмици: не", "Botox / filler within 2 weeks: no"),
                        XemsUi.GO_TEXT), XemsUi.matchWrap(a, 10));
                ghost(tr("←  Ефект", "←  Effect"), new Next(this, PICK));
                primary = footer(tr("Към силата  →", "To the strength  →"), XemsUi.PRIMARY, new Next(this, STRENGTH));
                return;
            }
            // the face's one question: the confirmation is the primary button (fewest steps)
            LinearLayout q = XemsUi.vertical(a);
            q.setPadding(dp(16), dp(14), dp(16), dp(14));
            q.setBackgroundDrawable(XemsUi.rounded(XemsUi.alpha(contra ? XemsUi.DANGER : XemsUi.AMBER, 0x1C), dp(16),
                    XemsUi.alpha(contra ? XemsUi.DANGER : XemsUi.AMBER, 0x88), dp(1)));
            String question = tr("Ботокс или филър през последните 2 седмици, пейсмейкър, бременност, епилепсия или раздразнена кожа?",
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

        /**
         * Which socket (XEMS: F1–F10 of the face connector) or which device (Bluetens 1–3) goes to which site — a
         * compact two-column table; the picture shows the same labels on the pads.
         */
        View socketTable(boolean b) {
            LinearLayout t = XemsUi.vertical(a);
            int n = dev.kind() == FaceDevice.XEMS ? dev.channels() : prog().bluetensSites().length;
            LinearLayout row = null;
            for (int ch = 0; ch < n; ch++) {
                if (ch % 2 == 0) {
                    row = XemsUi.horizontal(a);
                    t.addView(row, XemsUi.matchWrap(a, ch == 0 ? 0 : 8));
                }
                boolean live = dev.kind() == FaceDevice.XEMS || ch < dev.channels();
                int tint = live ? XemsUi.ACCENT : XemsUi.MUTED;
                LinearLayout cell = XemsUi.horizontal(a);
                cell.setGravity(Gravity.CENTER_VERTICAL);
                TextView sk = XemsUi.text(a, dev.socket(ch), 13, live ? XemsUi.ON_ACCENT : XemsUi.MUTED, true);
                sk.setGravity(Gravity.CENTER);
                sk.setBackgroundDrawable(XemsUi.rounded(live ? tint : XemsUi.alpha(tint, 0x30), dp(8), 0, 0));
                cell.addView(sk, new LinearLayout.LayoutParams(dp(40), dp(30)));
                String name = FaceProgram.siteName(dev.kind() == FaceDevice.XEMS ? dev.siteOf(ch) : prog().bluetensSites()[ch], b);
                if (dev.kind() == FaceDevice.BLUETENS) {
                    int bat = live ? dev.battery(ch) : -1;
                    name += live ? (bat >= 0 ? "  ·  " + bat + " %" : "  ·  ✓") : tr("  ·  не е свързано", "  ·  not connected");
                }
                TextView nm = XemsUi.text(a, name, 14.5f, live ? XemsUi.TEXT : XemsUi.MUTED, false);
                nm.setPadding(dp(10), 0, dp(6), 0);
                cell.addView(nm, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
                LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
                row.addView(cell, lp);
            }
            if (n % 2 == 1 && row != null) {
                row.addView(new View(a), new LinearLayout.LayoutParams(0, 1, 1f));
            }
            return t;
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
            ghost(tr("←  Назад", "←  Back"), new Back(this));
            easeButton();
            primary = footer(dev.kind() == FaceDevice.XEMS ? tr("▶  Старт", "▶  Start") : tr("✓  Добре е · продължи", "✓  Good · go on"),
                    XemsUi.PRIMARY, new Start(this));
            enable(primary, false);
        }

        /**
         * XEMS: one big master (the whole procedure) and a compact share for every site (100 % = as the program asks,
         * lower one that feels stronger); Bluetens: one big stepper per device. − may be held, + is one step per tap.
         */
        View strengthRow() {
            LinearLayout box = XemsUi.vertical(a);
            values[0] = null;
            if (dev.hasMaster()) {
                box.addView(bigStepper(-1, tr("Сила на процедурата", "Procedure strength")), XemsUi.matchWrap(a, 0));
                int n = dev.channels();
                if (n > 1) {
                    TextView cap = XemsUi.text(a, tr("Дял на всяко място — намали там, където се усеща по-силно",
                            "Each site's share — lower where it feels stronger"), 13, XemsUi.MUTED, false);
                    box.addView(cap, XemsUi.matchWrap(a, 12));
                    LinearLayout row = null;
                    for (int ch = 0; ch < n; ch++) {
                        if (ch % 3 == 0) {
                            row = XemsUi.horizontal(a);
                            box.addView(row, XemsUi.matchWrap(a, 6));
                        }
                        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
                        if (ch % 3 > 0) {
                            lp.leftMargin = dp(8);
                        }
                        row.addView(smallStepper(ch), lp);
                    }
                    for (int k = n % 3; k > 0 && k < 3; k++) {
                        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, 1, 1f);
                        lp.leftMargin = dp(8);
                        row.addView(new View(a), lp);
                    }
                }
                return box;
            }
            LinearLayout r = XemsUi.horizontal(a);
            int n = Math.max(1, dev.channels());
            for (int ch = 0; ch < n && ch < 3; ch++) {
                LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
                if (ch > 0) {
                    lp.leftMargin = dp(10);
                }
                r.addView(bigStepper(ch, dev.socket(ch) + " · " + dev.channelName(ch, bg())), lp);
            }
            box.addView(r);
            return box;
        }

        /** A big stepper (ch −1 = the master). */
        View bigStepper(int ch, String label) {
            LinearLayout col = XemsUi.vertical(a);
            col.setGravity(Gravity.CENTER_HORIZONTAL);
            col.setPadding(dp(8), dp(10), dp(8), dp(12));
            col.setBackgroundDrawable(XemsUi.glass(a, dp(18)));
            TextView name = XemsUi.text(a, label, 13.5f, XemsUi.MUTED, true);
            name.setGravity(Gravity.CENTER);
            name.setSingleLine(true);
            name.setEllipsize(TextUtils.TruncateAt.END);
            col.addView(name);
            LinearLayout st = XemsUi.horizontal(a);
            st.setGravity(Gravity.CENTER);
            TextView minus = XemsUi.iconButton(a, "−", XemsUi.SURFACE, XemsUi.TEXT, 56);
            TextView plus = XemsUi.iconButton(a, "+", XemsUi.SURFACE, XemsUi.TEXT, 56);
            XemsUi.repeatOnHold(minus, new StepCh(this, ch), -1);
            plus.setOnClickListener(new PlusTap(this, ch));
            TextView v = XemsUi.text(a, "0", 40, XemsUi.TEXT, true);
            v.setGravity(Gravity.CENTER);
            values[slot(ch)] = v;
            st.addView(minus, new LinearLayout.LayoutParams(dp(56), dp(56)));
            st.addView(v, new LinearLayout.LayoutParams(dp(92), ViewGroup.LayoutParams.WRAP_CONTENT));
            st.addView(plus, new LinearLayout.LayoutParams(dp(56), dp(56)));
            col.addView(st, XemsUi.matchWrap(a, 6));
            return col;
        }

        /** A site's share: "F3 назолабиална · лява   − 90 % +". */
        View smallStepper(int ch) {
            LinearLayout c = XemsUi.horizontal(a);
            c.setGravity(Gravity.CENTER_VERTICAL);
            c.setPadding(dp(8), dp(6), dp(6), dp(6));
            c.setBackgroundDrawable(XemsUi.rounded(XemsUi.SURFACE, dp(14), XemsUi.STROKE, dp(1)));
            TextView sk = XemsUi.text(a, dev.socket(ch), 12, XemsUi.ON_ACCENT, true);
            sk.setGravity(Gravity.CENTER);
            sk.setBackgroundDrawable(XemsUi.rounded(XemsUi.ACCENT, dp(7), 0, 0));
            c.addView(sk, new LinearLayout.LayoutParams(dp(34), dp(24)));
            TextView minus = XemsUi.iconButton(a, "−", XemsUi.CARD, XemsUi.TEXT, 40);
            TextView plus = XemsUi.iconButton(a, "+", XemsUi.CARD, XemsUi.TEXT, 40);
            XemsUi.repeatOnHold(minus, new StepCh(this, ch), -1);
            plus.setOnClickListener(new PlusTap(this, ch));
            TextView v = XemsUi.text(a, "100 %", 15, XemsUi.TEXT, true);
            v.setGravity(Gravity.CENTER);
            values[slot(ch)] = v;
            LinearLayout.LayoutParams ml = new LinearLayout.LayoutParams(dp(40), dp(40));
            ml.leftMargin = dp(6);
            c.addView(minus, ml);
            c.addView(v, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            c.addView(plus, new LinearLayout.LayoutParams(dp(40), dp(40)));
            return c;
        }

        /** values[0] = the master (or Bluetens 1), values[1 + ch] = a site / device. */
        int slot(int ch) {
            return dev.hasMaster() ? ch + 1 : ch;
        }

        /** Bluetens minutes, derived: the lift grows from 10 to 20 after two weeks; the forehead 20 (as the approved
         *  device), the jaw 15, the rest 10. */
        int minutes() {
            switch (program) {
                case FaceProgram.LIFT: return stats().week >= 3 ? 20 : 10;
                case FaceProgram.RELAX: return 20;
                case FaceProgram.JAW_RELAX: return 15;
                default: return 10;
            }
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
            if (prog().sensory) {
                ring.setSteady(prog().id == FaceProgram.RELAX ? tr("НЕЖЕН ТОК", "GENTLE CURRENT") : tr("ПОТУПВАНЕ", "TAPPING"));
            }
            r.addView(ring, new LinearLayout.LayoutParams(dp(310), dp(310)));
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
            easeButton();
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
                TextView up = XemsUi.text(a, tr("Курсът за лифтинг е завършен — оттук „Стегнат овал“ 2–3 пъти седмично пази ефекта.",
                        "The lift course is complete — from here Firm contour 2–3 times a week keeps the effect."), 15, XemsUi.GO_TEXT, false);
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

        /** "Неприятно" — always one tap away while the current flows: down at once; the second tap says what to check. */
        void easeButton() {
            TextView e = XemsUi.button(a, tr("Неприятно", "Unpleasant"), XemsUi.SECONDARY);
            e.setTextColor(XemsUi.AMBER);
            e.setOnClickListener(new Ease(this));
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, dp(56));
            lp.leftMargin = dp(10);
            s.footer.addView(e, lp);
        }

        void ease() {
            dev.ease();
            eased++;
            hint.setText(tr("Силата е свалена", "Strength lowered"));
            refresh();
            if (eased == 2) {
                boolean b = bg();
                sheet(a, tr("Неприятно усещане", "Unpleasant feeling"), b
                        ? "Тъпа, дълбока болка навътре (в костта): спри процедурата. Тя идва от обвивката на костта там, където "
                        + "тъканта е тънка — не е ефектът, който търсим.\n\n"
                        + "Провери: двойката електроди близо една до друга (един пръст между тях); електродите плътно залепени, "
                        + "без отлепени ръбове; кожата почистена, без крем и грим; електродите не са изтъркани.\n\n"
                        + "Бодеж под ръба на един електрод: контактът — притисни или смени електрода.\n"
                        + "Изтръпване към устната, зъбите или скалпа: електродът е над нерв — премести го по картината.\n\n"
                        + "Ако болката остава и при най-ниската сила, тази зона не е за клиента днес."
                        : "A dull, deep ache inside (in the bone): stop. It comes from the bone's lining where the tissue is thin — "
                        + "not the effect we want.\n\nCheck: the pads close together (one finger apart); stuck flat, no lifted "
                        + "edges; skin clean, no cream or make-up; pads not worn out.\n\nA sting under one pad's edge: the "
                        + "contact — press or replace the pad.\nA tingle towards the lip, teeth or scalp: the pad is over a nerve — "
                        + "move it as in the picture.\n\nIf the ache stays at the lowest strength, this area is not for the "
                        + "client today.");
            }
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
            for (int k = 0; k < values.length; k++) {
                if (values[k] == null) {
                    continue;
                }
                int ch = dev.hasMaster() ? k - 1 : k;
                int v = dev.strength(ch);
                if (v != lastShown[k]) {
                    lastShown[k] = v;
                    values[k].setText(dev.hasMaster() && ch >= 0 ? v + " %" : String.valueOf(v));
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
                hint.setText(prog().runHint(st.on, b));
                if (dev.finished()) {
                    toDone();
                }
            }
        }

        String runLine(FaceTimeline.State st, boolean b) {
            FaceProgram p = prog();
            return p.name(b) + "\n" + p.tag(b) + "\n" + p.rhythm(b);
        }

        void updateCaption() {
            boolean b = bg();
            FaceProgram p = prog();
            if (step == PLACE) {
                caption.setText(dev.kind() == FaceDevice.XEMS
                        ? tr("Всяко гнездо F — на своето място, двойката по мускула", "Each F socket on its site, the pair along the muscle")
                        : tr("Всяко устройство — на своето място", "Each pad on its site"));
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
            dev.select(id);
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
            boolean xems = v.dev.kind() == FaceDevice.XEMS;
            s.clear();
            s.hz = p.hz;
            s.pads = true;
            s.nogo = v.step == PLACE;
            s.placing = v.step == PLACE;
            s.muscle = true;
            s.drain = p.id == FaceProgram.DRAIN;
            s.sensory = p.sensory;
            s.small = xems;
            s.outline = v.step == RUN || v.step == STRENGTH;
            // the procedure's sites, labelled as they are plugged (F1… / the device's number)
            int[] sites = xems ? p.xemsSites() : p.bluetensSites();
            int live = xems ? sites.length : v.dev.channels();
            for (int k = 0; k < sites.length; k++) {
                s.on[sites[k]] = true;
                s.label[sites[k]] = xems ? "F" + (sites[k] + 1) : String.valueOf(k + 1);
                s.dim[sites[k]] = !xems && k >= live && v.step != PICK && v.step != PLACE;
            }
            if (v.step == PICK || v.step == DONE) {
                // a preview of the effect: the program's own rhythm, gently (a sensory one: a steady shimmer)
                for (int k = 0; k < sites.length; k++) {
                    float lv;
                    if (v.step == DONE) {
                        lv = 0f;
                    } else if (p.sensory) {
                        lv = 0.8f;
                    } else if (p.id == FaceProgram.OVAL) {
                        // the cheeks, then the chin: 3 s each
                        long t = (long) (s.t * 1000) + (sites[k] == FaceArt.CHIN ? 3000 : 0);
                        lv = FaceTimeline.cycle(t, 3, 3, 500, 500, p.hz).level * 0.85f;
                    } else if (p.id == FaceProgram.DRAIN) {
                        // the wave: each site a little later than the one before
                        lv = FaceTimeline.cycle((long) (s.t * 1000) - k * 600L, 1, 2, 300, 300, p.hz).level * 0.85f;
                    } else {
                        lv = FaceTimeline.cycle((long) (s.t * 1000), p.onS, p.offS, 500, 500, p.hz).level * 0.85f;
                    }
                    s.level[sites[k]] = lv;
                }
                return;
            }
            if (v.step == PLACE) {
                return;
            }
            FaceTimeline.State st = v.dev.active() ? v.dev.state(now) : new FaceTimeline.State();
            if (st.hz > 0) {
                s.hz = st.hz;
            }
            if (!v.dev.active()) {
                return;
            }
            for (int ch = 0; ch < v.dev.channels(); ch++) {
                float lv = v.dev.level(ch, now);
                s.level[v.dev.siteOf(ch)] = p.sensory ? (lv > 0 ? 0.8f : 0f) : lv;
            }
        }

        /** A sensory current does not contract: the picture shows a steady shimmer while it flows. */
        static float level(FaceProgram p, FaceTimeline.State st) {
            if (p.sensory) {
                return st.on || st.leftMs > 0 ? 0.8f : 0f;
            }
            return st.level;
        }

        static FaceTimeline.State steady() {
            FaceTimeline.State st = new FaceTimeline.State();
            st.on = true;
            st.level = 0.8f;
            return st;
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
                    ? "Два вида ток, две цели.\n\n"
                    + "Двигателен — лифтинг, стегнат овал, детокс, контур: импулсът възбужда двигателните разклонения на "
                    + "лицевия нерв и мускулите се съкращават сами, без усилие и без бръчки от мимика. Мускулите на лицето "
                    + "нямат сухожилия — вплетени са в кожата, затова по-плътният мускул дава опора отвътре. Честотата е "
                    + "винаги 20 Hz и нагоре: под нея лицето потрепва неприятно.\n\n"
                    + "Сетивен — ботокс ефект, отпусната челюст: токът докосва само нервите на кожата, мускулът не мърда. "
                    + "Сетивният поток сваля тонуса на мускулите — лицето се отпуска.\n\n"
                    + "●●● доказано на лицето · ●●○ доказано за механизма · ●○○ логика без измерване.\n\n"
                    + "Днес без лице: ботокс или филър през последните 2 седмици, пейсмейкър, бременност, епилепсия, "
                    + "скорошна операция на лицето, раздразнена кожа, парализа на лицевия нерв."
                    : "Two kinds of current, two aims.\n\n"
                    + "Motor — lift, firm contour, depuff, contour: the impulse excites the motor branches of the facial nerve "
                    + "and the muscles contract by themselves, no effort, no expression lines. Face muscles weave into the skin, "
                    + "so a fuller muscle supports from within. Always 20 Hz or more.\n\n"
                    + "Sensory — botox effect, relaxed jaw: only the skin's nerves are touched, the muscle does not move; the "
                    + "sensory input lowers muscle tone.\n\n"
                    + "●●● proven on the face · ●●○ the mechanism proven · ●○○ rationale only.\n\n"
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
            sheet(v.a, p.name(b) + " · " + p.tag(b), p.how(b) + "\n\n" + p.muscle(b) + " · " + p.latin + "\n" + p.rhythm(b)
                    + "  ·  " + p.course(b) + "\n" + p.evidenceText(b));
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

    static final class Ease implements View.OnClickListener {
        private final Studio v;

        Ease(Studio v) {
            this.v = v;
        }

        @Override
        public void onClick(View view) {
            XemsUi.haptic(view);
            v.ease();
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
