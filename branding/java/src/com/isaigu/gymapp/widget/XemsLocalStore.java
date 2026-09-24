package com.isaigu.gymapp.widget;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.text.TextUtils;
import android.widget.Toast;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.isaigu.gymapp.BaseActivity;
import com.isaigu.gymapp.BaseDialogFragment;
import com.isaigu.gymapp.bean.DeviceBean;
import com.isaigu.gymapp.bean.TrainProgram;
import com.isaigu.gymapp.bean.TrainUser;
import com.isaigu.gymapp.bean.vo.RegisterProtocolVO;
import com.isaigu.gymapp.dialog.ActivePauseStorage;
import com.isaigu.gymapp.dialog.EditUserPersonalDataDialog;
import com.isaigu.gymapp.dialog.EditUserProgramDataDialog;
import com.isaigu.gymapp.fragment.MainFragment;
import com.isaigu.gymapp.mgr.DataMgr;
import com.isaigu.gymapp.message.MessageDispatcher;
import com.isaigu.gymapp.utils.FileUtils;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/**
 * Local-only data layer: users, programs, training history and suits stay on the tablet.
 * Cloud sync to xemsplus.com is bypassed after login (see {@link XemsLocalApi}).
 *
 * <p>Roles: a new tablet starts in the admin setup ({@link XemsLicense#isSetupMode()}): every
 * module is open and any EMS suit found over BLE can be paired. The admin then ends the setup
 * (Settings → Tablet and data); from then on only the allowed suits are shown: the ones paired
 * in the setup plus the ones the licence server lists for the customer's key.
 */
public final class XemsLocalStore {
    private static final String PREFS = "xems_local_store";
    /** Read by XemsLicenseClient too (reported to the server as ems_local). */
    private static final String KEY_PAIRED_MACS = "paired_macs";
    private static final String KEY_NEXT_USER_ID = "next_user_id";
    private static final String KEY_NEXT_PROGRAM_ID = "next_program_id";
    private static final String KEY_NEXT_DEVICE_ID = "next_device_id";
    private static final String KEY_MIGRATED = "migrated_v1";

    static final String FILE_USERS = "file_name_user_data";
    static final String FILE_OFFLINE_USERS = "file_name_offline_user_data";
    static final String FILE_DEVICES = "file_name_device_data";
    static final String FILE_PROGRAMS = "file_name_train_data";
    private static final String FILE_PROTOCOL = "file_name_register_protocol_data";

    private static final long FIRST_USER_ID = 100000L;

    private XemsLocalStore() {}

    // ================================================================ roles

    /** Admin setup of a new tablet: pairs any suit, imports backups, ends the setup. */
    public static boolean isAdminSession() {
        Context ctx = getAppContext();
        if (ctx != null) {
            XemsLicense.init(ctx);
        }
        return XemsLicense.isSetupMode();
    }

    public static boolean isUserSession() {
        return !isAdminSession();
    }

    /** Ends the admin setup: the customer's profile with the allowed suits only. */
    public static void finishSetup() {
        XemsLicense.finishSetup();
    }

    // ================================================================ start

    /** Replaces the cloud bootstrap in MainFragment.initData (with or without network). */
    public static void bootstrapOnline(MainFragment fragment) {
        try {
            Context ctx = fragment != null && fragment.getParentActivity() != null
                    ? fragment.getParentActivity() : getAppContext();
            loadDevices(ctx);
            loadProtocol();
            loadUsers();
            loadPrograms();
            migrateOnce(ctx);
            MessageDispatcher.dispatchEventMessage((short) 0x69);
            MessageDispatcher.dispatchEventMessage((short) 0x6a);
        } catch (Throwable t) {
            android.util.Log.e("xems_local", "bootstrapOnline", t);
        }
    }

    public static void loadUsers() {
        DataMgr dm = DataMgr.getInstance();
        List<TrainUser> users = readList(FILE_USERS, TrainUser.class);
        if (users == null) {
            users = new ArrayList<>();
        }
        // Users made offline by the old app never reached the cloud: take them in once.
        List<TrainUser> offline = readList(FILE_OFFLINE_USERS, TrainUser.class);
        if (offline != null && !offline.isEmpty()) {
            users.addAll(offline);
            FileUtils.saveListData(FILE_OFFLINE_USERS, TrainUser.class, new ArrayList<TrainUser>());
        }
        dm.trainUsers = users;
        // Offline users of the old app all had id 0: give each its own id.
        for (int i = 0; i < users.size(); i++) {
            TrainUser u = users.get(i);
            if (u != null && u.id == 0) {
                u.id = nextUserId();
            }
        }
        saveUsers();
    }

