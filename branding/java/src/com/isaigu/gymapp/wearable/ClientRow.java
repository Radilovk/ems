package com.isaigu.gymapp.wearable;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.text.InputType;
import android.text.TextUtils;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.isaigu.gymapp.ai.AiModel;
import com.isaigu.gymapp.ai.AiProfile;
import com.isaigu.gymapp.bean.TrainUser;
import com.isaigu.gymapp.widget.XemsGuard;
import com.isaigu.gymapp.widget.XemsIcon;
import com.isaigu.gymapp.widget.XemsLang;
import com.isaigu.gymapp.widget.XemsUi;

import org.json.JSONArray;
import org.json.JSONObject;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/**
 * One row of the client list (Потребители), made for the trainer's glance: photo, the two names, the goal,
 * then compact icon buttons — progress report, summary (with notes), the last 5 trainings — and ▶ start.
 * The stock columns (sex, registration, height, weight, program, records, order) are hidden: they are in the
 * summary. Called from QuickStart.bindRow on every bind (rows are recycled: the views are built once,
 * the client is read at tap time).
 */
public final class ClientRow {
    private static final String NAME_COL = "xems_row_name";
    private static final String GOAL = "xems_row_goal";
    private static final String ACTIONS = "xems_row_actions";
    private static final String NOTES = "xems_client_notes";

    private ClientRow() {}

    static String tr(String bg, String en) {
        return XemsLang.tr(bg, en);
    }

