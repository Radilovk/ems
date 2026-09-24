package com.isaigu.gymapp.widget;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.Typeface;
import android.net.Uri;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

/**
 * Settings card: export / import local user database, programs, devices and paired MACs.
 */
public final class XemsLocalSection {
    private static final String TAG = "xems_local_section";
    public static final int REQ_EXPORT = 0x7E01;
    public static final int REQ_IMPORT = 0x7E02;

    private XemsLocalSection() {}

    public static void attach(Activity activity, View root) {
        try {
            build(activity, root);
        } catch (Throwable t) {
            android.util.Log.e("xems_local", "attach failed", t);
        }
    }

    public static boolean onActivityResult(Activity activity, int requestCode, int resultCode, Intent data) {
        if (resultCode != Activity.RESULT_OK || data == null || data.getData() == null) {
            return false;
        }
        Uri uri = data.getData();
        if (requestCode == REQ_EXPORT) {
            return XemsLocalStore.exportBackup(activity, uri);
        }
        if (requestCode == REQ_IMPORT) {
            return XemsLocalStore.importBackup(activity, uri);
        }
        return false;
    }

    private static void build(final Activity a, View root) {
        if (a == null || !(root instanceof ViewGroup)) {
            return;
        }
        ViewGroup parent = findScrollContent((ViewGroup) root);
        if (parent == null) {
            return;
        }
        View old = parent.findViewWithTag(TAG);
        if (old != null && old.getParent() instanceof ViewGroup) {
            ((ViewGroup) old.getParent()).removeView(old);
        }
        LinearLayout card = new LinearLayout(a);
        card.setOrientation(LinearLayout.VERTICAL);
        card.setTag(TAG);
        int pad = dp(a, 16);
        card.setPadding(pad, pad, pad, pad);
        card.setBackgroundColor(0xFF1E1E1E);

        TextView title = text(a, tr("Локални данни", "Local data"), 20, true);
        card.addView(title, matchWrap(a, 8));
        TextView hint = text(a,
                tr("Потребители, програми и сдвоени устройства се пазят само на таблета.",
                        "Users, programs and paired devices stay on this tablet only."),
                13, false);
        hint.setTextColor(0xFFB0B0B0);
        card.addView(hint, matchWrap(a, 12));

        LinearLayout row = new LinearLayout(a);
        row.setOrientation(LinearLayout.HORIZONTAL);
        Button exportBtn = button(a, tr("Експорт", "Export"));
        exportBtn.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                startExport(a);
            }
        });
        LinearLayout.LayoutParams lp1 = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
        lp1.rightMargin = dp(a, 8);
        row.addView(exportBtn, lp1);

        Button importBtn = button(a, tr("Импорт", "Import"));
        importBtn.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                startImport(a);
            }
        });
        row.addView(importBtn, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        card.addView(row, matchWrap(a, 0));

        LinearLayout.LayoutParams cardLp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        cardLp.topMargin = dp(a, 16);
        parent.addView(card, cardLp);
    }

    private static ViewGroup findScrollContent(ViewGroup root) {
        if (root instanceof ScrollView) {
            if (root.getChildCount() > 0 && root.getChildAt(0) instanceof ViewGroup) {
                return (ViewGroup) root.getChildAt(0);
            }
        }
        for (int i = 0; i < root.getChildCount(); i++) {
            View child = root.getChildAt(i);
            if (child instanceof ScrollView && child instanceof ViewGroup) {
                ScrollView sv = (ScrollView) child;
                if (sv.getChildCount() > 0 && sv.getChildAt(0) instanceof ViewGroup) {
                    return (ViewGroup) sv.getChildAt(0);
                }
            }
            if (child instanceof ViewGroup) {
                ViewGroup found = findScrollContent((ViewGroup) child);
                if (found != null) {
                    return found;
                }
            }
        }
        return root;
    }

    private static TextView text(Activity a, String value, int sp, boolean bold) {
        TextView tv = new TextView(a);
        tv.setText(value);
        tv.setTextSize(TypedValue.COMPLEX_UNIT_SP, sp);
        tv.setTextColor(0xFFE8E8E8);
        if (bold) {
            tv.setTypeface(Typeface.DEFAULT_BOLD);
        }
        return tv;
    }

    private static Button button(Activity a, String label) {
        Button b = new Button(a);
        b.setText(label);
        b.setAllCaps(false);
        b.setTextColor(Color.WHITE);
        b.setBackgroundColor(0xFF43A047);
        return b;
    }

    private static LinearLayout.LayoutParams matchWrap(Activity a, int top) {
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.topMargin = dp(a, top);
        return lp;
    }

    private static int dp(Activity a, int value) {
        return (int) TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, value, a.getResources().getDisplayMetrics());
    }

    private static void startExport(Activity a) {
        Intent intent = new Intent(Intent.ACTION_CREATE_DOCUMENT);
        intent.addCategory(Intent.CATEGORY_OPENABLE);
        intent.setType("application/json");
        intent.putExtra(Intent.EXTRA_TITLE, "xems-backup.json");
        a.startActivityForResult(intent, REQ_EXPORT);
    }

    private static void startImport(Activity a) {
        Intent intent = new Intent(Intent.ACTION_OPEN_DOCUMENT);
        intent.addCategory(Intent.CATEGORY_OPENABLE);
        intent.setType("application/json");
        a.startActivityForResult(intent, REQ_IMPORT);
    }

    private static String tr(String bg, String en) {
        return XemsLang.isBg() ? bg : en;
    }
}
