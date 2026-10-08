package com.isaigu.gymapp.wearable.vr;

import android.app.Activity;
import android.content.DialogInterface;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Looper;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.isaigu.gymapp.widget.XemsGuard;
import com.isaigu.gymapp.widget.XemsLang;
import com.isaigu.gymapp.widget.XemsModuleInfo;
import com.isaigu.gymapp.widget.XemsUi;

/**
 * VR haptics sheet (owner, 1.1.402), opened from the "VR" tile of the module bar. One set of settings for the
 * tablet ({@link VrSettings}), autosaved, applied at once.
 * <p>
 * Landscape, two columns. Left = now: the game, the strength going to the suit (hero) with the game's level bar,
 * passed / dropped haptics, and the switch that lets VR drive the strength (pause). Right = the feel: which hits
 * pass (gate preset), the weakest hit (floor %), how fast the strength rises, which muscle groups rest in VR.
 * Explanations sit behind the header's ⓘ. No lambdas / anonymous classes (dx).
 */
public final class VrPanel {
    /** Tile colour (XemsNav) and accents of this sheet. */
    public static final int TINT = 0xFF5C6BC0;

    /** partsDisabled index (buweiN − 1) per chip, in the row's order (train-controls-map muscle_channels). */
    private static final int[] CHANNEL = {3, 2, 9, 8, 1, 7, 6, 5, 0, 4};

    private static final long REFRESH_MS = 150L;
    private static final Handler MAIN = new Handler(Looper.getMainLooper());

    private static XemsUi.Shell shell;
    private static Activity activity;
    private static LinearLayout feel;
    private static TextView game;
    private static TextView hero;
    private static TextView heroUnit;
    private static View heroRow;
    private static View levelBox;
    private static TextView next;
    private static View levelFill;
    private static TextView counts;
    private static TextView reset;
    private static XemsUi.Stepper floorStepper;
    private static Refresh refresh;

    private VrPanel() {}

    public static void open(Activity a) {
        if (a == null) {
            return;
        }
        try {
            VrSettings.load(a);
            build(a);
        } catch (Throwable t) {
            XemsGuard.report("VrPanel.open", t);
        }
    }

    /** Tile status line (XemsNav). */
    public static String status() {
        if (VrSettings.isPaused()) {
            return tr("⏸ На пауза", "⏸ Paused");
        }
        if (VrDrive.isLinked()) {
            if (VrDrive.isYieldedToMusic()) {
                return tr("Чака — музиката води", "Waiting — music leads");
            }
            return "● " + VrDrive.shortAppName();
        }
        return VrBridge.isListening() ? tr("Чака играта", "Waiting for the game") : tr("Няма шлем", "No headset");
    }

    /** Tile state as XemsNav draws it: 0 off, 1 active, 2 waiting / paused. */
    public static int tileState() {
        if (VrSettings.isPaused()) {
            return 2;
        }
        if (VrDrive.isLinked()) {
            return VrDrive.isDriving() ? 1 : 2;
        }
        return 0;
    }

    // ================================================================ build

    private static void build(Activity a) {
        if (shell != null) {
            try {
                shell.dialog.dismiss();
            } catch (Throwable ignored) {
            }
        }
        activity = a;
        XemsUi.Shell s = XemsUi.shell(a, tr("VR хаптика", "VR haptics"), "", 1040);
        shell = s;
        s.info.setVisibility(View.VISIBLE);
        s.info.setOnClickListener(new Click(Click.INFO));

        LinearLayout cols = XemsUi.horizontal(a);
        cols.setBaselineAligned(false);
        cols.setGravity(Gravity.TOP);
        cols.addView(nowColumn(a), new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        feel = XemsUi.vertical(a);
        LinearLayout.LayoutParams fp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.25f);
        fp.leftMargin = XemsUi.dp(a, 22);
        cols.addView(feel, fp);
        s.body.addView(cols, XemsUi.matchWrap(a, 4));
        fillFeel();

        reset = XemsUi.button(a, tr("По подразбиране", "Defaults"), XemsUi.GHOST);
        reset.setOnClickListener(new Click(Click.RESET));
        s.footer.addView(reset);
        updateReset();
        TextView saved = XemsUi.text(a, tr("✓ Пази се само, за всички клиенти", "✓ Saved by itself, for every client"),
                12.5f, XemsUi.HINT, false);
        saved.setGravity(Gravity.CENTER_VERTICAL);
        LinearLayout.LayoutParams sl = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1f);
        sl.leftMargin = XemsUi.dp(a, 12);
        s.footer.addView(saved, sl);
        TextView done = XemsUi.button(a, tr("Готово", "Done"), XemsUi.PRIMARY);
        done.setOnClickListener(new Click(Click.DONE));
        s.footer.addView(done, new LinearLayout.LayoutParams(XemsUi.dp(a, 200), ViewGroup.LayoutParams.WRAP_CONTENT));

