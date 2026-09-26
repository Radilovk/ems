/** Plan presets → mods / feat arrays (applied at license creation). */
export const PLANS = {
  base: { mods: [], feat: [] },
  pro: { mods: ['timer', 'music', 'pulse'], feat: [] },
  full: { mods: ['timer', 'music', 'pulse', 'ai', 'band'], feat: [] },
  'base+arms': { mods: [], feat: ['arms_full'] },
  custom: null,
};

/**
 * Entitlements for token minting — DB arrays are source of truth.
 * Presets are copied into DB at creation; admin PATCH updates DB directly.
 */
export function resolveEntitlements(_plan, modsJson, featJson) {
  const mods = parseJsonArray(modsJson);
  const feat = parseJsonArray(featJson);
  return { mods, feat };
}

function parseJsonArray(jsonText) {
  try {
    const arr = JSON.parse(jsonText || '[]');
    return Array.isArray(arr) ? arr : [];
  } catch {
    return [];
  }
}