    /** The row as the trainer sees it; {@code start} is the ▶ button already in the row. */
    static void restyle(LinearLayout row, View start, TrainUser u) {
        try {
            Context c = row.getContext();
            XemsUi.init(c);
            int nameId = c.getResources().getIdentifier("username", "id", c.getPackageName());
            int iconId = c.getResources().getIdentifier("userIcon", "id", c.getPackageName());
            LinearLayout col = (LinearLayout) row.findViewWithTag(NAME_COL);
            if (col == null) {
                TextView name = nameId != 0 ? (TextView) row.findViewById(nameId) : null;
                if (name == null || name.getParent() != row) {
                    return;
                }
                int at = row.indexOfChild(name);
                row.removeView(name);
                col = XemsUi.vertical(c);
                col.setTag(NAME_COL);
                col.setGravity(Gravity.CENTER_VERTICAL);
                col.addView(name, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                        ViewGroup.LayoutParams.WRAP_CONTENT));
                TextView goal = XemsUi.text(c, "", 14, XemsUi.MUTED, false);
                goal.setTag(GOAL);
                goal.setPadding(0, XemsUi.dp(c, 4), 0, 0);
                col.addView(goal);
                LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
                lp.leftMargin = XemsUi.dp(c, 20);
                row.addView(col, at, lp);
                // everything else of the stock row is in the summary now
                for (int i = 0; i < row.getChildCount(); i++) {
                    View v = row.getChildAt(i);
                    if (v != col && v != start && v.getId() != iconId) {
                        v.setVisibility(View.GONE);
                    }
                }
                LinearLayout actions = XemsUi.horizontal(c);
                actions.setTag(ACTIONS);
                actions.setGravity(Gravity.CENTER_VERTICAL);
                actions.addView(icon(c, XemsIcon.CHART, XemsUi.GO_TEXT, tr("Прогрес", "Progress")));
                actions.addView(icon(c, XemsIcon.CARD, 0xFF64B5F6, tr("Резюме", "Summary")));
                actions.addView(icon(c, XemsIcon.HISTORY, XemsUi.AMBER, tr("Последни тренировки", "Last trainings")));
                row.addView(actions, row.indexOfChild(start));
                name.setSingleLine(false);
                name.setMaxLines(2);
                name.setEllipsize(TextUtils.TruncateAt.END);
                name.setTextSize(18);
                name.setTypeface(android.graphics.Typeface.DEFAULT_BOLD);
                name.setTextColor(XemsUi.TEXT);
            }
            TextView name = nameId != 0 ? (TextView) row.findViewById(nameId) : null;
            if (name != null) {
                ViewGroup.LayoutParams np = name.getLayoutParams();
                np.width = ViewGroup.LayoutParams.MATCH_PARENT;
                name.setLayoutParams(np);
                name.setText(twoNames(u));
            }
            TextView goal = (TextView) row.findViewWithTag(GOAL);
            if (goal != null) {
                String g = goalOf(u);
                goal.setText(g);
                goal.setVisibility(g.length() > 0 ? View.VISIBLE : View.GONE);
            }
            LinearLayout actions = (LinearLayout) row.findViewWithTag(ACTIONS);
            if (actions != null) {
                for (int i = 0; i < actions.getChildCount(); i++) {
                    actions.getChildAt(i).setOnClickListener(new Act(u, i));
                }
            }
        } catch (Throwable t) {
            XemsGuard.report("ClientRow.restyle", t);
        }
    }

    private static TextView icon(Context c, int kind, int tint, String what) {
        TextView b = XemsUi.iconButton(c, "", XemsUi.SURFACE, tint, 46);
        XemsIcon ic = new XemsIcon(kind, tint);
        int in = XemsUi.dp(c, 12);
        android.graphics.drawable.LayerDrawable ld = new android.graphics.drawable.LayerDrawable(
                new android.graphics.drawable.Drawable[] {b.getBackground(), ic});
        ld.setLayerInset(1, in, in, in, in);
        b.setBackgroundDrawable(ld);
        b.setContentDescription(what);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(XemsUi.dp(c, 46), XemsUi.dp(c, 46));
        lp.leftMargin = XemsUi.dp(c, 10);
        b.setLayoutParams(lp);
        return b;
    }

    /** First and last name (two words at most); the nickname when the name is empty. */
    static String twoNames(TrainUser u) {
        String n = u.name != null && u.name.trim().length() > 0 ? u.name.trim()
                : u.nickName != null ? u.nickName.trim() : "";
        String[] w = n.split("\\s+");
        return w.length > 2 ? w[0] + " " + w[w.length - 1] : n;
    }

    static String goalOf(TrainUser u) {
        AiProfile p = AiProfile.of(u);
        return p != null && p.goal != null ? goalName(p.goal) : "";
    }

    static String goalName(AiModel.Goal g) {
        switch (g) {
            case FAT: return tr("Отслабване", "Fat loss");
            case MASSAGE: return tr("Масаж", "Massage");
            case DRAIN: return tr("Дренаж", "Drainage");
            case CELLULITE: return tr("Целулит", "Cellulite");
            default: return tr("Тонус", "Tone");
        }
    }

    static final class Act implements View.OnClickListener {
        private final TrainUser u;
        private final int which;

        Act(TrainUser u, int which) {
            this.u = u;
            this.which = which;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            Activity a = QuickStart.activity(v.getContext());
            if (a == null) {
                return;
            }
            if (which == 0) {
                ReportScreen.open(a, u);
            } else if (which == 1) {
                summary(a, u);
            } else {
                last(a, u);
            }
        }
    }

    // ------------------------------------------------------------------ summary

    static void summary(Activity a, TrainUser u) {
        try {
            XemsUi.init(a);
            AiProfile p = AiProfile.of(u);
            XemsUi.Shell s = XemsUi.shell(a, twoNames(u), goalOf(u), 560);
            LinearLayout body = s.body;

            LinearLayout tiles = XemsUi.horizontal(a);
            String age = p != null && p.age != null ? p.age + "" : "—";
            String h = u.height > 0 ? u.height + tr(" см", " cm") : "—";
            String w = u.weight > 0 ? (u.weight == Math.round(u.weight) ? String.valueOf(Math.round(u.weight))
                    : String.format(Locale.US, "%.1f", u.weight)) + tr(" кг", " kg") : "—";
            String bmi = u.height > 0 && u.weight > 0
                    ? String.format(Locale.US, "%.1f", u.weight / Math.pow(u.height / 100.0, 2)) : "—";
            tile(a, tiles, tr("Възраст", "Age"), age, 0);
            tile(a, tiles, tr("Ръст", "Height"), h, 8);
            tile(a, tiles, tr("Тегло", "Weight"), w, 8);
            tile(a, tiles, tr("ИТМ", "BMI"), bmi, 8);
            body.addView(tiles, XemsUi.matchWrap(a, 0));

            JSONArray list = sessions(a, u);
            LinearLayout tiles2 = XemsUi.horizontal(a);
            String sex = p != null && p.sex != null
                    ? (p.sex == AiModel.Sex.FEMALE ? tr("Жена", "Female") : tr("Мъж", "Male")) : "—";
            String fit = p != null && p.fitness != null ? fitnessName(p.fitness) : "—";
            long lastMs = list.length() > 0 ? list.optJSONObject(list.length() - 1).optLong("start") : 0;
            tile(a, tiles2, tr("Пол", "Sex"), sex, 0);
            tile(a, tiles2, tr("Форма", "Fitness"), fit, 8);
            tile(a, tiles2, tr("Тренировки", "Trainings"), String.valueOf(list.length()), 8);
            tile(a, tiles2, tr("Последна", "Last"), lastMs > 0 ? day(lastMs) : "—", 8);
            body.addView(tiles2, XemsUi.matchWrap(a, 8));
            appStatus(a, s, u, lastMs);

            if (p != null && (!p.focus.isEmpty() || !p.cond.isEmpty())) {
                StringBuilder b = new StringBuilder();
                for (String k : p.focus) {
                    b.append(b.length() > 0 ? " · " : "").append(NextPlan.focusName(k));
                }
                for (String k : p.cond) {
                    b.append(b.length() > 0 ? " · " : "").append(NextClient.condName(k));
                }
                body.addView(XemsUi.label(a, tr("Зони и състояние", "Zones and state")), XemsUi.matchWrap(a, 14));
                body.addView(XemsUi.text(a, b.toString(), 15, XemsUi.TEXT, false), XemsUi.matchWrap(a, 4));
            }
            if (p != null && !p.contraindications.isEmpty()) {
                body.addView(XemsUi.text(a, tr("⚠ Има противопоказание — виж картона на клиента.",
                        "⚠ A contraindication — see the client form."), 14, XemsUi.DANGER, true), XemsUi.matchWrap(a, 12));
            }

            body.addView(XemsUi.label(a, tr("Бележки", "Notes")), XemsUi.matchWrap(a, 16));
            EditText notes = new EditText(a);
            notes.setText(notes(a, u.id));
            notes.setHint(tr("Кратко за клиента: предпочитания, внимание, напомняния…",
                    "A few words: preferences, cautions, reminders…"));
            notes.setHintTextColor(XemsUi.HINT);
            notes.setTextColor(XemsUi.TEXT);
            notes.setTextSize(15);
            notes.setMinLines(3);
            notes.setGravity(Gravity.TOP | Gravity.START);
            notes.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_FLAG_MULTI_LINE
                    | InputType.TYPE_TEXT_FLAG_CAP_SENTENCES);
            int pd = XemsUi.dp(a, 12);
            notes.setPadding(pd, pd, pd, pd);
            notes.setBackgroundDrawable(XemsUi.rounded(XemsUi.SURFACE, XemsUi.dp(a, 12), XemsUi.STROKE, XemsUi.dp(a, 1)));
            body.addView(notes, XemsUi.matchWrap(a, 6));
            TextView save = XemsUi.button(a, tr("Запази бележката", "Save the note"), XemsUi.PRIMARY);
            save.setOnClickListener(new SaveNote(s, notes, u.id));
            body.addView(save, XemsUi.matchWrap(a, 10));
            s.dialog.show();
        } catch (Throwable t) {
            XemsGuard.report("ClientRow.summary", t);
        }
    }

    /**
     * Is the analysis in the client's app? ✓ with the time of the last upload, or what is missing (no e-mail /
     * phone, not uploaded after the last training) and one tap to send it now.
     */
    private static void appStatus(Activity a, XemsUi.Shell s, TrainUser u, long lastMs) {
        body(s).addView(XemsUi.label(a, tr("Приложението на клиента", "The client's app")), XemsUi.matchWrap(a, 14));
        String state = CardPublisher.state(a, u, lastMs);
        int color = state.startsWith("✓") ? XemsUi.GO_TEXT : state.startsWith("✗") ? XemsUi.DANGER : XemsUi.AMBER;
        body(s).addView(XemsUi.text(a, state, 15, color, true), XemsUi.matchWrap(a, 4));
        if (lastMs > 0 && ReportBridge.lookupFields(u).length() > 0 && !state.startsWith("✓")) {
            TextView up = XemsUi.button(a, tr("Качи сега", "Upload now"), XemsUi.PRIMARY);
            up.setOnClickListener(new Upload(s, u));
            body(s).addView(up, XemsUi.matchWrap(a, 8));
        }
        // the card and every report on the server — also those made on another tablet
        if (ReportBridge.lookupFields(u).length() > 0) {
            TextView open = XemsUi.button(a, tr("Картон и всички отчети  ↗", "Card and all reports  ↗"), XemsUi.SECONDARY);
            open.setOnClickListener(new OpenCard(a, u));
            body(s).addView(open, XemsUi.matchWrap(a, 8));
        }
    }

    /** Finds the client's card on the server by e-mail / phone (as the client's app does) and opens it here. */
    static final class OpenCard implements View.OnClickListener {
        private final Activity a;
        private final TrainUser u;

        OpenCard(Activity a, TrainUser u) {
            this.a = a;
            this.u = u;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            if (v instanceof TextView) {
                ((TextView) v).setText(tr("Търси се…", "Looking…"));
            }
            new Thread(new FindCard(a, u, v), "xems-card-find").start();
        }
    }

    static final class FindCard implements Runnable {
        private final Activity a;
        private final TrainUser u;
        private final View button;

        FindCard(Activity a, TrainUser u, View button) {
            this.a = a;
            this.u = u;
            this.button = button;
        }

        @Override
        public void run() {
            String url = null;
            try {
                String base = com.isaigu.gymapp.widget.XemsLicense.server();
                while (base.endsWith("/")) {
                    base = base.substring(0, base.length() - 1);
                }
                java.net.HttpURLConnection con = (java.net.HttpURLConnection) new java.net.URL(base + "/v1/card/find")
                        .openConnection();
                con.setConnectTimeout(12000);
                con.setReadTimeout(15000);
                con.setRequestMethod("POST");
                con.setDoOutput(true);
                con.setRequestProperty("Content-Type", "application/json; charset=utf-8");
                con.setRequestProperty("User-Agent", "XEMS-Android");
                String body = "{" + ReportBridge.lookupFields(u).substring(1) + "}";
                java.io.OutputStream out = con.getOutputStream();
                out.write(body.getBytes("UTF-8"));
                out.close();
                if (con.getResponseCode() == 200) {
                    java.io.InputStream in = con.getInputStream();
                    java.io.ByteArrayOutputStream buf = new java.io.ByteArrayOutputStream();
                    byte[] b = new byte[4096];
                    int n;
                    while ((n = in.read(b)) > 0) {
                        buf.write(b, 0, n);
                    }
                    in.close();
                    org.json.JSONObject o = new org.json.JSONObject(buf.toString("UTF-8"));
                    String found = o.optString("url", "");
                    if (o.optBoolean("ok") && found.startsWith("https://")) {
                        url = found;
                    }
                }
            } catch (Throwable t) {
                XemsGuard.report("ClientRow.findCard", t);
            }
            a.runOnUiThread(new Opened(a, u, url, button));
        }
    }

    static final class Opened implements Runnable {
        private final Activity a;
        private final TrainUser u;
        private final String url;
        private final View button;

        Opened(Activity a, TrainUser u, String url, View button) {
            this.a = a;
            this.u = u;
            this.url = url;
            this.button = button;
        }

        @Override
        public void run() {
            if (button instanceof TextView) {
                ((TextView) button).setText(tr("Картон и всички отчети  ↗", "Card and all reports  ↗"));
            }
            if (url == null) {
                android.widget.Toast.makeText(a, tr("На сървъра няма картон за този имейл / телефон (или няма връзка).",
                        "No card on the server for this e-mail / phone (or no connection)."), android.widget.Toast.LENGTH_LONG).show();
                return;
            }
            com.isaigu.gymapp.widget.XemsExercisePage.openUrl(a, u.name != null ? u.name : tr("Картон", "Card"), url);
        }
    }

    private static LinearLayout body(XemsUi.Shell s) {
        return s.body;
    }

    static final class Upload implements View.OnClickListener {
        private final XemsUi.Shell s;
        private final TrainUser u;

        Upload(XemsUi.Shell s, TrainUser u) {
            this.s = s;
            this.u = u;
        }

        @Override
        public void onClick(View v) {
            try {
                CardPublisher.force(v.getContext(), u);
                if (v instanceof TextView) {
                    ((TextView) v).setText(tr("Качва се… (≈ 20 s)", "Uploading… (≈ 20 s)"));
                }
                v.setEnabled(false);
            } catch (Throwable t) {
                XemsGuard.report("ClientRow.upload", t);
            }
        }
    }

    private static void tile(Context c, LinearLayout row, String label, String value, int leftDp) {
        LinearLayout t = XemsUi.surface(c);
        t.setGravity(Gravity.CENTER);
        TextView v = XemsUi.text(c, value, 18, XemsUi.TEXT, true);
        v.setGravity(Gravity.CENTER);
        TextView l = XemsUi.text(c, label, 12, XemsUi.MUTED, false);
        l.setGravity(Gravity.CENTER);
        t.addView(v);
        t.addView(l);
        row.addView(t, XemsUi.weight(1f, leftDp, c));
    }

    static String fitnessName(AiModel.Fitness f) {
        switch (f) {
            case LOW: return tr("Начинаещ", "Beginner");
            case HIGH: return tr("Напреднал", "Advanced");
            default: return tr("Среден", "Intermediate");
        }
    }

    static SharedPreferences prefs(Context c) {
        return c.getApplicationContext().getSharedPreferences(NOTES, Context.MODE_PRIVATE);
    }

    static String notes(Context c, long userId) {
        return prefs(c).getString("u" + userId, "");
    }

    static final class SaveNote implements View.OnClickListener {
        private final XemsUi.Shell s;
        private final EditText field;
        private final long userId;

        SaveNote(XemsUi.Shell s, EditText field, long userId) {
            this.s = s;
            this.field = field;
            this.userId = userId;
        }

        @Override
        public void onClick(View v) {
            prefs(v.getContext()).edit().putString("u" + userId, field.getText().toString().trim()).apply();
            XemsUi.haptic(v);
            android.widget.Toast.makeText(v.getContext(), tr("Бележката е записана ✓", "Note saved ✓"),
                    android.widget.Toast.LENGTH_SHORT).show();
            try {
                s.dialog.dismiss();
            } catch (Throwable ignored) {
            }
        }
    }

    // ------------------------------------------------------------------ the last 5 trainings

    static JSONArray sessions(Context c, TrainUser u) {
        try {
            return new JSONArray(SessionStore.listFor(c, u.id));
        } catch (Throwable t) {
            return new JSONArray();
        }
    }

    static void last(Activity a, TrainUser u) {
        try {
            XemsUi.init(a);
            JSONArray list = sessions(a, u);
            XemsUi.Shell s = XemsUi.shell(a, tr("Последни тренировки", "Last trainings"), twoNames(u), 520);
            if (list.length() == 0) {
                s.body.addView(XemsUi.text(a, tr("Още няма записани тренировки.", "No trainings recorded yet."),
                        15, XemsUi.MUTED, false));
            }
            int shown = 0;
            for (int i = list.length() - 1; i >= 0 && shown < 5; i--, shown++) {
                JSONObject o = list.optJSONObject(i);
                if (o == null) {
                    continue;
                }
                LinearLayout r = XemsUi.surface(a);
                r.setOrientation(LinearLayout.HORIZONTAL);
                r.setGravity(Gravity.CENTER_VERTICAL);
                LinearLayout txt = XemsUi.vertical(a);
                txt.addView(XemsUi.text(a, day(o.optLong("start")) + "  ·  " + hm(o.optLong("start")), 16, XemsUi.TEXT, true));
                int min = Math.round(o.optInt("activeS") / 60f);
                String prog = o.optString("program", "");
                String line = min + tr(" мин", " min") + (prog.length() > 0 ? "  ·  " + prog : "")
                        + (o.optInt("hrAvg") > 0 ? "  ·  ♥ " + o.optInt("hrAvg") : "");
                txt.addView(XemsUi.text(a, line, 13, XemsUi.MUTED, false));
                r.addView(txt, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
                r.addView(XemsUi.text(a, "›", 22, XemsUi.MUTED, true));
                r.setOnClickListener(new OpenReport(s, u, o.optLong("id")));
                XemsUi.pressable(r);
                s.body.addView(r, XemsUi.matchWrap(a, shown == 0 ? 0 : 8));
            }
            s.dialog.show();
        } catch (Throwable t) {
            XemsGuard.report("ClientRow.last", t);
        }
    }

    static final class OpenReport implements View.OnClickListener {
        private final XemsUi.Shell s;
        private final TrainUser u;
        private final long id;

        OpenReport(XemsUi.Shell s, TrainUser u, long id) {
            this.s = s;
            this.u = u;
            this.id = id;
        }

        @Override
        public void onClick(View v) {
            Activity a = QuickStart.activity(v.getContext());
            try {
                s.dialog.dismiss();
            } catch (Throwable ignored) {
            }
            if (a != null) {
                ReportScreen.open(a, u, id);
            }
        }
    }

    static String day(long ms) {
        return new SimpleDateFormat("dd.MM.yyyy", Locale.US).format(new Date(ms));
    }

    static String hm(long ms) {
        return new SimpleDateFormat("HH:mm", Locale.US).format(new Date(ms));
    }
}
