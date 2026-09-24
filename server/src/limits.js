/** Hard caps to stay within Cloudflare free tier — no surprise charges. */

export const LIMITS = {
  /** Max APK upload size (bytes). Our APK is ~8.7 MB. */
  maxApkBytes: 12 * 1024 * 1024,
  /** Keep at most this many APK files in R2 (older ones are deleted on upload). */
  maxStoredReleases: 3,
  /** Max R2 objects total (safety cap). */
  maxR2Objects: 5,
  /** Admin APK uploads per hour per IP. */
  uploadPerHour: 5,
  /** Public APK downloads per IP per day. */
  downloadPerDay: 500,
  /** License activate attempts per IP per minute (existing). */
  activatePerMinute: 10,
};

export function limitsSummary() {
  return {
    max_apk_mb: LIMITS.maxApkBytes / (1024 * 1024),
    max_stored_releases: LIMITS.maxStoredReleases,
    free_tier_note: 'Workers Free + D1 Free + R2 Free (10 GB). No egress fees on R2.',
  };
}
