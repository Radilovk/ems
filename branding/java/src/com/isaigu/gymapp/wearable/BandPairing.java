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
 * The one place a band is paired: read the key + MAC from the newest Mi Fitness log (a key without a MAC →
 * the band is found over Bluetooth, {@link BandMacFinder}); only if that finds nothing,
 * offer typing the MAC and key by hand. Found bands go to the saved list; the settings screen then says
 * what each one is for. No lambdas / anonymous classes.
 */
final class BandPairing {

    private static final Handler handler = new Handler(Looper.getMainLooper());

    private final Activity a;
    private final Runnable onDone;
    private Dialog dialog;
    private TextView status;
    private LinearLayout choices;
    private TextView pickLink;
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
                        + "Записва се архив в Download/wearablelog.\n2. Тук търсенето тръгва само: най-новият архив, всички гривни, "
                        + "ключовете и MAC-овете. Избираш коя за какво. Първия път Android пита веднъж за папката.",
                "1. In Mi Fitness (the band must be paired there): Profile → About → tap the logo many times. "
                        + "An archive is saved to Download/wearablelog.\n2. The search starts by itself here: newest archive, every band, "
                        + "keys and MACs. You choose what each is for. The first time Android asks once for the folder."),
                14f, mutedCol, false);
        steps.setPadding(0, WearableUi.dp(a, 12), 0, WearableUi.dp(a, 16));
        box.addView(steps);

        findBtn = WearableUi.button(a, WearableUi.tr("Търси пак", "Search again"), 0xFFEA6A2B, 0xFFFFFFFF);
        findBtn.setTextSize(TypedValue.COMPLEX_UNIT_SP, 17f);
        findBtn.setOnClickListener(new FindClick(this));
        box.addView(findBtn, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, WearableUi.dp(a, 56)));

        status = WearableUi.text(a, "", 14f, mutedCol, false);
        status.setPadding(0, WearableUi.dp(a, 12), 0, 0);
        box.addView(status);

        choices = new LinearLayout(a);
        choices.setOrientation(LinearLayout.VERTICAL);
        box.addView(choices);

        pickLink = WearableUi.button(a, WearableUi.tr("Избери файла ръчно", "Pick the file by hand"),
                WearableUi.color(a, "bg_elevated", 0xFF2A2A2A), textCol);
        pickLink.setVisibility(View.GONE);
        pickLink.setOnClickListener(new PickFileClick(this));
        LinearLayout.LayoutParams fl = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, WearableUi.dp(a, 48));
        fl.topMargin = WearableUi.dp(a, 12);
        box.addView(pickLink, fl);

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
        handler.post(new FindClick(this));                // one tap: the search starts as the screen opens
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
        choices.removeAllViews();
        pickLink.setVisibility(View.GONE);
        setStatus(WearableUi.tr("Търся най-новия лог на Mi Fitness…", "Looking for the newest Mi Fitness log…"), false);
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
        if ((f == null || f.zips == 0) && MiFitnessLogImport.tree(a) == null) {
            // Android hides other apps' files in Download: one grant of that folder, then it is automatic.
            setStatus(WearableUi.tr("Еднократно разрешение: в прозореца натисни „Използвай тази папка“ → „Разреши“. "
                            + "Оттук нататък логът се чете сам.",
                    "One-time permission: tap “Use this folder” → “Allow”. From then on the log is read by itself."), false);
            MiFitnessLogImport.grantFolder(a, new PickedFile(this));
            return;
        }
        failed(null);
    }

    private void pickFile() {
        if (busy) {
            return;
        }
        busy = true;
        findBtn.setEnabled(false);
        MiFitnessLogImport.pick(a, new PickedFile(this));
    }

    private void found(MiFitnessLogImport.Found f) {
        java.util.List<String[]> bands = new java.util.ArrayList<String[]>();
        for (MiFitnessLogImport.Dev d : f.devices.values()) {
            bands.add(new String[] {d.mac, d.key, d.name});
        }
        if (bands.isEmpty() && f.key.length() == 32) {
            // an older log format: a key, perhaps without a MAC
            if (f.mac.length() > 0) {
                bands.add(new String[] {f.mac, f.key, f.name});
            } else {
                findMac(f.key, f.macHint, f.name);
                return;
            }
        }
        if (bands.isEmpty()) {
            failed(null);
            return;
        }
        showBands(bands);
    }

    /** Every band found: saved, and each gets its role right here (Off / Pulse / Control / both). */
    private void showBands(java.util.List<String[]> bands) {
        busy = false;
        findBtn.setEnabled(true);
        manual.setVisibility(View.GONE);
        pickLink.setVisibility(View.GONE);
        shown = bands;
        for (int i = bands.size() - 1; i >= 0; i--) {
            String[] b = bands.get(i);
            b[0] = NotifyWearableBridge.normalizeMac(b[0]);
            WearableConfig.rememberBand(a, b[0], b[1], b[2]);
        }
        if (bands.size() == 1) {
            assignFirst(bands.get(0)[0], bands.get(0)[1]);
        }
        renderBands();
    }

    private java.util.List<String[]> shown;
    private boolean savedOne;

    private void renderBands() {
        if (closed || shown == null) {
            return;
        }
        int textCol = WearableUi.color(a, "text_primary", 0xFFFFFFFF);
        int mutedCol = WearableUi.color(a, "text_secondary", 0xFF9AA0A6);
        boolean bandApp = com.isaigu.gymapp.widget.XemsLicense.has(com.isaigu.gymapp.widget.XemsLicense.BAND);
        setStatus(shown.size() == 1
                ? WearableUi.tr("Намерена гривна ✓ За какво да се ползва?", "Band found ✓ What is it for?")
                : WearableUi.tr("Намерени гривни: " + shown.size() + " ✓ Избери за какво е всяка.",
                        "Bands found: " + shown.size() + " ✓ Choose what each one is for."), false);
        choices.removeAllViews();
        for (int i = 0; i < shown.size(); i++) {
            String[] b = shown.get(i);
            LinearLayout card = new LinearLayout(a);
            card.setOrientation(LinearLayout.VERTICAL);
            int p = WearableUi.dp(a, 12);
            card.setPadding(p, p, p, p);
            card.setBackgroundDrawable(WearableUi.rounded(WearableUi.color(a, "bg_elevated", 0xFF1F232C), WearableUi.dp(a, 12)));
            String name = b[2] != null && b[2].trim().length() > 0 ? b[2].trim() : WearableUi.tr("Гривна", "Band");
            card.addView(WearableUi.text(a, name, 16f, textCol, true));
            card.addView(WearableUi.text(a, b[0], 12f, mutedCol, false));
            int role = WearableConfig.roleOfBand(a, b[0]);
            String[] labels = bandApp
                    ? new String[] {WearableUi.tr("Изкл.", "Off"), WearableUi.tr("Пулс", "Pulse"),
                            WearableUi.tr("Управление", "Control"), WearableUi.tr("Пулс + упр.", "Pulse + control")}
                    : new String[] {WearableUi.tr("Изкл.", "Off"), WearableUi.tr("Пулс", "Pulse")};
            int index = role == WearableConfig.ROLE_OFF ? 0 : !bandApp ? 1
                    : role == WearableConfig.ROLE_PULSE ? 1 : role == WearableConfig.ROLE_REMOTE ? 2 : 3;
            LinearLayout.LayoutParams sp = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            sp.topMargin = WearableUi.dp(a, 10);
            card.addView(com.isaigu.gymapp.widget.XemsUi.segmented(a, labels, index,
                    new RolePick(this, b[0], b[1], bandApp)), sp);
            LinearLayout.LayoutParams cl = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            cl.topMargin = WearableUi.dp(a, 10);
            choices.addView(card, cl);
        }
        TextView done = WearableUi.button(a, WearableUi.tr("Готово", "Done"), 0xFF2E7D32, 0xFFFFFFFF);
        done.setTextSize(TypedValue.COMPLEX_UNIT_SP, 17f);
        done.setOnClickListener(new DoneClick(this));
        LinearLayout.LayoutParams dl = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, WearableUi.dp(a, 56));
        dl.topMargin = WearableUi.dp(a, 16);
        choices.addView(done, dl);
    }

    private void pickRole(String mac, String key, int index, boolean bandApp) {
        int role = index == 0 ? WearableConfig.ROLE_OFF : !bandApp ? WearableConfig.ROLE_BOTH
                : index == 1 ? WearableConfig.ROLE_PULSE : index == 2 ? WearableConfig.ROLE_REMOTE : WearableConfig.ROLE_BOTH;
        WearableConfig.assignBandRole(a, mac, key, role);
        try {
            NotifyWearableBridge.onControlBandChanged(a);
            NotifyWearableBridge.onRoleChanged(a);
        } catch (Throwable ignored) {
        }
        renderBands();                                   // a band that clashes is switched off: show it
    }

    private void assignFirst(String mac, String key) {
        if (!WearableConfig.isConfigured(a)) {
            int role = com.isaigu.gymapp.widget.XemsLicense.has(com.isaigu.gymapp.widget.XemsLicense.BAND)
                    ? WearableConfig.ROLE_BOTH : WearableConfig.ROLE_PULSE;
            WearableConfig.assignBandRole(a, mac, key, role);
        }
    }

    // ---------------------------------------------------------------- key without MAC: find the band by Bluetooth

    private void findMac(String key, String hint, String name) {
        setStatus(WearableUi.tr("Ключът е намерен ✓ Търся гривната по Bluetooth — дръж я до таблета…",
                "Key found ✓ Looking for the band over Bluetooth — keep it near the tablet…"), false);
        BandMacFinder.find(a, hint, new MacFound(this, key, name));
    }

    private void macResult(java.util.List<String[]> bands, String key, String name) {
        if (closed) {
            return;
        }
        if (bands.size() == 1) {
            String[] b = bands.get(0);
            java.util.List<String[]> one = new java.util.ArrayList<String[]>();
            one.add(new String[] {b[0], key, b[1].length() > 0 ? b[1] : name});
            showBands(one);
            return;
        }
        busy = false;
        findBtn.setEnabled(true);
        if (bands.isEmpty()) {
            showManual(WearableUi.tr("Ключът е намерен ✓, но гривната не се вижда по Bluetooth. Включи Bluetooth, дръж гривната "
                            + "до таблета и натисни „Търси пак“ — или въведи MAC-а.",
                    "Key found ✓, but the band is not visible over Bluetooth. Turn Bluetooth on, keep the band near the "
                            + "tablet and press “Search again” — or type the MAC."));
            keyField.setText(key);
            return;
        }
        setStatus(WearableUi.tr("Ключът е намерен ✓ Коя е твоята гривна?", "Key found ✓ Which one is your band?"), false);
        choices.removeAllViews();
        int textCol = WearableUi.color(a, "text_primary", 0xFFFFFFFF);
        for (int i = 0; i < bands.size(); i++) {
            String[] b = bands.get(i);
            TextView row = WearableUi.button(a, (b[1].length() > 0 ? b[1] + "\n" : "") + b[0],
                    WearableUi.color(a, "bg_elevated", 0xFF2A2A2A), textCol);
            row.setOnClickListener(new ChoiceClick(this, b[0], key, b[1]));
            LinearLayout.LayoutParams rl = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, WearableUi.dp(a, 64));
            rl.topMargin = WearableUi.dp(a, 10);
            choices.addView(row, rl);
        }
    }

    private void saveBand(String mac, String key, String name) {
        String norm = NotifyWearableBridge.normalizeMac(mac);
        WearableConfig.rememberBand(a, norm, key, name);
        assignFirst(norm, key);
        savedOne = true;
        toast(WearableUi.tr("Гривната е добавена ✓", "Band added ✓"));
        finish();
    }

    private void failed(String problem) {
        busy = false;
        findBtn.setEnabled(true);
        pickLink.setVisibility(View.VISIBLE);
        if ("cancelled".equals(problem)) {
            setStatus(WearableUi.tr("Без достъп до папката логът не може да се прочете сам. Натисни „Търси пак“ "
                            + "и избери „Използвай тази папка“.",
                    "Without access to the folder the log cannot be read by itself. Press “Search again” "
                            + "and choose “Use this folder”."), true);
            return;
        }
        showManual(WearableUi.tr("В логовете няма ключ. В Mi Fitness (с гривната сдвоена там) направи нов лог "
                        + "и натисни „Търси пак“ — или въведи ръчно.",
                "No key in the logs. In Mi Fitness (with the band paired there) make a new log and press "
                        + "“Search again” — or enter it by hand."));
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
        saveBand(norm, clean, com.isaigu.gymapp.wearable.xiaomi.XiaomiBand.bondedName(a, norm));
    }

    private void finish() {
        close();
    }

    /** Closing after bands were saved (Done, Close or Back) refreshes the settings list. */
    private void close() {
        if (closed) {
            return;
        }
        if (onDone != null && (shown != null || savedOne)) {
            handler.post(onDone);
        }
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

    private static final class FindClick implements View.OnClickListener, Runnable {
        private final BandPairing p;

        FindClick(BandPairing p) {
            this.p = p;
        }

        @Override
        public void onClick(View v) {
            p.find();
        }

        @Override
        public void run() {
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
                f = MiFitnessLogImport.scanLocal(p.a);
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

    private static final class RolePick implements com.isaigu.gymapp.widget.XemsUi.OnIndex {
        private final BandPairing p;
        private final String mac;
        private final String key;
        private final boolean bandApp;

        RolePick(BandPairing p, String mac, String key, boolean bandApp) {
            this.p = p;
            this.mac = mac;
            this.key = key;
            this.bandApp = bandApp;
        }

        @Override
        public void onIndex(int index) {
            try {
                p.pickRole(mac, key, index, bandApp);
            } catch (Throwable t) {
                com.isaigu.gymapp.widget.XemsGuard.report("BandPairing.role", t);
            }
        }
    }

    private static final class DoneClick implements View.OnClickListener {
        private final BandPairing p;

        DoneClick(BandPairing p) {
            this.p = p;
        }

        @Override
        public void onClick(View v) {
            p.finish();
        }
    }

    private static final class PickFileClick implements View.OnClickListener {
        private final BandPairing p;

        PickFileClick(BandPairing p) {
            this.p = p;
        }

        @Override
        public void onClick(View v) {
            p.pickFile();
        }
    }

    private static final class ChoiceClick implements View.OnClickListener {
        private final BandPairing p;
        private final String mac;
        private final String key;
        private final String name;

        ChoiceClick(BandPairing p, String mac, String key, String name) {
            this.p = p;
            this.mac = mac;
            this.key = key;
            this.name = name;
        }

        @Override
        public void onClick(View v) {
            java.util.List<String[]> one = new java.util.ArrayList<String[]>();
            one.add(new String[] {mac, key, name});
            p.showBands(one);
        }
    }

    private static final class MacFound implements BandMacFinder.Result {
        private final BandPairing p;
        private final String key;
        private final String name;

        MacFound(BandPairing p, String key, String name) {
            this.p = p;
            this.key = key;
            this.name = name;
        }

        @Override
        public void onBands(java.util.List<String[]> bands) {
            p.macResult(bands, key, name);
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
                p.failed(problem);
            }
        }
    }
}
