package com.isaigu.gymapp.ai;

import android.content.Context;
import android.content.SharedPreferences;

import com.isaigu.gymapp.bean.Gender;
import com.isaigu.gymapp.bean.TrainUser;
import com.isaigu.gymapp.train.model.TrainItem;

import java.util.Calendar;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * The client of a training slot as the AI session and the pulse module see them: sex, age and
 * weight from the client record, goal / fitness / contraindications from the client form
 * (prefs "xems_user_profiles", key u&lt;id&gt; = "goal|fitness|contra,contra").
 *
 * <p>Read only: the AI copies these into its own answers, which the trainer may change for the
 * session; the client record is never written from here.
 */
public final class AiProfile {
    static final String PREFS = "xems_user_profiles";

    public long userId;
    public AiModel.Sex sex;
    /** null = not known. */
    public Integer age;
    public Double weightKg;
    public AiModel.Fitness fitness;
    public AiModel.Goal goal;
    public final Set<String> contraindications = new HashSet<String>();

    private AiProfile() {}

    /** The client of the first slot with a client, or null. */
    public static AiProfile ofItems(List<TrainItem> items) {
        if (items == null) {
            return null;
        }
        for (int i = 0; i < items.size(); i++) {
            AiProfile p = of(items.get(i));
            if (p != null) {
                return p;
            }
        }
        return null;
    }

    public static AiProfile of(TrainItem item) {
        try {
            if (item == null || item.data == null || item.data.trainUser == null) {
                return null;
            }
            return of(item.data.trainUser);
        } catch (Throwable t) {
            return null;
        }
    }

    public static AiProfile of(TrainUser u) {
        if (u == null) {
            return null;
        }
        AiProfile p = new AiProfile();
        p.userId = u.id;
        if (u.gender != null) {
            p.sex = u.gender == Gender.Female ? AiModel.Sex.FEMALE : AiModel.Sex.MALE;
        }
        if (u.birtyday != null) {
            int years = yearsSince(u.birtyday);
            if (years >= 10 && years <= 100) {
                p.age = years;
            }
        }
        if (u.weight >= 30 && u.weight <= 250) {
            p.weightKg = (double) u.weight;
        }
        Context c = appContext();
        if (c != null) {
            SharedPreferences prefs = c.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
            String[] parts = prefs.getString("u" + u.id, "").split("\\|", -1);
            if (parts.length >= 3) {
                p.goal = goal(parts[0]);
                p.fitness = fitness(parts[1]);
                for (String k : parts[2].split(",")) {
                    if (k.trim().length() > 0) {
                        p.contraindications.add(k.trim());
                    }
                }
            }
        }
        return p;
    }

    /** Pre-fills the AI answers with what the client record knows (the rest stays as it was). */
    public void applyTo(AiModel.SessionInput in) {
        if (in == null) {
            return;
        }
        if (sex != null) {
            in.sex = sex;
        }
        if (age != null) {
            in.age = age;
        }
        if (weightKg != null) {
            in.weightKg = weightKg;
        }
        if (fitness != null) {
            in.fitness = fitness;
        }
        if (goal != null) {
            in.goal = goal;
            if (!AiModel.isAllowed(in.goal, in.mode)) {
                for (AiModel.Mode m : AiModel.Mode.values()) {
                    if (AiModel.isAllowed(in.goal, m)) {
                        in.mode = m;
                        break;
                    }
                }
            }
        }
        if (in.screening != null) {
            for (String k : contraindications) {
                if (in.screening.contraindications.containsKey(k)) {
                    in.screening.contraindications.put(k, true);
                }
            }
        }
    }

    /** A session input with the client's data (defaults where unknown) — for the pulse module. */
    public AiModel.SessionInput toInput() {
        AiModel.SessionInput in = new AiModel.SessionInput();
        applyTo(in);
        return in;
    }

    static AiModel.Goal goal(String s) {
        if ("tone".equals(s)) return AiModel.Goal.TONE;
        if ("fat".equals(s)) return AiModel.Goal.FAT;
        if ("massage".equals(s)) return AiModel.Goal.MASSAGE;
        if ("drain".equals(s)) return AiModel.Goal.DRAIN;
        if ("cellulite".equals(s)) return AiModel.Goal.CELLULITE;
        return null;
    }

    static AiModel.Fitness fitness(String s) {
        if ("low".equals(s)) return AiModel.Fitness.LOW;
        if ("mid".equals(s)) return AiModel.Fitness.MID;
        if ("high".equals(s)) return AiModel.Fitness.HIGH;
        return null;
    }

    static int yearsSince(java.util.Date d) {
        Calendar then = Calendar.getInstance();
        then.setTime(d);
        Calendar now = Calendar.getInstance();
        int y = now.get(Calendar.YEAR) - then.get(Calendar.YEAR);
        if (now.get(Calendar.DAY_OF_YEAR) < then.get(Calendar.DAY_OF_YEAR)) {
            y--;
        }
        return y;
    }

    private static Context appContext() {
        try {
            Class<?> at = Class.forName("android.app.ActivityThread");
            return (Context) at.getMethod("currentApplication").invoke(null);
        } catch (Throwable t) {
            return null;
        }
    }
}
