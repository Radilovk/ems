package com.isaigu.gymapp.wearable.scale;

import java.util.List;

/**
 * Offline test of the scale protocol and body composition against real captures published by the two MIT
 * projects (sacoma-lib: SACOMA Ultra, generation B; Fitman: iCOMON FG2305ULB, generation A) and their expected
 * Fitdays / WLA25 values. See docs/xems-scale.md.
 */
public final class ScaleSim {
    static int fails;
    static int checks;

    static byte[] hex(String s) {
        s = s.replace(" ", "");
        byte[] b = new byte[s.length() / 2];
        for (int i = 0; i < b.length; i++) {
            b[i] = (byte) Integer.parseInt(s.substring(2 * i, 2 * i + 2), 16);
        }
        return b;
    }

    static String hex(byte[] b) {
        StringBuilder s = new StringBuilder();
        for (byte x : b) {
            s.append(String.format("%02x", x & 0xFF));
        }
        return s.toString();
    }

    /** Fitman's test frames carry no check byte: append sum(type + payload) & 0x1F. */
    static byte[] seal(String h) {
        byte[] raw = hex(h);
        byte[] out = new byte[raw.length + 1];
        System.arraycopy(raw, 0, out, 0, raw.length);
        int s = 0;
        for (int i = 4; i < raw.length; i++) {
            s += raw[i] & 0xFF;
        }
        out[raw.length] = (byte) (s & 0x1F);
        return out;
    }

    static void eq(String what, double got, double want, double tol) {
        checks++;
        if (Double.isNaN(got) || Math.abs(got - want) > tol) {
            fails++;
            System.out.println("FAIL " + what + ": got " + got + " want " + want);
        }
    }

    static void eq(String what, String got, String want) {
        checks++;
        if (!got.equals(want)) {
            fails++;
            System.out.println("FAIL " + what + ":\n  got  " + got + "\n  want " + want);
        }
    }

    static void ok(String what, boolean c) {
        checks++;
        if (!c) {
            fails++;
            System.out.println("FAIL " + what);
        }
    }

    // ---------------------------------------------------------------- generation B (sacoma-lib)

    /** The vector's own check byte where it is right; sacoma's EXACT frame 0 was edited by hand without it. */
    static byte[] sealB(String h) {
        byte[] f = hex(h);
        int s = 0;
        for (int i = 3; i < 19; i++) {
            s += f[i] & 0xFF;
        }
        f[19] = (byte) (s & 0x1F);
        return f;
    }

    static ScaleProtocol.Reading a3(String f0, String f1) {
        ScaleProtocol.AssemblerB asm = new ScaleProtocol.AssemblerB();
        ok("frag0 waits", asm.add(sealB(f0)) == null);
        return ScaleProtocol.decodeB(asm.add(hex(f1)));
    }

