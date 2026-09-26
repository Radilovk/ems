/** Caps and rate-limit settings — stay safe on Workers free tier. */

export const LIMITS = {
  maxApkBytes: 12 * 1024 * 1024,
  maxBodyBytes: 16 * 1024,
  activatePerMinutePerIp: 10,
  activatePerDayPerDevice: 20,
  refreshPerMinutePerDevice: 30,
  rateLimitRetentionSec: 7 * 86400,
};

export function limitsSummary() {
  return {
    max_apk_mb: LIMITS.maxApkBytes / (1024 * 1024),
    activate_per_minute_per_ip: LIMITS.activatePerMinutePerIp,
    activate_per_day_per_device: LIMITS.activatePerDayPerDevice,
    refresh_per_minute_per_device: LIMITS.refreshPerMinutePerDevice,
    apk_source: 'HTTPS URL only',
  };
}
