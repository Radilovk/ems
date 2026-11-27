package com.isaigu.gymapp.ai;

import android.Manifest;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioRecord;
import android.media.MediaRecorder;
import android.media.ToneGenerator;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.speech.RecognitionListener;
import android.speech.RecognizerIntent;
import android.speech.SpeechRecognizer;
import android.speech.tts.TextToSpeech;

import com.isaigu.gymapp.wearable.WearableBleDiagLog;

import java.util.ArrayList;
import java.util.Locale;

/**
 * Hands-free "Тренер, …" for the AI training (owner, 1.1.541 — docs/xems-ai-coach.md), built the way voice
 * assistants are:
 * <ol>
 * <li><b>Always on, on the tablet only:</b> the keyword spotter {@link WakeWord} reads the microphone itself
 *     (AudioRecord, 16 kHz) and knows one thing — how the trainer says "тренер" (3 recordings + "тренировка" once,
 *     so it never wakes on it). It understands nothing, keeps nothing, sends nothing.</li>
 * <li><b>Wake:</b> a short tone, "🎙 Слушам" on the board.</li>
 * <li><b>The command window:</b> the spotter lets the microphone go; Android's speech recognizer (Bulgarian) takes
 *     only the words that follow, and closes on a second of silence.</li>
 * <li><b>Understanding:</b> {@link AiTrain#voice} — the tablet's own reader first, the cheap model, the coach.</li>
 * <li><b>Answer by voice:</b> a short Bulgarian confirmation ("Крака 45", "Пауза"), or a tone when there is no
 *     speech engine; then back to step 1. A follow-up phrase within a few seconds needs no "тренер".</li>
 * </ol>
 * Not recorded yet → the earlier way: the recognizer listens all the time and acts only after "тренер".
 * Needs RECORD_AUDIO (asked once).
 */
public final class WakeListener {
    private WakeListener() {}

    static final String PREFS = "xems_wake";
    /** The taught phrase (owner, 2026-11-25: "окей тренер"); recordings of another phrase are not loaded. */
    static final String PHRASE = "ok-trener";
    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    private static Context ctx;
    private static boolean on;
    static final WakeWord SPOTTER = new WakeWord();
    private static boolean loaded;
    /** The training screen: the system's speech dialog, when no background recognizer exists (Huawei without Google). */
    private static java.lang.ref.WeakReference<Activity> host;
    private static Boolean serviceOk;

    // ---- the spotter's microphone
    private static Thread micThread;
    private static volatile boolean micRun;
    /** Bumped by every start: an older reader still finishing never runs beside a new one. */
    private static volatile int micGen;
    /** Recording the examples (WakeSetup): the events go there instead of waking. */
    static volatile WakeSetup.Sink setup;

    // ---- the command window (and the fallback: continuous recognizer)
    private static SpeechRecognizer rec;
    private static boolean window;
    private static int followUps;
    private static long armedUntil;
    static final long ARMED_MS = 6000;
    private static int volSystem = -1, volNotify = -1;

    // ---- the spoken answer
    private static TextToSpeech tts;
    private static boolean ttsOk;
    /** What the screen shows: "" idle, "listening", "command". */
    private static String state = "";

    public static boolean isOn() {
        return on;
    }

    public static String state() {
        return state;
    }

    /** The spotter knows "тренер" (3 recordings) on this tablet. */
    public static boolean enrolled(Context c) {
        load(c);
        return SPOTTER.ready();
    }

    static void load(Context c) {
        if (loaded || c == null) {
            return;
        }
        loaded = true;
        try {
            if (c.getSharedPreferences(PREFS, Context.MODE_PRIVATE).getBoolean("noBgRec", false)) {
                serviceOk = false;                         // this tablet's background recognizer never worked
            }
            SPOTTER.sens = Math.max(WakeWord.SENS_MIN, Math.min(WakeWord.SENS_MAX,
                    c.getSharedPreferences(PREFS, Context.MODE_PRIVATE).getFloat("sens", 1.0f)));
            String hex = c.getSharedPreferences(PREFS, Context.MODE_PRIVATE).getString("tpl", "");
            // recordings of the old wake word ("тренер" alone) do not fit "окей тренер": taught again
            if (hex.length() > 0 && PHRASE.equals(c.getSharedPreferences(PREFS, Context.MODE_PRIVATE).getString("phrase", ""))) {
                SPOTTER.load(unhex(hex));
            }
        } catch (Throwable t) {
            WearableBleDiagLog.log("wake", "load: " + t);
        }
    }

    static void saveExamples(Context c) {
        try {
            c.getSharedPreferences(PREFS, Context.MODE_PRIVATE).edit().putString("tpl", hex(SPOTTER.save()))
                    .putString("phrase", PHRASE).apply();
        } catch (Throwable t) {
            WearableBleDiagLog.log("wake", "save: " + t);
        }
    }

    // ================================================================ teaching the word (WakeSetup)

    /** The recordings: the spotter reads the microphone for them, nothing wakes meanwhile. */
    static void beginSetup(Activity a, WakeSetup.Sink sink) {
        ctx = a.getApplicationContext();
        MAIN.removeCallbacks(RECOGNIZE);
        destroyRecognizer();
        window = false;
        setup = sink;
        silent = false;
        micStart();
    }

    static void endSetup(Activity a) {
        setup = null;
        if (!on) {
            micStop();
            return;
        }
        if (SPOTTER.ready()) {
            mute(false);
            micStart();
        } else {
            micStop();
            mute(true);
            recognize(300);
        }
    }

    /** The stored examples again (a setup left unfinished). */
    static void reloadExamples(Context c) {
        try {
            SPOTTER.clear();
            SPOTTER.sens = Math.max(WakeWord.SENS_MIN, Math.min(WakeWord.SENS_MAX,
                    c.getSharedPreferences(PREFS, Context.MODE_PRIVATE).getFloat("sens", 1.0f)));
            String hex = c.getSharedPreferences(PREFS, Context.MODE_PRIVATE).getString("tpl", "");
            // recordings of the old wake word ("тренер" alone) do not fit "окей тренер": taught again
            if (hex.length() > 0 && PHRASE.equals(c.getSharedPreferences(PREFS, Context.MODE_PRIVATE).getString("phrase", ""))) {
                SPOTTER.load(unhex(hex));
            }
        } catch (Throwable t) {
            WearableBleDiagLog.log("wake", "reload: " + t);
        }
    }

    // ================================================================ start / stop

    public static boolean start(Activity a) {
        if (a == null) {
            return false;
        }
        ctx = a.getApplicationContext();
        host = new java.lang.ref.WeakReference<Activity>(a);
        load(ctx);
        if (!permitted(a, true)) {
            WearableBleDiagLog.log("wake", "asking for the microphone");
        }
        on = true;
        followUps = 0;
        initTts();
        warmRecognizer();
        if (SPOTTER.ready()) {
            micStart();
        } else {
            mute(true);                                    // fallback: the recognizer listens all the time
            recognize(300);
        }
        return true;
    }

