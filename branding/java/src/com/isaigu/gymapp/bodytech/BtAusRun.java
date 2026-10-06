package com.isaigu.gymapp.bodytech;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;

/**
 * Runs one "Модулация" procedure ({@link BtAus}) on a bodytech suit, phase after phase: every {@link #TICK_MS} it works
 * out which phase runs and where it is (ramp up / hold / ramp down / rest), and sends every chosen channel its
 * strength through {@link BtBridge#program} (held like a test: renewed each tick, the suit switches off by itself if
 * the tablet stops renewing). A new phase starts soft over {@link #SOFT_MS} with the high tone, at its own level.
 * Pause = off; a resume ramps up again. Closing the screen → {@link #stop}.
 */
final class BtAusRun implements Runnable {
    static final int IDLE = 0, RUN = 1, PAUSE = 2, DONE = 3;
    static final long TICK_MS = 250L, SOFT_MS = 2000L;

    final String mac;
    final Handler handler = new Handler(Looper.getMainLooper());
    final Runnable ui;

    // the procedure as the owner set it (starts from the template), one value per phase
    BtAus.T t;
    int n;
    int[] level, minutes, onS, offS, rampS, burstHz, burstMs, wave, carrier;
    final boolean[] chans = new boolean[BtSettings.CHANNELS + 1];
    /** The phase the setup screen edits. */
    int sel;
    /** The phase that runs (−1 = none yet). */
    int cur = -1;

    int state = IDLE;
    double elapsed;                       // seconds of running time
    double phaseStart;                    // second the running phase started
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
        n = x.ph.length;
        level = new int[n];
        minutes = new int[n];
        onS = new int[n];
        offS = new int[n];
        rampS = new int[n];
        burstHz = new int[n];
        burstMs = new int[n];
        wave = new int[n];
        carrier = new int[n];
        for (int i = 0; i < n; i++) {
            BtAus.Ph p = x.ph[i];
            level[i] = p.level;
            minutes[i] = p.minutes;
            onS[i] = p.onS;
            offS[i] = p.offS;
            rampS[i] = p.rampS;
            burstHz[i] = p.burstHz;
            burstMs[i] = p.burstMs;
            wave[i] = p.wave;
            carrier[i] = p.carrier;
        }
        sel = n > 1 ? 1 : 0;              // the main work, not the warm-up
        cur = -1;
        for (int ch = 1; ch <= BtSettings.CHANNELS; ch++) {
            boolean in = false;
            int s = BtSettings.slider(ch);
            for (int i = 0; i < x.zones.length; i++) if (x.zones[i] == s) in = true;
            chans[ch] = in;
        }
    }

    BtAus.Ph ph(int i) {
        return t.ph[i < 0 ? 0 : (i >= n ? n - 1 : i)];
    }

    int channelCount() {
        int c = 0;
        for (int ch = 1; ch <= BtSettings.CHANNELS; ch++) if (chans[ch]) c++;
        return c;
    }

    /** What stops a start (shown where the fix is), or null. */
    String blocker() {
        int c = channelCount();
        if (c == 0) return "Избери поне една зона";
        if (t.ifc && c < 2) return "Нужни са 2 канала — две двойки електроди кръстосано";
        return null;
    }

    double totalSec() {
        double s = 0;
        for (int i = 0; i < n; i++) s += minutes[i] * 60.0;
        return s;
    }

    /** Seconds left in the running phase. */
    double phaseLeft() {
        int i = cur < 0 ? 0 : cur;
        return Math.max(0, phaseStart + minutes[i] * 60.0 - elapsed);
    }

    void start() {
        if (state == RUN || t == null || blocker() != null) return;
        error = null;
        if (state == IDLE || state == DONE) {
            elapsed = 0;
            cur = -1;
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
        cur = -1;
        handler.removeCallbacks(this);
        halt();
        if (was) {
            try {
                BtBeep.stop();
            } catch (Throwable ignored) {
            }
        }
    }

    /** Go to the next phase now (the trainer skips the rest of this one). */
    void skip() {
        if (state == IDLE || state == DONE || cur < 0) return;
        // the skipped part leaves the plan (whole minutes), so the clock and the next phases stay true
        int m = (int) Math.ceil((elapsed - phaseStart) / 60.0);
        if (m < minutes[cur]) minutes[cur] = m;
        elapsed = phaseStart + minutes[cur] * 60.0;
        if (state == RUN) {
            handler.removeCallbacks(this);
            handler.post(this);
        } else {
            ui.run();
        }
    }

    private void halt() {
        for (int ch = 1; ch <= BtSettings.CHANNELS; ch++) pcts[ch] = 0;
        BtBridge.program(mac, null, null, 0, 0, 0, 0, 1, false);
        sentOff = true;
    }

    /** A new phase begins: its own level and impulse, soft start, the high tone, the IFC pair worked out. */
    private void enter(int i, double start, long now) {
        cur = i;
        sel = i;
        phaseStart = start;
        softFrom = now;
        BtAus.Ph p = ph(i);
        if (p.ifc) {
            if (p.beatHi > p.beatLo) {
                ifcA = carrier[i];
                ifcB = BtAus.ifcB(carrier[i], p.beatLo);
            } else {
                int[] pr = BtAus.ifcPair(carrier[i], p.beatLo);
                ifcA = pr[0];
                ifcB = pr[1];
            }
        }
        if (start > 0) {
            try {
                BtBeep.start();
            } catch (Throwable ignored) {
            }
        }
    }

    /** The IFC channel order: 1st, 3rd … carry A, 2nd, 4th … carry B (the odd one out stays silent). */
    private void ifcHz(BtAus.Ph p, double sec) {
        int[] order = new int[BtSettings.CHANNELS];
        int c = 0;
        for (int pos = 0; pos < BtSettings.CHANNELS; pos++) {
            int ch = BtSettings.channelAt(pos);
            if (chans[ch]) order[c++] = ch;
        }
        int b = ifcB;
        if (p.beatHi > p.beatLo) b = BtAus.ifcB(ifcA, (int) Math.round(BtAus.beatAt(p.beatLo, p.beatHi, p.sweepS, sec)));
        for (int i = 0; i < c; i++) {
            int ch = order[i];
            boolean odd = i == c - 1 && c % 2 == 1;
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
        int[] at = BtAus.phaseAt(minutes, elapsed);
        if (at[0] < 0) {
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
        if (at[0] != cur) enter(at[0], at[1], now);
        int i = cur;
        BtAus.Ph p = ph(i);
        double inPhase = elapsed - phaseStart;
        pos = BtAus.at(onS[i], offS[i], rampS[i], inPhase);
        float soft = Math.min(1f, (now - softFrom) / (float) SOFT_MS);
        float f = pos.factor * soft;
        for (int ch = 1; ch <= BtSettings.CHANNELS; ch++) {
            hzs[ch] = carrier[i];
            pcts[ch] = 0;
        }
        if (p.ifc) ifcHz(p, inPhase);
        int any = 0;
        for (int ch = 1; ch <= BtSettings.CHANNELS; ch++) {
            if (!chans[ch] || hzs[ch] <= 0) continue;
            pcts[ch] = BtAus.pct(level[i], f, BtSettings.chGain(ch));
            any += pcts[ch];
        }
        if (any == 0) {
            if (!sentOff) {
                BtBridge.program(mac, null, null, 0, 0, 0, 0, 1, false);
                sentOff = true;
            }
        } else {
            int[] b = BtAus.burst(burstHz[i], burstMs[i]);
            String r = BtBridge.program(mac, pcts, hzs, BtAus.widthFor(carrier[i], p.us), wave[i], b[0], b[1], 1, true);
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
