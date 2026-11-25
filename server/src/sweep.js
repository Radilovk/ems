import { LIMITS } from './limits.js';
import { UNIT_LOG_KEEP_DAYS } from './units.js';
import { VRLOG_KEEP_DAYS } from './vrlog.js';

/** Nightly sweep (wrangler.toml crons): the tables that only grow. One small D1 batch a day. */
export async function sweep(env, ts = Math.floor(Date.now() / 1000)) {
  const DAY = 86400;
  await env.DB.batch([
    env.DB.prepare('DELETE FROM client_cards WHERE expires_at < ?').bind(ts - 30 * DAY),
    env.DB.prepare('DELETE FROM audit WHERE ts < ?').bind(ts - 180 * DAY),
    env.DB.prepare("DELETE FROM activations WHERE status = 'pending' AND last_seen < ?").bind(ts - 30 * DAY),
    env.DB.prepare('DELETE FROM unit_logs WHERE ts < ?').bind(ts - UNIT_LOG_KEEP_DAYS * DAY),
    env.DB.prepare('DELETE FROM vr_logs WHERE ts < ?').bind(ts - VRLOG_KEEP_DAYS * DAY),
    // the coach voice's month counter (tts:chars:<month>) lives in rate_limits too, created on the month's first phrase:
    // the 7-day sweep used to delete it, so the free-characters line restarted every week (up to ~4x the Azure free tier)
    env.DB.prepare("DELETE FROM rate_limits WHERE window_start < ? AND key NOT LIKE 'tts:chars:%'")
      .bind(ts - LIMITS.rateLimitRetentionSec),
    env.DB.prepare("DELETE FROM rate_limits WHERE window_start < ? AND key LIKE 'tts:chars:%'").bind(ts - 70 * DAY),
  ]);
}
