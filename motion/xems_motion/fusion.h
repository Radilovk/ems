// XEMS Motion — orientation of one sensor from its 6-axis IMU (LSM6DS3TR-C: gyro + accelerometer, no magnetometer).
// Plain C++, no Arduino: the same file runs on the XIAO and in the offline test (scripts/motion-sim/fusion_test.cpp).
//
// Mahony complementary filter + the two things that keep a 6-axis sensor honest over a 30-minute session:
//  1. gyro bias learned whenever the sensor is still (first 0.5 s from scratch, then slowly tracked — temperature),
//  2. "still ⇒ no rotation": while still, the gyro is not integrated at all, so heading (yaw) cannot creep.
// Gravity corrects pitch/roll; its weight drops to zero when the accelerometer feels more than gravity (a jump,
// a landing, an EMS contraction jolt). Heading is relative (no magnet — useless inside an EMS suit anyway); the
// tablet anchors it with the calibration movement (docs/xems-motion.md "Calibration").
// World frame: z up. q = sensor → world (w, x, y, z).
#pragma once
#include <math.h>
#ifndef KP_MOVE
#define KP_MOVE 0.5f   // gravity pull while moving (low: the gyro is exact for seconds, the accelerometer then feels more than gravity)
#endif

struct MotionFusion {
  float q[4] = {1, 0, 0, 0};
  float bias[3] = {0, 0, 0};      // rad/s
  float gLp[3] = {0, 0, 0}, aLp[3] = {0, 0, 1};
  float bAcc[3] = {0, 0, 0};
  int bN = 0, stillN = 0, n = 0;
  bool biasReady = false, still = false;
  float rate = 208.f;             // samples per second

  void reset() { q[0] = 1; q[1] = q[2] = q[3] = 0; n = 0; }
  void relearnBias() { biasReady = false; bN = 0; bAcc[0] = bAcc[1] = bAcc[2] = 0; }

  // g: rad/s, a: g (specific force: +1 g up at rest), dt: s
  void update(float gx, float gy, float gz, float ax, float ay, float az, float dt) {
    float an = sqrtf(ax * ax + ay * ay + az * az);
    if (n == 0 && an > 0.5f) fromGravity(ax / an, ay / an, az / an);
    n++;
    // --- stillness: steady gyro and accel around a slow mean, accel ≈ 1 g
    const float k = 1.f - expf(-dt / 0.4f);
    float g[3] = {gx, gy, gz}, a[3] = {ax, ay, az};
    bool calm = fabsf(an - 1.f) < 0.06f;
    for (int i = 0; i < 3; i++) {
      gLp[i] += k * (g[i] - gLp[i]);
      aLp[i] += k * (a[i] - aLp[i]);
      if (fabsf(g[i] - gLp[i]) > 0.035f || fabsf(a[i] - aLp[i]) > 0.025f) calm = false;
      if (biasReady && fabsf(g[i] - bias[i]) > 0.05f) calm = false;   // 3 °/s
    }
    stillN = calm ? stillN + 1 : 0;
    still = stillN > (int)(0.3f * rate);
    // --- gyro bias: mean of the first 0.5 s of stillness, then tracked slowly while still
    if (still) {
      if (!biasReady) {
        for (int i = 0; i < 3; i++) bAcc[i] += g[i];
        if (++bN >= (int)(0.5f * rate)) {
          for (int i = 0; i < 3; i++) bias[i] = bAcc[i] / bN;
          biasReady = true;
        }
      } else {
        const float kb = dt / 4.f;
        for (int i = 0; i < 3; i++) bias[i] += kb * (g[i] - bias[i]);
      }
    }
    float w[3] = {gx - bias[0], gy - bias[1], gz - bias[2]};
    if (still) w[0] = w[1] = w[2] = 0;                       // ZARU: no rotation while still
    // --- gravity correction (Mahony P term), weighted by how purely the accelerometer feels gravity
    if (an > 0.3f) {
      float vx = 2 * (q[1] * q[3] - q[0] * q[2]);
      float vy = 2 * (q[2] * q[3] + q[0] * q[1]);
      float vz = q[0] * q[0] - q[1] * q[1] - q[2] * q[2] + q[3] * q[3];
      float ux = ax / an, uy = ay / an, uz = az / an;
      float ex = uy * vz - uz * vy, ey = uz * vx - ux * vz, ez = ux * vy - uy * vx;
      float trust = 1.f - fabsf(an - 1.f) / 0.15f;
      if (trust < 0) trust = 0;
      float kp = (n < (int)rate) ? 5.f : (still ? 2.f : KP_MOVE) * trust;
      w[0] += kp * ex; w[1] += kp * ey; w[2] += kp * ez;
    }
    // --- integrate q' = ½ q ⊗ (0, w)
    float h = 0.5f * dt;
    float q0 = q[0], q1 = q[1], q2 = q[2], q3 = q[3];
    q[0] += h * (-q1 * w[0] - q2 * w[1] - q3 * w[2]);
    q[1] += h * (q0 * w[0] + q2 * w[2] - q3 * w[1]);
    q[2] += h * (q0 * w[1] - q1 * w[2] + q3 * w[0]);
    q[3] += h * (q0 * w[2] + q1 * w[1] - q2 * w[0]);
    float m = sqrtf(q[0] * q[0] + q[1] * q[1] + q[2] * q[2] + q[3] * q[3]);
    for (int i = 0; i < 4; i++) q[i] /= m;
  }

  // tilt-only orientation that maps the measured "up" (sensor frame) onto world z
  void fromGravity(float ux, float uy, float uz) {
    // shortest rotation from u (sensor) to z (world): axis u × z, angle acos(uz)
    float w = 1.f + uz, x = uy, y = -ux, z = 0;
    if (w < 1e-6f) { q[0] = 0; q[1] = 1; q[2] = 0; q[3] = 0; return; }
    float m = sqrtf(w * w + x * x + y * y + z * z);
    q[0] = w / m; q[1] = x / m; q[2] = y / m; q[3] = z / m;
  }
};
