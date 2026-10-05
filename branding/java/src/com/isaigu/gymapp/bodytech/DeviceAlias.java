package com.isaigu.gymapp.bodytech;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.text.InputType;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;

import com.isaigu.gymapp.widget.XemsGuard;

/**
 * Own names for the suits in the device list (owner, 1.1.353): long-press a row (or tap its "i") → a name of one's own.
 * Kept on the tablet only (SharedPreferences "xems_device_alias", by MAC) — never sent anywhere. Empty = the suit's
 * own name. Hook: DeviceAdapter.onBindViewHolder end (scripts/apply-device-alias.py), both connect dialogs.
 */
public final class DeviceAlias {
    private static final String PREFS = "xems_device_alias";
    private static final int MAX = 24;

    private DeviceAlias() {}

    /** The name to show: the owner's, else the suit's own. */
    public static String label(Context c, String mac, String name) {
        String a = get(c, mac);
        return a != null ? a : name;
    }

    private static String get(Context c, String mac) {
        try {
            if (c == null || mac == null) return null;
            String a = c.getSharedPreferences(PREFS, Context.MODE_PRIVATE).getString(mac.toUpperCase(), null);
            return a == null || a.trim().length() == 0 ? null : a;
        } catch (Throwable t) {
            return null;
        }
    }

    private static void put(Context c, String mac, String alias) {
        SharedPreferences.Editor e = c.getSharedPreferences(PREFS, Context.MODE_PRIVATE).edit();
        String k = mac.toUpperCase();
        if (alias == null || alias.trim().length() == 0) e.remove(k);
        else e.putString(k, alias.trim());
        e.apply();
    }

    /** onBindViewHolder end: show the alias; long-press the row (or tap the "i" at its end) renames. */
    public static void attach(View row, TextView nameView, String mac, String name) {
        try {
            if (row == null || nameView == null || mac == null) return;
            nameView.setText(label(row.getContext(), mac, name));
            Ask ask = new Ask(nameView, mac, name);
            row.setOnLongClickListener(ask);
            if (row instanceof ViewGroup && ((ViewGroup) row).getChildCount() > 2) {
                View end = ((ViewGroup) row).getChildAt(2);
                if (end instanceof ViewGroup && ((ViewGroup) end).getChildCount() > 0) {
                    ((ViewGroup) end).getChildAt(0).setOnClickListener(ask);
                }
            }
        } catch (Throwable t) {
            XemsGuard.report("DeviceAlias.attach", t);
        }
    }

    static final class Ask implements View.OnLongClickListener, View.OnClickListener {
        final TextView nameView;
        final String mac;
        final String name;

        Ask(TextView nameView, String mac, String name) {
            this.nameView = nameView;
            this.mac = mac;
            this.name = name;
        }

        @Override
        public boolean onLongClick(View v) {
            show();
            return true;
        }

        @Override
        public void onClick(View v) {
            show();
        }

        void show() {
            try {
                Context c = nameView.getContext();
                EditText in = new EditText(c);
                in.setInputType(InputType.TYPE_CLASS_TEXT);
                in.setSingleLine(true);
                in.setHint(name == null ? "" : name);
                String cur = get(c, mac);
                if (cur != null) {
                    in.setText(cur);
                    in.setSelection(cur.length());
                }
                in.setFilters(new android.text.InputFilter[] {new android.text.InputFilter.LengthFilter(MAX)});
                AlertDialog.Builder b = new AlertDialog.Builder(c);
                b.setTitle("Име на устройството");
                b.setMessage(mac + " — остава само на този таблет");
                b.setView(in);
                b.setPositiveButton("Запази", new Save(this, in, false));
                b.setNeutralButton("Оригиналното", new Save(this, in, true));
                b.setNegativeButton("Отказ", null);
                b.show();
            } catch (Throwable t) {
                XemsGuard.report("DeviceAlias.show", t);
            }
        }
    }

    static final class Save implements DialogInterface.OnClickListener {
        final Ask a;
        final EditText in;
        final boolean reset;

        Save(Ask a, EditText in, boolean reset) {
            this.a = a;
            this.in = in;
            this.reset = reset;
        }

        @Override
        public void onClick(DialogInterface d, int which) {
            try {
                Context c = a.nameView.getContext();
                put(c, a.mac, reset ? null : in.getText().toString());
                a.nameView.setText(label(c, a.mac, a.name));
            } catch (Throwable t) {
                XemsGuard.report("DeviceAlias.save", t);
            }
        }
    }
}
