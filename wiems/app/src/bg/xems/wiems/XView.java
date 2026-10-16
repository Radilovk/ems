package bg.xems.wiems;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.view.MotionEvent;
import android.view.View;

import java.util.ArrayList;
import java.util.List;

/**
 * The screen — XBody's own manual-training screen (owner: the same design and style for every suit), painted as the
 * XBody panel paints it (xbody/panel/ui/panel.cpp: header, five zone buttons each side, the body front / back, the
 * timer hump with ВСИЧКИ, СТАРТ / СТОП, the MASTER hump, the slider bar with − / +), on the tablet's 16:10 screen:
 * 600 design units high, as wide as the screen allows (1280×800 → 960); the left column keeps its place, the right
 * column moves to the right edge, the body and the clock stay in the middle. Repaints only when something changed.
 */
final class XView extends View {
    static final int WHITE = 0xFFFFFFFF, INK = 0xFF303741, GREY = 0xFFB1B3B5, LINE = 0xFFBFC2C5, SOFT = 0xFF6B7178,
            RED = 0xFFE21A22, GREEN = 0xFF00B38B, YELLOW = 0xFFFFC000, BAR = 0xFF22262E, DIALOG = 0xFF6B2F2F,
            PRESS = 0xFFECEDEE, HEAD_LINE = 0xFFE3E4E6, FIGURE = 0xFFD9DBDE, CLOCK = 0xFFBEC0C2;

    private final Host a;
    private final Paint p = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Path path = new Path();
    private final RectF rf = new RectF();

    private static final class Hit {
        final RectF r;
        final String id;

        Hit(RectF r, String id) {
            this.r = r;
            this.id = id;
        }
    }

    private final List<Hit> hits = new ArrayList<Hit>();
    private float k = 1, dw = 800;            // screen px per design unit; design width (≥ 800)
    private float dx;                           // where the 800-wide middle starts
    private String pressed = "";
    private long pressMs, repeatMs;
    private boolean sheet, confirm;
    private Session.Program sheetProg;
    private boolean sheetAge60;
    private int sel;                            // selected zones (bits); 0 = MASTER (the strength)
    private long bubbleUntil, toastUntil;
    private String toast = "";
    private String sig = "";
    private BodyFig[] figs;                     // front, back of the chosen sex
    private boolean figsFemale;
    private final RectF[] figRect = {new RectF(), new RectF()};
    private float tapX, tapY;                   // the last touch (design units): which muscle a tap on the figure hit
    private Bitmap grain;                       // XBody's off-white grain, tiled
    private boolean procPage;                   // the program screen shows the passive procedures
    private String procSel = Procs.ALL[0].id;   // the procedure picked on that page
    private int procMin;                        // its length (0 = its own)
    private int sheetMin;                       // the procedure's length in the sheet
    private final java.util.Map<String, Bitmap> art = new java.util.HashMap<String, Bitmap>();
    private final Paint bmp = new Paint(Paint.FILTER_BITMAP_FLAG | Paint.ANTI_ALIAS_FLAG);
    /** XBody's slider LEDs: green → blue → violet → red (its SliderLeds picture, sampled). */
    static final int[] LEDS = {0xFF02B28C, 0xFF1EA1A0, 0xFF498CAE, 0xFF97728F, 0xFFC06675, 0xFFDB5E64, 0xFFEC5959};
    static final int LIGHT_RED = 0xFFF4A0A3;

    XView(Context c, Host h) {
        super(c);
        a = h;
        setBackgroundColor(WHITE);
    }

    // ---------------------------------------------------------------- frame

    void tick(long now) {
        if (isStepper(pressed) && now - pressMs > 450 && now - repeatMs > 90) {
            repeatMs = now;
            act(pressed, true);
        }
        String g = signature(now);
        if (!g.equals(sig)) invalidate();
        sig = g;
    }

    private String signature(long now) {
        StringBuilder b = new StringBuilder();
        b.append(a.viewKind()).append('|').append(a.note()).append(a.noteWarn()).append('|').append(pressed)
                .append(sheet).append(confirm).append(sel).append(now < bubbleUntil).append(now < toastUntil);
        if (a.viewKind() == MainActivity.VIEW_PICK || a.viewKind() == MainActivity.VIEW_LINKING) {
            b.append((now / 400) % 4);
            for (Seen s : a.seen()) b.append(s.mac).append(bars(s.rssi));
        }
        Session s = a.session();
        b.append('|').append(a.mode()).append(procPage).append(procSel).append(procMin).append(sheetMin);
        if (s != null) {
            Session.Program q = s.program();
            b.append(s.seg()).append(s.live().hz).append(s.continuous());
            b.append('|').append(s.state()).append(s.impulse()).append(s.strength()).append(s.battery())
                    .append(s.startPending()).append(s.preparing()).append(q.hz).append(q.onS).append(q.offS).append(q.totalS);
            for (int i = 0; i < Session.ZONES; i++) b.append(',').append(s.zone(i)).append('/').append(s.liveLevel(Session.ZONE_CH[i]));
            b.append(a.female());
            b.append('|').append(s.secondsLeft(now)).append(' ').append((s.phaseMsLeft(now) + 999) / 1000);
            if (s.startPending()) b.append((now / 400) % 4);
        }
        if (sheet) b.append(sheetProg.hz).append(sheetProg.onS).append(sheetProg.offS).append(sheetProg.totalS).append(sheetAge60)
                .append(sheetProg.rampMs).append(sheetProg.dbl).append(sheetProg.dblHz).append(sheetProg.dblPct);
        return b.toString();
    }

    @Override
    protected void onDraw(Canvas c) {
        float w = getWidth(), h = getHeight();
        k = h / 600f;
        dw = Math.max(800f, w / k);
        if (dw * k > w + 0.5f) k = w / dw;     // a screen narrower than 4:3
        dx = (dw - 800) / 2;
        c.save();
        c.translate((w - dw * k) / 2, (h - 600 * k) / 2);
        c.scale(k, k);
        hits.clear();
        paintGrain(c);
        int v = a.viewKind();
        boolean modes = a.mode() < 0;
        if (v == MainActivity.VIEW_TRAIN && a.session() != null) {
            if (modes) paintModes(c);
            else paintTrain(c);
        } else paintPick(c, v);
        if (v == MainActivity.VIEW_TRAIN && !modes && !sheet && !confirm && a.now() < bubbleUntil) paintBubble(c);
        if (sheet) paintSheet(c);
        if (confirm) paintConfirm(c);
        c.restore();
    }

    // ---------------------------------------------------------------- paint helpers

    /** XBody's window background: off-white with a fine grain (its MainWindowBg: 247..255). */
    private void paintGrain(Canvas c) {
        if (grain == null) {
            int n = 96;
            int[] px = new int[n * n];
            java.util.Random r = new java.util.Random(7);
            for (int i = 0; i < px.length; i++) {
                int g = 250 + r.nextInt(6);
                px[i] = 0xFF000000 | (g << 16) | (g << 8) | g;
            }
            grain = Bitmap.createBitmap(n, n, Bitmap.Config.ARGB_8888);
            grain.setPixels(px, 0, n, 0, 0, n, n);
        }
        Rect src = new Rect(0, 0, grain.getWidth(), grain.getHeight());
        for (float y = 0; y < 600; y += 96)
            for (float x = 0; x < dw; x += 96) {
                rf.set(x, y, x + 96, y + 96);
                c.drawBitmap(grain, src, rf, null);
            }
    }

    /** XBody's logo block, ours: a red disc with the X, then EMS. */
    private void logo(Canvas c, float x, float cy) {
        p.setColor(RED);
        c.drawCircle(x + 11, cy, 11, p);
        line(c, x + 6.5f, cy - 4.5f, x + 15.5f, cy + 4.5f, WHITE, 2.6f);
        line(c, x + 15.5f, cy - 4.5f, x + 6.5f, cy + 4.5f, WHITE, 2.6f);
        font(22, true);
        p.setLetterSpacing(0.04f);
        text(c, "EMS", x + 27, cy - 14, x + 120, cy + 14, -1, INK);
        p.setLetterSpacing(0);
    }

    private void hit(float l, float t, float r, float b, String id) {
        hits.add(new Hit(new RectF(l, t, r, b), id));
    }

    private void font(float px, boolean bold) {
        p.setTypeface(bold ? Typeface.DEFAULT_BOLD : Typeface.DEFAULT);
        p.setTextSize(px);
        p.setLetterSpacing(0);
        p.setStyle(Paint.Style.FILL);
    }

