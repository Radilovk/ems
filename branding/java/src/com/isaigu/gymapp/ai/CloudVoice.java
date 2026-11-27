package com.isaigu.gymapp.ai;

import android.content.Context;
import android.content.SharedPreferences;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.os.Handler;
import android.os.Looper;

import com.isaigu.gymapp.wearable.WearableBleDiagLog;
import com.isaigu.gymapp.widget.XemsLicenseClient;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.LinkedList;

/**
 * The coach's voice (owner, 1.1.559: "least delay, a good voice, free"): Microsoft's neural Bulgarian voice through
 * our server (/v1/tts, server/src/tts.js) — raw 24 kHz PCM played by an AudioTrack as it arrives, so the first word
 * sounds ~0.3–0.5 s after the request. Every phrase is kept on the tablet (files/voice/): "Пауза", "Сила 46" are
 * fetched once and then play at once, offline. No server, no licence, no network, the month's free characters used
 * up (429), or nothing within {@link #FIRST_MS} → the tablet's own engine says it ({@link Fallback}), so the coach
 * is never silent. One phrase at a time, in order (a queue); {@code flush} drops what waits and stops what plays.
 */
public final class CloudVoice {
    private CloudVoice() {}

    /** The tablet's own engine for one phrase (WakeListener), and the end of a phrase (its utterance id). */
    public interface Fallback {
        void sayLocal(String text, String id, boolean flush);

        void done(String id);
    }

    static final int RATE = 24000;
    /** Nothing from the server by then: the tablet's own voice (a slow network must not leave a silence). */
    static final int FIRST_MS = 2500;
    /** The month's free characters are used: the tablet's own voice for this long before asking again. */
    static final long QUOTA_PAUSE_MS = 60L * 60L * 1000L;
    /** The tablet keeps at most this much speech (≈ 18 min of phrases), the oldest go first. */
    static final long CACHE_BYTES = 50L * 1024L * 1024L;
    static final String PREFS = "xems_voice";

    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    private static final LinkedList<Item> QUEUE = new LinkedList<Item>();
    private static Thread worker;
    private static volatile AudioTrack track;
    private static volatile int gen;
    private static volatile long quotaUntil;
    private static volatile boolean off;
    private static Context app;
    private static Fallback fallback;

    static final class Item {
        final String text;
        final String id;
        final int gen;

        Item(String text, String id, int gen) {
            this.text = text;
            this.id = id;
            this.gen = gen;
        }
    }

    // ---- the trainer's choice (Settings → "Глас на треньора", 1.1.560)
    /** The tablet's own engine instead of a cloud voice. */
    public static final String DEVICE = "device";
    public static final String DEFAULT_VOICE = "bg-BG-KalinaNeural";
    /** The voices offered: id, Bulgarian name, English name, female. */
    public static final String[][] VOICES = {
            {"bg-BG-KalinaNeural", "Калина", "Kalina", "f"}, {"bg-BG-BorislavNeural", "Борислав", "Borislav", "m"},
            {"en-US-AvaMultilingualNeural", "Ава", "Ava", "f"}, {"en-US-AndrewMultilingualNeural", "Андрю", "Andrew", "m"},
            {"de-DE-SeraphinaMultilingualNeural", "Серафина", "Seraphina", "f"},
            {"de-DE-FlorianMultilingualNeural", "Флориан", "Florian", "m"},
            // Google Chirp 3 HD (owner, 1.1.592): the most natural Bulgarian; the owner's picks from the narrator app
            {"bg-BG-Chirp3-HD-Charon", "Харон HD", "Charon HD", "m"}, {"bg-BG-Chirp3-HD-Kore", "Кора HD", "Kore HD", "f"},
            {"bg-BG-Chirp3-HD-Orus", "Орус HD", "Orus HD", "m"}, {"bg-BG-Chirp3-HD-Aoede", "Аойда HD", "Aoede HD", "f"},
            {"bg-BG-Chirp3-HD-Enceladus", "Енцелад HD", "Enceladus HD", "m"},
            {"bg-BG-Chirp3-HD-Iapetus", "Япет HD", "Iapetus HD", "m"}};
    public static final String[] RATES = {"slow", "normal", "fast"};

    public static String voice(Context c) {
        return prefs(c).getString("pick", DEFAULT_VOICE);
    }

    public static String rate(Context c) {
        return prefs(c).getString("rate", "normal");
    }

    public static void choose(Context c, String voice, String rate) {
        SharedPreferences.Editor e = prefs(c).edit();
        if (voice != null) {
            e.putString("pick", voice);
        }
        if (rate != null) {
            e.putString("rate", rate);
        }
        e.apply();
    }

    /** The month's characters as the server last said (−1 = not known yet), and its stop line. */
    public static int used(Context c) {
        return prefs(c).getString("month", "").equals(month()) ? prefs(c).getInt("used", -1) : -1;
    }

    public static int limit(Context c) {
        return prefs(c).getInt("limit", 475000);
    }

