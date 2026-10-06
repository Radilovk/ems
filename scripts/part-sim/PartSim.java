package com.isaigu.gymapp.train.utils;

import com.isaigu.gymapp.bean.PartStrenthBean;
import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.bean.TrainProgram;
import com.isaigu.gymapp.fragment.NewTrainFragment;
import com.isaigu.gymapp.train.TrainItemManager;
import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.wearable.PartPick;
import com.isaigu.gymapp.wearable.SecondParts;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/**
 * Offline test of the muscle icon cycle (green → yellow → off) and of the second impulse per channel
 * (PartStrength.changeSecond / change with own second-impulse percents, SecondParts).
 * Invariants over random operations:
 *   yellow only  — main impulse of every channel never moves; yellow channels' second impulse moves by the step
 *                  (or stops at the limit); the others' second impulse stays;
 *   green only   — with the client's own second percents: the others' second impulse stays;
 *   anything     — main impulse of channels that are not selected never moves.
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

    public static void main(String[] a) {
        Random rnd = new Random(7);
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
                boolean[] yel = new boolean[10];
                boolean[] grn = new boolean[10];
                boolean any = false;
                for (int i = 0; i < 10; i++) {
                    int k = rnd.nextInt(4);                    // 0 off, 1 green, 2 yellow, 3 off
                    it.partsControl[i] = false;
                    PartPick.click(f, m, it.partsControl, i);     // → green
                    if (k == 2) {
                        PartPick.click(f, m, it.partsControl, i); // → yellow
                    } else if (k != 1) {
                        PartPick.click(f, m, it.partsControl, i); // → yellow
                        PartPick.click(f, m, it.partsControl, i); // → off
                    }
                    yel[i] = k == 2;
                    grn[i] = k == 1;
                    any |= k == 1 || k == 2;
                }
                if (!any) {
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
                        check(s1[i] == s0[i], "green changed the second impulse of " + i);
                    }
                }
                if (onlyYellow) {
                    check(b.strenth == str0, "yellow changed the main strength");
                    check(b.pauseStrenthPercent <= Math.min(100, b.strenth), "second strength above the limit");
                    check(b.pauseStrenthPercent >= ps0 || delta < 0, "second strength lowered by +");
                }
                // the slider: release at a random level
                int level = rnd.nextInt(101);
                PartStrength.setSelected(it, level);
                int seek = PartStrength.seekValue(it, 0);
                check(seek >= 0 && seek <= 75, "seek out of range " + seek);
            }
        }
        // the cycle itself
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
        check(PartPick.click(f, m, marks, 3) && marks[3] && !PartPick.isYellow(3), "1st tap green");
        check(PartPick.click(f, m, marks, 3) && marks[3] && PartPick.isYellow(3), "2nd tap yellow");
        check(PartPick.click(f, m, marks, 3) && !marks[3] && !PartPick.isYellow(3), "3rd tap off");
        b.activePause = false;
        check(!PartPick.click(f, m, marks, 4) && !PartPick.isYellow(4), "no second impulse: the original toggle");
        // 5 s without an action clears a mark, with or without the second impulse
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
            check(!marks[4], "no second impulse: the mark clears after 5 s");
            b.activePause = true;
            PartPick.click(f, m, marks, 6);
            PartPick.click(f, m, marks, 6);
            ((long[]) last.get(null))[6] = System.currentTimeMillis() - 5100L;
            tick.invoke(null, m.getItemList());
            check(!marks[6] && !PartPick.isYellow(6), "yellow clears after 5 s");
            b.activePause = false;
        } catch (Exception e) {
            check(false, "tick: " + e);
        }
        // own percents are dropped when they equal the main ones
        b.activePause = true;
        int[] same = b.strenthBean.buwei.clone();
        SecondParts.set(b, b.strenthBean.buwei, new int[] {1, 2, 3, 4, 5, 6, 7, 8, 9, 10});
        check(SecondParts.get(b) != null, "own percents kept");
        SecondParts.set(b, b.strenthBean.buwei, same);
        check(SecondParts.get(b) == null, "own percents equal to the main ones dropped");

        System.out.println("operations: " + ops + ", yellow + steps: " + yellowUp + " (exactly +1: " + exact + ", at the limit: " + capped + ")"
                + ", second impulse of others moved: " + secondShift + " (by more than 1: " + secondShiftBig + ")");
        System.out.println(fails == 0 ? "PartSim: OK" : "PartSim: " + fails + " FAILED");
        if (fails != 0) {
            System.exit(1);
        }
    }
}
