// XEMS voice — isolated command words, recognised on the chip from the trainer's own recordings.
// Portable C++ (no Arduino): the XIAO firmware (xems_voice.ino) and the offline test (scripts/voice-sim) build the
// same code. Design and the reasons behind every number: docs/xems-voice.md.
//
//   16 kHz audio → 25 ms frames every 10 ms → 26 mel bands + energy
//   → word finder: a LOUD word after a pause, followed by a pause (the owner's rule: commands are said a little
//     louder, after a short pause) → the steady noise taken out of every band, a floor 30 dB under the word's
//     loudest band (a word recorded in quiet and one said over music then look alike) → 12 cepstra + energy
//     → 20 ms frames, mean-normalised, int8
//   → DTW against the recorded examples of every command → nearest command, accepted only when it is close to its
//     own examples AND clearly closer than the next command.
#pragma once
#include <math.h>
#include <stdint.h>
#include <string.h>

namespace kws {

const int SR = 16000, FRAME = 400, HOP = 160, NFFT = 512, NBIN = NFFT / 2 + 1, NMEL = 26, NCEP = 12;
const int DIM = NCEP + 1;  // 12 cepstra + energy
const int MAXF = 80;       // a word at 20 ms frames: 1.6 s
const int RING = 240;      // 10 ms frames kept: 2.4 s
const int RW = NMEL + 1;   // a ring frame: mel bands (power) + energy dB
const int NACT = 8, MAXT = 5;
const int32_t INF = 0x3fffffff;

enum { A_START, A_PAUSE, A_STOP, A_PLUS, A_MINUS, A_ONE, A_TWO, A_THREE };
static const char *const ACT[NACT] = {"start", "pause", "stop", "plus", "minus", "one", "two", "three"};
// How easily each command is accepted (× its threshold): a stop or pause too many costs nothing, a start or a
// stronger impulse too many does — those must be sure.
static const float SAFETY[NACT] = {0.9f, 1.15f, 1.3f, 0.85f, 1.0f, 1.0f, 1.0f, 1.0f};

inline int actionOf(const char *s) {
  for (int i = 0; i < NACT; i++)
    if (!strcmp(s, ACT[i])) return i;
  return -1;
}

struct Word {  // one isolated word, as matched
  uint8_t n;
  int8_t f[MAXF][DIM];
};

// ---------------------------------------------------------------- front end: samples → 10 ms feature frames
class Front {
 public:
  void init() {
    for (int i = 0; i < FRAME; i++) win[i] = 0.54f - 0.46f * cosf(2 * (float)M_PI * i / (FRAME - 1));
    for (int i = 0; i < NFFT / 2; i++) {
      cosT[i] = cosf(2 * (float)M_PI * i / NFFT);
      sinT[i] = sinf(2 * (float)M_PI * i / NFFT);
    }
    float mlo = mel(100), mhi = mel(7600), pts[NMEL + 2];
    for (int j = 0; j < NMEL + 2; j++) pts[j] = mlo + (mhi - mlo) * j / (NMEL + 1);
    for (int k = 0; k < NBIN; k++) {
      float m = mel((float)k * SR / NFFT);
      binIdx[k] = -1;
      binW[k] = 0;
      for (int j = 0; j <= NMEL; j++)
        if (m >= pts[j] && m < pts[j + 1]) {
          binIdx[k] = (int8_t)j;
          binW[k] = (m - pts[j]) / (pts[j + 1] - pts[j]);
        }
    }
    for (int i = 0; i < NCEP; i++)
      for (int j = 0; j < NMEL; j++) dct[i][j] = cosf((float)M_PI * (i + 1) * (j + 0.5f) / NMEL);
    fill = 0;
    since = 0;
    prev = 0;
  }
  // One sample in; true when a new frame is out: bands[NMEL] (power), edb.
  bool push(int16_t s, float *bands, float *edb) {
    float x = s - 0.97f * prev;
    prev = s;
    hist[fill] = x;
    raw[fill] = s;
    fill = (fill + 1) % FRAME;
    if (++since < HOP) return false;
    since = 0;
    compute(bands, edb);
    return true;
  }

