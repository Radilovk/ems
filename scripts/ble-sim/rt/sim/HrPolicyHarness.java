package sim;

import com.isaigu.gymapp.wearable.HrDemandPolicy;
import com.isaigu.gymapp.wearable.NotifyWearableBridge;

import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;

/**
 * Offline check: settings/dial connection tests must request HR (regression for «Подготовка…» stuck).
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
        check("owner constants", "settings".equals(NotifyWearableBridge.OWNER_SETTINGS)
                && "dial".equals(NotifyWearableBridge.OWNER_DIAL)
                && "ai".equals(NotifyWearableBridge.OWNER_AI), true);
        check("idle link (no owners, no auto-reduce)", HrDemandPolicy.wantsHeartRate(false,
                Collections.<String>emptySet()), false);
        check("pulse auto-reduce only", HrDemandPolicy.wantsHeartRate(true,
                Collections.<String>emptySet()), true);
        check("AI session", HrDemandPolicy.wantsHeartRate(false,
                owners(NotifyWearableBridge.OWNER_AI)), true);
        check("HR dial alone (pulse module off) does not measure", HrDemandPolicy.wantsHeartRate(false,
                owners(NotifyWearableBridge.OWNER_DIAL)), false);
        check("settings connection test", HrDemandPolicy.wantsHeartRate(false,
                owners(NotifyWearableBridge.OWNER_SETTINGS)), true);
        check("link up but no HR owner", HrDemandPolicy.wantsHeartRate(false, owners()), false);
        System.out.println("RESULT hr_policy_cases=7 PASS");
    }
}
