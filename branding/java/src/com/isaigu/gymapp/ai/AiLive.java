package com.isaigu.gymapp.ai;

import com.isaigu.gymapp.wearable.WearableBleDiagLog;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/**
 * The AI coach knows what runs now and says what the engine decided (owner, 1.1.564: "like a real trainer: the full
 * data, explain what happens, a dialogue about how to go on").
 * <ol>
 * <li>{@link #json()} — the live state for the AI: training or procedure, the impulse now (Hz planned / now, impulse,
 *     pause, µs, the 2nd impulse), the strength, the heart and its ceiling, how long the mode still holds, the
 *     safety cut and the last decisions.</li>
 * <li>{@link #tick()} — the engine's own decisions (a frequency step for the time / the heart, the frequency back
 *     after a pause) and the heart over / back under its ceiling: said aloud and written in the chat, with what to do.
 *     Made on the tablet: no AI call.</li>
 * <li>{@link #check} — a raise of the frequency, the depth, the impulse, a shorter pause, the 2nd impulse: not allowed →
 *     refused with the reason; possible but costly → said, and done only after "да"; else done at once.</li>
 * </ol>
 * The words never say "тренер" / "тренировка" aloud (they would wake the spotter): "сесията", "процедурата".
 */
public final class AiLive {
    private AiLive() {}

    /** A warned change waits for "да" this long. */
    static final long CONFIRM_MS = 30000;
    /** Fewer minutes than this left at the asked mode → a warning first. */
    static final double WARN_HOLD_S = 300;
    private static AiVoiceCmd.Result pending;
    private static long pendingUntil;
    private static boolean hrHigh;
    private static long hrSaidMs;
    private static final List<String> recent = new ArrayList<String>();

    static void reset() {
        pending = null;
        hrHigh = false;
        hrSaidMs = 0;
        synchronized (recent) {
            recent.clear();
        }
    }

    // ================================================================ what runs

    /** A procedure (lying, relaxing: drainage, massage, the face…) or a training. */
    static boolean procedure() {
        if (MapRunner.isAi()) {
            Workout w = MapRunner.map();
            return w != null && w.isPassive();
        }
        AutoModel.Plan p = AutoSession.getPlan();
        return p != null && p.program != null && (p.program.kind == AutoModel.Kind.PASSIVE || AutoCatalog.isFace(p.program));
    }

    /** "сесията" / "процедурата" — said aloud (never "тренировка": the spotter). */
    static String noun() {
        return procedure() ? AiText.t("процедурата", "the procedure") : AiText.t("сесията", "the session");
    }

    static int hr() {
        try {
            return AiSession.isBandStreaming() ? AiSession.getLastBandHr() : -1;
        } catch (Throwable t) {
            return -1;
        }
    }

    static int hrCap() {
        if (MapRunner.isAi()) {
            MapDynamics d = MapRunner.dynamics();
            return d != null ? d.hrCap() : 0;
        }
        AutoModel.Plan p = AutoSession.getPlan();
        return p != null && p.hrUse != AutoModel.HrUse.NONE ? p.hrCap : 0;
    }

    /** The impulse now: {hz, onS, offS, pwUs, pauseHz, pauseSigma×100, cut}; null = nothing runs. */
    static int[] impulse() {
        if (MapRunner.isAi()) {
            AutoModel.Step s = MapRunner.current();
            MapDynamics d = MapRunner.dynamics();
            if (s == null) {
                return null;
            }
            boolean dbl = !MapRunner.noDouble && s.pauseHz > 0;
            return new int[] {s.hz, s.onS, s.offS, s.pwUs, dbl ? s.pauseHz : 0, dbl ? (int) Math.round(s.pauseSigma * 100) : 0,
                    d != null ? d.safeHzCut() : 0};
        }
        AutoEngine e = AutoSession.getEngine();
        AutoEngine.Cmd c = e != null ? e.getCurrent() : null;
        if (c == null) {
            return null;
        }
        return new int[] {c.hz, c.onS, c.offS, c.pwUs, c.pauseHz, (int) Math.round(c.pauseSigma * 100), e.getSafeHzCut()};
    }

    static Endurance endurance() {
        if (MapRunner.isAi()) {
            MapDynamics d = MapRunner.dynamics();
            return d != null ? d.endurance() : null;
        }
        AutoEngine e = AutoSession.getEngine();
        return e != null ? e.getEndurance() : null;
    }

    static int age() {
        AutoModel.Input in = AutoSession.getInput();
        return in != null ? in.age : 40;
    }