    static void genB() {
        // decode: the two-fragment A3 result (different seq numbers on purpose)
        ScaleProtocol.Reading r = a3("01 1a 00 a3 19 00 fd 02 00 00 d3 0b 85 0b 4e 0a 74 0a f6 15",
                "01 1a 01 00 96 0a 0a 09 ec 09 2d 09 b6 00 00 00 00 00 00 14");
        ok("display A3 decoded", r != null && r.result);
        eq("display weight", r.weightKg, 64.77, 1e-9);
        double[] want = {21.1, 294.9, 289.4, 267.6, 280.6, 15.0, 257.0, 254.0, 234.9, 248.6};
        for (int i = 0; i < 10; i++) {
            eq("display z" + i, i < 5 ? r.z20[i] : r.z100[i - 5], want[i], 1e-9);
        }
        ScaleBody b = ScaleBody.of(r, true, 30, 165);
        eq("display bmi", b.bmi, 23.8, 1e-4);
        eq("display fat%", b.fatPct, 15.9, 1e-4);
        eq("display bone", b.boneKg, 3.7, 0.2);        // app display rounding (sacoma: 3.6 shown as 3.7)
        eq("display visceral", b.visceral, 3, 0);
        eq("display bmr", b.bmr, 1547, 1);
        eq("display body age", b.bodyAge, 28, 0);
        double[] segFat = {5.6, 0.4, 0.4, 1.8, 1.8};
        for (int i = 0; i < 5; i++) {
            eq("display segFat" + i, b.segFatKg[i], segFat[i], 0.05);
        }

        r = a3("02 1a 00 a3 19 00 fe 06 00 00 cf 0b 26 0a f9 09 f3 0a 7d 0a",
                "02 1a 01 00 8c 09 a6 09 9e 08 c2 09 55 00 00 00 00 00 00 0a");
        eq("exact weight", r.weightKg, 65.03, 1e-9);
        b = ScaleBody.of(r, true, 30, 165);
        eq("exact bmi", b.bmi, 23.9, 1e-4);
        eq("exact fat%", b.fatPct, 15.2, 1e-4);
        eq("exact muscle%", b.musclePct, 79.1, 1e-4);
        eq("exact skeletal%", b.skeletalPct, 47.8, 1e-4);
        eq("exact water%", b.waterPct, 62.1, 1e-4);
        eq("exact protein%", b.proteinPct, 17.0, 1e-4);
        eq("exact bone", b.boneKg, 3.7, 1e-4);
        eq("exact visceral", b.visceral, 2, 0);
        eq("exact bmr", b.bmr, 1560, 0);
        eq("exact body age", b.bodyAge, 28, 0);
        // sacoma order: left arm, right arm, left leg, right leg, trunk
        double[] fat = {0.3466890690242769, 0.3665922690242768, 1.7313771483345035, 1.7479206483345036,
                5.444233703420809};
        double[] mus = {3.164282732394943, 3.1561568323949434, 8.993348787350007, 9.011398887350007,
                24.001202669398396};
        int[] seg = {ScaleProtocol.LEFT_ARM, ScaleProtocol.RIGHT_ARM, ScaleProtocol.LEFT_LEG,
                ScaleProtocol.RIGHT_LEG, ScaleProtocol.TRUNK};
        for (int i = 0; i < 5; i++) {
            eq("exact segFat" + i, b.segFatKg[seg[i]], fat[i], 1e-4);
            eq("exact segMus" + i, b.segMuscleKg[seg[i]], mus[i], 1e-4);
        }

        // other profiles over the same impedances (sacoma PROFILES)
        double[] base = {20.7, 285.4, 280.9, 254.7, 268.5, 14.0, 247.0, 246.2, 224.2, 238.9};
        profile("tall_male", 82.0, base, 1.0, 180, 45, true, 25.3, 16.8, 4.6, 61.1, 77.7);
        profile("short_female", 55.0, base, 1.0, 158, 25, false, 22.0, 9.3, 3.3, 66.5, 84.6);
        profile("mid_female", 68.0, base, 1.18, 170, 55, false, 23.5, 17.9, 3.7, 60.1, 76.6);
        profile("tall_lean", 72.0, base, 1.18, 185, 35, true, 21.0, 10.4, 4.3, 65.7, 83.6);

        // encode: BA heartbeat and BB user list, byte for byte as captured
        List<byte[]> ba = ScaleProtocol.framesB(0, ScaleProtocol.syncB(0x6a2e4eaaL, 0x0605cf67L, 165, 64.90, true,
                30, true));
        eq("BA frame", hex(ba.get(0)), "001000ba6a2e4eaa00780605cf67a5995a9e0f08");
        eq("BB payload", hex(ScaleProtocol.usersB(0x0605cf67L, 165, 64.90, true, 30)), "bb010605cf67a5995a9e");
        // live weight + checksum gate
        ScaleProtocol.AssemblerB live = new ScaleProtocol.AssemblerB();
        ScaleProtocol.Reading w = ScaleProtocol.decodeB(live.add(hex("150700a2031900fae6000000000000000000001e")));
        ok("A2 decoded", w != null && !w.result && w.stable);
        eq("A2 weight", w.weightKg, 64.23, 1e-9);
        ok("bad checksum dropped", live.add(hex("150700a2031900fae6000000000000000000001f")) == null);
    }