    /** Text in a box: align -1 left, 0 centre, 1 right; vertically centred. */
    private void text(Canvas c, String s, float l, float t, float r, float b, int align, int color) {
        p.setColor(color);
        p.setStyle(Paint.Style.FILL);
        Paint.FontMetrics fm = p.getFontMetrics();
        float y = (t + b) / 2 - (fm.ascent + fm.descent) / 2;
        float tw = p.measureText(s);
        float x = align < 0 ? l : align > 0 ? r - tw : (l + r - tw) / 2;
        c.drawText(s, x, y, p);
    }

    private String elide(String s, float max) {
        if (p.measureText(s) <= max) return s;
        while (s.length() > 1 && p.measureText(s + "…") > max) s = s.substring(0, s.length() - 1);
        return s + "…";
    }

    private void round(Canvas c, float l, float t, float r, float b, float rad, int fill) {
        p.setStyle(Paint.Style.FILL);
        p.setColor(fill);
        rf.set(l, t, r, b);
        c.drawRoundRect(rf, rad, rad, p);
    }

    private void stroke(Canvas c, float l, float t, float r, float b, float rad, int color, float width) {
        p.setStyle(Paint.Style.STROKE);
        p.setStrokeWidth(width);
        p.setColor(color);
        rf.set(l, t, r, b);
        c.drawRoundRect(rf, rad, rad, p);
        p.setStyle(Paint.Style.FILL);
    }

    private void line(Canvas c, float x0, float y0, float x1, float y1, int color, float width) {
        p.setStyle(Paint.Style.STROKE);
        p.setStrokeWidth(width);
        p.setStrokeCap(Paint.Cap.ROUND);
        p.setColor(color);
        c.drawLine(x0, y0, x1, y1, p);
        p.setStyle(Paint.Style.FILL);
    }

    private static int mix(int x, int y, float t) {
        return Color.rgb((int) (Color.red(x) * (1 - t) + Color.red(y) * t), (int) (Color.green(x) * (1 - t) + Color.green(y) * t),
                (int) (Color.blue(x) * (1 - t) + Color.blue(y) * t));
    }

    /** XBody's white button with a grey outline; on = its red selected state. */
    private void outlined(Canvas c, float l, float t, float r, float b, String id, String txt, float px, boolean on) {
        boolean down = id != null && id.equals(pressed);
        if (on) round(c, l + 1, t + 1, r - 1, b - 1, 8, down ? mix(RED, Color.BLACK, 0.2f) : RED);
        else {
            round(c, l + 1, t + 1, r - 1, b - 1, 8, down ? PRESS : WHITE);
            stroke(c, l + 1, t + 1, r - 1, b - 1, 8, LINE, 2);
        }
        if (txt != null) {
            font(px, false);
            text(c, txt, l, t, r, b, 0, on ? WHITE : INK);
        }
        if (id != null) hit(l, t, r, b, id);
    }

    /** XBody's coloured 175×70 action buttons. */
    private void filled(Canvas c, float l, float t, float r, float b, String id, int bg, int fg, String txt, float px) {
        round(c, l, t, r, b, 8, bg);
        if (id != null && id.equals(pressed)) round(c, l, t, r, b, 8, 0x32000000);
        font(px, false);
        text(c, txt, l, t, r, b, 0, fg);
        if (id != null) hit(l, t, r, b, id);
    }

    private static String mmss(int s) {
        if (s < 0) s = 0;
        return String.format("%02d:%02d", s / 60, s % 60);
    }

    private static int bars(int rssi) {
        return rssi >= -60 ? 4 : rssi >= -70 ? 3 : rssi >= -80 ? 2 : 1;
    }

    private void battery(Canvas c, float l, float t, int pct) {
        stroke(c, l, t, l + 22, t + 12, 2, pct >= 0 && pct < 20 ? RED : SOFT, 1.5f);
        round(c, l + 22, t + 3.5f, l + 24.5f, t + 8.5f, 1, SOFT);
        if (pct > 0) round(c, l + 2, t + 2, l + 2 + 18 * Math.min(100, pct) / 100f, t + 10, 1, pct < 20 ? RED : GREEN);
    }

    // ---------------------------------------------------------------- header (XBody's)

    private void paintHeader(Canvas c, String title, String sub, boolean warn, boolean ok) {
        line(c, 0, 56, dw, 56, HEAD_LINE, 1);
        line(c, 155, 6, 155, 50, HEAD_LINE, 1);
        line(c, dw - 148, 6, dw - 148, 50, HEAD_LINE, 1);
        logo(c, 22, 28);
        font(12, true);
        text(c, "WiEMS", 106, 22, 152, 40, -1, RED);
        font(20, true);
        p.setLetterSpacing(0.08f);
        text(c, elide(title, dw - 330), 160, 2, dw - 152, 32, 0, GREY);
        p.setLetterSpacing(0);
        if (sub.length() > 0) {
            font(14, true);
            text(c, elide(sub, dw - 330), 160, 30, dw - 152, 54, 0, warn ? RED : ok ? GREEN : INK);
        }
    }

    // ---------------------------------------------------------------- the list / the states before a link

    private void paintPick(Canvas c, int v) {
        long now = a.now();
        String dots = "...".substring(0, (int) ((now / 400) % 4));
        String n = a.note();
        String title = "ИЗБЕРИ WiEMS", sub = n.length() > 0 ? n : "Търся наблизо" + dots, big = null;
        String action = null;
        if (v == MainActivity.VIEW_NO_BT) {
            sub = "";
            big = "Този таблет няма Bluetooth";
        } else if (v == MainActivity.VIEW_PERMISSION) {
            sub = "";
            big = "Разреши достъп до устройства наблизо";
            action = "perm";
        } else if (v == MainActivity.VIEW_BT_OFF) {
            sub = "";
            big = "Включи Bluetooth";
            action = "bt";
        }
        paintHeader(c, title, sub, n.length() > 0 && a.noteWarn(), n.length() > 0 && !a.noteWarn());
        if (big != null) {
            font(26, false);
            text(c, big, 0, 230, dw, 280, 0, INK);
            if (action != null) filled(c, dw / 2 - 110, 310, dw / 2 + 110, 380, action, GREEN, WHITE, "ДОБРЕ", 24);
            return;
        }
        List<Seen> s = new ArrayList<Seen>(a.seen());
        for (int i = 0; i < s.size(); i++)          // strongest signal first
            for (int j = i + 1; j < s.size(); j++)
                if (s.get(j).rssi > s.get(i).rssi) {
                    Seen t = s.get(i);
                    s.set(i, s.get(j));
                    s.set(j, t);
                }
        if (s.isEmpty()) {
            font(24, false);
            text(c, "Включи WiEMS — ще се появи тук", 0, 250, dw, 290, 0, INK);
            font(15, false);
            text(c, "Не се появява ли: включи и Местоположение на таблета", 0, 296, dw, 320, 0, SOFT);
            return;
        }
        float[] cx = {dx + 152, dx + 400, dx + 648};
        for (int i = 0; i < s.size() && i < 6; i++) {
            Seen d = s.get(i);
            boolean linking = d.mac.equals(a.linkingMac());
            float l = cx[i % 3] - 75, t = 80 + (i / 3) * 236;
            String id = "unit:" + d.mac;
            outlined(c, l, t, l + 150, t + 150, a.linkingMac() == null ? id : null, null, 0, linking);
            font(24, true);
            text(c, "WiEMS", l, t + 20, l + 150, t + 80, 0, linking ? WHITE : RED);
            if (linking) {
                font(16, false);
                text(c, "Свързвам" + dots, l, t + 86, l + 150, t + 126, 0, WHITE);
            } else {
                int lv = bars(d.rssi);
                for (int b = 0; b < 4; b++) {
                    float bh = 8 + b * 7;
                    round(c, l + 57 + b * 10, t + 122 - bh, l + 64 + b * 10, t + 122, 1.5f, b < lv ? RED : LINE);
                }
            }
            font(17, false);
            text(c, d.name.toUpperCase(), l - 45, t + 158, l + 195, t + 186, 0, INK);
            if (a.linkingMac() == null) hit(l - 45, t + 150, l + 195, t + 190, id);
        }
    }

    // ---------------------------------------------------------------- XBody's "Program selection"

