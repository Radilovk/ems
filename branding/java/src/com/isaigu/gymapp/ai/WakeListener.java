package com.isaigu.gymapp.ai;

import android.Manifest;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.media.AudioManager;
import android.media.ToneGenerator;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.speech.RecognitionListener;
import android.speech.RecognizerIntent;
import android.speech.SpeechRecognizer;

import com.isaigu.gymapp.wearable.WearableBleDiagLog;

import java.util.ArrayList;

/**
 * Hands-free voice control of the AI training (owner, 1.1.540): the tablet listens all the time and acts only on what
 * follows the word "тренер" — "Тренер, увеличи краката", "Тренер, пауза", "Тренер стоп", "Тренер старт". Android's own
 * speech recognizer (Bulgarian, offline when the language pack is on the tablet), restarted after every phrase; no
 * training needed. The words go to {@link AiTrain#voice}: the tablet reads the commands itself
 * ({@link AiVoiceCmd}), only what is no command goes to the AI. A short tone says "done".
 * Needs RECORD_AUDIO (asked once).
 */
public final class WakeListener {
    private WakeListener() {}

    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    private static SpeechRecognizer rec;
    private static Context ctx;
    private static boolean on;
    private static boolean listening;
    /** "Тренер" alone: the next phrase within ARMED_MS is the command. */
    private static long armedUntil;
    static final long ARMED_MS = 6000;
    private static int volSystem = -1;
    private static int volNotify = -1;

    public static boolean isOn() {
        return on;
    }

    /** Starts listening (asks for the microphone once); false when the tablet has no speech recognizer. */
    public static boolean start(Activity a) {
        if (a == null) {
            return false;
        }
        try {
            if (!SpeechRecognizer.isRecognitionAvailable(a)) {
                WearableBleDiagLog.log("wake", "no recognizer");
                return false;
            }
            if (Build.VERSION.SDK_INT >= 23
                    && a.checkSelfPermission(Manifest.permission.RECORD_AUDIO) != PackageManager.PERMISSION_GRANTED) {
                a.requestPermissions(new String[] {Manifest.permission.RECORD_AUDIO}, 0x5A2);
            }
        } catch (Throwable t) {
            WearableBleDiagLog.log("wake", "start: " + t);
            return false;
        }
        ctx = a.getApplicationContext();
        on = true;
        mute(true);
        listen(300);
        return true;
    }

    public static void stop() {
        on = false;
        armedUntil = 0;
        MAIN.removeCallbacks(RESTART);
        try {
            if (rec != null) {
                rec.cancel();
                rec.destroy();
            }
        } catch (Throwable ignored) {
        }
        rec = null;
        listening = false;
        mute(false);
    }

    private static final Runnable RESTART = new Restart();

    static final class Restart implements Runnable {
        @Override
        public void run() {
            begin();
        }
    }

    private static void listen(long delayMs) {
        MAIN.removeCallbacks(RESTART);
        if (on) {
            MAIN.postDelayed(RESTART, delayMs);
        }
    }

    private static void begin() {
        if (!on || ctx == null) {
            return;
        }
        try {
            if (Build.VERSION.SDK_INT >= 23
                    && ctx.checkSelfPermission(Manifest.permission.RECORD_AUDIO) != PackageManager.PERMISSION_GRANTED) {
                listen(3000);                                 // waiting for the "allow" tap
                return;
            }
            if (rec == null) {
                rec = SpeechRecognizer.createSpeechRecognizer(ctx);
                rec.setRecognitionListener(new Listener());
            }
            Intent i = new Intent(RecognizerIntent.ACTION_RECOGNIZE_SPEECH);
            i.putExtra(RecognizerIntent.EXTRA_LANGUAGE_MODEL, RecognizerIntent.LANGUAGE_MODEL_FREE_FORM);
            String lang = AiText.t("bg", "en").equals("bg") ? "bg-BG" : "en-US";
            i.putExtra(RecognizerIntent.EXTRA_LANGUAGE, lang);
            i.putExtra(RecognizerIntent.EXTRA_LANGUAGE_PREFERENCE, lang);
            i.putExtra(RecognizerIntent.EXTRA_PREFER_OFFLINE, true);
            i.putExtra(RecognizerIntent.EXTRA_PARTIAL_RESULTS, false);
            i.putExtra(RecognizerIntent.EXTRA_MAX_RESULTS, 3);
            i.putExtra(RecognizerIntent.EXTRA_CALLING_PACKAGE, ctx.getPackageName());
            listening = true;
            rec.startListening(i);
        } catch (Throwable t) {
            WearableBleDiagLog.log("wake", "begin: " + t);
            try {
                if (rec != null) {
                    rec.destroy();
                }
            } catch (Throwable ignored) {
            }
            rec = null;
            listen(2000);
        }
    }

    static final class Listener implements RecognitionListener {
        @Override
        public void onResults(Bundle b) {
            listening = false;
            ArrayList<String> r = b != null ? b.getStringArrayList(SpeechRecognizer.RESULTS_RECOGNITION) : null;
            heard(r);
            listen(150);
        }

        @Override
        public void onError(int error) {
            listening = false;
            // no speech / no match / timeout: listen again at once; busy or the engine's own trouble: a little later
            long d = error == SpeechRecognizer.ERROR_NO_MATCH || error == SpeechRecognizer.ERROR_SPEECH_TIMEOUT ? 150
                    : error == SpeechRecognizer.ERROR_INSUFFICIENT_PERMISSIONS ? 4000 : 1200;
            if (error == SpeechRecognizer.ERROR_RECOGNIZER_BUSY || error == SpeechRecognizer.ERROR_CLIENT) {
                try {
                    if (rec != null) {
                        rec.destroy();
                    }
                } catch (Throwable ignored) {
                }
                rec = null;
            }
            listen(d);
        }

        @Override
        public void onReadyForSpeech(Bundle params) {
        }

        @Override
        public void onBeginningOfSpeech() {
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

    /** One phrase: "тренер …" → the command; "тренер" alone arms the next phrase; anything else is ignored. */
    static void heard(ArrayList<String> results) {
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
        WearableBleDiagLog.log("wake", "\"" + cmd + "\"");
        boolean done = AiTrain.voice(ctx, cmd);
        tone(done ? ToneGenerator.TONE_PROP_ACK : ToneGenerator.TONE_PROP_NACK);
    }

    private static void tone(int t) {
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

    /** The recognizer's own start beep on every restart would ring all session: the system sounds are muted while on. */
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
}