    static void profile(String n, double w, double[] base, double k, int h, int age, boolean male, double bmi,
            double fat, double bone, double water, double muscle) {
        ScaleProtocol.Reading r = new ScaleProtocol.Reading();
        r.result = true;
        r.weightKg = w;
        for (int i = 0; i < 10; i++) {
            double z = Math.round(base[i] * k * 10) / 10.0;
            if (i < 5) {
                r.z20[i] = z;
            } else {
                r.z100[i - 5] = z;
            }
        }
        ScaleBody b = ScaleBody.of(r, male, age, h);
        eq(n + " bmi", b.bmi, bmi, 1e-4);
        eq(n + " fat%", b.fatPct, fat, 1e-4);
        eq(n + " bone", b.boneKg, bone, 1e-4);
        eq(n + " water%", b.waterPct, water, 1e-4);
        eq(n + " muscle%", b.musclePct, muscle, 1e-4);
    }

    // ---------------------------------------------------------------- generation A (Fitman)

    static void genA() {
        byte[] uid = hex("0a0b0c0d");
        eq("ack of hello", hex(ScaleProtocol.ackA(0, 3)), "00000300b0030013");
        eq("guest BE", hex(ScaleProtocol.guestA(1, 0x6AB11E59L, 120)),
                hex(hex("01 00 17 00 be 6a b1 1e 59 00 78 01 ac 17 70 98 13 88 13 88 2f 00 00 00 00 00 00 19")));
        eq("profile BF", hex(ScaleProtocol.profileA(2, 170, 72.50, true, 40, uid)),
                hex(seal("02 00 12 00 bf 01 01 aa 1c 52 a8 00 00 00 00 0f 0a 0b 0c 0d 01 01")));
        // the user record carries previous / target weight; ours sends the last weight for both
        byte[] user = ScaleProtocol.userA(3, 0x6AB11E59L, 120, 170, 72.50, true, 40, uid);
        ScaleProtocol.FrameA uf = ScaleProtocol.parseA(user);
        ok("user BE parses", uf != null && uf.type == 0xBE && uf.payload.length == 22);
        eq("BD", hex(ScaleProtocol.bdA(4)), "04000200bd0906");
        eq("BC", hex(ScaleProtocol.bcA(5, uid)),
                hex(seal("05 00 13 00 bc 01 00 00 00 04 62 00 00 04 62 ed de 0a 0b 0c 0d 19 15")));
        ok("hello parses", ScaleProtocol.parseA(hex("0a 00 1e 00 aa 93 79 1e 08 52 25 01 0a 00 00 00 00 00 00 00"
                + " 00 00 00 00 00 00 01 a0 01 01 00 00 ff ff 1f")).type == ScaleProtocol.A_HELLO);
        ok("bad check refused", ScaleProtocol.parseA(hex("04 00 03 00 a0 01 00 02")) == null);
        eq("handshake size", ScaleProtocol.handshakeA(1, 0, 0, 170, 72.5, true, 40, uid).size(), 5, 0);

        ScaleProtocol.FrameA f = ScaleProtocol.parseA(seal("11 00 26 00 a7 6a b1 1e b6 25 61 1b 34 00 0a 01"
                + " ac 0d 48 0d 28 0a f6 09 1e 00 80 0c 1c 0c 2e 09 fc 08 14 0a 0b 0c 0d 01 00 b9"));
        ScaleProtocol.Reading r = ScaleProtocol.decodeA(f);
        ok("A7 decoded", r != null && r.result && !r.stored && !r.hasTrunk());
        eq("A7 weight", r.weightKg, 72.5, 1e-9);
        eq("A7 fat", r.scaleFatPct, 18.5, 1e-9);
        eq("A7 time", r.scaleTime, 0x6AB11EB6L, 0);
        eq("A7 LA z20", r.z20[ScaleProtocol.LEFT_ARM], 350.0, 1e-9);
        eq("A7 RA z20", r.z20[ScaleProtocol.RIGHT_ARM], 340.0, 1e-9);
        eq("A7 RL z20", r.z20[ScaleProtocol.RIGHT_LEG], 260.0, 1e-9);
        eq("A7 LL z20", r.z20[ScaleProtocol.LEFT_LEG], 255.0, 1e-9);
        eq("A7 LA z100", r.z100[ScaleProtocol.LEFT_ARM], 320.0, 1e-9);
        eq("A7 LL z100", r.z100[ScaleProtocol.LEFT_LEG], 230.0, 1e-9);
        ScaleProtocol.Reading st = ScaleProtocol.decodeA(ScaleProtocol.parseA(seal("5e 00 26 00 a5 6a b1 24 0a 25"
                + " 61 1b 34 00 0a 01 ac 0d 48 0d 28 0a f6 09 1e 00 80 0c 1c 0c 2e 09 fc 08 14 00 00 00 00 01 01 b9")));
        ok("A5 stored", st != null && st.stored);

        // Fitman's formulas (Fitdays within rounding) for the same person: male, 40, 170 cm
        ScaleBody b = ScaleBody.of(r, true, 40, 170);
        ok("A body from the scale's fat", b != null && b.fatFromScale);
        eq("A fat kg", b.fatKg, 13.4, 1e-4);
        eq("A lean", b.leanKg, 59.1, 1e-4);
        eq("A water%", b.waterPct, 59.8, 1e-4);
        eq("A muscle kg", b.muscleKg, 55.1, 1e-4);
        eq("A bone", b.boneKg, 4.0, 1e-4);
        eq("A bmr", b.bmr, 1646, 0);
        eq("A visceral", b.visceral, 4, 0);
        eq("A subcut", b.subcutPct, 13.3, 1e-4);
        eq("A body age", b.bodyAge, 38, 0);
        eq("A LA fat", b.segFatKg[ScaleProtocol.LEFT_ARM], 0.81, 0.005);
        eq("A RA fat", b.segFatKg[ScaleProtocol.RIGHT_ARM], 0.79, 0.005);
        eq("A LL fat", b.segFatKg[ScaleProtocol.LEFT_LEG], 2.25, 0.005);
        eq("A RL fat", b.segFatKg[ScaleProtocol.RIGHT_LEG], 2.26, 0.005);
        eq("A LA muscle", b.segMuscleKg[ScaleProtocol.LEFT_ARM], 3.15, 0.005);
        eq("A RA muscle", b.segMuscleKg[ScaleProtocol.RIGHT_ARM], 3.18, 0.005);
        eq("A LL muscle", b.segMuscleKg[ScaleProtocol.LEFT_LEG], 9.74, 0.005);
        eq("A RL muscle", b.segMuscleKg[ScaleProtocol.RIGHT_LEG], 9.74, 0.005);
        eq("A trunk fat", b.segFatKg[ScaleProtocol.TRUNK], 7.73, 0.005);
        eq("A trunk muscle", b.segMuscleKg[ScaleProtocol.TRUNK], 25.78, 0.005);

        // live weight on FFB2 (12 bytes, bit 0 of byte 7 = weight bit 16)
        eq("A live", ScaleProtocol.liveWeightA(hex("000000000000000125610000")), 75.105, 1e-9);
    }

