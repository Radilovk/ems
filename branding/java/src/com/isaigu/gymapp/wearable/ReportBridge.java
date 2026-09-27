package com.isaigu.gymapp.wearable;

import android.app.Activity;
import android.app.Dialog;
import android.util.Base64;
import android.webkit.JavascriptInterface;

import com.isaigu.gymapp.bean.TrainUser;

import org.json.JSONObject;

import java.io.File;
import java.io.FileInputStream;

/** window.XemsReport in the report page. Every method is called on the WebView's JS thread. */
final class ReportBridge {
    private final Activity a;
    private final Dialog dialog;
    private final TrainUser user;
    private final long focus;
    private android.webkit.WebView web;

    ReportBridge(Activity a, Dialog dialog, TrainUser user, long focus) {
        this.a = a;
        this.dialog = dialog;
        this.user = user;
        this.focus = focus;
    }

    void setWebView(android.webkit.WebView w) {
        web = w;
    }

    /** A file made by the page (PNG / TCX / CSV, base64) → the Android share sheet (Viber, mail, Drive…). */
    @JavascriptInterface
    public void shareFile(String name, String mime, String base64, String subject, String text) {
        try {
            File dir = new File(a.getCacheDir(), "xems_share");
            if (!dir.isDirectory()) {
                dir.mkdirs();
            }
            File[] old = dir.listFiles();
            if (old != null) {
                for (File f : old) {
                    if (System.currentTimeMillis() - f.lastModified() > 86400000L) {
                        f.delete();
                    }
                }
            }
            String safe = name.replaceAll("[\\\\/:*?\"<>|]", "_");
            File f = new File(dir, safe);
            java.io.FileOutputStream out = new java.io.FileOutputStream(f);
            try {
                out.write(Base64.decode(base64, Base64.DEFAULT));
            } finally {
                out.close();
            }
            android.net.Uri uri = android.support.v4.content.FileProvider.getUriForFile(a, a.getPackageName() + ".provider", f);
            android.content.Intent send = new android.content.Intent(android.content.Intent.ACTION_SEND);
            send.setType(mime);
            send.putExtra(android.content.Intent.EXTRA_STREAM, uri);
            if (subject != null && subject.length() > 0) {
                send.putExtra(android.content.Intent.EXTRA_SUBJECT, subject);
            }
            if (text != null && text.length() > 0) {
                send.putExtra(android.content.Intent.EXTRA_TEXT, text);
            }
            send.addFlags(android.content.Intent.FLAG_GRANT_READ_URI_PERMISSION);
            a.runOnUiThread(new Start(a, android.content.Intent.createChooser(send, WearableUi.tr("Сподели", "Share"))));
            WearableBleDiagLog.log("report", "share " + safe + " " + f.length() + " B");
        } catch (Throwable t) {
            WearableBleDiagLog.log("report", "share failed: " + t);
        }
    }

    @JavascriptInterface
    public void shareText(String subject, String text) {
        android.content.Intent send = new android.content.Intent(android.content.Intent.ACTION_SEND);
        send.setType("text/plain");
        send.putExtra(android.content.Intent.EXTRA_SUBJECT, subject);
        send.putExtra(android.content.Intent.EXTRA_TEXT, text);
        a.runOnUiThread(new Start(a, android.content.Intent.createChooser(send, WearableUi.tr("Сподели", "Share"))));
    }

    /** The whole report through the system print dialog ("Save as PDF" or a printer). */
    /** Turn the report upright / back: returns "portrait" or "landscape" (what it turns to). */
    @JavascriptInterface
    public String rotate() {
        boolean portrait = a.getResources().getConfiguration().orientation
                != android.content.res.Configuration.ORIENTATION_PORTRAIT;
        a.runOnUiThread(new Rotate(a, portrait));
        return portrait ? "portrait" : "landscape";
    }

    static final class Rotate implements Runnable {
        final Activity a;
        final boolean portrait;

        Rotate(Activity a, boolean portrait) {
            this.a = a;
            this.portrait = portrait;
        }

        @Override
        public void run() {
            try {
                a.setRequestedOrientation(portrait
                        ? android.content.pm.ActivityInfo.SCREEN_ORIENTATION_SENSOR_PORTRAIT
                        : android.content.pm.ActivityInfo.SCREEN_ORIENTATION_SENSOR_LANDSCAPE);
            } catch (Throwable t) {
                WearableBleDiagLog.log("report", "rotate: " + t);
            }
        }
    }

    @JavascriptInterface
    public void printPdf(String title) {
        a.runOnUiThread(new Print(a, web, title));
    }

    static final class Start implements Runnable {
        final Activity a;
        final android.content.Intent i;

        Start(Activity a, android.content.Intent i) {
            this.a = a;
            this.i = i;
        }