    public static void stop() {
        MAIN.removeCallbacks(NOT_READY);
        on = false;
        armedUntil = 0;
        state = "";
        micStop();
        MAIN.removeCallbacks(RECOGNIZE);
        destroyRecognizer();
        window = false;
        mute(false);
    }

    static boolean permitted(Activity a, boolean ask) {
        Context c = a != null ? a : ctx;
        if (c == null || Build.VERSION.SDK_INT < 23) {
            return c != null;
        }
        if (c.checkSelfPermission(Manifest.permission.RECORD_AUDIO) == PackageManager.PERMISSION_GRANTED) {
            return true;
        }
        if (ask && a != null) {
            a.requestPermissions(new String[] {Manifest.permission.RECORD_AUDIO}, 0x5A2);
        }
        return false;
    }

    // ================================================================ 1 · the spotter on the microphone

    static void micStart() {
        if (micRun) {
            return;
        }
        micRun = true;
        if (ear == 0 && pendingEar == 0) {
            state = "";
        }
        // with the cloud ear the spotter only suspects; without it, it alone decides (strict)
        SPOTTER.loose = ctx != null && CloudEar.usable(ctx) ? WakeWord.LOOSE : 1f;
        micThread = new Thread(new Mic(++micGen), "xems-wake");
        micThread.start();
    }

    static void micStop() {
        micRun = false;
        Thread t = micThread;
        micThread = null;
        if (t != null) {
            try {
                t.join(600);
            } catch (InterruptedException ignored) {
            }
        }
    }

    // ---- what the microphone gives (the setup's level bar, the diag log)
    /** The loudness of the last 100 ms, 0..100 (a log scale of the peak sample). */
    static volatile int level;
    /** The microphone opened but gives only silence (another app holds it, a source that records nothing). */
    static volatile boolean silent;
    /** Huawei & co.: VOICE_RECOGNITION can open fine and give zeros, so the sources are tried in turn. */
    /**
     * VOICE_COMMUNICATION first (owner, 1.1.594: "in a loud room Claude's app hears me, ours shows the meter full and
     * hears nothing"): it is the phone call's path — the device's own noise suppression, its echo cancelling (the music
     * and the voice the tablet itself plays are taken out) and, on phones with several microphones, their beamforming
     * towards the speaker. That is how voice apps hear in noise. VOICE_RECOGNITION gives the raw room by design.
     */
    static final int[] SOURCES = {MediaRecorder.AudioSource.VOICE_COMMUNICATION, MediaRecorder.AudioSource.VOICE_RECOGNITION,
            MediaRecorder.AudioSource.MIC, MediaRecorder.AudioSource.CAMCORDER, MediaRecorder.AudioSource.DEFAULT};
    /** The kept source's pref (a new key: the order of SOURCES changed in 1.1.594). */
    static final String SRC_KEY = "src594";
    /** The source that last gave sound (kept per tablet). */
    private static int srcIdx = -1;
    /** Below this peak (of 32767) for SILENT_MS the source counts as dead: a room is never digitally silent. */
    static final int DEAD_PEAK = 12;
    static final long SILENT_MS = 2500;

    static int levelOf(int peak) {
        if (peak <= 1) {
            return 0;
        }
        return Math.max(0, Math.min(100, (int) (100 * Math.log10(peak) / 4.2)));
    }

    private static int startSource() {
        if (srcIdx < 0) {
            srcIdx = 0;
            try {
                if (ctx != null) {
                    srcIdx = Math.max(0, Math.min(SOURCES.length - 1,
                            ctx.getSharedPreferences(PREFS, Context.MODE_PRIVATE).getInt(SRC_KEY, 0)));
                }
            } catch (Throwable ignored) {
            }
        }
        return srcIdx;
    }

    private static void keepSource(int idx) {
        if (idx == srcIdx && ctx != null) {
            try {
                SharedPreferences sp = ctx.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
                if (sp.getInt(SRC_KEY, -1) != idx) {
                    sp.edit().putInt(SRC_KEY, idx).apply();
                }
            } catch (Throwable ignored) {
            }
        }
    }

    static AudioRecord open(int source) {
        int min = AudioRecord.getMinBufferSize(16000, AudioFormat.CHANNEL_IN_MONO, AudioFormat.ENCODING_PCM_16BIT);
        AudioRecord ar = null;
        try {
            ar = new AudioRecord(source, 16000, AudioFormat.CHANNEL_IN_MONO, AudioFormat.ENCODING_PCM_16BIT,
                    Math.max(min, 16000));
            if (ar.getState() != AudioRecord.STATE_INITIALIZED) {
                WearableBleDiagLog.log("wake", "mic source " + source + ": not initialized");
                ar.release();
                return null;
            }
            effects(ar, source);
            ar.startRecording();
            if (ar.getRecordingState() != AudioRecord.RECORDSTATE_RECORDING) {
                WearableBleDiagLog.log("wake", "mic source " + source + ": does not record (busy?)");
                close(ar);
                return null;
            }
            return ar;
        } catch (Throwable t) {
            WearableBleDiagLog.log("wake", "mic source " + source + ": " + t);
            close(ar);
            return null;
        }
    }

    private static android.media.audiofx.NoiseSuppressor ns;
    private static android.media.audiofx.AcousticEchoCanceler aec;

    /**
     * The device's own noise suppression and echo cancelling on this recording, where it has them (any source; on
     * VOICE_COMMUNICATION most phones apply them anyway). No automatic gain: it would pump the hall's noise up in a
     * pause and change the loudness the examples were learned at.
     */
    static void effects(AudioRecord ar, int source) {
        releaseEffects();
        StringBuilder on = new StringBuilder();
        try {
            if (android.media.audiofx.NoiseSuppressor.isAvailable()) {
                ns = android.media.audiofx.NoiseSuppressor.create(ar.getAudioSessionId());
                if (ns != null) {
                    ns.setEnabled(true);
                    on.append(" noise-suppression");
                }
            }
        } catch (Throwable t) {
            ns = null;
        }
        try {
            if (android.media.audiofx.AcousticEchoCanceler.isAvailable()) {
                aec = android.media.audiofx.AcousticEchoCanceler.create(ar.getAudioSessionId());
                if (aec != null) {
                    aec.setEnabled(true);
                    on.append(" echo-cancel");
                }
            }
        } catch (Throwable t) {
            aec = null;
        }
        WearableBleDiagLog.log("wake", "mic source " + source + " effects:" + (on.length() == 0 ? " none" : on.toString()));
    }

    static void releaseEffects() {
        try {
            if (ns != null) {
                ns.release();
            }
        } catch (Throwable ignored) {
        }
        try {
            if (aec != null) {
                aec.release();
            }
        } catch (Throwable ignored) {
        }
        ns = null;
        aec = null;
    }