    static void misc() {
        ok("uid stable", hex(ScaleProtocol.uidBytes(42)).equals(hex(ScaleProtocol.uidBytes(42))));
        ok("uid differs", !hex(ScaleProtocol.uidBytes(42)).equals(hex(ScaleProtocol.uidBytes(43))));
        ok("uid never guest", !hex(ScaleProtocol.uidBytes(0)).equals("00000000"));
        ok("name P1", ScaleLink.looksLikeScale("Lescale P1"));
        ok("name band no", !ScaleLink.looksLikeScale("Xiaomi Smart Band 10"));
        ok("adv FFB0", ScaleLink.advertisesFfb0(hex("020106 0303b0ff 0509503120 00")));
        ok("adv other", !ScaleLink.advertisesFfb0(hex("020106 03030d18")));
        eq("adv name", String.valueOf(ScaleLink.advName(hex("020106 0509503131 00"))), "P11");
        ok("gate: no trunk, no scale fat", ScaleBody.of(noFat(), true, 30, 170) == null);
    }

    static ScaleProtocol.Reading noFat() {
        ScaleProtocol.Reading r = new ScaleProtocol.Reading();
        r.result = true;
        r.weightKg = 70;
        for (int i = 1; i < 5; i++) {
            r.z20[i] = 300;
            r.z100[i] = 280;
        }
        return r;
    }

