package com.isaigu.gymapp.wearable;

/** Last value received from Notify Home Assistant sync for one entity. */
final class HaEntityRecord {
    final String entityId;
    final String state;
    final long updatedAtMs;

    HaEntityRecord(String entityId, String state, long updatedAtMs) {
        this.entityId = entityId != null ? entityId : "";
        this.state = state != null ? state : "";
        this.updatedAtMs = updatedAtMs;
    }

    String shortName() {
        int dot = entityId.lastIndexOf('.');
        if (dot >= 0 && dot < entityId.length() - 1) {
            return entityId.substring(dot + 1);
        }
        return entityId;
    }
}
