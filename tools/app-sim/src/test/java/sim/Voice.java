package sim;

import android.os.Bundle;
import android.speech.SpeechRecognizer;
import android.speech.tts.TextToSpeech;

import org.robolectric.RuntimeEnvironment;
import org.robolectric.Shadows;
import org.robolectric.shadows.ShadowSpeechRecognizer;
import org.robolectric.shadows.ShadowTextToSpeech;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/** The trainer's voice: the system recognizer's results are given to the app; what the tablet says is read back. */
public final class Voice {
    private Voice() {}

    static Class<?> wl() throws Exception {
        return Class.forName("com.isaigu.gymapp.ai.WakeListener");
    }

    public static void permit() {
        Shadows.shadowOf(RuntimeEnvironment.getApplication()).grantPermissions(android.Manifest.permission.RECORD_AUDIO);
        ShadowTextToSpeech.addLanguageAvailability(new Locale("bg", "BG"));
    }

    /** The speech engine says "ready" (as the tablet's does a moment after the start). */
    public static void ttsReady() throws Exception {
        TextToSpeech t = tts();
        if (t != null) {
            Shadows.shadowOf(t).getOnInitListener().onInit(TextToSpeech.SUCCESS);
        }
        System.out.println("SIM tts " + (t != null ? "ready" : "none"));
    }

    static TextToSpeech tts() throws Exception {
        java.lang.reflect.Field f = wl().getDeclaredField("tts");
        f.setAccessible(true);
        return (TextToSpeech) f.get(null);
    }

    /** "Тренер" heard by the spotter: the command window opens. */
    public static void wake() throws Exception {
        java.lang.reflect.Method m = wl().getDeclaredMethod("openWindow");
        m.setAccessible(true);
        m.invoke(null);
        Ui.idle(400);
        System.out.println("SIM wake → state=\"" + state() + "\"");
    }

    public static String state() throws Exception {
        return (String) wl().getMethod("state").invoke(null);
    }

    /** The recognizer heard this phrase in the open window. */
    public static boolean say(String phrase) throws Exception {
        SpeechRecognizer r = ShadowSpeechRecognizer.getLatestSpeechRecognizer();
        if (r == null) {
            System.out.println("SIM say \"" + phrase + "\" — no recognizer listening");
            return false;
        }
        Bundle b = new Bundle();
        ArrayList<String> l = new ArrayList<String>();
        l.add(phrase);
        b.putStringArrayList(SpeechRecognizer.RESULTS_RECOGNITION, l);
        Shadows.shadowOf(r).triggerOnResults(b);
        System.out.println("SIM say \"" + phrase + "\"");
        Ui.idle(300);
        return true;
    }

    /** What the tablet said aloud since the last call (and the speech "done", which opens the next window). */
    public static List<String> heard() throws Exception {
        TextToSpeech t = tts();
        List<String> out = new ArrayList<String>();
        if (t == null) {
            return out;
        }
        ShadowTextToSpeech s = Shadows.shadowOf(t);
        out.addAll(s.getSpokenTextList());
        for (String x : out) {
            System.out.println("SIM tablet said: \"" + x + "\"");
        }
        if (s.getUtteranceProgressListener() != null && !out.isEmpty()) {
            s.getUtteranceProgressListener().onDone("xems-listen");
        }
        s.clearLastSpokenText();
        return out;
    }
}