    static void noteUsage(Context c, int used, int limit) {
        if (used >= 0 && limit > 0) {
            prefs(c).edit().putString("month", month()).putInt("used", used).putInt("limit", limit).apply();
        }
    }

    static String month() {
        java.text.SimpleDateFormat f = new java.text.SimpleDateFormat("yyyy-MM", java.util.Locale.ROOT);
        f.setTimeZone(java.util.TimeZone.getTimeZone("UTC"));
        return f.format(new java.util.Date());
    }

    /** The cloud voice can be asked now (a server and a licence; a cloud voice picked; the month not used up). */
    public static boolean usable(Context c) {
        if (c != null && app == null) {
            app = c.getApplicationContext();
        }
        return !off && app != null && XemsLicenseClient.serverConfigured() && System.currentTimeMillis() >= quotaUntil
                && !DEVICE.equals(voice(app));
    }

    /** The settings' "how it sounds": one phrase now, in the voice and tempo just picked. */
    public static void preview(Context c, String text, Fallback fb) {
        app = c.getApplicationContext();
        if (DEVICE.equals(voice(app))) {
            stop();
            fb.sayLocal(text, "xems-preview", true);
            return;
        }
        quotaUntil = 0;
        speak(c, text, "xems-preview", true, fb);
    }

    /** Off: the tablet's own engine only (the setting; tests). */
    public static void setOff(boolean v) {
        off = v;
    }

    public static synchronized void speak(Context c, String text, String id, boolean flush, Fallback fb) {
        if (c == null || text == null || text.trim().length() == 0) {
            return;
        }
        app = c.getApplicationContext();
        fallback = fb;
        if (flush) {
            stopNow();
        }
        QUEUE.add(new Item(text.trim(), id, gen));
        CloudVoice.class.notifyAll();
        if (worker == null || !worker.isAlive()) {
            worker = new Thread(new Worker(), "xems-voice");
            worker.start();
        }
    }

    /** Something is said or waits to be said: nothing may listen meanwhile (it would hear the coach, 1.1.561). */
    public static synchronized boolean busy() {
        return track != null || !QUEUE.isEmpty() || playing;
    }

    private static volatile boolean playing;

    /** Silence now: what plays stops, what waits is dropped. */
    public static synchronized void stop() {
        stopNow();
    }

    private static void stopNow() {
        gen++;
        QUEUE.clear();
        AudioTrack t = track;
        if (t != null) {
            try {
                t.pause();
                t.flush();
            } catch (Throwable ignored) {
            }
        }
    }

    static final class Worker implements Runnable {
        @Override
        public void run() {
            while (true) {
                Item it;
                synchronized (CloudVoice.class) {
                    while (QUEUE.isEmpty()) {
                        try {
                            CloudVoice.class.wait(30000);
                        } catch (InterruptedException e) {
                            return;
                        }
                        if (QUEUE.isEmpty()) {
                            worker = null;
                            return;                        // idle: the thread goes, the next phrase starts one
                        }
                    }
                    it = QUEUE.removeFirst();
                }
                boolean ok = false;
                playing = true;
                try {
                    ok = play(it);
                } catch (Throwable t) {
                    WearableBleDiagLog.log("voice", "play: " + t);
                } finally {
                    playing = false;
                }
                if (it.gen != gen) {
                    continue;                              // stopped meanwhile: no "done", no fallback
                }
                if (!ok) {
                    MAIN.post(new Local(it.text, it.id));
                } else {
                    MAIN.post(new Done(it.id));
                }
            }
        }
    }

    /** One phrase: from the tablet's files, else streamed from the server (and kept). False = say it locally. */
    static boolean play(Item it) throws Exception {
        String voice = voice(app);
        String rate = rate(app);
        File f = file(voice + "|" + rate, it.text);
        if (f.length() > 0) {
            InputStream in = new FileInputStream(f);
            try {
                f.setLastModified(System.currentTimeMillis());   // recently used: kept longest
                return stream(in, it, null) > 0;
            } finally {
                in.close();
            }
        }
        if (!usable(app)) {
            return false;
        }
        long t0 = System.currentTimeMillis();
        HttpURLConnection con = XemsLicenseClient.openTts(app, it.text, voice, rate, FIRST_MS);
        if (con == null) {
            return false;
        }
        try {
            int code = con.getResponseCode();
            if (code == 429) {
                quotaUntil = System.currentTimeMillis() + QUOTA_PAUSE_MS;
                WearableBleDiagLog.log("voice", "the month's free characters are used: the tablet's voice for now");
                return false;
            }
            if (code != 200) {
                WearableBleDiagLog.log("voice", "server " + code);
                return false;
            }
            try {
                String u = con.getHeaderField("X-Tts-Used");
                String l = con.getHeaderField("X-Tts-Limit");
                if (u != null && l != null) {
                    noteUsage(app, Integer.parseInt(u.trim()), Integer.parseInt(l.trim()));
                }
            } catch (RuntimeException ignored) {
            }
            File part = new File(f.getPath() + ".part");
            FileOutputStream keep = new FileOutputStream(part);
            long n;
            try {
                n = stream(con.getInputStream(), it, keep);
            } finally {
                keep.close();
            }
            if (n > 0 && it.gen == gen) {
                part.renameTo(f);
                prune();
            } else {
                part.delete();
            }
            WearableBleDiagLog.log("voice", "cloud " + (System.currentTimeMillis() - t0) + " ms · " + n / 2 + " samples · "
                    + it.text.length() + " chars");
            return n > 0;
        } finally {
            con.disconnect();
        }
    }

