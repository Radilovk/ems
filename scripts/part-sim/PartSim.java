package com.isaigu.gymapp.train.utils;

import com.isaigu.gymapp.bean.PartStrenthBean;
import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.bean.TrainProgram;
import com.isaigu.gymapp.bean.TrainUserProgramDataWrapper;
import com.isaigu.gymapp.fragment.NewTrainFragment;
import com.isaigu.gymapp.train.TrainItemManager;
import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.wearable.DoubleImpulse;
import com.isaigu.gymapp.wearable.PartPick;
import com.isaigu.gymapp.wearable.SecondParts;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/**
 * Offline test of the double-impulse button (wearable/DoubleImpulse: tap = setup / off, 5 s → normal, hold = sync)
 * and of the second impulse per channel (PartStrength.changeSecond / change with own second-impulse percents,
 * SecondParts). Marked channels are yellow (second impulse) while the row is in the setup, green otherwise.
 * Invariants over random operations:
 *   setup (yellow) — main impulse of every channel never moves; marked channels' second impulse moves by the step
 *                    (or stops at the limit); the others' second impulse stays;
 *   normal (green) — with the client's own second percents: the others' second impulse stays;
 *   anything       — main impulse of channels that are not selected never moves.
 */
public class PartSim {
    static class Item extends TrainItem {
        final TrainProgram p;
        Item(TrainProgram p) {
            this.p = p;
            partsControl = new boolean[10];
            partsDisabled = new boolean[10];
        }
        public TrainProgram getTrainProgram() { return p; }
        public boolean isEmpty() { return false; }
        boolean ma, hz, pma, phz;                                 // the stub keeps no index picks
        public boolean isMaSelected() { return ma; }
        public boolean isHzSelected() { return hz; }
        public boolean isPauseMaSelected() { return pma; }
        public boolean isPauseHzSelected() { return phz; }
        public void setMaSelected(boolean v) { ma = v; }
        public void setHzSelected(boolean v) { hz = v; }
        public void setPauseMaSelected(boolean v) { pma = v; }
        public void setPauseHzSelected(boolean v) { phz = v; }
    }

    static class Mgr extends TrainItemManager {
        final List<TrainItem> list = new ArrayList<TrainItem>();
        public List<TrainItem> getItemList() { return list; }
    }

    static class Frag extends NewTrainFragment {
        Frag(Mgr m) { }
    }

    static int fails = 0;

    static void check(boolean ok, String what) {
        if (!ok) {
            fails++;
            if (fails <= 20) {
                System.out.println("FAIL: " + what);
            }
        }
    }

    static int[] mainReal(ProgramDataBean b) {
        int[] r = new int[10];
        for (int i = 0; i < 10; i++) {
            r[i] = PartStrength.real(b.strenthBean.buwei[i], b.strenth);
        }
        return r;
    }

    static int[] secondReal(Item it, ProgramDataBean b) {
        int[] e = SecondParts.effective(b, b.strenthBean.buwei);
        int p = PartStrength.secondStrength(it, b);
        int[] r = new int[10];
        for (int i = 0; i < 10; i++) {
            r[i] = PartStrength.real(e[i], p);
        }
        return r;
    }

    static Object di(String name, Class<?>[] types, Object... args) {
        try {
            java.lang.reflect.Method m = DoubleImpulse.class.getDeclaredMethod(name, types);
            m.setAccessible(true);
            return m.invoke(null, args);
        } catch (Exception e) {
            check(false, "DoubleImpulse." + name + ": " + e);
            return null;
        }
    }

    static final Class<?>[] ITEM_VIEW = {TrainItem.class, android.view.View.class};

    /** A tap on the row's double-impulse button. */
    static void tap(TrainItem it) {
        di("click", ITEM_VIEW, it, null);
    }

    static void enterSetup(TrainItem it) {
        di("enter", ITEM_VIEW, it, null);
    }

    static void leaveSetup(TrainItem it) {
        di("leave", new Class<?>[] {TrainItem.class, android.view.View.class, boolean.class}, it, null, false);
    }

