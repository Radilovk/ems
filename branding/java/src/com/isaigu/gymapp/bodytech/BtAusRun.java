package com.isaigu.gymapp.bodytech;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;

/**
 * Runs one Australian-current session ({@link BtAus}) on a bodytech suit: every {@link #TICK_MS} it works out where
 * the program is (ramp up / hold / ramp down / rest) and sends every chosen channel its strength through
 * {@link BtBridge#program} (held like a test: renewed each tick, the suit switches off by itself if the tablet
 * stops renewing). Pause = off; a resume ramps up again over {@link #SOFT_MS}. Closing the screen → {@link #stop}.
 */
final class BtAusRun implements Runnable {
    static final int IDLE = 0, RUN = 1, PAUSE = 2, DONE = 3;
    static final long TICK_MS = 250L, SOFT_MS = 2000L;

    final String mac;
    final Handler handler = new Handler(Looper.getMainLooper());
    final Runnable ui;

    // the session as the owner set it (starts from the template)
    BtAus.T t;
    int level, minutes, onS, offS, rampS, burstHz, burstMs, wave, carrier;
    final boolean[] chans = new boolean[BtSettings.CHANNELS + 1];

    int state = IDLE;
    double elapsed;                       // seconds of running time
    String error;
    BtAus.Pos pos = new BtAus.Pos(BtAus.REST, 0, 0f);
    final int[] pcts = new int[BtSettings.CHANNELS + 1];   // what each channel gets now (for the screen)
    private final int[] hzs = new int[BtSettings.CHANNELS + 1];
    private long last, softFrom;
    private boolean sentOff;
    private int ifcA, ifcB;

    BtAusRun(String mac, Runnable ui) {
        this.mac = mac;
        this.ui = ui;
    }

    /** Take a template's values and preselect the channels mapped to its zones. */
    void load(BtAus.T x) {
        t = x;
        level = x.level;
        minutes = x.minutes;
        onS = x.onS;
        offS = x.offS;
        rampS = x.rampS;
        burstHz = x.burstHz;
        burstMs = x.burstMs;
        wave = x.wave;
        carrier = x.carrier;
        for (int ch = 1; ch <= BtSettings.CHANNELS; ch++) {
            boolean in = false;
            int s = BtSettings.slider(ch);
            for (int i = 0; i < x.zones.length; i++) if (x.zones[i] == s) in = true;
            chans[ch] = in;
        }
    }

    int channelCount() {
        int n = 0;
        for (int ch = 1; ch <= BtSettings.CHANNELS; ch++) if (chans[ch]) n++;
        return n;
    }

    /** What stops a start (shown where the fix is), or null. */
    String blocker() {
        int n = channelCount();
        if (n == 0) return "Избери поне една зона";
        if (t.ifc && n < 2) return "Нужни са 2 канала — две двойки електроди кръстосано";
        return null;
    }

    double totalSec() {
        return minutes * 60.0;
    }

    void start() {
        if (state == RUN || t == null || blocker() != null) return;
        error = null;
        if (state == IDLE || state == DONE) {
            elapsed = 0;
            if (t.ifc) {
                if (t.beatHi > t.beatLo) {
                    ifcA = carrier;
                    ifcB = BtAus.ifcB(carrier, t.beatLo);
                } else {
                    int[] p = BtAus.ifcPair(carrier, t.beatLo);
                    ifcA = p[0];
                    ifcB = p[1];
                }
            }
            try {
                BtBeep.start();
            } catch (Throwable ignored) {
            }
        }
        state = RUN;
        last = SystemClock.elapsedRealtime();
        softFrom = last;
        sentOff = false;
        handler.removeCallbacks(this);
        handler.post(this);
    }

    void pause() {
        if (state != RUN) return;
        state = PAUSE;
        handler.removeCallbacks(this);
        halt();
        ui.run();
    }

    /** Off, back to the setup. */
    void stop() {
        boolean was = state != IDLE;
        state = IDLE;
        handler.removeCallbacks(this);
        halt();
        if (was) {
            try {
                BtBeep.stop();
            } catch (Throwable ignored) {
            }
        }
    }

    private void halt() {
        for (int ch = 1; ch <= BtSettings.CHANNELS; ch++) pcts[ch] = 0;
        BtBridge.program(mac, null, null, 0, 0, 0, 0, 1, false);
        sentOff = true;
    }

    /** The IFC channel order: 1st, 3rd … carry A, 2nd, 4th … carry B (the odd one out stays silent). */
    private void ifcHz(double sec) {
        int[] order = new int[BtSettings.CHANNELS];
        int n = 0;
        for (int pos = 0; pos < BtSettings.CHANNELS; pos++) {
            int ch = BtSettings.channelAt(pos);
            if (chans[ch]) order[n++] = ch;
        }
        int b = ifcB;
        if (t.beatHi > t.beatLo) b = BtAus.ifcB(ifcA, (int) Math.round(BtAus.beatAt(t.beatLo, t.beatHi, t.sweepS, sec)));
        for (int i = 0; i < n; i++) {
            int ch = order[i];
            boolean odd = i == n - 1 && n % 2 == 1;      // the odd one out stays silent
            hzs[ch] = odd ? 0 : (i % 2 == 0 ? ifcA : b);
        }
    }

    @Override
    public void run() {
        if (state != RUN) return;
        long now = SystemClock.elapsedRealtime();
        long dt = now - last;
        last = now;
        if (dt > 1000L) dt = 1000L;
        elapsed += dt / 1000.0;
        if (elapsed >= totalSec()) {
            elapsed = totalSec();
            halt();
            state = DONE;
            try {
                BtBeep.stop();
            } catch (Throwable ignored) {
            }
            ui.run();
            return;
        }
        pos = BtAus.at(onS, offS, rampS, elapsed);
        float soft = Math.min(1f, (now - softFrom) / (float) SOFT_MS);
        float f = pos.factor * soft;
        for (int ch = 1; ch <= BtSettings.CHANNELS; ch++) {
            hzs[ch] = carrier;
            pcts[ch] = 0;
        }
        if (t.ifc) ifcHz(elapsed);
        int any = 0;
        for (int ch = 1; ch <= BtSettings.CHANNELS; ch++) {
            if (!chans[ch] || hzs[ch] <= 0) continue;
            pcts[ch] = BtAus.pct(level, f, BtSettings.chGain(ch));
            any += pcts[ch];
        }
        if (any == 0) {
            if (!sentOff) {
                BtBridge.program(mac, null, null, 0, 0, 0, 0, 1, false);
                sentOff = true;
            }
        } else {
            int[] b = BtAus.burst(burstHz, burstMs);
            String r = BtBridge.program(mac, pcts, hzs, BtAus.widthFor(carrier, t.us), wave, b[0], b[1], 1, true);
            sentOff = false;
            if (!"ok".equals(r)) {
                error = "no_suit".equals(r)
                        ? "Няма свързан bodytech костюм — свържи го от екрана Тренировка"
                        : "Тренировка върви на костюма — спри я, за да пуснеш ток";
                stop();
                ui.run();
                return;
            }
        }
        ui.run();
        handler.postDelayed(this, TICK_MS);
    }
}
