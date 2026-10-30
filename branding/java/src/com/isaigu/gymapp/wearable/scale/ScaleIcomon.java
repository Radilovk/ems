package com.isaigu.gymapp.wearable.scale;

import android.content.Context;

import cn.icomon.icdevicemanager.ICDeviceManager;
import cn.icomon.icdevicemanager.ICDeviceManagerDelegate;
import cn.icomon.icdevicemanager.callback.ICScanDeviceDelegate;
import cn.icomon.icdevicemanager.model.data.ICCoordData;
import cn.icomon.icdevicemanager.model.data.ICKitchenScaleData;
import cn.icomon.icdevicemanager.model.data.ICRulerData;
import cn.icomon.icdevicemanager.model.data.ICSkipData;
import cn.icomon.icdevicemanager.model.data.ICWeightCenterData;
import cn.icomon.icdevicemanager.model.data.ICWeightData;
import cn.icomon.icdevicemanager.model.data.ICWeightHistoryData;
import cn.icomon.icdevicemanager.model.device.ICDevice;
import cn.icomon.icdevicemanager.model.device.ICDeviceInfo;
import cn.icomon.icdevicemanager.model.device.ICScanDeviceInfo;
import cn.icomon.icdevicemanager.model.device.ICUserInfo;
import cn.icomon.icdevicemanager.model.other.ICConstant;
import cn.icomon.icdevicemanager.model.other.ICDeviceManagerConfig;

import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;

/**
 * Every iComon scale (Fitdays, Lepulse / Lescale, Runstar, Renpho MorphoScan, SACOMA, … — Guangdong Welland /
 * iComon make them all) through iComon's own SDK, ICDeviceManager (branding/vendor/icomon, docs/xems-scale.md
 * "iComon SDK"): it recognises the scale from the advert's manufacturer data (0xAC / 0xCA, not the name), picks
 * the protocol of that model itself (Scale, A4, New, New2, General, General V2, V3, InBody, … — in its native
 * libICBleProtocol.so) and hands back the weight and the impedances, already in our order (trunk, left arm, right
 * arm, left leg, right leg; five per frequency). {@link ScaleLink} keeps its own protocols for everything else
 * (Senssun / MovingLife) and as the fallback when the native library cannot load.
 *
 * <p>One SDK per process (a singleton with one delegate): the page that opens last owns it. Callbacks come on the
 * main thread (the SDK's callDelegateInMainThread).
 */
public final class ScaleIcomon implements ICDeviceManagerDelegate, ICScanDeviceDelegate {

    /** A device added but never linked in this long → removed, skipped, scan again (a wrong pick must not stick). */
    static final long FIRST_LINK_MS = 25000;

    static boolean initCalled;
    static boolean initOk;
    /** The SDK (or its native library) failed on this tablet: the link's own protocols only. */
    static boolean broken;
    static ScaleIcomon owner;

    final ScaleLink link;
    final Set<String> logged = new HashSet<String>();
    final Set<String> skipped = new HashSet<String>();
    ICDevice device;
    boolean scanning;
    boolean everLinked;
    boolean closed;
    int addToken;

    private ScaleIcomon(ScaleLink link) {
        this.link = link;
    }

    static void log(String s) {
        ScaleLink.log("iComon " + s);
    }

    /** The SDK for this link, or null when it cannot run here (the link then works alone). */
    static ScaleIcomon start(Context app, ScaleLink link) {
        if (broken) {
            return null;
        }
        try {
            ScaleIcomon me = new ScaleIcomon(link);
            if (owner != null) {
                owner.close();
            }
            owner = me;
            ICDeviceManager m = ICDeviceManager.shared();
            m.updateUserInfo(me.user());
            m.setDelegate(me);
            if (!initCalled) {
                initCalled = true;
                Thread.UncaughtExceptionHandler keep = Thread.getDefaultUncaughtExceptionHandler();
                ICDeviceManagerConfig config = new ICDeviceManagerConfig();
                config.context = app;
                m.initMgrWithConfig(config);
                if (Thread.getDefaultUncaughtExceptionHandler() != keep) {
                    Thread.setDefaultUncaughtExceptionHandler(keep);      // the app's crash log stays in charge
                }
                log("init");
            } else if (initOk) {
                me.scan();
            }
            return me;
        } catch (Throwable t) {
            broken = true;
            log("unavailable: " + t);
            return null;
        }
    }