    /** Stops a recording and frees it with its effects. */
    static void close(AudioRecord ar) {
        if (ar == null) {
            return;
        }
        try {
            ar.stop();
        } catch (Throwable ignored) {
        }
        releaseEffects();
        try {
            ar.release();
        } catch (Throwable ignored) {
        }
    }

    static final class Mic implements Runnable {
        final int gen;

        Mic(int gen) {
            this.gen = gen;
        }

        @Override
        public void run() {
            AudioRecord ar = null;
            try {
                while (micRun && !permitted(null, false)) {
                    Thread.sleep(1500);                      // waiting for the "allow" tap
                }
                short[] buf = new short[800];
                int first = startSource();
                int tried = 0;
                int idx = first;
                boolean anySound = false;
                while (micRun && gen == micGen && tried < SOURCES.length) {
                    ar = open(SOURCES[idx]);
                    if (ar == null) {
                        tried++;
                        idx = (idx + 1) % SOURCES.length;
                        continue;
                    }
                    srcIdx = idx;
                    long t0 = System.currentTimeMillis();
                    long lastSound = t0;
                    int peak = 0, fails = 0, samples = 0;
                    boolean dead = false;
                    while (micRun && gen == micGen) {
                        int n = ar.read(buf, 0, buf.length);
                        if (n <= 0) {
                            if (++fails > 20) {
                                WearableBleDiagLog.log("wake", "mic source " + SOURCES[idx] + ": read " + n);
                                dead = true;
                                break;
                            }
                            Thread.sleep(50);
                            continue;
                        }
                        fails = 0;
                        boolean woke = false;
                        if (pendingEar != 0) {
                            earBegin(pendingEar);                // a window: the command goes to the cloud ear
                            pendingEar = 0;
                        }
                        for (int i = 0; i < n; i++) {
                            int a = buf[i] < 0 ? -buf[i] : buf[i];
                            if (a > peak) {
                                peak = a;
                            }
                            RAW[rawAt] = buf[i];
                            rawAt = (rawAt + 1) % RAW.length;
                            if (rawFill < RAW.length) {
                                rawFill++;
                            }
                            if (ear != 0) {
                                SPOTTER.push(buf[i]);            // the room's floor stays current; no wakes meanwhile
                                SPOTTER.miss = null;
                                if (earSample(buf[i])) {
                                    earDone();
                                    woke = true;
                                    break;
                                }
                                continue;
                            }
                            int ev = SPOTTER.push(buf[i]);
                            if (ev == WakeWord.NONE) {
                                String miss = SPOTTER.miss;
                                if (miss != null) {
                                    SPOTTER.miss = null;
                                    WearableBleDiagLog.log("wake", miss);
                                }
                                continue;
                            }
                            WakeSetup.Sink sink = setup;
                            if (sink != null) {
                                MAIN.post(new SetupEvent(sink, ev));
                            } else if (ev == WakeWord.WAKE && on && SPOTTER.loose > 1f) {
                                // a suspicion: what was said (and what follows) goes to the cloud ear, which decides
                                if (CloudEar.take()) {
                                    WearableBleDiagLog.log("wake", "suspected d=" + SPOTTER.lastD + " limit="
                                            + SPOTTER.threshold() + " → the cloud ear");
                                    earBegin(1);
                                } else {
                                    WearableBleDiagLog.log("wake", "suspicion dropped: too many this minute");
                                }
                            } else if (ev == WakeWord.WAKE && on) {
                                micRun = false;              // the command window takes the microphone
                                MAIN.post(new Wake());
                                woke = true;
                                break;
                            }
                        }
                        samples += n;
                        if (samples >= 1600) {               // every 100 ms: the level, the silence check
                            long now = System.currentTimeMillis();
                            level = levelOf(peak);
                            if (peak > DEAD_PEAK) {
                                lastSound = now;
                                if (!anySound) {
                                    anySound = true;
                                    silent = false;
                                    keepSource(idx);
                                    WearableBleDiagLog.log("wake", "mic source " + SOURCES[idx] + " gives sound");
                                }
                            } else if (!anySound && now - lastSound > SILENT_MS) {
                                WearableBleDiagLog.log("wake", "mic source " + SOURCES[idx] + ": only silence");
                                dead = true;
                                break;
                            }
                            peak = 0;
                            samples = 0;
                        }
                        if (woke) {
                            break;
                        }
                    }
                    if (!dead) {
                        break;                               // stopped (or woke): this source stays
                    }
                    close(ar);
                    ar = null;
                    tried++;
                    idx = (idx + 1) % SOURCES.length;
                }
                if (micRun && gen == micGen && !anySound && tried >= SOURCES.length) {
                    // no source gives sound: say so (setup shows it), and keep trying slowly
                    silent = true;
                    level = 0;
                    srcIdx = first;
                    WearableBleDiagLog.log("wake", "mic: no source gives sound");
                    micRun = false;
                    MAIN.postDelayed(new MicAgain(), 4000);
                }
            } catch (Throwable t) {
                WearableBleDiagLog.log("wake", "mic: " + t);
                micRun = false;
                if (on || setup != null) {
                    MAIN.postDelayed(new MicAgain(), 3000);
                }
            } finally {
                level = 0;
                if (ear != 0 && gen == micGen) {
                    int m = ear;                              // stopped while listening: nothing heard
                    ear = 0;
                    cap = null;
                    if (m == 2) {
                        MAIN.post(new Heard("", 2));
                    }
                }
                close(ar);
            }
        }
    }

    // ================================================================ the cloud ear (1.1.592, CloudEar)

    /** The last 2 s of the microphone: a suspected phrase is sent from its beginning. */
    static final short[] RAW = new short[CloudEar.RATE * 2];
    static int rawAt, rawFill;
    /** 0 off; 1 the suspected phrase and what follows it; 2 a window (the command after the phrase alone). */
    static volatile int ear;
    static volatile int pendingEar;
    static short[] cap;
    static int capN, capBlockN, capBlocks, capQuiet, capVoiced, capSkip, capPre;
    static double capSum;
    static float capPeakDb;

    /** Mic thread: starts listening for the cloud ear. */
    static void earBegin(int mode) {
        cap = new short[CloudEar.MAX];
        capN = 0;
        capBlockN = 0;
        capBlocks = 0;
        capSum = 0;
        capQuiet = 0;
        capVoiced = 0;
        capPeakDb = 0;
        capPre = 0;
        capSkip = 0;
        if (mode == 1) {
            int pre = Math.min(rawFill, RAW.length);       // the phrase itself: the spotter heard it up to now
            for (int k = 0; k < pre; k++) {
                cap[capN++] = RAW[(rawAt - pre + k + RAW.length) % RAW.length];
            }
            capPre = capN;
            capVoiced = 1;
        } else {
            capSkip = CloudEar.RATE * 35 / 100;            // our own "speak now" sound is not the command
        }
        ear = mode;
    }