    /**
     * XBody's program screen after "Begin training": its tiles — Мускули, Кардио, Релакс (its own modes with its
     * defaults), Ръчни настройки, and in place of its video training the passive procedures.
     */
    private void paintModes(Canvas c) {
        if (procPage) {
            paintProcs(c);
            return;
        }
        Session s = a.session();
        String n = a.note();
        paintHeader(c, "ИЗБОР НА ПРОГРАМА", n.length() > 0 ? n : unitLine(s), n.length() > 0 && a.noteWarn(),
                n.length() > 0 && !a.noteWarn());
        hit(160, 0, dw - 152, 56, "unit");
        font(17, false);
        text(c, "Какво тренираме днес?", 0, 70, dw, 104, 0, INK);
        int[] m = {Procs.MODE_MUSCLE, Procs.MODE_CARDIO, Procs.MODE_RELAX, Procs.MODE_MANUAL, Procs.MODE_PROC};
        String[] label = {"МУСКУЛИ", "КАРДИО", "РЕЛАКС", "РЪЧНИ НАСТРОЙКИ", "ПАСИВНИ ПРОЦЕДУРИ"};
        float[] cx = {dx + 152, dx + 400, dx + 648, dx + 276, dx + 524};
        for (int i = 0; i < 5; i++) {
            float l = cx[i] - 75, t = i < 3 ? 120 : 330;
            String id = i == 4 ? "procs" : "mode:" + m[i];
            Bitmap tile = art("xbody/" + TILE[i] + (id.equals(pressed) ? "SelectorPressed" : "Selector"));
            if (tile != null) {                         // XBody's own tile (owner: its native pictures)
                rf.set(l, t, l + 150, t + 150);
                c.drawBitmap(tile, new Rect(0, 0, tile.getWidth(), tile.getHeight()), rf, bmp);
                hit(l, t, l + 150, t + 150, id);
            } else {
                outlined(c, l, t, l + 150, t + 150, id, null, 0, false);
                icon(c, m[i], cx[i], t + 75);
            }
            font(14, true);
            p.setLetterSpacing(0.04f);
            text(c, label[i], cx[i] - 120, t + 154, cx[i] + 120, t + 180, 0, INK);
            p.setLetterSpacing(0);
            font(12.5f, false);
            String how = i == 4 ? Procs.ALL.length + " готови · 10–30 мин" : Procs.MODE_HOW[m[i]];
            text(c, elide(how, 236), cx[i] - 120, t + 178, cx[i] + 120, t + 198, 0, SOFT);
            hit(cx[i] - 110, t + 150, cx[i] + 110, t + 198, id);
        }
    }

    /** XBody's program tiles: Muscle development, Cardiovascular (its weight-loss tile), Relax, Manual, MED. */
    private static final String[] TILE = {"Strength", "WeightLoss", "Massage", "Manual", "Medical"};

    /** The tiles' red line icons, drawn (XBody's style: one weight, round ends). */
    private void icon(Canvas c, int m, float cx, float cy) {
        p.setStyle(Paint.Style.STROKE);
        p.setStrokeWidth(4);
        p.setStrokeCap(Paint.Cap.ROUND);
        p.setStrokeJoin(Paint.Join.ROUND);
        p.setColor(RED);
        path.reset();
        if (m == Procs.MODE_MUSCLE) {                    // a torso, both arms flexed
            c.drawCircle(cx, cy - 30, 9, p);
            path.moveTo(cx - 16, cy - 14);
            path.lineTo(cx - 10, cy + 32);
            path.lineTo(cx + 10, cy + 32);
            path.lineTo(cx + 16, cy - 14);
            path.close();
            for (int sgn = -1; sgn <= 1; sgn += 2) {
                path.moveTo(cx + sgn * 16, cy - 14);
                path.cubicTo(cx + sgn * 30, cy - 12, cx + sgn * 44, cy - 6, cx + sgn * 46, cy - 18);
                path.cubicTo(cx + sgn * 48, cy - 30, cx + sgn * 40, cy - 38, cx + sgn * 34, cy - 42);
                path.moveTo(cx + sgn * 22, cy - 13);
                path.quadTo(cx + sgn * 30, cy - 26, cx + sgn * 40, cy - 24);
            }
            c.drawPath(path, p);
        } else if (m == Procs.MODE_CARDIO) {             // a heart with the pulse through it
            path.moveTo(cx, cy + 32);
            path.cubicTo(cx - 52, cy, cx - 30, cy - 46, cx, cy - 20);
            path.cubicTo(cx + 30, cy - 46, cx + 52, cy, cx, cy + 32);
            c.drawPath(path, p);
            path.reset();
            path.moveTo(cx - 46, cy);
            path.lineTo(cx - 18, cy);
            path.lineTo(cx - 10, cy - 16);
            path.lineTo(cx, cy + 16);
            path.lineTo(cx + 8, cy - 6);
            path.lineTo(cx + 14, cy);
            path.lineTo(cx + 46, cy);
            p.setColor(WHITE);
            p.setStrokeWidth(9);
            c.drawPath(path, p);
            p.setColor(RED);
            p.setStrokeWidth(4);
            c.drawPath(path, p);
        } else if (m == Procs.MODE_RELAX) {              // lying back on a lounger
            path.moveTo(cx - 46, cy + 24);
            path.lineTo(cx + 6, cy + 24);
            path.lineTo(cx + 24, cy + 4);
            path.lineTo(cx + 46, cy + 4);
            path.moveTo(cx - 36, cy + 24);
            path.lineTo(cx - 36, cy + 34);
            path.moveTo(cx + 36, cy + 4);
            path.lineTo(cx + 40, cy + 34);
            path.moveTo(cx - 26, cy + 12);
            path.lineTo(cx + 2, cy + 12);
            path.lineTo(cx + 18, cy - 6);
            path.lineTo(cx + 40, cy - 6);
            c.drawPath(path, p);
            c.drawCircle(cx - 34, cy + 6, 7, p);
        } else if (m == Procs.MODE_MANUAL) {             // three sliders
            float[] knob = {cx - 12, cx + 18, cx - 24};
            for (int i = 0; i < 3; i++) {
                float y = cy - 24 + i * 24;
                c.drawLine(cx - 40, y, cx + 40, y, p);
                p.setStyle(Paint.Style.FILL);
                p.setColor(WHITE);
                c.drawCircle(knob[i], y, 7, p);
                p.setStyle(Paint.Style.STROKE);
                p.setColor(RED);
                c.drawCircle(knob[i], y, 7, p);
            }
        } else {                                          // lying, with the waves of a passive procedure
            c.drawCircle(cx - 36, cy + 10, 7, p);
            path.moveTo(cx - 26, cy + 16);
            path.lineTo(cx + 40, cy + 16);
            path.moveTo(cx - 48, cy + 30);
            path.lineTo(cx + 48, cy + 30);
            for (int i = 0; i < 3; i++) {
                float y = cy - 30 + i * 13, x0 = cx - 18 + i * 6;
                path.moveTo(x0, y);
                path.cubicTo(x0 + 8, y - 8, x0 + 14, y + 8, x0 + 22, y);
                path.cubicTo(x0 + 30, y - 8, x0 + 36, y + 8, x0 + 44, y);
            }
            c.drawPath(path, p);
        }
        p.setStyle(Paint.Style.FILL);
        p.setStrokeJoin(Paint.Join.MITER);
    }

    private Bitmap art(String id) {
        if (!art.containsKey(id)) {
            Bitmap b = null;
            try {
                java.io.InputStream in = a.openAsset((id.indexOf('/') >= 0 ? "" : "art/") + id + ".png");
                if (in != null) {
                    b = android.graphics.BitmapFactory.decodeStream(in);
                    in.close();
                }
            } catch (Throwable t) {
                b = null;
            }
            art.put(id, b);
        }
        return art.get(id);
    }

    private static final int WAVE = 0xFF1F9EB0, LOW = 0xFFC4C8CC;

    private static int segColor(Procs.Seg g) {
        return g.wave != null ? WAVE : g.hz >= 20 ? GREEN : LOW;
    }

