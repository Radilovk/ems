package com.isaigu.gymapp.dialog;

import android.app.Activity;
import android.content.Context;
import android.graphics.Typeface;
import android.text.InputType;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.train.model.TrainItem;

import java.util.ArrayList;

/** Block list editor opened from interval timer config. */
final class BlockProgramEditor {
    private static final int STR_BLOCK = 0x7f0d0144;
    private static final int STR_CYCLES = 0x7f0d0145;
    private static final int STR_MA = 0x7f0d0146;
    private static final int STR_HZ = 0x7f0d0147;
    private static final int STR_WIDTH = 0x7f0d0148;
    private static final int STR_ADD = 0x7f0d014b;
    private static final int STR_REMOVE = 0x7f0d014c;
    private static final int STR_DONE = 0x7f0d014d;
    private static final int STR_TITLE = 0x7f0d0140;

    private BlockProgramEditor() {}

    static void show(Activity activity, ArrayList<ProgramSegment> blocks, TrainItem seedItem, Runnable onDone) {
        if (activity == null) {
            return;
        }
        final ArrayList<ProgramSegment> targetBlocks;
        if (blocks == null) {
            targetBlocks = new ArrayList<>();
        } else {
            targetBlocks = blocks;
        }
        if (targetBlocks.isEmpty()) {
            ProgramDataBean bean = null;
            if (seedItem != null && seedItem.getTrainProgram() != null) {
                bean = seedItem.getTrainProgram().matchProgram();
            }
            targetBlocks.add(ProgramSegment.fromBean(bean));
        }

        ScrollView scroll = new ScrollView(activity);
        LinearLayout root = new LinearLayout(activity);
        root.setOrientation(LinearLayout.VERTICAL);
        int pad = dp(activity, 8);
        root.setPadding(pad, pad, pad, pad);
        scroll.addView(root, new ViewGroup.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));

        ArrayList<ProgramSegment> working = new ArrayList<>(targetBlocks);
        RebuildUi rebuildUi = new RebuildUi(activity, root, working, seedItem);
        rebuildUi.run();