    /** Mic thread: one sample; true when the listening is over (a pause after speech, nothing said, the limit). */
    static boolean earSample(short s) {
        if (capSkip > 0) {
            capSkip--;
            return false;
        }
        cap[capN++] = s;
        capSum += (double) s * s;
        if (++capBlockN >= CloudEar.RATE / 10) {           // every 100 ms
            float db = (float) (10 * Math.log10(capSum / capBlockN + 1));
            capPeakDb = Math.max(capPeakDb, db);
            float floor = SPOTTER.floorDb();
            if (db > floor + 8) {                          // a voice across the hall is only a few dB over it
                capVoiced++;
                capQuiet = 0;
            } else if (db < Math.max(floor + 5, capPeakDb - 24)) {
                capQuiet++;
            } else {
                capQuiet = 0;
            }
            capSum = 0;
            capBlockN = 0;
            capBlocks++;
            if (ear == 2 && capVoiced == 0 && capBlocks >= 40) {
                return true;                                // a window: nothing said in 4 s
            }
            if (capVoiced > 0 && capQuiet >= 9 && capN - capPre >= CloudEar.RATE / 2) {
                return true;                                // 0.9 s of quiet after speech: the phrase is over
            }
        }
        return capN >= cap.length;
    }

    /** Mic thread: the listening is over — the microphone stops, the words go to the server. */
    static void earDone() {
        int mode = ear;
        ear = 0;
        micRun = false;
        short[] a = cap;
        int n = capN;
        cap = null;
        if (mode == 2 && capVoiced == 0) {
            MAIN.post(new Heard("", 2));                    // nothing said: no request
            return;
        }
        if (mode == 1) {
            MAIN.post(new Thinking());
        }
        new Thread(new Hear(a, n, mode), "xems-ear").start();
    }

    static final class Thinking implements Runnable {
        @Override
        public void run() {
            if (on && !window) {
                state = "listening";
                AiTrain.voiceState();
            }
        }
    }

    static final class Hear implements Runnable {
        final short[] a;
        final int n;
        final int mode;

        Hear(short[] a, int n, int mode) {
            this.a = a;
            this.n = n;
            this.mode = mode;
        }

        @Override
        public void run() {
            MAIN.post(new Heard(CloudEar.hear(a, n), mode));
        }
    }

    static final class Heard implements Runnable {
        final String text;
        final int mode;

        Heard(String text, int mode) {
            this.text = text;
            this.mode = mode;
        }

        @Override
        public void run() {
            heard(text, mode);
        }
    }

    /** The server's words: the wake phrase and its command, a false suspicion, or a window's command. */
    static void heard(String text, int mode) {
        if (!on) {
            return;
        }
        if (mode == 2) {
            if (!window) {
                return;
            }
            ArrayList<String> r = new ArrayList<String>();
            r.add(text == null ? "" : text);
            commandHeard(r);                                  // "" → the closed sound, back to "окей тренер"
            return;
        }
        String cmd = text == null ? null : AiVoiceCmd.afterWake(text);
        if (cmd == null) {
            state = "";
            AiTrain.voiceState();
            if (text == null && SPOTTER.lastD <= SPOTTER.threshold() && !window && !speaking()) {
                // no answer from the server, but the spotter alone is sure: the old way (the system's recognizer)
                WearableBleDiagLog.log("wake", "cloud ear silent — the spotter was sure: the old window");
                followUp = false;
                openWindow();
                return;
            }
            WearableBleDiagLog.log("wake", text == null ? "cloud ear: no answer" : "not the wake phrase: \"" + text + "\"");
            MAIN.postDelayed(new MicAgain(), 100);
            return;
        }
        WearableBleDiagLog.log("wake", "окей тренер (cloud) d=" + SPOTTER.lastD + " limit=" + SPOTTER.threshold());
        followUp = false;
        followUps = 0;
        if (cmd.length() == 0 || AiVoiceCmd.onlyWakeFragment(cmd)) {
            openWindow();                                     // the phrase alone: "speak now", the command next
            return;
        }
        window = true;                                        // the phrase and its command in one breath
        state = "command";
        AiTrain.voiceState();
        ArrayList<String> r = new ArrayList<String>();
        r.add(cmd);
        commandHeard(r);
    }

    static final class MicAgain implements Runnable {
        @Override
        public void run() {
            if (setup == null && speaking()) {
                MAIN.postDelayed(this, 250);               // the coach still talks: the spotter would hear it
                return;
            }
            if (setup != null || (on && SPOTTER.ready() && !window)) {
                micStart();
            }
        }
    }

    static final class SetupEvent implements Runnable {
        final WakeSetup.Sink sink;
        final int ev;

        SetupEvent(WakeSetup.Sink sink, int ev) {
            this.sink = sink;
            this.ev = ev;
        }

        @Override
        public void run() {
            sink.event(ev);
        }
    }

    // ================================================================ 2–3 · wake → the command window

    static final class Wake implements Runnable {
        @Override
        public void run() {
            if (speaking() || window) {
                // its own voice (or a window already open): not a wake — the spotter listens again after
                WearableBleDiagLog.log("wake", "wake ignored: the tablet is talking");
                MAIN.postDelayed(new MicAgain(), 300);
                return;
            }
            WearableBleDiagLog.log("wake", "тренер d=" + SPOTTER.lastD + " thr=" + SPOTTER.threshold());
            followUp = false;
            openWindow();                                  // the tone sounds when the recognizer is ready
        }
    }

    /** The window opened after the tablet's answer (no "тренер" said): stricter on what may go to the AI. */
    static boolean followUp;

    static void openWindow() {
        window = true;
        state = "listening";
        AiTrain.voiceState();
        if (ctx != null && CloudEar.usable(ctx) && permitted(null, false)) {
            // the cloud ear (1.1.592): our microphone, the server writes it down — no Google / Huawei recognizer
            micStop();
            chime();
            pendingEar = 2;
            micStart();
            return;
        }
        // owner, 1.1.561: no window that asks to "try again" (a tap the trainer cannot make) — Google's recognizer in
        // the background, the board shows 🎙; nothing heard → it simply closes. The system dialog (1.1.555) only on a
        // tablet without a background recognizer (Huawei without Google).
        if (serviceOk == null && ctx != null) {
            warmRecognizer();
        }
        Activity a = host != null ? host.get() : null;
        if (!Boolean.TRUE.equals(serviceOk) && a != null && !a.isFinishing() && chime() && VoiceInput.listen(a, new DialogCommand(),
                followUp ? AiText.t("Слушам…", "Listening…") : AiText.t("Тренер слуша — кажи команда или въпрос",
                        "The trainer listens — a command or a question"), DIALOG_MS)) {
            return;
        }
        mute(true);
        recognize(0);
    }