    /** The live state for the coach (CONTEXT.now). */
    static String json() {
        StringBuilder b = new StringBuilder("{\"session_kind\":\"").append(procedure() ? "procedure" : "training").append('"');
        try {
            if (MapRunner.isAi()) {
                b.append(",\"workout\":").append(AiBrief.q(MapRunner.name())).append(",\"min_left\":").append(MapRunner.minutesLeft())
                        .append(",\"strength\":").append(MapRunner.strength()).append(",\"paused\":").append(MapRunner.isPaused());
            } else {
                AutoEngine e = AutoSession.getEngine();
                AutoModel.Plan p = AutoSession.getPlan();
                if (e != null && p != null) {
                    AutoModel.Phase ph = e.phase();
                    long now = System.currentTimeMillis();
                    b.append(",\"program\":").append(AiBrief.q(p.program != null ? p.program.name() : ""))
                            .append(",\"phase\":").append(AiBrief.q(ph != null ? ph.nameBg : ""))
                            .append(",\"min_done\":").append(Math.round(e.getSessionS(now) / 60.0))
                            .append(",\"min_total\":").append(Math.round(p.totalS / 60.0))
                            .append(",\"state\":\"").append(e.getState().name()).append('"')
                            .append(",\"strength\":").append(AutoSession.leaderLevel())
                            .append(",\"second_strength_pct\":").append(Math.round(AutoSession.secondScale * 100))
                            .append(",\"double_allowed\":").append(p.doublePulseAllowed)
                            .append(",\"tune\":{\"on\":").append(e.getTuneOn()).append(",\"off\":").append(e.getTuneOff())
                            .append(",\"hz_pct\":").append(e.getTuneHzPct()).append('}');
                }
            }
            int[] i = impulse();
            if (i != null) {
                b.append(",\"impulse\":{\"hz\":").append(i[0]).append(",\"hz_planned\":").append(i[0] + i[6])
                        .append(",\"on_s\":").append(i[1]).append(",\"pause_s\":").append(i[2]).append(",\"us\":").append(i[3])
                        .append(",\"second\":").append(i[4] > 0 ? "{\"hz\":" + i[4] + ",\"pct\":" + i[5] + "}" : "null")
                        .append('}');
                Endurance en = endurance();
                if (en != null && i[0] >= SafeLimits.TETANIC_HZ) {
                    double hold = en.holdS(i[0], i[1], i[2], i[4], i[5] / 100.0, i[3]);
                    b.append(",\"holds_min\":").append(Double.isInfinite(hold) ? "\"the whole session\"" : String.valueOf(Math.round(hold / 60.0)))
                            .append(",\"reserve_pct\":").append(Math.round(Math.max(0, en.reserve()) * 100))
                            .append(",\"critical_hz\":").append(en.criticalHz(i[0] + i[6], i[1], i[2], i[4], i[5] / 100.0, i[3]));
                }
            }
            int hr = hr();
            int cap = hrCap();
            b.append(",\"hr\":").append(hr > 0 ? String.valueOf(hr) : "null").append(",\"hr_cap\":").append(cap > 0 ? String.valueOf(cap) : "null");
            b.append(",\"hz_max_age\":").append(SafeLimits.hzMax(age()));
            synchronized (recent) {
                if (!recent.isEmpty()) {
                    b.append(",\"events\":[");
                    for (int k = 0; k < recent.size(); k++) {
                        b.append(k > 0 ? "," : "").append(AiBrief.q(recent.get(k)));
                    }
                    b.append(']');
                }
            }
        } catch (Throwable t) {
            WearableBleDiagLog.log("ai-live", "json: " + t);
        }
        return b.append('}').toString();
    }

    // ================================================================ the engine's decisions, said

    /** The engines' ticks (AutoSession, MapRunner) in an AI training. */
    static void tick() {
        try {
            List<int[]> ev;
            if (MapRunner.isAi()) {
                MapDynamics d = MapRunner.dynamics();
                ev = d != null ? d.pollEvents() : null;
            } else {
                AutoEngine e = AutoSession.getEngine();
                ev = e != null ? e.pollEvents() : null;
            }
            if (ev != null) {
                for (int[] x : ev) {
                    say(explain(x));
                }
            }
            heart();
        } catch (Throwable t) {
            WearableBleDiagLog.log("ai-live", "tick: " + t);
        }
    }

