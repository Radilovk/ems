-- EMS suits (BLE MAC) a licence may use on top of the ones its tablets pair in the admin setup.
ALTER TABLE licenses ADD COLUMN ems TEXT NOT NULL DEFAULT '[]';

-- What each tablet reports: suits paired in its setup, and whether it is still in setup.
ALTER TABLE activations ADD COLUMN ems_local TEXT NOT NULL DEFAULT '[]';
ALTER TABLE activations ADD COLUMN setup INTEGER NOT NULL DEFAULT 0;