    /** A stored measurement with limb impedances (LA, RA, LL, RL) and the A-generation segments. */
    static org.json.JSONObject meas(long t, double[] z20, double[] z100) throws Exception {
        ScaleProtocol.Reading r = new ScaleProtocol.Reading();
        r.result = true;
        r.weightKg = 72.5;
        r.scaleFatPct = 18.5;
        for (int i = 1; i < 5; i++) {
            r.z20[i] = z20[i - 1];
            r.z100[i] = z100[i - 1];
        }
        return ScaleStore.toJson(r, ScaleBody.of(r, true, 40, 170), t);
    }

    static void insight() throws Exception {
        long day = 24L * 3600 * 1000;
        double[] z20 = {350, 340, 255, 260};
        double[] z100 = {320, 310, 230, 235};
        org.json.JSONArray h = new org.json.JSONArray();
        h.put(meas(0, z20, z100));
        ScaleInsight.Readiness r0 = ScaleInsight.readiness(h, 0);
        ok("first: no baseline", !r0.known() && r0.factor == 1.0);
        h.put(meas(4 * day, z20, z100));
        h.put(meas(8 * day, new double[] {351, 339, 256, 259}, new double[] {321, 309, 231, 234}));
        ScaleInsight.Readiness same = ScaleInsight.readiness(h, 2);
        ok("as usual: full strength", same.known() && same.factor == 1.0 && same.score >= 95);
        eq("baseline count", same.base, 2, 0);
        // day 2 after a hard session: the legs swell — Z20 falls more than Z100, ρ rises ≈ +1.6 %
        h.put(meas(10 * day, new double[] {350, 340, 249, 254}, new double[] {320, 310, 228, 233}));
        ScaleInsight.Readiness sw = ScaleInsight.readiness(h, 3);
        ok("swollen legs: −15 %", sw.factor == 0.85);
        ok("worst is a leg", sw.worst == ScaleProtocol.LEFT_LEG || sw.worst == ScaleProtocol.RIGHT_LEG);
        ok("score drops", sw.score < 80 && sw.score > 40);
        h.put(meas(11 * day, new double[] {350, 340, 244, 249}, new double[] {320, 310, 229, 234}));
        ok("strong swelling: −30 %", ScaleInsight.readiness(h, 4).factor == 0.7);
        // drier: every impedance up ~6 %, ratio unchanged
        org.json.JSONArray d = new org.json.JSONArray();
        d.put(meas(0, z20, z100));
        d.put(meas(day * 5, z20, z100));
        d.put(meas(day * 9, new double[] {371, 360, 270, 276}, new double[] {339, 329, 244, 249}));
        ScaleInsight.Readiness dr = ScaleInsight.readiness(d, 2);
        ok("drier: −15 %", dr.factor == 0.85 && dr.dry > 5);
        // a measurement 2 h later does not count as its own baseline
        org.json.JSONArray q = new org.json.JSONArray();
        q.put(meas(0, z20, z100));
        q.put(meas(2 * 3600 * 1000L, z20, z100));
        ok("baseline ignores the same morning", !ScaleInsight.readiness(q, 1).known());

        // % of normal: muscle and fat by segment, in a plausible band
        double[][] n = ScaleInsight.ofNormal(h.optJSONObject(0), true, 170);
        for (int i = 0; i < 5; i++) {
            ok("muscle % of normal " + i + " = " + Math.round(n[0][i]), n[0][i] > 60 && n[0][i] < 160);
            ok("fat % of normal " + i + " = " + Math.round(n[1][i]), n[1][i] > 40 && n[1][i] < 250);
        }
        // fat per channel: averages near the whole body, glutes between trunk and legs
        double[] cf = ScaleInsight.channelFat(h.optJSONObject(0));
        ok("10 channels", cf != null && cf.length == 10);
        eq("arms channel ≠ trunk", Math.signum(cf[4] - cf[1]) != 0 ? 1 : 0, 1, 0);
        ok("glutes between", cf[8] >= Math.min(cf[1], cf[2]) - 1e-9 && cf[8] <= Math.max(cf[1], cf[2]) + 1e-9);
        double mean = 0;
        for (double v : cf) {
            mean += v;
        }
        eq("channel fat near the whole body", mean / 10, 18.5, 3.0);
        eq("asymmetry", ScaleInsight.asymmetry(new org.json.JSONArray("[0, 3.2, 3.0, 9, 9]"), 1, 2), 6.45, 0.01);
    }