    static String explain(int[] x) {
        int hr = hr();
        int cap = hrCap();
        if (x[0] == AutoEngine.EV_STEP_HEART) {
            return AiText.t("Пулсът е " + (hr > 0 ? hr : "висок") + (cap > 0 ? ", близо до границата " + cap : "")
                            + ". Свалям честотата от " + x[1] + " на " + x[2] + " херца, силата остава. Нека диша спокойно и забави движенията.",
                    "The heart rate is " + (hr > 0 ? hr : "high") + (cap > 0 ? ", near the limit " + cap : "") + ". Frequency "
                            + x[1] + " → " + x[2] + " Hz, the strength stays. Breathe calmly, move slower.");
        }
        if (x[0] == AutoEngine.EV_STEP_TIME) {
            int min = Math.max(1, Math.round(x[3] / 60f));
            return AiText.t("Мускулите се уморяват: на " + x[1] + " херца с тази пауза остават около " + min
                            + (min == 1 ? " минута" : " минути") + ". Свалям на " + x[2] + " херца, силата остава. "
                            + "Ако искате пълната честота — кратка почивка от минута.",
                    "The muscles tire: at " + x[1] + " Hz with this pause about " + min + " min are left. Down to " + x[2]
                            + " Hz, the strength stays. For the full frequency — a short rest of a minute.");
        }
        if (x[0] == AutoEngine.EV_BACK) {
            return AiText.t("Мускулите се възстановиха — връщам честотата на " + x[2] + " херца.",
                    "The muscles recovered — the frequency back to " + x[2] + " Hz.");
        }
        return "";
    }

    /** The heart over its ceiling (once a 90 s), and back under it. */
    static void heart() {
        int hr = hr();
        int cap = hrCap();
        if (hr <= 0 || cap <= 0) {
            return;
        }
        long now = System.currentTimeMillis();
        if (hr >= cap && (!hrHigh || now - hrSaidMs > 90000)) {
            hrHigh = true;
            hrSaidMs = now;
            say(AiText.t("Пулсът е " + hr + ", над границата " + cap + ". Забавете темпото и дишайте дълбоко. "
                            + "Ако до минута не спадне — пауза.",
                    "Heart rate " + hr + ", over the limit " + cap + ". Slow down and breathe deeply; a pause if it stays a minute."));
        } else if (hrHigh && hr <= cap - 10) {
            hrHigh = false;
            hrSaidMs = now;
            say(AiText.t("Пулсът се върна на " + hr + ". Продължаваме нормално.", "Heart rate back to " + hr + ". Going on as normal."));
        }
    }

    static void say(String text) {
        if (text == null || text.length() == 0) {
            return;
        }
        synchronized (recent) {
            recent.add(text);
            while (recent.size() > 4) {
                recent.remove(0);
            }
        }
        WearableBleDiagLog.log("ai-live", text);
        AiCoach.Reply r = new AiCoach.Reply();
        r.reply = "ⓘ " + text;
        AiCoach.aiSaid(r);
        AiTrain.voiceState();
        WakeListener.announce(text);
    }

    /** "Каква е честотата / колко издържа / защо свали": the impulse now, how long it holds, the last decision. */
    static String describe() {
        int[] i = impulse();
        if (i == null) {
            return AiText.t("Още нищо не тече.", "Nothing runs yet.");
        }
        StringBuilder b = new StringBuilder();
        b.append(AiText.t("Сега " + i[0] + " херца", "Now " + i[0] + " Hz"));
        if (i[6] > 0) {
            b.append(AiText.t(" — планът е " + (i[0] + i[6]) + ", свалих " + i[6] + " заради умората",
                    " — the plan is " + (i[0] + i[6]) + ", lowered " + i[6] + " for fatigue"));
        }
        b.append(AiText.t(", импулс " + i[1] + " секунди, пауза " + i[2] + ", " + i[3] + " микросекунди",
                ", impulse " + i[1] + " s, pause " + i[2] + " s, " + i[3] + " µs"));
        if (i[4] > 0) {
            b.append(AiText.t(", втори импулс " + i[4] + " херца", ", second impulse " + i[4] + " Hz"));
        }
        Endurance en = endurance();
        if (en != null && i[0] >= SafeLimits.TETANIC_HZ) {
            double hold = en.holdS(i[0], i[1], i[2], i[4], i[5] / 100.0, i[3]);
            b.append(Double.isInfinite(hold) ? AiText.t(". Така издържа цялата " + noun().replace("та", "") + ".",
                    ". It holds the whole session.")
                    : AiText.t(". Така издържа още около " + Math.max(1, Math.round(hold / 60)) + " минути.",
                    ". It holds about " + Math.max(1, Math.round(hold / 60)) + " more minutes."));
        } else {
            b.append('.');
        }
        synchronized (recent) {
            if (!recent.isEmpty()) {
                b.append(' ').append(recent.get(recent.size() - 1));
            }
        }
        return b.toString();
    }