        @Override
        public void run() {
            try {
                a.startActivity(i);
            } catch (Throwable t) {
                WearableBleDiagLog.log("report", "share start: " + t);
            }
        }
    }

    static final class Print implements Runnable {
        final Activity a;
        final android.webkit.WebView w;
        final String title;

        Print(Activity a, android.webkit.WebView w, String title) {
            this.a = a;
            this.w = w;
            this.title = title;
        }

        @Override
        public void run() {
            try {
                android.print.PrintManager pm = (android.print.PrintManager) a.getSystemService(android.content.Context.PRINT_SERVICE);
                if (pm != null && w != null) {
                    pm.print(title, w.createPrintDocumentAdapter(title), new android.print.PrintAttributes.Builder()
                            .setMediaSize(android.print.PrintAttributes.MediaSize.ISO_A4).build());
                }
            } catch (Throwable t) {
                WearableBleDiagLog.log("report", "print: " + t);
            }
        }
    }

    static boolean isDark() {
        try {
            int bg = com.isaigu.gymapp.widget.XemsUi.BG;
            int lum = ((bg >> 16) & 0xFF) * 3 + ((bg >> 8) & 0xFF) * 6 + (bg & 0xFF);
            return lum < 1280;
        } catch (Throwable t) {
            return true;
        }
    }

    @JavascriptInterface
    public String theme() {
        return isDark() ? "dark" : "light";
    }

    @JavascriptInterface
    public String lang() {
        return "bg".equals(WearableUi.tr("bg", "en")) ? "bg" : "en";
    }

    @JavascriptInterface
    public String focus() {
        return focus > 0 ? String.valueOf(focus) : "";
    }

    @JavascriptInterface
    public String client() {
        JSONObject o = new JSONObject();
        try {
            o.put("id", user.id);
            String n = user.nickName != null && user.nickName.length() > 0 ? user.nickName : user.name;
            o.put("name", n != null ? n : "");
            com.isaigu.gymapp.ai.AiProfile p = com.isaigu.gymapp.ai.AiProfile.of(user);
            if (p != null) {
                if (p.sex != null) {
                    o.put("sex", p.sex == com.isaigu.gymapp.ai.AiModel.Sex.FEMALE ? "F" : "M");
                }
                if (p.age != null) {
                    o.put("age", p.age.intValue());
                }
                if (p.weightKg != null) {
                    o.put("weight", p.weightKg.doubleValue());
                }
                if (p.goal != null) {
                    o.put("goal", p.goal.name().toLowerCase());
                }
                if (p.fitness != null) {
                    o.put("fitness", p.fitness.name().toLowerCase());
                }
            }
            if (user.height > 0) {
                o.put("height", user.height);
            }
            o.put("owner", BandWorkout.isOwner(a, user.id));
            o.put("misport", BandWorkout.sport(a, user.id, 0));
            int rest = WearableConfig.getRestHr(a);
            if (rest > 0) {
                o.put("restHr", rest);
            }
            o.put("avatar", avatar(user.iconUrl));
        } catch (Throwable t) {
            WearableBleDiagLog.log("report", "client json: " + t);
        }
        return o.toString();
    }

    @JavascriptInterface
    public String sessions() {
        return SessionStore.listFor(a, user.id);
    }

    @JavascriptInterface
    public String session(String id) {
        try {
            return SessionStore.load(a, Long.parseLong(id));
        } catch (Throwable t) {
            return "null";
        }
    }

    @JavascriptInterface
    public void putScores(String id, String json) {
        try {
            SessionStore.putScores(a, Long.parseLong(id), json);
        } catch (Throwable ignored) {
        }
    }

    @JavascriptInterface
    public void deleteSession(String id) {
        try {
            SessionStore.delete(a, Long.parseLong(id));
        } catch (Throwable ignored) {
        }
    }

    @JavascriptInterface
    public void close() {
        a.runOnUiThread(new Dismiss(dialog));
    }

    static final class Dismiss implements Runnable {
        final Dialog d;

        Dismiss(Dialog d) {
            this.d = d;
        }

        @Override
        public void run() {
            try {
                d.dismiss();
            } catch (Throwable ignored) {
            }
        }
    }

    private String avatar(String url) {
        try {
            if (url == null || !url.startsWith("file://")) {
                return "";
            }
            File f = new File(url.substring("file://".length()));
            if (!f.isFile() || f.length() > 400000) {
                return "";
            }
            byte[] b = new byte[(int) f.length()];
            FileInputStream in = new FileInputStream(f);
            try {
                int off = 0;
                while (off < b.length) {
                    int n = in.read(b, off, b.length - off);
                    if (n <= 0) {
                        break;
                    }
                    off += n;
                }
            } finally {
                in.close();
            }
            return "data:image/jpeg;base64," + Base64.encodeToString(b, Base64.NO_WRAP);
        } catch (Throwable t) {
            return "";
        }
    }
}