        s.dialog.setOnDismissListener(new Dismiss(s));
        s.dialog.show();
        refresh = new Refresh();
        MAIN.post(refresh);
    }

    /** Left: what happens now. */
    private static View nowColumn(Activity a) {
        LinearLayout col = XemsUi.vertical(a);
        col.addView(XemsUi.label(a, tr("Сега", "Now")));

        LinearLayout card = XemsUi.surface(a);
        game = XemsUi.text(a, "", 17, XemsUi.TEXT, true);
        game.setSingleLine(true);
        card.addView(game);

        LinearLayout heroRow = XemsUi.horizontal(a);
        heroRow.setGravity(Gravity.BOTTOM);
        VrPanel.heroRow = heroRow;
        hero = XemsUi.text(a, "—", 48, TINT, true);
        heroRow.addView(hero);
        heroUnit = XemsUi.text(a, "", 13, XemsUi.MUTED, false);
        LinearLayout.LayoutParams ul = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        ul.leftMargin = XemsUi.dp(a, 10);
        ul.bottomMargin = XemsUi.dp(a, 8);
        heroRow.addView(heroUnit, ul);
        card.addView(heroRow, XemsUi.matchWrap(a, 10));

        // the game's level, 0–100 %: a track with a fill whose width follows it
        LinearLayout box = XemsUi.vertical(a);
        levelBox = box;
        FrameLayout track = new FrameLayout(a);
        float r = XemsUi.dp(a, 6);
        track.setBackgroundDrawable(XemsUi.rounded(XemsUi.alpha(XemsUi.TEXT, 0x1E), r, 0, 0));
        levelFill = new View(a);
        GradientDrawable g = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT,
                new int[] {XemsUi.alpha(TINT, 0xAA), TINT});
        g.setCornerRadius(r);
        levelFill.setBackgroundDrawable(g);
        track.addView(levelFill, new FrameLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT));
        box.addView(track, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, XemsUi.dp(a, 12)));
        TextView levelCap = XemsUi.text(a, tr("сила от играта", "strength from the game"), 12, XemsUi.HINT, false);
        box.addView(levelCap, XemsUi.matchWrap(a, 4));
        card.addView(box, XemsUi.matchWrap(a, 6));

        // the next step (idle: the big line of the card) or what happens (live: a caption)
        next = XemsUi.text(a, "", 16, XemsUi.MUTED, false);
        next.setLineSpacing(0, 1.15f);
        card.addView(next, XemsUi.matchWrap(a, 10));

        counts = XemsUi.text(a, "", 13, XemsUi.MUTED, false);
        card.addView(counts, XemsUi.matchWrap(a, 12));
        col.addView(card);

        LinearLayout toggle = XemsUi.toggleRow(a, tr("Играта управлява силата", "The game drives the strength"),
                tr("Изключи за момент — редът продължава със силата на треньора", "Switch off for a moment — the row goes on at the trainer's strength"),
                !VrSettings.isPaused(), new Toggle());
        col.addView(toggle, XemsUi.matchWrap(a, 14));
        return col;
    }

    /** Right: the feel (rebuilt on every change so the selected states are always true). */
    private static void fillFeel() {
        Activity a = activity;
        LinearLayout f = feel;
        if (a == null || f == null) {
            return;
        }
        f.removeAllViews();
        f.addView(XemsUi.label(a, tr("Кои удари минават", "Which hits pass")));
        f.addView(XemsUi.segmented(a, new String[] {
                tr("Само силни", "Strong only"), tr("Нормално", "Normal"), tr("Всички", "All")},
                VrSettings.sensitivity(), new Pick(Pick.SENS)));

        LinearLayout two = XemsUi.horizontal(a);
        two.setBaselineAligned(false);
        LinearLayout floorCol = XemsUi.vertical(a);
        floorCol.addView(XemsUi.label(a, tr("Най-слаб удар", "Weakest hit")));
        XemsUi.Stepper st = XemsUi.stepper(a, VrSettings.floorPercent() + "%",
                tr("от силата на треньора", "of the trainer's strength"), 22, new Step());
        floorCol.addView(st.view);
        floorStepper = st;
        two.addView(floorCol, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        LinearLayout riseCol = XemsUi.vertical(a);
        riseCol.addView(XemsUi.label(a, tr("Нарастване", "Rise")));
        riseCol.addView(XemsUi.segmented(a, new String[] {
                tr("Рязко", "Sharp"), tr("Средно", "Medium"), tr("Меко", "Soft")},
                VrSettings.smoothIndex(), new Pick(Pick.SMOOTH)));
        LinearLayout.LayoutParams rp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.2f);
        rp.leftMargin = XemsUi.dp(a, 16);
        two.addView(riseCol, rp);
        f.addView(two, XemsUi.matchWrap(a, 18));

        f.addView(XemsUi.label(a, tr("Почиват във VR", "Rest in VR")), XemsUi.matchWrap(a, 18));
        String[] names = channelNames();
        for (int row = 0; row < 2; row++) {
            LinearLayout line = XemsUi.horizontal(a);
            for (int k = row * 5; k < row * 5 + 5; k++) {
                int ch = CHANNEL[k];
                boolean rest = VrSettings.rests(ch);
                TextView chip = XemsUi.chip(a, (rest ? "⊘ " : "") + names[k], rest, XemsUi.AMBER);
                chip.setSingleLine(true);
                chip.setTextSize(android.util.TypedValue.COMPLEX_UNIT_SP, 13);
                chip.setPadding(XemsUi.dp(a, 4), 0, XemsUi.dp(a, 4), 0);
                chip.setOnClickListener(new Chip(ch));
                LinearLayout.LayoutParams cp = new LinearLayout.LayoutParams(0, XemsUi.dp(a, 48), 1f);
                cp.rightMargin = k % 5 == 4 ? 0 : XemsUi.dp(a, 8);
                line.addView(chip, cp);
            }
            f.addView(line, XemsUi.matchWrap(a, row == 0 ? 0 : 8));
        }
        updateReset();
    }

    private static void updateReset() {
        if (reset != null) {
            reset.setAlpha(VrSettings.isDefault() ? 0.4f : 1f);
            reset.setEnabled(!VrSettings.isDefault());
        }
    }

    private static String[] channelNames() {
        return new String[] {
            tr("Прасец", "Calf"), tr("Предно бедро", "Front thigh"), tr("Задно бедро", "Back thigh"),
            tr("Седалище", "Glutes"), tr("Корем", "Abs"), tr("Кръст", "Lower back"), tr("Гръб", "Back"),
            tr("Трапец", "Traps"), tr("Гърди", "Chest"), tr("Ръце", "Arms"),
        };
    }

    // ================================================================ live

    private static void refreshNow() {
        XemsUi.Shell s = shell;
        if (s == null || !s.dialog.isShowing()) {
            return;
        }
        int state = tileState();
        String badge;
        int color;
        if (VrSettings.isPaused()) {
            badge = tr("⏸ Пауза", "⏸ Paused");
            color = XemsUi.AMBER;
        } else if (VrDrive.isDriving()) {
            badge = tr("● Води силата", "● Driving");
            color = XemsUi.GO_TEXT;
        } else if (VrDrive.isLinked()) {
            badge = tr("Свързан", "Linked");
            color = XemsUi.AMBER;
        } else {
            badge = tr("Няма връзка", "Not linked");
            color = XemsUi.HINT;
        }
        s.badge.setVisibility(View.VISIBLE);
        XemsUi.setBadge(s.badge, badge, color);
        s.subtitle.setVisibility(View.GONE);

        game.setText(VrDrive.isLinked() ? VrDrive.shortAppName() : tr("Няма игра", "No game"));
        int applied = VrDrive.liveApplied();
        boolean live = state == 1 && applied >= 0;
        hero.setText(live ? applied + "%" : "");
        heroUnit.setText(live ? tr("в костюма", "in the suit") : "");
        heroRow.setVisibility(live ? View.VISIBLE : View.GONE);
        levelBox.setVisibility(live ? View.VISIBLE : View.GONE);
        next.setText(hint());
        next.setTextColor(live ? XemsUi.MUTED : XemsUi.TEXT);
        next.setTextSize(android.util.TypedValue.COMPLEX_UNIT_SP, live ? 13 : 16);
        View track = (View) levelFill.getParent();
        int w = track.getWidth() * Math.max(0, Math.min(100, VrDrive.liveLevel())) / 100;
        ViewGroup.LayoutParams lp = levelFill.getLayoutParams();
        if (lp.width != w) {
            lp.width = w;
            levelFill.setLayoutParams(lp);
        }
        counts.setText(VrDrive.isLinked()
                ? "✓ " + VrDrive.hitsPassed() + tr(" удара минаха", " hits passed") + "   ⊘ " + VrDrive.hitsDropped()
                        + tr(" отрязани", " dropped")
                : "");
    }

    /** One line under the title: the state and, when needed, the next step. */
    private static String hint() {
        if (VrSettings.isPaused()) {
            return tr("Играта не пипа силата, докато не я включиш пак", "The game leaves the strength alone until you switch it on");
        }
        if (VrDrive.isYieldedToMusic()) {
            return tr("Музиката води силата — спри плейъра, за да поеме играта", "Music drives the strength — stop the player to let the game lead");
        }
        if (VrDrive.isDriving()) {
            return tr("Ударите в играта движат силата до тавана на треньора", "Hits in the game move the strength up to the trainer's ceiling");
        }
        if (VrDrive.isLinked()) {
            return tr("Пусни реда — играта ще поеме силата", "Start the row — the game takes over the strength");
        }
        if (VrBridge.isListening()) {
            return tr("Пусни подготвената игра в шлема", "Start the prepared game on the headset");
        }
        return tr("Отвори екрана „Тренировка“ — таблетът слуша оттам", "Open the Training screen — the tablet listens there");
    }

    private static String tr(String bg, String en) {
        return XemsLang.tr(bg, en);
    }

    // ================================================================ handlers (named: dx)

    static final class Refresh implements Runnable {
        @Override
        public void run() {
            if (refresh != this) {
                return;
            }
            try {
                refreshNow();
            } catch (Throwable t) {
                XemsGuard.report("VrPanel.refresh", t);
                return;
            }
            MAIN.postDelayed(this, REFRESH_MS);
        }
    }

    static final class Dismiss implements DialogInterface.OnDismissListener {
        private final XemsUi.Shell s;

        Dismiss(XemsUi.Shell s) {
            this.s = s;
        }

        @Override
        public void onDismiss(DialogInterface d) {
            if (shell == s) {
                shell = null;
                refresh = null;
                feel = null;
                floorStepper = null;
                heroRow = null;
                levelBox = null;
                activity = null;
            }
        }
    }

    static final class Click implements View.OnClickListener {
        static final int DONE = 0;
        static final int RESET = 1;
        static final int INFO = 2;
        private final int what;

        Click(int what) {
            this.what = what;
        }

        @Override
        public void onClick(View v) {
            try {
                XemsUi.haptic(v);
                if (what == DONE) {
                    if (shell != null) {
                        shell.dialog.dismiss();
                    }
                } else if (what == RESET) {
                    VrSettings.reset(v.getContext());
                    fillFeel();
                } else {
                    XemsModuleInfo.show(activity, XemsModuleInfo.VR, null);
                }
            } catch (Throwable t) {
                XemsGuard.report("VrPanel.click", t);
            }
        }
    }

    static final class Pick implements XemsUi.OnIndex {
        static final int SENS = 0;
        static final int SMOOTH = 1;
        private final int what;

        Pick(int what) {
            this.what = what;
        }

        @Override
        public void onIndex(int index) {
            Activity a = activity;
            if (what == SENS) {
                VrSettings.setSensitivity(a, index);
            } else {
                VrSettings.setSmoothIndex(a, index);
            }
            fillFeel();
        }
    }

    static final class Step implements XemsUi.OnStep {
        @Override
        public void onStep(int direction) {
            // In place, not fillFeel(): a hold repeats on this very view, it must stay attached.
            VrSettings.setFloorPercent(activity, VrSettings.floorPercent() + 5 * direction);
            if (floorStepper != null) {
                floorStepper.set(VrSettings.floorPercent() + "%", tr("от силата на треньора", "of the trainer's strength"));
            }
            updateReset();
        }
    }

    static final class Chip implements View.OnClickListener {
        private final int channel;

        Chip(int channel) {
            this.channel = channel;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            VrSettings.setRests(v.getContext(), channel, !VrSettings.rests(channel));
            fillFeel();
        }
    }

    static final class Toggle implements XemsUi.OnToggle {
        @Override
        public void onToggle(boolean on) {
            VrSettings.setPaused(activity, !on);
        }
    }
}
