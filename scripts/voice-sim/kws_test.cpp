// Offline test of the XEMS voice recogniser (voice/xems_voice/kws.h) — the chip's own code, fed from a plan:
//   noise <rms>              background noise from here on (white, 16-bit units)
//   sil <ms>                 silence (noise only)
//   rec <action> <file.raw>  record an example: 16 kHz s16le mono
//   play <file.raw> [gain]   audio, e.g. a command or running speech
//   mark <text>              echoed, so run.py can tell which part of the plan an event came from
// Every line the engine emits goes to stdout as "<ms> <line>".
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <vector>
#include "../../voice/xems_voice/kws.h"

static kws::Engine eng;
static float noiseRms = 0;
static unsigned rng = 12345;

static float gauss() {
  float s = 0;
  for (int i = 0; i < 12; i++) {
    rng = rng * 1103515245u + 12345u;
    s += (rng >> 8 & 0xffff) / 65536.0f;
  }
  return s - 6;
}
static void feed(float v) {
  v += noiseRms * gauss();
  if (v > 32767) v = 32767;
  if (v < -32768) v = -32768;
  eng.push((int16_t)v);
}
static void sil(int ms) {
  for (int i = 0; i < ms * 16; i++) feed(0);
}
static void play(const char *path, float gain) {
  FILE *f = fopen(path, "rb");
  if (!f) { fprintf(stderr, "no %s\n", path); exit(2); }
  int16_t b[1024];
  size_t n;
  while ((n = fread(b, 2, 1024, f)) > 0)
    for (size_t i = 0; i < n; i++) feed(b[i] * gain);
  fclose(f);
}
static void out(const char *line) { printf("%u %s\n", (unsigned)eng.nowMs(), line); }

int main(int argc, char **argv) {
  if (argc < 2) { fprintf(stderr, "usage: kws_test plan.txt\n"); return 2; }
  eng.init();
  eng.emit = out;
  FILE *p = fopen(argv[1], "r");
  if (!p) return 2;
  char line[512];
  while (fgets(line, sizeof line, p)) {
    char a[64] = "", b[400] = "";
    float g = 1;
    int k = sscanf(line, "%63s %399s %f", a, b, &g);
    if (k < 1) continue;
    if (!strcmp(a, "noise")) noiseRms = atof(b);
    else if (!strcmp(a, "sil")) sil(atoi(b));
    else if (!strcmp(a, "play")) play(b, k >= 3 ? g : 1);
    else if (!strcmp(a, "mark")) printf("%u MARK %s", (unsigned)eng.nowMs(), line + 5);
    else if (!strcmp(a, "sens")) eng.sens = atof(b);
    else if (!strcmp(a, "count")) eng.countMode = atoi(b);
    else if (!strcmp(a, "rec")) {
      char f[400] = "";
      sscanf(line, "%*s %*s %399s", f);
      eng.startRecording(kws::actionOf(b));
      sil(400);
      play(f, 1);
      sil(500);
    }
  }
  static uint8_t buf[60000];
  int n = eng.save(buf, sizeof buf);
  static kws::Engine e2;
  e2.init();
  printf("0 STORE %d bytes reload=%s\n", n, n > 0 && e2.load(buf, n) && e2.storedBytes() == n ? "ok" : "FAIL");
  return 0;
}
