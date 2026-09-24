/** Plan presets → mods / feat arrays (server is source of truth). */
export const PLANS = {
  base: { mods: [], feat: [] },
  pro: { mods: ['timer', 'music', 'pulse'], feat: [] },
  full: { mods: ['timer', 'music', 'pulse', 'ai', 'band'], feat: [] },
  'base+arms': { mods: [], feat: ['arms_full'] },
  custom: null,
};

export function resolveEntitlements(plan, modsJson, featJson) {
  const preset = PLANS[plan];
  if (preset) {
    return { mods: [...preset.mods], feat: [...preset.feat] };
  }
  try {
    return {
      mods: JSON.parse(modsJson || '[]'),
      feat: JSON.parse(featJson || '[]'),
    };
  } catch {
    return { mods: [], feat: [] };
  }
}
