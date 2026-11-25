package com.isaigu.gymapp.wearable.vr;

/** Where a zone hit leaves the network layer (implementation: {@link VrZoneRouter}); receiver thread, keep it short. */
public interface VrZoneSink {
    void onVrZoneHit(VrZoneHit hit);
}
