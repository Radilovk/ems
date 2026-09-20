package com.isaigu.gymapp.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.graphics.Typeface;
import android.text.InputType;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.Switch;
import android.widget.TextView;

import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.bean.TrainProgram;

import java.util.ArrayList;

/** Gear-dialog UI for segment program enable + block editor. */
public final class SegmentProgramUiHelper {
    private static final String BOUND_TAG = "segment_program_bound";

    static final int SWITCH_ID = 0x7f090250;
    static final int EDIT_BTN_ID = 0x7f090251;
    static final int SUMMARY_ID = 0x7f090252;

    private static final int STR_TITLE = 0x7f0d0140;
    private static final int STR_HINT = 0x7f0d0141;
    private static final int STR_EDIT = 0x7f0d0142;
    private static final int STR_SUMMARY = 0x7f0d0143;
    private static final int STR_BLOCK = 0x7f0d0144;
    private static final int STR_CYCLES = 0x7f0d0145;
    private static final int STR_MA = 0x7f0d0146;
    private static final int STR_HZ = 0x7f0d0147;
    private static final int STR_WIDTH = 0x7f0d0148;
    private static final int STR_ON = 0x7f0d0149;
    private static final int STR_OFF = 0x7f0d014a;
    private static final int STR_ADD = 0x7f0d014b;
    private static final int STR_REMOVE = 0x7f0d014c;
    private static final int STR_DONE = 0x7f0d014d;

    private SegmentProgramUiHelper() {}