    public static void loadPrograms() {
        DataMgr dm = DataMgr.getInstance();
        List<TrainProgram> programs = readList(FILE_PROGRAMS, TrainProgram.class);
        if (programs == null) {
            programs = new ArrayList<>();
        }
        dm.trainData = programs;
        seedDefaultProgramIfNeeded();
        ActivePauseStorage.mergeList(dm.trainData);
        savePrograms();
    }

    public static void loadDevices(Context ctx) {
        DataMgr dm = DataMgr.getInstance();
        List<DeviceBean> devices = readList(FILE_DEVICES, DeviceBean.class);
        if (devices == null) {
            devices = new ArrayList<>();
        }
        dm.deviceBeanList = devices;
    }

    private static void loadProtocol() {
        RegisterProtocolVO vo = (RegisterProtocolVO) FileUtils.getData(FILE_PROTOCOL, RegisterProtocolVO.class);
        if (vo != null) {
            DataMgr.getInstance().registerProtocolVO = vo;
        }
    }

    /**
     * First start of this version on a tablet already in use (locked at once by XemsLicense):
     * the suits it knew from the cloud stay allowed, so nobody loses a suit on update.
     */
    private static void migrateOnce(Context ctx) {
        if (ctx == null || prefs(ctx).getBoolean(KEY_MIGRATED, false)) {
            return;
        }
        if (!isAdminSession() && getPairedMacs(ctx).isEmpty()) {
            List<DeviceBean> devices = DataMgr.getInstance().deviceBeanList;
            Set<String> macs = new HashSet<>();
            for (int i = 0; devices != null && i < devices.size(); i++) {
                DeviceBean d = devices.get(i);
                if (d != null && !TextUtils.isEmpty(d.macAddress)) {
                    macs.add(macKey(d.macAddress));
                }
            }
            savePairedMacs(ctx, macs);
        }
        prefs(ctx).edit().putBoolean(KEY_MIGRATED, true).apply();
    }

    // ================================================================ suits

    /** Paired in the setup + listed by the licence server. */
    public static boolean isAllowed(Context ctx, String mac) {
        if (TextUtils.isEmpty(mac)) {
            return false;
        }
        String k = macKey(mac);
        if (getPairedMacs(ctx).contains(k)) {
            return true;
        }
        Iterator<String> it = XemsLicense.allowedEms().iterator();
        while (it.hasNext()) {
            if (k.equals(macKey(it.next()))) {
                return true;
            }
        }
        return false;
    }

    /** Device list for the connect dialogs: everything in the setup, the allowed suits after. */
    public static List<DeviceBean> filterDevices(Context ctx, List<DeviceBean> source) {
        if (source == null) {
            return new ArrayList<>();
        }
        if (isAdminSession()) {
            return source;
        }
        List<DeviceBean> out = new ArrayList<>();
        for (int i = 0; i < source.size(); i++) {
            DeviceBean d = source.get(i);
            if (d != null && isAllowed(ctx, d.macAddress)) {
                out.add(d);
            }
        }
        return out;
    }

    /**
     * BLE scan found a suit that is not in the dialog list yet. It is shown when it may be used:
     * any suit in the setup, an allowed one after (e.g. a suit the server just added). Only shown
     * here; it is kept on the tablet once it connects ({@link #onDeviceConnected}).
     * True when it was added (the adapter then starts its timer and redraws).
     */
    public static boolean addDiscoveredDevice(List<DeviceBean> list, String mac, String sign) {
        try {
            if (list == null || TextUtils.isEmpty(mac) || TextUtils.isEmpty(sign)) {
                return false;
            }
            if (!isAdminSession() && !isAllowed(getAppContext(), mac)) {
                return false;
            }
            String k = macKey(mac);
            for (int i = 0; i < list.size(); i++) {
                DeviceBean d = list.get(i);
                if (d != null && k.equals(macKey(d.macAddress))) {
                    d.connectedSign = sign;
                    return false;
                }
            }
            DeviceBean bean = knownDevice(mac);
            if (bean == null) {
                bean = new DeviceBean();
                bean.macAddress = mac;
                bean.name = mac;
                bean.id = Long.valueOf(nextDeviceId());
            }
            bean.connectedSign = sign;
            list.add(bean);
            return true;
        } catch (Throwable t) {
            android.util.Log.e("xems_local", "addDiscoveredDevice", t);
            return false;
        }
    }

