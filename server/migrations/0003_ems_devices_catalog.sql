-- EMS устройства по лиценз (дистанционно сдвояване по MAC + име)
CREATE TABLE IF NOT EXISTS ems_devices (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  license_id TEXT NOT NULL,
  mac TEXT NOT NULL,
  label TEXT NOT NULL DEFAULT '',
  status TEXT NOT NULL DEFAULT 'pending',
  created_at INTEGER NOT NULL,
  note TEXT,
  UNIQUE(license_id, mac),
  FOREIGN KEY (license_id) REFERENCES licenses(id)
);

CREATE INDEX IF NOT EXISTS idx_ems_devices_license ON ems_devices(license_id);
CREATE INDEX IF NOT EXISTS idx_ems_devices_status ON ems_devices(license_id, status);
