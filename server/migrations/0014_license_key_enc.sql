-- The admin can see a licence key again (owner: "once created I can't see it — that's a bug").
-- key_enc = the key sealed with AES-GCM (key derived from the LICENSE_PRIVATE_KEY secret), base64 "iv.ct";
-- key_hash stays the lookup. Keys made before this have no key_enc: the admin issues them a new key.
ALTER TABLE licenses ADD COLUMN key_enc TEXT;