 private:
  static float mel(float f) { return 1127.0f * logf(1 + f / 700.0f); }
  void compute(float *bands, float *edb) {
    // energy of the plain signal (DC out): pre-emphasis would take 10 dB off a voiced vowel against hiss
    float dc = 0, e = 0;
    for (int i = 0; i < FRAME; i++) dc += raw[i];
    dc /= FRAME;
    for (int i = 0; i < FRAME; i++) {
      int k = (fill + i) % FRAME;
      float v = (raw[k] - dc) * win[i];
      e += v * v;
      re[i] = hist[k] * win[i];
      im[i] = 0;
    }
    for (int i = FRAME; i < NFFT; i++) re[i] = im[i] = 0;
    *edb = 10 * log10f(e / FRAME + 1);
    fft();
    for (int j = 0; j < NMEL; j++) bands[j] = 0;
    for (int k = 0; k < NBIN; k++) {
      int j = binIdx[k];
      if (j < 0) continue;
      float p = re[k] * re[k] + im[k] * im[k];
      if (j < NMEL) bands[j] += binW[k] * p;
      if (j > 0) bands[j - 1] += (1 - binW[k]) * p;
    }
  }
  void fft() {  // radix-2, in place
    for (int i = 1, j = 0; i < NFFT; i++) {
      int bit = NFFT >> 1;
      for (; j & bit; bit >>= 1) j ^= bit;
      j ^= bit;
      if (i < j) {
        float t = re[i]; re[i] = re[j]; re[j] = t;
        t = im[i]; im[i] = im[j]; im[j] = t;
      }
    }
    for (int len = 2; len <= NFFT; len <<= 1) {
      int step = NFFT / len;
      for (int i = 0; i < NFFT; i += len)
        for (int k = 0; k < len / 2; k++) {
          float wr = cosT[k * step], wi = -sinT[k * step];
          int a = i + k, b = a + len / 2;
          float xr = re[b] * wr - im[b] * wi, xi = re[b] * wi + im[b] * wr;
          re[b] = re[a] - xr; im[b] = im[a] - xi;
          re[a] += xr; im[a] += xi;
        }
    }
  }
  float hist[FRAME], raw[FRAME], win[FRAME], re[NFFT], im[NFFT], cosT[NFFT / 2], sinT[NFFT / 2];
  float binW[NBIN];
  int8_t binIdx[NBIN];

 public:
  float dct[NCEP][NMEL];
  int fill, since;
  float prev;
};

// ---------------------------------------------------------------- word finder
// The noise floor is the MEDIAN of the last 1.5 s heard outside words, not their minimum (2026-10-28, the real mic:
// a room's noise wanders ± 6–8 dB — measured from its quiet dips, ordinary noise looked like endless speech, no word
// was ever closed, every example timed out with "say it louder").
// IDLE → a frame ON_DB above the noise floor for 3 frames, after a quiet run of PRE_Q frames that ended at most
// 200 ms earlier (soft consonants before the loud vowel) → IN → POST_Q quiet frames → the word, if its length and
// loudness fit. Longer than MAXLEN = running speech, never a command: wait for the next pause.
struct Finder {
  float ON_DB = 12, QUIET_DB = 6, OFF_DB = 8, LOUD_DB = 18;
  int PRE_Q = 20, POST_Q = 22, MINLEN = 16, MAXLEN = 150;
  static const int NH = 150;  // idle frames the median is taken over (1.5 s)
  float hist[NH];
  int nh = 0, hi = 0;
  bool lenient = false;       // recording an example: the word was asked for — no pause before it, softer is fine

  float ring[RING][RW];
  float noise[NMEL];  // steady noise of every band, from quiet frames
  uint32_t t = 0;
  float floorDb = 0;
  int state = 0;  // 0 idle, 1 in a word, 2 running speech (wait for quiet)
  int quietRun = 0, above = 0;
  int64_t qEnd = -1000;  // the frame after the last pause of PRE_Q quiet frames (still growing while it lasts)
  uint32_t s0 = 0, lastAct = 0;
  float peak = 0;
  // the last word found
  uint32_t w0 = 0, w1 = 0;
  float wPeak = 0, wFloor = 0;

