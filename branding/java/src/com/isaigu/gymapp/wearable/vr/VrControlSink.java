package com.isaigu.gymapp.wearable.vr;

import java.nio.ByteBuffer;

/**
 * Where a game's own impulse controls leave the network layer (XEMS Studio's "Костюм" page and wrist dock,
 * vr-workout/scripts/game/tablet.gd). Implementation: {@link VrControl}. Receiver thread; must not block.
 */
public interface VrControlSink {
    /** One CTRL from the game ({@link VrWire} CTRL_*). */
    void onVrControl(int op, int arg, int value);

    /** The STATE body ({@link VrWire#LEN_STATE} − {@link VrWire#HEADER} bytes) at {@code off}. */
    void fillState(ByteBuffer b, int off);
}
