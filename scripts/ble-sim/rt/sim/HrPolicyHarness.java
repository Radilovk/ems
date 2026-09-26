package sim;

import com.isaigu.gymapp.wearable.HrDemandPolicy;
import com.isaigu.gymapp.wearable.NotifyWearableBridge;

import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;

/**
 * Offline check: HR demand rules including band-app idle grace after exit.
 */
public final class HrPolicyHarness {
    private HrPolicyHarness() {
    }

    private static Set<String> owners(String... ids) {
        LinkedHashSet<String> set = new LinkedHashSet<String>();
        if (ids != null) {
            for (String id : ids) {
                set.add(id);
            }
        }
        return set;
    }

    private static void check(String name, boolean got, boolean expected) {
        if (got != expected) {
            throw new AssertionError(name + ": expected " + expected + " got " + got);
        }
        System.out.println("  ok " + name);
    }

    public static void main(String[] args) {
        final long now = 1_000_000L;
        check("owner constants", "settings".equals(NotifyWearableBridge.OWNER_SETTINGS)
                && "dial".equals(NotifyWearableBridge.OWNER_DIAL)
                && "ai".equals(NotifyWearableBridge.OWNER_AI), true);
        check("idle link (no owners, no auto-reduce)", HrDemandPolicy.wantsHeartRate(false,
                Collections.<String>emptySet(), false, 0L, now), false);
        check("pulse auto-reduce alone (band app gone)", HrDemandPolicy.wantsHeartRate(true,
                Collections.<String>emptySet(), false, 0L, now), false);
        check("pulse auto-reduce + band app recent", HrDemandPolicy.wantsHeartRate(true,
                Collections.<String>emptySet(), false, now - 30_000L, now), true);
        check("pulse auto-reduce + band app idle", HrDemandPolicy.wantsHeartRate(true,
                Collections.<String>emptySet(), false, now - 120_000L, now), false);
        check("training session keeps HR without band app", HrDemandPolicy.wantsHeartRate(true,
                Collections.<String>emptySet(), true, 0L, now), true);
        check("AI session", HrDemandPolicy.wantsHeartRate(false,
                owners(NotifyWearableBridge.OWNER_AI), false, 0L, now), true);
        check("HR dial", HrDemandPolicy.wantsHeartRate(false,
                owners(NotifyWearableBridge.OWNER_DIAL), false, 0L, now), true);
        check("settings connection test", HrDemandPolicy.wantsHeartRate(false,
                owners(NotifyWearableBridge.OWNER_SETTINGS), false, 0L, now), true);
        check("link up but no HR owner", HrDemandPolicy.wantsHeartRate(false, owners(),
                false, 0L, now), false);
        System.out.println("RESULT hr_policy_cases=10 PASS");
    }
}
