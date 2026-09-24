package com.isaigu.gymapp.widget;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Handler;
import android.os.Looper;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.HapticFeedbackConstants;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

/**
 * XEMS UI kit — one look for every module (interval timer, player, HR, AI).
 * <p>
 * Colours come from the app theme (values / values-night): surfaces bg_card / bg_surface,
 * hairline card_stroke, text_primary / text_secondary, red accent (active tab), green
 * (impulse / start), amber (pause). Controls get a ripple and a short press-scale; steppers
 * repeat while held. No XML, no lambdas (dx).
 */
public final class XemsUi {
    public static int BG = 0xFF121212;
    public static int CARD = 0xFF1E1E1E;
    public static int SURFACE = 0xFF2A2A2A;
    public static int ELEVATED = 0xFF333333;
    public static int STROKE = 0xFF444444;
    public static int TEXT = 0xFFE8E8E8;
    public static int MUTED = 0xFFB0B0B0;
    public static int HINT = 0xFF888888;
    public static int ACCENT = 0xFFE53935;
    public static int ACCENT_DARK = 0xFFB71C1C;
    public static int GO = 0xFF43A047;
    public static int GO_TEXT = 0xFF81C784;
    public static int AMBER = 0xFFF9A825;
    public static int DANGER = 0xFFEF5350;
    public static int ORANGE = 0xFFF57C00;
    public static int ON_ACCENT = 0xFFFFFFFF;
    public static boolean dark = true;

    public static final int PRIMARY = 0;   // green solid — start / activate / save
    public static final int ACCENT_BTN = 1; // red solid — brand / stop
    public static final int SECONDARY = 2;  // surface + hairline
    public static final int GHOST = 3;      // text only

    private static final Handler handler = new Handler(Looper.getMainLooper());

    private XemsUi() {}

    public interface OnIndex {
        void onIndex(int index);
    }

    public interface OnStep {
        void onStep(int direction);
    }

    public interface OnToggle {
        void onToggle(boolean on);
    }

    // ================================================================ theme

    public static void init(Context c) {
        if (c == null) {
            return;
        }
        BG = color(c, "bg_screen", BG);
        CARD = color(c, "bg_card", CARD);
        SURFACE = color(c, "bg_surface", SURFACE);
        ELEVATED = color(c, "bg_elevated", ELEVATED);
        STROKE = color(c, "card_stroke", STROKE);
        TEXT = color(c, "text_primary", TEXT);
        MUTED = color(c, "text_secondary", MUTED);
        HINT = color(c, "text_hint", HINT);
        ACCENT = color(c, "accent_primary", ACCENT);
        ACCENT_DARK = color(c, "accent_primary_dark", ACCENT_DARK);
        GO_TEXT = color(c, "impulse_accent", GO_TEXT);
        GO = color(c, "ma_badge_active_bg", GO);
        AMBER = color(c, "ma_badge_pause_bg", AMBER);
        DANGER = color(c, "pause_accent", DANGER);
        ORANGE = color(c, "light_orange_exister", ORANGE);
        ON_ACCENT = color(c, "text_on_accent", ON_ACCENT);
        dark = luminance(BG) < 0.4;
    }

    public static int color(Context c, String name, int fallback) {
        try {
            int id = c.getResources().getIdentifier(name, "color", c.getPackageName());
            return id != 0 ? c.getResources().getColor(id) : fallback;
        } catch (Throwable t) {
            return fallback;
        }
    }

    public static int alpha(int color, int a) {
        return (color & 0x00FFFFFF) | ((Math.max(0, Math.min(255, a))) << 24);
    }

    public static int mix(int a, int b, float t) {
        int r = (int) (((a >> 16) & 0xFF) * (1 - t) + ((b >> 16) & 0xFF) * t);
        int g = (int) (((a >> 8) & 0xFF) * (1 - t) + ((b >> 8) & 0xFF) * t);
        int bl = (int) ((a & 0xFF) * (1 - t) + (b & 0xFF) * t);
        return 0xFF000000 | (r << 16) | (g << 8) | bl;
    }

