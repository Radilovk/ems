package com.isaigu.gymapp.wearable.scale;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.util.Base64;
import android.view.View;

import com.isaigu.gymapp.wearable.WearableBleDiagLog;
import com.isaigu.gymapp.widget.XemsGuard;
import com.isaigu.gymapp.widget.XemsLang;
import com.isaigu.gymapp.widget.XemsUi;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/**
 * Sharing the scale's result from the summary: as an image (the sheet as it is on the screen, PNG) or as one HTML
 * file that opens in any phone browser without the internet — the figure, the five values on their norm bars,
 * the change since the first measurement and the recommendations. Both through the Android share sheet (Viber,
 * mail, Drive…), the same FileProvider path as the session report (cache/xems_share, authority package.provider).
 */
public final class ScaleShare {
    private ScaleShare() {}

    static String tr(String bg, String en) {
        return XemsLang.tr(bg, en);
    }

    // ------------------------------------------------------------------ image

    /** The view as drawn now (the summary sheet) → PNG → share. */
    public static void image(Activity a, View root, String name) {
        try {
            int w = root.getWidth(), h = root.getHeight();
            if (w <= 0 || h <= 0) {
                return;
            }
            Bitmap bm = Bitmap.createBitmap(w, h, Bitmap.Config.ARGB_8888);
            Canvas c = new Canvas(bm);
            c.drawColor(XemsUi.CARD);
            root.draw(c);
            ByteArrayOutputStream out = new ByteArrayOutputStream();
            bm.compress(Bitmap.CompressFormat.PNG, 100, out);
            bm.recycle();
            send(a, file(name, "png"), "image/png", out.toByteArray(), tr("Анализ на тялото", "Body analysis"));
        } catch (Throwable t) {
            XemsGuard.report("ScaleShare.image", t);
        }
    }

    // ------------------------------------------------------------------ html

    /** One self-contained HTML page of the measurement {@code at} (the client's phone, any browser). */
    public static void html(Activity a, String name, JSONArray hist, int at, boolean male, int age, int heightCm,
            Bitmap figure) {
        try {
            String page = page(name, hist, at, male, age, heightCm, figure);
            send(a, file(name, "html"), "text/html", page.getBytes("UTF-8"), tr("Анализ на тялото", "Body analysis"));
        } catch (Throwable t) {
            XemsGuard.report("ScaleShare.html", t);
        }
    }

    static String file(String name, String ext) {
        String n = name != null && name.trim().length() > 0 ? name.trim() : "XEMS";
        return n.replaceAll("[\\\\/:*?\"<>|\\s]+", "_") + "-"
                + new SimpleDateFormat("yyyy-MM-dd", Locale.US).format(new Date()) + "." + ext;
    }

    static String esc(String s) {
        return s == null ? "" : s.replace("&", "&amp;").replace("<", "&lt;").replace(">", "&gt;").replace("\"", "&quot;");
    }

    static String hex(int c) {
        return String.format("#%06X", c & 0xFFFFFF);
    }

    static String num(double v, int dec) {
        return Double.isNaN(v) ? "—" : dec == 0 ? String.valueOf(Math.round(v)) : String.format(Locale.US, "%." + dec + "f", v);
    }

    /** A 5-sector norm bar in plain HTML / CSS (the same as ScaleViews.NormBar). */
    static String bar(String title, ScaleInsight.Norm n) {
        StringBuilder b = new StringBuilder();
        int now = n.sector();
        b.append("<div class=nb><div class=nt><span>").append(esc(title)).append("</span><b style=\"color:")
                .append(now >= 0 ? hex(n.colors[now]) : "#999").append("\">").append(num(n.value, n.decimals))
                .append(esc(n.unit)).append(now >= 0 ? " · " + esc(n.names[now]) : "").append("</b></div><div class=bar>");
        for (int i = 0; i < 5; i++) {
            b.append("<i style=\"background:").append(hex(n.colors[i])).append(";opacity:").append(i == now ? "1" : ".3")
                    .append("\"></i>");
        }
        if (!Double.isNaN(n.value)) {
            double[] e = n.edges;
            double cl = Math.max(e[0], Math.min(e[5], n.value));
            int s = 4;
            for (int i = 1; i < 6; i++) {
                if (cl < e[i]) {
                    s = i - 1;
                    break;
                }
            }
            double pos = (s + (cl - e[s]) / Math.max(1e-9, e[s + 1] - e[s])) / 5 * 100;
            b.append("<em style=\"left:").append(String.format(Locale.US, "%.1f", pos)).append("%;background:")
                    .append(now >= 0 ? hex(n.colors[now]) : "#999").append("\"></em>");
        }
        b.append("</div><div class=nl>");
        for (int i = 0; i < 5; i++) {
            b.append("<span").append(i == now ? " class=on" : "").append(">").append(esc(n.names[i])).append("</span>");
        }
        b.append("</div></div>");
        return b.toString();
    }