    /**
     * A suit connected in a connect dialog. In the setup this pairs it to the tablet; either way
     * it is kept in the tablet's device list.
     */
    public static void onDeviceConnected(String mac) {
        try {
            Context ctx = getAppContext();
            if (ctx == null || TextUtils.isEmpty(mac)) {
                return;
            }
            if (isAdminSession()) {
                Set<String> macs = getPairedMacs(ctx);
                if (macs.add(macKey(mac))) {
                    savePairedMacs(ctx, macs);
                }
            } else if (!isAllowed(ctx, mac)) {
                return;
            }
            ensureDeviceRecord(mac);
        } catch (Throwable t) {
            android.util.Log.e("xems_local", "onDeviceConnected", t);
        }
    }

    public static int pairedCount(Context ctx) {
        return getPairedMacs(ctx).size();
    }

    public static void autoSelectFirstProgram(Object dialog) {
        try {
            if (dialog == null) {
                return;
            }
            Class<?> cls = dialog.getClass();
            java.lang.reflect.Field f = cls.getDeclaredField("programDatas");
            f.setAccessible(true);
            List<?> programs = (List<?>) f.get(dialog);
            if (programs == null || programs.isEmpty()) {
                return;
            }
            TrainProgram first = (TrainProgram) programs.get(0);
            java.lang.reflect.Method m = cls.getDeclaredMethod("updateSelectedProgram", TrainProgram.class);
            m.setAccessible(true);
            m.invoke(dialog, first);
        } catch (Throwable t) {
            android.util.Log.e("xems_local", "autoSelectFirstProgram", t);
        }
    }

    // ================================================================ users / programs

    /** Save user locally — called instead of cloud submitUserData / updateUserData. */
    public static void saveUser(BaseActivity activity, TrainUser user, boolean isUpdate) {
        if (activity == null || user == null) {
            return;
        }
        DataMgr dm = DataMgr.getInstance();
        if (!isUpdate) {
            user.id = nextUserId();
            user.createTime = new Date();
            if (dm.trainUsers == null) {
                dm.trainUsers = new ArrayList<>();
            }
            dm.trainUsers.add(user);
        } else {
            dm.addOrUpdateTrainUser(user);
        }
        saveUsers();
        MessageDispatcher.dispatchEventMessage((short) 0x69);
        activity.showTips(tr("Потребителят е запазен локално", "User saved locally"));
    }

    public static void finishUserDialog(EditUserPersonalDataDialog dialog) {
        if (dialog == null) {
            return;
        }
        BaseActivity activity = dialog.getParentActivity();
        if (activity != null && dialog instanceof BaseDialogFragment) {
            activity.closeDialogFragment((BaseDialogFragment) dialog);
        }
    }

    /** Save program locally — called instead of cloud program API. */
    public static void saveProgram(BaseActivity activity, EditUserProgramDataDialog dialog,
                                   TrainProgram program, String name) {
        if (activity == null || dialog == null || program == null || TextUtils.isEmpty(name)) {
            return;
        }
        try {
            program.name = name;
            storeProgram(program);
            MessageDispatcher.dispatchEventMessage((short) 0x6a);
            activity.showTips(tr("Програмата е запазена локално", "Program saved locally"));
            activity.closeDialogFragment(dialog);
        } catch (Throwable t) {
            android.util.Log.e("xems_local", "saveProgram", t);
            activity.showTips(tr("Грешка при запазване", "Save failed"));
        }
    }

    /** Add or replace a program in the tablet list (new id when it has none). */
    static void storeProgram(TrainProgram program) {
        DataMgr dm = DataMgr.getInstance();
        if (dm.trainData == null) {
            dm.trainData = new ArrayList<>();
        }
        if (program.id == null || program.id.longValue() <= 0) {
            program.id = Long.valueOf(nextProgramId());
        }
        dm.addOrUpdateTrainProgram(program);
        savePrograms();
    }

