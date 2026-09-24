package com.isaigu.gymapp.widget;

import android.os.Handler;
import android.os.Looper;

import com.alibaba.fastjson.JSONArray;
import com.isaigu.gymapp.bean.DeviceBean;
import com.isaigu.gymapp.bean.TrainProgram;
import com.isaigu.gymapp.bean.TrainUser;
import com.isaigu.gymapp.bean.dto.TrainRecordDTO;
import com.isaigu.gymapp.bean.vo.ResponseData;
import com.isaigu.gymapp.bean.vo.TrainRecordVO;
import com.isaigu.gymapp.mgr.DataMgr;
import com.isaigu.gymapp.utils.FileUtils;
import com.isaigu.gymapp.utils.OKHttpUtils;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * The tablet as the app's backend: ApiMgr's calls for customers, programs and training history
 * land here instead of xemsplus.com (apply-local-mode.py puts a jump at the top of each).
 *
 * <p>The answer goes to the same callback, in the same shape the cloud used (code 0 + data), a
 * moment later on the main thread, so every screen that waited for the cloud works unchanged,
 * and a callback that reloads a list from the answer reloads the tablet's own list.
 */
public final class XemsLocalApi {
    private static final String FILE_RECORDS = "xems_local_train_records";
    /** Records the old app queued while offline (TrainRecordDTO). */
    private static final String FILE_OFFLINE_RECORDS = "file_name_offline_train_record_data";

    private static final Handler MAIN = new Handler(Looper.getMainLooper());

    private XemsLocalApi() {}

    // ================================================================ customers

    public static void getUserCustomers(long coachId, OKHttpUtils.HttpResponseCallback cb) {
        XemsLocalStore.loadUsers();
        List<TrainUser> users = DataMgr.getInstance().trainUsers;
        answer(cb, new ArrayList<TrainUser>(users != null ? users : new ArrayList<TrainUser>()));
    }

    public static void getUserBindMachine(long coachId, OKHttpUtils.HttpResponseCallback cb) {
        List<DeviceBean> devices = DataMgr.getInstance().deviceBeanList;
        answer(cb, new ArrayList<DeviceBean>(devices != null ? devices : new ArrayList<DeviceBean>()));
    }

    // ================================================================ programs

    public static void getUserProgramTrainDataList(long coachId, OKHttpUtils.HttpResponseCallback cb) {
        XemsLocalStore.loadPrograms();
        List<TrainProgram> programs = DataMgr.getInstance().trainData;
        answer(cb, new ArrayList<TrainProgram>(programs != null ? programs : new ArrayList<TrainProgram>()));
    }

    public static void addProgramTrainData(TrainProgram program, OKHttpUtils.HttpResponseCallback cb) {
        if (program != null) {
            XemsLocalStore.storeProgram(program);
        }
        answer(cb, program);
    }

    public static void updateProgramTrainData(TrainProgram program, OKHttpUtils.HttpResponseCallback cb) {
        addProgramTrainData(program, cb);
    }

    public static void deleteProgramTrainData(long coachId, long programId, OKHttpUtils.HttpResponseCallback cb) {
        XemsLocalStore.removeProgram(programId);
        answer(cb, null);
    }

    // ================================================================ training history

    public static void addTrainRecord(TrainRecordDTO dto, OKHttpUtils.HttpResponseCallback cb) {
        if (dto != null) {
            List<TrainRecordVO> all = allRecords();
            all.add(toVo(dto, all));
            FileUtils.saveListData(FILE_RECORDS, TrainRecordVO.class, all);
        }
        answer(cb, null);
    }

    public static void addTrainRecordList(List<?> list, OKHttpUtils.HttpResponseCallback cb) {
        if (list != null && !list.isEmpty()) {
            List<TrainRecordVO> all = allRecords();
            for (Object o : list) {
                if (o instanceof TrainRecordDTO) {
                    all.add(toVo((TrainRecordDTO) o, all));
                }
            }
            FileUtils.saveListData(FILE_RECORDS, TrainRecordVO.class, all);
        }
        answer(cb, null);
    }

    /** History of one customer, newest first (with anything the old app still had queued). */
    public static void getTrainRecordList(long userId, OKHttpUtils.HttpResponseCallback cb) {
        List<TrainRecordVO> out = new ArrayList<TrainRecordVO>();
        List<TrainRecordVO> all = allRecords();
        for (int i = all.size() - 1; i >= 0; i--) {
            TrainRecordVO r = all.get(i);
            if (r != null && r.userId != null && r.userId.longValue() == userId) {
                out.add(r);
            }
        }
        answer(cb, out);
    }

    /** Every saved record; the old app's offline queue is taken in (once) on first read. */
    static List<TrainRecordVO> allRecords() {
        List<TrainRecordVO> all = XemsLocalStore.readList(FILE_RECORDS, TrainRecordVO.class);
        if (all == null) {
            all = new ArrayList<TrainRecordVO>();
        }
        List<TrainRecordDTO> queued = XemsLocalStore.readList(FILE_OFFLINE_RECORDS, TrainRecordDTO.class);
        if (queued != null && !queued.isEmpty()) {
            for (int i = 0; i < queued.size(); i++) {
                if (queued.get(i) != null) {
                    all.add(toVo(queued.get(i), all));
                }
            }
            FileUtils.saveListData(FILE_RECORDS, TrainRecordVO.class, all);
            FileUtils.saveListData(FILE_OFFLINE_RECORDS, TrainRecordDTO.class, new ArrayList<TrainRecordDTO>());
        }
        return all;
    }

    /** Import of a backup (admin setup only). */
    static void replaceRecords(JSONArray arr) {
        List<TrainRecordVO> list = XemsLocalStore.parseList(arr, TrainRecordVO.class);
        FileUtils.saveListData(FILE_RECORDS, TrainRecordVO.class,
                list != null ? list : new ArrayList<TrainRecordVO>());
    }

    // ================================================================ plumbing

    private static TrainRecordVO toVo(TrainRecordDTO d, List<TrainRecordVO> existing) {
        TrainRecordVO v = new TrainRecordVO();
        long id = 1;
        for (int i = 0; i < existing.size(); i++) {
            TrainRecordVO r = existing.get(i);
            if (r != null && r.id != null && r.id.longValue() >= id) {
                id = r.id.longValue() + 1;
            }
        }
        v.id = Long.valueOf(id);
        v.createTime = new Date();
        v.userId = d.userId;
        v.trainName = d.trainName;
        v.useType = d.useType;
        v.hz = d.hz;
        v.strenth = d.strenth;
        v.maxBodyStrenth = d.maxBodyStrenth;
        v.minBodyStrenth = d.minBodyStrenth;
        v.pulseContinue = d.pulseContinue;
        v.pulsePause = d.pulsePause;
        v.pulseWidth = d.pulseWidth;
        v.inputRamp = d.inputRamp;
        v.outputRamp = d.outputRamp;
        v.workLength = d.workLength;
        return v;
    }

    /** Success in the cloud's shape, delivered on the main thread after the caller returns. */
    @SuppressWarnings("unchecked")
    private static void answer(final OKHttpUtils.HttpResponseCallback cb, Object data) {
        if (cb == null) {
            return;
        }
        final ResponseData r = new ResponseData();
        r.setCode(0);
        r.setMessage("");
        r.setData(data);
        MAIN.post(new Runnable() {
            @Override
            public void run() {
                try {
                    cb.httpResponse(true, "", r);
                } catch (Throwable t) {
                    android.util.Log.e("xems_local", "callback", t);
                }
            }
        });
    }
}
