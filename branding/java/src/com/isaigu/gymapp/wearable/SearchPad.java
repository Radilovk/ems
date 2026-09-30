package com.isaigu.gymapp.wearable;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Shader;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

import com.isaigu.gymapp.bean.TrainProgram;
import com.isaigu.gymapp.bean.TrainUser;
import com.isaigu.gymapp.mgr.DataMgr;
import com.isaigu.gymapp.widget.XemsGuard;
import com.isaigu.gymapp.widget.XemsIcon;
import com.isaigu.gymapp.widget.XemsLang;
import com.isaigu.gymapp.widget.XemsUi;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/**
 * Our own search keyboard for the client searches (Потребители, the client / program / device picker),
 * made for a tablet in landscape: the system keyboard never opens. Tapping a search field shows a panel over
 * the screen — on the left the matches as you type (photo + name, phonetic across Cyrillic / Latin), on the
 * right the query and the keys: Bulgarian phonetic or English letters (БГ / EN), and 123 for digits and signs.
 * A match tapped: the list shows that client (in the picker it is also selected). "Готово" or a tap outside
 * closes the panel. Hook: XemsSearch.attach (by name, the classes compile apart).
 */
public final class SearchPad {
    private static final String[][] BG = {
            {"я", "в", "е", "р", "т", "ъ", "у", "и", "о", "п", "ш", "щ"},
            {"а", "с", "д", "ф", "г", "х", "й", "к", "л", "ю"},
            {"з", "ь", "ц", "ж", "б", "н", "м", "ч"}};
    private static final String[][] EN = {
            {"q", "w", "e", "r", "t", "y", "u", "i", "o", "p"},
            {"a", "s", "d", "f", "g", "h", "j", "k", "l"},
            {"z", "x", "c", "v", "b", "n", "m"}};
    private static final String[][] NUM = {
            {"1", "2", "3", "4", "5", "6", "7", "8", "9", "0"},
            {"-", "_", ".", ",", "@", "'", "(", ")", "/", "&"},
            {"#", "+", ":", ";", "!", "?", "\"", "%"}};
    private static final String TAG = "xems_search_pad";
    private static final int USERS = 0;
    private static final int PROGRAMS = 1;
    private static final int DEVICES = 2;
    private static boolean english;
    private static final Handler MAIN = new Handler(Looper.getMainLooper());

    private final EditText et;
    private final ViewGroup host;
    private final int kind;
    private FrameLayout panel;
    private LinearLayout keys;
    private LinearLayout matches;
    private TextView query;
    private TextView langKey;
    private TextView numKey;
    private boolean numbers;

    private SearchPad(EditText et, ViewGroup host, int kind) {
        this.et = et;
        this.host = host;
        this.kind = kind;
    }

    static String tr(String bg, String en) {
        return XemsLang.tr(bg, en);
    }

    /** Hook: every search field of the client list and the picker. */
    public static void attach(EditText et) {
        try {
            if (et == null) {
                return;
            }
            et.setShowSoftInputOnFocus(false);
            et.setCursorVisible(false);
            et.setFocusable(false);
            et.setFocusableInTouchMode(false);
            et.setOnClickListener(new Open(et));
        } catch (Throwable t) {
            XemsGuard.report("SearchPad.attach", t);
        }
    }

    static final class Open implements View.OnClickListener {
        private final EditText et;

        Open(EditText et) {
            this.et = et;
        }

        @Override
        public void onClick(View v) {
            try {
                View root = et.getRootView();
                if (!(root instanceof ViewGroup) || ((ViewGroup) root).findViewWithTag(TAG) != null) {
                    return;
                }
                String name = v.getResources().getResourceEntryName(et.getId());
                int kind = name.contains("user") ? USERS : name.contains("program") ? PROGRAMS : DEVICES;
                new SearchPad(et, (ViewGroup) root, kind).show();
            } catch (Throwable t) {
                XemsGuard.report("SearchPad.open", t);
            }
        }
    }

    // ------------------------------------------------------------------ the panel

