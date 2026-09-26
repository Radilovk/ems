package com.isaigu.gymapp.wearable;

import android.app.Activity;
import android.os.Bundle;

/**
 * Target of the "XEMS band" home-screen icon: no screen of its own (translucent theme in the
 * manifest), asks {@link BandLaunch} to open XEMS on the band and closes at once.
 */
public final class BandLaunchActivity extends Activity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        BandLaunch.request(this);
        finish();
    }
}