    static String page(String name, JSONArray hist, int at, boolean male, int age, int heightCm, Bitmap figure) {
        boolean bg = XemsLang.tr("б", "e").equals("б");
        JSONObject m = hist.optJSONObject(at);
        ScaleInsight.Body b = ScaleInsight.body(m, male, heightCm);
        StringBuilder h = new StringBuilder(32 * 1024);
        h.append("<!doctype html><html lang=").append(bg ? "bg" : "en").append("><head><meta charset=utf-8>")
                .append("<meta name=viewport content=\"width=device-width,initial-scale=1\"><title>")
                .append(esc(tr("Анализ на тялото", "Body analysis"))).append(" · ").append(esc(name)).append("</title><style>")
                .append(":root{--bg:#121212;--card:#1e1e1e;--t:#e8e8e8;--m:#9ca3af;--s:#2a2a2a}")
                .append("@media (prefers-color-scheme:light){:root{--bg:#f4f5f7;--card:#fff;--t:#111827;--m:#6b7280;--s:#eef0f3}}")
                .append("*{box-sizing:border-box}body{margin:0;background:var(--bg);color:var(--t);font:15px/1.45 system-ui,")
                .append("-apple-system,Roboto,sans-serif}main{max-width:980px;margin:0 auto;padding:16px}")
                .append(".card{background:var(--card);border-radius:18px;padding:16px;margin:12px 0}")
                .append("h1{font-size:22px;margin:4px 0}h2{font-size:12px;letter-spacing:.06em;text-transform:uppercase;")
                .append("color:var(--m);margin:0 0 8px}.chip{display:inline-block;padding:7px 14px;border-radius:16px;")
                .append("font-weight:700;margin:6px 0}.grid{display:grid;grid-template-columns:1fr;gap:12px}")
                .append("@media(min-width:760px){.grid{grid-template-columns:300px 1fr}}.fig{max-height:380px;max-width:100%;")
                .append("display:block;margin:auto}.age{font-size:44px;font-weight:800;line-height:1}")
                .append(".nb{margin:14px 0 6px}.nt{display:flex;justify-content:space-between;color:var(--m)}")
                .append(".nt b{font-size:16px}.bar{position:relative;display:flex;gap:3px;margin:8px 0 4px}")
                .append(".bar i{flex:1;height:12px;border-radius:6px}.bar em{position:absolute;top:-5px;width:22px;")
                .append("height:22px;margin-left:-11px;border-radius:50%;border:4px solid var(--t)}")
                .append(".nl{display:flex;font-size:10px;color:var(--m);gap:3px}.nl span{flex:1;text-align:center;overflow-wrap:anywhere}")
                .append(".nl .on{color:var(--t);font-weight:700}.ad{display:flex;gap:10px;background:var(--s);")
                .append("border-radius:14px;padding:12px 14px;margin:10px 0}.ad i{width:5px;border-radius:3px;flex:none}")
                .append(".k{font-size:11px;font-weight:800}.ad b{display:block;font-size:16px;margin:2px 0}")
                .append(".ad span{color:var(--m)}.d{display:flex;gap:16px;flex-wrap:wrap;font-size:20px;font-weight:800}")
                .append(".dt{display:grid;grid-template-columns:1fr;gap:0 18px}@media(min-width:640px){.dt{grid-template-columns:1fr 1fr}}")
                .append(".dr{display:flex;gap:10px;align-items:baseline;padding:8px 6px;border-bottom:1px solid var(--s)}")
                .append(".dr span{flex:1.3;color:var(--m)}.dr b{flex:1;text-align:right}.dr em{width:96px;text-align:right;")
                .append("font-style:normal;font-weight:700;font-size:13px}.zt{width:100%;border-collapse:collapse}")
                .append(".zt th{color:var(--m);font-size:12px;text-align:left;padding:6px}.zt td{padding:8px 6px;")
                .append("border-top:1px solid var(--s);font-weight:700}")
                .append("footer{color:var(--m);font-size:12px;text-align:center;margin:18px 0}</style></head><body><main>");
        // header
        h.append("<h1>").append(esc(name)).append("</h1><div style=\"color:var(--m)\">")
                .append(esc((male ? tr("Мъж", "Male") : tr("Жена", "Female")) + " · " + age + tr(" г.", " y") + " · "
                        + heightCm + tr(" см", " cm") + " · " + num(m.optDouble("w"), 1) + tr(" кг", " kg") + " · "
                        + new SimpleDateFormat("d.MM.yyyy", Locale.US).format(new Date(m.optLong("t")))))
                .append("</div>");
        // profile + figure
        h.append("<div class=grid><div class=card>");
        if (figure != null) {
            ByteArrayOutputStream out = new ByteArrayOutputStream();
            figure.compress(Bitmap.CompressFormat.PNG, 100, out);
            h.append("<img class=fig alt=\"\" src=\"data:image/png;base64,")
                    .append(Base64.encodeToString(out.toByteArray(), Base64.NO_WRAP)).append("\">");
        }
        h.append("</div><div class=card><h2>").append(esc(tr("Профил", "Profile"))).append("</h2>");
        String[] type = typeName(b);
        h.append("<span class=chip style=\"color:").append(type[1]).append(";background:").append(type[1])
                .append("22\">").append(esc(type[0])).append("</span>");
        if (!Double.isNaN(b.physicalAge)) {
            h.append("<div style=\"margin-top:10px\"><span class=age style=\"color:")
                    .append(b.physicalAge <= age - 3 ? "#22C55E" : b.physicalAge >= age + 3 ? "#F59E0B" : "inherit")
                    .append("\">").append(Math.round(b.physicalAge)).append("</span> <span style=\"color:var(--m)\">")
                    .append(esc(tr("физическа възраст · паспорт ", "physical age · passport ") + age)).append("</span></div>");
        }
        // the five values
        String[] fatN = bg ? new String[] {"много ниски", "стегнато", "норма", "наднормено", "затлъстяване"}
                : new String[] {"very low", "lean", "normal", "overweight", "obese"};
        String[] five = bg ? new String[] {"много ниско", "ниско", "норма", "високо", "много високо"}
                : new String[] {"very low", "low", "normal", "high", "very high"};
        String[] mus = bg ? new String[] {"много малко", "малко", "норма", "атлетично", "много"}
                : new String[] {"very low", "low", "normal", "athletic", "very high"};
        h.append(bar(tr("Мазнини", "Body fat"), ScaleInsight.fatNorm(m.optDouble("fat", Double.NaN), male, age, fatN)));
        h.append(bar(tr("Мускули", "Muscle"), ScaleInsight.muscleNorm(b.ffmi, male, mus)));
        h.append(bar(tr("Вода", "Water"), ScaleInsight.waterNorm(m.optDouble("water", Double.NaN), male, five)));
        h.append(bar(tr("Висцерални мазнини", "Visceral fat"), ScaleInsight.visceralNorm(m.optDouble("visc", Double.NaN),
                five)));
        h.append("</div></div>");
        // every value, the zones, the weight control
        h.append("<div class=card><h2>").append(esc(tr("Подробно", "Details"))).append("</h2><div class=dt>");
        for (ScaleDetail.Row r : ScaleDetail.rows(m, male, age, heightCm)) {
            String v = r.textBg != null ? (bg ? r.textBg : r.textEn)
                    : r.value() + (Double.isNaN(r.value) ? "" : bg ? r.unit : r.unit.replace(" кг", " kg"));
            h.append("<div class=dr><span>").append(esc(bg ? r.bg : r.en)).append("</span><b>").append(esc(v))
                    .append("</b><em style=\"color:").append(hex(ScaleDetail.statusColor(r.status))).append("\">")
                    .append(esc(r.status >= 0 ? (bg ? ScaleDetail.statusBg(r.status) : ScaleDetail.statusEn(r.status))
                            : "")).append("</em></div>");
        }
        h.append("</div></div><div class=card><h2>").append(esc(tr("Зони · мазнини 80–160 % · мускули 90–110 %",
                "Zones · fat 80–160 % · muscle 90–110 %"))).append("</h2><table class=zt><tr><th></th><th>")
                .append(esc(tr("Мазнини", "Fat"))).append("</th><th>").append(esc(tr("Мускули", "Muscle")))
                .append("</th></tr>");
        ScaleDetail.Zone[] zs = ScaleDetail.zones(m, male, heightCm);
        for (int seg : ScaleDetail.ORDER) {
            ScaleDetail.Zone z = zs[seg];
            h.append("<tr><td>").append(esc(bg ? ScaleDetail.zoneBg(seg) : ScaleDetail.zoneEn(seg))).append("</td>")
                    .append(zoneTd(z.fatKg, z.fatPct, z.fatStatus)).append(zoneTd(z.musKg, z.musPct, z.musStatus))
                    .append("</tr>");
        }
        h.append("</table>");
        ScaleDetail.Control c = ScaleDetail.control(m, male, age, heightCm);
        if (!Double.isNaN(c.target)) {
            h.append("<h2 style=\"margin-top:16px\">").append(esc(tr("Контрол на теглото", "Weight control")))
                    .append("</h2><div class=d><span>").append(num(c.target, 1)).append(esc(tr(" кг здравословно",
                            " kg healthy"))).append("</span><span style=\"color:var(--m)\">")
                    .append(esc(tr("тегло ", "weight ") + signed(c.total) + " · " + tr("мазнини ", "fat ")
                            + signed(c.fat) + " · " + tr("мускули ", "muscle ") + signed(c.muscle)))
                    .append("</span></div>");
        }
        h.append("</div>");
        // change since the first
        JSONObject first = at > 0 ? hist.optJSONObject(0) : null;
        if (first != null && first.has("muscle")) {
            double dm = m.optDouble("muscle") - first.optDouble("muscle");
            double df = m.optDouble("fatKg") - first.optDouble("fatKg");
            long days = Math.round((m.optLong("t") - first.optLong("t")) / 86400000.0);
            h.append("<div class=card><h2>").append(esc(tr("От първото мерене · ", "Since the first · ") + days
                    + tr(" дни", " days"))).append("</h2><div class=d><span style=\"color:")
                    .append(dm >= 0 ? "#22C55E" : "#F59E0B").append("\">").append(dm >= 0 ? "+" : "−")
                    .append(num(Math.abs(dm), 1)).append(esc(tr(" кг мускули", " kg muscle"))).append("</span><span style=\"color:")
                    .append(df <= 0 ? "#22C55E" : "#F59E0B").append("\">").append(df >= 0 ? "+" : "−")
                    .append(num(Math.abs(df), 1)).append(esc(tr(" кг мазнини", " kg fat"))).append("</span></div></div>");
        }
        // recommendations
        h.append("<div class=card><h2>").append(esc(tr("Препоръки", "Recommendations"))).append("</h2>");
        String[] kinds = bg ? new String[] {"ДНЕС", "EMS", "ТЯЛО", "НАВИК"} : new String[] {"TODAY", "EMS", "BODY", "HABIT"};
        String[] tones = {"#22C55E", "#38BDF8", "#F59E0B", "#EF4444"};
        List<ScaleInsight.Advice> adv = ScaleInsight.advice(hist, at, male, age, heightCm);
        for (ScaleInsight.Advice x : adv) {
            h.append("<div class=ad><i style=\"background:").append(tones[x.tone]).append("\"></i><div><div class=k style=\"color:")
                    .append(tones[x.tone]).append("\">").append(kinds[x.kind]).append("</div><b>")
                    .append(esc(bg ? x.titleBg : x.titleEn)).append("</b><span>").append(esc(bg ? x.textBg : x.textEn))
                    .append("</span></div></div>");
        }
        h.append("</div>");
        // the raw readings (impedances) of the last weigh-ins — to recompute or calibrate later; not shown
        h.append("<script type=\"application/json\" id=xems-raw>[");
        int from = Math.max(0, at - 9);
        for (int i = from; i <= at; i++) {
            JSONObject r = hist.optJSONObject(i);
            if (r == null) {
                continue;
            }
            JSONObject o = new JSONObject();
            try {
                o.put("t", r.optLong("t"));
                o.put("w", r.optDouble("w"));
                if (r.has("z20")) {
                    o.put("z20", r.optJSONArray("z20"));
                    o.put("z100", r.optJSONArray("z100"));
                }
                if (r.has("sfat")) {
                    o.put("sfat", r.optDouble("sfat"));
                }
                o.put("male", male).put("age", age).put("h", heightCm).put("v", r.optInt("v"));
            } catch (Exception ignored) {
            }
            h.append(i > from ? "," : "").append(o.toString().replace("</", "<\\/"));
        }
        h.append("]</script>");
        h.append("<footer>XEMS · ").append(esc(tr("кантар с 8 електрода · ориентир, не медицинско изследване",
                "8-electrode scale · a guide, not a medical test"))).append("</footer></main></body></html>");
        return h.toString();
    }