    /** Words that must stop the impulse at once, before any model answers (1.1.565). */
    static boolean redFlag(String text) {
        String t = " " + String.valueOf(text).toLowerCase(Locale.ROOT).replace('ѝ', 'и') + " ";
        String[] w = {"замая", "вие ми се", "виe ми се", "гади ми", "повръща", "сърцето", "гърдите ме", "в гърдите",
                "задух", "не мога да дишам", "не ми стига въздух", "припада", "причерня", "ще припадна", "изтръпна",
                "схвана ме", "крамп", "много ме боли", "силна болка", "остра болка", "пари много", "изгаря"};
        for (String x : w) {
            if (t.contains(x)) {
                return true;
            }
        }
        return false;
    }

    // ================================================================ a raise asked: allowed, warned, refused

    /** What a command list will do: the allowed part (done now), the warned part (waits for "да"), the words. */
    static final class Verdict {
        final AiVoiceCmd.Result now = new AiVoiceCmd.Result();
        final AiVoiceCmd.Result ask = new AiVoiceCmd.Result();
        final StringBuilder said = new StringBuilder();
    }

    static Verdict check(AiVoiceCmd.Result vc) {
        Verdict v = new Verdict();
        int[] i = impulse();
        Endurance en = endurance();
        int hr = hr();
        int cap = hrCap();
        boolean hot = hr > 0 && cap > 0 && hr >= cap - 5;
        for (AiVoiceCmd.Cmd c : vc.commands) {
            String why = null;
            String warn = null;
            boolean up = "up".equals(c.dir) || "on".equals(c.dir);
            if (i != null && up && i[0] >= SafeLimits.TETANIC_HZ) {
                int hz = i[0], on = i[1], off = i[2], pw = i[3];
                if ("frequency".equals(c.target)) {
                    hz = (int) Math.round(i[0] * (c.small ? 1.05 : 1.10));
                    int max = SafeLimits.hzMax(age());
                    if (procedure()) {
                        why = AiText.t("Процедурата е за отпускане — по-висока честота ще стегне мускулите вместо да ги отпусне.",
                                "The procedure is for relaxing — a higher frequency would tighten the muscles.");
                    } else if (hz > max) {
                        why = AiText.t("Над " + max + " херца не пускам" + (age() >= 60 ? " след 60 години" : "") + " — това е горната граница.",
                                "Not over " + max + " Hz" + (age() >= 60 ? " after 60" : "") + " — the upper limit.");
                    }
                } else if ("width".equals(c.target)) {
                    pw = (int) Math.round(i[3] * (c.small ? 1.05 : 1.10));
                    if (pw > 400 || (hz >= 100 && pw > 300)) {
                        why = AiText.t("По-дълбок импулс от " + (hz >= 100 ? 300 : 400) + " микросекунди при " + hz
                                        + " херца пари и не е безопасен.",
                                "A deeper impulse than " + (hz >= 100 ? 300 : 400) + " µs at " + hz + " Hz burns — not safe.");
                    }
                } else if ("impulse".equals(c.target)) {
                    on = i[1] + 1;
                    int maxOn = hz >= 50 ? 6 : 10;
                    if (on > maxOn) {
                        why = AiText.t("Импулс над " + maxOn + " секунди при " + hz + " херца е твърде дълъг за мускула.",
                                "An impulse over " + maxOn + " s at " + hz + " Hz is too long.");
                    }
                } else if (!"second".equals(c.target)) {
                    continue;                              // strength, a body part…: the person's own, no check
                }
                if (why == null) {
                    warn = cost(en, hz, on, off, pw, i, hot, hr, cap);
                }
            } else if (i != null && "pause".equals(c.target) && "down".equals(c.dir) && i[0] >= SafeLimits.TETANIC_HZ) {
                int off = i[2] - 1;
                int min = SafeLimits.minOff(i[0], i[1], i[4], i[5] / 100.0);
                if (off < min) {
                    why = AiText.t("Пауза под " + min + " секунди при " + i[0] + " херца и " + i[1]
                                    + " секунди импулс не оставя мускула да се отпусне.",
                            "A pause under " + min + " s at " + i[0] + " Hz does not let the muscle relax.");
                } else {
                    warn = cost(en, i[0], i[1], off, i[3], i, hot, hr, cap);
                }
            }
            add(v, c, why, warn);
        }
        for (String a : vc.actions) {
            if ("double_on".equals(a)) {
                String why = null;
                String warn = null;
                AutoModel.Plan p = AutoSession.getPlan();
                if (!MapRunner.isAi() && p != null && !p.doublePulseAllowed) {
                    why = AiText.t("Вторият импулс е изключен за тази програма" + (AutoCatalog.POSTPARTUM.equals(p.program.id)
                                    ? " в първите четири сесии след раждане" : "") + ".",
                            "The second impulse is off for this program.");
                } else if (procedure()) {
                    why = AiText.t("В процедурата паузата е за отпускане — втори импулс там не пускам.",
                            "In the procedure the pause is for relaxing — no second impulse there.");
                } else if (hot) {
                    warn = AiText.t("Пулсът е " + hr + ", близо до границата — вторият импулс ще го вдигне още, защото паузата спира да е почивка.",
                            "Heart rate " + hr + ", near the limit — the second impulse raises it, the pause is no rest any more.");
                } else if (en != null && en.reserve() < 0.4) {
                    warn = AiText.t("Мускулите вече са уморени — с втори импулс паузата спира да е почивка и честотата ще падне по-скоро.",
                            "The muscles are tired — with a second impulse the pause is no rest and the frequency will drop sooner.");
                }
                if (why != null) {
                    v.said.append(why).append(' ');
                } else if (warn != null) {
                    v.ask.actions.add(a);
                    v.said.append(warn).append(' ');
                } else {
                    v.now.actions.add(a);
                }
            } else {
                v.now.actions.add(a);
            }
        }
        if (!v.ask.isEmpty()) {
            v.said.append(AiText.t("Да го направя ли?", "Shall I?"));
        }
        return v;
    }