  // true when frame t closed a word: frames [w0, w1) of the ring
  bool frame(const float *bands, float edb) {
    float *r = ring[t % RING];
    memcpy(r, bands, sizeof(float) * NMEL);
    r[NMEL] = edb;
    bool out = false;
    if (t == 0) {
      floorDb = edb;
      memcpy(noise, bands, sizeof noise);
    }
    // the noise's history: never a word, never a loud frame between words (own speech made the floor swing and
    // the thresholds jump after a few words); all of running sound, so music switched on cannot lock it out
    if (state == 2 || state == 0 && (nh < 20 || edb < floorDb + (ON_DB > spread + 8 ? ON_DB : spread + 8))) {
      hist[hi] = edb;
      hi = (hi + 1) % NH;
      if (nh < NH) nh++;
      if (nh < 20) floorDb = floorDb < edb ? floorDb : edb;
      else if (t % 10 == 0) stats();
    }
    // every threshold sits above the noise's own swing (its 90th percentile over the median), never below the base
    float qDb = QUIET_DB > spread + 3 ? QUIET_DB : spread + 3;
    float onDb = ON_DB > spread + 8 ? ON_DB : spread + 8;
    float offDb = OFF_DB > spread + 4 ? OFF_DB : spread + 4;
    float loudDb = LOUD_DB > spread + 12 ? LOUD_DB : spread + 12;
    bool quiet = edb < floorDb + qDb;
    if (state != 1 && quiet)
      for (int j = 0; j < NMEL; j++) noise[j] += 0.05f * (bands[j] - noise[j]);
    if (state == 0) {
      above = edb > floorDb + (lenient ? onDb - 3 : onDb) ? above + 1 : 0;
      // the pause may lie up to 300 ms back: "старт" opens with a hiss and a closure before its loud vowel, and those
      // short dips must not count as the pause the command came after
      if (above >= 3 && (int64_t)t - qEnd <= 30) {
        state = 1;
        int64_t b = qEnd - 2 < (int64_t)t - 5 ? qEnd - 2 : (int64_t)t - 5;
        s0 = (uint32_t)(b > 0 ? b : 0);
        peak = edb;
        lastAct = t;
      }
    } else if (state == 1) {
      if (edb > peak) peak = edb;
      float off = floorDb + offDb;
      if (peak - 35 > off) off = peak - 35;
      if (edb > off) lastAct = t;
      if (t - s0 > (uint32_t)MAXLEN + POST_Q) {
        state = 2;
        skipLen = (int)(t - s0) * 10;
        skipDb = (int)(peak - floorDb);
        skipped = true;
      } else if (t - lastAct >= (uint32_t)POST_Q) {
        state = 0;
        above = 0;
        uint32_t e = lastAct + 3;
        int len = (int)(e - s0);
        if (len >= MINLEN && len <= MAXLEN && peak > floorDb + (lenient ? loudDb - 6 : loudDb)) {
          w0 = s0; w1 = e; wPeak = peak; wFloor = floorDb;
          out = true;
        } else {
          skipLen = len * 10;
          skipDb = (int)(peak - floorDb);
          skipped = true;
        }
      }
    } else if (state == 2 && quiet && quietRun >= POST_Q) {
      state = 0;
      above = 0;
    }
    if (quiet) {
      quietRun++;
      if (quietRun >= (lenient ? 5 : PRE_Q)) qEnd = (int64_t)t + 1;
    } else {
      quietRun = 0;
    }
    t++;
    return out;
  }

  // a sound that was not taken as a word: why (the tablet says it — "too short", "too long", "too soft")
  bool skipped = false;
  int skipLen = 0, skipDb = 0;

  float spread = 0;  // how far the noise swings above its median (90th percentile − median), dB

