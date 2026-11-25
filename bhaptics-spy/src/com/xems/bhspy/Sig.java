package com.xems.bhspy;

import java.util.ArrayList;
import java.util.List;

/**
 * The 57 methods of the bHaptics Player's bound service (interface descriptor "com.bhaptics.service.IBhapticsService").
 * Android numbers AIDL transactions from 1 in declaration order, so the index in {@link #TABLE} + 1 is the code.
 * Arguments: S string · I int · F float · Z boolean (an int on the wire) · B byte[] · i int[] · f float[].
 * Returns: V nothing · Z boolean · I int · L list of strings · b byte[].
 * Pure Java (no android.*): the host test decodes against a fake {@link Reader}.
 */
final class Sig {
    static final String DESCRIPTOR = "com.bhaptics.service.IBhapticsService";

    /** name : arguments : return */
    static final String[] TABLE = {
        "hapticEnable::V", "hapticDisable::V", "destroy::V",
        "registerHapticEvent:SSS:V", "registerReflectHapticEvent:SSS:V", "hapticEventRegisteredByTime:SSI:V",
        "hapticEventDot:SSSBI:V", "hapticEventPath:SSSIffiI:V", "hapticEventRegistered:SSSFFFF:V",
        "hapticStopAllEvent::V", "hapticStopEvent:SS:V", "isRegistered:SS:Z", "isPlaying:SS:Z", "isAnythingPlaying::Z",
        "getStatus:S:b", "togglePosition:S:V", "ping:S:V", "pair:S:V", "unpair:S:V", "toggleScan::V", "isScanning::Z",
        "getDeviceList::L", "refreshPairing::V", "toggleStreamingEnable::V", "isStreamingEnable::Z",
        "getStreamingHosts::L", "searchHosts::V", "enableDevice:SZ:V", "initialize:SSS:V", "play:SS:I",
        "playPos:SSI:I", "playParam:SSFFFF:I", "playPosParam:SSIFFFF:I", "stop:SI:Z", "stopAll:S:Z",
        "getEventList:S:L", "stopByEventId:SS:Z", "isPlayingByEventId:SS:Z", "isPlayingByRequestId:SI:Z",
        "playMotors:SIIi:I", "connectStreamingHost:S:V", "disconnectStreamingHost:S:V",
        "playMotorsWithRequestId:SIIIi:I", "playWithRequestId:SSIFFFF:I", "playGlove:SIiiiI:I",
        "playLoop:SSFFFFII:I", "playLoopWithRequestId:SSIFFFFII:I", "playPathWithRequestId:SIIIffi:I",
        "pause:SS:V", "resume:SS:V", "playWithStartTime:SSIIFFFF:I", "initializeV2:SSS:V", "playMotorsV2:SIIi:I",
        "playMotorsWithRequestIdV2:SIIIi:I", "playPathWithRequestIdV2:SIIIffi:I", "connectStreamingHostV2:S:V",
        "playGloveDK3:SIiiiII:I",
    };

    /** The wire reads Parcel offers (android.os.Parcel implements them in SpyBinder). */
    interface Reader {
        String readString();
        int readInt();
        float readFloat();
        byte[] createByteArray();
        int[] createIntArray();
        float[] createFloatArray();
    }

    static int count() {
        return TABLE.length;
    }

    static String name(int index) {
        return TABLE[index].split(":", -1)[0];
    }

    static String args(int index) {
        return TABLE[index].split(":", -1)[1];
    }

    static char ret(int index) {
        return TABLE[index].split(":", -1)[2].charAt(0);
    }

    /** Reads the arguments of method {@code index} in order; boolean → Boolean, the rest as their Java types. */
    static Object[] decode(int index, Reader r) {
        String a = args(index);
        List<Object> out = new ArrayList<Object>();
        for (int i = 0; i < a.length(); i++) {
            switch (a.charAt(i)) {
                case 'S': out.add(r.readString()); break;
                case 'I': out.add(Integer.valueOf(r.readInt())); break;
                case 'F': out.add(Float.valueOf(r.readFloat())); break;
                case 'Z': out.add(Boolean.valueOf(r.readInt() != 0)); break;
                case 'B': out.add(r.createByteArray()); break;
                case 'i': out.add(r.createIntArray()); break;
                case 'f': out.add(r.createFloatArray()); break;
                default: throw new IllegalStateException("bad kind " + a.charAt(i));
            }
        }
        return out.toArray();
    }
}