    ICUserInfo user() {
        ICUserInfo u = new ICUserInfo();
        u.userIndex = 1;
        u.userId = link.clientId;
        u.height = link.heightCm > 0 ? link.heightCm : 170;
        u.age = link.age > 0 ? link.age : 30;
        u.weight = link.lastKg;
        u.sex = link.male ? ICConstant.ICSexType.ICSexTypeMale : ICConstant.ICSexType.ICSexTypeFemal;
        u.peopleType = ICConstant.ICPeopleType.ICPeopleTypeNormal;
        u.weightUnit = ICConstant.ICWeightUnit.ICWeightUnitKg;
        u.enableMeasureImpendence = true;
        return u;
    }

    void scan() {
        if (closed || scanning || device != null) {
            return;
        }
        try {
            ICDeviceManager.shared().scanDevice(this);
            scanning = true;
            log("scan");
        } catch (Throwable t) {
            log("scan: " + t);
        }
    }

    void stopScan() {
        if (!scanning) {
            return;
        }
        scanning = false;
        try {
            ICDeviceManager.shared().stopScan();
        } catch (Throwable ignored) {
        }
    }

    /** This MAC belongs to the SDK now: the link's own scan leaves it alone. */
    boolean owns(String mac) {
        return device != null && mac != null && mac.equalsIgnoreCase(device.getMacAddr());
    }

    public void close() {
        closed = true;
        stopScan();
        removeDevice();
        if (owner == this) {
            owner = null;
            try {
                ICDeviceManager.shared().setDelegate(null);
            } catch (Throwable ignored) {
            }
        }
    }

    void removeDevice() {
        ICDevice d = device;
        device = null;
        if (d == null) {
            return;
        }
        try {
            ICDeviceManager.shared().removeDevice(d, new Removed());
        } catch (Throwable ignored) {
        }
    }

    // ------------------------------------------------------------------ scan

    @Override
    public void onScanResult(ICScanDeviceInfo info) {
        if (closed || info == null || info.macAddr == null || device != null) {
            return;
        }
        String mac = info.macAddr.toUpperCase(Locale.ROOT);
        int rssi = info.rssi != null ? info.rssi.intValue() : -100;
        if (logged.add(mac)) {
            log("seen " + mac + " " + rssi + " dBm \"" + info.name + "\" " + info.type + " / " + info.subType
                    + " / " + info.communicationType);
        }
        ICConstant.ICDeviceType t = info.type;
        boolean scale = t == ICConstant.ICDeviceType.ICDeviceTypeFatScale
                || t == ICConstant.ICDeviceType.ICDeviceTypeFatScaleWithTemperature
                || t == ICConstant.ICDeviceType.ICDeviceTypeWeightScale
                || t == ICConstant.ICDeviceType.ICDeviceTypeBalance;
        if (!scale || skipped.contains(mac) || !link.acceptIcomon(mac, rssi)) {
            return;
        }
        stopScan();
        ICDevice d = new ICDevice();
        d.setMacAddr(info.macAddr);
        device = d;
        everLinked = false;
        log("add " + mac + " (" + info.name + ")");
        link.icomonFound(mac);
        try {
            ICDeviceManager.shared().addDevice(d, new Added());
        } catch (Throwable e) {
            log("add: " + e);
        }
        link.main.postDelayed(new FirstLink(this, ++addToken), FIRST_LINK_MS);
    }