        new android.support.v7.app.AlertDialog.Builder(activity)
                .setTitle(activity.getString(STR_TITLE))
                .setView(scroll)
                .setPositiveButton(STR_DONE, new DoneClickListener(root, working, targetBlocks, onDone))
                .setNegativeButton(android.R.string.cancel, null)
                .show();
    }

    private static void collect(LinearLayout root, ArrayList<ProgramSegment> target) {
        target.clear();
        for (int i = 0; i < root.getChildCount(); i++) {
            View child = root.getChildAt(i);
            if (child.getTag() instanceof RowHolder) {
                target.add(((RowHolder) child.getTag()).toSegment());
            }
        }
    }

    private static View buildRow(
            Context ctx, LinearLayout root, ArrayList<ProgramSegment> working, int index, Runnable rebuild) {
        ProgramSegment seg = working.get(index);
        LinearLayout row = new LinearLayout(ctx);
        row.setOrientation(LinearLayout.VERTICAL);
        row.setPadding(0, dp(ctx, 6), 0, dp(ctx, 10));

        TextView title = new TextView(ctx);
        title.setText(ctx.getString(STR_BLOCK, index + 1));
        title.setTextSize(16);
        title.setTypeface(Typeface.DEFAULT_BOLD);
        row.addView(title);

        RowHolder holder = new RowHolder();
        row.setTag(holder);
        holder.cycles = field(ctx, row, STR_CYCLES, String.valueOf(seg.cycles));
        holder.strenth = field(ctx, row, STR_MA, String.valueOf(seg.strenth));
        holder.hz = field(ctx, row, STR_HZ, String.valueOf(seg.hz));
        holder.pulseWidth = field(ctx, row, STR_WIDTH, String.valueOf(seg.pulseWidth));

        if (working.size() > 1) {
            Button remove = new Button(ctx);
            remove.setText(STR_REMOVE);
            remove.setAllCaps(false);
            remove.setOnClickListener(new RemoveBlockListener(working, index, rebuild));
            row.addView(remove);
        }
        return row;
    }

    private static EditText field(Context ctx, LinearLayout row, int labelRes, String value) {
        LinearLayout line = new LinearLayout(ctx);
        line.setOrientation(LinearLayout.HORIZONTAL);
        line.setGravity(Gravity.CENTER_VERTICAL);
        TextView label = new TextView(ctx);
        label.setText(labelRes);
        label.setTextSize(14);
        line.addView(label, new LinearLayout.LayoutParams(dp(ctx, 110), ViewGroup.LayoutParams.WRAP_CONTENT));
        EditText input = new EditText(ctx);
        input.setInputType(InputType.TYPE_CLASS_NUMBER);
        input.setText(value);
        input.setSelectAllOnFocus(true);
        line.addView(input, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        row.addView(line);
        return input;
    }

    private static int dp(Context ctx, int dp) {
        return Math.round(dp * ctx.getResources().getDisplayMetrics().density);
    }

    private static final class DoneClickListener implements android.content.DialogInterface.OnClickListener {
        private final LinearLayout root;
        private final ArrayList<ProgramSegment> working;
        private final ArrayList<ProgramSegment> targetBlocks;
        private final Runnable onDone;

        DoneClickListener(
                LinearLayout root,
                ArrayList<ProgramSegment> working,
                ArrayList<ProgramSegment> targetBlocks,
                Runnable onDone) {
            this.root = root;
            this.working = working;
            this.targetBlocks = targetBlocks;
            this.onDone = onDone;
        }

        @Override
        public void onClick(android.content.DialogInterface d, int which) {
            collect(root, working);
            targetBlocks.clear();
            targetBlocks.addAll(working);
            if (onDone != null) {
                onDone.run();
            }
        }
    }

    private static final class RemoveBlockListener implements View.OnClickListener {
        private final ArrayList<ProgramSegment> working;
        private final int index;
        private final Runnable rebuild;

        RemoveBlockListener(ArrayList<ProgramSegment> working, int index, Runnable rebuild) {
            this.working = working;
            this.index = index;
            this.rebuild = rebuild;
        }

        @Override
        public void onClick(View v) {
            working.remove(index);
            rebuild.run();
        }
    }

    private static final class RebuildUi implements Runnable {
        private final Activity activity;
        private final LinearLayout root;
        private final ArrayList<ProgramSegment> working;
        private final TrainItem seedItem;

        RebuildUi(Activity activity, LinearLayout root, ArrayList<ProgramSegment> working, TrainItem seedItem) {
            this.activity = activity;
            this.root = root;
            this.working = working;
            this.seedItem = seedItem;
        }

        @Override
        public void run() {
            root.removeAllViews();
            for (int i = 0; i < working.size(); i++) {
                root.addView(buildRow(activity, root, working, i, this));
            }
            Button add = new Button(activity);
            add.setText(STR_ADD);
            add.setAllCaps(false);
            add.setOnClickListener(new AddBlockListener(working, seedItem, this));
            root.addView(add);
        }
    }

    private static final class AddBlockListener implements View.OnClickListener {
        private final ArrayList<ProgramSegment> working;
        private final TrainItem seedItem;
        private final RebuildUi rebuildUi;

        AddBlockListener(ArrayList<ProgramSegment> working, TrainItem seedItem, RebuildUi rebuildUi) {
            this.working = working;
            this.seedItem = seedItem;
            this.rebuildUi = rebuildUi;
        }

        @Override
        public void onClick(View v) {
            ProgramSegment seg = ProgramSegment.fromBean(
                    seedItem != null && seedItem.getTrainProgram() != null
                            ? seedItem.getTrainProgram().matchProgram()
                            : null);
            if (!working.isEmpty()) {
                ProgramSegment last = working.get(working.size() - 1);
                seg.strenth = last.strenth;
                seg.hz = last.hz;
                seg.pulseWidth = last.pulseWidth;
            }
            working.add(seg);
            rebuildUi.run();
        }
    }

    private static final class RowHolder {
        EditText cycles;
        EditText strenth;
        EditText hz;
        EditText pulseWidth;

        ProgramSegment toSegment() {
            ProgramSegment seg = new ProgramSegment();
            seg.cycles = parse(cycles, 1);
            seg.strenth = parse(strenth, 0);
            seg.hz = parse(hz, 1);
            seg.pulseWidth = parse(pulseWidth, 0);
            if (seg.cycles < 1) {
                seg.cycles = 1;
            }
            return seg;
        }

        private static int parse(EditText field, int fallback) {
            try {
                String text = field.getText() != null ? field.getText().toString().trim() : "";
                if (text.length() == 0) {
                    return fallback;
                }
                return Integer.parseInt(text);
            } catch (NumberFormatException e) {
                return fallback;
            }
        }
    }
}
