package com.isaigu.gymapp.wearable.xiaomi;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;

import java.util.ArrayList;
import java.util.UUID;

/** Serialized GATT writes — ACK + commands must not overlap (Gadgetbridge / miband-7-pro pattern). */
final class XiaomiBandWriteQueue {
    private static final UUID CCCD = UUID.fromString("00002902-0000-1000-8000-00805f9b34fb");

    private final XiaomiBandBleClient client;
    private final ArrayList<WriteOp> queue = new ArrayList<WriteOp>();
    private boolean busy;

    XiaomiBandWriteQueue(XiaomiBandBleClient client) {
        this.client = client;
    }

    void clear() {
        queue.clear();
        busy = false;
    }

    void enqueueBytes(byte[] frame) {
        if (frame == null) {
            return;
        }
        queue.add(new BytesOp(frame));
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

    void onWriteFinished() {
        busy = false;
        pump();
    }

    private void pump() {
        if (busy || queue.isEmpty()) {
            return;
        }
        BluetoothGatt gatt = client.getGatt();
        BluetoothGattCharacteristic writeChar = client.getWriteCharacteristic();
        if (gatt == null || writeChar == null) {
            return;
        }
        WriteOp op = queue.remove(0);
        busy = true;
        try {
            if (!op.execute(gatt, writeChar, client)) {
                busy = false;
                pump();
            }
        } catch (Throwable t) {
            client.logError("write_queue", t);
            busy = false;
            pump();
        }
    }

    private interface WriteOp {
        boolean execute(BluetoothGatt gatt, BluetoothGattCharacteristic writeChar,
                XiaomiBandBleClient client);
    }

    private static final class BytesOp implements WriteOp {
        private final byte[] frame;

        BytesOp(byte[] frame) {
            this.frame = frame;
        }

        @Override
        public boolean execute(BluetoothGatt gatt, BluetoothGattCharacteristic writeChar,
                XiaomiBandBleClient client) {
            return client.writeFrameNow(gatt, writeChar, frame);
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
