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

    ReportBridge(Activity a, Dialog dialog, TrainUser user, long focus) {
        this.a = a;
        this.dialog = dialog;
        this.user = user;
        this.focus = focus;
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
            o.put("misport", BandWorkout.sport(a, user.id));
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