    private void show() {
        Context c = et.getContext();
        XemsUi.init(c);
        panel = new FrameLayout(c);
        panel.setTag(TAG);
        panel.setBackgroundColor(0xB0000000);
        panel.setClickable(true);
        panel.setOnClickListener(new Close(this));

        LinearLayout outer = XemsUi.vertical(c);
        outer.setClickable(true);
        int op = XemsUi.dp(c, 14);
        outer.setPadding(op, XemsUi.dp(c, 10), op, op);
        outer.setBackgroundDrawable(XemsUi.rounded(XemsUi.CARD, XemsUi.dp(c, 22), XemsUi.STROKE, XemsUi.dp(c, 1)));
        LinearLayout head = XemsUi.horizontal(c);
        head.setGravity(Gravity.CENTER_VERTICAL);
        ImageView hg = new ImageView(c);
        hg.setImageDrawable(new XemsIcon(XemsIcon.SEARCH, XemsUi.GO_TEXT));
        head.addView(hg, new LinearLayout.LayoutParams(XemsUi.dp(c, 22), XemsUi.dp(c, 22)));
        TextView title = XemsUi.text(c, kind == USERS ? tr("Търсене на клиент", "Find a client")
                : kind == PROGRAMS ? tr("Търсене на програма", "Find a program")
                : tr("Търсене на устройство", "Find a device"), 18, XemsUi.TEXT, true);
        title.setPadding(XemsUi.dp(c, 10), 0, 0, 0);
        head.addView(title, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        TextView hide = XemsUi.button(c, tr("Скрий клавиатурата  ⌄", "Hide keyboard  ⌄"), XemsUi.SECONDARY);
        hide.setTextSize(15);
        hide.setPadding(XemsUi.dp(c, 18), XemsUi.dp(c, 9), XemsUi.dp(c, 18), XemsUi.dp(c, 9));
        hide.setOnClickListener(new Close(this));
        head.addView(hide);
        outer.addView(head, XemsUi.matchWrap(c, 0));

        LinearLayout sheet = XemsUi.horizontal(c);
        sheet.setClickable(true);
        sheet.setPadding(0, XemsUi.dp(c, 12), 0, 0);
        outer.addView(sheet, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));

        // left: the matches
        LinearLayout left = XemsUi.vertical(c);
        TextView lt = XemsUi.label(c, kind == USERS ? tr("Клиенти", "Clients")
                : kind == PROGRAMS ? tr("Програми", "Programs") : tr("Устройства", "Devices"));
        left.addView(lt);
        ScrollView sv = new ScrollView(c);
        matches = XemsUi.vertical(c);
        sv.addView(matches);
        left.addView(sv, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
        sheet.addView(left, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 0.36f));

        // right: the query and the keys
        LinearLayout right = XemsUi.vertical(c);
        LinearLayout qRow = XemsUi.horizontal(c);
        qRow.setGravity(Gravity.CENTER_VERTICAL);
        qRow.setBackgroundDrawable(XemsUi.rounded(XemsUi.SURFACE, XemsUi.dp(c, 26), XemsUi.alpha(XemsUi.GO_TEXT, 0x99), XemsUi.dp(c, 1)));
        qRow.setPadding(XemsUi.dp(c, 16), 0, XemsUi.dp(c, 6), 0);
        ImageView glass = new ImageView(c);
        glass.setImageDrawable(new XemsIcon(XemsIcon.SEARCH, XemsUi.MUTED));
        qRow.addView(glass, new LinearLayout.LayoutParams(XemsUi.dp(c, 24), XemsUi.dp(c, 24)));
        query = XemsUi.text(c, "", 22, XemsUi.TEXT, true);
        query.setSingleLine(true);
        query.setPadding(XemsUi.dp(c, 12), 0, 0, 0);
        qRow.addView(query, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        TextView clear = XemsUi.iconButton(c, "✕", XemsUi.CARD, XemsUi.MUTED, 40);
        clear.setOnClickListener(new Key(this, "\u0000clear"));
        qRow.addView(clear);
        right.addView(qRow, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, XemsUi.dp(c, 56)));
        keys = XemsUi.vertical(c);
        right.addView(keys, XemsUi.matchWrap(c, 10));
        LinearLayout.LayoutParams rp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 0.64f);
        rp.leftMargin = XemsUi.dp(c, 14);
        rp.gravity = Gravity.BOTTOM;
        sheet.addView(right, rp);

