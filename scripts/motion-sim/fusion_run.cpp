// Runs the sensor firmware's own fusion (motion/xems_motion/fusion.h) over a raw IMU file, writes what the sensor
// would send: every 4th sample (52 Hz), quantised exactly like the BLE frame. Used by scripts/motion-sim/run.sh.
// in : gx gy gz (rad/s) ax ay az (g)            per line, 208 Hz
// out: qw qx qy qz gx gy gz (°/s) ax ay az (g) still
#include <cstdio>
#include <cmath>
#include "../../motion/xems_motion/fusion.h"
int main() {
  MotionFusion f; double g[3], a[3]; int n = 0;
  while (scanf("%lf %lf %lf %lf %lf %lf", &g[0], &g[1], &g[2], &a[0], &a[1], &a[2]) == 6) {
    f.update(g[0], g[1], g[2], a[0], a[1], a[2], 1.f / 208.f);
    if (++n % 4) continue;
    float s = f.q[0] < 0 ? -1 : 1;
    int qx = lrintf(s * f.q[1] * 32767), qy = lrintf(s * f.q[2] * 32767), qz = lrintf(s * f.q[3] * 32767);
    double x = qx / 32767.0, y = qy / 32767.0, z = qz / 32767.0, w = sqrt(fmax(0, 1 - x * x - y * y - z * z));
    printf("%.6f %.6f %.6f %.6f", w, x, y, z);
    for (int i = 0; i < 3; i++) printf(" %.4f", lrintf((g[i] - f.bias[i]) * 57.29578 * 16) / 16.0);
    for (int i = 0; i < 3; i++) printf(" %.3f", lrint(a[i] * 1000) / 1000.0);
    printf(" %d\n", f.still ? 1 : 0);
  }
}
