package com.isaigu.gymapp.wearable.xiaomi;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;

import java.util.ArrayList;
import java.util.UUID;

/**
 * Serialized GATT writes with band-ACK gating for encrypted commands.
 * ACK replies to inbound frames bypass the band-ACK wait.
 */
final class XiaomiBandWriteQueue {
    private static final UUID CCCD = UUID.fromString("00002902-0000-1000-8000-00805f9b34fb");

    private final XiaomiBandBleClient client;
    private final ArrayList<WriteOp> queue = new ArrayList<WriteOp>();
    private boolean busy;
    private boolean waitingBandAck;

    XiaomiBandWriteQueue(XiaomiBandBleClient client) {
        this.client = client;
    }

    void clear() {
        queue.clear();
        busy = false;
        waitingBandAck = false;
    }

    void enqueueAck(byte[] frame) {
        enqueueAckTo(null, frame);
    }

    /**
     * ACK/chunk-ACK for an inbound frame. Must be written to the characteristic the frame
     * arrived on (Gadgetbridge XiaomiCharacteristic.sendAck) — the band waits for it there.
     */
    void enqueueAckTo(BluetoothGattCharacteristic target, byte[] frame) {
        if (frame == null) {
            return;
        }
        queue.add(new BytesOp(frame, false, target));
        pump();
    }

    void enqueueCommand(byte[] frame) {
        if (frame == null) {
            return;
        }
        queue.add(new BytesOp(frame, true, null));
        pump();
    }

    void enqueueEnableNotify(BluetoothGatt gatt, BluetoothGattCharacteristic characteristic) {
        if (gatt == null || characteristic == null) {
            return;
        }
        queue.add(new NotifyOp(gatt, characteristic));
        pump();
    }

    void enqueueRunnable(Runnable runnable) {
        if (runnable == null) {
            return;
        }
        queue.add(new RunnableOp(runnable));
        pump();
    }

    void onBandAck() {
        if (waitingBandAck) {
            waitingBandAck = false;
            client.cancelBandAckTimeout();
            pump();
        }
    }

    /** Band never ACKed the last command — do not stall the queue forever. */
    boolean onBandAckTimeout() {
        if (!waitingBandAck) {
            return false;
        }
        waitingBandAck = false;
        pump();
        return true;
    }

    boolean isWaitingBandAck() {
        return waitingBandAck;
    }

    void onWriteFinished() {
        busy = false;
        pump();
    }

    /** Commands wait for band ACK; inbound ACK replies may run anytime. */
    private WriteOp pollNextOp() {
        for (int i = 0; i < queue.size(); i++) {
            WriteOp op = queue.get(i);
            if (!op.needsBandAck() || !waitingBandAck) {
                queue.remove(i);
                return op;
            }
        }
        return null;
    }

    private void pump() {
        if (busy || queue.isEmpty()) {
            return;
        }
        WriteOp op = pollNextOp();
        if (op == null) {
            return;
        }
        BluetoothGatt gatt = client.getGatt();
        BluetoothGattCharacteristic writeChar = client.getWriteCharacteristic();
        if (gatt == null || writeChar == null) {
            return;
        }
        busy = true;
        try {
            boolean needsBandAck = op.needsBandAck();
            if (!op.execute(gatt, writeChar, client)) {
                busy = false;
                waitingBandAck = false;
                pump();
                return;
            }
            if (needsBandAck) {
                waitingBandAck = true;
                client.scheduleBandAckTimeout();
            }
        } catch (Throwable t) {
            client.logError("write_queue", t);
            busy = false;
            waitingBandAck = false;
            pump();
        }
    }

    private interface WriteOp {
        boolean needsBandAck();

        boolean execute(BluetoothGatt gatt, BluetoothGattCharacteristic writeChar,
                XiaomiBandBleClient client);
    }

    private static final class BytesOp implements WriteOp {
        private final byte[] frame;
        private final boolean command;
        private final BluetoothGattCharacteristic target;

        BytesOp(byte[] frame, boolean command, BluetoothGattCharacteristic target) {
            this.frame = frame;
            this.command = command;
            this.target = target;
        }

        @Override
        public boolean needsBandAck() {
            return command;
        }

        @Override
        public boolean execute(BluetoothGatt gatt, BluetoothGattCharacteristic writeChar,
                XiaomiBandBleClient client) {
            return client.writeFrameNow(gatt, target != null ? target : writeChar, frame);
        }
    }

    private static final class NotifyOp implements WriteOp {
        private final BluetoothGatt gatt;
        private final BluetoothGattCharacteristic characteristic;

        NotifyOp(BluetoothGatt gatt, BluetoothGattCharacteristic characteristic) {
            this.gatt = gatt;
            this.characteristic = characteristic;
        }

        @Override
        public boolean needsBandAck() {
            return false;
        }

        @Override
        public boolean execute(BluetoothGatt gatt, BluetoothGattCharacteristic writeChar,
                XiaomiBandBleClient client) {
            try {
                gatt.setCharacteristicNotification(characteristic, true);
            } catch (Throwable t) {
                client.logError("notify_enable", t);
                return false;
            }
            BluetoothGattDescriptor cccd = characteristic.getDescriptor(CCCD);
            if (cccd == null) {
                client.log("notify", "no CCCD on " + characteristic.getUuid());
                return false;
            }
            try {
                cccd.setValue(BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE);
                return gatt.writeDescriptor(cccd);
            } catch (Throwable t) {
                client.logError("notify_cccd", t);
                return false;
            }
        }
    }

    private static final class RunnableOp implements WriteOp {
        private final Runnable runnable;

        RunnableOp(Runnable runnable) {
            this.runnable = runnable;
        }

        @Override
        public boolean needsBandAck() {
            return false;
        }

        @Override
        public boolean execute(BluetoothGatt gatt, BluetoothGattCharacteristic writeChar,
                XiaomiBandBleClient client) {
            try {
                runnable.run();
            } catch (Throwable t) {
                client.logError("write_runnable", t);
            }
            return false;
        }
    }
}
