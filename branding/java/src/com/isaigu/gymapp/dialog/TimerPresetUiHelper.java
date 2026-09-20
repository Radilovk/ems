package com.isaigu.gymapp.dialog;

import android.app.Activity;
import android.content.DialogInterface;
import android.text.InputType;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.Toast;

import java.util.ArrayList;

/** Preset list / save / rename / delete for interval timer config. */
final class TimerPresetUiHelper {
    private static final int STR_PRESET_PICK = 0x7f0d0157;
    private static final int STR_PRESET_SAVE = 0x7f0d0158;
    private static final int STR_PRESET_RENAME = 0x7f0d0159;
    private static final int STR_PRESET_DELETE = 0x7f0d015a;
    private static final int STR_PRESET_NAME = 0x7f0d015b;
    private static final int STR_PRESET_NAME_HINT = 0x7f0d015c;
    private static final int STR_PRESET_SAVED = 0x7f0d015d;
    private static final int STR_PRESET_DELETED = 0x7f0d015e;
    private static final int STR_PRESET_DELETE_CONFIRM = 0x7f0d015f;
    private static final int STR_PRESET_EMPTY_NAME = 0x7f0d0160;
    private static final int STR_ERROR = 0x7f0d0128;
    private static final int SPINNER_ITEM_LAYOUT_ID = 0x7f0b007b;

    private static ArrayList<TimerPreset> presetList = new ArrayList<>();
    private static String selectedPresetId = "";
    private static boolean ignorePresetSpinner;

    private TimerPresetUiHelper() {}

    static void bind(
            Activity activity,
            Spinner spinner,
            View saveBtn,
            View editBtn,
            View deleteBtn,
            Runnable onPresetLoaded) {
        refreshPresetSpinner(activity, spinner);
        if (spinner != null) {
            spinner.setOnItemSelectedListener(new PresetSpinnerListener(onPresetLoaded));
        }
        if (saveBtn != null) {
            saveBtn.setOnClickListener(new SavePresetListener(activity, spinner, onPresetLoaded));
        }
        if (editBtn != null) {
            editBtn.setOnClickListener(new RenamePresetListener(activity, spinner, onPresetLoaded));
        }
        if (deleteBtn != null) {
            deleteBtn.setOnClickListener(new DeletePresetListener(activity, spinner, onPresetLoaded));
        }
    }

    static void refreshPresetSpinner(Activity activity, Spinner spinner) {
        if (activity == null || spinner == null) {
            return;
        }
        presetList = TimerPresetStorage.loadAll(activity);
        ArrayList<String> labels = new ArrayList<>();
        labels.add(activity.getString(STR_PRESET_PICK));
        for (int i = 0; i < presetList.size(); i++) {
            TimerPreset preset = presetList.get(i);
            labels.add(preset != null && preset.name != null ? preset.name : "?");
        }
        ArrayAdapter<String> adapter = new ArrayAdapter<String>(
                activity, SPINNER_ITEM_LAYOUT_ID, labels);
        adapter.setDropDownViewResource(SPINNER_ITEM_LAYOUT_ID);
        ignorePresetSpinner = true;
        spinner.setAdapter(adapter);
        int selection = 0;
        for (int i = 0; i < presetList.size(); i++) {
            if (selectedPresetId.equals(presetList.get(i).id)) {
                selection = i + 1;
                break;
            }
        }
        spinner.setSelection(selection);
        ignorePresetSpinner = false;
    }

    private static TimerPreset findSelectedPreset() {
        if (selectedPresetId == null || selectedPresetId.length() == 0) {
            return null;
        }
        for (int i = 0; i < presetList.size(); i++) {
            TimerPreset preset = presetList.get(i);
            if (preset != null && selectedPresetId.equals(preset.id)) {
                return preset;
            }
        }
        return null;
    }