  void stats() {
    static float c[NH];
    memcpy(c, hist, sizeof(float) * nh);
    for (int i = 1; i < nh; i++) {  // insertion sort, 150 values every 100 ms
      float v = c[i];
      int j = i - 1;
      while (j >= 0 && c[j] > v) { c[j + 1] = c[j]; j--; }
      c[j + 1] = v;
    }
    floorDb = c[nh / 2];
    spread = c[nh * 9 / 10] - floorDb;
    if (spread > 10) spread = 10;  // a floor that wild is not noise any more: keep the thresholds reachable
  }

  // The word as matched: 20 ms frames (pairs averaged); per band the noise taken out (× 1.5) and a floor 30 dB
  // under the word's loudest band; log, 12 cepstra minus their mean, energy below the peak; int8.
  void word(Word &w, const Front &fr) const {
    int len = (int)(w1 - w0), n = (len + 1) / 2;
    if (n > MAXF) n = MAXF;
    static float f[MAXF][DIM];  // static: the loop task's stack is small
    static float b[MAXF][NMEL];
    float top = 0, mean[DIM] = {0};
    for (int i = 0; i < n; i++) {
      const float *x = ring[(w0 + 2 * i) % RING];
      const float *y = 2 * i + 1 < len ? ring[(w0 + 2 * i + 1) % RING] : x;
      for (int j = 0; j < NMEL; j++) {
        float p = (x[j] + y[j]) / 2 - 1.5f * noise[j];
        b[i][j] = p > 0 ? p : 0;
        if (b[i][j] > top) top = b[i][j];
      }
      f[i][NCEP] = (x[NMEL] + y[NMEL]) / 2;
    }
    float flo = top * 1e-3f + 1;
    for (int i = 0; i < n; i++) {
      for (int j = 0; j < NMEL; j++) b[i][j] = logf(b[i][j] + flo);
      for (int c = 0; c < NCEP; c++) {
        float v = 0;
        for (int j = 0; j < NMEL; j++) v += fr.dct[c][j] * b[i][j];
        f[i][c] = v;
        mean[c] += v / n;
      }
    }
    for (int i = 0; i < n; i++) {
      for (int d = 0; d < NCEP; d++) w.f[i][d] = q((f[i][d] - mean[d]) * 3);
      w.f[i][NCEP] = q((f[i][NCEP] - wPeak) * 2);
    }
    w.n = (uint8_t)n;
  }
  static int8_t q(float v) { return (int8_t)(v > 127 ? 127 : v < -127 ? -127 : lrintf(v)); }
};

// ---------------------------------------------------------------- DTW
// Symmetric steps (1, 1, 2), cost / (n + m) × 16, a band around the diagonal; stops early once every cell of a row is
// above `limit` (the answer could not matter any more).
inline int32_t dtw(const Word &a, const Word &b, int32_t limit = INF) {
  int n = a.n, m = b.n;
  if (n < 2 || m < 2 || n > 2 * m || m > 2 * n) return INF;
  int band = (n > m ? n : m) / 4 + 4;
  static int32_t rowA[MAXF + 1], rowB[MAXF + 1];
  int32_t *prev = rowA, *cur = rowB;
  for (int j = 0; j <= m; j++) prev[j] = INF;
  prev[0] = 0;
  int64_t lim = limit >= INF ? INF : (int64_t)limit * (n + m) / 16;
  for (int i = 1; i <= n; i++) {
    int c = (i - 1) * (m - 1) / (n - 1) + 1, lo = c - band, hi = c + band;
    if (lo < 1) lo = 1;
    if (hi > m) hi = m;
    for (int j = 0; j <= m; j++) cur[j] = INF;
    int32_t rowMin = INF;
    for (int j = lo; j <= hi; j++) {
      const int8_t *x = a.f[i - 1], *y = b.f[j - 1];
      int32_t d = 0;
      for (int k = 0; k < DIM; k++) d += x[k] > y[k] ? x[k] - y[k] : y[k] - x[k];
      int32_t best = prev[j - 1] < INF ? prev[j - 1] + 2 * d : INF;
      if (prev[j] < INF && prev[j] + d < best) best = prev[j] + d;
      if (cur[j - 1] < INF && cur[j - 1] + d < best) best = cur[j - 1] + d;
      cur[j] = best;
      if (best < rowMin) rowMin = best;
    }
    if (rowMin >= INF || rowMin > lim) return INF;
    int32_t *t = prev; prev = cur; cur = t;
  }
  return prev[m] >= INF ? INF : (int32_t)((int64_t)prev[m] * 16 / (n + m));
}

// ---------------------------------------------------------------- the recogniser
// Events go to `emit` as text lines — the same lines the firmware sends over USB and BLE (docs/xems-voice.md).
class Engine {
 public:
  typedef void (*Emit)(const char *line);
  Emit emit = 0;
  Front front;
  Finder finder;
  Word tpl[NACT][MAXT];
  uint8_t count[NACT];
  int32_t thr[NACT];
  float sens = 1.0f;      // global: > 1 accepts more easily
  int countMode = 1;      // start needs: 0 nothing, 1 "три" before it, 3 "едно, две, три" in order
  int recording = -1;     // the next word is an example of this command
  bool muted = false;
  uint32_t lastMs = 0;    // time of the last finished word (ms of audio)
  int DEFAULT_THR = 1400;  // threshold of a command with one example
  int MARGIN = 70;        // best ≤ 70 % of the next command

