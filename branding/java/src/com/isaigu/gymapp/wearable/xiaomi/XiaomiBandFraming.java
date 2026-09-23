package com.isaigu.gymapp.wearable.xiaomi;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/** Xiaomi V1 BLE framing layer (service 0xFE95). */
final class XiaomiBandFraming {
    static final int FRAME_CHUNKED_START = 0;
    static final int FRAME_CHUNKED_ACK = 1;
    static final int FRAME_SINGLE = 2;
    static final int FRAME_ACK = 3;

    static final byte[] ACK_FRAME = new byte[] {0x00, 0x00, 0x03, 0x00};
    static final byte[] CHUNK_START_ACK = new byte[] {0x00, 0x00, 0x01, 0x01};
    static final byte[] CHUNK_END_ACK = new byte[] {0x00, 0x00, 0x01, 0x00};

    private XiaomiBandFraming() {}

    static Frame parseFrame(byte[] data) {
        ByteBuffer view = ByteBuffer.wrap(data).order(ByteOrder.LITTLE_ENDIAN);
        int chunkId = view.getShort(0) & 0xffff;
        if (chunkId != 0) {
            byte[] payload = new byte[data.length - 2];
            System.arraycopy(data, 2, payload, 0, payload.length);
            return Frame.chunkData(chunkId, payload);
        }
        int msgType = data[2] & 0xff;
        if (msgType == FRAME_CHUNKED_START) {
            boolean encrypted = data[3] == 1;
            int numChunks = view.getShort(4) & 0xffff;
            return Frame.chunkStart(encrypted, numChunks);
        }
        if (msgType == FRAME_CHUNKED_ACK) {
            return Frame.chunkAck(data[3] & 0xff);
        }
        if (msgType == FRAME_SINGLE) {
            boolean encrypted = data[3] == 1;
            byte[] payload = new byte[data.length - 4];
            System.arraycopy(data, 4, payload, 0, payload.length);
            return Frame.single(encrypted, payload);
        }
        if (msgType == FRAME_ACK) {
            return Frame.ack(data[3] & 0xff);
        }
        return Frame.unknown();
    }

    static byte[] buildPlainFrame(byte[] protoBytes) {
        byte[] frame = new byte[4 + protoBytes.length];
        frame[2] = FRAME_SINGLE;
        frame[3] = 2;
        System.arraycopy(protoBytes, 0, frame, 4, protoBytes.length);
        return frame;
    }

    static byte[] buildEncFrame(byte[] encPayload, int encIndex) {
        byte[] frame = new byte[6 + encPayload.length];
        frame[2] = FRAME_SINGLE;
        frame[3] = 1;
        ByteBuffer.wrap(frame).order(ByteOrder.LITTLE_ENDIAN).putShort(4, (short) encIndex);
        System.arraycopy(encPayload, 0, frame, 6, encPayload.length);
        return frame;
    }

    static final class Frame {
        final String kind;
        final boolean encrypted;
        final byte[] payload;
        final int numChunks;
        final int chunkId;
        final int subtype;
        final int result;

        private Frame(String kind, boolean encrypted, byte[] payload,
                int numChunks, int chunkId, int subtype, int result) {
            this.kind = kind;
            this.encrypted = encrypted;
            this.payload = payload;
            this.numChunks = numChunks;
            this.chunkId = chunkId;
            this.subtype = subtype;
            this.result = result;
        }

        static Frame chunkStart(boolean encrypted, int numChunks) {
            return new Frame("chunk_start", encrypted, null, numChunks, 0, 0, 0);
        }

        static Frame chunkData(int chunkId, byte[] payload) {
            return new Frame("chunk_data", false, payload, 0, chunkId, 0, 0);
        }

        static Frame chunkAck(int subtype) {
            return new Frame("chunk_ack", false, null, 0, 0, subtype, 0);
        }

        static Frame single(boolean encrypted, byte[] payload) {
            return new Frame("single", encrypted, payload, 0, 0, 0, 0);
        }

        static Frame ack(int result) {
            return new Frame("ack", false, null, 0, 0, 0, result);
        }

        static Frame unknown() {
            return new Frame("unknown", false, null, 0, 0, 0, 0);
        }
    }
}