    /**
     * The passive procedures — the XBody panel's "Програми" page: the tiles left, the chosen one right with its length
     * (one tap; its own length has a dot, 10 = after a training), its phases in proportion and the strategy.
     */
    private void paintProcs(Canvas c) {
        Session s = a.session();
        String n = a.note();
        paintHeader(c, "ПАСИВНИ ПРОЦЕДУРИ", n.length() > 0 ? n : unitLine(s), n.length() > 0 && a.noteWarn(),
                n.length() > 0 && !a.noteWarn());
        backButton(c, "procs-back");
        float o = dx;
        for (int i = 0; i < Procs.ALL.length; i++) {
            Procs.Proc pr = Procs.ALL[i];
            float l = o + 24 + (i % 4) * 128, t = 76 + (i / 4) * 216;
            String id = "proc:" + pr.id;
            boolean on = pr.id.equals(procSel);
            round(c, l + 1.5f, t + 1.5f, l + 118.5f, t + 198.5f, 12, id.equals(pressed) ? PRESS : WHITE);
            stroke(c, l + 1.5f, t + 1.5f, l + 118.5f, t + 198.5f, 12, on ? RED : LINE, on ? 3 : 2);
            Bitmap b = art(pr.id);
            if (b != null) {
                rf.set(l + 14, t + 12, l + 106, t + 104);
                c.drawBitmap(b, new Rect(0, 0, b.getWidth(), b.getHeight()), rf, bmp);
            }
            if (on) {                                     // ✓ badge
                p.setColor(RED);
                c.drawCircle(l + 100, t + 19, 13, p);
                line(c, l + 94, t + 19.5f, l + 98.5f, t + 24, WHITE, 2.5f);
                line(c, l + 98.5f, t + 24, l + 106, t + 15, WHITE, 2.5f);
            }
            String[] words = pr.name.split(" ");
            boolean two = words.length > 1 && fit(pr.name, 15, 106) < 15;
            String l1 = two ? words[0] : pr.name, l2 = two ? pr.name.substring(l1.length() + 1) : "";
            font(Math.min(fit(l1, 15, 106), two ? fit(l2, 15, 106) : 15), true);   // one size, smaller rather than cut
            if (two) {
                text(c, l1, l, t + 112, l + 120, t + 132, 0, INK);
                text(c, l2, l, t + 132, l + 120, t + 152, 0, INK);
            } else text(c, l1, l, t + 118, l + 120, t + 142, 0, INK);
            Procs.Plan pl = Procs.plan(pr, on ? procMin : 0);
            Procs.Seg g = pl.main();
            font(13, false);
            text(c, pl.minutes + " мин · " + g.hz + (g.hz2 > 0 ? "↔" + g.hz2 : "") + " Hz", l, t + 168, l + 120, t + 190, 0, SOFT);
            hit(l, t, l + 120, t + 200, id);
        }

        // ---- right: the chosen procedure ----
        Procs.Proc pr = Procs.byId(procSel);
        Procs.Plan pl = Procs.plan(pr, procMin);
        float sl = o + 552, sw = 224, x = sl + 14, w = sw - 28;
        round(c, sl, 76, sl + sw, 584, 12, 0xFFF4F5F6);
        float tpx = 20;
        font(tpx, true);
        while (tpx > 15 && p.measureText(pr.name) > w) font(--tpx, true);
        text(c, pr.name, x, 84, x + w, 112, -1, INK);
        font(13, pl.post);
        wrap(c, pl.how, x, 114, w, 18, 2, pl.post ? GREEN : SOFT);
        float cw = w / Procs.LEN_N;
        for (int i = 0; i < Procs.LEN_N; i++) {
            int m = Procs.LENGTHS[i];
            float hl = x + i * cw;
            String id = "pmin:" + m;
            boolean sel = m == pl.minutes;
            if (sel) round(c, hl, 158, hl + cw - 4, 198, 8, INK);
            else {
                round(c, hl, 158, hl + cw - 4, 198, 8, id.equals(pressed) ? PRESS : WHITE);
                stroke(c, hl + 0.75f, 158.75f, hl + cw - 4.75f, 197.25f, 8, LINE, 1.5f);
            }
            font(16, sel);
            text(c, String.valueOf(m), hl, 156, hl + cw - 4, 192, 0, sel ? WHITE : INK);
            if (m == pr.minutes) {
                p.setColor(sel ? WHITE : SOFT);
                c.drawCircle(hl + (cw - 4) / 2, 191, 2, p);
            } else if (m == Procs.POST_MIN && pr.post != null) {
                font(9, true);
                text(c, "след", hl, 186, hl + cw - 4, 197, 0, sel ? WHITE : GREEN);
            }
            hit(hl, 154, hl + cw - 4, 202, id);
        }
        int total = pl.totalMs();
        float bx = x;
        for (int i = 0; i < pl.segs.length; i++) {
            Procs.Seg g = pl.segs[i];
            float bw = i == pl.segs.length - 1 ? x + w - bx : w * g.ms / total;
            p.setColor(segColor(g));
            c.drawRect(bx, 212, bx + bw - 2, 220, p);
            bx += bw;
        }
        for (int i = 0; i < pl.segs.length && i < 7; i++) {
            Procs.Seg g = pl.segs[i];
            float y = 228 + i * 25;
            p.setColor(segColor(g));
            c.drawCircle(x + 4, y + 12, 4, p);
            int sec = g.ms / 1000;
            String len = sec % 60 != 0 ? sec / 60 + ":" + (sec % 60 < 10 ? "0" : "") + sec % 60 : sec / 60 + " мин";
            String right = len + (g.dblHz > 0 ? " · 2×" : "");
            font(13, false);
            float rw = p.measureText(right) + 6;
            text(c, elide(g.name, w - 14 - rw), x + 14, y, x + w - rw, y + 24, -1, SOFT);
            text(c, right, x + 14, y, x + w, y + 24, 1, SOFT);
        }
        round(c, x, 410, x + w, 494, 8, 0xFFFFF4D6);
        font(13, true);
        wrap(c, pl.note, x + 10, 416, w - 20, 18, 2, 0xFF7A5500);
        font(13, false);
        wrap(c, "Силата по зоните остава твоя", x + 10, 456, w - 20, 17, 2, 0xFF7A5500);
        filled(c, x, 508, x + w, 570, "proc-go", GREEN, WHITE, "НАПРЕД  ›", 22);
    }

    /** The largest bold size ≤ px (down to 11) at which s fits in w. */
    private float fit(String s, float px, float w) {
        float f = px;
        font(f, true);
        while (f > 11 && p.measureText(s) > w) font(--f, true);
        return f;
    }

    /** Text over up to maxLines lines (word wrap), the current font. */
    private void wrap(Canvas c, String s, float l, float t, float w, float lh, int maxLines, int color) {
        String[] words = s.split(" ");
        StringBuilder line = new StringBuilder();
        int n = 0;
        for (int i = 0; i < words.length && n < maxLines; i++) {
            String tryL = line.length() == 0 ? words[i] : line + " " + words[i];
            if (p.measureText(tryL) <= w || line.length() == 0) line = new StringBuilder(tryL);
            else {
                boolean lastLine = n == maxLines - 1;
                text(c, lastLine ? elide(line + " " + join(words, i), w) : line.toString(), l, t + n * lh, l + w, t + (n + 1) * lh, -1, color);
                n++;
                if (lastLine) return;
                line = new StringBuilder(words[i]);
            }
        }
        if (n < maxLines && line.length() > 0) text(c, line.toString(), l, t + n * lh, l + w, t + (n + 1) * lh, -1, color);
    }

    private static String join(String[] w, int from) {
        StringBuilder b = new StringBuilder();
        for (int i = from; i < w.length; i++) b.append(i > from ? " " : "").append(w[i]);
        return b.toString();
    }

    // ---------------------------------------------------------------- training (XBody's screen)

    /** XBody's zone buttons are 175 wide on its 4:3 screen; the tablet's wider screen gives them room for the names. */
    private float zoneW() {
        return 175 + Math.min(40, dx / 2);
    }

    private void paintZone(Canvas c, float l, float t, int zi, boolean right) {
        Session s = a.session();
        boolean on = (sel & (1 << zi)) != 0;
        float w = zoneW();
        outlined(c, l, t, l + w, t + 50, "z:" + zi, null, 0, on);
        font(15, false);
        text(c, Session.ZONE[zi], l + 10, t, l + w - 12, t + 50, right ? 1 : -1, on ? WHITE : INK);
        int pct = s.zone(zi);
        font(18, true);
        text(c, pct + "%", l + 10, t, l + w - 12, t + 50, right ? -1 : 1, on ? WHITE : pct == 0 ? GREY : INK);
    }

