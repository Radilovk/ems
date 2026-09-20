package com.isaigu.gymapp.dialog;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;

import java.util.ArrayList;

/** Persists global block program in interval_timer SharedPreferences. */
final class BlockProgramStorage {
    private static final String PREFS = "interval_timer";
    private static final String KEY_BLOCK_MODE = "block_program_mode";
    private static final String KEY_REPEAT = "block_program_repeat";
    private static final String KEY_BLOCKS = "block_program_blocks";

    private BlockProgramStorage() {}

    static boolean loadBlockMode(Context context) {
        return prefs(context).getBoolean(KEY_BLOCK_MODE, false);
    }

    static boolean loadRepeat(Context context) {
        return prefs(context).getBoolean(KEY_REPEAT, false);
    }

    static ArrayList<ProgramSegment> loadBlocks(Context context) {
        String raw = prefs(context).getString(KEY_BLOCKS, "");
        ArrayList<ProgramSegment> blocks = new ArrayList<>();
        if (raw == null || raw.length() == 0) {
            return blocks;
        }
        String[] tokens = raw.split("\\|");
        for (int i = 0; i < tokens.length; i++) {
            if (tokens[i].trim().length() == 0) {
                continue;
            }
            blocks.add(ProgramSegment.deserialize(tokens[i]));
        }
        return blocks;
    }

    static void save(Context context, boolean blockMode, boolean repeat, ArrayList<ProgramSegment> blocks) {
        if (context == null) {
            return;
        }
        SharedPreferences.Editor editor = prefs(context).edit();
        editor.putBoolean(KEY_BLOCK_MODE, blockMode);
        editor.putBoolean(KEY_REPEAT, repeat);
        editor.putString(KEY_BLOCKS, serializeBlocks(blocks));
        editor.apply();
    }

    static String serializeBlocks(ArrayList<ProgramSegment> blocks) {
        if (blocks == null || blocks.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < blocks.size(); i++) {
            if (i > 0) {
                sb.append('|');
            }
            sb.append(blocks.get(i).serialize());
        }
        return sb.toString();
    }

    private static SharedPreferences prefs(Context context) {
        Activity activity = context instanceof Activity ? (Activity) context : null;
        if (activity == null) {
            return context.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
        }
        return activity.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }
}