  void init() {
    front.init();
    memset(count, 0, sizeof count);
    for (int i = 0; i < NACT; i++) thr[i] = DEFAULT_THR;
  }
  // one 16 kHz sample
  void push(int16_t s) {
    float bands[NMEL], edb;
    if (!front.push(s, bands, &edb)) return;
    finder.lenient = recording >= 0;
    if (finder.frame(bands, edb)) onWord();
    if (finder.skipped) {
      finder.skipped = false;
      int l = finder.skipLen, db = finder.skipDb;
      say("SKIP %s len=%d db=%d", l > finder.MAXLEN * 10 ? "long" : l < finder.MINLEN * 10 ? "short" : "soft", l, db);
    }
  }
  uint32_t nowMs() const { return finder.t * 10; }

  void startRecording(int a) {
    recording = a;
    say("REC %s listen", ACT[a]);
  }
  void clearAction(int a) {
    count[a] = 0;
    retune(a);
  }
  void retune(int a) {
    int n = count[a];
    float base = DEFAULT_THR;
    if (n >= 2) {
      int64_t sum = 0;
      int k = 0;
      for (int i = 0; i < n; i++)
        for (int j = i + 1; j < n; j++) {
          int32_t d = dtw(tpl[a][i], tpl[a][j]);
          if (d < INF) { sum += d; k++; }
        }
      if (k) base = 2.5f * sum / k;
    }
    thr[a] = (int32_t)(base * SAFETY[a]);
  }
  int32_t threshold(int a) const { return (int32_t)(thr[a] * sens); }

  // ---- storage: [ver][sens×100][countMode] then per command [n] + per example [frames][frames×DIM]
  int save(uint8_t *buf, int cap) const {
    int p = 0;
    if (cap < 3) return -1;
    buf[p++] = 1;
    buf[p++] = (uint8_t)(sens * 100 > 255 ? 255 : sens * 100);
    buf[p++] = (uint8_t)countMode;
    for (int a = 0; a < NACT; a++) {
      if (p + 1 > cap) return -1;
      buf[p++] = count[a];
      for (int i = 0; i < count[a]; i++) {
        int sz = tpl[a][i].n * DIM;
        if (p + 1 + sz > cap) return -1;
        buf[p++] = tpl[a][i].n;
        memcpy(buf + p, tpl[a][i].f, sz);
        p += sz;
      }
    }
    return p;
  }
  bool load(const uint8_t *buf, int len) {
    int p = 0;
    if (len < 3 || buf[0] != 1) return false;
    sens = buf[1] / 100.0f;
    countMode = buf[2];
    p = 3;
    for (int a = 0; a < NACT; a++) {
      if (p >= len) return false;
      int n = buf[p++];
      if (n > MAXT) return false;
      for (int i = 0; i < n; i++) {
        if (p >= len) return false;
        int f = buf[p++], sz = f * DIM;
        if (f > MAXF || p + sz > len) return false;
        tpl[a][i].n = (uint8_t)f;
        memcpy(tpl[a][i].f, buf + p, sz);
        p += sz;
      }
      count[a] = (uint8_t)n;
    }
    for (int a = 0; a < NACT; a++) retune(a);
    return true;
  }
  int storedBytes() const {
    int p = 3 + NACT;
    for (int a = 0; a < NACT; a++)
      for (int i = 0; i < count[a]; i++) p += 1 + tpl[a][i].n * DIM;
    return p;
  }