    public static void bind(EditUserProgramDataDialog dialog, View root) {
        if (dialog == null || root == null) {
            return;
        }
        Switch enableSwitch = root.findViewById(SWITCH_ID);
        Button editBtn = root.findViewById(EDIT_BTN_ID);
        TextView summary = root.findViewById(SUMMARY_ID);
        if (enableSwitch == null || editBtn == null || summary == null) {
            return;
        }
        Object tag = root.getTag();
        if (BOUND_TAG.equals(tag)) {
            refresh(dialog, enableSwitch, editBtn, summary);
            return;
        }
        root.setTag(BOUND_TAG);
        enableSwitch.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                persist(dialog, enableSwitch, summary);
                editBtn.setEnabled(isChecked);
            }
        });
        editBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                openEditor(dialog, enableSwitch, summary);
            }
        });
        refresh(dialog, enableSwitch, editBtn, summary);
    }

    public static void refresh(EditUserProgramDataDialog dialog) {
        Context ctx = dialog.getContext();
        if (ctx == null) {
            return;
        }
    }

    private static void refresh(EditUserProgramDataDialog dialog, Switch enableSwitch,
                                Button editBtn, TextView summary) {
        TrainProgram program = dialog.getTrainProgram();
        SegmentProgramEntry entry = SegmentProgramStorage.loadForProgram(program);
        enableSwitch.setOnCheckedChangeListener(null);
        enableSwitch.setChecked(entry.enabled);
        enableSwitch.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                persist(dialog, enableSwitch, summary);
                editBtn.setEnabled(isChecked);
            }
        });
        editBtn.setEnabled(entry.enabled);
        updateSummary(summary, entry);
    }

    private static void updateSummary(TextView summary, SegmentProgramEntry entry) {
        Context ctx = summary.getContext();
        int count = entry.segments != null ? entry.segments.size() : 0;
        summary.setText(ctx.getString(STR_SUMMARY, count));
    }

    private static void persist(EditUserProgramDataDialog dialog, Switch enableSwitch, TextView summary) {
        TrainProgram program = dialog.getTrainProgram();
        if (program == null) {
            return;
        }
        SegmentProgramEntry entry = SegmentProgramStorage.loadForProgram(program);
        entry.enabled = enableSwitch.isChecked();
        if (entry.segments == null) {
            entry.segments = new ArrayList<>();
        }
        SegmentProgramStorage.saveEntry(program, entry);
        updateSummary(summary, entry);
    }

    private static void openEditor(EditUserProgramDataDialog dialog, Switch enableSwitch, TextView summary) {
        Context ctx = dialog.getContext();
        if (ctx == null) {
            return;
        }
        TrainProgram program = dialog.getTrainProgram();
        SegmentProgramEntry entry = SegmentProgramStorage.loadForProgram(program);
        if (entry.segments == null) {
            entry.segments = new ArrayList<>();
        }
        if (entry.segments.isEmpty()) {
            ProgramDataBean bean = program != null ? program.matchProgram() : null;
            entry.segments.add(ProgramSegment.fromBean(bean));
        }

        ScrollView scroll = new ScrollView(ctx);
        LinearLayout blocksRoot = new LinearLayout(ctx);
        blocksRoot.setOrientation(LinearLayout.VERTICAL);
        int pad = dp(ctx, 8);
        blocksRoot.setPadding(pad, pad, pad, pad);
        scroll.addView(blocksRoot, new ViewGroup.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));

        Runnable rebuild = new Runnable() {
            @Override
            public void run() {
                blocksRoot.removeAllViews();
                for (int i = 0; i < entry.segments.size(); i++) {
                    blocksRoot.addView(buildBlockRow(ctx, blocksRoot, entry, i, this));
                }
                Button addBtn = new Button(ctx);
                addBtn.setText(STR_ADD);
                addBtn.setAllCaps(false);
                addBtn.setOnClickListener(v -> {
                    ProgramDataBean bean = program != null ? program.matchProgram() : null;
                    ProgramSegment seg = ProgramSegment.fromBean(bean);
                    if (!entry.segments.isEmpty()) {
                        ProgramSegment last = entry.segments.get(entry.segments.size() - 1);
                        seg.strenth = last.strenth;
                        seg.hz = last.hz;
                        seg.pulseWidth = last.pulseWidth;
                        seg.pulseContinue = last.pulseContinue;
                        seg.pulsePause = last.pulsePause;
                    }
                    entry.segments.add(seg);
                    run();
                });
                blocksRoot.addView(addBtn);
            }
        };
        rebuild.run();

        new AlertDialog.Builder(ctx)
                .setTitle(STR_TITLE)
                .setView(scroll)
                .setPositiveButton(STR_DONE, (d, w) -> {
                    collectBlocks(blocksRoot, entry);
                    entry.enabled = enableSwitch.isChecked();
                    SegmentProgramStorage.saveEntry(program, entry);
                    updateSummary(summary, entry);
                })
                .setNegativeButton(android.R.string.cancel, null)
                .show();
    }

    private static void collectBlocks(LinearLayout blocksRoot, SegmentProgramEntry entry) {
        entry.segments.clear();
        int childCount = blocksRoot.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View child = blocksRoot.getChildAt(i);
            Object tag = child.getTag();
            if (tag instanceof BlockHolder) {
                entry.segments.add(((BlockHolder) tag).toSegment());
            }
        }
    }

    private static View buildBlockRow(Context ctx, LinearLayout parent, SegmentProgramEntry entry,
                                      int index, Runnable rebuild) {
        ProgramSegment seg = entry.segments.get(index);
        LinearLayout row = new LinearLayout(ctx);
        row.setOrientation(LinearLayout.VERTICAL);
        row.setPadding(0, dp(ctx, 6), 0, dp(ctx, 10));

        TextView title = new TextView(ctx);
        title.setText(ctx.getString(STR_BLOCK, index + 1));
        title.setTextSize(16);
        title.setTypeface(Typeface.DEFAULT_BOLD);
        row.addView(title);

        BlockHolder holder = new BlockHolder(seg);
        row.setTag(holder);

        holder.cycles = fieldRow(ctx, row, STR_CYCLES, String.valueOf(seg.cycles));
        holder.strenth = fieldRow(ctx, row, STR_MA, String.valueOf(seg.strenth));
        holder.hz = fieldRow(ctx, row, STR_HZ, String.valueOf(seg.hz));
        holder.pulseWidth = fieldRow(ctx, row, STR_WIDTH, String.valueOf(seg.pulseWidth));
        holder.pulseContinue = fieldRow(ctx, row, STR_ON, String.valueOf(seg.pulseContinue));
        holder.pulsePause = fieldRow(ctx, row, STR_OFF, String.valueOf(seg.pulsePause));

        if (entry.segments.size() > 1) {
            Button remove = new Button(ctx);
            remove.setText(STR_REMOVE);
            remove.setAllCaps(false);
            remove.setOnClickListener(v -> {
                entry.segments.remove(index);
                rebuild.run();
            });
            row.addView(remove);
        }

        View divider = new View(ctx);
        divider.setBackgroundColor(0xFF888888);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 1);
        lp.topMargin = dp(ctx, 4);
        row.addView(divider, lp);
        return row;
    }

    private static EditText fieldRow(Context ctx, LinearLayout row, int labelRes, String value) {
        LinearLayout line = new LinearLayout(ctx);
        line.setOrientation(LinearLayout.HORIZONTAL);
        line.setGravity(Gravity.CENTER_VERTICAL);
        TextView label = new TextView(ctx);
        label.setText(labelRes);
        label.setTextSize(14);
        LinearLayout.LayoutParams labelLp = new LinearLayout.LayoutParams(dp(ctx, 110),
                ViewGroup.LayoutParams.WRAP_CONTENT);
        line.addView(label, labelLp);
        EditText input = new EditText(ctx);
        input.setInputType(InputType.TYPE_CLASS_NUMBER);
        input.setText(value);
        input.setSelectAllOnFocus(true);
        line.addView(input, new LinearLayout.LayoutParams(
                0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        row.addView(line);
        return input;
    }

    private static int dp(Context ctx, int dp) {
        return Math.round(dp * ctx.getResources().getDisplayMetrics().density);
    }

    private static final class BlockHolder {
        EditText cycles;
        EditText strenth;
        EditText hz;
        EditText pulseWidth;
        EditText pulseContinue;
        EditText pulsePause;

        BlockHolder(ProgramSegment seg) {}

        ProgramSegment toSegment() {
            ProgramSegment seg = new ProgramSegment();
            seg.cycles = parseInt(cycles, 1);
            seg.strenth = parseInt(strenth, 0);
            seg.hz = parseInt(hz, 1);
            seg.pulseWidth = parseInt(pulseWidth, 0);
            seg.pulseContinue = parseInt(pulseContinue, 1);
            seg.pulsePause = parseInt(pulsePause, 1);
            if (seg.cycles < 1) {
                seg.cycles = 1;
            }
            return seg;
        }

        private static int parseInt(EditText field, int fallback) {
            if (field == null) {
                return fallback;
            }
            try {
                String text = field.getText() != null ? field.getText().toString().trim() : "";
                if (text.isEmpty()) {
                    return fallback;
                }
                return Integer.parseInt(text);
            } catch (NumberFormatException e) {
                return fallback;
            }
        }
    }
}
