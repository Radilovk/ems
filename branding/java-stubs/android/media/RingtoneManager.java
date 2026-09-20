package android.media;

import android.content.Context;
import android.net.Uri;

public class RingtoneManager {
    public static final String ACTION_RINGTONE_PICKER =
            "android.intent.action.RINGTONE_PICKER";
    public static final String EXTRA_RINGTONE_TYPE = "android.intent.extra.ringtone.TYPE";
    public static final String EXTRA_RINGTONE_SHOW_DEFAULT =
            "android.intent.extra.ringtone.SHOW_DEFAULT";
    public static final String EXTRA_RINGTONE_SHOW_SILENT =
            "android.intent.extra.ringtone.SHOW_SILENT";
    public static final String EXTRA_RINGTONE_EXISTING_URI =
            "android.intent.extra.ringtone.EXISTING_URI";
    public static final String EXTRA_RINGTONE_PICKED_URI =
            "android.intent.extra.ringtone.PICKED_URI";
    public static final String EXTRA_RINGTONE_TITLE =
            "android.intent.extra.ringtone.TITLE";

    public static final int TYPE_RINGTONE = 1;
    public static final int TYPE_NOTIFICATION = 2;
    public static final int TYPE_ALARM = 4;

    public RingtoneManager(Context context) {
    }

    public static Ringtone getRingtone(Context context, Uri uri) {
        return null;
    }
}
