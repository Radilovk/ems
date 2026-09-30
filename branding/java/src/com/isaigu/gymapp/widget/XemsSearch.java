package com.isaigu.gymapp.widget;

import android.content.Context;
import android.text.InputType;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/**
 * Client-list search (Потребители tab, the training picker).
 * <ul>
 *   <li>{@link #matches}: case-insensitive, and phonetic across Cyrillic and Latin — "Ivan" finds "Иван",
 *       "Мария" finds "Maria", "Tsvetan" / "Cvetan" / "Цветан" are one name. Both sides go to a coarse
 *       Latin key (Bulgarian transliteration, then ch/ts/tz→c, sh→s, zh→z, ya/ja/ia→a, yu/ju/iu→u, y→i,
 *       w→v, ph→f, double letters once; a Latin j is tried as й and as ж).</li>
 *   <li>{@link #attach}: our own keyboard (wearable/SearchPad — BG / EN letters, 123, matches with photos on
 *       the left); the system keyboard never opens. Without it: no full-screen input, and the block above
 *       the field folds while it has focus so the results stay above the keyboard.</li>
 * </ul>
 * Hooks: the name TextWatchers (apply-client-search-fix.py), before every search field's
 * addTextChangedListener (same script).
 */
public final class XemsSearch {
    private static final String[][] CYR = {
            {"а", "a"}, {"б", "b"}, {"в", "v"}, {"г", "g"}, {"д", "d"}, {"е", "e"}, {"ж", "zh"}, {"з", "z"},
            {"и", "i"}, {"й", "y"}, {"к", "k"}, {"л", "l"}, {"м", "m"}, {"н", "n"}, {"о", "o"}, {"п", "p"},
            {"р", "r"}, {"с", "s"}, {"т", "t"}, {"у", "u"}, {"ф", "f"}, {"х", "h"}, {"ц", "ts"}, {"ч", "ch"},
            {"ш", "sh"}, {"щ", "sht"}, {"ъ", "a"}, {"ь", "y"}, {"ю", "yu"}, {"я", "ya"}, {"ы", "i"},
            {"э", "e"}, {"ё", "yo"}, {"ѝ", "i"}};
    private static final String[][] FOLD = {
            {"sch", "s"}, {"tch", "c"}, {"ch", "c"}, {"tz", "c"}, {"ts", "c"}, {"cz", "c"}, {"sh", "s"},
            {"zh", "z"}, {"kh", "h"}, {"ph", "f"}, {"ck", "k"}, {"yu", "u"}, {"iu", "u"}, {"ya", "a"},
            {"ia", "a"}, {"yo", "o"}, {"w", "v"}, {"q", "k"}, {"x", "ks"}, {"y", "i"}};

    private XemsSearch() {}

    /** True if {@code query} is empty or is found in {@code name} — as typed, or phonetically. */
    public static boolean matches(String name, String query) {
        if (query == null) {
            return true;
        }
        String q = norm(query);
        if (q.length() == 0) {
            return true;
        }
        if (name == null) {
            return false;
        }
        String n = norm(name);
        if (n.indexOf(q) >= 0) {
            return true;
        }
        List<String> nk = keys(n);
        List<String> qk = keys(q);
        for (int i = 0; i < nk.size(); i++) {
            for (int j = 0; j < qk.size(); j++) {
                if (qk.get(j).length() > 0 && nk.get(i).indexOf(qk.get(j)) >= 0) {
                    return true;
                }
            }
        }
        return false;
    }

    private static String norm(String s) {
        return s.trim().toLowerCase(Locale.ROOT);
    }

    /** The coarse phonetic keys of a lower-case string (two when it has a Latin j: й and ж). */
    static List<String> keys(String s) {
        StringBuilder b = new StringBuilder();
        for (int i = 0; i < s.length(); i++) {
            String ch = s.substring(i, i + 1);
            String m = null;
            for (int k = 0; k < CYR.length; k++) {
                if (CYR[k][0].equals(ch)) {
                    m = CYR[k][1];
                    break;
                }
            }
            b.append(m != null ? m : ch);
        }
        String lat = b.toString();
        List<String> out = new ArrayList<String>();
        if (lat.indexOf('j') >= 0) {
            out.add(fold(lat.replace("j", "y")));
            out.add(fold(lat.replace("j", "zh")));
        } else {
            out.add(fold(lat));
        }
        return out;
    }

