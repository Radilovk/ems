/** Caps for GitHub URL verification — stay safe on Workers free tier. */

export const LIMITS = {
  maxApkBytes: 12 * 1024 * 1024,
  activatePerMinute: 10,
};

export function limitsSummary() {
  return {
    max_apk_mb: LIMITS.maxApkBytes / (1024 * 1024),
    apk_source: 'GitHub URL only',
  };
}
