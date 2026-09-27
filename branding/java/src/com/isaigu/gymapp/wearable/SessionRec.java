package com.isaigu.gymapp.wearable;

import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.bean.TrainUser;
import com.isaigu.gymapp.train.model.TrainItem;

import org.json.JSONObject;

/**
 * One training of one client, one sample per second: what the suit got (main strength, the ten
 * channel shares, Hz, µs, impulse / pause seconds, active pause), whether it ran or was paused, the
 * band heart rate (only for the client in the leading slot — the band is on that person) and the
 * Smart Session phase. After the end: 60 s of heart rate for the recovery value.
 * The report page (assets/report) does all the maths from these columns.
 */
final class SessionRec {
    static final int CH = 10;

    final long start;
    final long userId;
    final String userName;
    final TrainUser user;
    String program;
    final JSONObject person;
    long end;
    boolean ai;
    /** Automatic mode (ready programs) ran this training. */
    boolean auto;
    /** AI or automatic mode owned the slot at some point (their own end, no mode chaining). */
    boolean assist;
    boolean music;
    boolean bandOwner;
    boolean bandSent;
    boolean bandRunning;
    int bandSport;
    int planS;
    /** Planned seconds of the mode that runs now (the countdown's full value). */
    int segPlanS;
    /** TrainProgram.useType of the running mode: 0 main, 1 muscle, 2 cardio, 3 massage; -1 unknown. */
    int curType = -1;
    /** Bit per useType that ran. */
    int modes;
    /** A work mode ended; waiting for the next mode (massage closes the training). */
    boolean between;
    int betweenS;

    final SessionInts run = new SessionInts();
    final SessionInts hr = new SessionInts();
    final SessionInts st = new SessionInts();
    final SessionInts hz = new SessionInts();
    final SessionInts pw = new SessionInts();
    final SessionInts on = new SessionInts();
    final SessionInts off = new SessionInts();
    final SessionInts ap = new SessionInts();
    final SessionInts ps = new SessionInts();
    final SessionInts phz = new SessionInts();
    final SessionInts dis = new SessionInts();
    final SessionInts ph = new SessionInts();
    /** 1 while the suit is in the impulse part of the ON/OFF cycle (TrainItem toggles data.inStart). */
    final SessionInts imp = new SessionInts();
    final SessionInts[] ch = new SessionInts[CH];
    final SessionInts post = new SessionInts();
    final int[] chPeak = new int[CH];
    /** Work per channel: Σ (share × main strength) over the impulse seconds — the muscle map's load. */
    final long[] chLoad = new long[CH];

    /** Seconds the slot has been paused without a break. */
    int pausedS;
    /** Idle seconds since the slot closed (the end is taken after a few). */
    int idle;
    /** After the end: seconds of heart rate still wanted. */
    int postLeft = -1;
    boolean leader;
    boolean lastRun;
    /** The report was opened on the screen. */
    boolean shown;

    SessionRec(TrainItem item, long now) {
        start = now;
        TrainUser u = item.data.trainUser;
        userId = u.id;
        user = u;
        userName = u.nickName != null && u.nickName.length() > 0 ? u.nickName : u.name;
        String p = null;
        try {
            p = item.getTrainProgram() != null ? item.getTrainProgram().name : null;
        } catch (Throwable ignored) {
        }
        program = p;
        person = person(u);
        for (int i = 0; i < CH; i++) {
            ch[i] = new SessionInts();
        }
        // TrainItem.workLength counts the seconds left; at the start it is the whole planned time.
        planS = Math.max(0, item.workLength);
        segPlanS = planS;
    }

    private static JSONObject person(TrainUser u) {
        JSONObject o = new JSONObject();
        try {
            com.isaigu.gymapp.ai.AiProfile p = com.isaigu.gymapp.ai.AiProfile.of(u);
            if (p != null) {
                if (p.sex != null) {
                    o.put("sex", p.sex == com.isaigu.gymapp.ai.AiModel.Sex.FEMALE ? "F" : "M");
                }
                if (p.age != null) {
                    o.put("age", p.age.intValue());
                }
                if (p.weightKg != null) {
                    o.put("weight", p.weightKg.doubleValue());
                }
                if (p.goal != null) {
                    o.put("goal", p.goal.name().toLowerCase());
                }
                if (p.fitness != null) {
                    o.put("fitness", p.fitness.name().toLowerCase());
                }
            }
            if (u.height > 0) {
                o.put("height", u.height);
            }
        } catch (Throwable ignored) {
        }
        return o;
    }

