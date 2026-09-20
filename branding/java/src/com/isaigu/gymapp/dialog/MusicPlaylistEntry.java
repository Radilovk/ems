package com.isaigu.gymapp.dialog;

import android.net.Uri;

public final class MusicPlaylistEntry {
    public final Uri uri;
    public final String name;

    public MusicPlaylistEntry(Uri uri, String name) {
        this.uri = uri;
        this.name = name != null && name.length() > 0 ? name : uriToLabel(uri);
    }

    private static String uriToLabel(Uri uri) {
        if (uri == null) {
            return "";
        }
        String segment = uri.getLastPathSegment();
        return segment != null && segment.length() > 0 ? segment : uri.toString();
    }
}
