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

        card.addView(WearableUi.text(a, WearableUi.tr("Гривни · Xiaomi Smart Band", "Bands · Xiaomi Smart Band"),
                22f, textCol, true));
        TextView hint = WearableUi.text(a, WearableUi.tr(
                "Сдвои гривната веднъж, после избери за какво я ползваш.",
                "Pair the band once, then choose what it is used for."), 13f, mutedCol, false);
        hint.setPadding(0, WearableUi.dp(a, 4), 0, WearableUi.dp(a, 12));
        card.addView(hint);

        // ---- paired bands, each with its own job
        java.util.List<String[]> bands = knownBands(a);
        int active = 0;
        if (bands.isEmpty()) {
            TextView none = WearableUi.text(a, WearableUi.tr("Още няма сдвоена гривна.", "No band paired yet."),
                    15f, textCol, false);
            none.setPadding(0, WearableUi.dp(a, 4), 0, WearableUi.dp(a, 8));
            card.addView(none);
        }
        for (int i = 0; i < bands.size(); i++) {
            String[] b = bands.get(i);
            if (WearableConfig.roleOfBand(a, b[0]) != WearableConfig.ROLE_OFF) {
                active++;
            }
            LinearLayout.LayoutParams rp = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            rp.bottomMargin = WearableUi.dp(a, 10);
            card.addView(bandRow(a, root, b, bandApp, textCol, mutedCol), rp);
        }
        if (bands.size() > 1 && bandApp) {
            TextView two = WearableUi.text(a, WearableUi.tr(
                    "С две гривни: едната е Пулс (на клиента), другата Управление (на треньора).",
                    "With two bands: one is Pulse (on the client), the other Control (the trainer's)."),
                    12f, mutedCol, false);
            two.setPadding(0, 0, 0, WearableUi.dp(a, 8));
            card.addView(two);
        }
        TextView pair = WearableUi.button(a, bands.isEmpty()
                ? WearableUi.tr("Сдвои гривна", "Pair a band")
                : WearableUi.tr("＋ Сдвои друга гривна", "＋ Pair another band"), 0xFFEA6A2B, 0xFFFFFFFF);
        pair.setOnClickListener(new PairClick(a, root));
        card.addView(pair, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, WearableUi.dp(a, 50)));

        if (active > 0) {
            addConnectionPart(a, card, root, bandApp, textCol, mutedCol);
        } else {
            bandInfoView = null;
            statusView = null;
        }

        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.topMargin = WearableUi.dp(a, 28);
        parent.addView(card, lp);
        card.addOnAttachStateChangeListener(new DetachListener());
        if (active > 0) {
            scheduleStatus(a);
        }
    }

    /** Saved bands, plus any active band that was set before saving existed. Newest first. */
    private static java.util.List<String[]> knownBands(Activity a) {
        if (WearableConfig.isConfigured(a)) {
            ensureSaved(a, WearableConfig.getBandMac(a), WearableConfig.getAuthKey(a));
        }
        if (WearableConfig.hasControlBand(a)) {
            ensureSaved(a, WearableConfig.getControlMac(a), WearableConfig.getControlKey(a));
        }
        return WearableConfig.savedBands(a);
    }

    private static void ensureSaved(Activity a, String mac, String key) {
        String clean = key == null ? "" : key.replace(" ", "").replace(":", "").replace("-", "");
        if (clean.startsWith("0x") || clean.startsWith("0X")) {
            clean = clean.substring(2);
        }
        if (WearableConfig.savedKeyFor(a, NotifyWearableBridge.normalizeMac(mac)).length() != 32) {
            WearableConfig.rememberBand(a, NotifyWearableBridge.normalizeMac(mac), clean.toLowerCase(java.util.Locale.US),
                    com.isaigu.gymapp.wearable.xiaomi.XiaomiBand.bondedName(a, mac));
        }
    }

    private static View bandRow(final Activity a, View root, String[] b, boolean bandApp, int textCol, int mutedCol) {
        String mac = b[0];
        String name = b[2] != null ? b[2].trim() : "";
        if (name.length() == 0) {
            String bonded = com.isaigu.gymapp.wearable.xiaomi.XiaomiBand.bondedName(a, mac);
            name = bonded != null ? bonded.trim() : "";
        }
        if (name.length() == 0) {
            name = WearableUi.tr("Гривна", "Band");
        }
        int role = WearableConfig.roleOfBand(a, mac);

        LinearLayout box = new LinearLayout(a);
        box.setOrientation(LinearLayout.VERTICAL);
        box.setBackgroundDrawable(WearableUi.rounded(WearableUi.color(a, "bg_screen", 0xFF121212), WearableUi.dp(a, 12)));
        int p = WearableUi.dp(a, 12);
        box.setPadding(p, p, p, p);

        LinearLayout head = row(a);
        LinearLayout titles = new LinearLayout(a);
        titles.setOrientation(LinearLayout.VERTICAL);
        titles.addView(WearableUi.text(a, name, 16f, textCol, true));
        titles.addView(WearableUi.text(a, mac, 12f, mutedCol, false));
        head.addView(titles, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        TextView forget = WearableUi.button(a, WearableUi.tr("Забрави", "Forget"),
                WearableUi.color(a, "bg_elevated", 0xFF1F232C), mutedCol);
        forget.setOnClickListener(new ForgetClick(a, root, mac, name));
        head.addView(forget, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, WearableUi.dp(a, 36)));
        box.addView(head);

        String[] labels = bandApp
                ? new String[] {WearableUi.tr("Изкл.", "Off"), WearableUi.tr("Пулс", "Pulse"),
                        WearableUi.tr("Управление", "Control"), WearableUi.tr("Пулс + упр.", "Pulse + control")}
                : new String[] {WearableUi.tr("Изкл.", "Off"), WearableUi.tr("Пулс", "Pulse")};
        int index;
        if (role == WearableConfig.ROLE_OFF) {
            index = 0;
        } else if (!bandApp) {
            index = 1;
        } else {
            index = role == WearableConfig.ROLE_PULSE ? 1 : role == WearableConfig.ROLE_REMOTE ? 2 : 3;
        }
        LinearLayout.LayoutParams sp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        sp.topMargin = WearableUi.dp(a, 10);
        box.addView(com.isaigu.gymapp.widget.XemsUi.segmented(a, labels, index,
                new BandRolePick(a, root, mac, b[1], bandApp)), sp);

        String what = role == WearableConfig.ROLE_OFF
                ? WearableUi.tr("Не се ползва.", "Not used.")
                : role == WearableConfig.ROLE_PULSE
                ? WearableUi.tr("Пулс за ♥, AI сесията и калориите. Не управлява тренировката.",
                        "Heart rate for ♥, the AI session and calories. Does not control the training.")
                : role == WearableConfig.ROLE_REMOTE
                ? WearableUi.tr("Старт, пауза и сила от гривната. Пулсът ѝ не се ползва.",
                        "Start, pause and strength from the band. Its heart rate is not used.")
                : WearableUi.tr("Пулс за ♥ и AI, и управление на тренировката от ръката.",
                        "Heart rate for ♥ and AI, and training control from the wrist.");
        TextView t = WearableUi.text(a, what, 12.5f, mutedCol, false);
        t.setPadding(0, WearableUi.dp(a, 6), 0, 0);
        box.addView(t);
        return box;
    }

    /** Link model, remote options, the band app, live status and the connection test (for active bands). */
    private static void addConnectionPart(final Activity a, LinearLayout card, View root, boolean bandApp,
            int textCol, int mutedCol) {
        TextView linkLabel = WearableUi.text(a, WearableUi.tr("Модел гривна", "Band model"), 14f, textCol, true);
        linkLabel.setPadding(0, WearableUi.dp(a, 16), 0, WearableUi.dp(a, 6));
        card.addView(linkLabel);
        String bandName = com.isaigu.gymapp.wearable.xiaomi.XiaomiBand.bondedName(a, WearableConfig.getBandMac(a));
        com.isaigu.gymapp.widget.XemsUi.init(a);
        card.addView(com.isaigu.gymapp.widget.XemsUi.segmented(a, new String[] {
                WearableUi.tr("Авто", "Auto"),
                WearableUi.tr("Band 8 и по-стари", "Band 8 and older"),
                "Band 9 / 10"}, WearableConfig.getBandTransport(a), new TransportPick(a, root)));
        // The band's music screen as the training remote (no app to install on the band).
        LinearLayout remote = !bandApp || !WearableConfig.usesRemote(a) ? null : com.isaigu.gymapp.widget.XemsUi.toggleRow(a,
                WearableUi.tr("Управление от гривната", "Control from the band"),
                WearableUi.tr("Плъзни до Музика: пулс и блок; ▶ старт/пауза, ⏭ ⏮ сила ±.",
                        "Swipe to Music: HR and block; ▶ start/pause, ⏭ ⏮ strength ±."),
                WearableConfig.isBandRemoteEnabled(a), new RemoteToggle(a));
        if (remote != null) {
            remote.setPadding(0, WearableUi.dp(a, 12), 0, 0);
            card.addView(remote);
            LinearLayout autoOpen = com.isaigu.gymapp.widget.XemsUi.toggleRow(a,
                    WearableUi.tr("Отваряй XEMS на гривната", "Open XEMS on the band"),
                    WearableUi.tr("При старт на тренировка или AI сесия приложението се показва само (Band 9 / 10).",
                            "When a workout or AI session starts the app comes up by itself (Band 9 / 10)."),
                    WearableConfig.isBandAutoOpen(a), new AutoOpenToggle(a));
            autoOpen.setPadding(0, WearableUi.dp(a, 12), 0, 0);
            card.addView(autoOpen);
        }
        // XEMS app on the band itself (Band 9 / 10 only: installed over the classic link).
        boolean classic = WearableConfig.getBandTransport(a) == 2
                || (WearableConfig.getBandTransport(a) == 0
                && com.isaigu.gymapp.wearable.xiaomi.XiaomiBand.usesClassic(bandName));
        if (classic && bandApp) {
            TextView openHint = WearableUi.text(a,
                    WearableUi.tr("XEMS се отваря на гривната сам при старт на тренировка (настройка по-горе). Ръчно: бутонът по-долу, или на гривната — вдигни китката, плъзни нагоре, превърти до XEMS.",
                            "XEMS opens on the band by itself when a workout starts (setting above). By hand: the button below, or on the band — raise the wrist, swipe up, scroll to XEMS."),
                    13f, mutedCol, false);
            openHint.setPadding(0, WearableUi.dp(a, 12), 0, 0);
            card.addView(openHint);
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
            LinearLayout launchRow = row(a);
            launchRow.setPadding(0, WearableUi.dp(a, 10), 0, 0);
            TextView open = WearableUi.button(a, WearableUi.tr("Отвори на гривната", "Open on the band"),
                    0xFF2E7D32, 0xFFFFFFFF);
            open.setOnClickListener(new OpenOnBand(a));
            launchRow.addView(open, new LinearLayout.LayoutParams(0, WearableUi.dp(a, 44), 1f));
            card.addView(launchRow);
        }
        bandInfoView = WearableUi.text(a, "", 13f, mutedCol, false);
        bandInfoView.setPadding(0, WearableUi.dp(a, 10), 0, 0);
        card.addView(bandInfoView);

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
    }

    static final class PairClick implements View.OnClickListener {
        private final Activity a;
        private final View root;

        PairClick(Activity a, View root) {
            this.a = a;
            this.root = root;
        }

        @Override
        public void onClick(View v) {
            BandPairing.show(a, new Rebuild(a, root));
        }
    }

    /** What one band is for: Off / Pulse / Control / both. Conflicts (two pulse bands...) are resolved in the config. */
    static final class BandRolePick implements com.isaigu.gymapp.widget.XemsUi.OnIndex {
        private final Activity a;
        private final View root;
        private final String mac;
        private final String key;
        private final boolean bandApp;

        BandRolePick(Activity a, View root, String mac, String key, boolean bandApp) {
            this.a = a;
            this.root = root;
            this.mac = mac;
            this.key = key;
            this.bandApp = bandApp;
        }

        @Override
        public void onIndex(int index) {
            try {
                int role;
                if (index == 0) {
                    role = WearableConfig.ROLE_OFF;
                } else if (!bandApp) {
                    role = WearableConfig.ROLE_BOTH;
                } else {
                    role = index == 1 ? WearableConfig.ROLE_PULSE
                            : index == 2 ? WearableConfig.ROLE_REMOTE : WearableConfig.ROLE_BOTH;
                }
                WearableConfig.assignBandRole(a, mac, key, role);
                NotifyWearableBridge.onControlBandChanged(a);
                NotifyWearableBridge.onRoleChanged(a);
                build(a, root);
            } catch (Throwable t) {
                com.isaigu.gymapp.widget.XemsGuard.report("WearableSettingsSection.role", t);
            }
        }
    }

    static final class ForgetClick implements View.OnClickListener {
        private final Activity a;
        private final View root;
        private final String mac;
        private final String name;

        ForgetClick(Activity a, View root, String mac, String name) {
            this.a = a;
            this.root = root;
            this.mac = mac;
            this.name = name;
        }

        @Override
        public void onClick(View v) {
            new android.app.AlertDialog.Builder(a)
                    .setTitle(WearableUi.tr("Да забравя ли гривната?", "Forget this band?"))
                    .setMessage(name + "\n" + mac)
                    .setPositiveButton(WearableUi.tr("Забрави", "Forget"), new ForgetConfirm(a, root, mac))
                    .setNegativeButton(WearableUi.tr("Отказ", "Cancel"), null)
                    .show();
        }
    }

    static final class ForgetConfirm implements android.content.DialogInterface.OnClickListener {
        private final Activity a;
        private final View root;
        private final String mac;

        ForgetConfirm(Activity a, View root, String mac) {
            this.a = a;
            this.root = root;
            this.mac = mac;
        }

        @Override
        public void onClick(android.content.DialogInterface d, int which) {
            try {
                WearableConfig.forgetBand(a, mac);
                NotifyWearableBridge.onControlBandChanged(a);
                NotifyWearableBridge.onRoleChanged(a);
                build(a, root);
            } catch (Throwable t) {
                com.isaigu.gymapp.widget.XemsGuard.report("WearableSettingsSection.forget", t);
            }
        }
    }

    static final class Rebuild implements Runnable {
        private final Activity a;
        private final View root;

        Rebuild(Activity a, View root) {
            this.a = a;
            this.root = root;
        }

        @Override
        public void run() {
            try {
                build(a, root);
            } catch (Throwable ignored) {
            }
        }
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

    private static void startTest(Activity a) {
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

    static final class OpenOnBand implements View.OnClickListener {
        private final Activity activity;

        OpenOnBand(Activity activity) {
            this.activity = activity;
        }

        @Override
        public void onClick(View v) {
            BandLaunch.request(activity);
        }
    }

    static final class AutoOpenToggle implements com.isaigu.gymapp.widget.XemsUi.OnToggle {
        private final Activity a;

        AutoOpenToggle(Activity a) {
            this.a = a;
        }

        @Override
        public void onToggle(boolean on) {
            WearableConfig.setBandAutoOpen(a, on);
        }
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
            bandInfoView = null;
        }
    }
}