    private void paintTrain(Canvas c) {
        Session s = a.session();
        long now = a.now();
        Session.Program pr = s.program();
        boolean idle = s.state() == Session.IDLE, running = s.state() == Session.RUNNING;
        int all = (1 << Session.ZONES) - 1;

        paintFigures(c, s);

        // ---- header: XEMS | unit, battery or the note | program ----
        boolean toastOn = now < toastUntil;
        String n = toastOn ? toast : a.note();
        boolean warn = toastOn || a.noteWarn();
        String sub = n.length() > 0 ? n : unitLine(s);
        paintHeader(c, modeTitle(), sub, n.length() > 0 && warn, n.length() > 0 && !warn);
        if (n.length() == 0) {
            font(14, true);
            battery(c, dw / 2 + p.measureText(sub) / 2 + 10, 37, s.battery());
        }
        if (idle) {
            hit(160, 0, dw - 152, 56, "unit");
            backButton(c, "back");                     // XBody's ← to the program screen
        }
        float pl = dw - 147;
        if ("prog".equals(pressed)) round(c, pl + 1, 0, dw, 56, 0, PRESS);
        Procs.Plan plan = s.plan();
        Session.Program lv = s.live();
        if (plan != null) {                            // a procedure: its phase now (Hz, name), or its length
            int si = s.seg();
            font(22, true);
            text(c, (si >= 0 ? lv.hz : plan.main().hz) + " Hz", pl, 3, dw, 31, 0, INK);
            font(12.5f, true);
            text(c, elide(si >= 0 ? plan.segs[si].name : plan.minutes + " мин · " + plan.segs.length + " фази", 140), pl, 30,
                    dw, 52, 0, SOFT);
        } else {
            font(22, true);
            text(c, pr.hz + " Hz", pl, 3, dw, 31, 0, running ? GREY : INK);
            String rh = pr.cont ? "непрекъснато" : pr.onS + "/" + pr.offS + " s";
            font(pr.dbl ? 12.5f : 14, true);
            text(c, rh + " · " + pr.totalS / 60 + " мин" + (pr.dbl ? " · 2×" : ""), pl, 30, dw, 52, 0, running ? GREY : SOFT);
        }
        hit(pl, 0, dw, 56, "prog");

        // ---- the zone buttons: XBody's two columns, at the screen's edges ----
        for (int i = 0; i < Session.ZONES; i++) {
            boolean right = i >= Session.ZONES_LEFT;
            int row = right ? i - Session.ZONES_LEFT : i;
            paintZone(c, right ? dw - 14 - zoneW() : 14, 86 + row * 70, i, right);
        }

        // ---- timer hump: elapsed | ВСИЧКИ | left ----
        path.reset();
        path.moveTo(dx + 190, 56);
        path.cubicTo(dx + 250, 56, dx + 250, 101, dx + 300, 101);
        path.lineTo(dx + 500, 101);
        path.cubicTo(dx + 550, 101, dx + 550, 56, dx + 609, 56);
        path.close();
        p.setColor(INK);
        c.drawPath(path, p);
        int left = s.secondsLeft(now), elapsed = pr.totalS - left;
        font(16, false);
        text(c, mmss(idle ? 0 : elapsed), dx + 250, 56, dx + 344, 101, 0, CLOCK);
        text(c, mmss(left), dx + 464, 56, dx + 558, 101, 0, CLOCK);
        if (!idle || s.startPending() || s.preparing()) paintPhase(c, s, pr, now, idle, running);
        boolean allSel = sel != 0 && sel == all;
        p.setColor(allSel ? RED : "all".equals(pressed) ? PRESS : WHITE);
        c.drawRect(dx + 344, 56, dx + 464, 101, p);
        font(17, true);
        p.setLetterSpacing(0.06f);
        text(c, "ВСИЧКИ", dx + 344, 56, dx + 464, 101, 0, allSel ? WHITE : INK);
        p.setLetterSpacing(0);
        hit(dx + 344, 56, dx + 464, 101, "all");

        // ---- СТАРТ / ПАУЗА left, СТОП right ----
        if (s.startPending()) {
            filled(c, 14, 436, 14 + zoneW(), 506, "go", GREY, WHITE, "МИГ" + "...".substring(0, (int) ((now / 400) % 4)), 24);
        } else if (running) {
            filled(c, 14, 436, 14 + zoneW(), 506, "go", YELLOW, INK, "ПАУЗА", 24);
        } else {
            filled(c, 14, 436, 14 + zoneW(), 506, "go", GREEN, WHITE, idle ? "СТАРТ" : "ПРОДЪЛЖИ", idle ? 24 : 20);
        }
        if (!idle) filled(c, dw - 14 - zoneW(), 436, dw - 14, 506, "stop", RED, WHITE, "СТОП", 24);

        // ---- MASTER hump: the strength; red = − / + and the slider move it ----
        path.reset();
        path.moveTo(dx + 190, 534);
        path.cubicTo(dx + 270, 534, dx + 300, 480, dx + 400, 480);
        path.cubicTo(dx + 500, 480, dx + 530, 534, dx + 610, 534);
        path.close();
        p.setColor(sel != 0 ? 0xFF4C535C : RED);
        c.drawPath(path, p);
        font(15, false);
        String ms = "СИЛА ";
        float w1 = p.measureText(ms);
        font(15, true);
        String mv = s.strength() + "%";
        float w2 = p.measureText(mv), x0 = dx + 400 - (w1 + w2) / 2;
        font(15, false);
        text(c, ms, x0, 500, x0 + w1 + 2, 528, -1, WHITE);
        font(15, true);
        text(c, mv, x0 + w1, 500, x0 + w1 + w2 + 2, 528, -1, WHITE);
        hit(dx + 250, 486, dx + 550, 534, "master");

        paintSlider(c);
    }

    /**
     * The body, front and back: the XEMS figures of the client's sex. Every zone in XBody's red, as strong as its
     * impulse now (light at a low strength, deep at a high one); a selected zone that gives nothing is tinted lightly,
     * as XBody lights its selection. A tap on a muscle selects its zone.
     */
    private void paintFigures(Canvas c, Session s) {
        if (figs == null || figsFemale != a.female()) {
            String sex = a.female() ? "female" : "male";
            figs = new BodyFig[] {BodyFig.load(a, sex + "_front"), BodyFig.load(a, sex + "_back")};
            figsFemale = a.female();
        }
        int[] col = new int[Session.ZONES];
        float[] alpha = new float[Session.ZONES];
        for (int z = 0; z < Session.ZONES; z++) {
            float t = s.liveLevel(Session.ZONE_CH[z]) / 100f;
            boolean picked = (sel & (1 << z)) != 0;
            if (t > 0) {
                float k2 = Math.min(1f, t / 0.8f);      // in step with the impulse: deep red from 80 %
                // the second impulse (double impulse, in the pause) in XBody's yellow — the main one in its red
                col[z] = s.second() ? mix(0xFFFFE28A, 0xFFF5A600, k2) : mix(LIGHT_RED, RED, k2);
                alpha[z] = 0.28f + 0.72f * k2;
            } else if (picked) {
                col[z] = RED;
                alpha[z] = 0.30f;
            }
        }
        for (int f = 0; f < 2; f++) {
            BodyFig b = figs[f];
            if (b == null) continue;
            float hgt = 372, wid = hgt * b.w / b.h, cxf = dx + (f == 0 ? 290 : 510), top = 106;
            RectF r = figRect[f];
            r.set(cxf - wid / 2, top, cxf + wid / 2, top + hgt);
            Rect src = new Rect(0, 0, b.w, b.h);
            c.drawBitmap(b.art, src, r, bmp);
            b.paint(col, alpha);
            c.drawBitmap(b.over, src, r, bmp);
            hit(r.left, r.top, r.right, r.bottom, "fig:" + f);
        }
    }

    /** The header's title: the program (XBody's "CARDIOVASCULAR"). */
    private String modeTitle() {
        Session s = a.session();
        if (a.mode() == Procs.MODE_PROC && s != null && s.plan() != null) return s.plan().proc.name.toUpperCase();
        return a.mode() >= 0 ? Procs.MODE_NAME[a.mode()].toUpperCase() : "ИЗБОР НА ПРОГРАМА";
    }

    private String unitLine(Session s) {
        String u = a.linkedName() == null ? "WiEMS" : a.linkedName();
        return u + "   ·   батерия " + (s.battery() < 0 ? "—" : s.battery() + "%");
    }

    /** XBody's ← (its tray's Return), in the header's left block: over the logo. */
    private void backButton(Canvas c, String id) {
        p.setColor(WHITE);
        c.drawRect(0, 0, 154, 55, p);
        if (id.equals(pressed)) round(c, 6, 8, 148, 48, 8, PRESS);
        line(c, 22, 28, 40, 28, INK, 2.2f);
        line(c, 22, 28, 30, 20, INK, 2.2f);
        line(c, 22, 28, 30, 36, INK, 2.2f);
        font(15, true);
        text(c, "Програми", 50, 8, 150, 48, -1, INK);
        hit(0, 0, 155, 56, id);
    }