    static String fold(String s) {
        String t = s;
        for (int k = 0; k < FOLD.length; k++) {
            t = t.replace(FOLD[k][0], FOLD[k][1]);
        }
        StringBuilder b = new StringBuilder();
        char last = 0;
        for (int i = 0; i < t.length(); i++) {
            char c = t.charAt(i);
            if (Character.isLetterOrDigit(c) && c != last) {
                b.append(c);
            } else if (c == ' ') {
                b.append(' ');
            }
            last = c;
        }
        return b.toString();
    }

    // ------------------------------------------------------------------ the field and the keyboard

    public static void attach(EditText et) {
        try {
            if (et == null) {
                return;
            }
            try {
                // Our own keyboard (wearable/SearchPad; compiled apart, so by name): no system keyboard at all.
                Class.forName("com.isaigu.gymapp.wearable.SearchPad").getMethod("attach", EditText.class)
                        .invoke(null, et);
                return;
            } catch (Throwable noPad) {
                // no pad in this build: the system keyboard, kept off the results (below)
            }
            et.setSingleLine(true);
            et.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_VARIATION_PERSON_NAME);
            et.setImeOptions(EditorInfo.IME_ACTION_SEARCH | EditorInfo.IME_FLAG_NO_EXTRACT_UI
                    | EditorInfo.IME_FLAG_NO_FULLSCREEN);
            Fold fold = new Fold(et);
            et.setOnFocusChangeListener(fold);
            et.setOnEditorActionListener(fold);
        } catch (Throwable t) {
            android.util.Log.e("xems_search", "attach", t);
        }
    }

    /** While searching: the views above the field in its column fold away; back when done. */
    static final class Fold implements View.OnFocusChangeListener, TextView.OnEditorActionListener {
        private final EditText et;
        private final List<View> hidden = new ArrayList<View>();

        Fold(EditText et) {
            this.et = et;
        }

        @Override
        public void onFocusChange(View v, boolean has) {
            if (has) {
                fold();
            } else {
                unfold();
            }
        }

        @Override
        public boolean onEditorAction(TextView v, int actionId, KeyEvent event) {
            if (actionId == EditorInfo.IME_ACTION_SEARCH || actionId == EditorInfo.IME_ACTION_DONE
                    || actionId == EditorInfo.IME_ACTION_GO) {
                try {
                    InputMethodManager imm = (InputMethodManager) et.getContext()
                            .getSystemService(Context.INPUT_METHOD_SERVICE);
                    imm.hideSoftInputFromWindow(et.getWindowToken(), 0);
                } catch (Throwable ignored) {
                }
                et.clearFocus();
                unfold();
                return true;
            }
            return false;
        }

        private void fold() {
            if (!hidden.isEmpty()) {
                return;
            }
            // The column: the first ancestor holding the field's box and a list after it.
            View box = et;
            ViewGroup col = et.getParent() instanceof ViewGroup ? (ViewGroup) et.getParent() : null;
            while (col != null) {
                int at = col.indexOfChild(box);
                if (hasListAfter(col, at)) {
                    for (int i = 0; i < at; i++) {
                        View s = col.getChildAt(i);
                        if (s.getVisibility() == View.VISIBLE) {
                            s.setVisibility(View.GONE);
                            hidden.add(s);
                        }
                    }
                    return;
                }
                box = col;
                col = col.getParent() instanceof ViewGroup ? (ViewGroup) col.getParent() : null;
            }
        }

        private void unfold() {
            for (int i = 0; i < hidden.size(); i++) {
                hidden.get(i).setVisibility(View.VISIBLE);
            }
            hidden.clear();
        }

        private static boolean hasListAfter(ViewGroup col, int at) {
            for (int i = at + 1; i < col.getChildCount(); i++) {
                String n = col.getChildAt(i).getClass().getName();
                if (n.endsWith("RecyclerView") || n.endsWith("ListView")) {
                    return true;
                }
            }
            return false;
        }
    }
}
