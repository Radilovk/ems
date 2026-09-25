package com.isaigu.gymapp.widget;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
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
import android.widget.Toast;

/**
 * Settings card "Tablet and data": the mode (admin setup / user), the profile key, the suits,
 * export / import of the tablet's data and the one-way "Finish setup".
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
        XemsLocalGate.attach(activity, root);
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

    private static void build(final Activity a, final View root) {
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
        final boolean setup = XemsLocalStore.isAdminSession();
        LinearLayout card = new LinearLayout(a);
        card.setOrientation(LinearLayout.VERTICAL);
        card.setTag(TAG);
        int pad = dp(a, 16);
        card.setPadding(pad, pad, pad, pad);
        card.setBackgroundColor(0xFF1E1E1E);

        card.addView(text(a, tr("Таблет и данни", "Tablet and data"), 20, true), matchWrap(a, 8));

        TextView mode = text(a, setup
                ? tr("Режим: НАСТРОЙКА (админ). Всичко е отключено; всеки открит костюм се сдвоява при свързване.",
                     "Mode: SETUP (admin). Everything is unlocked; any suit found is paired when it connects.")
                : tr("Режим: потребител. Виждат се само позволените костюми.",
                     "Mode: user. Only the allowed suits are shown."), 14, true);
        mode.setTextColor(setup ? 0xFFFFB74D : 0xFF81C784);
        card.addView(mode, matchWrap(a, 4));

        int paired = XemsLocalStore.pairedCount(a);
        int server = XemsLicense.allowedEms() != null ? XemsLicense.allowedEms().size() : 0;
        String key = XemsLicense.key();
        String profile = key == null || key.length() == 0
                ? tr("Профил: няма ключ (въведи го в „Достъп и лиценз“).",
                     "Profile: no key (enter it under Access and licence).")
                : tr("Профил: ключ …", "Profile: key …") + key.substring(Math.max(0, key.length() - 4));
        TextView info = text(a, profile + "\n"
                + tr("Костюми: ", "Suits: ") + paired + tr(" сдвоени на таблета, ", " paired on this tablet, ")
                + server + tr(" от сървъра.", " from the server.")
                + "\n" + tr("Потребители, програми и история се пазят само на таблета.",
                        "Users, programs and history stay on this tablet only."), 13, false);
        info.setTextColor(0xFFB0B0B0);
        card.addView(info, matchWrap(a, 8));

        LinearLayout row = new LinearLayout(a);
        row.setOrientation(LinearLayout.HORIZONTAL);
        Button exportBtn = button(a, tr("Експорт", "Export"), 0xFF43A047);
        exportBtn.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                startExport(a);
            }
        });
        row.addView(exportBtn, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        if (setup) {
            Button importBtn = button(a, tr("Импорт", "Import"), 0xFF43A047);
            importBtn.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    startImport(a);
                }
            });
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
            lp.leftMargin = dp(a, 8);
            row.addView(importBtn, lp);
        } else {
            Button refreshBtn = button(a, tr("Обнови от сървъра", "Update from server"), 0xFF1E88E5);
            refreshBtn.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    XemsLicenseClient.refreshNow(a);
                    Toast.makeText(a, tr("Проверявам сървъра… отвори Настройки пак след малко.",
                            "Checking the server… reopen Settings in a moment."), Toast.LENGTH_LONG).show();
                }
            });
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
            lp.leftMargin = dp(a, 8);
            row.addView(refreshBtn, lp);
        }
        card.addView(row, matchWrap(a, 0));

        if (setup) {
            Button lock = button(a, tr("Край на настройката", "Finish setup"), 0xFFE53935);
            lock.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    confirmFinish(a, root);
                }
            });
            card.addView(lock, matchWrap(a, 12));
        }

        LinearLayout.LayoutParams cardLp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        cardLp.topMargin = dp(a, 16);
        parent.addView(card, cardLp);
    }

    private static void confirmFinish(final Activity a, final View root) {
        new AlertDialog.Builder(a)
                .setTitle(tr("Край на настройката?", "Finish setup?"))
                .setMessage(tr("Таблетът минава в потребителски режим: модулите следват лиценза, "
                                + "виждат се само сдвоените костюми (" + XemsLocalStore.pairedCount(a) + ") "
                                + "и тези, които сървърът добави. Обратно в настройка — с ключ 0123.",
                        "The tablet switches to user mode: modules follow the licence and only the paired "
                                + "suits (" + XemsLocalStore.pairedCount(a) + ") and those the server adds "
                                + "are shown. Back to setup with the key 0123.")
                        + (XemsLicense.isAdminKey()
                        ? tr("\n\nВНИМАНИЕ: активният ключ е 0123 — клиентът ще остане с пълни права. "
                                + "Въведи първо ключа на клиента.",
                        "\n\nWARNING: the active key is 0123, the customer keeps full rights. "
                                + "Enter the customer's key first.")
                        : ""))
                .setPositiveButton(tr("Заключи", "Lock"), new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface d, int which) {
                        XemsLocalStore.finishSetup();
                        Toast.makeText(a, tr("Настройката е завършена", "Setup finished"), Toast.LENGTH_LONG).show();
                        attach(a, root);
                    }
                })
                .setNegativeButton(tr("Отказ", "Cancel"), null)
                .show();
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

    private static Button button(Activity a, String label, int color) {
        Button b = new Button(a);
        b.setText(label);
        b.setAllCaps(false);
        b.setTextColor(Color.WHITE);
        b.setBackgroundColor(color);
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