    /** PCM to the speaker as it comes; waits until the last sample is heard. Returns the bytes played. */
    static long stream(InputStream in, Item it, FileOutputStream keep) throws Exception {
        int min = AudioTrack.getMinBufferSize(RATE, AudioFormat.CHANNEL_OUT_MONO, AudioFormat.ENCODING_PCM_16BIT);
        AudioTrack t = new AudioTrack(AudioManager.STREAM_MUSIC, RATE, AudioFormat.CHANNEL_OUT_MONO,
                AudioFormat.ENCODING_PCM_16BIT, Math.max(min, RATE), AudioTrack.MODE_STREAM);
        track = t;
        long total = 0;
        byte odd = 0;
        boolean hasOdd = false;
        try {
            byte[] buf = new byte[4800];
            int n;
            boolean started = false;
            while (it.gen == gen && (n = in.read(buf, hasOdd ? 1 : 0, buf.length - (hasOdd ? 1 : 0))) > 0) {
                if (hasOdd) {
                    buf[0] = odd;
                    n++;
                    hasOdd = false;
                }
                if ((n & 1) == 1) {                        // a sample split between two reads
                    odd = buf[n - 1];
                    hasOdd = true;
                    n--;
                }
                if (keep != null) {
                    keep.write(buf, 0, n);
                }
                t.write(buf, 0, n);
                total += n;
                if (!started) {
                    t.play();
                    started = true;
                }
            }
            // the AudioTrack still holds the end: wait until it is heard (or stopped)
            long frames = total / 2;
            long until = System.currentTimeMillis() + frames * 1000 / RATE + 1500;
            while (it.gen == gen && System.currentTimeMillis() < until) {
                long head = t.getPlaybackHeadPosition() & 0xffffffffL;
                if (head >= frames) {
                    break;
                }
                Thread.sleep(40);
            }
            return total;
        } finally {
            track = null;
            try {
                t.stop();
            } catch (Throwable ignored) {
            }
            t.release();
        }
    }

    static File file(String voice, String text) {
        File dir = new File(app.getFilesDir(), "voice");
        dir.mkdirs();
        return new File(dir, hash((voice.length() > 0 ? voice : "default") + "|" + text) + ".pcm");
    }

    static String hash(String s) {
        try {
            byte[] d = java.security.MessageDigest.getInstance("SHA-1").digest(s.getBytes("UTF-8"));
            StringBuilder b = new StringBuilder();
            for (int i = 0; i < 12; i++) {
                b.append(String.format("%02x", d[i] & 0xff));
            }
            return b.toString();
        } catch (Exception e) {
            return Integer.toHexString(s.hashCode());
        }
    }

    /** The oldest phrases go when the kept speech is over CACHE_BYTES. */
    static void prune() {
        File[] fs = new File(app.getFilesDir(), "voice").listFiles();
        if (fs == null) {
            return;
        }
        long sum = 0;
        for (File f : fs) {
            sum += f.length();
        }
        if (sum <= CACHE_BYTES) {
            return;
        }
        java.util.Arrays.sort(fs, new ByAge());
        for (File f : fs) {
            if (sum <= CACHE_BYTES * 8 / 10) {
                break;
            }
            sum -= f.length();
            f.delete();
        }
    }

    static final class ByAge implements java.util.Comparator<File> {
        @Override
        public int compare(File a, File b) {
            return a.lastModified() < b.lastModified() ? -1 : a.lastModified() > b.lastModified() ? 1 : 0;
        }
    }

    static final class Local implements Runnable {
        final String text;
        final String id;

        Local(String text, String id) {
            this.text = text;
            this.id = id;
        }

        @Override
        public void run() {
            Fallback fb = fallback;
            if (fb != null) {
                fb.sayLocal(text, id, false);
            }
        }
    }

    static final class Done implements Runnable {
        final String id;

        Done(String id) {
            this.id = id;
        }

        @Override
        public void run() {
            Fallback fb = fallback;
            if (fb != null) {
                fb.done(id);
            }
        }
    }

    /** For the setting: phrases kept on the tablet (count). */
    public static int kept(Context c) {
        File[] fs = new File(c.getFilesDir(), "voice").listFiles();
        return fs == null ? 0 : fs.length;
    }

    static SharedPreferences prefs(Context c) {
        return c.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }
}