    static String zoneTd(double kg, double pct, int status) {
        return "<td>" + (Double.isNaN(kg) ? "—" : num(kg, 1) + esc(tr(" кг", " kg"))) + (Double.isNaN(pct) ? ""
                : " <span style=\"color:" + hex(ScaleDetail.statusColor(status)) + "\">" + Math.round(pct) + " %</span>")
                + "</td>";
    }

    static String signed(double v) {
        return Double.isNaN(v) ? "—" : (v >= 0 ? "+" : "−") + num(Math.abs(v), 1) + tr(" кг", " kg");
    }

    static String[] typeName(ScaleInsight.Body b) {
        switch (b.type) {
            case ScaleInsight.T_ATHLETIC:
                return new String[] {tr("Атлетичен · теглото е мускули", "Athletic · the weight is muscle"), "#22C55E"};
            case ScaleInsight.T_BALANCED:
                return new String[] {tr("Балансиран", "Balanced"), "#22C55E"};
            case ScaleInsight.T_STRONG_FAT:
                return new String[] {tr("Силен · с излишни мазнини", "Strong · with excess fat"), "#F59E0B"};
            case ScaleInsight.T_FAT:
                return b.fatCls >= 3 ? new String[] {tr("Затлъстяване", "Obese"), "#EF4444"}
                        : new String[] {tr("Излишни мазнини", "Excess fat"), "#F59E0B"};
            case ScaleInsight.T_FAT_LOW_MUSCLE:
                return new String[] {tr("Мазнини при малко мускули", "Fat with little muscle"), "#EF4444"};
            case ScaleInsight.T_LEAN_LOW_MUSCLE:
                return new String[] {tr("Слаб · малко мускули", "Slim · little muscle"), "#F59E0B"};
            case ScaleInsight.T_VERY_LEAN:
                return new String[] {tr("Много ниски мазнини", "Very low fat"), "#38BDF8"};
            default:
                return new String[] {"—", "#9CA3AF"};
        }
    }

    // ------------------------------------------------------------------ the share sheet

    static void send(Activity a, String name, String mime, byte[] bytes, String subject) {
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
            File f = new File(dir, name);
            FileOutputStream out = new FileOutputStream(f);
            try {
                out.write(bytes);
            } finally {
                out.close();
            }
            android.net.Uri uri = android.support.v4.content.FileProvider.getUriForFile(a, a.getPackageName() + ".provider", f);
            android.content.Intent send = new android.content.Intent(android.content.Intent.ACTION_SEND);
            send.setType(mime);
            send.putExtra(android.content.Intent.EXTRA_STREAM, uri);
            send.putExtra(android.content.Intent.EXTRA_SUBJECT, subject);
            send.addFlags(android.content.Intent.FLAG_GRANT_READ_URI_PERMISSION);
            a.startActivity(android.content.Intent.createChooser(send, tr("Сподели", "Share")));
            WearableBleDiagLog.log("scale", "share " + name + " " + bytes.length + " B");
        } catch (Throwable t) {
            XemsGuard.report("ScaleShare.send", t);
        }
    }
}