    /** The setup clock {@code ms} from now. */
    static void step(long ms) {
        di("step", new Class<?>[] {long.class}, System.currentTimeMillis() + ms);
    }

    /** The double-impulse button and PartLook: what the row shows and what its controls set. */
    static void looks(Frag f, Mgr m) {
        ProgramDataBean b = new ProgramDataBean();
        b.strenthBean = new PartStrenthBean();
        b.strenthBean.buwei = new int[10];
        for (int i = 0; i < 10; i++) {
            b.strenthBean.buwei[i] = 80;
        }
        b.strenth = 50;
        b.hz = 85;
        b.activePause = false;
        b.pauseHz = 6;
        b.pauseStrenthPercent = 40;
        TrainProgram tp = new TrainProgram();
        tp.programDataBean = b;
        Item it = new Item(tp);
        it.data = new TrainUserProgramDataWrapper();
        m.list.clear();
        m.list.add(it);
        check(PartStrength.secondCap(it, b) == 75, "2nd impulse cap at main 50: " + PartStrength.secondCap(it, b));
        b.strenth = 80;
        check(PartStrength.secondCap(it, b) == 100, "2nd impulse cap at main 80: the unit's 100");
        b.strenth = 50;
        // plain pause: all green, nothing in setup
        it.data.start = true;
        it.data.inStart = false;
        check(!DoubleImpulse.active(it) && !PartLook.live(it, b), "plain pause: no setup, nothing yellow");
        // tap: the second impulse on, the setup — 2nd MA picked, all yellow, the suit gets the second only
        tap(it);
        check(b.activePause && DoubleImpulse.active(it), "tap: second impulse on, setup");
        check(b.pauseStrenthPercent == 40 && b.pauseHz == 6, "tap keeps the second impulse's own values");
        check(it.isPauseMaSelected() && !it.isPauseHzSelected() && !it.isMaSelected(), "setup: 2nd MA picked");
        check(DoubleImpulse.holding(it), "setup, running row: the suit holds the second impulse");
        check(PartLook.barSecond(it, b, null, 3, PartLook.live(it, b)), "setup: bars yellow");
        check(PartLook.ringSecond(it, b, PartLook.live(it, b)), "setup: ring yellow");
        it.data.start = false;
        check(!DoubleImpulse.holding(it), "a stopped row holds nothing");
        it.data.start = true;
        // the free ring in the setup: its release sets the second impulse alone (≤ 1.5 × main)
        it.setPauseMaSelected(false);
        check(PartLook.ringMove(it), "free ring in the setup: second impulse look");
        check(PartLook.ringEnd(it, 60), "setup ring release handled");
        check(b.strenth == 50 && b.pauseStrenthPercent == 60, "setup ring: second alone (50 / 60): "
                + b.strenth + " / " + b.pauseStrenthPercent);
        check(PartStrength.seekValue(it, 0) == 60 * 75 / 100, "ring shows the second impulse while held");
        PartLook.ringMove(it);
        PartLook.ringEnd(it, 100);
        check(b.pauseStrenthPercent == 75, "setup ring: second at most 1.5 × main: " + b.pauseStrenthPercent);
        // tap again in the setup: off, the plain pause
        tap(it);
        check(!b.activePause && !DoubleImpulse.active(it), "tap in the setup: second impulse off");
        check(!it.isPauseMaSelected() && !it.isPauseHzSelected(), "off: no 2nd-impulse pick left");
        // on again; 5 s without an action: the normal double impulse (green, main), still on
        tap(it);
        step(4000L);
        check(DoubleImpulse.active(it), "setup stays before 5 s");
        DoubleImpulse.touch(it);
        step(4000L);
        check(DoubleImpulse.active(it), "an action restarts the 5 s");
        step(5200L);
        try {
            Thread.sleep(PartLook.HOLD_MS + 100L);                // the ring's look after its last release
        } catch (InterruptedException ignored) {
        }
        check(b.activePause && !DoubleImpulse.active(it), "5 s idle: normal double impulse");
        check(!it.isPauseMaSelected(), "normal: the 2nd MA pick is gone");
        it.data.inStart = false;
        check(PartLook.barSecond(it, b, null, 3, PartLook.live(it, b)), "normal, pause phase: bars show impulse 2");
        check(!PartLook.ringSecond(it, b, PartLook.live(it, b)), "normal, pause phase: the ring stays main");
        it.data.inStart = true;
        check(!PartLook.barSecond(it, b, null, 3, PartLook.live(it, b))
                && !PartLook.ringSecond(it, b, PartLook.live(it, b)), "normal, impulse phase: all green");
        check(!DoubleImpulse.holding(it), "normal: the two impulses take turns");
        // normal: the free ring is the stock (main) one
        PartLook.ringMove(it);
        check(!PartLook.ringEnd(it, 30), "normal ring release: the stock path (main)");
        // a tap with the double impulse on, not in setup: the setup again
        tap(it);
        check(b.activePause && DoubleImpulse.active(it), "tap in the normal double impulse: the setup again");
        // hold: sync — the second impulse takes the main strength and channel shares, its Hz stays
        SecondParts.set(b, b.strenthBean.buwei, new int[] {10, 20, 30, 40, 50, 60, 70, 80, 90, 100});
        b.pauseStrenthPercent = 20;
        Object ok = di("sync", ITEM_VIEW, it, null);
        check(Boolean.TRUE.equals(ok), "sync handled");
        check(b.pauseStrenthPercent == b.strenth, "sync: second strength = main");
        check(SecondParts.get(b) == null, "sync: channel shares = main");
        check(b.pauseHz == 6, "sync: the Hz stays");
        // the second impulse turned off elsewhere (⚙): the setup ends by itself
        b.activePause = false;
        step(100L);
        check(!DoubleImpulse.active(it), "second impulse off elsewhere: setup over");
        // Мускули: no second impulse, the tap changes nothing
        tp.useType = 1;
        tap(it);
        check(!b.activePause && !DoubleImpulse.active(it), "Мускули: no second impulse");
        tp.useType = 0;
        it.data.start = false;
    }