    private static void promptName(
            Activity activity,
            int titleRes,
            String initial,
            NameCallback callback) {
        if (activity == null) {
            return;
        }
        EditText input = new EditText(activity);
        input.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_FLAG_CAP_SENTENCES);
        input.setSingleLine(true);
        if (initial != null) {
            input.setText(initial);
            input.setSelection(initial.length());
        }
        int pad = Math.round(activity.getResources().getDisplayMetrics().density * 12f);
        input.setPadding(pad, pad, pad, pad);
        new android.support.v7.app.AlertDialog.Builder(activity)
                .setTitle(activity.getString(titleRes))
                .setMessage(activity.getString(STR_PRESET_NAME_HINT))
                .setView(input)
                .setPositiveButton(
                        android.R.string.ok,
                        new NameOkListener(input, callback))
                .setNegativeButton(android.R.string.cancel, null)
                .show();
    }

    private interface NameCallback {
        void onName(String name);
    }

    private static final class PresetSpinnerListener
            implements android.widget.AdapterView.OnItemSelectedListener {
        private final Runnable onPresetLoaded;

        PresetSpinnerListener(Runnable onPresetLoaded) {
            this.onPresetLoaded = onPresetLoaded;
        }

        @Override
        public void onItemSelected(android.widget.AdapterView<?> parent, View view, int position, long id) {
            if (ignorePresetSpinner) {
                return;
            }
            if (position <= 0) {
                selectedPresetId = "";
                return;
            }
            int index = position - 1;
            if (index < 0 || index >= presetList.size()) {
                selectedPresetId = "";
                return;
            }
            TimerPreset preset = presetList.get(index);
            if (preset == null) {
                return;
            }
            selectedPresetId = preset.id;
            IntervalTimerHelper.applyPreset(preset);
            if (onPresetLoaded != null) {
                onPresetLoaded.run();
            }
        }

        @Override
        public void onNothingSelected(android.widget.AdapterView<?> parent) {
        }
    }

    private static final class SavePresetListener implements View.OnClickListener {
        private final Activity activity;
        private final Spinner spinner;
        private final Runnable onPresetLoaded;

        SavePresetListener(Activity activity, Spinner spinner, Runnable onPresetLoaded) {
            this.activity = activity;
            this.spinner = spinner;
            this.onPresetLoaded = onPresetLoaded;
        }

        @Override
        public void onClick(View v) {
            TimerPreset existing = findSelectedPreset();
            String initial = existing != null ? existing.name : "";
            promptName(
                    activity,
                    STR_PRESET_SAVE,
                    initial,
                    new SavePresetNameCallback(activity, spinner, existing, onPresetLoaded));
        }
    }

    private static final class RenamePresetListener implements View.OnClickListener {
        private final Activity activity;
        private final Spinner spinner;
        private final Runnable onPresetLoaded;

        RenamePresetListener(Activity activity, Spinner spinner, Runnable onPresetLoaded) {
            this.activity = activity;
            this.spinner = spinner;
            this.onPresetLoaded = onPresetLoaded;
        }

        @Override
        public void onClick(View v) {
            final TimerPreset existing = findSelectedPreset();
            if (existing == null) {
                Toast.makeText(activity, STR_ERROR, Toast.LENGTH_SHORT).show();
                return;
            }
            promptName(
                    activity,
                    STR_PRESET_RENAME,
                    existing.name,
                    new RenamePresetNameCallback(activity, spinner, existing, onPresetLoaded));
        }
    }

    private static final class DeletePresetListener implements View.OnClickListener {
        private final Activity activity;
        private final Spinner spinner;
        private final Runnable onPresetLoaded;

        DeletePresetListener(Activity activity, Spinner spinner, Runnable onPresetLoaded) {
            this.activity = activity;
            this.spinner = spinner;
            this.onPresetLoaded = onPresetLoaded;
        }

        @Override
        public void onClick(View v) {
            final TimerPreset existing = findSelectedPreset();
            if (existing == null) {
                Toast.makeText(activity, STR_ERROR, Toast.LENGTH_SHORT).show();
                return;
            }
            new android.support.v7.app.AlertDialog.Builder(activity)
                    .setMessage(activity.getString(STR_PRESET_DELETE_CONFIRM))
                    .setPositiveButton(
                            android.R.string.ok,
                            new DeleteConfirmListener(activity, existing, spinner, onPresetLoaded))
                    .setNegativeButton(android.R.string.cancel, null)
                    .show();
        }
    }

    private static final class NameOkListener implements DialogInterface.OnClickListener {
        private final EditText input;
        private final NameCallback callback;

        NameOkListener(EditText input, NameCallback callback) {
            this.input = input;
            this.callback = callback;
        }

        @Override
        public void onClick(DialogInterface dialog, int which) {
            if (callback == null || input == null) {
                return;
            }
            callback.onName(input.getText() != null ? input.getText().toString() : "");
        }
    }

    private static final class SavePresetNameCallback implements NameCallback {
        private final Activity activity;
        private final Spinner spinner;
        private final TimerPreset existing;
        private final Runnable onPresetLoaded;

        SavePresetNameCallback(
                Activity activity,
                Spinner spinner,
                TimerPreset existing,
                Runnable onPresetLoaded) {
            this.activity = activity;
            this.spinner = spinner;
            this.existing = existing;
            this.onPresetLoaded = onPresetLoaded;
        }

        @Override
        public void onName(String name) {
            if (name == null || name.trim().length() == 0) {
                Toast.makeText(activity, STR_PRESET_EMPTY_NAME, Toast.LENGTH_SHORT).show();
                return;
            }
            TimerPreset preset = IntervalTimerHelper.captureCurrentPreset(
                    existing != null ? existing.id : TimerPresetStorage.newId(),
                    name.trim());
            TimerPresetStorage.upsert(activity, preset);
            selectedPresetId = preset.id;
            refreshPresetSpinner(activity, spinner);
            Toast.makeText(activity, STR_PRESET_SAVED, Toast.LENGTH_SHORT).show();
            if (onPresetLoaded != null) {
                onPresetLoaded.run();
            }
        }
    }

    private static final class RenamePresetNameCallback implements NameCallback {
        private final Activity activity;
        private final Spinner spinner;
        private final TimerPreset existing;
        private final Runnable onPresetLoaded;

        RenamePresetNameCallback(
                Activity activity,
                Spinner spinner,
                TimerPreset existing,
                Runnable onPresetLoaded) {
            this.activity = activity;
            this.spinner = spinner;
            this.existing = existing;
            this.onPresetLoaded = onPresetLoaded;
        }

        @Override
        public void onName(String name) {
            if (name == null || name.trim().length() == 0) {
                Toast.makeText(activity, STR_PRESET_EMPTY_NAME, Toast.LENGTH_SHORT).show();
                return;
            }
            TimerPreset updated = existing.copy();
            updated.name = name.trim();
            TimerPresetStorage.upsert(activity, updated);
            selectedPresetId = updated.id;
            refreshPresetSpinner(activity, spinner);
            if (onPresetLoaded != null) {
                onPresetLoaded.run();
            }
        }
    }

    private static final class DeleteConfirmListener implements DialogInterface.OnClickListener {
        private final Activity activity;
        private final TimerPreset existing;
        private final Spinner spinner;
        private final Runnable onPresetLoaded;

        DeleteConfirmListener(
                Activity activity,
                TimerPreset existing,
                Spinner spinner,
                Runnable onPresetLoaded) {
            this.activity = activity;
            this.existing = existing;
            this.spinner = spinner;
            this.onPresetLoaded = onPresetLoaded;
        }

        @Override
        public void onClick(DialogInterface dialog, int which) {
            TimerPresetStorage.delete(activity, existing.id);
            selectedPresetId = "";
            refreshPresetSpinner(activity, spinner);
            Toast.makeText(activity, STR_PRESET_DELETED, Toast.LENGTH_SHORT).show();
            if (onPresetLoaded != null) {
                onPresetLoaded.run();
            }
        }
    }
}