    /** The asked mode's cost: a warning when it holds under 5 min or the heart is high (null = fine). */
    static String cost(Endurance en, int hz, int on, int off, int pw, int[] i, boolean hot, int hr, int cap) {
        if (hot) {
            return AiText.t("Пулсът е " + hr + ", близо до границата " + cap + " — това ще го вдигне още.",
                    "Heart rate " + hr + ", near the limit " + cap + " — this raises it.");
        }
        if (en == null) {
            return null;
        }
        double hold = en.holdS(hz, on, off, i[4], i[5] / 100.0, pw);
        if (hold < WARN_HOLD_S) {
            int min = (int) Math.max(1, Math.round(hold / 60));
            return AiText.t("Така мускулът ще издържи около " + min + (min == 1 ? " минута" : " минути")
                            + ", после ще сваля честотата.",
                    "The muscle holds that about " + min + " min, then the frequency comes down.");
        }
        return null;
    }

    private static void add(Verdict v, AiVoiceCmd.Cmd c, String why, String warn) {
        if (why != null) {
            v.said.append(why).append(' ');
        } else if (warn != null) {
            v.ask.commands.add(c);
            v.said.append(warn).append(' ');
        } else {
            v.now.commands.add(c);
        }
    }

    // ================================================================ "да" / "не"

    static void ask(AiVoiceCmd.Result r) {
        pending = r;
        pendingUntil = System.currentTimeMillis() + CONFIRM_MS;
    }

    static boolean asking() {
        return pending != null && System.currentTimeMillis() < pendingUntil;
    }

    /** The answer to "Да го направя ли?": the waiting change (null = not an answer, or nothing waits). */
    static AiVoiceCmd.Result answer(String text, boolean[] no) {
        if (!asking()) {
            pending = null;
            return null;
        }
        String t = " " + text.toLowerCase(Locale.ROOT).replaceAll("[,.!?]", " ") + " ";
        boolean yes = t.contains(" да ") || t.contains("добре") || t.contains("направи") || t.contains("пусни")
                || t.contains("давай") || t.contains(" ок ") || t.contains("окей") || t.contains("съгласен")
                || t.contains(" yes ") || t.contains(" ok ");
        boolean nope = t.contains(" не ") || t.contains("недей") || t.contains("остави") || t.contains("откажи")
                || t.contains(" no ");
        if (nope) {
            pending = null;
            no[0] = true;
            return null;
        }
        if (yes) {
            AiVoiceCmd.Result r = pending;
            pending = null;
            return r;
        }
        pending = null;                                      // something else: the question is dropped
        return null;
    }
}
