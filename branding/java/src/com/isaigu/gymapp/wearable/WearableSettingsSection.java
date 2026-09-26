package com.isaigu.gymapp.wearable;

import android.app.Activity;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.InputType;
import android.text.TextWatcher;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

/**
 * Settings → Band: the only place where the band MAC and auth key are entered.
 * Every module (HR dial, AI, band data) reads them from {@link WearableConfig}.
 * Hooked after ThemeUtils.bindThemeSwitch in SettingFragment.onCreateView (apply-ai-session.py).
 */
public final class WearableSettingsSection {
    private static final String TAG = "xems_band_settings";
    private static final long TEST_MS = 60000L;

    private static final Handler handler = new Handler(Looper.getMainLooper());
    private static TextView bandInfoView;
    private static TextView statusView;
    private static EditText macView;
    private static EditText keyView;
    private static long testUntilMs;

    private WearableSettingsSection() {}

    public static void attach(Activity activity, View root) {
        // Access & license card first (it decides what else is shown)
        com.isaigu.gymapp.widget.XemsLicenseSection.attach(activity, root);
        try {
            build(activity, root);
        } catch (Throwable t) {
            com.isaigu.gymapp.widget.XemsGuard.report("WearableSettingsSection.attach", t);
        }
    }

    private static void build(final Activity a, View root) {
        if (a == null || !(root instanceof ViewGroup)) {
            return;
        }
        ViewGroup parent = com.isaigu.gymapp.widget.XemsUi.scrollContent(a, root);
        if (parent == null) {
            return;
        }
        View old = parent.findViewWithTag(TAG);
        if (old != null && old.getParent() instanceof ViewGroup) {
            ((ViewGroup) old.getParent()).removeView(old);
        }
        // Band settings only when a module that uses the band is unlocked (pulse, AI, band app)
        if (!com.isaigu.gymapp.widget.XemsLicense.needsBand()) {
            return;
        }
        WearableConfig.applyDefaultsIfEmpty(a);
        boolean bandApp = com.isaigu.gymapp.widget.XemsLicense.has(com.isaigu.gymapp.widget.XemsLicense.BAND);
        int textCol = WearableUi.color(a, "text_primary", 0xFFFFFFFF);
        int mutedCol = WearableUi.color(a, "text_secondary", 0xFF9AA0A6);
        int cardCol = WearableUi.color(a, "bg_elevated", 0xFF1F232C);

        LinearLayout card = new LinearLayout(a);
        card.setTag(TAG);
        card.setOrientation(LinearLayout.VERTICAL);
        card.setBackgroundDrawable(WearableUi.rounded(cardCol, WearableUi.dp(a, 16)));
        int pad = WearableUi.dp(a, 18);
        card.setPadding(pad, pad, pad, pad);

        TextView title = WearableUi.text(a, WearableUi.tr("Гривна · Xiaomi Smart Band", "Band · Xiaomi Smart Band"),
                22f, textCol, true);
        card.addView(title);
        TextView hint = WearableUi.text(a, WearableUi.tr(
                "Въвежда се веднъж. Ползва се от ♥ пулс, AI сесията и данните от гривната.",
                "Entered once. Used by the ♥ HR dial, the AI session and band data."), 13f, mutedCol, false);
        hint.setPadding(0, WearableUi.dp(a, 4), 0, WearableUi.dp(a, 12));
        card.addView(hint);

        // MAC + picker
        LinearLayout macRow = row(a);
        macRow.addView(label(a, "MAC", mutedCol));
        macView = field(a, textCol);
        macView.setHint("AA:BB:CC:DD:EE:FF");
        macView.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_FLAG_NO_SUGGESTIONS
                | InputType.TYPE_TEXT_FLAG_CAP_CHARACTERS);
        macView.setText(WearableConfig.getBandMac(a));
        macRow.addView(macView, new LinearLayout.LayoutParams(0, WearableUi.dp(a, 44), 1f));
        TextView pick = WearableUi.button(a, WearableUi.tr("Избери", "Choose"), 0xFF1565C0, 0xFFFFFFFF);
        pick.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                WearableBandPicker.show(a, macView);
            }
        });
        macRow.addView(pick, sideButton(a));
        card.addView(macRow);

        // Auth key (hidden once saved) + show/hide
        LinearLayout keyRow = row(a);
        keyRow.setPadding(0, WearableUi.dp(a, 10), 0, 0);
        keyRow.addView(label(a, WearableUi.tr("Ключ", "Key"), mutedCol));
        keyView = field(a, textCol);
        keyView.setHint(WearableUi.tr("32 символа 0-9 / a-f", "32 chars 0-9 / a-f"));
        keyView.setTypeface(Typeface.MONOSPACE);
        keyView.setText(WearableConfig.getAuthKey(a));
        setKeyHidden(WearableConfig.isConfigured(a));
        keyRow.addView(keyView, new LinearLayout.LayoutParams(0, WearableUi.dp(a, 44), 1f));
        final TextView eye = WearableUi.button(a, WearableUi.tr("Покажи", "Show"),
                WearableUi.color(a, "bg_screen", 0xFF2A2A2A), textCol);
        eye.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                boolean hidden = isKeyHidden();
                setKeyHidden(!hidden);
                eye.setText(hidden ? WearableUi.tr("Скрий", "Hide") : WearableUi.tr("Покажи", "Show"));
            }
        });
        keyRow.addView(eye, sideButton(a));
        card.addView(keyRow);
        // From what this tablet already knows: saved bands (MAC + key) and the clipboard
        TextView fromSaved = WearableUi.button(a, WearableUi.tr("От запазените / постави", "From saved / paste"),
                WearableUi.color(a, "bg_screen", 0xFF2A2A2A), textCol);
        fromSaved.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                showSaved(a);
            }
        });
        LinearLayout.LayoutParams fsp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, WearableUi.dp(a, 48));
        fsp.topMargin = WearableUi.dp(a, 10);
        card.addView(fromSaved, fsp);

        // Radio: Band 8 and older use BLE; Band 8 Pro / 9 / 10 use Bluetooth Classic (SPP).
        // Picked from the paired band's name; the manual choice appears only when the name is
        // not recognised (or the trainer already forced one).
        String bandName = com.isaigu.gymapp.wearable.xiaomi.XiaomiBand.bondedName(a,
                WearableConfig.getBandMac(a));
        // Always visible: auto-detection fails when the band name is missing from Bluetooth.
        com.isaigu.gymapp.widget.XemsUi.init(a);
        TextView linkLabel = label(a, WearableUi.tr("Модел гривна", "Band model"), mutedCol);
        linkLabel.setPadding(0, WearableUi.dp(a, 14), 0, WearableUi.dp(a, 6));
        card.addView(linkLabel);
        card.addView(com.isaigu.gymapp.widget.XemsUi.segmented(a, new String[] {
                WearableUi.tr("Авто", "Auto"),
                WearableUi.tr("Band 8 и по-стари", "Band 8 and older"),
                "Band 9 / 10"}, WearableConfig.getBandTransport(a), new TransportPick(a, root)));
        // The band's music screen as the training remote (no app to install on the band).
        LinearLayout remote = !bandApp ? null : com.isaigu.gymapp.widget.XemsUi.toggleRow(a,
                WearableUi.tr("Управление от гривната", "Control from the band"),
                WearableUi.tr("Плъзни до Музика: пулс и блок; ▶ старт/пауза, ⏭ ⏮ сила ±. Приложението XEMS е за канали и стоп. Подреди го най-горе в Mi Fitness.",
                        "Swipe to Music: HR and block; ▶ start/pause, ⏭ ⏮ strength ±. The XEMS app is for channels and stop. Pin it first in Mi Fitness."),
                WearableConfig.isBandRemoteEnabled(a), new RemoteToggle(a));
        if (remote != null) {
            remote.setPadding(0, WearableUi.dp(a, 12), 0, 0);
            card.addView(remote);
        }
        // XEMS app on the band itself (Band 9 / 10 only: installed over the classic link).
        boolean classic = WearableConfig.getBandTransport(a) == 2
                || (WearableConfig.getBandTransport(a) == 0
                && com.isaigu.gymapp.wearable.xiaomi.XiaomiBand.usesClassic(bandName));
        if (classic && bandApp) {
            LinearLayout appRow = row(a);
            appRow.setPadding(0, WearableUi.dp(a, 12), 0, 0);
            final TextView appStatus = WearableUi.text(a, BandAppInstall.statusText(a), 13f, mutedCol, false);
            BandAppInstall.bind(appStatus);
            appRow.addView(appStatus, new LinearLayout.LayoutParams(0,
                    ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            TextView install = WearableUi.button(a, WearableConfig.getBandAppVersion(a) >= BandAppInstall.VERSION
                    ? WearableUi.tr("Преинсталирай", "Reinstall") : WearableUi.tr("Инсталирай", "Install"),
                    WearableUi.color(a, "bg_screen", 0xFF2A2A2A), textCol);
            install.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    BandAppInstall.start(a, appStatus);
                }
            });
            appRow.addView(install, sideButton(a));
            card.addView(appRow);
        }
        bandInfoView = WearableUi.text(a, "", 13f, mutedCol, false);
        bandInfoView.setPadding(0, WearableUi.dp(a, 6), 0, 0);
        card.addView(bandInfoView);

        // Status + test
        LinearLayout bottom = row(a);
        bottom.setPadding(0, WearableUi.dp(a, 14), 0, 0);
        statusView = WearableUi.text(a, "", 14f, mutedCol, true);
        bottom.addView(statusView, new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        TextView test = WearableUi.button(a, WearableUi.tr("Провери връзката", "Test connection"),
                0xFF2E7D32, 0xFFFFFFFF);
        test.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startTest(a);
            }
        });
        bottom.addView(test, sideButton(a));
        card.addView(bottom);

        TextWatcher saver = new Saver(a);
        macView.addTextChangedListener(saver);
        keyView.addTextChangedListener(saver);
        colorFields();

        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.topMargin = WearableUi.dp(a, 28);
        parent.addView(card, lp);
        card.addOnAttachStateChangeListener(new DetachListener());
        scheduleStatus(a);
    }

    private static LinearLayout row(Activity a) {
        LinearLayout r = new LinearLayout(a);
        r.setOrientation(LinearLayout.HORIZONTAL);
        r.setGravity(Gravity.CENTER_VERTICAL);
        return r;
    }

    private static TextView label(Activity a, String s, int color) {
        TextView t = WearableUi.text(a, s, 12f, color, true);
        t.setAllCaps(true);
        t.setMinWidth(WearableUi.dp(a, 64));
        return t;
    }

    private static EditText field(Activity a, int textCol) {
        EditText e = new EditText(a);
        e.setTextSize(TypedValue.COMPLEX_UNIT_SP, 15f);
        e.setTextColor(textCol);
        e.setSingleLine(true);
        e.setPadding(WearableUi.dp(a, 12), 0, WearableUi.dp(a, 12), 0);
        e.setBackgroundDrawable(WearableUi.rounded(WearableUi.color(a, "bg_screen", 0xFF121212),
                WearableUi.dp(a, 10)));
        return e;
    }

    private static LinearLayout.LayoutParams sideButton(Activity a) {
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, WearableUi.dp(a, 44));
        lp.leftMargin = WearableUi.dp(a, 10);
        return lp;
    }

    private static boolean isKeyHidden() {
        return keyView != null && (keyView.getInputType() & InputType.TYPE_TEXT_VARIATION_PASSWORD) != 0;
    }

    private static void setKeyHidden(boolean hidden) {
        if (keyView == null) {
            return;
        }
        int sel = keyView.getSelectionEnd();
        keyView.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_FLAG_NO_SUGGESTIONS
                | (hidden ? InputType.TYPE_TEXT_VARIATION_PASSWORD
                : InputType.TYPE_TEXT_VARIATION_VISIBLE_PASSWORD));
        keyView.setTypeface(Typeface.MONOSPACE);
        if (sel >= 0 && sel <= keyView.length()) {
            keyView.setSelection(sel);
        }
    }

    /** Saved bands (fills MAC + key) and, when the clipboard holds a key, "paste key". */
    static void showSaved(final Activity a) {
        // the band set up before saving existed goes in the list too
        String curMac = WearableConfig.getBandMac(a);
        WearableConfig.rememberBand(a, curMac, WearableConfig.getAuthKey(a),
                com.isaigu.gymapp.wearable.xiaomi.XiaomiBand.bondedName(a, curMac));
        final java.util.List<String[]> bands = WearableConfig.savedBands(a);
        String clip = "";
        try {
            android.content.ClipboardManager cm = (android.content.ClipboardManager)
                    a.getSystemService(android.content.Context.CLIPBOARD_SERVICE);
            if (cm != null && cm.hasPrimaryClip() && cm.getPrimaryClip().getItemCount() > 0) {
                CharSequence t = cm.getPrimaryClip().getItemAt(0).coerceToText(a);
                clip = t != null ? t.toString().replaceAll("[^0-9a-fA-F]", "") : "";
            }
        } catch (Throwable ignored) {
        }
        final String clipKey = clip.length() == 32 ? clip.toLowerCase(java.util.Locale.US) : "";
        final java.util.List<String> labels = new java.util.ArrayList<String>();
        for (String[] b : bands) {
            String name = b[2].length() > 0 ? b[2] : WearableUi.tr("Гривна", "Band");
            labels.add(name + "\n" + b[0] + " · " + WearableUi.tr("ключ …", "key …")
                    + b[1].substring(Math.max(0, b[1].length() - 4)));
        }
        if (clipKey.length() > 0) {
            labels.add(WearableUi.tr("Постави ключа от клипборда (…", "Paste the key from the clipboard (…")
                    + clipKey.substring(28) + ")");
        }
        if (labels.isEmpty()) {
            android.widget.Toast.makeText(a, WearableUi.tr(
                    "Няма запазени гривни. Въведи MAC и ключ веднъж — после ще са тук.",
                    "No saved bands yet. Enter MAC and key once — then they are here."),
                    android.widget.Toast.LENGTH_LONG).show();
            return;
        }
        new android.app.AlertDialog.Builder(a)
                .setTitle(WearableUi.tr("Гривна от запазените", "Band from saved"))
                .setItems(labels.toArray(new String[0]), new android.content.DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(android.content.DialogInterface d, int which) {
                        if (which < bands.size()) {
                            if (macView != null) {
                                macView.setText(bands.get(which)[0]);
                            }
                            if (keyView != null) {
                                keyView.setText(bands.get(which)[1]);
                            }
                        } else if (keyView != null) {
                            keyView.setText(clipKey);
                        }
                    }
                })
                .setNegativeButton(WearableUi.tr("Затвори", "Close"), null)
                .show();
    }

    static boolean isValidKey(String key) {
        String clean = key != null ? key.replace(" ", "").replace(":", "").replace("-", "") : "";
        if (clean.startsWith("0x") || clean.startsWith("0X")) {
            clean = clean.substring(2);
        }
        return clean.matches("[0-9a-fA-F]{32}");
    }

    static boolean isValidMac(String mac) {
        String c = mac != null ? mac.replace(":", "").replace("-", "").replace(" ", "") : "";
        return c.matches("[0-9a-fA-F]{12}");
    }

    private static void colorFields() {
        if (macView != null) {
            String m = macView.getText().toString();
            macView.setTextColor(m.length() == 0 ? WearableUi.COLOR_MUTED
                    : isValidMac(m) ? WearableUi.COLOR_OK : WearableUi.COLOR_ERROR);
        }
        if (keyView != null) {
            String k = keyView.getText().toString();
            keyView.setTextColor(k.length() == 0 ? WearableUi.COLOR_MUTED
                    : isValidKey(k) ? WearableUi.COLOR_OK : WearableUi.COLOR_ERROR);
        }
    }

    private static void flushConfigFromUi(Activity a) {
        String mac = macView != null ? macView.getText().toString().trim() : WearableConfig.getBandMac(a);
        String key = keyView != null ? keyView.getText().toString().trim() : WearableConfig.getAuthKey(a);
        if (isValidMac(mac)) {
            WearableConfig.setBandMac(a, NotifyWearableBridge.normalizeMac(mac));
        }
        if (isValidKey(key)) {
            WearableConfig.setAuthKey(a, key);
        }
    }

    private static void startTest(Activity a) {
        flushConfigFromUi(a);
        if (!WearableConfig.isConfigured(a) || !isValidMac(WearableConfig.getBandMac(a))) {
            toast(a, WearableUi.tr("Въведи валиден MAC и ключ (32 символа)", "Enter a valid MAC and key (32 chars)"));
            return;
        }
        if (!WearableBlePermissions.hasAllBlePermissions(a)) {
            WearableBlePermissions.ensureConnectPermission(a, new Runnable() {
                @Override
                public void run() {
                    startTestAfterPermission(a);
                }
            });
            return;
        }
        startTestAfterPermission(a);
    }

    private static void startTestAfterPermission(Activity a) {
        testUntilMs = System.currentTimeMillis() + TEST_MS;
        NotifyWearableBridge.settingsFullReconnect(a);
        toast(a, WearableUi.tr("Свързване с гривната…", "Connecting to the band…"));
        scheduleStatus(a);
    }

    private static void scheduleStatus(Activity a) {
        handler.removeCallbacks(STATUS);
        handler.post(STATUS);
    }

    private static final Runnable STATUS = new Runnable() {
        @Override
        public void run() {
            if (statusView == null) {
                return;
            }
            try {
                Activity a = WearableUi.asActivity(statusView.getContext());
                refreshStatus(a);
                if (testUntilMs > 0 && System.currentTimeMillis() > testUntilMs) {
                    endTest(a);
                }
            } catch (Throwable t) {
                com.isaigu.gymapp.widget.XemsGuard.report("WearableSettingsSection.status", t);
            }
            handler.postDelayed(this, 1000L);
        }
    };

    private static void refreshStatus(Activity a) {
        if (statusView == null || a == null) {
            return;
        }
        String text;
        int color = WearableUi.COLOR_WAIT;
        String state = NotifyWearableBridge.getBleState();
        int hr = NotifyWearableBridge.getLastHeartRate();
        boolean testing = testUntilMs > System.currentTimeMillis()
                || NotifyWearableBridge.isOwnedBy(NotifyWearableBridge.OWNER_SETTINGS);
        boolean listening = NotifyWearableBridge.isListeningActive();
        if (!WearableConfig.isConfigured(a) || !isValidMac(WearableConfig.getBandMac(a))) {
            text = WearableUi.tr("Не е настроена", "Not set up");
            color = WearableUi.COLOR_MUTED;
        } else if (listening || testing) {
            if (WearableUi.isErrorState(state)) {
                text = WearableUi.stateText(state);
                color = WearableUi.COLOR_ERROR;
            } else if (hr > 0 && "streaming".equals(state)) {
                text = String.valueOf(hr);
                color = WearableUi.COLOR_OK;
            } else {
                text = state != null && state.length() > 0
                        ? WearableUi.stateText(state)
                        : WearableUi.tr("Свързване…", "Connecting…");
                color = WearableUi.COLOR_WAIT;
            }
        } else if (WearableUi.isErrorState(state)) {
            text = WearableUi.stateText(state);
            color = WearableUi.COLOR_ERROR;
        } else {
            text = WearableUi.tr("Запазено ✓ · не е свързана", "Saved ✓ · not connected");
            color = WearableUi.COLOR_OK;
        }
        statusView.setText(text);
        statusView.setTextColor(color);
        if (bandInfoView != null) {
            bandInfoView.setText(bandInfo(a));
        }
    }

    /** Short line under the link choice: "Band 10 · батерия 64 % · на ръката". */
    static String bandInfo(Activity a) {
        String mac = WearableConfig.getBandMac(a);
        String name = com.isaigu.gymapp.wearable.xiaomi.XiaomiBand.bondedName(a, mac);
        String model = com.isaigu.gymapp.wearable.xiaomi.XiaomiBand.modelLabel(name);
        StringBuilder sb = new StringBuilder();
        sb.append(model.length() > 0 ? model : (name != null ? name
                : WearableUi.tr("Гривната не е сдвоена с телефона", "The band is not paired with the phone")));
        if (NotifyWearableBridge.isLinkUp()) {
            int bat = com.isaigu.gymapp.wearable.xiaomi.XiaomiBandStatus.getBatteryPercent();
            if (bat >= 0) {
                sb.append(" · ").append(WearableUi.tr("батерия ", "battery ")).append(bat).append(" %");
            }
            if (com.isaigu.gymapp.wearable.xiaomi.XiaomiBandStatus.isKnownNotWorn()) {
                sb.append(" · ").append(WearableUi.tr("не е на ръката", "not worn"));
            }
        }
        return sb.toString();
    }

    static final class RemoteToggle implements com.isaigu.gymapp.widget.XemsUi.OnToggle {
        private final Activity a;

        RemoteToggle(Activity a) {
            this.a = a;
        }

        @Override
        public void onToggle(boolean on) {
            WearableConfig.setBandRemoteEnabled(a, on);
        }
    }

    static final class TransportPick implements com.isaigu.gymapp.widget.XemsUi.OnIndex {
        private final Activity a;
        private final View root;

        TransportPick(Activity a, View root) {
            this.a = a;
            this.root = root;
        }

        @Override
        public void onIndex(int index) {
            try {
                WearableConfig.setBandTransport(a, index);
                build(a, root);
            } catch (Throwable t) {
                com.isaigu.gymapp.widget.XemsGuard.report("WearableSettingsSection.transport", t);
            }
        }
    }

    private static void endTest(Activity a) {
        testUntilMs = 0;
        NotifyWearableBridge.release(a, NotifyWearableBridge.OWNER_SETTINGS);
    }

    private static void toast(Activity a, String s) {
        try {
            Toast.makeText(a, s, Toast.LENGTH_SHORT).show();
        } catch (Throwable ignored) {
        }
    }

    /** Saves each valid value as soon as it is typed or picked. */
    static final class Saver implements TextWatcher {
        private final Activity activity;

        Saver(Activity activity) {
            this.activity = activity;
        }

        @Override
        public void beforeTextChanged(CharSequence s, int start, int count, int after) {}

        @Override
        public void onTextChanged(CharSequence s, int start, int before, int count) {}

        @Override
        public void afterTextChanged(Editable s) {
            colorFields();
            String mac = macView != null ? macView.getText().toString().trim() : "";
            String key = keyView != null ? keyView.getText().toString().trim() : "";
            if (isValidMac(mac)) {
                WearableConfig.setBandMac(activity, NotifyWearableBridge.normalizeMac(mac));
            } else if (mac.length() == 0) {
                WearableConfig.setBandMac(activity, "");
            }
            if (isValidKey(key) || key.length() == 0) {
                WearableConfig.setAuthKey(activity, key);
            }
            if (isValidMac(mac)) {
                String norm = NotifyWearableBridge.normalizeMac(mac);
                if (isValidKey(key)) {
                    // a complete pair: remember it for next time (another band, reinstall)
                    WearableConfig.rememberBand(activity, norm, key,
                            com.isaigu.gymapp.wearable.xiaomi.XiaomiBand.bondedName(activity, norm));
                } else if (key.length() == 0 && keyView != null) {
                    // a known band was picked: its key comes with it
                    String saved = WearableConfig.savedKeyFor(activity, norm);
                    if (saved.length() == 32) {
                        keyView.setText(saved);
                    }
                }
            }
            refreshStatus(activity);
        }
    }

    static final class DetachListener implements View.OnAttachStateChangeListener {
        @Override
        public void onViewAttachedToWindow(View v) {}

        @Override
        public void onViewDetachedFromWindow(View v) {
            handler.removeCallbacks(STATUS);
            if (testUntilMs > 0) {
                endTest(WearableUi.asActivity(v.getContext()));
            }
            statusView = null;
            macView = null;
            keyView = null;
        }
    }
}