  void (*onChange)() = 0;  // examples changed: the firmware saves them

 private:
  Word cur;
  uint32_t lastStart = 0, lastStep = 0, cntMs[3] = {0, 0, 0};

  void say(const char *fmt, ...) __attribute__((format(printf, 2, 3)));
  void onWord() {
    finder.word(cur, front);
    int ms = (int)(finder.w1 - finder.w0) * 10;
    lastMs = nowMs();
    if (recording >= 0) {
      int a = recording;
      recording = -1;
      if (count[a] == MAXT) {  // full: the oldest goes
        for (int i = 1; i < MAXT; i++) tpl[a][i - 1] = tpl[a][i];
        count[a]--;
      }
      tpl[a][count[a]++] = cur;
      retune(a);
      say("REC %s ok %d %dms thr=%ld", ACT[a], count[a], ms, (long)threshold(a));
      if (onChange) onChange();
      return;
    }
    int32_t best = INF, second = INF;
    int bestA = -1;
    for (int a = 0; a < NACT; a++) {
      int32_t cb = INF;
      for (int i = 0; i < count[a]; i++) {
        int32_t lim = cb < second ? cb : second;
        int32_t d = dtw(cur, tpl[a][i], lim);
        if (d < cb) cb = d;
      }
      if (cb < best) { second = best; best = cb; bestA = a; }
      else if (cb < second) second = cb;
    }
    bool ok = bestA >= 0 && best <= threshold(bestA) && (second >= INF || best * 100 <= (int64_t)MARGIN * second);
    say("HEARD %s d=%ld d2=%ld thr=%ld len=%d %s", bestA >= 0 ? ACT[bestA] : "-", (long)best,
        (long)(second >= INF ? -1 : second), (long)(bestA >= 0 ? threshold(bestA) : 0), ms, ok ? "ok" : "no");
    if (!ok || muted) return;
    act(bestA, best);
  }
  void act(int a, int32_t d) {
    uint32_t now = nowMs();
    int score = (int)(100 - 100 * d / (threshold(a) * 2 > 0 ? threshold(a) * 2 : 1));
    if (a >= A_ONE) {
      int k = a - A_ONE;
      cntMs[k] = now;
      say("CNT %d", k + 1);
      return;
    }
    if (a == A_START) {
      bool three = cntMs[2] && now - cntMs[2] < 4000;
      bool all = three && cntMs[1] && cntMs[0] && cntMs[0] < cntMs[1] && cntMs[1] < cntMs[2] && now - cntMs[0] < 8000;
      if ((countMode == 1 && !three) || (countMode == 3 && !all)) {
        say("NOCOUNT start");
        return;
      }
      cntMs[0] = cntMs[1] = cntMs[2] = 0;
      if (now - lastStart < 1500) return;
      lastStart = now;
    }
    if (a == A_PLUS || a == A_MINUS) {  // one step per word, never a burst
      if (now - lastStep < 1000) return;
      lastStep = now;
    }
    say("CMD %s %d", ACT[a], score);
  }
};

}  // namespace kws

#include <stdarg.h>
#include <stdio.h>
inline void kws::Engine::say(const char *fmt, ...) {
  char b[96];
  va_list ap;
  va_start(ap, fmt);
  vsnprintf(b, sizeof b, fmt, ap);
  va_end(ap);
  if (emit) emit(b);
}
