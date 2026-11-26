import com.isaigu.gymapp.train.utils.ChannelStrengthScale;
import com.isaigu.gymapp.widget.XemsLicense;

/** The arms / calf step as the owner specified it (2026-11-26): ÷D at 400 µs, ÷D/2 at 150 µs, linear; ÷1 = 1:1. */
public class ArmsSim {
    static int fails;

    static void near(String m, float got, float want) {
        if (Math.abs(got - want) > 0.01f) {
            fails++;
            System.out.println("FAIL " + m + ": got " + got + " want " + want);
        }
    }

    public static void main(String[] a) {
        XemsLicense.arms = 5f;
        near("D=5 @400", ChannelStrengthScale.armsDivider(400), 5f);
        near("D=5 @150", ChannelStrengthScale.armsDivider(150), 2.5f);
        near("D=5 @100", ChannelStrengthScale.armsDivider(100), 2f);        // the owner's own numbers: ÷5 at 400, ÷2 at 100
        near("D=5 @250", ChannelStrengthScale.armsDivider(250), 3.5f);
        near("D=5 factor @400", ChannelStrengthScale.armsFactor(400), 0.2f);
        XemsLicense.arms = 10f;
        near("D=10 @400", ChannelStrengthScale.armsDivider(400), 10f);
        near("D=10 @150", ChannelStrengthScale.armsDivider(150), 5f);
        near("D=10 @100", ChannelStrengthScale.armsDivider(100), 4f);        // = the face's scale
        XemsLicense.arms = 1f;
        near("1:1 @400", ChannelStrengthScale.armsFactor(400), 1f);
        near("1:1 @100", ChannelStrengthScale.armsFactor(100), 1f);          // never below ÷1
        near("1:1 @150", ChannelStrengthScale.armsFactor(150), 1f);
        // the face keeps ÷10 whatever the arms say
        XemsLicense.arms = 5f;
        near("face @100", ChannelStrengthScale.faceFactor(100), 0.25f);
        near("face @400", ChannelStrengthScale.faceFactor(400), 0.1f);
        // calves
        XemsLicense.calf = 1f;
        near("calf ÷1", ChannelStrengthScale.calfFactor(), 1f);
        XemsLicense.calf = 2f;
        near("calf ÷2", ChannelStrengthScale.calfFactor(), 0.5f);
        System.out.println(fails == 0 ? "ARMS SIM OK" : fails + " FAILED");
        System.exit(fails == 0 ? 0 : 1);
    }
}
