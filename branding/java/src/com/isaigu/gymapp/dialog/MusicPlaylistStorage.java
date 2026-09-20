package com.isaigu.gymapp.dialog;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;

import java.util.ArrayList;
import java.util.List;

/** Persists playlist URIs between sessions. */
public final class MusicPlaylistStorage {
    private static final String PREFS = "music_playlist";
    private static final String KEY_ENTRIES = "entries";

    private MusicPlaylistStorage() {
    }

    public static List<MusicPlaylistEntry> load(Context context) {
        ArrayList<MusicPlaylistEntry> result = new ArrayList<MusicPlaylistEntry>();
        if (context == null) {
            return result;
        }
        SharedPreferences prefs = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
        String raw = prefs.getString(KEY_ENTRIES, "");
        if (raw == null || raw.length() == 0) {
            return result;
        }
        String[] lines = raw.split("\n");
        for (int i = 0; i < lines.length; i++) {
            String line = lines[i].trim();
            if (line.length() == 0) {
                continue;
            }
            int tab = line.indexOf('\t');
            String uriStr = tab >= 0 ? line.substring(0, tab) : line;
            String name = tab >= 0 && tab + 1 < line.length() ? line.substring(tab + 1) : null;
            try {
                Uri uri = Uri.parse(uriStr);
                if (uri != null) {
                    result.add(new MusicPlaylistEntry(uri, name));
                }
            } catch (Throwable ignored) {
            }
        }
        return result;
    }

    public static void save(Context context, List<MusicPlaylistEntry> entries) {
        if (context == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        if (entries != null) {
            for (int i = 0; i < entries.size(); i++) {
                MusicPlaylistEntry entry = entries.get(i);
                if (entry == null || entry.uri == null) {
                    continue;
                }
                if (sb.length() > 0) {
                    sb.append('\n');
                }
                sb.append(entry.uri.toString());
                if (entry.name != null && entry.name.length() > 0) {
                    sb.append('\t').append(entry.name.replace('\n', ' ').replace('\t', ' '));
                }
            }
        }
        context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
                .edit()
                .putString(KEY_ENTRIES, sb.toString())
                .apply();
    }
}
