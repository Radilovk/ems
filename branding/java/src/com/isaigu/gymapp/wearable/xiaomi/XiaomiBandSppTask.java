package com.isaigu.gymapp.wearable.xiaomi;

/** Main-thread steps of the SPP link (named class: no lambdas / anonymous classes for dx). */
final class XiaomiBandSppTask implements Runnable {
    static final int OPENED = 1;
    static final int FAILED = 2;
    static final int BYTES = 3;
    static final int CLOSED = 4;
    static final int VERSION_TIMEOUT = 5;
    static final int AUTH_TIMEOUT = 6;
    static final int WATCH = 7;
    static final int RECONNECT = 8;
    static final int START_REALTIME = 9;

    private final XiaomiBandSppClient client;
    private final int kind;
    private final XiaomiBandSppPort port;
    private final byte[] data;
    private final String detail;

    XiaomiBandSppTask(XiaomiBandSppClient client, int kind) {
        this(client, kind, null, null, null);
    }

    XiaomiBandSppTask(XiaomiBandSppClient client, int kind, XiaomiBandSppPort port,
            byte[] data, String detail) {
        this.client = client;
        this.kind = kind;
        this.port = port;
        this.data = data;
        this.detail = detail;
    }

    @Override
    public void run() {
        try {
            switch (kind) {
                case OPENED:
                    client.onPortOpened(port);
                    break;
                case FAILED:
                    client.onPortFailed(port, detail);
                    break;
                case BYTES:
                    client.onPortBytes(port, data);
                    break;
                case CLOSED:
                    client.onPortClosed(port, detail);
                    break;
                case VERSION_TIMEOUT:
                    client.onVersionTimeout();
                    break;
                case AUTH_TIMEOUT:
                    client.onAuthTimeout();
                    break;
                case WATCH:
                    client.onWatchTick();
                    break;
                case RECONNECT:
                    client.onReconnectTick();
                    break;
                case START_REALTIME:
                    client.onStartRealtimeDue();
                    break;
                default:
                    break;
            }
        } catch (Throwable t) {
            client.log("ERR:spp_task", kind + " " + t);
        }
    }
}
