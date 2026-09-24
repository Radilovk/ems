package com.isaigu.gymapp.ai;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/** §1.1, §1.2, G11 — input validation and pre-session questionnaire. */
public final class AiScreening {
    /**
     * Contraindication keys (§1.2, R15 Kemmler et al. 2019). Labels live in the UI.
     * The list must be checked against R15 before clinical use; any "true" rejects the session.
     */
    public static final String[] CONTRAINDICATIONS = {
            "pregnancy",
            "implant",
            "cardiovascular",
            "circulation",
            "hernia",
            "cancer",
            "bleeding",
            "epilepsy",
            "neurological",
            "recent_surgery",
            "skin_lesion",
            "kidney",
            "tuberculosis",
    };

    public static final class Result {
        public final List<String> rejects = new ArrayList<String>();
        public final List<String> warns = new ArrayList<String>();

        public boolean isRejected() {
            return !rejects.isEmpty();
        }
    }

    private AiScreening() {}

    public static Result evaluate(AiModel.SessionInput in) {
        Result r = new Result();
        if (in == null) {
            r.rejects.add("no_input");
            return r;
        }
        if (in.age < 18) {
            r.rejects.add("age_under_18");
        }
        if (!AiModel.isAllowed(in.goal, in.mode)) {
            r.rejects.add("invalid_combination");
        }
        AiModel.Screening s = in.screening;
        if (s == null) {
            r.rejects.add("no_screening");
            return r;
        }
        for (Map.Entry<String, Boolean> e : s.contraindications.entrySet()) {
            if (e.getValue() != null && e.getValue()) {
                r.rejects.add("contra:" + e.getKey());
            }
        }
        if (s.feverOrIllness) {
            r.rejects.add("fever");
        }
        if (s.alcoholOrStress48h) {
            r.rejects.add("alcohol_stress");
        }
        if (s.knownArrhythmia) {
            r.rejects.add("arrhythmia");
        }
        if (!s.ateLast2h) {
            r.warns.add("not_eaten");
        }
        if (!s.hydrated) {
            r.warns.add("not_hydrated");
        }
        if (s.hrLoweringMedication) {
            r.warns.add("hr_medication");
        }
        if (!s.restedLast10min) {
            r.warns.add("not_rested");
        }
        return r;
    }
}