    private static final Runnable RECOGNIZE = new Recognize();

    static final class Recognize implements Runnable {
        @Override
        public void run() {
            begin();
        }
    }

    private static void recognize(long delayMs) {
        MAIN.removeCallbacks(RECOGNIZE);
        if (on) {
            MAIN.postDelayed(RECOGNIZE, delayMs);
        }
    }

    private static void begin() {
        if (!on || ctx == null) {
            return;
        }
        if (speaking()) {
            recognize(250);                                 // never listen over the coach's own voice
            return;
        }
        try {
            if (!permitted(null, false)) {
                recognize(3000);
                return;
            }
            if (serviceOk == null) {
                serviceOk = SpeechRecognizer.isRecognitionAvailable(ctx);
                WearableBleDiagLog.log("wake", "background recognizer: " + serviceOk);
            }
            if (!serviceOk) {
                // no recognition service (Huawei without Google): after "тренер" the system's speech dialog
                // takes the command — the same one the chat's 🎤 uses; without recordings nothing can listen
                Activity a = host != null ? host.get() : null;
                if (window && a != null && !a.isFinishing()) {
                    VoiceInput.listen(a, new DialogCommand(), AiText.t("Слушам…", "Listening…"), DIALOG_MS);
                } else if (window) {
                    afterWindow(1000);
                } else {
                    mute(false);
                }
                return;
            }
            if (rec == null) {
                rec = SpeechRecognizer.createSpeechRecognizer(ctx);
                rec.setRecognitionListener(new Listener());
            }
            Intent i = new Intent(RecognizerIntent.ACTION_RECOGNIZE_SPEECH);
            i.putExtra(RecognizerIntent.EXTRA_LANGUAGE_MODEL, RecognizerIntent.LANGUAGE_MODEL_FREE_FORM);
            String lang = bg() ? "bg-BG" : "en-US";
            i.putExtra(RecognizerIntent.EXTRA_LANGUAGE, lang);
            i.putExtra(RecognizerIntent.EXTRA_LANGUAGE_PREFERENCE, lang);
            i.putExtra(RecognizerIntent.EXTRA_MAX_RESULTS, 3);
            i.putExtra(RecognizerIntent.EXTRA_CALLING_PACKAGE, ctx.getPackageName());
            if (window) {
                // the command: closes after a second of silence
                i.putExtra(RecognizerIntent.EXTRA_SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS, 1000L);
                i.putExtra(RecognizerIntent.EXTRA_SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS, 800L);
            }
            readySeen = false;
            rec.startListening(i);
            if (window) {
                MAIN.removeCallbacks(NOT_READY);
                MAIN.postDelayed(NOT_READY, READY_MS);
            }
        } catch (Throwable t) {
            WearableBleDiagLog.log("wake", "begin: " + t);
            destroyRecognizer();
            afterWindow(2000);
        }
    }

    /**
     * Huawei & co. (owner, 2026-11-25: "the setup records, but in a session "тренер" opens nothing"): a recognition
     * service is listed but never gets ready (or fails with a service / language error) — the window then stayed open
     * for good and every later "тренер" was ignored. Not ready in READY_MS, or such an error before it was ready → this
     * tablet uses the system's speech dialog from now on (kept), as before 1.1.561.
     */
    static final long READY_MS = 3000;
    /** The speech dialog (a tablet without a background recognizer) is closed from here after this. */
    static final long DIALOG_MS = 5000;
    /** After "тренер" the answer is expected within this; nothing begun → the window closes, "тренер" again. */
    static final long SPEAK_MS = 3000, SPEAK_FOLLOW_MS = 4500;
    private static final Runnable NO_SPEECH = new NoSpeech();
    private static boolean spoke;

    static final class NoSpeech implements Runnable {
        @Override
        public void run() {
            if (window && !spoke) {
                WearableBleDiagLog.log("wake", "nothing said in the window: closed");
                windowResult(false);
                followUps = 0;
                Earcon.closed();
                afterWindow(200);
            }
        }
    }

    /** What a window led to (the spotter learns from it): a command, or nothing. */
    static void windowResult(boolean said) {
        if (followUp) {
            return;                                       // a dialogue's silence is normal
        }
        float before = SPOTTER.sens;
        SPOTTER.feedback(said);
        if (SPOTTER.sens != before && ctx != null) {
            try {
                ctx.getSharedPreferences(PREFS, Context.MODE_PRIVATE).edit().putFloat("sens", SPOTTER.sens).apply();
            } catch (Throwable ignored) {
            }
            WearableBleDiagLog.log("wake", "sensitivity " + SPOTTER.sens);
        }
    }
    private static volatile boolean readySeen;
    private static final Runnable NOT_READY = new NotReady();

    static final class NotReady implements Runnable {
        @Override
        public void run() {
            if (window && !readySeen) {
                giveUpBackground("not ready in " + READY_MS + " ms");
            }
        }
    }

    /** Failures in a row (a cold start of Google's recognizer is slow once): the dialog only after the second. */
    private static int bgFails;

    static void giveUpBackground(String why) {
        MAIN.removeCallbacks(NOT_READY);
        if (++bgFails < 2) {
            // owner, 2026-11-25: Google's dialog ("we did not understand…") must never open — the first failure only
            // closes the window quietly, the recognizer is rebuilt for the next "тренер"
            WearableBleDiagLog.log("wake", "background recognizer not ready (" + why + "): window closed, again next time");
            destroyRecognizer();
            Earcon.closed();
            afterWindow(300);
            return;
        }
        WearableBleDiagLog.log("wake", "background recognizer unusable (" + why + "): the system dialog from now on");
        serviceOk = false;
        try {
            if (ctx != null) {
                ctx.getSharedPreferences(PREFS, Context.MODE_PRIVATE).edit().putBoolean("noBgRec", true).apply();
            }
        } catch (Throwable ignored) {
        }
        destroyRecognizer();
        Activity a = host != null ? host.get() : null;
        if (window && a != null && !a.isFinishing() && chime() && VoiceInput.listen(a, new DialogCommand(),
                followUp ? AiText.t("Слушам…", "Listening…") : AiText.t("Тренер слуша — кажи команда или въпрос",
                        "The trainer listens — a command or a question"), DIALOG_MS)) {
            return;
        }
        afterWindow(500);
    }

    /** A service / client / language error of the recognizer itself (not "nothing heard"). */
    static boolean serviceError(int error) {
        return error == SpeechRecognizer.ERROR_CLIENT || error == SpeechRecognizer.ERROR_SERVER
                || error == SpeechRecognizer.ERROR_RECOGNIZER_BUSY || error == 12 || error == 13;   // 12/13: language
    }

