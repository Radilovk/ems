import com.xems.btprobe.Proto;

/** Golden frames produced by the vendor's own EMSFIT 5.1 command classes (decompiled, run on the JVM). */
public class ProtoTest {
    static int fails;

    static void check(String vendorHex, byte[] mine) {
        String got = Proto.hex(mine);
        if (!got.equals(vendorHex)) {
            fails++;
            System.out.println("DIFF want " + vendorHex + " got " + got + "  (" + Proto.decode(mine) + ")");
        }
    }

    public static void main(String[] a) {
        check("36 00 00 00 00 00 01 C9", Proto.reset());
        check("36 00 01 00 02 01 02 C9", Proto.batteryInit());
        check("36 00 01 00 02 00 10 C9", Proto.batteryInit2());
        check("36 00 01 08 01 00 00 C9", Proto.batterySync());
        check("36 00 05 03 93 87 00 C9", Proto.sync(6));
        check("36 00 03 00 FF 00 00 C9", Proto.allOff());
        check("36 00 03 00 FA 00 05 C9", Proto.enable(0x05));
        check("36 00 10 00 00 2D F4 C9", Proto.hz(1, 85));
        check("36 00 80 00 02 2E 09 C9", Proto.hz(8, 7));
        check("36 00 21 01 01 01 01 C9", Proto.stepNor(2, Proto.STEP_NOR_DEFAULT));
        check("36 00 32 00 00 00 19 C9", Proto.intensity(3, 25));
        check("36 00 32 00 00 00 00 C9", Proto.intensity(3, 100));
        check("36 00 43 00 00 07 08 C9", Proto.width(4, 360));
        check("36 00 43 00 00 03 20 C9", Proto.width(4, 600));
        check("36 00 56 00 00 00 00 C9", Proto.tPeriod(5, 0));
        check("36 00 57 00 00 0F 42 C9", Proto.t(5, 1, 400));
        check("36 00 58 00 00 98 96 C9", Proto.t(5, 2, 4000));
        check("36 00 58 00 00 26 25 C9", Proto.t(5, 2, 0));
        check("36 00 69 00 00 0F 42 C9", Proto.t(6, 3, 400));
        check("36 00 6A 00 00 98 96 C9", Proto.t(6, 4, 4000));
        check("36 00 7B 00 00 00 01 C9", Proto.t1IntStep(7, 1));
        check("36 00 7C 00 00 00 00 C9", Proto.t1WidthStep(7, 0));
        check("36 00 7D 00 00 00 01 C9", Proto.t3IntStep(7, 1));
        check("36 00 7E 00 00 00 78 C9", Proto.t3WidthStep(7, 12));
        check("36 00 84 00 00 00 02 C9", Proto.waveform(8, 2));
        byte[] rep = {0x36, 0x00, 0x01, 0x08, 0x01, 0x06, (byte) 0x9A, (byte) 0xC9};
        if (Proto.batteryRaw(rep) != 1690 || Proto.percent(1690) != 95) { fails++; System.out.println("DIFF battery"); }
        System.out.println(fails == 0 ? "ProtoTest OK" : "ProtoTest FAILED: " + fails);
        if (fails > 0) System.exit(1);
    }
}
