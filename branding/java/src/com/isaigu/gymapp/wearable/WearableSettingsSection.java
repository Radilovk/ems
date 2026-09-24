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
        ViewGroup parent = (ViewGroup) root;
        View old = parent.findViewWithTag(TAG);
        if (old != null) {
            parent.removeView(old);
        }
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

        // Radio: Band 8 and older use BLE; Band 8 Pro / 9 / 10 use Bluetooth Classic (SPP).
        // Picked from the paired band's name; the manual choice appears only when the name is
        // not recognised (or the trainer already forced one).
        String bandName = com.isaigu.gymapp.wearable.xiaomi.XiaomiBand.bondedName(a,
                WearableConfig.getBandMac(a));
        boolean known = com.isaigu.gymapp.wearable.xiaomi.XiaomiBand.isKnownModel(bandName);
        if (!known || WearableConfig.getBandTransport(a) != 0) {
            com.isaigu.gymapp.widget.XemsUi.init(a);
            TextView linkLabel = label(a, WearableUi.tr("Модел гривна", "Band model"), mutedCol);
            linkLabel.setPadding(0, WearableUi.dp(a, 14), 0, WearableUi.dp(a, 6));
            card.addView(linkLabel);
            card.addView(com.isaigu.gymapp.widget.XemsUi.segmented(a, new String[] {
                    WearableUi.tr("Авто", "Auto"),
                    WearableUi.tr("Band 8 и по-стари", "Band 8 and older"),
                    "Band 9 / 10"}, WearableConfig.getBandTransport(a), new TransportPick(a, root)));
        }
        // The band's music screen as the training remote (no app to install on the band).
        LinearLayout remote = com.isaigu.gymapp.widget.XemsUi.toggleRow(a,
                WearableUi.tr("Управление от гривната", "Control from the band"),
                WearableUi.tr("Музикалният екран на гривната показва пулс и блок; ▶ старт/пауза, ⏭ ⏮ сила ±",
                        "The band's music screen shows HR and block; ▶ start/pause, ⏭ ⏮ strength ±"),
                WearableConfig.isBandRemoteEnabled(a), new RemoteToggle(a));
        remote.setPadding(0, WearableUi.dp(a, 12), 0, 0);
        card.addView(remote);
        // XEMS app on the band itself (Band 9 / 10 only: installed over the classic link).
        boolean classic = WearableConfig.getBandTransport(a) == 2
                || (WearableConfig.getBandTransport(a) == 0
                && com.isaigu.gymapp.wearable.xiaomi.XiaomiBand.usesClassic(bandName));
        if (classic) {
            LinearLayout appRow = row(a);
            appRow.setPadding(0, WearableUi.dp(a, 12), 0, 0);
            final TextView appStatus = WearableUi.text(a,
                    WearableUi.tr("XEMS на гривната: пулс, блок, старт/пауза, сила ±",
                            "XEMS on the band: HR, block, start/pause, strength ±"), 13f, mutedCol, false);
            appRow.addView(appStatus, new LinearLayout.LayoutParams(0,
                    ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            TextView install = WearableUi.button(a, WearableUi.tr("Инсталирай", "Install"),
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

    private static void startTest(Activity a) {
        if (!WearableConfig.isConfigured(a) || !isValidMac(WearableConfig.getBandMac(a))) {
            toast(a, WearableUi.tr("Въведи валиден MAC и ключ (32 символа)", "Enter a valid MAC and key (32 chars)"));
            return;
        }
        testUntilMs = System.currentTimeMillis() + TEST_MS;
        NotifyWearableBridge.reconnect(a, NotifyWearableBridge.OWNER_SETTINGS);
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
        if (!WearableConfig.isConfigured(a) || !isValidMac(WearableConfig.getBandMac(a))) {
            text = WearableUi.tr("Не е настроена", "Not set up");
            color = WearableUi.COLOR_MUTED;
        } else if (NotifyWearableBridge.isListeningActive() && NotifyWearableBridge.isLinkUp()) {
            text = hr > 0 && "streaming".equals(state)
                    ? WearableUi.tr("Работи · ", "Working · ") + hr + WearableUi.tr(" уд/мин", " bpm")
                    : WearableUi.stateText(state);
            color = hr > 0 ? WearableUi.COLOR_OK : WearableUi.COLOR_WAIT;
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
