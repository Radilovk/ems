package com.isaigu.gymapp.dialog;

import android.app.Activity;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.widget.XemsUi;

import java.util.ArrayList;

/**
 * Block list editor (opened from the interval timer): one card per block with steppers for
 * cycles, strength, frequency and pulse width (hold = fast), duplicate / remove, live total.
 * Changes apply on "Done"; ✕ discards them.
 */
final class BlockProgramEditor {
    private static final int STR_TITLE = 0x7f0d0140;

    private BlockProgramEditor() {}

    static void show(final Activity activity, final ArrayList<ProgramSegment> blocks, final TrainItem seedItem,
            final Runnable onDone) {
        if (activity == null) {
            return;
        }
        final ArrayList<ProgramSegment> target = blocks != null ? blocks : new ArrayList<ProgramSegment>();
        final ArrayList<ProgramSegment> working = new ArrayList<>();
        for (ProgramSegment s : target) {
            working.add(ProgramSegment.deserialize(s.serialize()));
        }
        if (working.isEmpty()) {
            working.add(ProgramSegment.fromBean(seedBean(seedItem)));
        }
        final int[] onOff = onOff(seedItem);
        final XemsUi.Shell sheet = XemsUi.shell(activity, activity.getString(STR_TITLE),
                IntervalTimerHelper.tr("Сила, честота и ширина се сменят автоматично по блокове",
                        "Strength, frequency and width change automatically per block"), 600);
        sheet.badge.setVisibility(View.VISIBLE);

        final Runnable[] rebuild = new Runnable[1];
        rebuild[0] = new Runnable() {
            @Override
            public void run() {
                sheet.body.removeAllViews();
                for (int i = 0; i < working.size(); i++) {
                    sheet.body.addView(blockCard(activity, working, i, onOff, rebuild[0], sheet),
                            XemsUi.matchWrap(activity, i == 0 ? 4 : 12));
                }
                TextView add = XemsUi.button(activity, IntervalTimerHelper.tr("+ Добави блок", "+ Add block"),
                        XemsUi.SECONDARY);
                add.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        ProgramSegment seg = ProgramSegment.fromBean(seedBean(seedItem));
                        if (!working.isEmpty()) {
                            seg = ProgramSegment.deserialize(working.get(working.size() - 1).serialize());
                        }
                        working.add(seg);
                        rebuild[0].run();
                        sheet.scroll.post(new Runnable() {
                            @Override
                            public void run() {
                                sheet.scroll.fullScroll(View.FOCUS_DOWN);
                            }
                        });
                    }
                });
                sheet.body.addView(add, XemsUi.matchWrap(activity, 14));
                updateTotal(sheet, working, onOff);
            }
        };
        rebuild[0].run();

        TextView cancel = XemsUi.button(activity, IntervalTimerHelper.tr("Откажи", "Cancel"), XemsUi.GHOST);
        cancel.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                sheet.dialog.dismiss();
            }
        });
        TextView done = XemsUi.button(activity, IntervalTimerHelper.tr("Готово", "Done"), XemsUi.PRIMARY);
        done.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                target.clear();
                target.addAll(working);
                sheet.dialog.dismiss();
                if (onDone != null) {
                    onDone.run();
                }
            }
        });
        sheet.footer.addView(cancel);
        sheet.footer.addView(XemsUi.spacer(activity));
        sheet.footer.addView(done);
        sheet.dialog.show();
        XemsUi.fitHeight(activity, sheet, 0.9f);
    }

    private static void updateTotal(XemsUi.Shell sheet, ArrayList<ProgramSegment> working, int[] onOff) {
        int sec = BlockProgramRunner.computeSequenceSeconds(working, onOff[0], onOff[1]);
        XemsUi.setBadge(sheet.badge, working.size() + IntervalTimerHelper.tr(" бл. · ", " bl. · ")
                + String.format("%d:%02d", sec / 60, sec % 60), XemsUi.GO_TEXT);
    }

    private static View blockCard(final Activity a, final ArrayList<ProgramSegment> working, final int index,
            final int[] onOff, final Runnable rebuild, final XemsUi.Shell sheet) {
        final ProgramSegment seg = working.get(index);
        LinearLayout card = XemsUi.card(a);
        LinearLayout head = XemsUi.horizontal(a);
        TextView num = XemsUi.text(a, String.valueOf(index + 1), 15, XemsUi.ON_ACCENT, true);
        num.setGravity(Gravity.CENTER);
        num.setBackgroundDrawable(XemsUi.rounded(XemsUi.ACCENT, XemsUi.dp(a, 14), 0, 0));
        head.addView(num, new LinearLayout.LayoutParams(XemsUi.dp(a, 28), XemsUi.dp(a, 28)));
        final TextView title = XemsUi.text(a, "", 15, XemsUi.TEXT, true);
        title.setPadding(XemsUi.dp(a, 12), 0, 0, 0);
        head.addView(title, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        TextView dup = XemsUi.iconButton(a, "⧉", XemsUi.SURFACE, XemsUi.TEXT, 36);
        dup.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                working.add(index + 1, ProgramSegment.deserialize(seg.serialize()));
                rebuild.run();
            }
        });
        head.addView(dup);
        if (working.size() > 1) {
            TextView del = XemsUi.iconButton(a, "✕", XemsUi.SURFACE, XemsUi.DANGER, 36);
            del.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    working.remove(index);
                    rebuild.run();
                }
            });
            LinearLayout.LayoutParams dl = new LinearLayout.LayoutParams(XemsUi.dp(a, 36), XemsUi.dp(a, 36));
            dl.leftMargin = XemsUi.dp(a, 8);
            head.addView(del, dl);
        }
        card.addView(head);

        final Runnable refreshTitle = new Runnable() {
            @Override
            public void run() {
                int s = seg.cycles * (onOff[0] + onOff[1]);
                title.setText(seg.cycles + IntervalTimerHelper.tr(" цикъла · ", " cycles · ")
                        + String.format("%d:%02d", s / 60, s % 60));
                updateTotal(sheet, working, onOff);
            }
        };
        refreshTitle.run();

        LinearLayout r1 = XemsUi.horizontal(a);
        r1.addView(field(a, IntervalTimerHelper.tr("Цикли", "Cycles"), "", seg, 0, refreshTitle),
                new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        r1.addView(field(a, IntervalTimerHelper.tr("Сила", "Strength"), "%", seg, 1, refreshTitle),
                XemsUi.weight(1f, 12, a));
        card.addView(r1, XemsUi.matchWrap(a, 12));
        LinearLayout r2 = XemsUi.horizontal(a);
        r2.addView(field(a, IntervalTimerHelper.tr("Честота", "Frequency"), "Hz", seg, 2, refreshTitle),
                new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        r2.addView(field(a, IntervalTimerHelper.tr("Ширина", "Width"), "µs", seg, 3, refreshTitle),
                XemsUi.weight(1f, 12, a));
        card.addView(r2, XemsUi.matchWrap(a, 10));
        return card;
    }

    /** which: 0 cycles 1..30, 1 strength 0..100, 2 Hz 1..100 (5 above 20), 3 width 0..500 step 10. */
    private static View field(Activity a, String label, final String unit, final ProgramSegment seg, final int which,
            final Runnable changed) {
        LinearLayout col = XemsUi.vertical(a);
        col.addView(XemsUi.label(a, label));
        final XemsUi.Stepper st = XemsUi.stepper(a, String.valueOf(get(seg, which)), unit, 22, null);
        XemsUi.OnStep step = new XemsUi.OnStep() {
            @Override
            public void onStep(int d) {
                set(seg, which, d);
                st.set(String.valueOf(get(seg, which)), unit);
                changed.run();
            }
        };
        XemsUi.repeatOnHold(st.view.getChildAt(0), step, -1);
        XemsUi.repeatOnHold(st.view.getChildAt(2), step, +1);
        col.addView(st.view);
        return col;
    }

    private static int get(ProgramSegment s, int which) {
        switch (which) {
            case 0: return s.cycles;
            case 1: return s.strenth;
            case 2: return s.hz;
            default: return s.pulseWidth;
        }
    }

    private static void set(ProgramSegment s, int which, int d) {
        switch (which) {
            case 0:
                s.cycles = clamp(s.cycles + d, 1, 30);
                break;
            case 1:
                s.strenth = clamp(s.strenth + d, 0, 100);
                break;
            case 2:
                s.hz = clamp(s.hz + d * (s.hz + (d > 0 ? 0 : -1) >= 20 ? 5 : 1), 1, 100);
                break;
            default:
                s.pulseWidth = clamp(s.pulseWidth + d * 10, 0, 500);
                break;
        }
    }

    private static int clamp(int v, int lo, int hi) {
        return v < lo ? lo : v > hi ? hi : v;
    }

    private static ProgramDataBean seedBean(TrainItem seed) {
        return seed != null && seed.getTrainProgram() != null ? seed.getTrainProgram().matchProgram() : null;
    }

    private static int[] onOff(TrainItem seed) {
        ProgramDataBean b = seedBean(seed);
        int on = b != null && b.pulseContinue > 0 ? b.pulseContinue : 4;
        int off = b != null && b.pulsePause > 0 ? b.pulsePause : 4;
        return new int[] {on, off};
    }
}
