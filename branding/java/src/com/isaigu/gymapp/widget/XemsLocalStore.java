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
 * Local-only data layer: users, programs and paired devices stay on the tablet.
 * Cloud sync to xemsplus.com is bypassed after admin login.
 */
public final class XemsLocalStore {
    private static final String PREFS = "xems_local_store";
    private static final String KEY_PAIRED_MACS = "paired_macs";
    private static final String KEY_NEXT_USER_ID = "next_user_id";
    private static final String KEY_NEXT_PROGRAM_ID = "next_program_id";
    private static final String KEY_NEXT_DEVICE_ID = "next_device_id";
    private static final String KEY_DEFAULT_PROGRAM = "default_program_seeded";

    private static final String FILE_USERS = "file_name_user_data";
    private static final String FILE_DEVICES = "file_name_device_data";
    private static final String FILE_PROGRAMS = "file_name_train_data";
    private static final String FILE_PROTOCOL = "file_name_register_protocol_data";

    private XemsLocalStore() {}

    public static boolean isUserSession() {
        return DataMgr.singleMode;
    }

    public static boolean isAdminSession() {
        return !DataMgr.singleMode;
    }

    private static SharedPreferences prefs(Context context) {
        return context.getApplicationContext().getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }

    /** Replaces the online cloud bootstrap in MainFragment.initData. */
    public static void bootstrapOnline(MainFragment fragment) {
        try {
            Context ctx = fragment != null && fragment.getParentActivity() != null
                    ? fragment.getParentActivity() : null;
            loadDevices(ctx);
            loadProtocol();
            loadUsers();
            loadPrograms();
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
        dm.trainUsers = users;
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
        saveDevices();
    }

    private static void loadProtocol() {
        RegisterProtocolVO vo = (RegisterProtocolVO) FileUtils.getData(FILE_PROTOCOL, RegisterProtocolVO.class);
        if (vo != null) {
            DataMgr.getInstance().registerProtocolVO = vo;
        }
    }

    /** Filter device list for connect dialogs. */
    public static List<DeviceBean> filterDevices(Context ctx, List<DeviceBean> source) {
        if (source == null) {
            return new ArrayList<>();
        }
        if (isAdminSession()) {
            return source;
        }
        Set<String> paired = getPairedMacs(ctx);
        if (paired.isEmpty()) {
            return new ArrayList<>();
        }
        List<DeviceBean> out = new ArrayList<>();
        for (int i = 0; i < source.size(); i++) {
            DeviceBean d = source.get(i);
            if (d != null && d.macAddress != null && paired.contains(normMac(d.macAddress))) {
                out.add(d);
            }
        }
        return out;
    }

    /** Admin BLE scan: add newly discovered EMS devices to the list. */
    public static void addDiscoveredDevice(List<DeviceBean> list, String mac, String sign, String name) {
        if (!isAdminSession() || list == null || TextUtils.isEmpty(mac) || TextUtils.isEmpty(sign)) {
            return;
        }
        String macNorm = normMac(mac);
        for (int i = 0; i < list.size(); i++) {
            DeviceBean d = list.get(i);
            if (d != null && d.macAddress != null && macNorm.equals(normMac(d.macAddress))) {
                d.connectedSign = sign;
                return;
            }
        }
        DeviceBean bean = new DeviceBean();
        bean.macAddress = mac;
        bean.name = TextUtils.isEmpty(name) ? mac : name;
        bean.connectedSign = sign;
        bean.id = Long.valueOf(nextDeviceId());
        list.add(bean);
        DataMgr dm = DataMgr.getInstance();
        if (dm.deviceBeanList == null) {
            dm.deviceBeanList = new ArrayList<>();
        }
        dm.deviceBeanList.add(bean);
        saveDevices();
    }

    /** Called when admin successfully pairs a device during connect flow. */
    public static void onDevicePaired(Context ctx, String mac, String name) {
        if (ctx == null || TextUtils.isEmpty(mac)) {
            return;
        }
        addPairedMac(ctx, mac);
        ensureDeviceRecord(mac, name);
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
            if (program.id == null || program.id.longValue() <= 0) {
                program.id = Long.valueOf(nextProgramId());
            }
            DataMgr dm = DataMgr.getInstance();
            dm.addOrUpdateTrainProgram(program);
            savePrograms();
            prefs(activity).edit().putBoolean(KEY_DEFAULT_PROGRAM, true).apply();
            MessageDispatcher.dispatchEventMessage((short) 0x6a);
            activity.showTips(tr("Програмата е запазена локално", "Program saved locally"));
            activity.closeDialogFragment(dialog);
        } catch (Throwable t) {
            android.util.Log.e("xems_local", "saveProgram", t);
            activity.showTips(tr("Грешка при запазване", "Save failed"));
        }
    }

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

