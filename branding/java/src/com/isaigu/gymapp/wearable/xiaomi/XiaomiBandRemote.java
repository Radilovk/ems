package com.isaigu.gymapp.wearable.xiaomi;

/**
 * The band's own screens talking back to XEMS: the music screen asks for the current "track"
 * and sends its buttons. Both links (BLE and SPP) forward them here; the wearable layer
 * (BandRemote) decides what they do.
 */
public final class XiaomiBandRemote {
    public static final int KEY_PLAY = 0;
    public static final int KEY_PAUSE = 1;
    public static final int KEY_PREV = 3;
    public static final int KEY_NEXT = 4;
    public static final int KEY_VOLUME = 5;

    public interface Listener {
        void onMusicRequest();

        void onMediaKey(int key, int volume);
    }

    private static volatile Listener listener;

    private XiaomiBandRemote() {}

    public static void setListener(Listener l) {
        listener = l;
    }

    /** Returns true when the command was a music-screen message. */
    static boolean onCommand(int type, int subtype, java.util.Map<Integer, java.util.List<Object>> cmd) {
        if (type != XiaomiBandMessages.T_MUSIC) {
            return false;
        }
        Listener l = listener;
        if (subtype == XiaomiBandMessages.MUSIC_GET) {
            if (l != null) {
                l.onMusicRequest();
            }
            return true;
        }
        if (subtype == XiaomiBandMessages.MUSIC_BUTTON) {
            int[] k = XiaomiBandMessages.mediaKey(cmd);
            if (k != null && l != null) {
                l.onMediaKey(k[0], k[1]);
            }
            return true;
        }
        return true;
    }

    /** Build the music-screen update for {@link XiaomiBandLink#sendCommand(byte[])}. */
    public static byte[] musicInfo(boolean playing, boolean paused, int volume, String title, String subtitle,
            int positionS, int durationS) {
        int state = playing ? 1 : paused ? 2 : 0;
        return XiaomiBandMessages.musicInfo(state, volume, title, subtitle, positionS, durationS);
    }
}