    static void removeProgram(long id) {
        DataMgr dm = DataMgr.getInstance();
        if (dm.trainData == null) {
            return;
        }
        for (int i = dm.trainData.size() - 1; i >= 0; i--) {
            TrainProgram p = dm.trainData.get(i);
            if (p != null && p.id != null && p.id.longValue() == id) {
                dm.trainData.remove(i);
            }
        }
        savePrograms();
    }

    // ================================================================ backup

    public static boolean exportBackup(Activity activity, Uri dest) {
        if (activity == null || dest == null) {
            return false;
        }
        try {
            JSONObject root = new JSONObject();
            root.put("version", 1);
            root.put("exportedAt", System.currentTimeMillis());
            root.put("users", JSON.toJSON(dmList(FILE_USERS, TrainUser.class)));
            root.put("programs", JSON.toJSON(dmList(FILE_PROGRAMS, TrainProgram.class)));
            root.put("devices", JSON.toJSON(dmList(FILE_DEVICES, DeviceBean.class)));
            root.put("records", JSON.toJSON(XemsLocalApi.allRecords()));
            root.put("pairedMacs", JSON.toJSON(getPairedMacs(activity)));
            String json = root.toJSONString();
            OutputStream out = activity.getContentResolver().openOutputStream(dest);
            if (out == null) {
                return false;
            }
            out.write(json.getBytes("UTF-8"));
            out.flush();
            out.close();
            Toast.makeText(activity, tr("Данните са експортирани", "Data exported"), Toast.LENGTH_LONG).show();
            return true;
        } catch (Throwable t) {
            android.util.Log.e("xems_local", "exportBackup", t);
            Toast.makeText(activity, tr("Експортът не успя", "Export failed"), Toast.LENGTH_LONG).show();
            return false;
        }
    }

    /** Only in the admin setup: a backup carries paired suits, so the customer cannot import. */
    public static boolean importBackup(Activity activity, Uri src) {
        if (activity == null || src == null) {
            return false;
        }
        if (!isAdminSession()) {
            Toast.makeText(activity, tr("Импорт има само при настройка на таблета",
                    "Import is only available in the tablet setup"), Toast.LENGTH_LONG).show();
            return false;
        }
        try {
            InputStream in = activity.getContentResolver().openInputStream(src);
            if (in == null) {
                return false;
            }
            BufferedReader reader = new BufferedReader(new InputStreamReader(in, "UTF-8"));
            StringBuilder sb = new StringBuilder();
            String line;
            while ((line = reader.readLine()) != null) {
                sb.append(line).append('\n');
            }
            reader.close();
            JSONObject root = JSON.parseObject(sb.toString());
            if (root == null) {
                return false;
            }
            List<TrainUser> users = parseList(root.getJSONArray("users"), TrainUser.class);
            List<TrainProgram> programs = parseList(root.getJSONArray("programs"), TrainProgram.class);
            List<DeviceBean> devices = parseList(root.getJSONArray("devices"), DeviceBean.class);
            if (users != null) {
                DataMgr.getInstance().trainUsers = users;
                FileUtils.saveListData(FILE_USERS, TrainUser.class, users);
            }
            if (programs != null) {
                DataMgr.getInstance().trainData = programs;
                ActivePauseStorage.mergeList(programs);
                FileUtils.saveListData(FILE_PROGRAMS, TrainProgram.class, programs);
            }
            if (devices != null) {
                DataMgr.getInstance().deviceBeanList = devices;
                FileUtils.saveListData(FILE_DEVICES, DeviceBean.class, devices);
            }
            if (root.containsKey("records")) {
                XemsLocalApi.replaceRecords(root.getJSONArray("records"));
            }
            if (root.containsKey("pairedMacs")) {
                Set<String> macs = new HashSet<>();
                List<String> list = JSON.parseArray(root.getJSONArray("pairedMacs").toJSONString(), String.class);
                if (list != null) {
                    for (int i = 0; i < list.size(); i++) {
                        macs.add(macKey(list.get(i)));
                    }
                }
                savePairedMacs(activity, macs);
            }
            // New ids must not collide with the imported ones.
            bumpCounters(activity);
            MessageDispatcher.dispatchEventMessage((short) 0x69);
            MessageDispatcher.dispatchEventMessage((short) 0x6a);
            Toast.makeText(activity, tr("Данните са импортирани", "Data imported"), Toast.LENGTH_LONG).show();
            return true;
        } catch (Throwable t) {
            android.util.Log.e("xems_local", "importBackup", t);
            Toast.makeText(activity, tr("Импортът не успя", "Import failed"), Toast.LENGTH_LONG).show();
            return false;
        }
    }

