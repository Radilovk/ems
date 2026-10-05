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
    /** The impulse cycle as it runs now (s, MapDynamics may lengthen it); ≤ 0 = as drawn. */
    private double cycleS = -1;
    /** The running rest's length (s, MapDynamics may extend it); < 0 = as drawn. */
    private double restS = -1;

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

    /**
     * An impulse starts (the hook fires as ON begins, and the parameters written now drive this impulse). True when
     * the block changed: the impulse after the last repetition is the first one of the next block (counted there).
     */
    public boolean onCycle() {
        Workout.Block b = block();
        if (b == null || b.isRest()) {
            return false;
        }
        if (cycles >= b.reps) {
            next();
            Workout.Block n = block();
            if (n != null && !n.isRest()) {
                cycles = 1;
            }
            return true;
        }
        cycles++;
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
        double impulses = cycleS > 0 ? Math.max(b.seconds(), b.reps * cycleS) : b.seconds();
        if (b.isRest() ? blockS >= (restS >= 0 ? restS : b.reps) : blockS >= impulses + FALLBACK_S) {
            return next();
        }
        return false;
    }

    /** The cycle now really lasts {@code s} seconds (the time fallback waits for it). */
    public void setCycleS(double s) {
        cycleS = s;
    }

    /** The running rest lasts {@code s} seconds (at least as drawn). */
    public void setRestS(double s) {
        restS = s;
    }

    /** Seconds the running rest lasts. */
    public double restLength() {
        Workout.Block b = block();
        return b == null ? 0 : restS >= 0 ? restS : b.reps;
    }

    private boolean next() {
        restS = -1;
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