    void sample(TrainItem item, int bpm, int aiPhase) {
        ProgramDataBean b = null;
        try {
            b = item.getTrainProgram() != null ? item.getTrainProgram().matchProgram() : null;
        } catch (Throwable ignored) {
        }
        boolean running = item.data.start;
        lastRun = running;
        run.add(running ? 1 : 0);
        imp.add(running && item.data.inStart ? 1 : 0);
        hr.add(bpm);
        int strength = b != null ? b.strenth : 0;
        st.add(strength);
        hz.add(b != null ? b.hz : 0);
        pw.add(b != null ? b.pulseWidth : 0);
        on.add(b != null ? b.pulseContinue : 0);
        off.add(b != null ? b.pulsePause : 0);
        ap.add(b != null && b.activePause ? 1 : 0);
        ps.add(b != null ? b.pauseStrenthPercent : 0);
        phz.add(b != null ? b.pauseHz : 0);
        int mask = 0;
        boolean[] d = item.partsDisabled;
        int[] parts = b != null && b.strenthBean != null ? b.strenthBean.buwei : null;
        for (int i = 0; i < CH; i++) {
            if (d != null && i < d.length && d[i]) {
                mask |= 1 << i;
            }
            int v = parts != null && i < parts.length ? parts[i] : 0;
            ch[i].add(v);
            if (running && (mask & (1 << i)) == 0) {
                int real = v * strength / 100;
                if (real > chPeak[i]) {
                    chPeak[i] = real;
                }
                if (item.data.inStart) {
                    chLoad[i] += real;
                }
            }
        }
        dis.add(mask);
        ph.add(aiPhase);
    }

    /** Load per muscle, 0–100 against the most worked one (all 0 when nothing ran). */
    int[] muscleLevels() {
        long mx = 0;
        for (long v : chLoad) {
            mx = Math.max(mx, v);
        }
        int[] out = new int[CH];
        for (int i = 0; i < CH; i++) {
            out[i] = mx > 0 ? (int) Math.round(chLoad[i] * 100.0 / mx) : 0;
        }
        return out;
    }

    /** "M" / "F" for the band's figure (female when unknown). */
    String sex() {
        try {
            com.isaigu.gymapp.ai.AiProfile p = com.isaigu.gymapp.ai.AiProfile.of(user);
            return p != null && p.sex == com.isaigu.gymapp.ai.AiModel.Sex.MALE ? "M" : "F";
        } catch (Throwable t) {
            return "F";
        }
    }

    int activeS() {
        int n = 0;
        for (int i = 0; i < run.size(); i++) {
            n += run.get(i);
        }
        return n;
    }

    int hrAvg() {
        long s = 0;
        int n = 0;
        for (int i = 0; i < hr.size(); i++) {
            if (hr.get(i) > 0 && run.get(i) == 1) {
                s += hr.get(i);
                n++;
            }
        }
        return n > 0 ? (int) (s / n) : 0;
    }

    String type() {
        return auto ? "auto" : ai ? "ai" : "program";
    }

    String toJson(int restHr) {
        StringBuilder b = new StringBuilder(run.size() * 60 + 512);
        try {
            JSONObject head = summary();
            JSONObject pers = new JSONObject(person.toString());
            if (restHr > 0 && leader) {
                pers.put("restHr", restHr);
            }
            head.put("person", pers);
            String h = head.toString();
            b.append(h, 0, h.length() - 1);
        } catch (Throwable t) {
            b.append("{\"id\":").append(start);
        }
        col(b, "run", run);
        col(b, "hr", hr);
        col(b, "st", st);
        col(b, "hz", hz);
        col(b, "pw", pw);
        col(b, "on", on);
        col(b, "off", off);
        col(b, "ap", ap);
        col(b, "ps", ps);
        col(b, "phz", phz);
        col(b, "dis", dis);
        col(b, "ph", ph);
        col(b, "imp", imp);
        col(b, "post", post);
        b.append(",\"ch\":[");
        for (int i = 0; i < CH; i++) {
            if (i > 0) {
                b.append(',');
            }
            ch[i].json(b);
        }
        b.append("]}");
        return b.toString();
    }

    private static void col(StringBuilder b, String name, SessionInts v) {
        b.append(",\"").append(name).append("\":");
        v.json(b);
    }

    JSONObject summary() throws org.json.JSONException {
        JSONObject o = new JSONObject();
        o.put("id", start);
        o.put("userId", userId);
        o.put("name", userName != null ? userName : "");
        o.put("start", start);
        o.put("end", end);
        o.put("durS", run.size());
        o.put("activeS", activeS());
        o.put("type", type());
        o.put("program", program != null ? program : "");
        o.put("music", music);
        o.put("planS", planS);
        o.put("modes", modes);
        o.put("hasHr", hrAvg() > 0);
        o.put("hrAvg", hrAvg());
        org.json.JSONArray pk = new org.json.JSONArray();
        for (int i = 0; i < CH; i++) {
            pk.put(chPeak[i]);
        }
        o.put("chPeak", pk);
        JSONObject band = new JSONObject();
        band.put("owner", bandOwner);
        band.put("sent", bandSent);
        band.put("sport", bandSport);
        o.put("band", band);
        return o;
    }
}
