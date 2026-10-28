package com.isaigu.gymapp.wearable.voice;

import android.media.AudioManager;
import android.media.ToneGenerator;

import com.isaigu.gymapp.ai.AiEngine;
import com.isaigu.gymapp.ai.AiSession;
import com.isaigu.gymapp.wearable.BandRemote;
import com.isaigu.gymapp.wearable.WearableBleDiagLog;
import com.isaigu.gymapp.widget.XemsGuard;
import com.isaigu.gymapp.widget.XemsLang;
import com.isaigu.gymapp.widget.XemsPanel;

/**
 * A spoken command (VoiceLink "CMD …") onto whatever runs now — owner, 2026-10-27: "whatever suit or system".
 * Order: the MASTOGO page, the Bluetens page (each only when open with its unit), the AI session, then the suit's
 * training row (WiEMS units ride it). start / pause only change something when it is stopped / running — a word
 * heard twice never toggles back. stop = the strongest stop of what runs. plus / minus = one step, every limit
 * of the mode still applies (AiSession.increase never goes above the plan).
 */
public final class VoiceRemote {
    private VoiceRemote() {}

    /** The last command and when it was done (the voice page shows it). */
    public static String last = "";
    public static long lastMs;

    static ToneGenerator tone;

    public static void onCommand(String a) {
        try {
            if (a == null) {
                return;
            }
            String where = route(a);
            WearableBleDiagLog.log("voice", "cmd " + a + " → " + where);
            last = a;
            lastMs = System.currentTimeMillis();
            if (where != null) {
                beep("stop".equals(a) || "pause".equals(a));
            }
            // seen on every page: taken, or why nothing happened (owner: "no sign the command was taken")
            show(where != null ? "🎤 " + VoiceScreen.word(a).toUpperCase() + " ✓"
                    : "🎤 " + VoiceScreen.word(a) + " — " + XemsLang.tr("няма пусната тренировка",
                    "no training running"));
        } catch (Throwable t) {
            XemsGuard.report("VoiceRemote.onCommand", t);
        }
    }

    /** Where the command went, or null when nothing could take it. */
    static String route(String a) {
        if (com.isaigu.gymapp.wearable.mastogo.MastogoScreen.voice(a)) {
            return "mastogo";
        }
        if (com.isaigu.gymapp.wearable.bluetens.BluetensScreen.voice(a)) {
            return "bluetens";
        }
        AiEngine e = AiSession.getEngine();
        if (AiSession.getStage() == AiSession.Stage.RUNNING && e != null) {
            AiEngine.State s = e.getState();
            boolean paused = s == AiEngine.State.USER_PAUSE || s == AiEngine.State.REST;
            if ("start".equals(a)) {
                if (s == AiEngine.State.REST && e.isRestReady()) {
                    AiSession.continueBlock();
                } else if (s == AiEngine.State.USER_PAUSE) {
                    AiSession.togglePause();
                }
            } else if ("pause".equals(a)) {
                if (!paused) {
                    AiSession.togglePause();
                }
            } else if ("stop".equals(a)) {
                AiSession.stop();
            } else if ("plus".equals(a)) {
                AiSession.increase();
            } else if ("minus".equals(a)) {
                AiSession.reduce();
            }
            return "ai";
        }
        boolean running = XemsPanel.isRunning();
        boolean done;
        if ("start".equals(a)) {
            done = running || XemsPanel.press(XemsPanel.PRESS_START);
        } else if ("pause".equals(a)) {
            done = !running || XemsPanel.press(XemsPanel.PRESS_START);
        } else if ("stop".equals(a)) {
            done = XemsPanel.press(XemsPanel.PRESS_STOP);
        } else if ("plus".equals(a) || "minus".equals(a)) {
            if (!running) {
                return null;                        // nothing runs: a stronger impulse for nothing
            }
            BandRemote.mainStep("plus".equals(a) ? 1 : -1);
            done = true;
        } else {
            return null;
        }
        return done ? "suit" : null;
    }

    /** "старт" without the countdown: say what is missing. */
    public static void onNoCount() {
        show("🎤 " + XemsLang.tr("старт — първо кажи „едно, две, три“", "start — say one, two, three first"));
    }

    static void show(String text) {
        try {
            if (VoiceLink.app != null) {
                android.widget.Toast.makeText(VoiceLink.app, text, android.widget.Toast.LENGTH_SHORT).show();
            }
        } catch (Throwable ignored) {
        }
    }

    /** A short tone: the trainer hears the word was taken without looking (stop / pause: lower, twice). */
    static void beep(boolean low) {
        try {
            if (tone == null) {
                tone = new ToneGenerator(AudioManager.STREAM_MUSIC, 70);
            }
            tone.startTone(low ? ToneGenerator.TONE_PROP_BEEP2 : ToneGenerator.TONE_PROP_ACK, 150);
        } catch (Throwable ignored) {
        }
    }
}