    private void paintPhase(Canvas c, Session s, Session.Program pr, long now, boolean idle, boolean running) {
        float l = dx + 344, t = 101, r = dx + 464, b = 165;
        round(c, l + 0.5f, t - 8, r - 0.5f, b - 0.5f, 6, WHITE);
        stroke(c, l + 0.5f, t - 8, r - 0.5f, b - 0.5f, 6, LINE, 1.5f);
        String txt;
        int col;
        float px = 50;
        pr = s.live();
        if (running) {
            int sec = (s.phaseMsLeft(now) + 999) / 1000;
            txt = (sec < 10 ? "0" : "") + sec;
            col = s.impulse() ? GREEN : pr.cont ? YELLOW : GREY;   // XBody: exercise green, rest yellow
        } else if (!idle) {
            txt = "II";
            col = YELLOW;
        } else {
            txt = "…";
            col = YELLOW;
            px = 36;
        }
        font(px, true);
        text(c, txt, l, t - 4, r, b - 4, 0, col);
        if (running) {
            int len = (s.impulse() ? pr.onS : pr.offS) * 1000;
            float f = len > 0 ? 1f - (float) s.phaseMsLeft(now) / len : 0;
            f = Math.max(0, Math.min(1, f));
            round(c, l + 14, b - 9, r - 14, b - 5, 2, HEAD_LINE);
            round(c, l + 14, b - 9, l + 14 + (r - l - 28) * f, b - 5, 2, s.impulse() ? GREEN : pr.cont ? YELLOW : GREY);
        }
    }

    private float sliderX0() {
        return 104;
    }

    private float sliderX1() {
        return dw - 98;
    }

    /** XBody's slider bar: dark slate, a recessed track, the glowing LEDs up to the value, the grey fader chip. */
    private void paintSlider(Canvas c) {
        p.setColor(0xFF313741);
        c.drawRect(0, 535, dw, 600, p);
        if ("dec".equals(pressed)) round(c, 0, 535, 79, 600, 0, 0x22FFFFFF);
        if ("inc".equals(pressed)) round(c, dw - 79, 535, dw, 600, 0, 0x22FFFFFF);
        line(c, 79, 545, 79, 590, 0xFF464C56, 1);
        line(c, dw - 79, 545, dw - 79, 590, 0xFF464C56, 1);
        line(c, 26, 567, 54, 567, WHITE, 2);
        line(c, dw - 54, 567, dw - 26, 567, WHITE, 2);
        line(c, dw - 40, 553, dw - 40, 581, WHITE, 2);
        hit(0, 535, 79, 600, "dec");
        hit(dw - 79, 535, dw, 600, "inc");
        int v = selValue();
        float x0 = sliderX0(), x1 = sliderX1(), x = x0 + (x1 - x0) * v / 100f;
        round(c, x0 - 4, 562, x1 + 4, 572, 5, 0xFF262A31);              // the recessed track
        if (x > x0 + 1) {
            int n = Math.max(2, (int) ((x - x0) / 6));
            for (int pass = 0; pass < 2; pass++) {                       // the glow, then the LED line
                for (int i = 0; i < n; i++) {
                    float a0 = x0 + (x - x0) * i / n, a1 = x0 + (x - x0) * (i + 1) / n;
                    int col = led((a0 + a1) / 2 - x0, x1 - x0);
                    if (pass == 0) line(c, a0, 567, a1, 567, (col & 0x00FFFFFF) | 0x38000000, 14);
                    else line(c, a0, 567, a1, 567, col, 6);
                }
            }
        }
        // the fader: XBody's light chip with its grip lines
        round(c, x - 17, 549, x + 17, 585, 4, 0xFFE9EAEC);
        round(c, x - 17, 549, x + 17, 567, 4, 0xFFF7F7F8);
        stroke(c, x - 17, 549, x + 17, 585, 4, 0xFFB7BABF, 1);
        for (int g = -1; g <= 1; g++) line(c, x + g * 6, 557, x + g * 6, 577, 0xFFBFC2C6, 1.5f);
        hit(80, 535, dw - 80, 600, "slider");
    }

    /** XBody's LED colour at offset d of the scale's length len. */
    private static int led(float d, float len) {
        float f = Math.max(0, Math.min(1, d / len)) * (LEDS.length - 1);
        int i = Math.min(LEDS.length - 2, (int) f);
        return mix(LEDS[i], LEDS[i + 1], f - i);
    }

    private int selValue() {
        Session s = a.session();
        if (s == null) return 0;
        if (sel == 0) return s.strength();
        for (int i = 0; i < Session.ZONES; i++) if ((sel & (1 << i)) != 0) return s.zone(i);
        return 0;
    }

    private void setSelValue(int v) {
        Session s = a.session();
        if (s == null) return;
        v = Math.max(0, Math.min(100, v));
        if (sel == 0) {
            s.setStrength(v);
            return;
        }
        for (int i = 0; i < Session.ZONES; i++) if ((sel & (1 << i)) != 0 && s.zone(i) != v) s.setZone(i, v);
    }

    /** XBody's showPercent: while a value changes, a big % over the body with what it belongs to. */
    private void paintBubble(Canvas c) {
        String what = "Сила";
        if (sel != 0) {
            int cnt = 0;
            StringBuilder names = new StringBuilder();
            for (int i = 0; i < Session.ZONES; i++)
                if ((sel & (1 << i)) != 0) {
                    cnt++;
                    if (cnt <= 2) names.append(names.length() > 0 ? ", " : "").append(Session.ZONE[i]);
                }
            what = cnt == Session.ZONES ? "Всички зони" : names + (cnt > 2 ? " +" + (cnt - 2) : "");
        }
        float l = dx + 260, t = 222;
        round(c, l, t + 4, l + 280, t + 154, 16, 0x2D000000);
        round(c, l, t, l + 280, t + 150, 16, 0xEB303741);
        font(64, true);
        text(c, selValue() + "%", l, t + 10, l + 280, t + 96, 0, WHITE);
        font(16, false);
        text(c, elide(what, 256), l + 12, t + 98, l + 268, t + 132, 0, CLOCK);
    }

    // ---------------------------------------------------------------- "Настройки на сесията" (the panel's sheet)

    private void caption(Canvas c, float x, float y, String s) {
        font(13, true);
        p.setLetterSpacing(0.1f);
        text(c, s, x, y, x + 360, y + 20, -1, GREY);
        p.setLetterSpacing(0);
    }

    private void pill(Canvas c, float l, float t, float r, float b, String value, String field) {
        float h = b - t;
        round(c, l + 1, t + 1, r - 1, b - 1, h / 2, WHITE);
        stroke(c, l + 1, t + 1, r - 1, b - 1, h / 2, LINE, 2);
        for (int i = 0; i < 2; i++) {
            float kl = i == 1 ? r - h : l, cxk = kl + h / 2, cyk = t + h / 2;
            String id = "st:" + field + (i == 1 ? ":+" : ":-");
            if (id.equals(pressed)) {
                p.setColor(PRESS);
                c.drawCircle(cxk, cyk, h / 2 - 4, p);
            }
            int ink = field == null ? LINE : INK;
            line(c, cxk - 9, cyk, cxk + 9, cyk, ink, 2.5f);
            if (i == 1) line(c, cxk, cyk - 9, cxk, cyk + 9, ink, 2.5f);
            if (field != null) hit(kl, t, kl + h, b, id);
        }
        font(20, true);
        text(c, value, l + h, t, r - h, b, 0, INK);
    }

