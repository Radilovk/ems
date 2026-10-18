import { LIMITS } from './limits.js';
import { UNIT_LOG_KEEP_DAYS } from './units.js';

/** Nightly sweep (wrangler.toml crons): the tables that only grow. One small D1 batch a day. */
export async function sweep(env, ts = Math.floor(Date.now() / 1000)) {
  const DAY = 86400;
  await env.DB.batch([
    env.DB.prepare('DELETE FROM client_cards WHERE expires_at < ?').bind(ts - 30 * DAY),
    env.DB.prepare('DELETE FROM audit WHERE ts < ?').bind(ts - 180 * DAY),
    env.DB.prepare("DELETE FROM activations WHERE status = 'pending' AND last_seen < ?").bind(ts - 30 * DAY),
    env.DB.prepare('DELETE FROM unit_logs WHERE ts < ?').bind(ts - UNIT_LOG_KEEP_DAYS * DAY),
    env.DB.prepare('DELETE FROM rate_limits WHERE window_start < ?').bind(ts - LIMITS.rateLimitRetentionSec),
  ]);
}
