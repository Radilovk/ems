package com.isaigu.gymapp.wearable.xiaomi;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/** Minimal protobuf helpers for Xiaomi encrypted BLE V1. */
final class XiaomiBandProto {
    private XiaomiBandProto() {}

    static byte[] varintEncode(int value) {
        ArrayList<Byte> out = new ArrayList<Byte>();
        int v = value;
        while (true) {
            int bits = v & 0x7f;
            v >>>= 7;
            if (v != 0) {
                out.add((byte) (bits | 0x80));
            } else {
                out.add((byte) bits);
                break;
            }
        }
        return toBytes(out);
    }

    static IntResult varintDecode(byte[] data, int pos) {
        int result = 0;
        int shift = 0;
        while (pos < data.length) {
            int b = data[pos++] & 0xff;
            result |= (b & 0x7f) << shift;
            shift += 7;
            if ((b & 0x80) == 0) {
                break;
            }
        }
        return new IntResult(result, pos);
    }

    static byte[] protoFieldVarint(int fieldNumber, int value) {
        return concat(fieldTag(fieldNumber, 0), varintEncode(value));
    }

    /** Protobuf sint32 (zigzag-encoded varint). */
    static byte[] protoFieldSint32(int fieldNumber, int value) {
        int zigzag = (value << 1) ^ (value >> 31);
        return protoFieldVarint(fieldNumber, zigzag);
    }

    static byte[] protoFieldBytes(int fieldNumber, byte[] value) {
        return concat(fieldTag(fieldNumber, 2), varintEncode(value.length), value);
    }

    static byte[] protoFieldMessage(int fieldNumber, byte[] message) {
        return protoFieldBytes(fieldNumber, message);
    }

    static byte[] protoFieldFloat(int fieldNumber, float value) {
        ByteBuffer buf = ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN);
        buf.putFloat(value);
        return concat(fieldTag(fieldNumber, 5), buf.array());
    }

    static byte[] protoFieldString(int fieldNumber, String value) {
        return protoFieldBytes(fieldNumber, value.getBytes());
    }

    static Map<Integer, List<Object>> protoParse(byte[] data) {
        Map<Integer, List<Object>> result = new HashMap<Integer, List<Object>>();
        int pos = 0;
        while (pos < data.length) {
            IntResult tag = varintDecode(data, pos);
            pos = tag.pos;
            int fieldNumber = tag.value >>> 3;
            int wireType = tag.value & 0x07;
            Object val;
            if (wireType == 0) {
                IntResult r = varintDecode(data, pos);
                pos = r.pos;
                val = r.value;
            } else if (wireType == 2) {
                IntResult r = varintDecode(data, pos);
                pos = r.pos;
                int len = r.value;
                byte[] bytes = new byte[len];
                System.arraycopy(data, pos, bytes, 0, len);
                pos += len;
                val = bytes;
            } else if (wireType == 5) {
                ByteBuffer buf = ByteBuffer.wrap(data, pos, 4).order(ByteOrder.LITTLE_ENDIAN);
                val = buf.getFloat();
                pos += 4;
            } else if (wireType == 1) {
                pos += 8;
                continue;
            } else {
                break;
            }
            List<Object> bucket = result.get(fieldNumber);
            if (bucket == null) {
                bucket = new ArrayList<Object>();
                result.put(fieldNumber, bucket);
            }
            bucket.add(val);
        }
        return result;
    }

    static byte[] concat(byte[]... arrays) {
        int total = 0;
        for (int i = 0; i < arrays.length; i++) {
            total += arrays[i].length;
        }
        byte[] out = new byte[total];
        int off = 0;
        for (int i = 0; i < arrays.length; i++) {
            System.arraycopy(arrays[i], 0, out, off, arrays[i].length);
            off += arrays[i].length;
        }
        return out;
    }

    private static byte[] fieldTag(int fieldNumber, int wireType) {
        return varintEncode((fieldNumber << 3) | wireType);
    }

    private static byte[] toBytes(ArrayList<Byte> list) {
        byte[] out = new byte[list.size()];
        for (int i = 0; i < list.size(); i++) {
            out[i] = list.get(i);
        }
        return out;
    }

    static final class IntResult {
        final int value;
        final int pos;

        IntResult(int value, int pos) {
            this.value = value;
            this.pos = pos;
        }
    }
}