    // ================================================================ internals

    private static void seedDefaultProgramIfNeeded() {
        DataMgr dm = DataMgr.getInstance();
        if (dm.trainData != null && !dm.trainData.isEmpty()) {
            return;
        }
        TrainProgram p = new TrainProgram(Long.valueOf(nextProgramId()), tr("Тренировка 1", "Workout 1"));
        if (p.programDataBean != null) {
            p.programDataBean.hz = 85;
            p.programDataBean.pulseContinue = 4;
            p.programDataBean.pulsePause = 4;
            p.programDataBean.workLength = 20;
            p.programDataBean.strenth = 30;
        }
        if (p.muscleTrainingProgramDataBean != null) {
            p.muscleTrainingProgramDataBean.hz = 85;
            p.muscleTrainingProgramDataBean.pulseContinue = 4;
            p.muscleTrainingProgramDataBean.pulsePause = 4;
            p.muscleTrainingProgramDataBean.workLength = 20;
        }
        if (p.aerobicTrainingProgramDataBean != null) {
            p.aerobicTrainingProgramDataBean.hz = 10;
            p.aerobicTrainingProgramDataBean.pulseContinue = 6;
            p.aerobicTrainingProgramDataBean.pulsePause = 2;
            p.aerobicTrainingProgramDataBean.workLength = 20;
        }
        if (p.massageModeProgramDataBean != null) {
            p.massageModeProgramDataBean.hz = 5;
            p.massageModeProgramDataBean.pulseContinue = 1;
            p.massageModeProgramDataBean.pulsePause = 1;
            p.massageModeProgramDataBean.workLength = 10;
        }
        dm.trainData = new ArrayList<>();
        dm.trainData.add(p);
    }