    public static boolean importBackup(Activity activity, Uri src) {
        if (activity == null || src == null) {
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
                sb.append(line);
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
            if (root.containsKey("pairedMacs")) {
                Set<String> macs = new HashSet<>();
                List<String> list = JSON.parseArray(root.getJSONArray("pairedMacs").toJSONString(), String.class);
                if (list != null) {
                    for (int i = 0; i < list.size(); i++) {
                        macs.add(normMac(list.get(i)));
                    }
                }
                savePairedMacs(activity, macs);
            }
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
        prefs(nullSafeContext()).edit().putBoolean(KEY_DEFAULT_PROGRAM, true).apply();
    }

    private static Context nullSafeContext() {
        return DataMgr.getInstance().loginUser != null ? getAppContext() : null;
    }

    private static Context getAppContext() {
        try {
            Class<?> at = Class.forName("android.app.ActivityThread");
            java.lang.reflect.Method m = at.getMethod("currentApplication");
            return (Context) m.invoke(null);
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static void ensureDeviceRecord(String mac, String name) {
        DataMgr dm = DataMgr.getInstance();
        if (dm.deviceBeanList == null) {
            dm.deviceBeanList = new ArrayList<>();
        }
        String norm = normMac(mac);
        for (int i = 0; i < dm.deviceBeanList.size(); i++) {
            DeviceBean d = dm.deviceBeanList.get(i);
            if (d != null && d.macAddress != null && norm.equals(normMac(d.macAddress))) {
                return;
            }
        }
        DeviceBean bean = new DeviceBean();
        bean.macAddress = mac;
        bean.name = TextUtils.isEmpty(name) ? mac : name;
        bean.id = Long.valueOf(nextDeviceId());
        dm.deviceBeanList.add(bean);
        saveDevices();
    }

    private static void addPairedMac(Context ctx, String mac) {
        Set<String> macs = getPairedMacs(ctx);
        macs.add(normMac(mac));
        savePairedMacs(ctx, macs);
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
            if (!TextUtils.isEmpty(parts[i])) {
                out.add(parts[i]);
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

    private static String normMac(String mac) {
        return mac == null ? "" : mac.trim().toUpperCase();
    }

    private static long nextUserId() {
        Context ctx = getAppContext();
        if (ctx == null) {
            return -System.currentTimeMillis();
        }
        long id = prefs(ctx).getLong(KEY_NEXT_USER_ID, 100000L);
        prefs(ctx).edit().putLong(KEY_NEXT_USER_ID, id + 1).apply();
        return -id;
    }

    private static long nextProgramId() {
        Context ctx = getAppContext();
        if (ctx == null) {
            return System.currentTimeMillis();
        }
        long id = prefs(ctx).getLong(KEY_NEXT_PROGRAM_ID, 1L);
        prefs(ctx).edit().putLong(KEY_NEXT_PROGRAM_ID, id + 1).apply();
        return id;
    }

    private static long nextDeviceId() {
        Context ctx = getAppContext();
        if (ctx == null) {
            return System.currentTimeMillis();
        }
        long id = prefs(ctx).getLong(KEY_NEXT_DEVICE_ID, 1L);
        prefs(ctx).edit().putLong(KEY_NEXT_DEVICE_ID, id + 1).apply();
        return id;
    }

    private static void saveUsers() {
        DataMgr dm = DataMgr.getInstance();
        if (dm.trainUsers != null) {
            FileUtils.saveListData(FILE_USERS, TrainUser.class, dm.trainUsers);
        }
    }

    private static void savePrograms() {
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

    private static <T> List<T> readList(String key, Class<T> clazz) {
        Object raw = FileUtils.getDataList(key, clazz);
        if (raw instanceof List) {
            return (List<T>) raw;
        }
        return null;
    }

    private static <T> List<T> dmList(String key, Class<T> clazz) {
        List<T> list = readList(key, clazz);
        return list != null ? list : new ArrayList<>();
    }

    private static <T> List<T> parseList(com.alibaba.fastjson.JSONArray arr, Class<T> clazz) {
        if (arr == null) {
            return null;
        }
        return JSON.parseArray(arr.toJSONString(), clazz);
    }

    static String tr(String bg, String en) {
        return XemsLang.isBg() ? bg : en;
    }
}
