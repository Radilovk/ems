package com.isaigu.gymapp.widget;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Looper;
import android.text.InputType;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.inputmethod.EditorInfo;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

import com.isaigu.gymapp.BaseActivity;
import com.isaigu.gymapp.bean.Gender;
import com.isaigu.gymapp.bean.TrainUser;

import java.util.Calendar;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * New / edit client form — one screen, mostly taps: name, sex, age / height / weight steppers,
 * phone; goal, fitness and contraindications as in the AI session. Replaces the app's
 * EditUserPersonalDataDialog (UserFragment "+" and a user's row).
 *
 * <p>Goal, fitness and contraindications are kept per client ({@link #PREFS}, key u&lt;id&gt;)
 * and summed up in the client's remark.
 */
public final class XemsLocalUserForm {
    static final String PREFS = "xems_user_profiles";

    // Colours (the app is dark).
    private static final int BG = 0xFF121418;
    private static final int CARD = 0xFF1C1F26;
    private static final int STROKE = 0xFF2C313B;
    private static final int TEXT = 0xFFECEFF4;
    private static final int MUTED = 0xFF98A1B0;
    private static final int ACCENT = 0xFF43A047;
    private static final int ACCENT_TEXT = 0xFFFFFFFF;
    private static final int WARN = 0xFFFFB74D;
    private static final int DANGER = 0xFFE53935;

    static final String[] GOALS = {"tone", "fat", "massage", "drain", "cellulite"};
    static final String[] FITNESS = {"low", "mid", "high"};
    /** Same keys as AiScreening.CONTRAINDICATIONS. */
    static final String[] CONTRA = {
            "pregnancy", "implant", "cardiovascular", "circulation", "hernia", "cancer", "bleeding",
            "epilepsy", "neurological", "recent_surgery", "skin_lesion", "kidney", "tuberculosis",
    };

    private XemsLocalUserForm() {}

    /** UserFragment "+" (user == null) and a user's row (edit). */
    public static void show(final Activity a, Object userObj) {
        try {
            if (a == null) {
                return;
            }
            final TrainUser user = userObj instanceof TrainUser ? (TrainUser) userObj : null;
            new Form(a, user).open();
        } catch (Throwable t) {
            android.util.Log.e("xems_form", "show", t);
        }
    }

    // ================================================================ the form

    private static final class Form {
        final Activity a;
        final TrainUser editing;
        final Dialog dialog;

        EditText name;
        EditText phone;
        Gender sex = Gender.Male;
        final int[] age = {35};
        final int[] height = {170};
        final int[] weight = {70};
        String goal = "tone";
        String fitness = "mid";
        final Set<String> contra = new HashSet<String>();
        TextView warning;
        final LinearLayout[] sexRow = new LinearLayout[1];
        final LinearLayout[] goalRow = new LinearLayout[1];
        final LinearLayout[] fitRow = new LinearLayout[1];

        Form(Activity a, TrainUser editing) {
            this.a = a;
            this.editing = editing;
            this.dialog = new Dialog(a, android.R.style.Theme_Black_NoTitleBar_Fullscreen);
            if (editing != null) {
                load(editing);
            }
        }

        void load(TrainUser u) {
            if (u.gender != null) {
                sex = u.gender;
            }
            if (u.birtyday != null) {
                age[0] = clamp(yearsSince(u.birtyday), 10, 99);
            }
            if (u.height > 0) {
                height[0] = u.height;
            }
            if (u.weight > 0) {
                weight[0] = Math.round(u.weight);
            }
            String saved = prefs(a).getString("u" + u.id, "");
            String[] parts = saved.split("\\|", -1);
            if (parts.length >= 3) {
                goal = parts[0].length() > 0 ? parts[0] : goal;
                fitness = parts[1].length() > 0 ? parts[1] : fitness;
                for (String c : parts[2].split(",")) {
                    if (c.length() > 0) {
                        contra.add(c);
                    }
                }
            }
        }

        void open() {
            LinearLayout page = new LinearLayout(a);
            page.setOrientation(LinearLayout.VERTICAL);
            page.setBackgroundColor(BG);

            // Header: title + Cancel / Save.
            LinearLayout head = new LinearLayout(a);
            head.setOrientation(LinearLayout.HORIZONTAL);
            head.setGravity(Gravity.CENTER_VERTICAL);
            head.setPadding(dp(24), dp(14), dp(24), dp(14));
            TextView title = text(editing == null ? tr("Нов клиент", "New client") : tr("Клиент", "Client"), 24, TEXT, true);
            head.addView(title, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            TextView cancel = button(tr("Отказ", "Cancel"), false);
            cancel.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    dialog.dismiss();
                }
            });
            head.addView(cancel, wrap(0, 0));
            TextView save = button(tr("Запази", "Save"), true);
            save.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    save();
                }
            });
            head.addView(save, wrap(dp(12), 0));
            page.addView(head);

            // Two columns (tablet, landscape).
            LinearLayout cols = new LinearLayout(a);
            cols.setOrientation(LinearLayout.HORIZONTAL);
            cols.setPadding(dp(16), 0, dp(16), dp(16));
            cols.addView(scroll(leftColumn()), new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1f));
            LinearLayout.LayoutParams rp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1f);
            rp.leftMargin = dp(16);
            cols.addView(scroll(rightColumn()), rp);
            page.addView(cols, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));

            dialog.setContentView(page);
            dialog.getWindow().setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_ADJUST_RESIZE
                    | (editing == null ? WindowManager.LayoutParams.SOFT_INPUT_STATE_VISIBLE
                    : WindowManager.LayoutParams.SOFT_INPUT_STATE_HIDDEN));
            dialog.show();
            if (editing == null) {
                name.requestFocus();
            }
        }

        View leftColumn() {
            LinearLayout col = column();
            LinearLayout c1 = card(col, tr("Име", "Name"));
            name = input(tr("Име и фамилия", "Full name"), InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_FLAG_CAP_WORDS);
            if (editing != null && editing.name != null) {
                name.setText(editing.name);
            }
            c1.addView(name, match(0));

            LinearLayout c2 = card(col, tr("Пол", "Sex"));
            sexRow[0] = chips(c2);
            renderSex();

            LinearLayout c3 = card(col, tr("Възраст · ръст · тегло", "Age · height · weight"));
            c3.addView(stepper(tr("Възраст", "Age"), tr("г.", "y"), age, 10, 99, 1), match(0));
            c3.addView(stepper(tr("Ръст", "Height"), "cm", height, 100, 230, 1), match(dp(10)));
            c3.addView(stepper(tr("Тегло", "Weight"), "kg", weight, 30, 200, 1), match(dp(10)));

            LinearLayout c4 = card(col, tr("Телефон (по желание)", "Phone (optional)"));
            phone = input("+359 …", InputType.TYPE_CLASS_PHONE);
            phone.setImeOptions(EditorInfo.IME_ACTION_DONE);
            if (editing != null && editing.phone != null) {
                phone.setText(editing.phone);
            }
            c4.addView(phone, match(0));
            return col;
        }

        View rightColumn() {
            LinearLayout col = column();
            LinearLayout c1 = card(col, tr("Цел", "Goal"));
            goalRow[0] = chips(c1);
            renderGoal();

            LinearLayout c2 = card(col, tr("Физическа форма", "Fitness"));
            fitRow[0] = chips(c2);
            renderFitness();

            LinearLayout c3 = card(col, tr("Противопоказания", "Contraindications"));
            TextView hint = text(tr("Отбележи, ако има. EMS не се препоръчва при нито едно от тях.",
                    "Mark any that apply. EMS is not advised with any of them."), 13, MUTED, false);
            c3.addView(hint, match(0));
            warning = text("", 14, DANGER, true);
            warning.setVisibility(View.GONE);
            c3.addView(warning, match(dp(8)));
            LinearLayout grid = new LinearLayout(a);
            grid.setOrientation(LinearLayout.VERTICAL);
            for (int i = 0; i < CONTRA.length; i += 2) {
                LinearLayout row = new LinearLayout(a);
                row.setOrientation(LinearLayout.HORIZONTAL);
                for (int j = i; j < Math.min(i + 2, CONTRA.length); j++) {
                    row.addView(contraChip(CONTRA[j]), new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
                    if (j == i) {
                        View gap = new View(a);
                        row.addView(gap, new LinearLayout.LayoutParams(dp(8), 1));
                    }
                }
                grid.addView(row, match(dp(8)));
            }
            c3.addView(grid, match(dp(4)));
            updateWarning();
            return col;
        }

        // ------------------------------------------------ choices

        void renderSex() {
            LinearLayout row = sexRow[0];
            row.removeAllViews();
            addChoice(row, tr("Мъж", "Male"), sex == Gender.Male, new Runnable() {
                public void run() {
                    sex = Gender.Male;
                    renderSex();
                }
            });
            addChoice(row, tr("Жена", "Female"), sex == Gender.Female, new Runnable() {
                public void run() {
                    sex = Gender.Female;
                    renderSex();
                }
            });
        }

        void renderGoal() {
            LinearLayout row = goalRow[0];
            row.removeAllViews();
            for (final String g : GOALS) {
                addChoice(row, goalName(g), g.equals(goal), new Runnable() {
                    public void run() {
                        goal = g;
                        renderGoal();
                    }
                });
            }
        }

        void renderFitness() {
            LinearLayout row = fitRow[0];
            row.removeAllViews();
            for (final String f : FITNESS) {
                addChoice(row, fitnessName(f), f.equals(fitness), new Runnable() {
                    public void run() {
                        fitness = f;
                        renderFitness();
                    }
                });
            }
        }

        View contraChip(final String key) {
            final TextView chip = text(contraName(key), 14, TEXT, false);
            chip.setPadding(dp(12), dp(10), dp(12), dp(10));
            styleContra(chip, contra.contains(key));
            chip.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    if (!contra.remove(key)) {
                        contra.add(key);
                    }
                    styleContra(chip, contra.contains(key));
                    updateWarning();
                }
            });
            return chip;
        }

        void styleContra(TextView chip, boolean on) {
            chip.setBackground(round(on ? 0x33E53935 : CARD, on ? DANGER : STROKE));
            chip.setTextColor(on ? 0xFFFF8A80 : TEXT);
        }

        void updateWarning() {
            if (warning == null) {
                return;
            }
            if (contra.isEmpty()) {
                warning.setVisibility(View.GONE);
            } else {
                warning.setText(tr("⚠ Има противопоказание — EMS не се препоръчва без лекар.",
                        "⚠ Contraindication — no EMS without a doctor's approval."));
                warning.setVisibility(View.VISIBLE);
            }
        }

        // ------------------------------------------------ save

        void save() {
            String n = name.getText().toString().trim();
            if (n.length() == 0) {
                name.setError(tr("Въведи име", "Enter a name"));
                name.requestFocus();
                return;
            }
            TrainUser u = editing != null ? editing : new TrainUser();
            u.name = n;
            if (TextUtils.isEmpty(u.nickName)) {
                u.nickName = n;
            }
            u.gender = sex;
            u.height = height[0];
            u.weight = weight[0];
            Calendar cal = Calendar.getInstance();
            cal.add(Calendar.YEAR, -age[0]);
            u.birtyday = cal.getTime();
            String p = phone.getText().toString().trim();
            u.phone = p.length() > 0 ? p : u.phone;
            u.remark = summary();
            XemsLocalStore.saveUser((BaseActivity) a, u, editing != null);
            StringBuilder cs = new StringBuilder();
            for (String c : CONTRA) {
                if (contra.contains(c)) {
                    if (cs.length() > 0) {
                        cs.append(',');
                    }
                    cs.append(c);
                }
            }
            prefs(a).edit().putString("u" + u.id, goal + "|" + fitness + "|" + cs).apply();
            dialog.dismiss();
        }

        String summary() {
            StringBuilder b = new StringBuilder();
            b.append(tr("Цел: ", "Goal: ")).append(goalName(goal))
                    .append(" · ").append(tr("Форма: ", "Fitness: ")).append(fitnessName(fitness));
            if (!contra.isEmpty()) {
                b.append(" · ").append(tr("Противопоказания: ", "Contraindications: "));
                boolean first = true;
                for (String c : CONTRA) {
                    if (contra.contains(c)) {
                        b.append(first ? "" : ", ").append(contraName(c));
                        first = false;
                    }
                }
            }
            return b.toString();
        }

        // ------------------------------------------------ widgets

        LinearLayout column() {
            LinearLayout col = new LinearLayout(a);
            col.setOrientation(LinearLayout.VERTICAL);
            return col;
        }

        ScrollView scroll(View content) {
            ScrollView s = new ScrollView(a);
            s.setFillViewport(true);
            s.addView(content);
            return s;
        }

        LinearLayout card(LinearLayout col, String label) {
            LinearLayout c = new LinearLayout(a);
            c.setOrientation(LinearLayout.VERTICAL);
            c.setPadding(dp(18), dp(14), dp(18), dp(16));
            c.setBackground(round(CARD, STROKE));
            TextView l = text(label.toUpperCase(), 12, MUTED, true);
            l.setLetterSpacing(0.08f);
            c.addView(l, match(0));
            col.addView(c, match(col.getChildCount() == 0 ? 0 : dp(12)));
            return c;
        }

        LinearLayout chips(LinearLayout card) {
            LinearLayout row = new LinearLayout(a);
            row.setOrientation(LinearLayout.HORIZONTAL);
            card.addView(row, match(dp(10)));
            return row;
        }

        void addChoice(LinearLayout row, String label, boolean on, final Runnable pick) {
            TextView chip = text(label, 16, on ? ACCENT_TEXT : TEXT, on);
            chip.setGravity(Gravity.CENTER);
            chip.setPadding(dp(8), dp(12), dp(8), dp(12));
            chip.setBackground(round(on ? ACCENT : BG, on ? ACCENT : STROKE));
            chip.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    pick.run();
                }
            });
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
            if (row.getChildCount() > 0) {
                lp.leftMargin = dp(8);
            }
            row.addView(chip, lp);
        }

        /** [−]  value unit  [+] ; hold a button to run. */
        View stepper(String label, final String unit, final int[] value, final int min, final int max, final int step) {
            LinearLayout row = new LinearLayout(a);
            row.setOrientation(LinearLayout.HORIZONTAL);
            row.setGravity(Gravity.CENTER_VERTICAL);
            row.addView(text(label, 16, TEXT, false), new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            final TextView val = text(value[0] + " " + unit, 20, TEXT, true);
            val.setGravity(Gravity.CENTER);
            TextView minus = roundButton("−");
            TextView plus = roundButton("+");
            final Runnable refresh = new Runnable() {
                public void run() {
                    val.setText(value[0] + " " + unit);
                }
            };
            repeat(minus, new Runnable() {
                public void run() {
                    value[0] = clamp(value[0] - step, min, max);
                    refresh.run();
                }
            });
            repeat(plus, new Runnable() {
                public void run() {
                    value[0] = clamp(value[0] + step, min, max);
                    refresh.run();
                }
            });
            row.addView(minus, new LinearLayout.LayoutParams(dp(52), dp(52)));
            row.addView(val, new LinearLayout.LayoutParams(dp(110), ViewGroup.LayoutParams.WRAP_CONTENT));
            row.addView(plus, new LinearLayout.LayoutParams(dp(52), dp(52)));
            return row;
        }

        TextView roundButton(String s) {
            TextView b = text(s, 26, TEXT, true);
            b.setGravity(Gravity.CENTER);
            GradientDrawable d = new GradientDrawable();
            d.setShape(GradientDrawable.OVAL);
            d.setColor(BG);
            d.setStroke(dp(1), STROKE);
            b.setBackground(d);
            return b;
        }

        /** Tap = one step; hold = repeats, faster over time. */
        void repeat(final View v, final Runnable step) {
            final Handler h = new Handler(Looper.getMainLooper());
            final long[] delay = {400L};
            final Runnable tick = new Runnable() {
                public void run() {
                    step.run();
                    delay[0] = Math.max(40L, delay[0] - 60L);
                    h.postDelayed(this, delay[0]);
                }
            };
            v.setOnTouchListener(new View.OnTouchListener() {
                public boolean onTouch(View view, MotionEvent e) {
                    switch (e.getAction()) {
                        case MotionEvent.ACTION_DOWN:
                            view.setAlpha(0.6f);
                            step.run();
                            delay[0] = 400L;
                            h.postDelayed(tick, delay[0]);
                            return true;
                        case MotionEvent.ACTION_UP:
                        case MotionEvent.ACTION_CANCEL:
                            view.setAlpha(1f);
                            h.removeCallbacks(tick);
                            return true;
                        default:
                            return true;
                    }
                }
            });
        }

        EditText input(String hint, int type) {
            EditText e = new EditText(a);
            e.setHint(hint);
            e.setInputType(type);
            e.setSingleLine(true);
            e.setTextColor(TEXT);
            e.setHintTextColor(MUTED);
            e.setTextSize(TypedValue.COMPLEX_UNIT_SP, 20);
            e.setPadding(dp(14), dp(12), dp(14), dp(12));
            e.setBackground(round(BG, STROKE));
            return e;
        }

        TextView button(String label, boolean primary) {
            TextView b = text(label, 17, primary ? ACCENT_TEXT : TEXT, true);
            b.setGravity(Gravity.CENTER);
            b.setPadding(dp(24), dp(12), dp(24), dp(12));
            b.setBackground(round(primary ? ACCENT : CARD, primary ? ACCENT : STROKE));
            return b;
        }

        TextView text(String s, int sp, int color, boolean bold) {
            TextView t = new TextView(a);
            t.setText(s);
            t.setTextSize(TypedValue.COMPLEX_UNIT_SP, sp);
            t.setTextColor(color);
            if (bold) {
                t.setTypeface(Typeface.DEFAULT_BOLD);
            }
            return t;
        }

        GradientDrawable round(int fill, int stroke) {
            GradientDrawable d = new GradientDrawable();
            d.setColor(fill);
            d.setCornerRadius(dp(14));
            d.setStroke(dp(1), stroke);
            return d;
        }

        LinearLayout.LayoutParams match(int top) {
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            lp.topMargin = top;
            return lp;
        }

        LinearLayout.LayoutParams wrap(int left, int top) {
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            lp.leftMargin = left;
            lp.topMargin = top;
            return lp;
        }

        int dp(int v) {
            return (int) TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, v, a.getResources().getDisplayMetrics());
        }
    }

    // ================================================================ labels

    static String goalName(String g) {
        if ("fat".equals(g)) return tr("Отслабване", "Fat loss");
        if ("massage".equals(g)) return tr("Масаж", "Massage");
        if ("drain".equals(g)) return tr("Дренаж", "Drainage");
        if ("cellulite".equals(g)) return tr("Целулит", "Cellulite");
        return tr("Тонус", "Tone");
    }

    static String fitnessName(String f) {
        if ("low".equals(f)) return tr("Начинаещ", "Beginner");
        if ("high".equals(f)) return tr("Напреднал", "Advanced");
        return tr("Среден", "Intermediate");
    }

    static String contraName(String key) {
        if ("pregnancy".equals(key)) return tr("Бременност", "Pregnancy");
        if ("implant".equals(key)) return tr("Пейсмейкър / имплант", "Pacemaker / implant");
        if ("cardiovascular".equals(key)) return tr("Сърдечно-съдово", "Cardiovascular");
        if ("circulation".equals(key)) return tr("Тромбоза / артерии", "Thrombosis / arteries");
        if ("hernia".equals(key)) return tr("Херния", "Hernia");
        if ("cancer".equals(key)) return tr("Онкологично", "Cancer");
        if ("bleeding".equals(key)) return tr("Кръвосъсирване", "Bleeding disorder");
        if ("epilepsy".equals(key)) return tr("Епилепсия", "Epilepsy");
        if ("neurological".equals(key)) return tr("Неврологично", "Neurological");
        if ("recent_surgery".equals(key)) return tr("Скорошна операция", "Recent surgery");
        if ("skin_lesion".equals(key)) return tr("Рани под електродите", "Wounds under electrodes");
        if ("kidney".equals(key)) return tr("Бъбречно", "Kidney disease");
        if ("tuberculosis".equals(key)) return tr("Туберкулоза", "Tuberculosis");
        return key;
    }

    static int yearsSince(Date d) {
        Calendar then = Calendar.getInstance();
        then.setTime(d);
        Calendar now = Calendar.getInstance();
        int y = now.get(Calendar.YEAR) - then.get(Calendar.YEAR);
        if (now.get(Calendar.DAY_OF_YEAR) < then.get(Calendar.DAY_OF_YEAR)) {
            y--;
        }
        return y;
    }

    static int clamp(int v, int lo, int hi) {
        return v < lo ? lo : v > hi ? hi : v;
    }

    static SharedPreferences prefs(Context c) {
        return c.getApplicationContext().getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }

    static String tr(String bg, String en) {
        return XemsLang.isBg() ? bg : en;
    }
}