    static Context getAppContext() {
        try {
            Class<?> at = Class.forName("android.app.ActivityThread");
            java.lang.reflect.Method m = at.getMethod("currentApplication");
            return (Context) m.invoke(null);
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static SharedPreferences prefs(Context context) {
        return context.getApplicationContext().getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }

    private static DeviceBean knownDevice(String mac) {
        List<DeviceBean> list = DataMgr.getInstance().deviceBeanList;
        String k = macKey(mac);
        for (int i = 0; list != null && i < list.size(); i++) {
            DeviceBean d = list.get(i);
            if (d != null && k.equals(macKey(d.macAddress))) {
                return d;
            }
        }
        return null;
    }

    private static void ensureDeviceRecord(String mac) {
        if (knownDevice(mac) != null) {
            return;
        }
        DataMgr dm = DataMgr.getInstance();
        if (dm.deviceBeanList == null) {
            dm.deviceBeanList = new ArrayList<>();
        }
        DeviceBean bean = new DeviceBean();
        bean.macAddress = mac;
        bean.name = mac;
        bean.id = Long.valueOf(nextDeviceId());
        dm.deviceBeanList.add(bean);
        saveDevices();
    }

    private static Set<String> getPairedMacs(Context ctx) {
        Set<String> out = new HashSet<>();
        if (ctx == null) {
            return out;
        }
        String raw = prefs(ctx).getString(KEY_PAIRED_MACS, "");
        if (TextUtils.isEmpty(raw)) {
            return out;
        }
        String[] parts = raw.split(",");
        for (int i = 0; i < parts.length; i++) {
            String k = macKey(parts[i]);
            if (k.length() > 0) {
                out.add(k);
            }
        }
        return out;
    }

    private static void savePairedMacs(Context ctx, Set<String> macs) {
        if (ctx == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = macs.iterator();
        while (it.hasNext()) {
            if (sb.length() > 0) {
                sb.append(',');
            }
            sb.append(it.next());
        }
        prefs(ctx).edit().putString(KEY_PAIRED_MACS, sb.toString()).apply();
    }

    /** One spelling for a MAC: AA:BB:CC:DD:EE:FF, aabbccddeeff and AA-BB-… all match. */
    static String macKey(String mac) {
        if (mac == null) {
            return "";
        }
        StringBuilder b = new StringBuilder();
        String up = mac.trim().toUpperCase();
        int n = 0;
        for (int i = 0; i < up.length(); i++) {
            char c = up.charAt(i);
            if ((c >= '0' && c <= '9') || (c >= 'A' && c <= 'F')) {
                if (n > 0 && n % 2 == 0) {
                    b.append(':');
                }
                b.append(c);
                n++;
            }
        }
        return b.toString();
    }

    /** Local users get negative ids, so they never meet the positive ids of cloud users. */
    private static long nextUserId() {
        Context ctx = getAppContext();
        long id = ctx == null ? FIRST_USER_ID : prefs(ctx).getLong(KEY_NEXT_USER_ID, FIRST_USER_ID);
        List<TrainUser> users = DataMgr.getInstance().trainUsers;
        for (int i = 0; users != null && i < users.size(); i++) {
            TrainUser u = users.get(i);
            if (u != null && -u.id >= id) {
                id = -u.id + 1;
            }
        }
        if (ctx != null) {
            prefs(ctx).edit().putLong(KEY_NEXT_USER_ID, id + 1).apply();
        }
        return -id;
    }

    /** Above every program id on the tablet (cached cloud programs keep their ids). */
    private static long nextProgramId() {
        Context ctx = getAppContext();
        long id = ctx == null ? 1L : prefs(ctx).getLong(KEY_NEXT_PROGRAM_ID, 1L);
        List<TrainProgram> programs = DataMgr.getInstance().trainData;
        for (int i = 0; programs != null && i < programs.size(); i++) {
            TrainProgram p = programs.get(i);
            if (p != null && p.id != null && p.id.longValue() >= id) {
                id = p.id.longValue() + 1;
            }
        }
        if (ctx != null) {
            prefs(ctx).edit().putLong(KEY_NEXT_PROGRAM_ID, id + 1).apply();
        }
        return id;
    }

    private static long nextDeviceId() {
        Context ctx = getAppContext();
        long id = ctx == null ? 1L : prefs(ctx).getLong(KEY_NEXT_DEVICE_ID, 1L);
        List<DeviceBean> devices = DataMgr.getInstance().deviceBeanList;
        for (int i = 0; devices != null && i < devices.size(); i++) {
            DeviceBean d = devices.get(i);
            if (d != null && d.id != null && d.id.longValue() >= id) {
                id = d.id.longValue() + 1;
            }
        }
        if (ctx != null) {
            prefs(ctx).edit().putLong(KEY_NEXT_DEVICE_ID, id + 1).apply();
        }
        return id;
    }

    /** After an import: the next ids start above the imported ones. */
    private static void bumpCounters(Context ctx) {
        prefs(ctx).edit()
                .remove(KEY_NEXT_USER_ID).remove(KEY_NEXT_PROGRAM_ID).remove(KEY_NEXT_DEVICE_ID)
                .apply();
        // Each call scans its list and stores the next free id.
        nextUserId();
        nextProgramId();
        nextDeviceId();
    }

    private static void saveUsers() {
        DataMgr dm = DataMgr.getInstance();
        if (dm.trainUsers != null) {
            FileUtils.saveListData(FILE_USERS, TrainUser.class, dm.trainUsers);
        }
    }

    static void savePrograms() {
        DataMgr dm = DataMgr.getInstance();
        if (dm.trainData != null) {
            FileUtils.saveListData(FILE_PROGRAMS, TrainProgram.class, dm.trainData);
        }
    }

    private static void saveDevices() {
        DataMgr dm = DataMgr.getInstance();
        if (dm.deviceBeanList != null) {
            FileUtils.saveListData(FILE_DEVICES, DeviceBean.class, dm.deviceBeanList);
        }
    }

    @SuppressWarnings("unchecked")
    static <T> List<T> readList(String key, Class<T> clazz) {
        Object raw = FileUtils.getDataList(key, clazz);
        if (raw instanceof List) {
            return (List<T>) raw;
        }
        return null;
    }

    private static <T> List<T> dmList(String key, Class<T> clazz) {
        List<T> list = readList(key, clazz);
        return list != null ? list : new ArrayList<T>();
    }

    static <T> List<T> parseList(com.alibaba.fastjson.JSONArray arr, Class<T> clazz) {
        if (arr == null) {
            return null;
        }
        return JSON.parseArray(arr.toJSONString(), clazz);
    }

    static String tr(String bg, String en) {
        return XemsLang.isBg() ? bg : en;
    }
}