        FrameLayout.LayoutParams sp = new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.MATCH_PARENT);
        int m = XemsUi.dp(c, 16);
        sp.setMargins(m, m, m, m);
        panel.addView(outer, sp);
        panel.setFocusableInTouchMode(true);
        panel.setOnKeyListener(new Back(this));
        host.addView(panel, new ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.MATCH_PARENT));
        panel.setAlpha(0f);
        panel.animate().alpha(1f).setDuration(160).start();
        panel.requestFocus();
        if (kind == DEVICES) {
            numbers = true;                                // device names are mostly digits
        }
        buildKeys();
        refresh();
    }

    private void buildKeys() {
        Context c = keys.getContext();
        keys.removeAllViews();
        String[][] rows = numbers ? NUM : english ? EN : BG;
        for (int r = 0; r < rows.length; r++) {
            LinearLayout row = XemsUi.horizontal(c);
            row.setGravity(Gravity.CENTER);
            for (int i = 0; i < rows[r].length; i++) {
                row.addView(key(c, rows[r][i].toUpperCase(Locale.ROOT), rows[r][i], 1f, false));
            }
            if (r == rows.length - 1) {
                row.addView(key(c, "⌫", "\u0000back", 1.6f, true));
            }
            keys.addView(row, XemsUi.matchWrap(c, r == 0 ? 0 : 8));
        }
        LinearLayout bottom = XemsUi.horizontal(c);
        numKey = key(c, numbers ? (english ? "ABC" : "АБВ") : "123", "\u0000num", 1.4f, true);
        langKey = key(c, english ? "БГ" : "EN", "\u0000lang", 1.4f, true);
        langKey.setVisibility(numbers ? View.INVISIBLE : View.VISIBLE);
        bottom.addView(numKey);
        bottom.addView(langKey);
        bottom.addView(key(c, tr("интервал", "space"), " ", 4.5f, true));
        TextView done = key(c, tr("Готово", "Done"), "\u0000done", 2.2f, true);
        done.setBackgroundDrawable(XemsUi.rounded(XemsUi.GO, XemsUi.dp(c, 12), 0, 0));
        done.setTextColor(0xFFFFFFFF);
        bottom.addView(done);
        keys.addView(bottom, XemsUi.matchWrap(c, 8));
    }

    private TextView key(Context c, String label, String value, float weight, boolean fn) {
        TextView k = XemsUi.text(c, label, fn ? 17 : 22, XemsUi.TEXT, !fn || label.length() <= 3);
        k.setGravity(Gravity.CENTER);
        k.setBackgroundDrawable(XemsUi.rounded(fn ? XemsUi.ELEVATED : XemsUi.SURFACE, XemsUi.dp(c, 12),
                XemsUi.alpha(XemsUi.STROKE, 0x88), XemsUi.dp(c, 1)));
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, XemsUi.dp(c, 56), weight);
        lp.leftMargin = XemsUi.dp(c, 3);
        lp.rightMargin = XemsUi.dp(c, 3);
        k.setLayoutParams(lp);
        k.setOnClickListener(new Key(this, value));
        k.setOnTouchListener(new Press());
        return k;
    }

    static final class Press implements View.OnTouchListener {
        @Override
        public boolean onTouch(View v, MotionEvent e) {
            int a = e.getActionMasked();
            if (a == MotionEvent.ACTION_DOWN) {
                v.animate().scaleX(0.92f).scaleY(0.92f).setDuration(60).start();
            } else if (a == MotionEvent.ACTION_UP || a == MotionEvent.ACTION_CANCEL) {
                v.animate().scaleX(1f).scaleY(1f).setDuration(100).start();
            }
            return false;
        }
    }

    static final class Key implements View.OnClickListener {
        private final SearchPad pad;
        private final String value;

        Key(SearchPad pad, String value) {
            this.pad = pad;
            this.value = value;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            pad.press(value);
        }
    }

    private void press(String v) {
        String s = et.getText().toString();
        if ("\u0000back".equals(v)) {
            if (s.length() > 0) {
                set(s.substring(0, s.length() - 1));
            }
        } else if ("\u0000clear".equals(v)) {
            set("");
        } else if ("\u0000lang".equals(v)) {
            english = !english;
            buildKeys();
        } else if ("\u0000num".equals(v)) {
            numbers = !numbers;
            buildKeys();
        } else if ("\u0000done".equals(v)) {
            close();
        } else {
            boolean wordStart = s.length() == 0 || s.endsWith(" ");
            set(s + (wordStart && !numbers ? v.toUpperCase(Locale.ROOT) : v));
        }
    }

    /** The field changes (its own watcher filters the list), the panel follows. */
    private void set(String s) {
        et.setText(s);
        refresh();
    }

    private void refresh() {
        String s = et.getText().toString();
        query.setText(s.length() > 0 ? s : "");
        query.setHint(kind == USERS ? tr("Име на клиента…", "Client name…")
                : kind == PROGRAMS ? tr("Име на програмата…", "Program name…")
                : tr("Име или номер на устройството…", "Device name or number…"));
        query.setHintTextColor(XemsUi.HINT);
        if (matches == null) {
            return;
        }
        Context c = matches.getContext();
        matches.removeAllViews();
        int n = 0;
        if (kind == USERS) {
            List<TrainUser> all = DataMgr.getInstance() != null ? DataMgr.getInstance().trainUsers : null;
            List<TrainUser> list = all != null ? new ArrayList<TrainUser>(all) : new ArrayList<TrainUser>();
            for (int i = 0; i < list.size() && n < 12; i++) {
                TrainUser u = list.get(i);
                String name = u != null ? (u.name != null && u.name.length() > 0 ? u.name : u.nickName) : null;
                if (name == null || !matches(name, s)) {
                    continue;
                }
                matches.addView(userRow(c, u, name), XemsUi.matchWrap(c, n == 0 ? 8 : 6));
                n++;
            }
        } else if (kind == DEVICES) {
            List<com.isaigu.gymapp.bean.DeviceBean> all = DataMgr.getInstance() != null
                    ? DataMgr.getInstance().deviceBeanList : null;
            for (int i = 0; all != null && i < all.size() && n < 12; i++) {
                com.isaigu.gymapp.bean.DeviceBean d = all.get(i);
                if (d == null || d.name == null || !matches(d.name, s)) {
                    continue;
                }
                matches.addView(textRow(c, d.name), XemsUi.matchWrap(c, n == 0 ? 8 : 6));
                n++;
            }
        } else {
            List<TrainProgram> all = DataMgr.getInstance() != null ? DataMgr.getInstance().trainData : null;
            for (int i = 0; all != null && i < all.size() && n < 12; i++) {
                TrainProgram p = all.get(i);
                if (p == null || p.name == null || !matches(p.name, s)) {
                    continue;
                }
                matches.addView(textRow(c, p.name), XemsUi.matchWrap(c, n == 0 ? 8 : 6));
                n++;
            }
        }
        if (n == 0) {
            matches.addView(XemsUi.text(c, tr("Няма съвпадения", "No matches"), 15, XemsUi.MUTED, false),
                    XemsUi.matchWrap(c, 12));
        }
    }

    static boolean matches(String name, String q) {
        try {
            Object r = Class.forName("com.isaigu.gymapp.widget.XemsSearch")
                    .getMethod("matches", String.class, String.class).invoke(null, name, q);
            return Boolean.TRUE.equals(r);
        } catch (Throwable t) {
            return q == null || q.trim().length() == 0
                    || name.toLowerCase(Locale.ROOT).contains(q.trim().toLowerCase(Locale.ROOT));
        }
    }

    private View userRow(Context c, TrainUser u, String name) {
        LinearLayout row = XemsUi.horizontal(c);
        row.setGravity(Gravity.CENTER_VERTICAL);
        int p = XemsUi.dp(c, 8);
        row.setPadding(p, p, p, p);
        row.setBackgroundDrawable(XemsUi.rounded(XemsUi.SURFACE, XemsUi.dp(c, 14), 0, 0));
        ImageView av = new ImageView(c);
        Bitmap b = photo(u.iconUrl, XemsUi.dp(c, 44));
        if (b != null) {
            av.setImageBitmap(b);
        } else {
            av.setImageBitmap(initials(c, name, XemsUi.dp(c, 44)));
        }
        row.addView(av, new LinearLayout.LayoutParams(XemsUi.dp(c, 44), XemsUi.dp(c, 44)));
        LinearLayout txt = XemsUi.vertical(c);
        txt.setPadding(XemsUi.dp(c, 12), 0, 0, 0);
        TextView n = XemsUi.text(c, ClientRow.twoNames(u), 17, XemsUi.TEXT, true);
        n.setSingleLine(true);
        txt.addView(n);
        String g = ClientRow.goalOf(u);
        if (g.length() > 0) {
            txt.addView(XemsUi.text(c, g, 13, XemsUi.MUTED, false));
        }
        row.addView(txt, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        row.setOnClickListener(new Pick(this, name));
        XemsUi.pressable(row);
        return row;
    }

    private View textRow(Context c, String name) {
        TextView t = XemsUi.text(c, name, 17, XemsUi.TEXT, true);
        int p = XemsUi.dp(c, 14);
        t.setPadding(p, p, p, p);
        t.setBackgroundDrawable(XemsUi.rounded(XemsUi.SURFACE, XemsUi.dp(c, 14), 0, 0));
        t.setOnClickListener(new Pick(this, name));
        XemsUi.pressable(t);
        return t;
    }

    static final class Pick implements View.OnClickListener {
        private final SearchPad pad;
        private final String name;

        Pick(SearchPad pad, String name) {
            this.pad = pad;
            this.name = name;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            pad.picked(name);
        }
    }

    /** A match tapped: the list shows it; in the picker (a dialog) its row is also selected. */
    private void picked(String name) {
        et.setText(name);
        close();
        android.app.Activity act = QuickStart.activity(et.getContext());
        boolean picker = act != null && et.getRootView() != act.getWindow().getDecorView();
        if (picker) {
            MAIN.postDelayed(new SelectFirst(et), 250L);
        }
    }

    /** The list right after the field (its only row now): clicked, as the trainer would. */
    static final class SelectFirst implements Runnable {
        private final EditText et;

        SelectFirst(EditText et) {
            this.et = et;
        }

        @Override
        public void run() {
            try {
                View box = et;
                ViewGroup col = et.getParent() instanceof ViewGroup ? (ViewGroup) et.getParent() : null;
                for (int up = 0; up < 4 && col != null; up++) {
                    int at = col.indexOfChild(box);
                    for (int i = at + 1; i < col.getChildCount(); i++) {
                        View v = col.getChildAt(i);
                        if (v.getClass().getName().endsWith("RecyclerView") && v instanceof ViewGroup
                                && ((ViewGroup) v).getChildCount() > 0) {
                            ((ViewGroup) v).getChildAt(0).performClick();
                            return;
                        }
                    }
                    box = col;
                    col = col.getParent() instanceof ViewGroup ? (ViewGroup) col.getParent() : null;
                }
            } catch (Throwable t) {
                XemsGuard.report("SearchPad.select", t);
            }
        }
    }

    /** The system back button closes the keyboard first. */
    static final class Back implements View.OnKeyListener {
        private final SearchPad pad;

        Back(SearchPad pad) {
            this.pad = pad;
        }

        @Override
        public boolean onKey(View v, int code, android.view.KeyEvent e) {
            if (code == android.view.KeyEvent.KEYCODE_BACK) {
                if (e.getAction() == android.view.KeyEvent.ACTION_UP) {
                    pad.close();
                }
                return true;
            }
            return false;
        }
    }

    static final class Close implements View.OnClickListener {
        private final SearchPad pad;

        Close(SearchPad pad) {
            this.pad = pad;
        }

        @Override
        public void onClick(View v) {
            pad.close();
        }
    }

    private void close() {
        if (panel == null) {
            return;
        }
        final FrameLayout p = panel;
        panel = null;
        p.animate().alpha(0f).setDuration(120).withEndAction(new Remove(host, p)).start();
    }

    static final class Remove implements Runnable {
        private final ViewGroup host;
        private final View v;

        Remove(ViewGroup host, View v) {
            this.host = host;
            this.v = v;
        }

        @Override
        public void run() {
            try {
                host.removeView(v);
            } catch (Throwable ignored) {
            }
        }
    }

    // ------------------------------------------------------------------ photos

    static Bitmap photo(String url, int size) {
        try {
            if (url == null || !url.startsWith("file://")) {
                return null;
            }
            Bitmap b = BitmapFactory.decodeFile(Uri.parse(url).getPath());
            return b != null ? round(Bitmap.createScaledBitmap(b, size, size, true)) : null;
        } catch (Throwable t) {
            return null;
        }
    }

    static Bitmap round(Bitmap sq) {
        int s = Math.min(sq.getWidth(), sq.getHeight());
        Bitmap out = Bitmap.createBitmap(s, s, Bitmap.Config.ARGB_8888);
        Canvas cv = new Canvas(out);
        Paint p = new Paint(Paint.ANTI_ALIAS_FLAG);
        p.setShader(new BitmapShader(sq, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP));
        cv.drawCircle(s / 2f, s / 2f, s / 2f, p);
        return out;
    }

    static Bitmap initials(Context c, String name, int size) {
        Bitmap out = Bitmap.createBitmap(size, size, Bitmap.Config.ARGB_8888);
        Canvas cv = new Canvas(out);
        Paint p = new Paint(Paint.ANTI_ALIAS_FLAG);
        p.setColor(XemsUi.ELEVATED);
        cv.drawCircle(size / 2f, size / 2f, size / 2f, p);
        String[] w = name.trim().split("\\s+");
        String ini = (w.length > 0 && w[0].length() > 0 ? w[0].substring(0, 1) : "")
                + (w.length > 1 && w[w.length - 1].length() > 0 ? w[w.length - 1].substring(0, 1) : "");
        p.setColor(XemsUi.TEXT);
        p.setTextSize(size * 0.38f);
        p.setFakeBoldText(true);
        p.setTextAlign(Paint.Align.CENTER);
        Paint.FontMetrics fm = p.getFontMetrics();
        cv.drawText(ini.toUpperCase(Locale.ROOT), size / 2f, size / 2f - (fm.ascent + fm.descent) / 2f, p);
        return out;
    }
}