    private void paintSheet(Canvas c) {
        p.setColor(0x96303741);
        c.drawRect(0, 0, dw, 600, p);
        hits.clear();   // only the sheet answers
        float o = dx;
        round(c, o + 36, 26, o + 764, 582, 14, 0x28000000);
        round(c, o + 36, 22, o + 764, 578, 14, WHITE);
        font(22, false);
        text(c, "Настройки на сесията", o + 64, 34, o + 564, 78, -1, INK);
        line(c, o + 64, 84, o + 736, 84, HEAD_LINE, 1);
        line(c, o + 432, 100, o + 432, 452, HEAD_LINE, 1);
        Session.Program q = sheetProg;
        boolean locked = a.session() != null && a.session().state() == Session.RUNNING;
        Procs.Plan plan = a.mode() == Procs.MODE_PROC && a.session() != null ? a.session().plan() : null;
        if (plan != null) sheetProc(c, o, plan, a.session().state() != Session.IDLE);
        else {
        caption(c, o + 64, 98, locked ? "ПРОГРАМА · СМЕНЯ СЕ НА ПАУЗА" : "ПРОГРАМА");
        String[] labels = {"Честота", "Времетраене", "Рампа"};
        String[] values = {q.hz + " Hz", q.totalS / 60 + " мин", q.rampMs == 0 ? "без" : q.rampMs / 1000 + " s"};
        String[] fields = {"hz", "total", "ramp"};
        for (int i = 0; i < 3; i++) {
            float y = 120 + i * 60;
            font(16, false);
            text(c, labels[i], o + 64, y, o + 222, y + 50, -1, INK);
            pill(c, o + 222, y, o + 408, y + 50, values[i], locked ? null : fields[i]);
        }
        font(16, false);
        text(c, "Ритъм", o + 64, 302, o + 364, 326, -1, INK);
        float bl = o + 64, bw = 344, wOn = bw * q.onS / Math.max(1, q.onS + q.offS);
        round(c, bl, 332, bl + bw, 342, 5, q.dbl ? 0xFFFFD966 : HEAD_LINE);    // yellow pause = the double impulse
        round(c, bl, 332, bl + wOn, 342, 5, GREEN);
        pill(c, o + 64, 354, o + 230, 404, q.onS + " s", locked ? null : "on");
        pill(c, o + 242, 354, o + 408, 404, q.offS + " s", locked ? null : "off");
        font(14, true);
        text(c, q.cont ? "движение" : "импулс", o + 64, 406, o + 230, 428, 0, GREEN);
        text(c, q.cont ? "почивка · импулсът продължава" : "пауза", o + 242, 406, o + 408, 428, 0, q.cont ? 0xFFB08300 : SOFT);
        }

        // ---- right: the client ----
        caption(c, o + 456, 98, "КЛИЕНТ");
        // the figures' sex: a segmented control, the chosen half red (XBody's selected state)
        round(c, o + 457, 127, o + 735, 181, 10, WHITE);
        stroke(c, o + 457, 127, o + 735, 181, 10, LINE, 2);
        for (int i = 0; i < 2; i++) {
            float hl = o + 456 + i * 140;
            boolean chosen = a.female() == (i == 0);
            String id = i == 0 ? "sex-f" : "sex-m";
            if (chosen) round(c, hl + 4, 130, hl + 136, 178, 8, RED);
            else if (id.equals(pressed)) round(c, hl + 4, 130, hl + 136, 178, 8, PRESS);
            font(18, chosen);
            text(c, (chosen ? "✓ " : "") + (i == 0 ? "Жена" : "Мъж"), hl, 126, hl + 140, 182, 0, chosen ? WHITE : INK);
            hit(hl, 126, hl + 140, 182, id);
        }
        outlined(c, o + 456, 198, o + 736, 254, locked ? null : "age60", null, 0, false);
        font(17, false);
        text(c, "Над 60 години", o + 472, 198, o + 646, 254, -1, locked ? GREY : INK);
        float sl = o + 736 - 92, st = 226 - 15;
        round(c, sl, st, sl + 80, st + 30, 15, sheetAge60 ? GREEN : 0xFFD5D7DA);
        p.setColor(WHITE);
        c.drawCircle(sheetAge60 ? sl + 65 : sl + 15, st + 15, 12, p);
        if (sheetAge60) {
            font(14, true);
            text(c, "✓ Честотата спира до 85 Hz", o + 456, 258, o + 736, 280, -1, GREEN);
        }
        if (plan != null) {                              // a procedure: its phases carry their own second impulse
            caption(c, o + 456, 296, "КАК");
            font(15, false);
            wrap(c, plan.how, o + 456, 322, 280, 22, 3, INK);
            font(14, false);
            text(c, "Силата по зоните остава твоя", o + 456, 400, o + 736, 424, -1, SOFT);
        } else {
        // ---- the double impulse: a second, low impulse in the pause (the unit's own rest Hz / %) ----
        caption(c, o + 456, 296, "ДВОЕН ИМПУЛС");
        float ds = o + 736 - 80, dt = 290;
        round(c, ds, dt, ds + 80, dt + 30, 15, q.dbl ? YELLOW : 0xFFD5D7DA);
        p.setColor(WHITE);
        c.drawCircle(q.dbl ? ds + 65 : ds + 15, dt + 15, 12, p);
        if (!locked) hit(ds - 90, dt - 6, ds + 80, dt + 36, "dbl");
        pill(c, o + 456, 330, o + 592, 380, q.dblHz + " Hz", q.dbl && !locked ? "dblhz" : null);
        pill(c, o + 600, 330, o + 736, 380, q.dblPct + "%", q.dbl && !locked ? "dblpct" : null);
        // what the session will be (derived, nothing to set): one line
        int cycles = q.onS + q.offS > 0 ? q.totalS / (q.onS + q.offS) : 0;
        font(14, false);
        text(c, cycles + " импулса · " + q.onS * cycles / 60 + " мин работа", o + 456, 400, o + 736, 424, -1, SOFT);
        }

        line(c, o + 64, 470, o + 736, 470, HEAD_LINE, 1);
        outlined(c, o + 64, 494, o + 264, 554, "sheet-cancel", "Откажи", 18, false);
        filled(c, o + 496, 494, o + 736, 554, "sheet-ok", GREEN, WHITE, "✓  Готово", 20);
    }

    /** The sheet's left half for a procedure: its length (while it has not started), its phases, the strategy. */
    private void sheetProc(Canvas c, float o, Procs.Plan cur, boolean locked) {
        Procs.Plan pl = locked ? cur : Procs.plan(cur.proc, sheetMin);
        caption(c, o + 64, 98, locked ? "ПРОЦЕДУРА · ДЪЛЖИНАТА Е ПРЕДИ СТАРТ" : "ПРОЦЕДУРА · ДЪЛЖИНА, МИН");
        float x = o + 64, w = 344, cw = w / Procs.LEN_N;
        for (int i = 0; i < Procs.LEN_N; i++) {
            int m = Procs.LENGTHS[i];
            float hl = x + i * cw;
            String id = "pmin:" + m;
            boolean sel = m == pl.minutes;
            if (sel) round(c, hl, 124, hl + cw - 6, 168, 8, locked ? GREY : INK);
            else {
                round(c, hl, 124, hl + cw - 6, 168, 8, id.equals(pressed) ? PRESS : WHITE);
                stroke(c, hl + 0.75f, 124.75f, hl + cw - 6.75f, 167.25f, 8, LINE, 1.5f);
            }
            font(18, sel);
            text(c, String.valueOf(m), hl, 122, hl + cw - 6, 162, 0, sel ? WHITE : locked ? GREY : INK);
            if (m == cur.proc.minutes) {
                p.setColor(sel ? WHITE : SOFT);
                c.drawCircle(hl + (cw - 6) / 2, 161, 2, p);
            }
            if (!locked) hit(hl, 120, hl + cw - 6, 172, id);
        }
        int total = pl.totalMs();
        float bx = x;
        int now = locked ? a.session().seg() : -1;
        for (int i = 0; i < pl.segs.length; i++) {
            Procs.Seg g = pl.segs[i];
            float bw = i == pl.segs.length - 1 ? x + w - bx : w * g.ms / total;
            p.setColor(segColor(g));
            c.drawRect(bx, 184, bx + bw - 2, 192, p);
            bx += bw;
        }
        for (int i = 0; i < pl.segs.length && i < 8; i++) {
            Procs.Seg g = pl.segs[i];
            float y = 200 + i * 28;
            p.setColor(segColor(g));
            c.drawCircle(x + 5, y + 14, 5, p);
            int sec = g.ms / 1000;
            String len = sec % 60 != 0 ? sec / 60 + ":" + (sec % 60 < 10 ? "0" : "") + sec % 60 : sec / 60 + " мин";
            String right = g.hz + (g.hz2 > 0 ? "↔" + g.hz2 : "") + " Hz · " + len + (g.dblHz > 0 ? " · 2×" : "");
            font(15, i == now);
            float rw = p.measureText(right) + 8;
            text(c, (i == now ? "▶ " : "") + elide(g.name, w - 18 - rw), x + 16, y, x + w - rw, y + 28, -1, i == now ? INK : SOFT);
            text(c, right, x + 16, y, x + w, y + 28, 1, i == now ? INK : SOFT);
        }
        font(14, true);
        text(c, pl.note, x, 428, x + w, 452, -1, 0xFF7A5500);
    }

