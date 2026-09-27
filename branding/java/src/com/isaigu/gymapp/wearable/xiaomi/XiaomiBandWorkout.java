package com.isaigu.gymapp.wearable.xiaomi;

/**
 * A workout the band records itself (HR, calories, time), started from the phone — the band keeps it
 * in its own history and Mi Fitness syncs it like any band workout.
 * <p>
 * Taken from Mi Fitness 9.8 logs (docs/xiaomi-band-native-workout.md), field numbers from Gadgetbridge
 * xiaomi.proto, Command.health = 10:
 * <ul>
 *   <li>8/30 Health.workoutOpenWatch (25) {sport 1, version 2 = 2} — "a phone workout is coming";</li>
 *   <li>8/26 Health.workoutStatusWatch (20) {timestamp 1 (unix s), sport 3, status 4, version 6 = 2};
 *       status 0 start, 1 pause, 2 resume, 3 finish.</li>
 * </ul>
 */
public final class XiaomiBandWorkout {
    public static final int CMD_OPEN = 30;
    public static final int CMD_STATUS = 26;

    public static final int START = 0;
    public static final int PAUSE = 1;
    public static final int RESUME = 2;
    public static final int FINISH = 3;

    /** Mi Fitness phone-launch sport code that is verified to start on the Band 10: indoor running. */
    public static final int SPORT_INDOOR_RUN = 3;
    /** Free training (Mi Fitness FreeTrainingDataProcesser). */
    public static final int SPORT_FREE = 8;
    /** HIIT: synced into Mi Fitness as high_interval_training. */
    public static final int SPORT_HIIT = 16;
    /*
     * Band-started workouts seen in Mi Fitness logs (2026-09-27), names matched by start order to what was
     * picked on the band: 308 weights, 313 physical training, 399 ?, 311 yoga, 310 stretching,
     * 304 flexibility, 307 aerobics. Only 3 is verified as a phone start.
     */
    public static final int SPORT_STRENGTH = 308;
    public static final int SPORT_PHYSICAL = 313;
    public static final int SPORT_YOGA = 311;
    public static final int SPORT_STRETCHING = 310;
    public static final int SPORT_FLEXIBILITY = 304;
    public static final int SPORT_AEROBICS = 307;

    private XiaomiBandWorkout() {}

    public static boolean isConnected() {
        XiaomiBandLink link = XiaomiBand.link();
        return link != null && link.isConnected();
    }

    public static boolean open(int sport) {
        byte[] open = XiaomiBandProto.concat(
                XiaomiBandProto.protoFieldVarint(1, sport),
                XiaomiBandProto.protoFieldVarint(2, 2));
        byte[] health = XiaomiBandProto.protoFieldMessage(25, open);
        return send(XiaomiBandMessages.command(XiaomiBandMessages.T_HEALTH, CMD_OPEN,
                XiaomiBandProto.protoFieldMessage(10, health)));
    }

    public static boolean status(int sport, int status) {
        int now = (int) (System.currentTimeMillis() / 1000L);
        byte[] st = XiaomiBandProto.concat(
                XiaomiBandProto.protoFieldVarint(1, now),
                XiaomiBandProto.protoFieldVarint(3, sport),
                XiaomiBandProto.protoFieldVarint(4, status),
                XiaomiBandProto.protoFieldVarint(6, 2));
        byte[] health = XiaomiBandProto.protoFieldMessage(20, st);
        return send(XiaomiBandMessages.command(XiaomiBandMessages.T_HEALTH, CMD_STATUS,
                XiaomiBandProto.protoFieldMessage(10, health)));
    }

    private static boolean send(byte[] command) {
        XiaomiBandLink link = XiaomiBand.link();
        if (link == null || !link.isConnected()) {
            return false;
        }
        link.sendCommand(command);
        return true;
    }
}
