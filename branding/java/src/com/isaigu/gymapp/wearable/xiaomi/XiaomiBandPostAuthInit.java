package com.isaigu.gymapp.wearable.xiaomi;

/**
 * Post-auth init: clock → device info → user profile → worn/battery → realtime HR.
 */
final class XiaomiBandPostAuthInit {
    private static final int STEP_CLOCK = 0;
    private static final int STEP_DEVICE_INFO = 1;
    private static final int STEP_USER_INFO = 2;
    private static final int STEP_DONE = 3;

    private final XiaomiBandBleClient client;
    private int step = STEP_DONE;
    private boolean active;

    XiaomiBandPostAuthInit(XiaomiBandBleClient client) {
        this.client = client;
    }

    boolean isComplete() {
        return step >= STEP_DONE && !active;
    }

    void reset() {
        step = STEP_DONE;
        active = false;
    }

    /**
     * Queue clock sync → device info → user info. The write queue sends them one at a time,
     * each after the band's ACK (Gadgetbridge pattern), so realtime START queued afterwards
     * cannot overtake them.
     */
    void start() {
        step = STEP_CLOCK;
        active = true;
        client.log("init", "post-auth start");
        client.sendInitProto(XiaomiBandMessages.clock());
        step = STEP_DEVICE_INFO;
        client.sendInitProto(XiaomiBandMessages.request(XiaomiBandMessages.T_SYSTEM,
                XiaomiBandMessages.SYS_DEVICE_INFO));
        step = STEP_USER_INFO;
        client.sendInitProto(XiaomiBandMessages.userInfo(client.getAppContext()));
        client.pollStatus();
        step = STEP_DONE;
        active = false;
        client.log("init", "post-auth queued");
        client.onPostAuthInitComplete();
    }

    void onCommandAcked() {
        // Sequencing is handled by the write queue's band-ACK gating.
    }
}
