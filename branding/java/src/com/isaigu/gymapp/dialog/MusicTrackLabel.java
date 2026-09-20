package com.isaigu.gymapp.dialog;

import android.content.Context;
import android.database.Cursor;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.provider.OpenableColumns;

import java.net.URLDecoder;

/** Resolve a human-readable track title from metadata tags or file name. */
public final class MusicTrackLabel {
    private MusicTrackLabel() {
    }

    public static String resolve(Context context, Uri uri) {
        if (uri == null) {
            return "";
        }
        String fromMeta = readMetadata(context, uri);
        if (fromMeta != null && fromMeta.length() > 0) {
            return fromMeta;
        }
        String fromDisplay = readDisplayName(context, uri);
        if (fromDisplay != null && fromDisplay.length() > 0) {
            return fromDisplay;
        }
        return filenameFromUri(uri);
    }

    private static String readMetadata(Context context, Uri uri) {
        MediaMetadataRetriever retriever = new MediaMetadataRetriever();
        try {
            retriever.setDataSource(context, uri);
            String title = trim(retriever.extractMetadata(MediaMetadataRetriever.METADATA_KEY_TITLE));
            String artist = trim(retriever.extractMetadata(MediaMetadataRetriever.METADATA_KEY_ARTIST));
            if (title != null && title.length() > 0) {
                if (artist != null && artist.length() > 0
                        && !title.equalsIgnoreCase(artist)) {
                    return artist + " — " + title;
                }
                return title;
            }
            String album = trim(retriever.extractMetadata(MediaMetadataRetriever.METADATA_KEY_ALBUM));
            if (album != null && album.length() > 0) {
                return album;
            }
        } catch (Throwable ignored) {
        } finally {
            try {
                retriever.release();
            } catch (Throwable ignored) {
            }
        }
        return null;
    }

    private static String readDisplayName(Context context, Uri uri) {
        if (context == null) {
            return null;
        }
        Cursor cursor = null;
        try {
            cursor = context.getContentResolver().query(
                    uri,
                    new String[] {OpenableColumns.DISPLAY_NAME},
                    null,
                    null,
                    null);
            if (cursor != null && cursor.moveToFirst()) {
                int col = cursor.getColumnIndex(OpenableColumns.DISPLAY_NAME);
                if (col >= 0) {
                    return trim(cursor.getString(col));
                }
            }
        } catch (Throwable ignored) {
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
        return null;
    }

    private static String filenameFromUri(Uri uri) {
        String segment = uri.getLastPathSegment();
        if (segment == null || segment.length() == 0) {
            return uri.toString();
        }
        try {
            segment = URLDecoder.decode(segment, "UTF-8");
        } catch (Throwable ignored) {
        }
        int slash = segment.lastIndexOf('/');
        if (slash >= 0 && slash + 1 < segment.length()) {
            segment = segment.substring(slash + 1);
        }
        int dot = segment.lastIndexOf('.');
        if (dot > 0) {
            segment = segment.substring(0, dot);
        }
        segment = segment.replace('_', ' ').trim();
        return segment.length() > 0 ? segment : uri.toString();
    }

    private static String trim(String value) {
        if (value == null) {
            return null;
        }
        String trimmed = value.trim();
        return trimmed.length() > 0 ? trimmed : null;
    }
}
