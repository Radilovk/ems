package com.isaigu.gymapp.ai;

/**
 * Where a map run is (pure Java, for MapRunner and scripts/ai-sim/MapSim.java): impulse blocks advance by counted
 * impulse cycles (one per repetition), rest blocks by time; if the device's cycle hook stays silent the time is the
 * fallback (the block's length + a margin), so a run never stalls. Time only counts while the suit runs.
 */
public final class MapClock {
    /** Margin before the time fallback moves an impulse block on (s). */
    static final double FALLBACK_S = 3.0;

    private final Workout map;
    private int index;
    private int cycles;
    private double blockS;
    private double elapsedS;
    private boolean done;

    public MapClock(Workout map) {
        this.map = map;
        this.done = map == null || map.blocks.isEmpty();
    }

    public int getIndex() {
        return index;
    }

    public Workout.Block block() {
        return done ? null : map.blocks.get(index);
    }

    public int getCycles() {
        return cycles;
    }

    /** Seconds into the current block. */
    public double getBlockS() {
        return blockS;
    }

    /** Seconds since the start (runs only while the suit runs). */
    public double getElapsedS() {
        return elapsedS;
    }

    public boolean isDone() {
        return done;
    }

    /** Position on the map's timeline (s): the block's start + the part of it done. */
    public double position() {
        if (done) {
            return map.totalSeconds();
        }
        Workout.Block b = block();
        double inBlock = b.isRest() ? blockS : Math.min(b.seconds(), cycles * (double) (b.on + Math.max(1, b.off)));
        return map.startOf(index) + inBlock;
    }

    /** An impulse cycle started. True when the block changed. */
    public boolean onCycle() {
        Workout.Block b = block();
        if (b == null || b.isRest()) {
            return false;
        }
        cycles++;
        if (cycles > b.reps) {                     // the cycle after the last repetition belongs to the next block
            return next();
        }
        return false;
    }

    /** Time while the suit runs. True when the block changed. */
    public boolean tick(double dtS) {
        Workout.Block b = block();
        if (b == null) {
            return false;
        }
        blockS += dtS;
        elapsedS += dtS;
        if (b.isRest() ? blockS >= b.reps : blockS >= b.seconds() + FALLBACK_S) {
            return next();
        }
        return false;
    }

    private boolean next() {
        index++;
        cycles = 0;
        blockS = 0;
        if (index >= map.blocks.size()) {
            done = true;
            index = map.blocks.size() - 1;
        }
        return true;
    }
}
