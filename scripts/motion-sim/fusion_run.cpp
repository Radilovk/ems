// Runs the sensor firmware's own fusion (motion/xems_motion/fusion.h) over a raw IMU file, writes what the sensor
// would send: every 4th sample (52 Hz), quantised exactly like the BLE frame. Used by scripts/motion-sim/run.sh.
// in : gx gy gz (rad/s) ax ay az (g)            per line, 208 Hz
// out: qw qx qy qz gx gy gz (°/s) ax ay az (g) still hit
#include <cstdio>
#include <cmath>
#include <cstdlib>
#include "../../motion/xems_motion/fusion.h"
// q (w,x,y,z: sensor → its gravity frame) applied to v; inv = the inverse turn
static void qrot(const float *q, const double *v, double *o, bool inv) {
  double w = q[0], x = inv ? -q[1] : q[1], y = inv ? -q[2] : q[2], z = inv ? -q[3] : q[3];
  double tx = 2 * (y * v[2] - z * v[1]), ty = 2 * (z * v[0] - x * v[2]), tz = 2 * (x * v[1] - y * v[0]);
  o[0] = v[0] + w * tx + y * tz - z * ty; o[1] = v[1] + w * ty + z * tx - x * tz; o[2] = v[2] + w * tz + x * ty - y * tx;
}
int main() {
  // FRAME_AVG=0: the old frames (every 4th raw sample). Default = firmware 8: the frame carries the MEAN over its 4
  // samples (gyro; acceleration averaged in the gravity frame, turned back to the sensor at the frame's instant)
  const char *e = getenv("FRAME_AVG"); bool avg = !e || *e != '0';
  MotionFusion f; double g[3], a[3], sg[3] = {0, 0, 0}, sa[3] = {0, 0, 0}, peak = 0; int n = 0;
  while (scanf("%lf %lf %lf %lf %lf %lf", &g[0], &g[1], &g[2], &a[0], &a[1], &a[2]) == 6) {
    f.update(g[0], g[1], g[2], a[0], a[1], a[2], 1.f / 208.f);
    double peakRaw = sqrt(a[0] * a[0] + a[1] * a[1] + a[2] * a[2]);
    if (avg) for (int i = 0; i < 3; i++) a[i] = f.af[i];        // fw 8: the 20 Hz low-passed acceleration
    double aw[3]; qrot(f.q, a, aw, false);
    for (int i = 0; i < 3; i++) { sg[i] += g[i] - f.bias[i]; sa[i] += aw[i]; }
    peak = fmax(peak, peakRaw);
    if (++n % 4) continue;
    if (avg) {
      double m[3] = {sa[0] / 4, sa[1] / 4, sa[2] / 4}; qrot(f.q, m, a, true);
      for (int i = 0; i < 3; i++) g[i] = sg[i] / 4 + f.bias[i];
    }
    for (int i = 0; i < 3; i++) sg[i] = sa[i] = 0;
    int hit = peak > 2.5; peak = 0;
    float s = f.q[0] < 0 ? -1 : 1;
    int qx = lrintf(s * f.q[1] * 32767), qy = lrintf(s * f.q[2] * 32767), qz = lrintf(s * f.q[3] * 32767);
    double x = qx / 32767.0, y = qy / 32767.0, z = qz / 32767.0, w = sqrt(fmax(0, 1 - x * x - y * y - z * z));
    printf("%.6f %.6f %.6f %.6f", w, x, y, z);
    for (int i = 0; i < 3; i++) printf(" %.4f", lrintf((g[i] - f.bias[i]) * 57.29578 * 16) / 16.0);
    for (int i = 0; i < 3; i++) printf(" %.3f", lrint(a[i] * 1000) / 1000.0);
    printf(" %d %d\n", f.still ? 1 : 0, hit);
  }
}
