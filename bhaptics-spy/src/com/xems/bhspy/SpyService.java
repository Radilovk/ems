package com.xems.bhspy;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

/** com.bhaptics.player.BhapticsHapticService — what the game's SDK binds. */
public class SpyService extends Service {
    private SpyBinder binder;

    @Override
    public void onCreate() {
        super.onCreate();
        Spy.get(this);
        binder = new SpyBinder(this);
    }

    @Override
    public IBinder onBind(Intent intent) {
        return binder;
    }

    @Override
    public boolean onUnbind(Intent intent) {
        Spy.get(this).uploadNow();                    // the game let go: send it now
        return false;
    }

    @Override
    public void onDestroy() {
        Spy.get(this).uploadNow();
        super.onDestroy();
    }
}