    /** Binds Google's recognizer at the start, so the first "Тренер, …" loses no words. */
    private static void warmRecognizer() {
        try {
            if (serviceOk == null) {
                serviceOk = SpeechRecognizer.isRecognitionAvailable(ctx);
                WearableBleDiagLog.log("wake", "background recognizer: " + serviceOk);
            }
            if (serviceOk && rec == null) {
                rec = SpeechRecognizer.createSpeechRecognizer(ctx);
                rec.setRecognitionListener(new Listener());
            }
        } catch (Throwable t) {
            WearableBleDiagLog.log("wake", "warm: " + t);
        }
    }

    /** The command from the system's speech dialog (no background recognizer). */
    static final class DialogCommand implements VoiceInput.Result, VoiceInput.WantsEmpty {
        @Override
        public void onText(String text) {
            ArrayList<String> r = new ArrayList<String>();
            r.add(text);
            commandHeard(r);
        }
    }

    /** No background recognizer on this tablet: the window opens the system's dialog instead. */
    public static boolean needsDialog() {
        return Boolean.FALSE.equals(serviceOk);
    }

    static final class Listener implements RecognitionListener {
        @Override
        public void onResults(Bundle b) {
            MAIN.removeCallbacks(NOT_READY);
            MAIN.removeCallbacks(NO_SPEECH);
            ArrayList<String> r = b != null ? b.getStringArrayList(SpeechRecognizer.RESULTS_RECOGNITION) : null;
            if (window) {
                commandHeard(r);
            } else {
                heardFallback(r);
                recognize(150);
            }
        }

        @Override
        public void onError(int error) {
            MAIN.removeCallbacks(NOT_READY);
            MAIN.removeCallbacks(NO_SPEECH);
            if (window && !readySeen && serviceError(error)) {
                giveUpBackground("error " + error);
                return;
            }
            if (error == SpeechRecognizer.ERROR_RECOGNIZER_BUSY || error == SpeechRecognizer.ERROR_CLIENT) {
                destroyRecognizer();
            }
            if (window) {
                // nothing said in the window (or a follow-up that never came): back to the spotter
                if (followUps == 0 && error != SpeechRecognizer.ERROR_NO_MATCH
                        && error != SpeechRecognizer.ERROR_SPEECH_TIMEOUT) {
                    WearableBleDiagLog.log("wake", "window error " + error);
                }
                followUps = 0;
                if (!followUp && error == SpeechRecognizer.ERROR_NO_MATCH && spoke) {
                    // something was said but not recognised (not silence): the "not understood" sound
                    WearableBleDiagLog.log("wake", "window: not recognised");
                    windowResult(false);
                    Earcon.rejected();
                    afterWindow(200);
                    return;
                }
                windowResult(false);
                Earcon.closed();                              // it stopped listening: "тренер" again
                afterWindow(200);
                return;
            }
            long d = error == SpeechRecognizer.ERROR_NO_MATCH || error == SpeechRecognizer.ERROR_SPEECH_TIMEOUT ? 150
                    : error == SpeechRecognizer.ERROR_INSUFFICIENT_PERMISSIONS ? 4000 : 1200;
            recognize(d);
        }

        @Override
        public void onReadyForSpeech(Bundle params) {
            readySeen = true;
            bgFails = 0;
            MAIN.removeCallbacks(NOT_READY);
            if (window) {
                spoke = false;
                MAIN.removeCallbacks(NO_SPEECH);
                MAIN.postDelayed(NO_SPEECH, followUp ? SPEAK_FOLLOW_MS : SPEAK_MS);
                // "speak now": the recognizer really hears from here (1.1.563: a clear chime, not the system beep)
                if (followUp) {
                    Earcon.again();
                } else {
                    Earcon.ready();
                }
            }
        }

        @Override
        public void onBeginningOfSpeech() {
            spoke = true;
            MAIN.removeCallbacks(NO_SPEECH);
            if (window) {
                state = "command";
            }
        }

        @Override
        public void onRmsChanged(float rmsdB) {
        }

        @Override
        public void onBufferReceived(byte[] buffer) {
        }

        @Override
        public void onEndOfSpeech() {
        }

        @Override
        public void onPartialResults(Bundle partialResults) {
        }

        @Override
        public void onEvent(int eventType, Bundle params) {
        }
    }

    /** 4–5 · the command → the session, the answer by voice; one follow-up without the wake word. */
    static void commandHeard(ArrayList<String> r) {
        String cmd = r != null && !r.isEmpty() && r.get(0) != null ? r.get(0).trim() : "";
        // "Тренер тренер, …" or the recognizer caught the tail of the wake word: drop it
        String after = AiVoiceCmd.afterWake(cmd);
        if (after != null) {
            cmd = after;
        }
        MAIN.removeCallbacks(NO_SPEECH);
        windowResult(cmd.length() > 0);
        if (AiVoiceCmd.onlyWakeFragment(cmd)) {
            cmd = "";                                      // "окей" alone: the wake phrase's own head
        }
        if (cmd.length() == 0) {
            Earcon.closed();
        }
        if (cmd.length() > 0) {
            WearableBleDiagLog.log("wake", "command \"" + cmd + "\"");
            Earcon.accepted();                            // heard: a quick rising pair, whatever happens next
            String said = AiTrain.voice(ctx, cmd, followUp);
            if (said != null && said.length() > 0) {
                // a command done on the tablet: say it, then back to "тренер" (owner, 1.1.555: a command is not a
                // dialogue — the room's noise must not keep it listening)
                endWindow();
                answer(said, AiLive.asking());             // a question back ("Да го направя ли?"): it listens on
                return;
            }
            if (said == null) {
                // heard, not understood: a low falling sound (owner: signals, no spoken answer)
                Earcon.rejected();
                afterWindow(300);
                return;
            }
            // "" = it went to the AI: back to the spotter; the answer is spoken when it comes (answer)
        }
        afterWindow(300);
    }

    /** The window ends without giving the microphone back to the spotter (an answer is about to be spoken). */
    private static void endWindow() {
        window = false;
        state = "";
        cancelRecognizer();
        AiTrain.voiceState();
    }

    /**
     * The coach's answer by the tablet's own voice (owner, 1.1.545: "a real trainer's dialogue"), then one more
     * listening window without "тренер" — a reply, a question back; silence ends the dialogue (back to the spotter).
     */
    static void answer(String text) {
        answer(text, true);
    }

