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
 * Landscape: program and minutes on the left, the pads (classic, or the two of a Duo) on the right with their
 * strength big; one primary button ▶ / ■. The pads are found and linked by themselves; programs are XEMS's own
 * ({@link BluetensPrograms}). Closing the page stops the output.
 */
public final class BluetensScreen {
    static final String PREFS = "xems_bluetens";
    static final int MAX_PADS = 2;

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
            col.addView(XemsUi.label(a, tr("Програма", "Program")));
            programList = XemsUi.vertical(a);
            col.addView(programList, XemsUi.matchWrap(a, 8));
            col.addView(XemsUi.label(a, tr("Минути", "Minutes")), XemsUi.matchWrap(a, 16));
            minuteRow = XemsUi.horizontal(a);
            col.addView(minuteRow, XemsUi.matchWrap(a, 8));
            return col;
        }

        void fillPrograms() {
            programList.removeAllViews();
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
            long left = running ? Math.max(0, lengthMs - (System.currentTimeMillis() - startedAt))
                    : (long) BluetensPrograms.build(program, minutes).ms();
            long secs = (left + 999) / 1000;
            clock.setText(String.format(Locale.ROOT, "%d:%02d", secs / 60, secs % 60));
            clockLabel.setText(running ? tr("остават · ", "left · ") + BluetensPrograms.name(program, b)
                    : finished ? tr("Готово ✓", "Done ✓") : BluetensPrograms.name(program, b));
            clockLabel.setTextColor(finished && !running ? XemsUi.GO_TEXT : XemsUi.MUTED);
            float done = running && lengthMs > 0 ? Math.min(1f, (System.currentTimeMillis() - startedAt) / (float) lengthMs) : 0f;
            ((LinearLayout.LayoutParams) barDone.getLayoutParams()).weight = done;
            ((LinearLayout.LayoutParams) barLeft.getLayoutParams()).weight = 1f - done;
            barDone.requestLayout();

            int ready = 0;
            boolean uploading = false;
            for (int i = 0; i < pads.size(); i++) {
                Pad p = pads.get(i);
                renderPad(p, i);
                if (p.link.state == BluetensLink.READY) {
                    ready++;
                }
                uploading |= p.link.shell.uploading;
            }
            empty.setVisibility(pads.isEmpty() ? View.VISIBLE : View.GONE);
            emptyText.setText(scan == null ? tr("Bluetooth е изключен", "Bluetooth is off")
                    : tr("Търся Bluetens…", "Looking for Bluetens…"));

            go.setText(running ? tr("■  Спри", "■  Stop") : tr("▶  Пусни", "▶  Start"));
            int style = running ? XemsUi.DANGER_BTN : XemsUi.PRIMARY;
            if (style != goStyle) {
                goStyle = style;
                go.setBackgroundDrawable(XemsUi.button(a, "", style).getBackground());
            }
            boolean can = running || ready > 0;
            go.setEnabled(can && !uploading);
            go.setAlpha(can && !uploading ? 1f : 0.4f);
            String h;
            if (hintText != null) {
                h = hintText;
            } else if (uploading) {
                h = tr("Качвам програмата в устройството…", "Sending the program to the pad…");
            } else if (running) {
                h = tr("Качвай силата, докато е приятно — не до болка.", "Raise the strength until it feels good — never to pain.");
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
            BluetensLok lok = BluetensPrograms.build(program, minutes);
            byte[] content = BluetensShell.ascii(lok.build());
            String file = BluetensPrograms.fileName(program, minutes);
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

    static final class Info implements View.OnClickListener {
        final Page v;

        Info(Page v) {
            this.v = v;
        }

        @Override
        public void onClick(View view) {
            boolean b = bg();
            XemsUi.Shell s = XemsUi.shell(v.a, BluetensPrograms.name(v.program, b),
                    BluetensPrograms.detail(v.program, b), 620);
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
