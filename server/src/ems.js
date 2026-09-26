import { normMac, normMacList, parseMacList, now } from './utils.js';

/** MAC адреси, които влизат в жетона (активни + чакащи дистанционно сдвояване). */
export const EMS_TOKEN_STATUSES = ['active', 'pending'];

export async function listEmsDevices(env, licenseId) {
  const rows = await env.DB.prepare(
    'SELECT * FROM ems_devices WHERE license_id = ? ORDER BY created_at DESC',
  ).bind(licenseId).all();
  return rows.results || [];
}

export async function getEmsDevice(env, licenseId, deviceId) {
  return env.DB.prepare(
    'SELECT * FROM ems_devices WHERE license_id = ? AND id = ?',
  ).bind(licenseId, deviceId).first();
}

/** Всички MAC за жетон: таблица ems_devices + legacy licenses.ems */
export async function resolveEmsForLicense(env, lic) {
  const legacy = parseMacList(lic.ems);
  const rows = await env.DB.prepare(
    `SELECT mac FROM ems_devices
     WHERE license_id = ? AND status IN (${EMS_TOKEN_STATUSES.map(() => '?').join(',')})`,
  ).bind(lic.id, ...EMS_TOKEN_STATUSES).all();
  const fromTable = (rows.results || []).map((r) => r.mac);
  return [...new Set([...legacy, ...fromTable])].sort();
}

/** Сдвоени MAC от всички таблети по лиценза (ems_local). */
export async function collectPairedMacs(env, licenseId) {
  const rows = await env.DB.prepare(
    "SELECT ems_local FROM activations WHERE license_id = ? AND status = 'active'",
  ).bind(licenseId).all();
  const macs = new Set();
  for (const row of rows.results || []) {
    for (const mac of parseMacList(row.ems_local)) macs.add(mac);
  }
  return [...macs].sort();
}

export async function addEmsDevice(env, licenseId, { mac, label, note, status }) {
  const normalized = normMac(mac);
  if (!normalized) return { ok: false, error: 'invalid_mac', message: 'Невалиден MAC адрес' };

  const st = status === 'pending' ? 'pending' : 'active';
  const existing = await env.DB.prepare(
    'SELECT id FROM ems_devices WHERE license_id = ? AND mac = ?',
  ).bind(licenseId, normalized).first();

  if (existing) {
    await env.DB.prepare(
      'UPDATE ems_devices SET label = ?, note = ?, status = ? WHERE id = ?',
    ).bind(String(label || '').trim(), String(note || '').trim(), st, existing.id).run();
    await syncLegacyEmsColumn(env, licenseId);
    return { ok: true, id: existing.id, mac: normalized, updated: true };
  }

  const result = await env.DB.prepare(
    `INSERT INTO ems_devices (license_id, mac, label, status, created_at, note)
     VALUES (?, ?, ?, ?, ?, ?)`,
  ).bind(
    licenseId, normalized, String(label || '').trim(), st, now(), String(note || '').trim(),
  ).run();
  await syncLegacyEmsColumn(env, licenseId);
  return { ok: true, id: result.meta.last_row_id, mac: normalized, updated: false };
}

export async function updateEmsDevice(env, licenseId, deviceId, patch) {
  const dev = await getEmsDevice(env, licenseId, deviceId);
  if (!dev) return { ok: false, error: 'not_found' };

  const sets = [];
  const vals = [];
  if (patch.label !== undefined) { sets.push('label = ?'); vals.push(String(patch.label).trim()); }
  if (patch.note !== undefined) { sets.push('note = ?'); vals.push(String(patch.note).trim()); }
  if (patch.status !== undefined) {
    const allowed = ['active', 'pending', 'revoked'];
    if (!allowed.includes(patch.status)) return { ok: false, error: 'invalid_status' };
    sets.push('status = ?');
    vals.push(patch.status);
  }
  if (!sets.length) return { ok: false, error: 'nothing_to_update' };

  vals.push(deviceId, licenseId);
  await env.DB.prepare(
    `UPDATE ems_devices SET ${sets.join(', ')} WHERE id = ? AND license_id = ?`,
  ).bind(...vals).run();
  await syncLegacyEmsColumn(env, licenseId);
  return { ok: true };
}

export async function deleteEmsDevice(env, licenseId, deviceId) {
  await env.DB.prepare(
    'DELETE FROM ems_devices WHERE license_id = ? AND id = ?',
  ).bind(licenseId, deviceId).run();
  await syncLegacyEmsColumn(env, licenseId);
  return { ok: true };
}

/** Копира сдвоените от таблетите MAC в ems_devices (без дубликати). */
export async function approvePairedMacs(env, licenseId) {
  const paired = await collectPairedMacs(env, licenseId);
  const added = [];
  for (const mac of paired) {
    const result = await addEmsDevice(env, licenseId, { mac, label: 'Сдвоен от таблет', status: 'active' });
    if (result.ok && !result.updated) added.push(mac);
  }
  await syncLegacyEmsColumn(env, licenseId);
  return { ok: true, added, total: paired.length };
}

/** Държи licenses.ems синхронизиран за обратна съвместимост. */
export async function syncLegacyEmsColumn(env, licenseId) {
  const lic = await env.DB.prepare('SELECT ems FROM licenses WHERE id = ?').bind(licenseId).first();
  if (!lic) return;
  const macs = await resolveEmsForLicense(env, lic);
  await env.DB.prepare('UPDATE licenses SET ems = ? WHERE id = ?').bind(JSON.stringify(macs), licenseId).run();
}

/** Мигрира legacy licenses.ems → ems_devices при първо отваряне. */
export async function ensureLegacyEmsMigrated(env, licenseId, lic) {
  const count = await env.DB.prepare(
    'SELECT COUNT(*) AS n FROM ems_devices WHERE license_id = ?',
  ).bind(licenseId).first();
  if ((count?.n || 0) > 0) return;

  const legacy = parseMacList(lic?.ems);
  for (const mac of legacy) {
    await env.DB.prepare(
      `INSERT OR IGNORE INTO ems_devices (license_id, mac, label, status, created_at, note)
       VALUES (?, ?, '', 'active', ?, 'legacy')`,
    ).bind(licenseId, mac, now()).run();
  }
}