    static org.json.JSONObject comp(double w, double fat, double skelPct) throws Exception {
        org.json.JSONObject o = new org.json.JSONObject();
        o.put("w", w);
        o.put("fat", fat);
        o.put("fatKg", w * fat / 100);
        o.put("lean", w - w * fat / 100);
        o.put("skel", skelPct);
        // limbs ≈ 45 % of the lean in muscle, split like the WLA25 regressions (arms 0.06 / legs 0.17 of lean)
        double lean = w - w * fat / 100;
        o.put("segMus", new org.json.JSONArray(new double[] {lean * 0.44, lean * 0.06, lean * 0.06, lean * 0.17,
                lean * 0.17}));
        return o;
    }

    static void bodyType() throws Exception {
        // muscular man, 180 cm, 90 kg, 14 % fat: BMI 27.8 "overweight" elsewhere — here athletic
        ScaleInsight.Body m = ScaleInsight.body(comp(90, 14, 50), true, 180);
        ok("muscular man = athletic", m.type == ScaleInsight.T_ATHLETIC);
        // lean woman, 165 cm, 54 kg, 19 %: not "in deficit"
        ScaleInsight.Body lw = ScaleInsight.body(comp(54, 19, 40), false, 165);
        ok("lean woman = balanced/athletic", lw.type == ScaleInsight.T_BALANCED || lw.type == ScaleInsight.T_ATHLETIC);
        // heavy woman, 165 cm, 88 kg, 41 %: obese, not "normal"
        ScaleInsight.Body hw = ScaleInsight.body(comp(88, 41, 30), false, 165);
        ok("heavy woman = obese", hw.fatCls == 3);
        // very lean (below essential fat)
        ok("very lean", ScaleInsight.body(comp(60, 12, 42), false, 165).type == ScaleInsight.T_VERY_LEAN);
        // physical age does not move with the entered age (there is none in the call) and follows the body
        double young = ScaleInsight.body(comp(75, 14, 50), true, 175).physicalAge;
        double older = ScaleInsight.body(comp(75, 26, 41), true, 175).physicalAge;
        ok("physical age: fitter body younger (" + Math.round(young) + " < " + Math.round(older) + ")",
                young + 8 < older);
        ok("physical age in range", young >= 18 && older <= 85);
        // the DXA medians themselves map back to their decade
        eq("ALMI median → 45", ScaleInsight.ageOf(8.7, ScaleInsight.ALMI_M, 0.026, false), 45, 1e-9);
        eq("FMI median → 35", ScaleInsight.ageOf(6.8, ScaleInsight.FMI_M, 0.07, true), 35, 1e-9);
        eq("FMI between", ScaleInsight.ageOf(7.4, ScaleInsight.FMI_M, 0.07, true), 40, 1e-9);
        eq("lean young clamps 18", ScaleInsight.ageOf(3.0, ScaleInsight.FMI_M, 0.07, true), 18, 1e-9);
    }