    /**
     * dialogue: the AI answered (a reply, a question back) — one more listening without "тренер"; a pause, a quiet
     * word or the room's noise ends it (the speech dialog closes, nothing heard → back to "тренер"). false: a command
     * was done — said, then back to "тренер" at once.
     */
    static void answer(String text, boolean dialogue) {
        if (text == null || text.trim().length() == 0) {
            return;
        }
        if (!on) {
            // hands-free is off (the chat's 🎤): the answer is still spoken, nothing listens after it
            if (ctx == null) {
                return;
            }
            initTts();
            say(text);
            return;
        }
        MAIN.removeCallbacks(FOLLOW);
        micStop();                                     // the spotter must not hear the tablet's own voice
        if (window) {
            endWindow();
        }
        Runnable next = dialogue ? FOLLOW : SPOTTER_AGAIN;
        MAIN.removeCallbacks(SPOTTER_AGAIN);
        if ((!ttsOk || tts == null) && !cloud()) {
            tone(ToneGenerator.TONE_PROP_ACK);
            MAIN.postDelayed(next, 400);
            return;
        }
        state = "speaking";
        AiTrain.voiceState();
        say(text, dialogue ? "xems-listen" : "xems-said");
        // a lost "done" never leaves the microphone off: ~70 ms a character at most
        MAIN.postDelayed(next, Math.min(22000, 2500 + 75L * text.length()));
    }

    /**
     * A step of the training said aloud (AiAnnounce): after anything already being said, never cutting the trainer's
     * dialogue; the spotter is off while the tablet talks (it must not hear itself) and back after.
     */
    static void announce(String text) {
        if (text == null || text.length() == 0 || ctx == null) {
            return;
        }
        if (window) {
            synchronized (LATER) {
                LATER.add(text);                            // the recognizer would write the coach's own words
            }
            return;
        }
        initTts();
        if ((!ttsOk || tts == null) && !cloud()) {
            return;
        }
        try {
            if (on) {
                micStop();
            }
            String t = AiSpeak.clean(text);
            if (cloud()) {
                CloudVoice.speak(ctx, t, "xems-ann", false, VOICE_BACK);
                return;
            }
            tts.speak(t, TextToSpeech.QUEUE_ADD, null, "xems-ann");
        } catch (Throwable t) {
            WearableBleDiagLog.log("wake", "announce: " + t);
        }
    }

    private static final Runnable FOLLOW = new Follow();
    private static final Runnable SPOTTER_AGAIN = new SpotterAgain();
    static final Spoken SPOKEN = new Spoken();

    /**
     * The tablet is talking (the cloud voice or its own engine): nothing listens meanwhile — not the spotter, not the
     * command window (owner, 1.1.561: "it started dictating to itself"). Plus a short tail for the room's echo.
     */
    /** The system dialog has no "ready" moment we can hear: the chime as it opens (always true). */
    static boolean chime() {
        if (followUp) {
            Earcon.again();
        } else {
            Earcon.ready();
        }
        return true;
    }

    /** The steps that waited for a window to close. */
    static void sayLater() {
        java.util.ArrayList<String> l;
        synchronized (LATER) {
            if (LATER.isEmpty()) {
                return;
            }
            l = new java.util.ArrayList<String>(LATER);
            LATER.clear();
        }
        for (String t : l) {
            announce(t);
        }
    }

    static boolean speaking() {
        boolean now = CloudVoice.busy();
        try {
            now = now || (tts != null && tts.isSpeaking());
        } catch (Throwable ignored) {
        }
        if (now) {
            quietSince = System.currentTimeMillis();
            return true;
        }
        return System.currentTimeMillis() - quietSince < ECHO_MS;
    }

    private static volatile long quietSince;
    static final long ECHO_MS = 450;
    /** Steps said while a window listened: said after it (never into the recognizer). */
    private static final java.util.ArrayList<String> LATER = new java.util.ArrayList<String>();

    /** The settings card speaks before any training started this session. */
    static void bind(Context c) {
        if (ctx == null && c != null) {
            ctx = c.getApplicationContext();
        }
    }
    static final VoiceBack VOICE_BACK = new VoiceBack();

    /** The cloud voice can speak (or play a kept phrase): the coach's voice is Microsoft's, not the tablet's (1.1.559). */
    static boolean cloud() {
        return ctx != null && CloudVoice.usable(ctx);
    }

    /** The cloud voice's end of a phrase (the same as the engine's), and its fallback: the tablet's own engine. */
    static final class VoiceBack implements CloudVoice.Fallback {
        @Override
        public void sayLocal(String text, String id, boolean flush) {
            initTts();
            if (!ttsOk || tts == null) {
                tone(ToneGenerator.TONE_PROP_ACK);
                SPOKEN.onDone(id);
                return;
            }
            try {
                tts.speak(text.length() > 400 ? text.substring(0, 400) : text,
                        flush ? TextToSpeech.QUEUE_FLUSH : TextToSpeech.QUEUE_ADD, null, id);
            } catch (Throwable t) {
                SPOKEN.onDone(id);
            }
        }

        @Override
        public void done(String id) {
            SPOKEN.onDone(id);
        }
    }

    /** After a command's confirmation: "тренер" again (or the recognizer, when nothing is recorded). */
    static final class SpotterAgain implements Runnable {
        @Override
        public void run() {
            MAIN.removeCallbacks(SPOTTER_AGAIN);
            if (!on || window) {
                return;
            }
            state = "";
            AiTrain.voiceState();
            afterWindow(0);
        }
    }

    static final class Follow implements Runnable {
        @Override
        public void run() {
            MAIN.removeCallbacks(FOLLOW);
            if (!on || window) {
                return;
            }
            if (speaking()) {
                MAIN.postDelayed(FOLLOW, 200);              // the answer is still being said (a slow network)
                return;
            }
            micStop();
            followUp = true;
            openWindow();
        }
    }

    static final class Spoken extends android.speech.tts.UtteranceProgressListener {
        @Override
        public void onStart(String id) {
        }

        @Override
        public void onDone(String id) {
            if (id != null && id.startsWith("xems-listen")) {
                MAIN.removeCallbacks(FOLLOW);
                MAIN.postDelayed(FOLLOW, ECHO_MS);
            } else if (id != null && id.startsWith("xems-said")) {
                MAIN.removeCallbacks(SPOTTER_AGAIN);
                MAIN.postDelayed(SPOTTER_AGAIN, ECHO_MS);
            } else if (id != null && id.startsWith("xems-ann")) {
                MAIN.postDelayed(new MicAgain(), 300);      // the announcement said: the spotter listens again
            }
        }

        @Override
        public void onError(String id) {
            onDone(id);
        }
    }

    static void afterWindow(long delayMs) {
        MAIN.removeCallbacks(NO_SPEECH);
        window = false;
        state = "";
        sayLater();
        AiTrain.voiceState();
        cancelRecognizer();
        if (!on) {
            return;
        }
        if (SPOTTER.ready()) {
            mute(false);
            MAIN.postDelayed(new MicAgain(), delayMs);
        } else {
            recognize(delayMs);
        }
    }