    void firstLink(int token) {
        if (token != addToken || closed || device == null || everLinked) {
            return;
        }
        String mac = device.getMacAddr();
        log("no link with " + mac + " in " + FIRST_LINK_MS / 1000 + " s — next one");
        if (!mac.equalsIgnoreCase(ScaleStore.mac(link.app))) {
            skipped.add(mac.toUpperCase(Locale.ROOT));
        }
        removeDevice();
        link.icomonLost();
        scan();
    }

    // ------------------------------------------------------------------ the SDK's delegate

    @Override
    public void onInitFinish(boolean ok) {
        initOk = ok;
        log("init " + (ok ? "ok" : "FAILED"));
        if (!ok) {
            broken = true;
            return;
        }
        if (owner == this) {
            scan();
        }
    }

    @Override
    public void onBleState(ICConstant.ICBleState state) {
        log("ble " + state);
        if (state == ICConstant.ICBleState.ICBleStatePoweredOn && owner == this && device == null) {
            scan();
        }
    }

    @Override
    public void onDeviceConnectionChanged(ICDevice d, ICConstant.ICDeviceConnectState state) {
        if (closed || device == null || d == null || !owns(d.getMacAddr())) {
            return;
        }
        boolean on = state == ICConstant.ICDeviceConnectState.ICDeviceConnectStateConnected;
        log((on ? "connected " : "disconnected ") + d.getMacAddr());
        if (on) {
            everLinked = true;
            ScaleStore.setMac(link.app, d.getMacAddr().toUpperCase(Locale.ROOT));
        }
        link.icomonLink(on);      // the SDK reconnects by itself when the scale wakes again
    }

    @Override
    public void onReceiveWeightData(ICDevice d, ICWeightData w) {
        weight(d, w, "data");
    }

    @Override
    public void onReceiveMeasureStepData(ICDevice d, ICConstant.ICMeasureStep step, Object o) {
        if (o instanceof ICWeightData) {
            weight(d, (ICWeightData) o, String.valueOf(step));
        } else if (step != null) {
            log("step " + step);
        }
    }

    void weight(ICDevice d, ICWeightData w, String how) {
        if (closed || w == null || d == null || !owns(d.getMacAddr())) {
            return;
        }
        double kg = w.weight_kg;
        if (!w.isStabilized) {
            link.live(kg, false);
            return;
        }
        ScaleProtocol.Reading r = reading(kg, w.impendences, w.electrode);
        log(how + ": " + kg + " kg, electrodes " + w.electrode + ", imps " + w.impendences + ", hr " + w.hr
                + ", scale fat " + w.bodyFatPercent);
        if (r == null) {
            link.live(kg, true);      // weight only (bare feet / hands off): the scale may measure again
            return;
        }
        if (w.bodyFatPercent > 0) {
            r.scaleFatPct = w.bodyFatPercent;
        }
        r.scaleTime = w.time;
        link.finish(r);
    }

    /**
     * Our reading from the SDK's impedances: ten = two frequencies (the higher-impedance five are the low frequency,
     * so the order the SDK used does not matter); five = one frequency (taken as 50 kHz, {@link ScaleModel#single});
     * one = a 4-electrode scale (feet only) → null, weight only — our model needs the segments.
     */
    static ScaleProtocol.Reading reading(double kg, List<Double> imps, int electrodes) {
        if (imps == null || imps.size() < 5 || kg <= 0) {
            return null;
        }
        double[] a = new double[5];
        double[] b = new double[5];
        double sa = 0, sb = 0;
        int good = 0;
        for (int i = 0; i < 5; i++) {
            a[i] = val(imps.get(i));
            sa += a[i];
            if (a[i] > 0) {
                good++;
            }
            if (imps.size() >= 10) {
                b[i] = val(imps.get(5 + i));
                sb += b[i];
            }
        }
        if (good < 5) {
            return null;
        }
        ScaleProtocol.Reading r = new ScaleProtocol.Reading();
        r.weightKg = kg;
        r.result = true;
        r.stable = true;
        boolean two = imps.size() >= 10 && sb > 0;
        if (two) {
            double[] lo = sa >= sb ? a : b;      // impedance falls as the frequency rises
            double[] hi = sa >= sb ? b : a;
            for (int i = 0; i < 5; i++) {
                r.z20[i] = lo[i];
                r.z100[i] = hi[i] > 0 ? hi[i] : Double.NaN;
            }
        } else {
            ScaleModel.single(r, a);
        }
        return r;
    }

