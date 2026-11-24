package com.isaigu.gymapp.ai;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.content.Intent;
import android.speech.RecognizerIntent;
import android.widget.Toast;

import com.isaigu.gymapp.wearable.WearableBleDiagLog;

import java.util.ArrayList;

/**
 * The 🎤 of the AI training (owner, 1.1.537): Android's own speech input — the same Google voice typing the keyboard's
 * mic opens — with the app's language (Bulgarian → bg-BG), whether the keyboard is out or not. A headless fragment
 * starts it and takes the result (no RECORD_AUDIO in this app: the recognizer app records, verify-beta-safety.py).
 */
public final class VoiceInput {
    private VoiceInput() {}

    /** What to do with the recognized words. */
    public interface Result {
        void onText(String text);
    }

    /** A Result that also wants "" when nothing was said or the dialog was closed (the wake word's window). */
    public interface WantsEmpty {
    }

    private static final String TAG = "xems_voice";
    static final int REQ = 0x5A1;
    private static Result pending;

    public static void listen(Activity a, Result cb) {
        listen(a, cb, AiText.t("Кажи за клиента или какво да сменя…", "Say something about the client or what to change…"));
    }

    /** false: no speech dialog on this tablet (the caller falls back). */
    public static boolean listen(Activity a, Result cb, String prompt) {
        if (a == null || cb == null) {
            return false;
        }
        pending = cb;
        try {
            FragmentManager fm = a.getFragmentManager();
            Fragment f = fm.findFragmentByTag(TAG);
            if (f == null) {
                f = new Host();
                fm.beginTransaction().add(f, TAG).commitAllowingStateLoss();
                fm.executePendingTransactions();
            }
            Intent i = new Intent(RecognizerIntent.ACTION_RECOGNIZE_SPEECH);
            i.putExtra(RecognizerIntent.EXTRA_LANGUAGE_MODEL, RecognizerIntent.LANGUAGE_MODEL_FREE_FORM);
            String lang = AiText.t("bg", "en").equals("bg") ? "bg-BG" : "en-US";
            i.putExtra(RecognizerIntent.EXTRA_LANGUAGE, lang);
            i.putExtra(RecognizerIntent.EXTRA_LANGUAGE_PREFERENCE, lang);
            i.putExtra(RecognizerIntent.EXTRA_ONLY_RETURN_LANGUAGE_PREFERENCE, lang);
            i.putExtra(RecognizerIntent.EXTRA_PROMPT, prompt);
            i.putExtra(RecognizerIntent.EXTRA_MAX_RESULTS, 1);
            f.startActivityForResult(i, REQ);
            return true;
        } catch (Throwable t) {
            pending = null;
            WearableBleDiagLog.log("voice", "listen: " + t);
            try {
                Toast.makeText(a, AiText.t("Няма гласово въвеждане на таблета (Google).",
                        "No speech input on this tablet (Google)."), Toast.LENGTH_LONG).show();
            } catch (Throwable ignored) {
            }
            return false;
        }
    }

    /** Headless: only starts the recognizer and hands its words on. Public with a no-arg constructor (recreation). */
    public static final class Host extends Fragment {
        public Host() {}

        @Override
        public void onActivityResult(int requestCode, int resultCode, Intent data) {
            if (requestCode != REQ) {
                return;
            }
            Result cb = pending;
            pending = null;
            if (cb == null) {
                return;
            }
            if (resultCode != Activity.RESULT_OK || data == null) {
                if (cb instanceof WantsEmpty) {
                    cb.onText("");
                }
                return;
            }
            ArrayList<String> r = data.getStringArrayListExtra(RecognizerIntent.EXTRA_RESULTS);
            if (r != null && !r.isEmpty() && r.get(0) != null && r.get(0).trim().length() > 0) {
                try {
                    cb.onText(r.get(0).trim());
                } catch (Throwable t) {
                    WearableBleDiagLog.log("voice", "result: " + t);
                }
            } else if (cb instanceof WantsEmpty) {
                cb.onText("");
            }
        }
    }
}