    /** XBody's message dialog: a dark red band over the whole width. */
    private void paintConfirm(Canvas c) {
        p.setColor(0x78FFFFFF);
        c.drawRect(0, 0, dw, 600, p);
        hits.clear();
        p.setColor(DIALOG);
        c.drawRect(0, 150, dw, 382, p);
        font(32, false);
        text(c, "Прекъсни връзката с WiEMS?", 0, 170, dw, 220, 0, WHITE);
        font(17, false);
        text(c, "Изходите се изключват. Ще можеш да избереш друг модул.", 40, 222, dw - 40, 272, 0, WHITE);
        for (int i = 0; i < 2; i++) {
            float l = i == 1 ? dw / 2 + 20 : dw / 2 - 210;
            String id = i == 1 ? "confirm-yes" : "confirm-no";
            if (id.equals(pressed)) round(c, l + 1, 295, l + 189, 349, 8, 0x3CFFFFFF);
            stroke(c, l + 1, 295, l + 189, 349, 8, WHITE, 2);
            font(18, false);
            text(c, i == 1 ? "ПРЕКЪСНИ" : "ОСТАВИ", l, 294, l + 190, 350, 0, WHITE);
            hit(l, 294, l + 190, 350, id);
        }
    }

    // ---------------------------------------------------------------- touch

    private float[] toDesign(MotionEvent e) {
        float w = getWidth(), h = getHeight();
        float ox = (w - dw * k) / 2, oy = (h - 600 * k) / 2;
        return new float[] {(e.getX() - ox) / k, (e.getY() - oy) / k};
    }

    private String idAt(float x, float y) {
        for (int i = hits.size() - 1; i >= 0; i--) if (hits.get(i).r.contains(x, y)) return hits.get(i).id;
        return "";
    }

    private static boolean isStepper(String id) {
        return id.equals("inc") || id.equals("dec") || id.startsWith("st:");
    }

    @Override
    public boolean onTouchEvent(MotionEvent e) {
        float[] d = toDesign(e);
        switch (e.getActionMasked()) {
            case MotionEvent.ACTION_DOWN:
                tapX = d[0];
                tapY = d[1];
                pressed = idAt(d[0], d[1]);
                pressMs = repeatMs = a.now();
                if (pressed.equals("slider")) drag(d[0]);
                else if (isStepper(pressed)) act(pressed, false);   // answer on touch, then repeat while held
                invalidate();
                return true;
            case MotionEvent.ACTION_MOVE:
                if (pressed.equals("slider")) drag(d[0]);
                return true;
            case MotionEvent.ACTION_UP: {
                String id = pressed;
                pressed = "";
                if (id.length() > 0 && !isStepper(id) && !id.equals("slider") && id.equals(idAt(d[0], d[1]))) act(id, false);
                invalidate();
                return true;
            }
            case MotionEvent.ACTION_CANCEL:
                pressed = "";
                invalidate();
                return true;
            default:
                return true;
        }
    }

    private void drag(float x) {
        if (a.session() == null) return;
        float x0 = sliderX0(), x1 = sliderX1();
        int v = Math.max(0, Math.min(100, (int) (100f * (x - x0) / (x1 - x0) + 0.5f)));
        if (sel != 0) v = (v + 2) / 5 * 5;      // zones in steps of 5 under a finger
        if (v != selValue()) setSelValue(v);
        bubbleUntil = a.now() + 1200;
        invalidate();
    }

    private void showToast(String s) {
        toast = s;
        toastUntil = a.now() + 3000;
    }

    private static int bound(int lo, int v, int hi) {
        return Math.max(lo, Math.min(hi, v));
    }

    private void act(String id, boolean repeat) {
        Session s = a.session();
        if (id.equals("inc") || id.equals("dec")) {   // MASTER ±1, zones to the next 5 %
            int d = id.equals("inc") ? 1 : -1;
            if (s == null) return;
            if (sel == 0) s.setStrength(s.strength() + d);
            else setSelValue(d > 0 ? (selValue() / 5 + 1) * 5 : (selValue() + 4) / 5 * 5 - 5);
            bubbleUntil = a.now() + 1200;
            return;
        }
        if (id.startsWith("st:")) {
            String[] parts = id.split(":");
            int d = parts[2].equals("+") ? 1 : -1;
            Session.Program q = sheetProg;
            if (parts[1].equals("hz")) q.hz = bound(1, q.hz + d, sheetAge60 ? 85 : 120);
            else if (parts[1].equals("total")) q.totalS = bound(1, q.totalS / 60 + d, 60) * 60;
            else if (parts[1].equals("on")) {
                q.onS = bound(1, q.onS + d, 30);
                q.rampMs = Math.min(q.rampMs, Math.max(0, q.onS - 1) * 1000);   // the rise stays inside the impulse
            }
            else if (parts[1].equals("off")) q.offS = bound(1, q.offS + d, 60);
            else if (parts[1].equals("ramp")) q.rampMs = bound(0, q.rampMs / 1000 + d, Math.max(0, q.onS - 1)) * 1000;
            else if (parts[1].equals("dblhz")) q.dblHz = bound(1, q.dblHz + d, Math.max(1, Math.min(10, q.hz - 1)));
            else if (parts[1].equals("dblpct")) q.dblPct = bound(10, q.dblPct + d * 10, 150);
            return;
        }
        if (repeat) return;
        if (id.equals("perm")) {
            a.askPermission();
            return;
        }
        if (id.equals("bt")) {
            a.askBluetooth();
            return;
        }
        if (id.startsWith("unit:")) {
            a.connectTo(id.substring(5));
            return;
        }
        if (id.startsWith("fig:") && figs != null) {   // a muscle on the figure: its zone into / out of the selection
            int f = id.charAt(4) - '0';
            BodyFig b = figs[f];
            RectF r = figRect[f];
            int z = b == null ? -1 : b.zoneAt((tapX - r.left) / r.width(), (tapY - r.top) / r.height());
            if (z >= 0) sel ^= 1 << z;
            return;
        }
        if (id.startsWith("z:")) {   // tap = into / out of the selection (as on XBody)
            int b = 1 << Integer.parseInt(id.substring(2));
            sel = (sel & b) != 0 ? sel & ~b : sel | b;
            return;
        }
        if (id.equals("all")) {
            int all = (1 << Session.ZONES) - 1;
            sel = sel == all ? 0 : all;
            return;
        }
        if (id.equals("master")) {
            sel = 0;
            return;
        }
        if (id.equals("go")) {
            a.startPause();
            return;
        }
        if (id.equals("stop")) {
            if (s != null) s.stop();
            return;
        }
        if (id.equals("prog") && s != null) {
            sheetProg = s.program().copy();
            sheetAge60 = a.age60();
            sheetMin = s.plan() != null ? s.plan().minutes : 0;
            sheet = true;
            return;
        }
        if (id.equals("age60")) {
            sheetAge60 = !sheetAge60;
            if (sheetAge60 && sheetProg.hz > 85) sheetProg.hz = 85;
            return;
        }
        if (id.equals("dbl")) {
            sheetProg.dbl = !sheetProg.dbl;
            return;
        }
        if (id.equals("sheet-cancel")) {
            sheet = false;
            return;
        }
        if (id.equals("sheet-ok")) {
            if (a.mode() == Procs.MODE_PROC && s != null && s.plan() != null && s.state() == Session.IDLE) {
                procMin = sheetMin;
                a.chooseProc(s.plan().proc.id, sheetMin);
            }
            if (s == null || s.state() != Session.RUNNING) a.applyProgram(sheetProg, sheetAge60);
            sheet = false;
            return;
        }
        if (id.equals("sex-f") || id.equals("sex-m")) {   // the figures change at once, also mid-training
            a.setFemale(id.equals("sex-f"));
            return;
        }
        if (id.startsWith("mode:")) {                   // one of XBody's modes → its training screen
            a.chooseMode(Integer.parseInt(id.substring(5)));
            sel = 0;
            return;
        }
        if (id.equals("procs")) {
            procPage = true;
            return;
        }
        if (id.equals("procs-back")) {
            procPage = false;
            return;
        }
        if (id.startsWith("proc:")) {
            String pid = id.substring(5);
            if (!pid.equals(procSel)) procMin = 0;      // a new procedure starts at its own length
            procSel = pid;
            return;
        }
        if (id.startsWith("pmin:")) {
            int m = Integer.parseInt(id.substring(5));
            if (sheet) sheetMin = m;
            else procMin = m;
            return;
        }
        if (id.equals("proc-go")) {
            a.chooseProc(procSel, procMin);
            sel = 0;
            return;
        }
        if (id.equals("back")) {                         // ← the program screen (the procedure page if one was on)
            procPage = a.mode() == Procs.MODE_PROC;
            a.backToModes();
            return;
        }
        if (id.equals("unit") && s != null && s.state() == Session.IDLE) {
            confirm = true;
            return;
        }
        if (id.equals("confirm-no")) {
            confirm = false;
            return;
        }
        if (id.equals("confirm-yes")) {
            confirm = false;
            sel = 0;
            a.forget();
        }
    }
}
