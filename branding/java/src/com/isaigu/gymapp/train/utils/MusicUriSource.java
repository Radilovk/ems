package com.isaigu.gymapp.train.utils;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.media.MediaExtractor;
import android.media.MediaPlayer;
import android.net.Uri;
import java.io.FileDescriptor;

/** Open SAF/content URIs reliably for decode and playback. */
final class MusicUriSource {
    private AssetFileDescriptor assetFd;

    private MusicUriSource(AssetFileDescriptor afd) {
        assetFd = afd;
    }

    static MusicUriSource open(Context context, Uri uri) throws Exception {
        if (context == null || uri == null) {
            throw new IllegalArgumentException("missing context or uri");
        }
        String scheme = uri.getScheme();
        if (scheme == null || "file".equals(scheme)) {
            return new MusicUriSource(null);
        }
        ContentResolver resolver = context.getContentResolver();
        AssetFileDescriptor afd = resolver.openAssetFileDescriptor(uri, "r");
        if (afd == null) {
            throw new java.io.FileNotFoundException("cannot open " + uri);
        }
        return new MusicUriSource(afd);
    }

    void setExtractorDataSource(MediaExtractor extractor, Context context, Uri uri) throws Exception {
        if (assetFd != null) {
            FileDescriptor fd = assetFd.getFileDescriptor();
            extractor.setDataSource(fd, assetFd.getStartOffset(), assetFd.getLength());
            return;
        }
        extractor.setDataSource(context, uri, null);
    }

    void setPlayerDataSource(MediaPlayer player, Context context, Uri uri) throws Exception {
        if (assetFd != null) {
            FileDescriptor fd = assetFd.getFileDescriptor();
            player.setDataSource(fd, assetFd.getStartOffset(), assetFd.getLength());
            return;
        }
        player.setDataSource(context, uri);
    }

    void close() {
        if (assetFd == null) {
            return;
        }
        try {
            assetFd.close();
        } catch (Throwable ignored) {
        }
        assetFd = null;
    }
}