    /** The owner's own Fitdays report (Lescale P1, 02.10.2026, male, 31, 175 cm): our chain from its body fat. */
    static void ownerReport() {
        ScaleProtocol.Reading r = new ScaleProtocol.Reading();
        r.result = true;
        r.weightKg = 81.4;
        r.scaleFatPct = 17.8;
        double[] z20 = {17.3, 252.0, 234.0, 221.0, 232.0}, z100 = {15.7, 215.5, 199.5, 190.0, 200.0};
        for (int i = 0; i < 5; i++) {
            r.z20[i] = z20[i];
            r.z100[i] = z100[i];
        }
        ScaleBody b = ScaleBody.of(r, true, 31, 175);
        eq("P1 fat kg", b.fatKg, 14.5, 0.05);
        eq("P1 muscle", b.muscleKg, 62.3, 0.11);
        eq("P1 bone", b.boneKg, 4.5, 0.05);
        eq("P1 water %", b.waterPct, 60.2, 0.11);
        eq("P1 protein %", b.proteinPct, 16.4, 0.11);
        eq("P1 skeletal %", b.skeletalPct, 47.0, 0.11);
        eq("P1 bmr", b.bmr, 1815, 1);
        eq("P1 visceral", b.visceral, 4, 0);
        eq("P1 body age", b.bodyAge, 29, 0);
        eq("P1 bmi", b.bmi, 26.6, 0.05);
        double[] fat = {7.5, 0.7, 0.7, 2.3, 2.3}, mus = {29.1, 3.9, 4.0, 11.0, 11.0};
        for (int i = 0; i < 5; i++) {
            eq("P1 seg fat " + i, b.segFatKg[i], fat[i], 0.15);
            eq("P1 seg muscle " + i, b.segMuscleKg[i], mus[i], 0.1);
        }
        // Fitdays: BMI 26.6 "high", target −4.3 kg; here: athletic
        org.json.JSONObject m;
        try {
            m = ScaleStore.toJson(r, b, 0);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        ScaleInsight.Body t = ScaleInsight.body(m, true, 175);
        ok("P1 owner = athletic (FFMI " + Math.round(t.ffmi * 10) / 10.0 + ", FMI " + Math.round(t.fmi * 10) / 10.0
                + ")", t.type == ScaleInsight.T_ATHLETIC);
        eq("P1 ASMI as Fitdays", t.almi, 9.8, 0.1);
        String[] n5 = {"a", "b", "c", "d", "e"};
        eq("P1 fat 17.8 % = norm sector", ScaleInsight.fatNorm(17.8, true, 31, n5).sector(), 2, 0);
        eq("P1 FFMI = athletic sector", ScaleInsight.muscleNorm(t.ffmi, true, n5).sector(), 3, 0);
        eq("P1 water = norm", ScaleInsight.waterNorm(b.waterPct, true, n5).sector(), 2, 0);
        eq("P1 BMI 26.6 = above (weight only)", ScaleInsight.bmiNorm(26.6, n5).sector(), 3, 0);
        eq("P1 visceral 4 = norm", ScaleInsight.visceralNorm(4, n5).sector(), 2, 0);
        eq("woman 41 % at 45 = obese", ScaleInsight.fatNorm(41, false, 45, n5).sector(), 4, 0);
        eq("lean woman 19 % = lean, not deficit", ScaleInsight.fatNorm(19, false, 30, n5).sector(), 1, 0);
        eq("age as the years", ScaleInsight.ageNorm(33, 31, n5).sector(), 2, 0);
        System.out.println("  P1 physical age " + Math.round(t.physicalAge) + " (muscle " + Math.round(t.ageFromMuscle)
                + ", fat " + Math.round(t.ageFromFat) + "; Fitdays 29, passport 31)");
    }

    /** The owner's report as the newest of five, the left leg swollen today — what the summary recommends. */
    static void advice() throws Exception {
        long d = 24L * 3600 * 1000, t0 = 1754000000000L;
        double[] z20 = {17.3, 252.0, 234.0, 221.0, 232.0}, z100 = {15.7, 215.5, 199.5, 190.0, 200.0};
        double[] kg = {82.9, 82.4, 82.0, 81.7, 81.4}, fat = {20.1, 19.4, 18.9, 18.3, 17.8};
        double[] zk = {1.035, 1.026, 1.018, 1.009, 1.0};
        org.json.JSONArray h = new org.json.JSONArray();
        for (int i = 0; i < 5; i++) {
            ScaleProtocol.Reading r = new ScaleProtocol.Reading();
            r.result = true;
            r.weightKg = kg[i];
            r.scaleFatPct = fat[i];
            for (int s = 0; s < 5; s++) {
                r.z20[s] = z20[s] * zk[i];
                r.z100[s] = z100[s] * zk[i] * (i == 4 && s == 3 ? 1.016 : 1);
            }
            h.put(ScaleStore.toJson(r, ScaleBody.of(r, true, 31, 175), t0 + i * 14 * d));
        }
        java.util.List<ScaleInsight.Advice> adv = ScaleInsight.advice(h, 4, true, 31, 175);
        StringBuilder all = new StringBuilder();
        for (ScaleInsight.Advice x : adv) {
            System.out.println("  [" + x.prio + "] " + x.titleBg + " — " + x.textBg);
            all.append(x.titleBg).append('|');
        }
        ok("first = softer today", adv.get(0).titleBg.startsWith("Днес по-леко"));
        ok("athletic noted", all.indexOf("Атлетично тяло") >= 0);
        ok("recomposition noted", all.indexOf("преобразява") >= 0);
        ok("no fat warning for 17.8 %", all.indexOf("Мазнини над") < 0);
        // a heavy woman with little muscle and low water
        org.json.JSONObject o = comp(88, 41, 30);
        o.put("water", 41.0);
        o.put("visc", 12);
        o.put("bmi", 32.3);
        org.json.JSONArray one = new org.json.JSONArray();
        one.put(o);
        StringBuilder w = new StringBuilder();
        for (ScaleInsight.Advice x : ScaleInsight.advice(one, 0, false, 45, 165)) {
            w.append(x.titleBg).append('|');
        }
        ok("woman: obese + kg to normal (" + w + ")", w.indexOf("Затлъстяване: −") >= 0);
        ok("woman: water", w.indexOf("Вода преди") >= 0);
        ok("woman: visceral", w.indexOf("Висцерални мазнини: 12") >= 0);
        ok("woman: baseline hint", w.indexOf("Мерене преди всяка") >= 0);
    }

    public static void main(String[] a) throws Exception {
        advice();
        ownerReport();
        bodyType();
        genB();
        genA();
        misc();
        insight();
        System.out.println((fails == 0 ? "OK" : "FAILED") + " scale-sim: " + (checks - fails) + "/" + checks);
        if (fails > 0) {
            System.exit(1);
        }
    }
}
