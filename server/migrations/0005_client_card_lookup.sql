-- The client finds their card from the booking PWA (xbody): SHA-256 of the e-mail and of the phone's last
-- 9 digits, never the values themselves. Every hash the card has must match; at least one must be there.
ALTER TABLE client_cards ADD COLUMN email_hash TEXT;
ALTER TABLE client_cards ADD COLUMN phone_hash TEXT;
CREATE INDEX IF NOT EXISTS idx_client_cards_email ON client_cards (email_hash);
CREATE INDEX IF NOT EXISTS idx_client_cards_phone ON client_cards (phone_hash);
