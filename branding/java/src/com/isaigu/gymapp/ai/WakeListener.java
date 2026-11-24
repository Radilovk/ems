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
    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    private static Context ctx;
    private static boolean on;
    static final WakeWord SPOTTER = new WakeWord();
    private static boolean loaded;

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
            String hex = c.getSharedPreferences(PREFS, Context.MODE_PRIVATE).getString("tpl", "");
            if (hex.length() > 0) {
                SPOTTER.load(unhex(hex));
            }
        } catch (Throwable t) {
            WearableBleDiagLog.log("wake", "load: " + t);
        }
    }

    static void saveExamples(Context c) {
        try {
            c.getSharedPreferences(PREFS, Context.MODE_PRIVATE).edit().putString("tpl", hex(SPOTTER.save())).apply();
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
            String hex = c.getSharedPreferences(PREFS, Context.MODE_PRIVATE).getString("tpl", "");
            if (hex.length() > 0) {
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
        load(ctx);
        if (!permitted(a, true)) {
            WearableBleDiagLog.log("wake", "asking for the microphone");
        }
        on = true;
        followUps = 0;
        initTts();
        if (SPOTTER.ready()) {
            micStart();
        } else {
            mute(true);                                    // fallback: the recognizer listens all the time
            recognize(300);
        }
        return true;
    }

    public static void stop() {
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
        state = "";
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
                int min = AudioRecord.getMinBufferSize(16000, AudioFormat.CHANNEL_IN_MONO, AudioFormat.ENCODING_PCM_16BIT);
                ar = new AudioRecord(MediaRecorder.AudioSource.VOICE_RECOGNITION, 16000, AudioFormat.CHANNEL_IN_MONO,
                        AudioFormat.ENCODING_PCM_16BIT, Math.max(min, 16000));
                ar.startRecording();
                short[] buf = new short[800];
                while (micRun && gen == micGen) {
                    int n = ar.read(buf, 0, buf.length);
                    for (int i = 0; i < n; i++) {
                        int ev = SPOTTER.push(buf[i]);
                        WakeSetup.Sink sink = setup;
                        if (ev == WakeWord.NONE) {
                            continue;
                        }
                        if (sink != null) {
                            MAIN.post(new SetupEvent(sink, ev));
                        } else if (ev == WakeWord.WAKE && on) {
                            micRun = false;                  // the command window takes the microphone
                            MAIN.post(new Wake());
                            break;
                        }
                    }
                }
            } catch (Throwable t) {
                WearableBleDiagLog.log("wake", "mic: " + t);
                micRun = false;
                if (on) {
                    MAIN.postDelayed(new MicAgain(), 3000);
                }
            } finally {
                if (ar != null) {
                    try {
                        ar.stop();
                    } catch (Throwable ignored) {
                    }
                    ar.release();
                }
            }
        }
    }

    static final class MicAgain implements Runnable {
        @Override
        public void run() {
            if (on && SPOTTER.ready() && !window) {
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
            WearableBleDiagLog.log("wake", "тренер d=" + SPOTTER.lastD + " thr=" + SPOTTER.threshold());
            tone(ToneGenerator.TONE_PROP_BEEP);
            openWindow();
        }
    }

    static void openWindow() {
        window = true;
        state = "listening";
        AiTrain.voiceState();
        mute(true);
        recognize(120);
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
        try {
            if (!permitted(null, false)) {
                recognize(3000);
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
            i.putExtra(RecognizerIntent.EXTRA_PREFER_OFFLINE, true);
            i.putExtra(RecognizerIntent.EXTRA_MAX_RESULTS, 3);
            i.putExtra(RecognizerIntent.EXTRA_CALLING_PACKAGE, ctx.getPackageName());
            if (window) {
                // the command: closes after a second of silence
                i.putExtra(RecognizerIntent.EXTRA_SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS, 1000L);
                i.putExtra(RecognizerIntent.EXTRA_SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS, 800L);
            }
            rec.startListening(i);
        } catch (Throwable t) {
            WearableBleDiagLog.log("wake", "begin: " + t);
            destroyRecognizer();
            afterWindow(2000);
        }
    }

    static final class Listener implements RecognitionListener {
        @Override
        public void onResults(Bundle b) {
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
                afterWindow(200);
                return;
            }
            long d = error == SpeechRecognizer.ERROR_NO_MATCH || error == SpeechRecognizer.ERROR_SPEECH_TIMEOUT ? 150
                    : error == SpeechRecognizer.ERROR_INSUFFICIENT_PERMISSIONS ? 4000 : 1200;
            recognize(d);
        }

        @Override
        public void onReadyForSpeech(Bundle params) {
        }

        @Override
        public void onBeginningOfSpeech() {
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
        if (cmd.length() > 0) {
            WearableBleDiagLog.log("wake", "command \"" + cmd + "\"");
            String said = AiTrain.voice(ctx, cmd);
            if (said != null && said.length() > 0) {
                // done on the tablet: say it, then listen again without "тренер" — a dialogue, not one-shot
                endWindow();
                answer(said);
                return;
            }
            if (said == null) {
                tone(ToneGenerator.TONE_PROP_NACK);
            }
            // "" = it went to the AI: back to the spotter; the answer is spoken when it comes (answer)
        }
        afterWindow(300);
    }

    /** The window ends without giving the microphone back to the spotter (an answer is about to be spoken). */
    private static void endWindow() {
        window = false;
        state = "";
        destroyRecognizer();
        AiTrain.voiceState();
    }

    /**
     * The coach's answer by the tablet's own voice (owner, 1.1.545: "a real trainer's dialogue"), then one more
     * listening window without "тренер" — a reply, a question back; silence ends the dialogue (back to the spotter).
     */
    static void answer(String text) {
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
        if (!ttsOk || tts == null) {
            tone(ToneGenerator.TONE_PROP_ACK);
            MAIN.postDelayed(FOLLOW, 400);
            return;
        }
        state = "speaking";
        AiTrain.voiceState();
        say(text, "xems-listen");
        // a lost "done" never leaves the microphone off: ~70 ms a character at most
        MAIN.postDelayed(FOLLOW, Math.min(20000, 1500 + 70L * text.length()));
    }

    private static final Runnable FOLLOW = new Follow();

    static final class Follow implements Runnable {
        @Override
        public void run() {
            MAIN.removeCallbacks(FOLLOW);
            if (!on || window) {
                return;
            }
            micStop();
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
                MAIN.postDelayed(FOLLOW, 250);
            }
        }

        @Override
        public void onError(String id) {
            onDone(id);
        }
    }

    static void afterWindow(long delayMs) {
        window = false;
        state = "";
        AiTrain.voiceState();
        destroyRecognizer();
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
                    tts.setOnUtteranceProgressListener(new Spoken());
                }
            } catch (Throwable t) {
                ttsOk = false;
            }
            WearableBleDiagLog.log("wake", "tts " + (ttsOk ? "bg ok" : "none — tones only"));
        }
    }

    /** A short confirmation: "Крака 45 %" → "Крака 45 процента"; no speech engine → the "done" tone. */
    static void say(String text) {
        say(text, "xems");
    }

    static void say(String text, String id) {
        if (!ttsOk || tts == null) {
            tone(ToneGenerator.TONE_PROP_ACK);
            return;
        }
        try {
            String t = text.replace("✓", "").replace(" · ", ". ").replace("%", bg() ? " процента" : " percent")
                    .replace("Hz", bg() ? "херца" : "hertz").replace("−", bg() ? "минус " : "minus ").replace("+", "плюс ");
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
