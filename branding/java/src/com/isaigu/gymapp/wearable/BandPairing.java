package com.isaigu.gymapp.wearable;

import android.app.Activity;
import android.app.Dialog;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;
import android.text.InputType;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.util.TypedValue;

import com.isaigu.gymapp.wearable.xiaomi.MiFitnessLogImport;

/**
 * The one place a band is paired: read the key + MAC from the Mi Fitness log; only if that finds nothing,
 * offer typing the MAC and key by hand. Found bands go to the saved list; the settings screen then says
 * what each one is for. No lambdas / anonymous classes.
 */
final class BandPairing {

    private static final Handler handler = new Handler(Looper.getMainLooper());

    private final Activity a;
    private final Runnable onDone;
    private Dialog dialog;
    private TextView status;
    private TextView findBtn;
    private LinearLayout manual;
    private TextView manualLink;
    private EditText macField;
    private EditText keyField;
    private boolean busy;
    private boolean closed;

    private BandPairing(Activity a, Runnable onDone) {
        this.a = a;
        this.onDone = onDone;
    }

    static void show(Activity a, Runnable onDone) {
        try {
            new BandPairing(a, onDone).open();
        } catch (Throwable t) {
            com.isaigu.gymapp.widget.XemsGuard.report("BandPairing.show", t);
        }
    }

    private void open() {
        int textCol = WearableUi.color(a, "text_primary", 0xFFFFFFFF);
        int mutedCol = WearableUi.color(a, "text_secondary", 0xFF9AA0A6);
        int bg = WearableUi.color(a, "bg_screen", 0xFF121212);
        int pad = WearableUi.dp(a, 20);

        LinearLayout box = new LinearLayout(a);
        box.setOrientation(LinearLayout.VERTICAL);
        box.setPadding(pad, pad, pad, pad);

        LinearLayout head = new LinearLayout(a);
        head.setOrientation(LinearLayout.HORIZONTAL);
        head.setGravity(Gravity.CENTER_VERTICAL);
        head.addView(WearableUi.text(a, WearableUi.tr("Сдвояване на гривна", "Pair a band"), 22f, textCol, true),
                new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        TextView close = WearableUi.button(a, WearableUi.tr("Затвори", "Close"),
                WearableUi.color(a, "bg_elevated", 0xFF2A2A2A), textCol);
        close.setOnClickListener(new CloseClick(this));
        head.addView(close);
        box.addView(head);

        TextView steps = WearableUi.text(a, WearableUi.tr(
                "1. В Mi Fitness (гривната трябва да е сдвоена там): Профил → За приложението → докосвай логото много пъти. "
                        + "Записва се архив в Download/wearablelog.\n2. Натисни бутона — приложението намира гривните и ключовете им само.",
                "1. In Mi Fitness (the band must be paired there): Profile → About → tap the logo many times. "
                        + "An archive is saved to Download/wearablelog.\n2. Press the button — the app finds the bands and their keys by itself."),
                14f, mutedCol, false);
        steps.setPadding(0, WearableUi.dp(a, 12), 0, WearableUi.dp(a, 16));
        box.addView(steps);

        findBtn = WearableUi.button(a, WearableUi.tr("Намери гривните", "Find the bands"), 0xFFEA6A2B, 0xFFFFFFFF);
        findBtn.setTextSize(TypedValue.COMPLEX_UNIT_SP, 17f);
        findBtn.setOnClickListener(new FindClick(this));
        box.addView(findBtn, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, WearableUi.dp(a, 56)));

        status = WearableUi.text(a, "", 14f, mutedCol, false);
        status.setPadding(0, WearableUi.dp(a, 12), 0, 0);
        box.addView(status);

        manualLink = WearableUi.button(a, WearableUi.tr("Не успява? Въведи ръчно", "Not working? Enter by hand"),
                WearableUi.color(a, "bg_elevated", 0xFF2A2A2A), textCol);
        manualLink.setVisibility(View.GONE);
        manualLink.setOnClickListener(new ManualClick(this));
        LinearLayout.LayoutParams ml = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, WearableUi.dp(a, 48));
        ml.topMargin = WearableUi.dp(a, 12);
        box.addView(manualLink, ml);

        manual = buildManual(textCol, mutedCol);
        manual.setVisibility(View.GONE);
        box.addView(manual);