    static double luminance(int c) {
        return (0.299 * ((c >> 16) & 0xFF) + 0.587 * ((c >> 8) & 0xFF) + 0.114 * (c & 0xFF)) / 255.0;
    }

    public static int dp(Context c, float v) {
        return Math.round(TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, v,
                c.getResources().getDisplayMetrics()));
    }

    // ================================================================ drawables

    public static GradientDrawable rounded(int fill, float radiusPx, int strokeColor, int strokePx) {
        GradientDrawable g = new GradientDrawable();
        g.setColor(fill);
        g.setCornerRadius(radiusPx);
        if (strokePx > 0) {
            g.setStroke(strokePx, strokeColor);
        }
        return g;
    }

    /** Background with a ripple in the text colour of the control. */
    public static Drawable ripple(Drawable content, int rippleColor, float radiusPx) {
        GradientDrawable mask = rounded(0xFFFFFFFF, radiusPx, 0, 0);
        return new RippleDrawable(ColorStateList.valueOf(alpha(rippleColor, 0x40)), content, mask);
    }

    // ================================================================ text

    public static TextView text(Context c, String s, float sp, int color, boolean bold) {
        TextView t = new TextView(c);
        t.setText(s);
        t.setTextSize(TypedValue.COMPLEX_UNIT_SP, sp);
        t.setTextColor(color);
        t.setIncludeFontPadding(false);
        if (bold) {
            t.setTypeface(Typeface.DEFAULT, Typeface.BOLD);
        }
        return t;
    }

    /** Small caps section label. */
    public static TextView label(Context c, String s) {
        TextView t = text(c, s, 11.5f, MUTED, true);
        t.setAllCaps(true);
        t.setLetterSpacing(0.08f);
        t.setPadding(0, 0, 0, dp(c, 8));
        return t;
    }

    // ================================================================ containers

    public static LinearLayout vertical(Context c) {
        LinearLayout l = new LinearLayout(c);
        l.setOrientation(LinearLayout.VERTICAL);
        return l;
    }

    public static LinearLayout horizontal(Context c) {
        LinearLayout l = new LinearLayout(c);
        l.setOrientation(LinearLayout.HORIZONTAL);
        l.setGravity(Gravity.CENTER_VERTICAL);
        return l;
    }

    /** App card: bg_card, 16dp corners, hairline. */
    public static LinearLayout card(Context c) {
        LinearLayout l = vertical(c);
        l.setBackgroundDrawable(rounded(CARD, dp(c, 16), STROKE, dp(c, 1)));
        l.setPadding(dp(c, 16), dp(c, 14), dp(c, 16), dp(c, 14));
        return l;
    }

    /** Inner surface (one level up from a card). */
    public static LinearLayout surface(Context c) {
        LinearLayout l = vertical(c);
        l.setBackgroundDrawable(rounded(SURFACE, dp(c, 14), alpha(STROKE, 0x88), dp(c, 1)));
        l.setPadding(dp(c, 14), dp(c, 12), dp(c, 14), dp(c, 12));
        return l;
    }

    public static LinearLayout.LayoutParams matchWrap(Context c, int topDp) {
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.topMargin = dp(c, topDp);
        return lp;
    }

    public static LinearLayout.LayoutParams weight(float w, int leftDp, Context c) {
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, w);
        lp.leftMargin = dp(c, leftDp);
        return lp;
    }

    public static View spacer(Context c) {
        View v = new View(c);
        v.setLayoutParams(new LinearLayout.LayoutParams(0, 1, 1f));
        return v;
    }

    // ================================================================ buttons

    public static TextView button(Context c, String label, int style) {
        TextView b = text(c, label, 16, TEXT, true);
        b.setGravity(Gravity.CENTER);
        b.setPadding(dp(c, 22), dp(c, 13), dp(c, 22), dp(c, 13));
        float r = dp(c, 26);
        Drawable bg;
        int fg;
        switch (style) {
            case PRIMARY:
                bg = gradient(GO, mix(GO, 0xFF000000, 0.18f), r);
                fg = 0xFFFFFFFF;
                break;
            case ACCENT_BTN:
                bg = gradient(ACCENT, ACCENT_DARK, r);
                fg = ON_ACCENT;
                break;
            case GHOST:
                bg = new ColorDrawable(0x00000000);
                fg = MUTED;
                break;
            default:
                bg = rounded(SURFACE, r, STROKE, dp(c, 1));
                fg = TEXT;
                break;
        }
        b.setTextColor(fg);
        b.setBackgroundDrawable(ripple(bg, fg, r));
        pressable(b);
        return b;
    }

    private static GradientDrawable gradient(int top, int bottom, float r) {
        GradientDrawable g = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[] {top, bottom});
        g.setCornerRadius(r);
        return g;
    }

    /** Round icon button (glyph), e.g. ✕ / i / ▶. */
    public static TextView iconButton(Context c, String glyph, int fill, int fg, int sizeDp) {
        TextView b = text(c, glyph, sizeDp * 0.42f, fg, true);
        b.setGravity(Gravity.CENTER);
        GradientDrawable g = new GradientDrawable();
        g.setShape(GradientDrawable.OVAL);
        g.setColor(fill);
        if (fill == SURFACE || fill == CARD) {
            g.setStroke(dp(c, 1), STROKE);
        }
        b.setBackgroundDrawable(ripple(g, fg, dp(c, sizeDp)));
        b.setLayoutParams(new LinearLayout.LayoutParams(dp(c, sizeDp), dp(c, sizeDp)));
        pressable(b);
        return b;
    }

    /** Selectable chip; selected = tinted in {@code tint} with its colour for the text. */
    public static TextView chip(Context c, String label, boolean selected, int tint) {
        TextView t = text(c, label, 14, selected ? tint : TEXT, selected);
        t.setGravity(Gravity.CENTER);
        t.setPadding(dp(c, 14), dp(c, 9), dp(c, 14), dp(c, 9));
        float r = dp(c, 18);
        GradientDrawable g = selected
                ? rounded(alpha(tint, 0x2A), r, alpha(tint, 0xCC), dp(c, 1.5f))
                : rounded(SURFACE, r, STROKE, dp(c, 1));
        t.setBackgroundDrawable(ripple(g, selected ? tint : TEXT, r));
        pressable(t);
        return t;
    }

    /** Wrapping-free chip strip that scrolls horizontally when it does not fit. */
    public static HorizontalScrollView chipRow(Context c, LinearLayout[] holder) {
        HorizontalScrollView hs = new HorizontalScrollView(c);
        hs.setHorizontalScrollBarEnabled(false);
        hs.setOverScrollMode(View.OVER_SCROLL_NEVER);
        LinearLayout row = horizontal(c);
        hs.addView(row);
        holder[0] = row;
        return hs;
    }

    public static void addChip(Context c, LinearLayout row, View chip) {
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.rightMargin = dp(c, 8);
        row.addView(chip, lp);
    }

    /** Segmented control as in the app's tab bar: selected = red pill. */
    public static LinearLayout segmented(Context c, String[] labels, int selected, final OnIndex cb) {
        LinearLayout row = horizontal(c);
        row.setBackgroundDrawable(rounded(SURFACE, dp(c, 22), STROKE, dp(c, 1)));
        row.setPadding(dp(c, 4), dp(c, 4), dp(c, 4), dp(c, 4));
        for (int i = 0; i < labels.length; i++) {
            final int idx = i;
            boolean sel = i == selected;
            TextView t = text(c, labels[i], 15, sel ? ON_ACCENT : TEXT, sel);
            t.setGravity(Gravity.CENTER);
            t.setPadding(dp(c, 12), dp(c, 11), dp(c, 12), dp(c, 11));
            float r = dp(c, 19);
            Drawable bg = sel ? gradient(ACCENT, ACCENT_DARK, r) : new ColorDrawable(0x00000000);
            t.setBackgroundDrawable(ripple(bg, sel ? ON_ACCENT : TEXT, r));
            t.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    haptic(v);
                    cb.onIndex(idx);
                }
            });
            row.addView(t, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        }
        return row;
    }

    /** Big value with round − / + on both sides; holding repeats (accelerating). */
    public static final class Stepper {
        public final LinearLayout view;
        public final TextView value;
        public final TextView unit;

        Stepper(LinearLayout view, TextView value, TextView unit) {
            this.view = view;
            this.value = value;
            this.unit = unit;
        }

        public void set(String v, String u) {
            value.setText(v);
            unit.setText(u != null ? u : "");
            unit.setVisibility(u != null && u.length() > 0 ? View.VISIBLE : View.GONE);
        }
    }

    public static Stepper stepper(Context c, String valueText, String unitText, float valueSp, OnStep cb) {
        LinearLayout row = horizontal(c);
        row.setBackgroundDrawable(rounded(SURFACE, dp(c, 30), STROKE, dp(c, 1)));
        row.setPadding(dp(c, 5), dp(c, 5), dp(c, 5), dp(c, 5));
        TextView minus = iconButton(c, "−", CARD, TEXT, 44);
        TextView plus = iconButton(c, "+", CARD, TEXT, 44);
        repeatOnHold(minus, cb, -1);
        repeatOnHold(plus, cb, +1);
        LinearLayout mid = vertical(c);
        mid.setGravity(Gravity.CENTER);
        TextView v = text(c, valueText, valueSp, TEXT, true);
        v.setGravity(Gravity.CENTER);
        TextView u = text(c, unitText != null ? unitText : "", 11.5f, MUTED, false);
        u.setGravity(Gravity.CENTER);
        u.setPadding(0, dp(c, 3), 0, 0);
        mid.addView(v);
        mid.addView(u);
        row.addView(minus);
        row.addView(mid, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        row.addView(plus);
        Stepper s = new Stepper(row, v, u);
        s.set(valueText, unitText);
        return s;
    }

    /** Tap = one step; hold = repeat, faster the longer it is held. */
    public static void repeatOnHold(final View v, final OnStep cb, final int dir) {
        if (cb == null) {
            return;                 // caller wires the steps itself
        }
        v.setOnTouchListener(new View.OnTouchListener() {
            private int count;
            private final Runnable repeat = new Runnable() {
                @Override
                public void run() {
                    count++;
                    cb.onStep(dir);
                    handler.postDelayed(this, count < 6 ? 140 : count < 20 ? 70 : 35);
                }
            };

            @Override
            public boolean onTouch(View view, MotionEvent e) {
                switch (e.getActionMasked()) {
                    case MotionEvent.ACTION_DOWN:
                        count = 0;
                        view.setPressed(true);
                        view.animate().scaleX(0.9f).scaleY(0.9f).setDuration(70).start();
                        haptic(view);
                        cb.onStep(dir);
                        handler.postDelayed(repeat, 420);
                        return true;
                    case MotionEvent.ACTION_UP:
                    case MotionEvent.ACTION_CANCEL:
                        view.setPressed(false);
                        view.animate().scaleX(1f).scaleY(1f).setDuration(120).start();
                        handler.removeCallbacks(repeat);
                        return true;
                    default:
                        return true;
                }
            }
        });
    }

    /** Title + subtitle on the left, pill switch on the right; whole row toggles. */
    public static LinearLayout toggleRow(Context c, String title, String subtitle, boolean on, final OnToggle cb) {
        final LinearLayout row = horizontal(c);
        row.setPadding(0, dp(c, 6), 0, dp(c, 6));
        LinearLayout texts = vertical(c);
        texts.addView(text(c, title, 15, TEXT, true));
        if (subtitle != null && subtitle.length() > 0) {
            TextView s = text(c, subtitle, 12.5f, MUTED, false);
            s.setPadding(0, dp(c, 3), 0, 0);
            texts.addView(s);
        }
        row.addView(texts, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        final View sw = switchView(c, on);
        row.addView(sw);
        final boolean[] state = {on};
        row.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                state[0] = !state[0];
                styleSwitch(sw, state[0]);
                haptic(v);
                cb.onToggle(state[0]);
            }
        });
        return row;
    }

    private static View switchView(Context c, boolean on) {
        FrameLayout track = new FrameLayout(c);
        View knob = new View(c);
        GradientDrawable k = new GradientDrawable();
        k.setShape(GradientDrawable.OVAL);
        k.setColor(0xFFFFFFFF);
        knob.setBackgroundDrawable(k);
        FrameLayout.LayoutParams kl = new FrameLayout.LayoutParams(dp(c, 24), dp(c, 24));
        kl.gravity = Gravity.CENTER_VERTICAL;
        track.addView(knob, kl);
        track.setLayoutParams(new LinearLayout.LayoutParams(dp(c, 52), dp(c, 30)));
        track.setPadding(dp(c, 3), 0, dp(c, 3), 0);
        styleSwitch(track, on);
        return track;
    }

    private static void styleSwitch(View track, boolean on) {
        Context c = track.getContext();
        track.setBackgroundDrawable(rounded(on ? GO : alpha(TEXT, 0x30), dp(c, 15), 0, 0));
        View knob = ((FrameLayout) track).getChildAt(0);
        FrameLayout.LayoutParams kl = (FrameLayout.LayoutParams) knob.getLayoutParams();
        kl.gravity = Gravity.CENTER_VERTICAL | (on ? Gravity.END : Gravity.START);
        knob.setLayoutParams(kl);
    }

    /** Small coloured status badge. */
    public static TextView badge(Context c, String s, int color) {
        TextView t = text(c, s, 12.5f, color, true);
        t.setPadding(dp(c, 11), dp(c, 5), dp(c, 11), dp(c, 5));
        t.setBackgroundDrawable(rounded(alpha(color, 0x26), dp(c, 12), alpha(color, 0x77), dp(c, 1)));
        return t;
    }

    public static void setBadge(TextView t, String s, int color) {
        Context c = t.getContext();
        t.setText(s);
        t.setTextColor(color);
        t.setBackgroundDrawable(rounded(alpha(color, 0x26), dp(c, 12), alpha(color, 0x77), dp(c, 1)));
    }

    // ================================================================ feedback

    /** Short scale on press (does not consume the touch). */
    public static void pressable(View v) {
        v.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public boolean onTouch(View view, MotionEvent e) {
                int a = e.getActionMasked();
                if (a == MotionEvent.ACTION_DOWN) {
                    view.animate().scaleX(0.96f).scaleY(0.96f).setDuration(70).start();
                } else if (a == MotionEvent.ACTION_UP || a == MotionEvent.ACTION_CANCEL) {
                    view.animate().scaleX(1f).scaleY(1f).setDuration(120).start();
                }
                return false;
            }
        });
    }

    public static void haptic(View v) {
        try {
            v.performHapticFeedback(HapticFeedbackConstants.VIRTUAL_KEY);
        } catch (Throwable ignored) {
        }
    }

    /** Fade + rise when content is (re)built. */
    public static void enter(View v) {
        v.setAlpha(0f);
        v.setTranslationY(dp(v.getContext(), 8));
        v.animate().alpha(1f).translationY(0).setDuration(180).start();
    }

    // ================================================================ dialog shell

    /** A themed modal: header (title, subtitle, badge, i, ✕), scrolling body, fixed footer. */
    public static final class Shell {
        public Dialog dialog;
        public TextView title;
        public TextView subtitle;
        public TextView badge;
        public TextView info;
        public TextView close;
        public LinearLayout body;
        public LinearLayout footer;
        public ScrollView scroll;
    }

    public static Shell shell(Activity a, String title, String subtitle, int widthDp) {
        init(a);
        final Shell s = new Shell();
        s.dialog = new Dialog(a);
        s.dialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
        LinearLayout root = vertical(a);
        root.setBackgroundDrawable(rounded(CARD, dp(a, 22), STROKE, dp(a, 1)));

        LinearLayout header = horizontal(a);
        header.setPadding(dp(a, 22), dp(a, 18), dp(a, 14), dp(a, 10));
        LinearLayout titles = vertical(a);
        s.title = text(a, title, 21, TEXT, true);
        s.subtitle = text(a, subtitle != null ? subtitle : "", 13, MUTED, false);
        s.subtitle.setPadding(0, dp(a, 4), 0, 0);
        s.subtitle.setVisibility(subtitle != null && subtitle.length() > 0 ? View.VISIBLE : View.GONE);
        titles.addView(s.title);
        titles.addView(s.subtitle);
        header.addView(titles, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        s.badge = badge(a, "", GO_TEXT);
        s.badge.setVisibility(View.GONE);
        header.addView(s.badge);
        s.info = iconButton(a, "i", SURFACE, TEXT, 36);
        LinearLayout.LayoutParams il = new LinearLayout.LayoutParams(dp(a, 36), dp(a, 36));
        il.leftMargin = dp(a, 10);
        s.info.setVisibility(View.GONE);
        header.addView(s.info, il);
        s.close = iconButton(a, "✕", SURFACE, TEXT, 36);
        LinearLayout.LayoutParams cl = new LinearLayout.LayoutParams(dp(a, 36), dp(a, 36));
        cl.leftMargin = dp(a, 8);
        header.addView(s.close, cl);
        s.close.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                try {
                    s.dialog.dismiss();
                } catch (Throwable ignored) {
                }
            }
        });
        root.addView(header);

        s.scroll = new ScrollView(a);
        s.scroll.setVerticalScrollBarEnabled(false);
        s.scroll.setOverScrollMode(View.OVER_SCROLL_NEVER);
        s.body = vertical(a);
        s.body.setPadding(dp(a, 22), dp(a, 6), dp(a, 22), dp(a, 8));
        s.scroll.addView(s.body);
        root.addView(s.scroll, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));

        s.footer = horizontal(a);
        s.footer.setPadding(dp(a, 22), dp(a, 10), dp(a, 22), dp(a, 20));
        root.addView(s.footer);

        s.dialog.setContentView(root);
        Window w = s.dialog.getWindow();
        if (w != null) {
            w.setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));
            android.util.DisplayMetrics dm = a.getResources().getDisplayMetrics();
            int width = Math.min(dp(a, widthDp), (int) (dm.widthPixels * 0.94f));
            w.setLayout(width, ViewGroup.LayoutParams.WRAP_CONTENT);
            WindowManager.LayoutParams lp = w.getAttributes();
            lp.dimAmount = 0.6f;
            w.setAttributes(lp);
            w.addFlags(WindowManager.LayoutParams.FLAG_DIM_BEHIND);
        }
        return s;
    }

    /** Cap the dialog height (body scrolls) once content is known. */
    public static void fitHeight(Activity a, Shell s, float screenShare) {
        Window w = s.dialog.getWindow();
        if (w == null) {
            return;
        }
        android.util.DisplayMetrics dm = a.getResources().getDisplayMetrics();
        int max = (int) (dm.heightPixels * screenShare);
        View root = (View) s.body.getParent().getParent();
        int width = w.getAttributes().width > 0 ? w.getAttributes().width : dp(a, 520);
        root.measure(View.MeasureSpec.makeMeasureSpec(width, View.MeasureSpec.EXACTLY),
                View.MeasureSpec.makeMeasureSpec(0, View.MeasureSpec.UNSPECIFIED));
        int h = root.getMeasuredHeight();
        w.setLayout(width, h > max ? max : ViewGroup.LayoutParams.WRAP_CONTENT);
    }
}