    static double val(Double d) {
        return d == null || d.isNaN() || d.doubleValue() <= 0 ? 0 : d.doubleValue();
    }

    @Override
    public void onReceiveWeightHistoryData(ICDevice d, ICWeightHistoryData h) {
        // stored weigh-ins from before the link: not this client's measurement
    }

    @Override
    public void onReceiveDeviceInfo(ICDevice d, ICDeviceInfo info) {
        if (info != null) {
            log("device " + info.getModel() + " fw " + info.getFirmwareVer() + " hw " + info.getHardwareVer());
        }
    }

    @Override
    public void onReceiveBattery(ICDevice d, int battery, Object ext) {
        log("battery " + battery + " %");
    }

    @Override
    public void onReceiveDebugData(ICDevice d, int type, Object o) {
    }

    @Override
    public void onNodeConnectionChanged(ICDevice d, int node, ICConstant.ICDeviceConnectState state) {
    }

    @Override
    public void onReceiveKitchenScaleData(ICDevice d, ICKitchenScaleData data) {
    }

    @Override
    public void onReceiveKitchenScaleUnitChanged(ICDevice d, ICConstant.ICKitchenScaleUnit unit) {
    }

    @Override
    public void onReceiveCoordData(ICDevice d, ICCoordData data) {
    }

    @Override
    public void onReceiveRulerData(ICDevice d, ICRulerData data) {
    }

    @Override
    public void onReceiveRulerHistoryData(ICDevice d, ICRulerData data) {
    }

    @Override
    public void onReceiveWeightCenterData(ICDevice d, ICWeightCenterData data) {
    }

    @Override
    public void onReceiveWeightUnitChanged(ICDevice d, ICConstant.ICWeightUnit unit) {
    }

    @Override
    public void onReceiveRulerUnitChanged(ICDevice d, ICConstant.ICRulerUnit unit) {
    }

    @Override
    public void onReceiveRulerMeasureModeChanged(ICDevice d, ICConstant.ICRulerMeasureMode mode) {
    }

    @Override
    public void onReceiveSkipData(ICDevice d, ICSkipData data) {
    }

    @Override
    public void onReceiveHistorySkipData(ICDevice d, ICSkipData data) {
    }

    @Override
    public void onReceiveUpgradePercent(ICDevice d, ICConstant.ICUpgradeStatus status, int percent) {
    }

    @Override
    public void onReceiveConfigWifiResult(ICDevice d, ICConstant.ICConfigWifiState state) {
    }

    @Override
    public void onReceiveHR(ICDevice d, int hr) {
    }

    @Override
    public void onReceiveUserInfo(ICDevice d, ICUserInfo u) {
    }

    @Override
    public void onReceiveUserInfoList(ICDevice d, List<ICUserInfo> list) {
    }

    @Override
    public void onReceiveRSSI(ICDevice d, int rssi) {
    }

    @Override
    public void onReceiveDeviceLightSetting(ICDevice d, Object o) {
    }

    static final class Added implements ICConstant.ICAddDeviceCallBack {
        @Override
        public void onCallBack(ICDevice d, ICConstant.ICAddDeviceCallBackCode code) {
            log("add result " + code);
        }
    }

    static final class Removed implements ICConstant.ICRemoveDeviceCallBack {
        @Override
        public void onCallBack(ICDevice d, ICConstant.ICRemoveDeviceCallBackCode code) {
        }
    }

    static final class FirstLink implements Runnable {
        final ScaleIcomon s;
        final int token;

        FirstLink(ScaleIcomon s, int token) {
            this.s = s;
            this.token = token;
        }

        @Override
        public void run() {
            s.firstLink(token);
        }
    }
}
