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

        // What the band is for: remote only, heart rate only, or both (one band); two bands: one each
        int role = WearableConfig.getBandRole(a);
        boolean dual = bandApp && WearableConfig.hasControlBand(a);
        if (bandApp && !dual) {
            TextView roleLabel = WearableUi.text(a, WearableUi.tr("Гривната служи за", "The band is for"), 14f, textCol, true);
            card.addView(roleLabel);
            LinearLayout.LayoutParams sp = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            sp.topMargin = WearableUi.dp(a, 8);
            card.addView(com.isaigu.gymapp.widget.XemsUi.segmented(a, new String[] {
                    WearableUi.tr("Пулс и управление", "Heart rate + control"),
                    WearableUi.tr("Само управление", "Control only"),
                    WearableUi.tr("Само пулс", "Heart rate only")}, role, new RolePick(a, root)), sp);
            TextView roleHint = WearableUi.text(a, role == WearableConfig.ROLE_REMOTE
                    ? WearableUi.tr("Старт, пауза и сила от гривната. Пулсът ѝ не се ползва — ♥ пулс и AI остават без него.",
                            "Start, pause and strength from the band. Its heart rate is not used — ♥ and AI go without it.")
                    : role == WearableConfig.ROLE_PULSE
                    ? WearableUi.tr("Само пулс за ♥ пулс, AI и калориите. Гривната не управлява тренировката и приложението на нея не се отваря само.",
                            "Heart rate only for ♥, AI and calories. The band does not control the training and its app does not open by itself.")
                    : WearableUi.tr("Пулс за ♥ пулс и AI, и управление на тренировката от ръката.",
                            "Heart rate for ♥ and AI, and training control from the wrist."), 12.5f, mutedCol, false);
            roleHint.setPadding(0, WearableUi.dp(a, 6), 0, WearableUi.dp(a, 14));
            card.addView(roleHint);
        }
        if (bandApp) {
            addControlBand(a, card, root, dual, textCol, mutedCol);
        }

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

        // Automatic: log in to the Xiaomi (Mi Fitness) account and pull the paired band's MAC + key
        TextView fromXiaomi = WearableUi.button(a, WearableUi.tr("Вход с Xiaomi акаунт", "Log in with Xiaomi account"),
                0xFFEA6A2B, 0xFFFFFFFF);
        fromXiaomi.setOnClickListener(new XiaomiLoginClick(a, root));
        LinearLayout.LayoutParams xsp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, WearableUi.dp(a, 48));
        xsp.topMargin = WearableUi.dp(a, 8);
        card.addView(fromXiaomi, xsp);
        TextView xHint = WearableUi.text(a, WearableUi.tr(
                "Влизаш веднъж; после бутонът сам обновява MAC и ключа от акаунта, без нов вход.",
                "Log in once; after that the button refreshes the MAC and key from the account by itself."),
                12f, mutedCol, false);
        xHint.setPadding(0, WearableUi.dp(a, 6), 0, 0);
        card.addView(xHint);

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
        LinearLayout remote = !bandApp || role == WearableConfig.ROLE_PULSE ? null : com.isaigu.gymapp.widget.XemsUi.toggleRow(a,
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
            // Open it from the phone: now, or through a home-screen icon.
            LinearLayout launchRow = row(a);
            launchRow.setPadding(0, WearableUi.dp(a, 10), 0, 0);
            TextView open = WearableUi.button(a, WearableUi.tr("Отвори на гривната", "Open on the band"),
                    0xFF2E7D32, 0xFFFFFFFF);
            open.setOnClickListener(new OpenOnBand(a));
            launchRow.addView(open, new LinearLayout.LayoutParams(0, WearableUi.dp(a, 44), 1f));
            card.addView(launchRow);
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

    // ================================================================ second band (control only)

    private static EditText ctlMacView;
    private static EditText ctlKeyView;

    /** The trainer's band: remote + XEMS app; the band above then stays on the client for the heart rate. */
    private static void addControlBand(final Activity a, LinearLayout card, final View root, boolean dual,
            int textCol, int mutedCol) {
        LinearLayout box = new LinearLayout(a);
        box.setOrientation(LinearLayout.VERTICAL);
        box.setBackgroundDrawable(WearableUi.rounded(WearableUi.color(a, "bg_screen", 0xFF2A2A2A), WearableUi.dp(a, 12)));
        int p = WearableUi.dp(a, 12);
        box.setPadding(p, p, p, p);
        box.addView(WearableUi.text(a, WearableUi.tr("Втора гривна · само управление", "Second band · control only"),
                15f, textCol, true));
        TextView hint = WearableUi.text(a, dual
                ? WearableUi.tr("Две гривни: първата (горе) е на клиента — само пулс; тази е на треньора — старт, пауза, сила и приложението XEMS.",
                        "Two bands: the first (above) is on the client — heart rate only; this one is the trainer's — start, pause, strength and the XEMS app.")
                : WearableUi.tr("По желание: гривна за треньора, която само управлява. Тогава първата остава на клиента само за пулса.",
                        "Optional: a band for the trainer that only controls. The first one then stays on the client for the heart rate."),
                12.5f, mutedCol, false);
        hint.setPadding(0, WearableUi.dp(a, 4), 0, WearableUi.dp(a, 8));
        box.addView(hint);

        LinearLayout macRow = row(a);
        macRow.addView(label(a, "MAC", mutedCol));
        ctlMacView = field(a, textCol);
        ctlMacView.setHint("AA:BB:CC:DD:EE:FF");
        ctlMacView.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_FLAG_NO_SUGGESTIONS
                | InputType.TYPE_TEXT_FLAG_CAP_CHARACTERS);
        ctlMacView.setText(WearableConfig.getControlMac(a));
        macRow.addView(ctlMacView, new LinearLayout.LayoutParams(0, WearableUi.dp(a, 44), 1f));
        TextView pick = WearableUi.button(a, WearableUi.tr("Избери", "Choose"), 0xFF1565C0, 0xFFFFFFFF);
        pick.setOnClickListener(new ControlPick(a));
        macRow.addView(pick, sideButton(a));
        box.addView(macRow);

        LinearLayout keyRow = row(a);
        keyRow.setPadding(0, WearableUi.dp(a, 8), 0, 0);
        keyRow.addView(label(a, WearableUi.tr("Ключ", "Key"), mutedCol));
        ctlKeyView = field(a, textCol);
        ctlKeyView.setHint(WearableUi.tr("32 символа 0-9 / a-f", "32 chars 0-9 / a-f"));
        ctlKeyView.setTypeface(Typeface.MONOSPACE);
        ctlKeyView.setText(WearableConfig.getControlKey(a));
        keyRow.addView(ctlKeyView, new LinearLayout.LayoutParams(0, WearableUi.dp(a, 44), 1f));
        if (dual) {
            TextView off = WearableUi.button(a, WearableUi.tr("Махни", "Remove"),
                    WearableUi.color(a, "bg_elevated", 0xFF1F232C), textCol);
            off.setOnClickListener(new ControlRemove(a, root));
            keyRow.addView(off, sideButton(a));
        }
        box.addView(keyRow);
        if (dual) {
            TextView st = WearableUi.text(a, NotifyWearableBridge.isControlConnected()
                    ? WearableUi.tr("✓ Свързана", "✓ Connected")
                    : WearableUi.tr("Свързва се заедно с първата гривна", "Connects together with the first band"),
                    12.5f, NotifyWearableBridge.isControlConnected() ? 0xFF81C784 : mutedCol, true);
            st.setPadding(0, WearableUi.dp(a, 8), 0, 0);
            box.addView(st);
        }
        ControlSaver saver = new ControlSaver(a, root);
        ctlMacView.addTextChangedListener(saver);
        ctlKeyView.addTextChangedListener(saver);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.topMargin = WearableUi.dp(a, 4);
        lp.bottomMargin = WearableUi.dp(a, 12);
        card.addView(box, lp);
    }

    static final class ControlPick implements View.OnClickListener {
        private final Activity a;

        ControlPick(Activity a) {
            this.a = a;
        }

        @Override
        public void onClick(View v) {
            if (ctlMacView != null) {
                WearableBandPicker.showForControl(a, ctlMacView);
            }
        }
    }

    static final class ControlRemove implements View.OnClickListener {
        private final Activity a;
        private final View root;

        ControlRemove(Activity a, View root) {
            this.a = a;
            this.root = root;
        }

        @Override
        public void onClick(View v) {
            WearableConfig.setControlBand(a, "", "");
            NotifyWearableBridge.onControlBandChanged(a);
            build(a, root);
        }
    }

    /** MAC + key typed or picked: a complete, different band becomes the control band (at once). */
    static final class ControlSaver implements TextWatcher {
        private final Activity a;
        private final View root;

        ControlSaver(Activity a, View root) {
            this.a = a;
            this.root = root;
        }

        @Override
        public void beforeTextChanged(CharSequence s, int start, int count, int after) {}

        @Override
        public void onTextChanged(CharSequence s, int start, int before, int count) {}

        @Override
        public void afterTextChanged(Editable s) {
            try {
                String mac = ctlMacView != null ? ctlMacView.getText().toString().trim() : "";
                String key = ctlKeyView != null ? ctlKeyView.getText().toString().trim() : "";
                if (isValidMac(mac) && key.length() == 0) {
                    String known = WearableConfig.savedKeyFor(a, NotifyWearableBridge.normalizeMac(mac));
                    if (known != null && known.length() > 0 && ctlKeyView != null) {
                        ctlKeyView.setText(known);           // this watcher runs again with the key
                        return;
                    }
                }
                boolean was = WearableConfig.hasControlBand(a);
                if (isValidMac(mac) && isValidKey(key)) {
                    String norm = NotifyWearableBridge.normalizeMac(mac);
                    if (norm.equalsIgnoreCase(WearableConfig.getControlMac(a)) && key.equals(WearableConfig.getControlKey(a))) {
                        return;
                    }
                    WearableConfig.setControlBand(a, norm, key);
                    WearableConfig.rememberBand(a, norm, key, com.isaigu.gymapp.wearable.xiaomi.XiaomiBand.bondedName(a, norm));
                } else if (mac.length() == 0 && key.length() == 0 && was) {
                    WearableConfig.setControlBand(a, "", "");
                } else {
                    return;
                }
                NotifyWearableBridge.onControlBandChanged(a);
                if (was != WearableConfig.hasControlBand(a)) {
                    root.post(new Rebuild(a, root));   // the role choice shows / hides
                }
            } catch (Throwable t) {
                com.isaigu.gymapp.widget.XemsGuard.report("WearableSettingsSection.control", t);
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

    static final class RolePick implements com.isaigu.gymapp.widget.XemsUi.OnIndex {
        private final Activity a;
        private final View root;

        RolePick(Activity a, View root) {
            this.a = a;
            this.root = root;
        }

        @Override
        public void onIndex(int index) {
            try {
                WearableConfig.setBandRole(a, index);
                NotifyWearableBridge.onRoleChanged(a);
                build(a, root);
            } catch (Throwable t) {
                com.isaigu.gymapp.widget.XemsGuard.report("WearableSettingsSection.role", t);
            }
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

    // ================================================================ Xiaomi account login
    static final class XiaomiLoginClick implements View.OnClickListener {
        private final Activity a;
        private final View root;

        XiaomiLoginClick(Activity a, View root) {
            this.a = a;
            this.root = root;
        }

        @Override
        public void onClick(View v) {
            showXiaomiLogin(a, root);
        }
    }

    /** Open Xiaomi's own login page in a WebView (it handles the e-mail code / 2FA), then finish with cookies. */
    static void showXiaomiLogin(final Activity a, final View root) {
        String saved = WearableConfig.xiaomiSession(a);
        if (saved.length() > 0) {
            toast(a, WearableUi.tr("Обновявам ключа от запазения Xiaomi вход…", "Refreshing the key from the saved Xiaomi login…"));
            new Thread(new XiaomiLoginTask(a, root, null, saved, null, true), "xems-xiaomi-refresh").start();
            return;
        }
        openXiaomiWebLogin(a, root);
    }

    static void openXiaomiWebLogin(final Activity a, final View root) {
        try {
            new XiaomiWebLogin(a, root).open();
        } catch (Throwable t) {
            toast(a, WearableUi.tr("Не мога да отворя входа за Xiaomi.", "Cannot open the Xiaomi login."));
        }
    }

    static final String XIAOMI_PROBE_URL =
            "https://account.xiaomi.com/pass/serviceLogin?_json=true&sid=miothealth&_locale=en_US";

    static final class XiaomiProbeResult implements android.webkit.ValueCallback<String> {
        private final XiaomiWebLogin host;

        XiaomiProbeResult(XiaomiWebLogin host) {
            this.host = host;
        }

        @Override
        public void onReceiveValue(String value) {
            host.probeResult(value);
        }
    }

    static final String XIAOMI_LOGIN_URL =
            "https://account.xiaomi.com/pass/serviceLogin?sid=miothealth&_locale=en_US";

    /** WebView login: the trainer logs into Xiaomi (incl. e-mail code); we watch for the passToken cookie. */
    static final class XiaomiWebLogin {
        private final Activity a;
        private final View root;
        private android.app.Dialog dialog;
        private android.webkit.WebView web;
        private boolean done;
        private boolean probing;
        private boolean gaveUp;
        private int probes;

        XiaomiWebLogin(Activity a, View root) {
            this.a = a;
            this.root = root;
        }

        void open() {
            int textCol = WearableUi.color(a, "text_primary", 0xFFFFFFFF);
            int bg = WearableUi.color(a, "bg_screen", 0xFF121212);
            LinearLayout box = new LinearLayout(a);
            box.setOrientation(LinearLayout.VERTICAL);
            box.setBackgroundColor(bg);

            LinearLayout head = new LinearLayout(a);
            head.setOrientation(LinearLayout.HORIZONTAL);
            head.setGravity(Gravity.CENTER_VERTICAL);
            int pad = WearableUi.dp(a, 12);
            head.setPadding(pad, pad, pad, pad);
            TextView title = WearableUi.text(a, WearableUi.tr("Вход с Xiaomi акаунт", "Log in with Xiaomi account"),
                    16f, textCol, true);
            head.addView(title, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            TextView cancel = WearableUi.button(a, WearableUi.tr("Отказ", "Cancel"),
                    WearableUi.color(a, "bg_elevated", 0xFF2A2A2A), textCol);
            cancel.setOnClickListener(new XiaomiWebCancel(this));
            head.addView(cancel);
            box.addView(head, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT));

            web = new android.webkit.WebView(a);
            android.webkit.WebSettings s = web.getSettings();
            s.setJavaScriptEnabled(true);
            s.setDomStorageEnabled(true);
            android.webkit.CookieManager cm = android.webkit.CookieManager.getInstance();
            cm.setAcceptCookie(true);
            try {
                cm.setAcceptThirdPartyCookies(web, true);
            } catch (Throwable ignored) {
            }
            web.setWebViewClient(new XiaomiWebClient(this));
            box.addView(web, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));

            dialog = new android.app.Dialog(a, android.R.style.Theme_Black_NoTitleBar);
            dialog.setContentView(box);
            dialog.setOnCancelListener(new XiaomiWebDismiss(this));
            dialog.show();
            try {
                if (dialog.getWindow() != null) {
                    dialog.getWindow().setLayout(ViewGroup.LayoutParams.MATCH_PARENT,
                            ViewGroup.LayoutParams.MATCH_PARENT);
                }
            } catch (Throwable ignored) {
            }
            web.loadUrl(XIAOMI_LOGIN_URL);
            handler.postDelayed(new XiaomiWebPoll(this), 1000L);
        }

        /** True once the account.xiaomi.com cookies carry a passToken (login finished, 2FA passed). */
        void check() {
            if (done) {
                return;
            }
            String cookies = null;
            try {
                cookies = android.webkit.CookieManager.getInstance().getCookie("https://account.xiaomi.com");
            } catch (Throwable ignored) {
            }
            if (com.isaigu.gymapp.wearable.xiaomi.XiaomiCloudAccount.hasPassToken(cookies)) {
                if (!probing && !gaveUp && web != null) {
                    probing = true;
                    web.loadUrl(XIAOMI_PROBE_URL);
                }
            }
            if (!gaveUp) {
                handler.postDelayed(new XiaomiWebPoll(this), 800L);
            }
        }

        boolean isProbe(String url) {
            return url != null && url.indexOf("_json=true") >= 0;
        }

        /** The probe page (serviceLogin as JSON, loaded in the same WebView) has finished: read its text. */
        void readProbe() {
            if (done || web == null) {
                return;
            }
            try {
                web.evaluateJavascript("(function(){return document.body?document.body.innerText:'';})()",
                        new XiaomiProbeResult(this));
            } catch (Throwable t) {
                probing = false;
            }
        }

        void probeResult(String raw) {
            if (done) {
                return;
            }
            String text = "";
            try {
                Object v = new org.json.JSONTokener(raw == null ? "" : raw).nextValue();
                text = v == null ? "" : String.valueOf(v);
            } catch (Throwable ignored) {
            }
            String[] sess = com.isaigu.gymapp.wearable.xiaomi.XiaomiCloudAccount.parseSession(text);
            if (sess[3].length() > 0) {
                done = true;
                String ua = null;
                String ck = null;
                try {
                    ua = web.getSettings().getUserAgentString();
                    ck = android.webkit.CookieManager.getInstance().getCookie("https://account.xiaomi.com");
                } catch (Throwable ignored) {
                }
                close();
                toast(a, WearableUi.tr("Взимам ключа от Xiaomi…", "Fetching the key from Xiaomi…"));
                new Thread(new XiaomiLoginTask(a, root, sess, ck, ua), "xems-xiaomi-login").start();
                return;
            }
            probes++;
            if (probes < 3) {
                probing = false;
                return;
            }
            gaveUp = true;
            if (sess[4].length() > 0 && web != null) {
                toast(a, WearableUi.tr("Xiaomi иска потвърждение. Завърши го тук и натисни отново „Вход с Xiaomi акаунт“.",
                        "Xiaomi wants a verification. Finish it here, then tap the Xiaomi login again."));
                web.loadUrl(sess[4]);
            } else {
                toast(a, WearableUi.tr("Xiaomi не върна сесия" + (sess[5].length() > 0 ? " (" + sess[5] + ")" : "")
                        + ". Опитай пак.", "Xiaomi returned no session. Try again."));
                close();
            }
        }

        void cancelled() {
            if (done) {
                return;
            }
            done = true;
            close();
        }

        private void close() {
            try {
                if (web != null) {
                    web.stopLoading();
                    web.destroy();
                    web = null;
                }
            } catch (Throwable ignored) {
            }
            try {
                if (dialog != null) {
                    dialog.dismiss();
                    dialog = null;
                }
            } catch (Throwable ignored) {
            }
        }
    }

    static final class XiaomiWebClient extends android.webkit.WebViewClient {
        private final XiaomiWebLogin host;

        XiaomiWebClient(XiaomiWebLogin host) {
            this.host = host;
        }

        @Override
        public void onPageFinished(android.webkit.WebView view, String url) {
            if (host.isProbe(url)) {
                host.readProbe();
            } else {
                host.check();
            }
        }
    }

    static final class XiaomiWebPoll implements Runnable {
        private final XiaomiWebLogin host;

        XiaomiWebPoll(XiaomiWebLogin host) {
            this.host = host;
        }

        @Override
        public void run() {
            host.check();
        }
    }

    static final class XiaomiWebCancel implements View.OnClickListener {
        private final XiaomiWebLogin host;

        XiaomiWebCancel(XiaomiWebLogin host) {
            this.host = host;
        }

        @Override
        public void onClick(View v) {
            host.cancelled();
        }
    }

    static final class XiaomiWebDismiss implements android.content.DialogInterface.OnCancelListener {
        private final XiaomiWebLogin host;

        XiaomiWebDismiss(XiaomiWebLogin host) {
            this.host = host;
        }

        @Override
        public void onCancel(android.content.DialogInterface d) {
            host.cancelled();
        }
    }

    static final class XiaomiLoginTask implements Runnable {
        private final Activity a;
        private final View root;
        private final String[] sess;
        private final String cookies;
        private final String ua;
        private final boolean refresh;

        XiaomiLoginTask(Activity a, View root, String[] sess, String cookies, String ua) {
            this(a, root, sess, cookies, ua, false);
        }

        XiaomiLoginTask(Activity a, View root, String[] sess, String cookies, String ua, boolean refresh) {
            this.a = a;
            this.root = root;
            this.sess = sess;
            this.cookies = cookies;
            this.ua = ua;
            this.refresh = refresh;
        }

        @Override
        public void run() {
            String error;
            java.util.List<com.isaigu.gymapp.wearable.xiaomi.XiaomiCloudAccount.Band> bands = null;
            try {
                if (refresh) {
                    bands = com.isaigu.gymapp.wearable.xiaomi.XiaomiCloudAccount.fetchWithCookies(cookies, ua);
                } else {
                    bands = com.isaigu.gymapp.wearable.xiaomi.XiaomiCloudAccount.fetchWithSession(
                            sess[0], sess[1], sess[2], sess[3], cookies, ua);
                }
                if (cookies != null) {
                    WearableConfig.setXiaomiSession(a, cookies);
                }
                error = null;
            } catch (com.isaigu.gymapp.wearable.xiaomi.XiaomiCloudAccount.CloudError ce) {
                error = ce.getMessage();
            } catch (Throwable t) {
                error = WearableUi.tr("Нещо се обърка при входа.", "Something went wrong during login.");
            }
            if (refresh && error != null) {
                WearableConfig.setXiaomiSession(a, "");
                handler.post(new XiaomiReopen(a, root));
                return;
            }
            handler.post(new XiaomiApply(a, root, bands, error));
        }
    }

    /** Saved Xiaomi session no longer works: forget it and open the normal login. */
    static final class XiaomiReopen implements Runnable {
        private final Activity a;
        private final View root;

        XiaomiReopen(Activity a, View root) {
            this.a = a;
            this.root = root;
        }

        @Override
        public void run() {
            toast(a, WearableUi.tr("Xiaomi сесията е изтекла — влез отново.", "The Xiaomi session expired — log in again."));
            openXiaomiWebLogin(a, root);
        }
    }

    /** Back on the UI thread: fill MAC + key (or pick, if several) and save. */
    static final class XiaomiApply implements Runnable {
        private final Activity a;
        private final View root;
        private final java.util.List<com.isaigu.gymapp.wearable.xiaomi.XiaomiCloudAccount.Band> bands;
        private final String error;

        XiaomiApply(Activity a, View root,
                    java.util.List<com.isaigu.gymapp.wearable.xiaomi.XiaomiCloudAccount.Band> bands, String error) {
            this.a = a;
            this.root = root;
            this.bands = bands;
            this.error = error;
        }

        @Override
        public void run() {
            if (error != null || bands == null || bands.isEmpty()) {
                toast(a, error != null ? error
                        : WearableUi.tr("Не намерих гривна в акаунта.", "No band found in the account."));
                return;
            }
            if (bands.size() == 1) {
                apply(bands.get(0));
                return;
            }
            final String[] labels = new String[bands.size()];
            for (int i = 0; i < bands.size(); i++) {
                com.isaigu.gymapp.wearable.xiaomi.XiaomiCloudAccount.Band b = bands.get(i);
                labels[i] = (b.name.length() > 0 ? b.name : WearableUi.tr("Гривна", "Band")) + "\n" + b.mac;
            }
            new android.app.AlertDialog.Builder(a)
                    .setTitle(WearableUi.tr("Коя гривна?", "Which band?"))
                    .setItems(labels, new XiaomiPick(bands))
                    .setNegativeButton(WearableUi.tr("Отказ", "Cancel"), null)
                    .show();
        }

        void apply(com.isaigu.gymapp.wearable.xiaomi.XiaomiCloudAccount.Band b) {
            WearableConfig.setBandMac(a, b.mac);
            WearableConfig.setAuthKey(a, b.key);
            WearableConfig.rememberBand(a, b.mac, b.key, b.name);
            if (macView != null) {
                macView.setText(b.mac);
            }
            if (keyView != null) {
                keyView.setText(b.key);
                setKeyHidden(true);
            }
            colorFields();
            toast(a, WearableUi.tr("Готово — гривната е закачена ✓", "Done — the band is linked ✓"));
            handler.post(new Rebuild(a, root));
        }

        final class XiaomiPick implements android.content.DialogInterface.OnClickListener {
            private final java.util.List<com.isaigu.gymapp.wearable.xiaomi.XiaomiCloudAccount.Band> list;

            XiaomiPick(java.util.List<com.isaigu.gymapp.wearable.xiaomi.XiaomiCloudAccount.Band> list) {
                this.list = list;
            }

            @Override
            public void onClick(android.content.DialogInterface d, int which) {
                if (which >= 0 && which < list.size()) {
                    apply(list.get(which));
                }
            }
        }
    }
}
