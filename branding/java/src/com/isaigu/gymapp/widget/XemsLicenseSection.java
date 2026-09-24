package com.isaigu.gymapp.widget;

import android.app.Activity;
import android.graphics.Typeface;
import android.text.InputType;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/**
 * Settings → "Access & license": what is unlocked, the user key, this device's id (for support /
 * the server) and the update check. Sits above the band card.
 */
public final class XemsLicenseSection {
    private static final String TAG = "xems_license_section";

    private XemsLicenseSection() {}

    public static void attach(Activity a, View root) {
        try {
            build(a, root);
        } catch (Throwable t) {
            XemsGuard.report("XemsLicenseSection.attach", t);
        }
    }

    private static void build(final Activity a, final View root) {
        if (a == null || !(root instanceof ViewGroup)) {
            return;
        }
        XemsLicense.init(a);
        XemsUi.init(a);
        ViewGroup parent = XemsUi.scrollContent(a, root);
        if (parent == null) {
            return;
        }
        View old = parent.findViewWithTag(TAG);
        if (old != null && old.getParent() instanceof ViewGroup) {
            ((ViewGroup) old.getParent()).removeView(old);
        }
        LinearLayout card = XemsUi.card(a);
        card.setTag(TAG);

        card.addView(XemsUi.text(a, tr("Достъп и лиценз", "Access & license"), 22, XemsUi.TEXT, true));

        // status
        boolean full = XemsLicense.isFull();
        boolean any = !XemsLicense.unlockedList().isEmpty();
        TextView status = XemsUi.text(a, statusTitle(), 18, full ? XemsUi.GO_TEXT : any ? XemsUi.AMBER : XemsUi.MUTED, true);
        card.addView(status, XemsUi.matchWrap(a, 10));
        TextView detail = XemsUi.text(a, statusDetail(), 13, XemsUi.MUTED, false);
        card.addView(detail, XemsUi.matchWrap(a, 2));

        // modules
        LinearLayout chips = XemsUi.horizontal(a);
        chips.setGravity(Gravity.CENTER_VERTICAL);
        String[] ids = XemsLicense.ALL;
        for (String id : ids) {
            boolean on = XemsLicense.has(id);
            TextView chip = XemsUi.chip(a, (on ? "✓ " : "🔒 ") + moduleName(id), on, on ? XemsUi.GO : XemsUi.HINT);
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            lp.rightMargin = XemsUi.dp(a, 6);
            chips.addView(chip, lp);
        }
        if (XemsLicense.hasFeature(XemsLicense.FEAT_ARMS_FULL)) {
            TextView chip = XemsUi.chip(a, tr("✓ Ръце 1:1", "✓ Arms 1:1"), true, XemsUi.AMBER);
            chips.addView(chip);
        }
        android.widget.HorizontalScrollView scroll = new android.widget.HorizontalScrollView(a);
        scroll.setHorizontalScrollBarEnabled(false);
        scroll.addView(chips);
        card.addView(scroll, XemsUi.matchWrap(a, 12));

        // key + activate
        TextView keyLabel = XemsUi.label(a, tr("Потребителски ключ", "User key"));
        card.addView(keyLabel, XemsUi.matchWrap(a, 16));
        LinearLayout keyRow = XemsUi.horizontal(a);
        keyRow.setGravity(Gravity.CENTER_VERTICAL);
        final EditText key = field(a, tr("напр. XEMS-XXXX-XXXX", "e.g. XEMS-XXXX-XXXX"));
        key.setText(XemsLicense.key());
        key.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_FLAG_NO_SUGGESTIONS
                | InputType.TYPE_TEXT_FLAG_CAP_CHARACTERS);
        keyRow.addView(key, new LinearLayout.LayoutParams(0, XemsUi.dp(a, 48), 1f));
        TextView go = XemsUi.button(a, tr("Активирай", "Activate"), XemsUi.PRIMARY);
        LinearLayout.LayoutParams gp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, XemsUi.dp(a, 48));
        gp.leftMargin = XemsUi.dp(a, 10);
        keyRow.addView(go, gp);
        card.addView(keyRow, XemsUi.matchWrap(a, 6));
        final TextView result = XemsUi.text(a, "", 13, XemsUi.MUTED, false);
        card.addView(result, XemsUi.matchWrap(a, 6));
        go.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                XemsUi.haptic(v);
                result.setTextColor(XemsUi.MUTED);
                result.setText(tr("Проверка…", "Checking…"));
                XemsLicenseClient.activate(a, key.getText().toString(), new XemsLicenseClient.Done() {
                    @Override
                    public void done(boolean ok, String msg) {
                        onActivated(a, root, result, ok, msg);
                    }
                });
            }
        });

        // device id (what the server / support needs)
        TextView dev = XemsUi.text(a, tr("ID на устройството: ", "Device ID: ") + XemsLicense.deviceIdShown(),
                13, XemsUi.HINT, false);
        dev.setTypeface(Typeface.MONOSPACE);
        dev.setTextIsSelectable(true);
        card.addView(dev, XemsUi.matchWrap(a, 12));

        // updates
        LinearLayout upRow = XemsUi.horizontal(a);
        upRow.setGravity(Gravity.CENTER_VERTICAL);
        final TextView upText = XemsUi.text(a, tr("Версия ", "Version ") + XemsLicenseClient.appVersion(a),
                14, XemsUi.MUTED, false);
        upRow.addView(upText, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        final TextView upBtn = XemsUi.button(a, tr("Провери за нова", "Check for update"), XemsUi.SECONDARY);
        upRow.addView(upBtn, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, XemsUi.dp(a, 44)));
        card.addView(upRow, XemsUi.matchWrap(a, 16));
        upBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                XemsLicenseClient.Update u = XemsLicenseClient.lastUpdate();
                if (u != null) {
                    upText.setText(tr("Изтегляне ", "Downloading ") + u.versionName + "…");
                    XemsLicenseClient.downloadAndInstall(a, u, new XemsLicenseClient.Done() {
                        @Override
                        public void done(boolean ok, String msg) {
                            upText.setText(ok ? tr("Инсталиране…", "Installing…") : reason(msg));
                        }
                    });
                    return;
                }
                upText.setText(tr("Проверка…", "Checking…"));
                XemsLicenseClient.checkUpdate(a, new XemsLicenseClient.UpdateDone() {
                    @Override
                    public void done(XemsLicenseClient.Update found, String error) {
                        if (error != null) {
                            upText.setText(reason(error));
                        } else if (found == null) {
                            upText.setText(tr("Това е последната версия", "This is the latest version"));
                        } else {
                            upText.setText(tr("Нова: ", "New: ") + found.versionName
                                    + (found.notes.length() > 0 ? " · " + found.notes : ""));
                            upBtn.setText(tr("Изтегли и инсталирай", "Download & install"));
                        }
                    }
                });
            }
        });

        // server address (advanced, folded)
        final TextView adv = XemsUi.text(a, tr("Сървър ›", "Server ›"), 13, XemsUi.HINT, false);
        adv.setPadding(0, XemsUi.dp(a, 14), 0, XemsUi.dp(a, 4));
        card.addView(adv);
        final LinearLayout srvRow = XemsUi.horizontal(a);
        srvRow.setGravity(Gravity.CENTER_VERTICAL);
        srvRow.setVisibility(View.GONE);
        final EditText srv = field(a, "https://…");
        srv.setText(XemsLicense.server());
        srv.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_VARIATION_URI);
        srvRow.addView(srv, new LinearLayout.LayoutParams(0, XemsUi.dp(a, 44), 1f));
        TextView save = XemsUi.button(a, tr("Запази", "Save"), XemsUi.SECONDARY);
        LinearLayout.LayoutParams sp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, XemsUi.dp(a, 44));
        sp.leftMargin = XemsUi.dp(a, 10);
        srvRow.addView(save, sp);
        card.addView(srvRow);
        adv.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                boolean open = srvRow.getVisibility() != View.VISIBLE;
                srvRow.setVisibility(open ? View.VISIBLE : View.GONE);
                adv.setText(open ? tr("Сървър ⌄", "Server ⌄") : tr("Сървър ›", "Server ›"));
            }
        });
        save.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                XemsLicense.setServer(srv.getText().toString());
                adv.setText(tr("Сървър ✓ запазен", "Server ✓ saved"));
            }
        });

        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.topMargin = XemsUi.dp(a, 28);
        parent.addView(card, lp);
    }

    static void onActivated(Activity a, View root, TextView result, boolean ok, String msg) {
        if (ok) {
            android.widget.Toast.makeText(a, "reset".equals(msg) ? tr("Базов режим", "Base mode")
                    : tr("Модулите са отключени", "Modules unlocked"), android.widget.Toast.LENGTH_SHORT).show();
            // rebuild both cards (the band card depends on the license) and the module bar
            com.isaigu.gymapp.wearable.WearableSettingsSection.attach(a, root);
            XemsNav.onLicenseChanged();
            return;
        }
        result.setTextColor(XemsUi.DANGER);
        result.setText(reason(msg));
    }

    static String statusTitle() {
        if (XemsLicense.isFull()) {
            return tr("Пълен достъп", "Full access");
        }
        if (!XemsLicense.unlockedList().isEmpty()) {
            return tr("Частичен достъп", "Partial access");
        }
        return tr("Базов режим", "Base mode");
    }

    static String statusDetail() {
        String src = XemsLicense.source();
        String arms = XemsLicense.hasFeature(XemsLicense.FEAT_ARMS_FULL)
                ? tr(" · ръцете с нормална сила (стъпка 1:1)", " · arms at normal strength (step 1:1)") : "";
        if ("code".equals(src)) {
            return tr("Отключено с код · без срок", "Unlocked with a code · no end date") + arms;
        }
        if ("server".equals(src)) {
            long exp = XemsLicense.expiresS();
            String plan = XemsLicense.plan();
            String until = exp == 0 ? tr("без срок", "no end date")
                    : tr("до ", "until ") + new SimpleDateFormat("dd.MM.yyyy", Locale.US).format(new Date(exp * 1000L));
            int grace = XemsLicense.graceDaysLeft();
            return (plan.length() > 0 ? tr("План ", "Plan ") + plan + " · " : "") + until
                    + (grace >= 0 ? tr(" · изтекъл, работи още ", " · expired, works ") + grace + tr(" дни", " more days") : "")
                    + arms;
        }
        return tr("Тренировка без допълнителните модули. Въведи ключ, за да ги отключиш.",
                "Training without the add-on modules. Enter a key to unlock them.");
    }

    static String reason(String code) {
        if ("no_server".equals(code)) {
            return tr("Невалиден ключ. Отключване през интернет още не е налично.",
                    "Invalid key. Online unlocking is not available yet.");
        }
        if ("offline".equals(code)) {
            return tr("Няма връзка със сървъра. Опитай пак.", "Cannot reach the server. Try again.");
        }
        if ("invalid_key".equals(code)) {
            return tr("Невалиден ключ", "Invalid key");
        }
        if ("expired".equals(code)) {
            return tr("Ключът е изтекъл", "The key has expired");
        }
        if ("device_limit".equals(code)) {
            return tr("Ключът вече е ползван на максимума устройства", "The key is already used on the maximum number of devices");
        }
        if ("revoked".equals(code) || "disabled".equals(code)) {
            return tr("Ключът е спрян", "The key is disabled");
        }
        if ("no_server_key".equals(code) || "bad_signature".equals(code) || "bad_token".equals(code)) {
            return tr("Отговорът на сървъра не е проверен (подпис)", "The server answer failed the signature check");
        }
        if ("other_device".equals(code)) {
            return tr("Ключът е издаден за друго устройство", "The key was issued for another device");
        }
        if ("bad_checksum".equals(code)) {
            return tr("Изтегленият файл е повреден", "The download is damaged");
        }
        if ("download_failed".equals(code)) {
            return tr("Изтеглянето не мина", "Download failed");
        }
        if ("install_failed".equals(code)) {
            return tr("Инсталаторът не се отвори", "The installer did not open");
        }
        return tr("Грешка: ", "Error: ") + code;
    }

    static String moduleName(String id) {
        if (XemsLicense.TIMER.equals(id)) {
            return tr("Таймер", "Timer");
        }
        if (XemsLicense.MUSIC.equals(id)) {
            return tr("Музика", "Music");
        }
        if (XemsLicense.PULSE.equals(id)) {
            return tr("Пулс", "Heart rate");
        }
        if (XemsLicense.AI.equals(id)) {
            return "AI";
        }
        return tr("Часовник", "Band");
    }

    private static EditText field(Activity a, String hint) {
        EditText e = new EditText(a);
        e.setHint(hint);
        e.setSingleLine(true);
        e.setTextSize(16);
        e.setTextColor(XemsUi.TEXT);
        e.setHintTextColor(XemsUi.HINT);
        int p = XemsUi.dp(a, 12);
        e.setPadding(p, 0, p, 0);
        e.setBackground(XemsUi.rounded(XemsUi.SURFACE, XemsUi.dp(a, 12), XemsUi.STROKE, XemsUi.dp(a, 1)));
        return e;
    }

    static String tr(String bg, String en) {
        try {
            return XemsLang.tr(bg, en);
        } catch (Throwable t) {
            return bg;
        }
    }
}