    public static void main(String[] a) {
        Random rnd = new Random(7);
        int ratioKept = 0;
        int yellowUp = 0, ops = 0, secondShift = 0, secondShiftBig = 0, capped = 0, exact = 0;
        for (int round = 0; round < 3; round++) {
            for (int n = 0; n < 20000; n++) {
                ProgramDataBean b = new ProgramDataBean();
                b.strenthBean = new PartStrenthBean();
                b.strenthBean.buwei = new int[10];
                for (int i = 0; i < 10; i++) {
                    b.strenthBean.buwei[i] = rnd.nextInt(5) == 0 ? 0 : 20 + rnd.nextInt(81);
                }
                b.strenth = 20 + rnd.nextInt(70);
                b.activePause = true;
                b.pauseStrenthPercent = 5 + rnd.nextInt(Math.max(1, b.strenth - 4));
                TrainProgram tp = new TrainProgram();
                tp.programDataBean = b;
                Item it = new Item(tp);
                Mgr m = new Mgr();
                m.list.add(it);
                Frag f = new Frag(m);
                boolean setup = rnd.nextBoolean();            // the row in the second impulse's setup: yellow
                boolean[] yel = new boolean[10];
                boolean[] grn = new boolean[10];
                boolean any = false;
                for (int i = 0; i < 10; i++) {
                    boolean mark = rnd.nextInt(3) != 0;
                    it.partsControl[i] = mark;
                    PartPick.click(f, m, it.partsControl, i);    // the time of the mark (the toggle is the stock one)
                    yel[i] = mark && setup;
                    grn[i] = mark && !setup;
                    any |= mark;
                }
                if (setup) {
                    enterSetup(it);
                }
                if (!any) {
                    leaveSetup(it);
                    continue;
                }
                // an own second-impulse state half of the time (a yellow step done before)
                if (round == 2 && rnd.nextBoolean()) {
                    int[] e = b.strenthBean.buwei.clone();
                    for (int i = 0; i < 10; i++) {
                        e[i] = Math.max(0, Math.min(100, e[i] - rnd.nextInt(30)));
                    }
                    SecondParts.set(b, b.strenthBean.buwei, e);
                }
                boolean onlyYellow = true, onlyGreen = true;
                for (int i = 0; i < 10; i++) {
                    onlyYellow &= !grn[i];
                    onlyGreen &= !yel[i];
                }
                int delta = rnd.nextBoolean() ? 1 : -1;
                int[] m0 = mainReal(b), s0 = secondReal(it, b);
                int str0 = b.strenth, ps0 = b.pauseStrenthPercent;
                boolean handled = PartStrength.addSelected(it, delta);
                check(handled, "handled");
                ops++;
                int[] m1 = mainReal(b), s1 = secondReal(it, b);
                for (int i = 0; i < 10; i++) {
                    boolean sel = it.partsControl[i];
                    if (!sel) {
                        check(m1[i] == m0[i], "main of a not selected channel moved " + i);
                    }
                    if (onlyYellow) {
                        check(m1[i] == m0[i], "yellow changed the main impulse of " + i);
                        if (sel && yel[i]) {
                            if (delta > 0) {
                                yellowUp++;
                                check(s1[i] >= s0[i], "yellow + lowered second " + i);
                                if (s1[i] == s0[i]) {
                                    capped++;
                                } else {
                                    exact += s1[i] == s0[i] + 1 ? 1 : 0;
                                }
                            } else {
                                check(s1[i] <= s0[i], "yellow − raised second " + i);
                            }
                        } else if (s1[i] != s0[i]) {
                            secondShift++;
                            if (Math.abs(s1[i] - s0[i]) > 1) {
                                secondShiftBig++;
                            }
                        }
                    }
                    if (onlyGreen) {
                        if (!sel || m1[i] == m0[i]) {
                            check(s1[i] == s0[i], "green changed the second impulse of " + i);
                        } else if (m0[i] > 0) {
                            int want = (int) Math.round(s0[i] * (double) m1[i] / m0[i]);
                            boolean capped2 = b.pauseStrenthPercent >= com.isaigu.gymapp.ai.SafeLimits.pauseCap(b.strenth)
                                    && s1[i] < want;
                            check(Math.abs(s1[i] - want) <= 1 || capped2, "green: second off its ratio " + i
                                    + " (" + s0[i] + "/" + m0[i] + " → " + s1[i] + "/" + m1[i] + ")");
                            ratioKept++;
                        }
                    }
                }
                if (onlyYellow) {
                    check(b.strenth == str0, "yellow changed the main strength");
                    check(b.pauseStrenthPercent <= com.isaigu.gymapp.ai.SafeLimits.pauseCap(b.strenth), "second strength above the limit (1.5 × main)");
                    check(b.pauseStrenthPercent >= ps0 || delta < 0, "second strength lowered by +");
                }
                // the slider: release at a random level
                int level = rnd.nextInt(101);
                PartStrength.setSelected(it, level);
                int seek = PartStrength.seekValue(it, 0);
                check(seek >= 0 && seek <= 75, "seek out of range " + seek);
                leaveSetup(it);
            }
        }
        // the marks: a tap is the stock toggle, PartPick only keeps the time; yellow = a row in setup
        Mgr m = new Mgr();
        ProgramDataBean b = new ProgramDataBean();
        b.strenthBean = new PartStrenthBean();
        b.strenthBean.buwei = new int[10];
        b.activePause = true;
        TrainProgram tp = new TrainProgram();
        tp.programDataBean = b;
        Item it = new Item(tp);
        m.list.add(it);
        Frag f = new Frag(m);
        boolean[] marks = it.partsControl;
        marks[3] = true;
        check(!PartPick.click(f, m, marks, 3) && PartPick.isMarked(3) && !PartPick.isYellow(3), "mark: green");
        enterSetup(it);
        check(PartPick.isYellow(3), "mark in the setup: yellow");
        leaveSetup(it);
        check(!PartPick.isYellow(3), "setup over: green again");
        marks[3] = false;
        // 5 s without an action clears a mark
        try {
            marks[4] = true;
            java.lang.reflect.Field last = PartPick.class.getDeclaredField("LAST");
            last.setAccessible(true);
            ((long[]) last.get(null))[4] = System.currentTimeMillis() - 4000L;
            java.lang.reflect.Method tick = PartPick.class.getDeclaredMethod("tick", java.util.List.class);
            tick.setAccessible(true);
            tick.invoke(null, m.getItemList());
            check(marks[4], "a mark stays before 5 s");
            ((long[]) last.get(null))[4] = System.currentTimeMillis() - 5100L;
            tick.invoke(null, m.getItemList());
            check(!marks[4], "the mark clears after 5 s");
        } catch (Exception e) {
            check(false, "tick: " + e);
        }
        // a channel's own bar: setup → second impulse alone (marked or not), main stays; normal, marked → main alone
        b.activePause = true;
        b.strenth = 60;
        b.pauseStrenthPercent = 40;
        for (int i = 0; i < 10; i++) {
            b.strenthBean.buwei[i] = 80;
        }
        SecondParts.set(b, b.strenthBean.buwei, null);
        enterSetup(it);
        int[] mb = mainReal(b), sb = secondReal(it, b);
        PartStrength.bar(null, tp, b, 7, 50);                 // the bar shows the 2nd impulse: 50 % of 40 → 20
        int[] ma = mainReal(b), sa = secondReal(it, b);
        check(ma[7] == mb[7], "setup bar moved the main impulse");
        check(sa[7] == 20, "setup bar: second impulse " + sa[7] + " instead of 20");
        for (int i = 0; i < 10; i++) {
            if (i != 7) {
                check(ma[i] == mb[i] && sa[i] == sb[i], "setup bar moved channel " + i);
            }
        }
        leaveSetup(it);
        marks[7] = true;
        PartPick.click(f, m, marks, 7);
        sb = secondReal(it, b);
        PartStrength.bar(null, tp, b, 7, 100);
        check(mainReal(b)[7] == 60, "normal, marked bar: main " + mainReal(b)[7]);
        check(Math.abs(secondReal(it, b)[7] - (int) Math.round(sb[7] * 60.0 / mb[7])) <= 1,
                "normal, marked bar: second keeps its ratio " + secondReal(it, b)[7]);
        marks[7] = false;
        // normal, not marked: the bar sets both impulses (the second follows the main)
        SecondParts.set(b, b.strenthBean.buwei, new int[] {50, 50, 50, 50, 50, 50, 50, 50, 50, 50});
        PartStrength.bar(null, tp, b, 2, 70);
        check(b.strenthBean.buwei[2] == 70 && SecondParts.effective(b, b.strenthBean.buwei)[2] == 70,
                "unmarked bar: both impulses");
        check(SecondParts.effective(b, b.strenthBean.buwei)[3] == 50, "unmarked bar: other channels stay");
        // own percents are dropped when they equal the main ones
        b.activePause = true;
        int[] same = b.strenthBean.buwei.clone();
        SecondParts.set(b, b.strenthBean.buwei, new int[] {1, 2, 3, 4, 5, 6, 7, 8, 9, 10});
        check(SecondParts.get(b) != null, "own percents kept");
        SecondParts.set(b, b.strenthBean.buwei, same);
        check(SecondParts.get(b) == null, "own percents equal to the main ones dropped");

        looks(f, m);

        System.out.println("green steps with the ratio kept: " + ratioKept);
        System.out.println("operations: " + ops + ", yellow + steps: " + yellowUp + " (exactly +1: " + exact + ", at the limit: " + capped + ")"
                + ", second impulse of others moved: " + secondShift + " (by more than 1: " + secondShiftBig + ")");
        System.out.println(fails == 0 ? "PartSim: OK" : "PartSim: " + fails + " FAILED");
        if (fails != 0) {
            System.exit(1);
        }
    }
}
