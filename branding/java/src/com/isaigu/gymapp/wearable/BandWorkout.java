package com.isaigu.gymapp.wearable;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;

import com.isaigu.gymapp.wearable.xiaomi.XiaomiBandWorkout;

/**
 * The band owner's training also runs as a native workout on the band: XEMS starts, pauses, resumes
 * and finishes it, the band records HR / calories / time itself and Mi Fitness syncs it into the
 * owner's profile. Only for the client in the leading slot who is marked as the band owner in the
 * client form (prefs xems_user_profiles: "own&lt;id&gt;", sport code "misport&lt;id&gt;").
 */
final class BandWorkout {
    static final String PREFS = "xems_user_profiles";

    private static final Handler H = new Handler(Looper.getMainLooper());

    private BandWorkout() {}

    static boolean isOwner(Context c, long userId) {
        return c != null && prefs(c).getBoolean("own" + userId, false);
    }

    static int sport(Context c, long userId) {
        return c != null ? prefs(c).getInt("misport" + userId, XiaomiBandWorkout.SPORT_HIIT)
                : XiaomiBandWorkout.SPORT_HIIT;
    }

    private static SharedPreferences prefs(Context c) {
        return c.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }

    static void onStart(SessionRec r) {
        Context c = WearableSyncHelper.getContext();
        r.bandOwner = isOwner(c, r.userId);
        if (!r.leader || !r.bandOwner) {
            return;
        }
        if (!XiaomiBandWorkout.isConnected()) {
            WearableBleDiagLog.log("band_workout", "owner " + r.userId + " — band not connected, no native workout");
            return;
        }
        r.bandSport = sport(c, r.userId);
        boolean ok = XiaomiBandWorkout.open(r.bandSport);
        r.bandSent = ok;
        r.bandRunning = true;
        WearableBleDiagLog.log("band_workout", "open sport=" + r.bandSport + " sent=" + ok);
        H.postDelayed(new Send(r.bandSport, XiaomiBandWorkout.START), 800L);
    }

    static void onState(SessionRec r, boolean running) {
        if (!r.bandSent || running == r.bandRunning) {
            return;
        }
        r.bandRunning = running;
        new Send(r.bandSport, running ? XiaomiBandWorkout.RESUME : XiaomiBandWorkout.PAUSE).run();
    }

    static void onEnd(SessionRec r) {
        if (!r.bandSent) {
            return;
        }
        new Send(r.bandSport, XiaomiBandWorkout.FINISH).run();
    }

    static final class Send implements Runnable {
        final int sport;
        final int status;

        Send(int sport, int status) {
            this.sport = sport;
            this.status = status;
        }

        @Override
        public void run() {
            try {
                boolean ok = XiaomiBandWorkout.status(sport, status);
                WearableBleDiagLog.log("band_workout", "status " + status + " sport=" + sport + " sent=" + ok);
            } catch (Throwable t) {
                WearableBleDiagLog.log("band_workout", "status " + status + ": " + t);
            }
        }
    }
}