    /** The fallback (no recordings yet): every phrase is transcribed, only "тренер …" acts. */
    static void heardFallback(ArrayList<String> results) {
        if (results == null || results.isEmpty()) {
            return;
        }
        long now = System.currentTimeMillis();
        for (String s : results) {
            String cmd = AiVoiceCmd.afterWake(s);
            if (cmd == null) {
                continue;
            }
            if (cmd.length() == 0) {
                armedUntil = now + ARMED_MS;
                tone(ToneGenerator.TONE_PROP_BEEP);
                return;
            }
            armedUntil = 0;
            act(cmd);
            return;
        }
        if (armedUntil > now && results.get(0) != null && results.get(0).trim().length() > 0) {
            armedUntil = 0;
            act(results.get(0).trim());
        }
    }

    private static void act(String cmd) {
        String said = AiTrain.voice(ctx, cmd);
        if (said == null) {
            tone(ToneGenerator.TONE_PROP_NACK);
        } else if (said.length() > 0) {
            say(said);
        } else {
            tone(ToneGenerator.TONE_PROP_ACK);
        }
    }

    /** Ends a listening without unbinding the service: the next window starts at once. */
    private static void cancelRecognizer() {
        try {
            if (rec != null) {
                rec.cancel();
            }
        } catch (Throwable t) {
            destroyRecognizer();
        }
    }

    private static void destroyRecognizer() {
        try {
            if (rec != null) {
                rec.cancel();
                rec.destroy();
            }
        } catch (Throwable ignored) {
        }
        rec = null;
    }

    // ================================================================ the spoken answer

    static boolean bg() {
        return AiText.t("bg", "en").equals("bg");
    }

    private static void initTts() {
        if (tts != null || ctx == null) {
            return;
        }
        try {
            tts = new TextToSpeech(ctx, new TtsInit());
        } catch (Throwable t) {
            WearableBleDiagLog.log("wake", "tts: " + t);
        }
    }

    static final class TtsInit implements TextToSpeech.OnInitListener {
        @Override
        public void onInit(int status) {
            try {
                if (status == TextToSpeech.SUCCESS && tts != null) {
                    int r = tts.setLanguage(bg() ? new Locale("bg", "BG") : Locale.US);
                    ttsOk = r != TextToSpeech.LANG_MISSING_DATA && r != TextToSpeech.LANG_NOT_SUPPORTED;
                    tts.setSpeechRate(1.05f);
                    bestVoice();
                    tts.setOnUtteranceProgressListener(SPOKEN);
                }
            } catch (Throwable t) {
                ttsOk = false;
            }
            WearableBleDiagLog.log("wake", "tts " + (ttsOk ? "bg ok" : "none — tones only"));
        }
    }

    /**
     * The best Bulgarian voice the tablet has (owner, 1.1.547: "the device's own voice, chosen well"): the highest
     * quality, a local one before a network one at the same quality (no wait, works offline).
     */
    static void bestVoice() {
        try {
            if (android.os.Build.VERSION.SDK_INT < 21 || tts == null || tts.getVoices() == null) {
                return;
            }
            String lang = bg() ? "bg" : "en";
            android.speech.tts.Voice best = null;
            for (android.speech.tts.Voice v : tts.getVoices()) {
                if (v == null || v.getLocale() == null || !lang.equals(v.getLocale().getLanguage())) {
                    continue;
                }
                if (v.getFeatures() != null && v.getFeatures().contains(TextToSpeech.Engine.KEY_FEATURE_NOT_INSTALLED)) {
                    continue;
                }
                if (best == null || v.getQuality() > best.getQuality()
                        || (v.getQuality() == best.getQuality() && best.isNetworkConnectionRequired()
                        && !v.isNetworkConnectionRequired())) {
                    best = v;
                }
            }
            if (best != null) {
                tts.setVoice(best);
            }
            WearableBleDiagLog.log("wake", "tts voice " + (best != null ? best.getName() + " q=" + best.getQuality()
                    + (best.isNetworkConnectionRequired() ? " net" : " local") : "default"));
        } catch (Throwable t) {
            WearableBleDiagLog.log("wake", "voice: " + t);
        }
    }

    /** A short confirmation: "Крака 45 %" → "Крака 45 процента"; no speech engine → the "done" tone. */
    static void say(String text) {
        say(text, "xems");
    }

    static void say(String text, String id) {
        if (cloud()) {
            String t = AiSpeak.clean(text);
            CloudVoice.speak(ctx, t.length() > 400 ? t.substring(0, 400) : t, id, true, VOICE_BACK);
            return;
        }
        if (!ttsOk || tts == null) {
            tone(ToneGenerator.TONE_PROP_ACK);
            return;
        }
        try {
            String t = AiSpeak.clean(text);              // never a symbol read out (1.1.551)
            tts.speak(t.length() > 400 ? t.substring(0, 400) : t, TextToSpeech.QUEUE_FLUSH, null, id);
        } catch (Throwable t) {
            tone(ToneGenerator.TONE_PROP_ACK);
        }
    }

    static void tone(int t) {
        try {
            ToneGenerator g = new ToneGenerator(AudioManager.STREAM_MUSIC, 55);
            g.startTone(t, 180);
            MAIN.postDelayed(new Release(g), 400);
        } catch (Throwable ignored) {
        }
    }

    static final class Release implements Runnable {
        final ToneGenerator g;

        Release(ToneGenerator g) {
            this.g = g;
        }

        @Override
        public void run() {
            try {
                g.release();
            } catch (Throwable ignored) {
            }
        }
    }

    /** The recognizer's own start beep rings on every start: the system sounds are muted while it listens. */
    private static void mute(boolean m) {
        try {
            AudioManager am = (AudioManager) (ctx != null ? ctx.getSystemService(Context.AUDIO_SERVICE) : null);
            if (am == null) {
                return;
            }
            if (m) {
                if (volSystem < 0) {
                    volSystem = am.getStreamVolume(AudioManager.STREAM_SYSTEM);
                    volNotify = am.getStreamVolume(AudioManager.STREAM_NOTIFICATION);
                }
                am.setStreamVolume(AudioManager.STREAM_SYSTEM, 0, 0);
                am.setStreamVolume(AudioManager.STREAM_NOTIFICATION, 0, 0);
            } else if (volSystem >= 0) {
                am.setStreamVolume(AudioManager.STREAM_SYSTEM, volSystem, 0);
                am.setStreamVolume(AudioManager.STREAM_NOTIFICATION, volNotify, 0);
                volSystem = volNotify = -1;
            }
        } catch (Throwable t) {
            WearableBleDiagLog.log("wake", "mute: " + t);
        }
    }

    static String hex(byte[] b) {
        StringBuilder s = new StringBuilder(b.length * 2);
        for (byte x : b) {
            s.append(Character.forDigit((x >> 4) & 15, 16)).append(Character.forDigit(x & 15, 16));
        }
        return s.toString();
    }

    static byte[] unhex(String s) {
        byte[] b = new byte[s.length() / 2];
        for (int i = 0; i < b.length; i++) {
            b[i] = (byte) Integer.parseInt(s.substring(2 * i, 2 * i + 2), 16);
        }
        return b;
    }
}
