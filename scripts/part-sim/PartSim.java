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

    /** Bring channel {@code i} to {@code want} (0 off, 1 green, 2 yellow) by taps on its icon from off. */
    static void taps(Frag f, Mgr m, boolean[] marks, int i, int want) {
        for (int k = 0; k < 3 && (marks[i] || PartPick.isYellow(i)); k++) {
            PartPick.click(f, m, marks, i);             // to off first
        }
        if (marks[i]) {
            marks[i] = false;                           // the setup: the stock toggle (not run here)
        }
        for (int k = 0; k < want; k++) {
            PartPick.click(f, m, marks, i);
        }
        check(want == 0 ? !marks[i] : marks[i] && (want == 2) == PartPick.tappedYellow(i), "taps " + i + " → " + want);
    }

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
                boolean tapYellow = !setup && round == 1;     // outside the setup: yellow by the icon's 2nd tap
                boolean[] yel = new boolean[10];
                boolean[] grn = new boolean[10];
                boolean any = false;
                for (int i = 0; i < 10; i++) {
                    boolean mark = rnd.nextInt(3) != 0;
                    boolean y = mark && (setup || (tapYellow && rnd.nextBoolean()));
                    taps(f, m, it.partsControl, i, !mark ? 0 : y && !setup ? 2 : 1);
                    yel[i] = y;
                    grn[i] = mark && !y;
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
        // the marks (1.1.386): 1st tap green, 2nd yellow (double impulse on), 3rd off; in the setup all marks yellow
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
        check(PartPick.click(f, m, marks, 3) && PartPick.isMarked(3) && !PartPick.isYellow(3), "1st tap: green");
        check(PartPick.click(f, m, marks, 3) && PartPick.isMarked(3) && PartPick.isYellow(3), "2nd tap: yellow");
        check(PartPick.click(f, m, marks, 3) && !PartPick.isMarked(3) && !PartPick.isYellow(3), "3rd tap: off");
        b.activePause = false;
        check(!PartPick.click(f, m, marks, 3), "no double impulse: the stock toggle");
        b.activePause = true;
        taps(f, m, marks, 3, 1);
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
        taps(f, m, marks, 7, 1);
        sb = secondReal(it, b);
        PartStrength.bar(null, tp, b, 7, 100);
        check(mainReal(b)[7] == 60, "normal, marked bar: main " + mainReal(b)[7]);
        check(Math.abs(secondReal(it, b)[7] - (int) Math.round(sb[7] * 60.0 / mb[7])) <= 1,
                "normal, marked bar: second keeps its ratio " + secondReal(it, b)[7]);
        // normal, yellow by the 2nd tap: the bar sets the second impulse alone
        taps(f, m, marks, 7, 2);
        mb = mainReal(b);
        PartStrength.bar(null, tp, b, 7, 50);
        check(mainReal(b)[7] == mb[7], "tapped yellow bar moved the main impulse");
        check(secondReal(it, b)[7] == 20, "tapped yellow bar: second impulse " + secondReal(it, b)[7] + " instead of 20");
        taps(f, m, marks, 7, 0);
        // the 2nd-impulse index buttons: a click picks (green), a 2nd click lets go; no setup from them
        it.setPauseMaSelected(false);
        it.setPauseHzSelected(false);
        com.isaigu.gymapp.wearable.TrainIndex.pauseClick(it, false);
        check(it.isPauseMaSelected() && !it.isPauseHzSelected() && !DoubleImpulse.active(it), "2nd MA: picked, no setup");
        com.isaigu.gymapp.wearable.TrainIndex.pauseClick(it, true);
        check(it.isPauseHzSelected() && !it.isPauseMaSelected(), "2nd Hz: picked instead");
        com.isaigu.gymapp.wearable.TrainIndex.pauseClick(it, true);
        check(!it.isPauseHzSelected() && !it.isPauseMaSelected(), "2nd Hz again: let go");
        // normal, not marked (owner, 1.1.409): the bar moves both impulses, the second keeping its ratio to the main
        SecondParts.set(b, b.strenthBean.buwei, new int[] {50, 50, 50, 50, 50, 50, 50, 50, 50, 50});
        mb = mainReal(b);
        sb = secondReal(it, b);
        PartStrength.bar(null, tp, b, 2, 70);
        check(b.strenthBean.buwei[2] == 70, "unmarked bar: main percent " + b.strenthBean.buwei[2]);
        check(Math.abs(secondReal(it, b)[2] - (int) Math.round(sb[2] * (double) mainReal(b)[2] / mb[2])) <= 1,
                "unmarked bar: second keeps its ratio " + secondReal(it, b)[2] + " (was " + sb[2] + " / " + mb[2] + ")");
        check(secondReal(it, b)[2] != sb[2], "unmarked bar: second moved too");
        for (int i = 0; i < 10; i++) {
            if (i != 2) {
                check(mainReal(b)[i] == mb[i] && secondReal(it, b)[i] == sb[i], "unmarked bar moved channel " + i);
            }
        }
        // no own percents yet (second = main's percents): the unmarked bar still keeps the ratio, others exact
        SecondParts.set(b, b.strenthBean.buwei, null);
        mb = mainReal(b);
        sb = secondReal(it, b);
        PartStrength.bar(null, tp, b, 5, 40);
        check(Math.abs(secondReal(it, b)[5] - (int) Math.round(sb[5] * (double) mainReal(b)[5] / mb[5])) <= 1,
                "unmarked bar, no own percents: ratio " + secondReal(it, b)[5]);
        for (int i = 0; i < 10; i++) {
            if (i != 5) {
                check(mainReal(b)[i] == mb[i] && secondReal(it, b)[i] == sb[i], "unmarked bar (no own) moved channel " + i);
            }
        }
        // not marked, the bar held in the yellow look (pause phase): the second goes to the finger, the main follows
        try {
            java.lang.reflect.Field uf = sun.misc.Unsafe.class.getDeclaredField("theUnsafe");
            uf.setAccessible(true);
            android.view.View bar = (android.view.View) ((sun.misc.Unsafe) uf.get(null)).allocateInstance(android.view.View.class);
            java.lang.reflect.Field lf = PartLook.class.getDeclaredField("LOCKS");
            lf.setAccessible(true);
            PartLook.Lock lk = new PartLook.Lock();
            lk.second = true;
            lk.dragging = true;
            lk.last = System.currentTimeMillis();
            ((java.util.Map<Object, PartLook.Lock>) lf.get(null)).put(bar, lk);
            SecondParts.set(b, b.strenthBean.buwei, new int[] {60, 60, 60, 60, 60, 60, 60, 60, 60, 60});
            mb = mainReal(b);
            sb = secondReal(it, b);
            PartStrength.bar(bar, tp, b, 4, 30);              // 30 % of the second impulse's strength
            int s1 = PartStrength.real(30, Math.min(b.pauseStrenthPercent, PartStrength.secondCap(it, b)));
            check(secondReal(it, b)[4] == s1, "yellow-look bar: second " + secondReal(it, b)[4] + " instead of " + s1);
            check(Math.abs(mainReal(b)[4] - (int) Math.round(mb[4] * (double) s1 / sb[4])) <= 1,
                    "yellow-look bar: main keeps the ratio " + mainReal(b)[4] + " (was " + mb[4] + " / " + sb[4] + ")");
            check(mainReal(b)[4] != mb[4], "yellow-look bar: main moved too");
            for (int i = 0; i < 10; i++) {
                if (i != 4) {
                    check(mainReal(b)[i] == mb[i] && secondReal(it, b)[i] == sb[i], "yellow-look bar moved channel " + i);
                }
            }
        } catch (Exception e) {
            check(false, "yellow-look bar: " + e);
        }
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