        ScrollView sv = new ScrollView(a);
        sv.setBackgroundColor(bg);
        sv.addView(box);
        dialog = new Dialog(a, android.R.style.Theme_Black_NoTitleBar);
        dialog.setContentView(sv);
        dialog.setOnCancelListener(new CancelListener(this));
        dialog.show();
    }

    private LinearLayout buildManual(int textCol, int mutedCol) {
        LinearLayout m = new LinearLayout(a);
        m.setOrientation(LinearLayout.VERTICAL);
        m.setPadding(0, WearableUi.dp(a, 12), 0, 0);
        m.addView(WearableUi.text(a, WearableUi.tr("Ръчно въвеждане", "Manual entry"), 16f, textCol, true));

        LinearLayout macRow = new LinearLayout(a);
        macRow.setOrientation(LinearLayout.HORIZONTAL);
        macRow.setGravity(Gravity.CENTER_VERTICAL);
        macRow.setPadding(0, WearableUi.dp(a, 8), 0, 0);
        macField = field(textCol);
        macField.setHint("MAC  AA:BB:CC:DD:EE:FF");
        macField.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_FLAG_NO_SUGGESTIONS
                | InputType.TYPE_TEXT_FLAG_CAP_CHARACTERS);
        macRow.addView(macField, new LinearLayout.LayoutParams(0, WearableUi.dp(a, 48), 1f));
        TextView pick = WearableUi.button(a, WearableUi.tr("Избери", "Choose"), 0xFF1565C0, 0xFFFFFFFF);
        pick.setOnClickListener(new PickMacClick(this));
        LinearLayout.LayoutParams pl = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, WearableUi.dp(a, 48));
        pl.leftMargin = WearableUi.dp(a, 10);
        macRow.addView(pick, pl);
        m.addView(macRow);

        keyField = field(textCol);
        keyField.setHint(WearableUi.tr("Ключ: 32 символа 0-9 / a-f", "Key: 32 chars 0-9 / a-f"));
        keyField.setTypeface(Typeface.MONOSPACE);
        keyField.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_FLAG_NO_SUGGESTIONS);
        LinearLayout.LayoutParams kl = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, WearableUi.dp(a, 48));
        kl.topMargin = WearableUi.dp(a, 8);
        m.addView(keyField, kl);

        TextView save = WearableUi.button(a, WearableUi.tr("Запази гривната", "Save the band"),
                0xFF2E7D32, 0xFFFFFFFF);
        save.setOnClickListener(new SaveManualClick(this));
        LinearLayout.LayoutParams sl = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, WearableUi.dp(a, 48));
        sl.topMargin = WearableUi.dp(a, 12);
        m.addView(save, sl);
        return m;
    }

    private EditText field(int textCol) {
        EditText e = new EditText(a);
        e.setTextSize(TypedValue.COMPLEX_UNIT_SP, 15f);
        e.setTextColor(textCol);
        e.setSingleLine(true);
        e.setPadding(WearableUi.dp(a, 12), 0, WearableUi.dp(a, 12), 0);
        e.setBackgroundDrawable(WearableUi.rounded(WearableUi.color(a, "bg_elevated", 0xFF1F232C), WearableUi.dp(a, 10)));
        return e;
    }

    // ---------------------------------------------------------------- find in the Mi Fitness log

    private void find() {
        if (busy) {
            return;
        }
        busy = true;
        findBtn.setEnabled(false);
        setStatus(WearableUi.tr("Търся лога на Mi Fitness…", "Looking for the Mi Fitness log…"), false);
        new Thread(new ScanTask(this), "xems-band-scan").start();
    }

    private void scanFinished(MiFitnessLogImport.Found f) {
        if (closed) {
            return;
        }
        if (f != null && f.hasAny()) {
            found(f);
            return;
        }
        setStatus(WearableUi.tr("Автоматично не мога да го прочета. Избери файла от Download/wearablelog.",
                "Cannot read it automatically. Pick the file from Download/wearablelog."), false);
        MiFitnessLogImport.pick(a, new PickedFile(this));
    }

    private void found(MiFitnessLogImport.Found f) {
        int n = 0;
        String firstMac = "";
        String firstKey = "";
        String firstName = "";
        for (MiFitnessLogImport.Dev d : f.devices.values()) {
            WearableConfig.rememberBand(a, d.mac, d.key, d.name);
            n++;
            firstMac = d.mac;
            firstKey = d.key;
            firstName = d.name;
        }
        if (n == 0 && f.key.length() == 32) {
            // an older log format: a key, perhaps without a MAC
            if (f.mac.length() > 0) {
                WearableConfig.rememberBand(a, f.mac, f.key, "");
                n = 1;
                firstMac = f.mac;
                firstKey = f.key;
            } else {
                busy = false;
                findBtn.setEnabled(true);
                showManual(WearableUi.tr("Намерих ключ, но не и MAC. Допълни MAC-а.",
                        "Found a key but no MAC. Add the MAC."));
                keyField.setText(f.key);
                return;
            }
        }
        if (n == 0) {
            failed();
            return;
        }
        if (n == 1 && !WearableConfig.isConfigured(a)) {
            int role = com.isaigu.gymapp.widget.XemsLicense.has(com.isaigu.gymapp.widget.XemsLicense.BAND)
                    ? WearableConfig.ROLE_BOTH : WearableConfig.ROLE_PULSE;
            WearableConfig.assignBandRole(a, firstMac, firstKey, role);
        }
        toast(n == 1
                ? WearableUi.tr("Гривната е добавена ✓", "Band added ✓")
                : WearableUi.tr("Намерени гривни: " + n + ". Избери коя за какво.",
                        "Bands found: " + n + ". Choose what each is for."));
        finish();
    }

    private void failed() {
        busy = false;
        findBtn.setEnabled(true);
        showManual(WearableUi.tr("В избраните файлове няма ключ. Провери, че е логът на Mi Fitness след сдвояване, или въведи ръчно.",
                "No key in the chosen files. Make sure it is the Mi Fitness log after pairing, or enter it by hand."));
    }

    private void showManual(String why) {
        setStatus(why, true);
        manualLink.setVisibility(View.GONE);
        manual.setVisibility(View.VISIBLE);
    }

    private void setStatus(String s, boolean warn) {
        status.setText(s);
        status.setTextColor(warn ? WearableUi.COLOR_ERROR : WearableUi.color(a, "text_secondary", 0xFF9AA0A6));
    }

    private void saveManual() {
        String mac = macField.getText().toString().trim();
        String key = keyField.getText().toString().trim();
        if (!WearableSettingsSection.isValidMac(mac)) {
            toast(WearableUi.tr("Невалиден MAC (12 hex знака)", "Invalid MAC (12 hex chars)"));
            return;
        }
        if (!WearableSettingsSection.isValidKey(key)) {
            toast(WearableUi.tr("Ключът трябва да е 32 hex знака", "The key must be 32 hex chars"));
            return;
        }
        String norm = NotifyWearableBridge.normalizeMac(mac);
        String clean = key.replace(" ", "").replace(":", "").replace("-", "");
        if (clean.startsWith("0x") || clean.startsWith("0X")) {
            clean = clean.substring(2);
        }
        clean = clean.toLowerCase(java.util.Locale.US);
        WearableConfig.rememberBand(a, norm, clean, com.isaigu.gymapp.wearable.xiaomi.XiaomiBand.bondedName(a, norm));
        if (!WearableConfig.isConfigured(a)) {
            int role = com.isaigu.gymapp.widget.XemsLicense.has(com.isaigu.gymapp.widget.XemsLicense.BAND)
                    ? WearableConfig.ROLE_BOTH : WearableConfig.ROLE_PULSE;
            WearableConfig.assignBandRole(a, norm, clean, role);
        }
        toast(WearableUi.tr("Гривната е добавена ✓", "Band added ✓"));
        finish();
    }

    private void finish() {
        close();
        if (onDone != null) {
            onDone.run();
        }
    }

    private void close() {
        closed = true;
        try {
            if (dialog != null) {
                dialog.dismiss();
                dialog = null;
            }
        } catch (Throwable ignored) {
        }
    }

    private void toast(String s) {
        try {
            android.widget.Toast.makeText(a, s, android.widget.Toast.LENGTH_LONG).show();
        } catch (Throwable ignored) {
        }
    }

    // ---------------------------------------------------------------- named listeners / tasks

    private static final class CloseClick implements View.OnClickListener {
        private final BandPairing p;

        CloseClick(BandPairing p) {
            this.p = p;
        }

        @Override
        public void onClick(View v) {
            p.close();
        }
    }

    private static final class CancelListener implements android.content.DialogInterface.OnCancelListener {
        private final BandPairing p;

        CancelListener(BandPairing p) {
            this.p = p;
        }

        @Override
        public void onCancel(android.content.DialogInterface d) {
            p.close();
        }
    }

    private static final class FindClick implements View.OnClickListener {
        private final BandPairing p;

        FindClick(BandPairing p) {
            this.p = p;
        }

        @Override
        public void onClick(View v) {
            p.find();
        }
    }

    private static final class ManualClick implements View.OnClickListener {
        private final BandPairing p;

        ManualClick(BandPairing p) {
            this.p = p;
        }

        @Override
        public void onClick(View v) {
            p.showManual("");
        }
    }

    private static final class PickMacClick implements View.OnClickListener {
        private final BandPairing p;

        PickMacClick(BandPairing p) {
            this.p = p;
        }

        @Override
        public void onClick(View v) {
            WearableBandPicker.show(p.a, p.macField);
        }
    }

    private static final class SaveManualClick implements View.OnClickListener {
        private final BandPairing p;

        SaveManualClick(BandPairing p) {
            this.p = p;
        }

        @Override
        public void onClick(View v) {
            p.saveManual();
        }
    }

    private static final class ScanTask implements Runnable {
        private final BandPairing p;

        ScanTask(BandPairing p) {
            this.p = p;
        }

        @Override
        public void run() {
            MiFitnessLogImport.Found f = null;
            try {
                f = MiFitnessLogImport.scanLocal();
            } catch (Throwable ignored) {
            }
            handler.post(new ScanDone(p, f));
        }
    }

    private static final class ScanDone implements Runnable {
        private final BandPairing p;
        private final MiFitnessLogImport.Found f;

        ScanDone(BandPairing p, MiFitnessLogImport.Found f) {
            this.p = p;
            this.f = f;
        }

        @Override
        public void run() {
            p.scanFinished(f);
        }
    }

    private static final class PickedFile implements MiFitnessLogImport.Done {
        private final BandPairing p;

        PickedFile(BandPairing p) {
            this.p = p;
        }

        @Override
        public void onFound(MiFitnessLogImport.Found f, String problem) {
            if (p.closed) {
                return;
            }
            if (f != null && f.hasAny()) {
                p.found(f);
            } else {
                p.failed();
            }
        }
    }
}
