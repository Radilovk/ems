import com.isaigu.gymapp.train.utils.MusicAutoTune;
import com.isaigu.gymapp.train.utils.MusicAutoTune.Curve;
import com.isaigu.gymapp.train.utils.MusicAutoTune.Snapshot;

import java.util.Arrays;

/** JVM checks for music → impulse auto-tune. No Android. */
public final class MusicAutoTuneSim {
    public static void main(String[] args) {
        beatsFeelLikeHits();
        padsFeelLikeAWave();
        bassSitsLowerThanTreble();
        stillTrackDoesNotSwingHz();
        bassyTrackSitsBelowABrightOne();
        sectionsDiverge();
        quietVerseStaysAudible();
        silenceIsSafe();
        rangesHold(curveOf(beats(8 * 50), 10.0, -8.0).at(0));
        System.out.println("MusicAutoTune: all checks passed");
    }

    private static void beatsFeelLikeHits() {
        Snapshot s = curveOf(beats(8 * 50), 10.0, -6.0).at(0);
        check(s.rhythmMix >= 70, "beats rhythm " + s.rhythmMix);
        check(s.floor <= 20, "beats floor " + s.floor);
        check(s.smoothness <= 25, "beats smoothness " + s.smoothness);
        check(s.hzBass > 0 && s.hzBass < s.hzTreble, "beats hz " + s.hzBass + ".." + s.hzTreble);
    }

    private static void padsFeelLikeAWave() {
        Snapshot s = curveOf(pad(8 * 50), 1.0, 1.0).at(0);
        check(s.rhythmMix <= 35, "pad rhythm " + s.rhythmMix);
        check(s.floor >= 28, "pad floor " + s.floor);
        check(s.smoothness >= 45, "pad smoothness " + s.smoothness);
        check(s.hzBass == s.hzTreble, "pad hz should stay together " + s.hzBass + ".." + s.hzTreble);
    }

    private static void bassSitsLowerThanTreble() {
        Snapshot s = curveOf(pad(100), 11.0, -11.0).at(0);
        check(s.hzBass < s.hzTreble, "bass end below treble end");
        check(s.hzBass <= 20, "bassy track bass Hz " + s.hzBass);
    }

    private static void stillTrackDoesNotSwingHz() {
        Snapshot s = curveOf(pad(100), 1.0, 2.0).at(0);
        check(Math.abs(s.hzTreble - s.hzBass) <= 4, "still span " + s.hzBass + ".." + s.hzTreble);
    }

    private static void bassyTrackSitsBelowABrightOne() {
        int bassy = curveOf(pad(100), 1.0, -12.0).at(0).hzBass;
        int bright = curveOf(pad(100), 1.0, 8.0).at(0).hzBass;
        check(bassy < bright, "bassy " + bassy + " vs bright " + bright);
    }

    private static void sectionsDiverge() {
        int buckets = 16 * 50;
        float[] loud = new float[buckets];
        float[] rhythm = new float[buckets];
        float[] tone = new float[buckets];
        Arrays.fill(tone, 0.4f);
        fillPad(loud, rhythm, 0, 8 * 50);
        fillBeats(loud, rhythm, 8 * 50, buckets);
        Curve curve = MusicAutoTune.analyze(loud, rhythm, tone, buckets, 9.0, -2.0);
        Snapshot verse = curve.at(0);
        Snapshot drop = curve.at(12_000);
        check(drop.rhythmMix - verse.rhythmMix >= 30,
                "drop rhythm " + drop.rhythmMix + " vs verse " + verse.rhythmMix);
        check(drop.floor <= verse.floor, "drop floor " + drop.floor + " verse " + verse.floor);
        check(verse.hzBass == drop.hzBass && verse.hzTreble == drop.hzTreble, "Hz ends are per track");
        check(verse.hzBass <= verse.hzTreble, "section hz order");
    }

    private static void quietVerseStaysAudible() {
        int buckets = 16 * 50;
        float[] loud = new float[buckets];
        float[] rhythm = new float[buckets];
        float[] tone = new float[buckets];
        Arrays.fill(loud, 1000f);
        Arrays.fill(rhythm, 0.5f);
        Arrays.fill(tone, 0.5f);
        Arrays.fill(loud, 8 * 50, buckets, 10f);
        Arrays.fill(rhythm, 8 * 50, buckets, 0.05f);
        Curve curve = MusicAutoTune.analyze(loud, rhythm, tone, buckets, 4.0, 0.0);
        check(curve.at(1_000).sensitivity >= 70, "loud sensitivity " + curve.at(1_000).sensitivity);
        check(curve.at(12_000).sensitivity <= 40, "quiet sensitivity " + curve.at(12_000).sensitivity);
    }

    private static void silenceIsSafe() {
        Curve curve = MusicAutoTune.analyze(null, null, null, 0, 0.0, 0.0);
        Snapshot s = curve.at(0);
        rangesHold(s);
        check(s.hzBass > 0, "silence still has a frequency");
    }

    private static void rangesHold(Snapshot s) {
        check(s.rhythmMix >= 15 && s.rhythmMix <= 90, "rhythm range " + s.rhythmMix);
        check(s.floor >= 8 && s.floor <= 40, "floor range " + s.floor);
        check(s.smoothness >= 0 && s.smoothness <= 70, "smooth range " + s.smoothness);
        check(s.sensitivity >= 0 && s.sensitivity <= 100, "sensitivity range " + s.sensitivity);
        check(s.hzBass >= 8 && s.hzBass <= 96, "hz bass " + s.hzBass);
        check(s.hzTreble >= 8 && s.hzTreble <= 96, "hz treble " + s.hzTreble);
        check(s.hzBass <= s.hzTreble, "hz order");
    }

    private static Curve curveOf(Track track, double span, double median) {
        return MusicAutoTune.analyze(track.loud, track.rhythm, track.tone, track.loud.length, span, median);
    }

    private static Track beats(int n) {
        Track t = new Track(n);
        Arrays.fill(t.tone, 0.15f);
        fillBeats(t.loud, t.rhythm, 0, n);
        return t;
    }

    private static Track pad(int n) {
        Track t = new Track(n);
        Arrays.fill(t.tone, 0.55f);
        fillPad(t.loud, t.rhythm, 0, n);
        return t;
    }

    /** Kick every 500 ms, quiet between hits. */
    private static void fillBeats(float[] loud, float[] rhythm, int from, int to) {
        for (int i = from; i < to; i++) {
            int phase = (i - from) % 25;
            if (phase == 0) {
                loud[i] = 1000f;
                rhythm[i] = 1f;
            } else if (phase < 6) {
                loud[i] = 700f;
                rhythm[i] = (float) Math.pow(0.72, phase);
            } else {
                loud[i] = 40f;
                rhythm[i] = 0f;
            }
        }
    }

    private static void fillPad(float[] loud, float[] rhythm, int from, int to) {
        Arrays.fill(loud, from, to, 500f);
        Arrays.fill(rhythm, from, to, 0.02f);
    }

    private static void check(boolean ok, String message) {
        if (!ok) {
            throw new AssertionError(message);
        }
    }

    private static final class Track {
        final float[] loud;
        final float[] rhythm;
        final float[] tone;

        Track(int n) {
            loud = new float[n];
            rhythm = new float[n];
            tone = new float[n];
        }
    }
}
