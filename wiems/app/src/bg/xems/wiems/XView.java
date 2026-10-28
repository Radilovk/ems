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
    static final int WHITE = 0xFFFFFFFF, RED = 0xFFE21A22, GREEN = 0xFF00B38B, YELLOW = 0xFFFFC000, BAR = 0xFF22262E,
            DIALOG = 0xFF6B2F2F, FIGURE = 0xFFD9DBDE, CLOCK = 0xFFBEC0C2;
    /**
     * The theme's colours (owner, v1.15: light = XBody's, and a dark one), set by {@link #theme}: SURF = a button /
     * card / sheet, INK = text, HUMP = the timer hump. Kept in capitals as the constants they replaced.
     */
    int SURF, INK, GREY, LINE, SOFT, PRESS, HEAD_LINE, HUMP, PANEL, NOTE_BG, NOTE_INK, OK_BG, TRACK, SCRIM, VEIL, CONT_INK,
            BG_LO, BG_HI;
    private boolean darkNow;

    /** Light: XBody's own colours. Dark: slate surfaces on a near-black grain, the same red / green / yellow. */
    void theme(boolean dark) {
        darkNow = dark;
        SURF = dark ? 0xFF272C34 : 0xFFFFFFFF;
        INK = dark ? 0xFFE9EBEE : 0xFF303741;
        GREY = dark ? 0xFF7D848D : 0xFFB1B3B5;
        LINE = dark ? 0xFF4A515B : 0xFFBFC2C5;
        SOFT = dark ? 0xFFA6ADB5 : 0xFF6B7178;
        PRESS = dark ? 0xFF353B45 : 0xFFECEDEE;
        HEAD_LINE = dark ? 0xFF353B44 : 0xFFE3E4E6;
        HUMP = dark ? 0xFF3B4350 : 0xFF303741;
        PANEL = dark ? 0xFF20252C : 0xFFF4F5F6;
        NOTE_BG = dark ? 0xFF3B3220 : 0xFFFFF4D6;
        NOTE_INK = dark ? 0xFFF2C46B : 0xFF7A5500;
        OK_BG = dark ? 0xFF16392F : 0xFFE6F6F0;
        TRACK = dark ? 0xFF4A515B : 0xFFD5D7DA;
        SCRIM = dark ? 0xB4000000 : 0x96303741;
        VEIL = dark ? 0x96000000 : 0x78FFFFFF;
        CONT_INK = dark ? 0xFFF2C46B : 0xFFB08300;
        BG_LO = dark ? 22 : 250;
        BG_HI = dark ? 27 : 255;
        grain = null;
        setBackgroundColor(dark ? 0xFF181C21 : WHITE);
    }

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
    private boolean service;                    // hidden service mode: which unit channel is which body part
    private int svcZone = -1;                   // the zone being tried there (-1: none)
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
    // the slider moves only when its fader is grabbed and dragged (owner: a stray touch on the bar must never raise
    // or drop the impulses) — grabX / grabV = where the finger took the fader and the value then; −1 = not grabbed
    private float grabX = -1;
    private int grabV;
    private boolean grabMoved;
    static final float GRAB = 34;               // half the fader's catch area (design units, the chip is 34 wide)
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
        theme(h.dark());
    }

    // ---------------------------------------------------------------- frame

    /** A selection ends by itself after this long without any touch (owner): back to СИЛА. */
    static final int SEL_IDLE_MS = 5000;
    /** Edge to edge of a zone label = this many % (the XEMS focus board's chip slide), ≤ this per slide. */
    static final int SLIDE = 20;
    private long touchedMs;
    private int slideZone = -1, slideStart, slideValue = -1;
    private float slideX0, slideY0;
    private boolean sliding;

    void tick(long now) {
        if (sel != 0 && !service && pressed.length() == 0 && !sheet && !confirm && now - touchedMs > SEL_IDLE_MS) {
            sel = 0;                                     // 5 s with no touch at all: the selection ends
            invalidate();
        }
        if (("logo".equals(pressed) || "back".equals(pressed)) && now - pressMs > 2000 && serviceHold()) {
            pressed = "";                           // the finger's lift does nothing more
            toggleService();
        }
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
        b.append(slideZone).append(slideValue).append(a.viewKind()).append('|').append(a.note()).append(a.noteWarn()).append('|').append(pressed)
                .append(sheet).append(confirm).append(sel).append(now < bubbleUntil).append(now < toastUntil)
                .append(service).append(svcZone).append(a.channels().save()).append(a.dark());
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
            for (int i = 0; i < Channels.PARTS; i++) b.append(',').append(s.partLevel(i)).append('/').append(s.liveLevel(i));
            b.append(a.female());
            b.append('|').append(s.secondsLeft(now)).append(' ').append((s.phaseMsLeft(now) + 999) / 1000);
            if (s.startPending()) b.append((now / 400) % 4);
        }
        if (sheet) b.append(sheetProg.hz).append(sheetProg.onS).append(sheetProg.offS).append(sheetProg.totalS).append(sheetAge60)
                .append(sheetProg.rampMs).append(sheetProg.dbl).append(sheetProg.dblHz).append(sheetProg.dblPct).append(sheetProg.us);
        return b.toString();
    }

    @Override
    protected void onDraw(Canvas c) {
        float w = getWidth(), h = getHeight();
        if (a.dark() != darkNow) theme(a.dark());
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
                int g = BG_LO + r.nextInt(BG_HI - BG_LO + 1);
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
            round(c, l + 1, t + 1, r - 1, b - 1, 8, down ? PRESS : SURF);
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
        hit(0, 0, 155, 56, "logo");                   // a long press sends the unit trace
        boolean unit = a.session() != null || a.linkingMac() != null || a.held();
        if (unit) {                                   // the kind in use, small, after the logo
            String kn = Dev.SHORT[a.kind()];
            float fs = 12;
            font(fs, true);
            while (fs > 8 && p.measureText(kn) > 44) font(--fs, true);   // "bodytech" fits before the divider
            text(c, kn, 106, 22, 152, 40, -1, RED);
        }
        font(20, true);
        p.setLetterSpacing(0.08f);
        text(c, elide(title, dw - 330), 160, 2, dw - 152, 32, 0, GREY);
        p.setLetterSpacing(0);
        if (sub.length() > 0) {
            font(14, true);
            text(c, elide(sub, dw - 330), 160, 30, dw - 152, 54, 0, warn ? RED : ok ? GREEN : INK);
        }
    }

    /** The header's right block where it is free (the list, the program screens): light ↔ dark. */
    private void themeButton(Canvas c) {
        float l = dw - 147, cy = 28;
        if ("theme".equals(pressed)) round(c, l + 6, 8, dw - 6, 48, 8, PRESS);
        themeIcon(c, l + 24, cy, !darkNow);
        font(14, true);
        text(c, darkNow ? "Светла" : "Тъмна", l + 42, 8, dw - 8, 48, -1, INK);
        hit(l, 0, dw, 56, "theme");
    }

    /** A moon (go dark) or a sun (go light), drawn — no font glyphs. */
    private void themeIcon(Canvas c, float cx, float cy, boolean moon) {
        p.setStyle(Paint.Style.FILL);
        if (moon) {
            p.setColor(INK);
            c.drawCircle(cx, cy, 9, p);
            p.setColor(darkNow ? 0xFF1B1F25 : 0xFFFBFBFB);
            c.drawCircle(cx + 5, cy - 4, 8, p);
        } else {
            p.setColor(YELLOW);
            c.drawCircle(cx, cy, 5.5f, p);
            for (int i = 0; i < 8; i++) {
                double r = Math.PI * i / 4;
                line(c, cx + (float) Math.cos(r) * 8.5f, cy + (float) Math.sin(r) * 8.5f, cx + (float) Math.cos(r) * 11.5f,
                        cy + (float) Math.sin(r) * 11.5f, YELLOW, 2);
            }
        }
    }

    // ---------------------------------------------------------------- the list / the states before a link

    private void paintPick(Canvas c, int v) {
        long now = a.now();
        String dots = "...".substring(0, (int) ((now / 400) % 4));
        String n = a.note();
        String title = "ИЗБЕРИ УСТРОЙСТВО", sub = n.length() > 0 ? n : (a.held() ? "Тренировката чака · свързвам отново" : "Търся наблизо") + dots, big = null;
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
        themeButton(c);
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
            text(c, "Включи WiEMS, XEMS или bodytech — ще се появи тук", 0, 250, dw, 290, 0, INK);
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
            String kn = Dev.SHORT[d.kind];
            font(fit(kn, 24, 136), true);
            text(c, kn, l, t + 20, l + 150, t + 80, 0, linking ? WHITE : RED);
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
        themeButton(c);
        font(17, false);
        text(c, "Какво тренираме днес?", 0, 70, dw, 104, 0, INK);
        int[] m = {Procs.MODE_MUSCLE, Procs.MODE_CARDIO, Procs.MODE_RELAX, Procs.MODE_MANUAL, Procs.MODE_PROC};
        String[] label = {"МУСКУЛИ", "КАРДИО", "РЕЛАКС", "РЪЧНИ НАСТРОЙКИ", "ПАСИВНИ ПРОЦЕДУРИ"};
        float[] cx = {dx + 152, dx + 400, dx + 648, dx + 276, dx + 524};
        for (int i = 0; i < 5; i++) {
            float l = cx[i] - 75, t = i < 3 ? 120 : 330;
            String id = i == 4 ? "procs" : "mode:" + m[i];
            boolean down = id.equals(pressed);
            Bitmap tile = art("xbody/" + TILE[i] + (down ? "SelectorPressed" : "Selector"));
            if (darkNow && !down) tile = darkTile(TILE[i], tile);
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
            p.setColor(SURF);
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
                p.setColor(SURF);
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

    /**
     * XBody's tile for the dark theme (owner: the same pictures in both themes). The tile is see-through: a faint
     * slate rim and the accent icon; on dark only the rim turns light (its alpha kept), the icon stays as it is.
     * The pressed tiles (accent fill, white icon) read on dark unchanged.
     */
    private Bitmap darkTile(String name, Bitmap src) {
        String key = "dark/" + name + "/" + INK;
        if (art.containsKey(key)) return art.get(key);
        Bitmap b = null;
        if (src != null) {
            int w = src.getWidth(), h = src.getHeight();
            int[] px = new int[w * h];
            src.getPixels(px, 0, w, 0, 0, w, h);
            for (int k = 0; k < px.length; k++) {
                int r = (px[k] >> 16) & 255, g = (px[k] >> 8) & 255, bl = px[k] & 255;
                if (Math.abs(r - g) < 24 && Math.abs(g - bl) < 24) px[k] = (px[k] & 0xFF000000) | (INK & 0xFFFFFF);
            }
            b = Bitmap.createBitmap(w, h, Bitmap.Config.ARGB_8888);
            b.setPixels(px, 0, w, 0, 0, w, h);
        }
        art.put(key, b);
        return b;
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
            round(c, l + 1.5f, t + 1.5f, l + 118.5f, t + 198.5f, 12, id.equals(pressed) ? PRESS : SURF);
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
        round(c, sl, 76, sl + sw, 584, 12, PANEL);
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
                round(c, hl, 158, hl + cw - 4, 198, 8, id.equals(pressed) ? PRESS : SURF);
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
        round(c, x, 410, x + w, 494, 8, NOTE_BG);
        font(13, true);
        wrap(c, pl.note, x + 10, 416, w - 20, 18, 2, NOTE_INK);
        font(13, false);
        wrap(c, "Силата по зоните остава твоя", x + 10, 456, w - 20, 17, 2, NOTE_INK);
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
        text(c, s.zoneName(zi), l + 10, t, l + w - 12, t + 50, right ? 1 : -1, on ? WHITE : INK);
        int pct = slideZone == zi && slideValue >= 0 ? slideValue : s.zone(zi);
        font(18, true);
        text(c, pct + "%", l + 10, t, l + w - 12, t + 50, right ? -1 : 1, on ? WHITE : pct == 0 ? GREY : INK);
        if (slideZone == zi && sliding) {                // the slide's bar: where the finger has it, in steps of 1 %
            round(c, l + 8, t + 43, l + 8 + (w - 16) * pct / 100f, t + 46, 1.5f, on ? WHITE : RED);
        }
        if (service && a.channels().ok(s.part(zi))) {   // checked on the body: a green ✓ badge
            float bx = right ? l + w - 2 : l + 2;
            p.setColor(GREEN);
            c.drawCircle(bx, t + 2, 10, p);
            font(13, true);
            text(c, "✓", bx - 10, t - 8, bx + 10, t + 12, 0, WHITE);
        }
    }

    private Session seenSession;
    private int seenResets;

    private void paintTrain(Canvas c) {
        Session s = a.session();
        if (s != seenSession || s.resets() != seenResets) {
            // a new client (all zones 0): ВСИЧКИ selected, so the slider / ± raise every zone together at once
            seenSession = s;
            seenResets = s.resets();
            boolean zero = true;
            for (int i = 0; i < s.zones(); i++) zero &= s.zone(i) == 0;
            if (zero) sel = 0;                       // (selections end by themselves after 5 s — owner)
        }
        long now = a.now();
        Session.Program pr = s.program();
        boolean idle = s.state() == Session.IDLE, running = s.state() == Session.RUNNING;
        int all = allMask();

        if (!service) paintFigures(c, s);

        // ---- header: XEMS | unit, battery or the note | program ----
        boolean toastOn = now < toastUntil;
        String n = toastOn ? toast : a.note();
        boolean warn = toastOn ? !toast.startsWith("✓") : a.noteWarn();   // a "✓" toast is good news
        String sub = n.length() > 0 ? n : unitLine(s);
        paintHeader(c, service ? "СЕРВИЗ · КАНАЛИ" : modeTitle(), sub, n.length() > 0 && warn, n.length() > 0 && !warn);
        if (n.length() == 0) {
            font(14, true);
            battery(c, dw / 2 + p.measureText(sub) / 2 + 10, 37, s.battery());
        }
        hit(0, 0, 155, 56, "logo");                   // held 2 s: the service mode (← wins while idle)
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
        for (int i = 0; i < s.zones(); i++) {
            boolean right = i >= s.zonesLeft();
            int row = right ? i - s.zonesLeft() : i;
            paintZone(c, right ? dw - 14 - zoneW() : 14, 86 + row * 70, i, right);
        }

        // ---- timer hump: elapsed | ВСИЧКИ | left ----
        path.reset();
        path.moveTo(dx + 190, 56);
        path.cubicTo(dx + 250, 56, dx + 250, 101, dx + 300, 101);
        path.lineTo(dx + 500, 101);
        path.cubicTo(dx + 550, 101, dx + 550, 56, dx + 609, 56);
        path.close();
        p.setColor(HUMP);
        c.drawPath(path, p);
        int left = s.secondsLeft(now), elapsed = pr.totalS - left;
        font(16, false);
        text(c, mmss(idle ? 0 : elapsed), dx + 250, 56, dx + 344, 101, 0, CLOCK);
        text(c, mmss(left), dx + 464, 56, dx + 558, 101, 0, CLOCK);
        if (!idle || s.startPending() || s.preparing()) paintPhase(c, s, pr, now, idle, running);
        boolean allSel = sel != 0 && sel == all;
        p.setColor(allSel ? RED : "all".equals(pressed) ? PRESS : SURF);
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
        if (service) paintService(c, s);
    }

    /**
     * The service mode's panel in place of the body: the suit standard, then — for the zone being tried — the ten
     * body parts to tap where it was felt (the same part = checked ✓; another = that channel goes to that part, and
     * this zone gets the channel that part had, to try next). "к.N" = the unit channel behind each part.
     */
    private void paintService(Canvas c, Session s) {
        Channels ch = a.channels();
        float l = dx + 200, r = dx + 600, t = 168, b = 474;
        round(c, l, t, r, b, 12, SURF);
        stroke(c, l, t, r, b, 12, LINE, 2);
        for (int i = 0; i < 2; i++) {
            float hl = l + 12 + i * 190, hr = hl + 186, ht = t + 10, hb = t + 44;
            boolean chosen = ch.suit == i;
            String id = "svc-suit:" + i;
            if (chosen) round(c, hl, ht, hr, hb, 8, RED);
            else {
                if (id.equals(pressed)) round(c, hl, ht, hr, hb, 8, PRESS);
                stroke(c, hl, ht, hr, hb, 8, LINE, 2);
            }
            font(16, chosen);
            text(c, (chosen ? "✓ " : "") + "Костюм " + Channels.SUIT[i], hl, ht, hr, hb, 0, chosen ? WHITE : INK);
            hit(hl, ht, hr, hb, id);
        }
        font(15, true);
        String q = svcZone < 0 ? "Избери зона → СТАРТ → вдигни малко силата"
                : "„" + s.zoneName(svcZone) + "“ (к." + (s.unitCh(svcZone) + 1) + ") се усеща в:";
        text(c, elide(q, 376), l + 12, t + 48, r - 12, t + 72, 0, svcZone < 0 ? SOFT : INK);
        for (int z = 0; z < s.zones(); z++) {
            boolean right = z >= s.zonesLeft();
            int row = right ? z - s.zonesLeft() : z;
            float cl = l + 12 + (right ? 190 : 0), cr = cl + 186, ct = t + 76 + row * 35, cb = ct + 31;
            int part = s.part(z);
            boolean ok = ch.ok(part), cur = svcZone == z;
            String id = svcZone >= 0 ? "svc:" + z : null;
            round(c, cl, ct, cr, cb, 8, id != null && id.equals(pressed) ? PRESS : ok ? OK_BG : SURF);
            stroke(c, cl, ct, cr, cb, 8, cur ? RED : ok ? GREEN : LINE, cur ? 2.5f : 1.5f);
            font(14, ok || cur);
            text(c, (ok ? "✓ " : "") + s.zoneName(z), cl + 10, ct, cr - 38, cb, -1, ok ? GREEN : INK);
            font(12, false);
            text(c, "к." + (ch.map()[part] + 1), cr - 40, ct, cr - 8, cb, 1, SOFT);
            if (id != null) hit(cl, ct, cr, cb, id);
        }
        font(13, true);
        int n = ch.okCount();
        text(c, "Проверени " + n + "/" + s.zones(), l + 12, b - 44, l + 140, b - 8, -1, n == 10 ? GREEN : SOFT);
        outlined(c, l + 142, b - 44, l + 226, b - 8, "svc-reset", "Отначало", 13, false);
        outlined(c, l + 230, b - 44, l + 276, b - 8, "svc-log", "Лог", 13, false);   // the unit trace
        filled(c, r - 118, b - 44, r - 12, b - 8, "svc-done", GREEN, WHITE, "✓ Готово", 16);
    }

    /** A 2 s hold on the logo / ← opens the service mode here (the training screen with a mode). */
    private boolean serviceHold() {
        return a.session() != null && a.viewKind() == MainActivity.VIEW_TRAIN && a.mode() >= 0 && a.channels().remappable();
    }

    /** In: every zone 0 (only what is raised fires). Out: a running unit pauses, every zone 0 — the next client. */
    private void toggleService() {
        Session s = a.session();
        if (!service) {
            service = true;
            svcZone = -1;
            s.resetZones();
            showToast("Сервиз: зона → СТАРТ → малко сила → къде се усети");
            return;
        }
        service = false;
        svcZone = -1;
        if (s.state() == Session.RUNNING) a.startPause();
        s.resetZones();
        showToast("✓ Каналите са запазени");
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
        // the figures' zones are the ten body parts (BodyFig, the WiEMS screen order); this unit's zone drives them
        int[] col = new int[Session.ZONES];
        float[] alpha = new float[Session.ZONES];
        for (int z = 0; z < Session.ZONES; z++) {
            int sz = s.zoneOfPart(Session.ZONE_PART[z]);
            float t = sz < 0 ? 0 : s.liveLevel(Session.ZONE_PART[z]) / 100f;
            // a picked zone without output is tinted — not when all are picked (ВСИЧКИ): the body would look
            // like it works everywhere
            boolean picked = sz >= 0 && (sel & (1 << sz)) != 0 && sel != allMask();
            if (t > 0) {
                float k2 = Math.min(1f, t / 0.8f);      // in step with the impulse: deep red from 80 %
                // the second impulse (double impulse, in the pause) in XBody's yellow — the main one in its red
                // (dark: a weak impulse is a deeper red, not a paler pink — pink on graphite reads as a haze)
                col[z] = s.second() ? mix(0xFFFFE28A, 0xFFF5A600, k2) : mix(darkNow ? 0xFFA82A30 : LIGHT_RED, RED, k2);
                alpha[z] = 0.45f + 0.55f * k2;          // even a light impulse reads as colour, not a pink haze
            } else if (picked) {
                col[z] = RED;
                alpha[z] = darkNow ? 0.42f : 0.30f;   // on graphite 30 % read as mud
            }
        }
        for (int f = 0; f < 2; f++) {
            BodyFig b = figs[f];
            if (b == null) continue;
            float hgt = 372, wid = hgt * b.w / b.h, cxf = dx + (f == 0 ? 290 : 510), top = 106;
            RectF r = figRect[f];
            r.set(cxf - wid / 2, top, cxf + wid / 2, top + hgt);
            Rect src = new Rect(0, 0, b.w, b.h);
            c.drawBitmap(darkNow ? b.artDark : b.art, src, r, bmp);
            b.paint(col, alpha, darkNow);
            if (darkNow) c.drawBitmap(b.glow, src, r, bmp);   // the working muscles light the body around them
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
        String u = a.linkedName() == null ? Dev.SHORT[s.kind] : a.linkedName();
        // the suit when it is not the unit's own standard (WiEMS: XBody's leads; an XEMS unit: its own suit)
        if (s.kind == Dev.WIEMS && a.xemsWiring()) u += "  ·  XEMS костюм";
        else if (s.kind == Dev.XEMS && !a.xemsWiring()) u += "  ·  XBody костюм";
        return u + "   ·   батерия " + (s.battery() < 0 ? "—" : s.battery() + "%");
    }

    /** XBody's ← (its tray's Return), in the header's left block: over the logo. */
    private void backButton(Canvas c, String id) {
        p.setColor(darkNow ? 0xFF1B1F25 : WHITE);
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
        round(c, l + 0.5f, t - 8, r - 0.5f, b - 0.5f, 6, SURF);
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
    /** Every zone of the unit in use picked (ВСИЧКИ). */
    private int allMask() {
        Session s = a.session();
        return (1 << (s != null ? s.zones() : Session.ZONES)) - 1;
    }

    private static int led(float d, float len) {
        float f = Math.max(0, Math.min(1, d / len)) * (LEDS.length - 1);
        int i = Math.min(LEDS.length - 2, (int) f);
        return mix(LEDS[i], LEDS[i + 1], f - i);
    }

    /** Test: the picked zones (bits). */
    int selMask() {
        return sel;
    }

    /** Test: every zone selected. */
    boolean selAll() {
        return sel == allMask();
    }

    private int selValue() {
        Session s = a.session();
        if (s == null) return 0;
        if (slideZone >= 0 && slideValue >= 0) return slideValue;
        if (sel == 0) return s.strength();
        for (int i = 0; i < s.zones(); i++) if ((sel & (1 << i)) != 0) return s.zone(i);
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
        // several zones move together by the same step — their differences stay (arms 30 / legs 60 + 5 → 35 / 65,
        // never all to one value: a weak zone would jump to the strong one's level)
        int d = v - selValue();
        if (d == 0) return;
        for (int i = 0; i < s.zones(); i++)
            if ((sel & (1 << i)) != 0) s.setZone(i, Math.max(0, Math.min(100, s.zone(i) + d)));
    }

    /** XBody's showPercent: while a value changes, a big % over the body with what it belongs to. */
    private void paintBubble(Canvas c) {
        String what = "Сила";
        Session s = a.session();
        if (sliding && slideZone >= 0) what = s.zoneName(slideZone);
        else if (sel != 0) {
            int cnt = 0;
            StringBuilder names = new StringBuilder();
            for (int i = 0; i < s.zones(); i++)
                if ((sel & (1 << i)) != 0) {
                    cnt++;
                    if (cnt <= 2) names.append(names.length() > 0 ? ", " : "").append(s.zoneName(i));
                }
            what = cnt == s.zones() ? "Всички зони" : names + (cnt > 2 ? " +" + (cnt - 2) : "");
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
        round(c, l + 1, t + 1, r - 1, b - 1, h / 2, SURF);
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
        p.setColor(SCRIM);
        c.drawRect(0, 0, dw, 600, p);
        hits.clear();   // only the sheet answers
        float o = dx;
        round(c, o + 36, 26, o + 764, 582, 14, 0x28000000);
        round(c, o + 36, 22, o + 764, 578, 14, SURF);
        font(22, false);
        text(c, "Настройки на сесията", o + 64, 34, o + 500, 78, -1, INK);
        // the theme: a sun / moon switch top right (also on the list and the program screen)
        float tl = o + 556, tt = 38;
        if ("theme".equals(pressed)) round(c, tl, tt - 2, o + 740, tt + 38, 8, PRESS);
        themeIcon(c, tl + 18, tt + 18, !darkNow);
        font(15, false);
        text(c, darkNow ? "Светла тема" : "Тъмна тема", tl + 36, tt, o + 740, tt + 36, -1, INK);
        hit(tl, tt - 4, o + 744, tt + 40, "theme");
        line(c, o + 64, 84, o + 736, 84, HEAD_LINE, 1);
        line(c, o + 432, 100, o + 432, 452, HEAD_LINE, 1);
        Session.Program q = sheetProg;
        boolean locked = a.session() != null && a.session().state() == Session.RUNNING;
        Procs.Plan plan = a.mode() == Procs.MODE_PROC && a.session() != null ? a.session().plan() : null;
        if (plan != null) sheetProc(c, o, plan, a.session().state() != Session.IDLE);
        else {
        caption(c, o + 64, 98, locked ? "ПРОГРАМА · СМЕНЯ СЕ НА ПАУЗА" : "ПРОГРАМА");
        // the pulse width: how deep the impulse reaches (XBody's Impulse sheet); every kind, WiEMS per muscle
        String[] labels = {"Честота", "Ширина", "Времетраене", "Рампа"};
        String[] values = {q.hz + " Hz", q.us + " µs", q.totalS / 60 + " мин", q.rampMs == 0 ? "без" : q.rampMs / 1000 + " s"};
        String[] fields = {"hz", "us", "total", "ramp"};
        for (int i = 0; i < 4; i++) {
            float y = 110 + i * 47;
            font(16, false);
            text(c, labels[i], o + 64, y, o + 222, y + 42, -1, INK);
            pill(c, o + 222, y, o + 408, y + 42, values[i], locked ? null : fields[i]);
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
        text(c, q.cont ? "почивка · импулсът продължава" : "пауза", o + 242, 406, o + 408, 428, 0, q.cont ? CONT_INK : SOFT);
        }

        // ---- right: the client ----
        caption(c, o + 456, 98, "КЛИЕНТ");
        // the figures' sex, then the suit's connector standard: segmented controls, the chosen half red (XBody's
        // selected state)
        segmented(c, o, 120, "sex-f", "sex-m", "Жена", "Мъж", a.female(), true);
        // XBody: zone = the unit's channel of that name; XEMS: an XEMS suit on the unit's (XBody-standard) leads —
        // each zone drives the lead that reaches it (the owner's table, as the XBody panel). Not while running.
        if (a.kind() == Dev.BODYTECH) {                 // bodytech: one layout, nothing to choose
            font(15, false);
            text(c, "Костюм bodytech · 8 канала", o + 466, 174, o + 736, 222, -1, SOFT);
        } else segmented(c, o, 174, "wire-xbody", "wire-xems", "Костюм XBody", "Костюм XEMS", !a.xemsWiring(), !locked);
        outlined(c, o + 456, 230, o + 736, 276, locked ? null : "age60", null, 0, false);
        font(17, false);
        text(c, "Над 60 години", o + 472, 230, o + 646, 276, -1, locked ? GREY : INK);
        float sl = o + 736 - 92, st = 253 - 15;
        round(c, sl, st, sl + 80, st + 30, 15, sheetAge60 ? GREEN : TRACK);
        p.setColor(WHITE);
        c.drawCircle(sheetAge60 ? sl + 65 : sl + 15, st + 15, 12, p);
        if (sheetAge60) {
            font(13, true);
            text(c, "✓ Честотата спира до 85 Hz", o + 456, 278, o + 736, 294, -1, GREEN);
        }
        if (plan != null) {                              // a procedure: its phases carry their own second impulse
            caption(c, o + 456, 300, "КАК");
            font(15, false);
            wrap(c, plan.how, o + 456, 322, 280, 22, 3, INK);
            font(14, false);
            text(c, "Силата по зоните остава твоя", o + 456, 400, o + 736, 424, -1, SOFT);
        } else {
        // ---- the double impulse: a second, low impulse in the pause (the unit's own rest Hz / %) ----
        caption(c, o + 456, 300, "ДВОЕН ИМПУЛС");
        float ds = o + 736 - 80, dt = 296;
        round(c, ds, dt, ds + 80, dt + 30, 15, q.dbl ? YELLOW : TRACK);
        p.setColor(WHITE);
        c.drawCircle(q.dbl ? ds + 65 : ds + 15, dt + 15, 12, p);
        if (!locked) hit(ds - 90, dt - 6, ds + 80, dt + 36, "dbl");
        pill(c, o + 456, 336, o + 592, 384, q.dblHz + " Hz", q.dbl && !locked ? "dblhz" : null);
        pill(c, o + 600, 336, o + 736, 384, q.dblPct + "%", q.dbl && !locked ? "dblpct" : null);
        // what the session will be (derived, nothing to set): one line
        int cycles = q.onS + q.offS > 0 ? q.totalS / (q.onS + q.offS) : 0;
        font(14, false);
        text(c, cycles + " импулса · " + q.onS * cycles / 60 + " мин работа", o + 456, 400, o + 736, 424, -1, SOFT);
        }

        line(c, o + 64, 470, o + 736, 470, HEAD_LINE, 1);
        outlined(c, o + 64, 494, o + 264, 554, "sheet-cancel", "Откажи", 18, false);
        filled(c, o + 496, 494, o + 736, 554, "sheet-ok", GREEN, WHITE, "✓  Готово", 20);
    }

    /** A two-way switch over the sheet's right column (XBody's red for the chosen half). */
    private void segmented(Canvas c, float o, float t, String idL, String idR, String l, String r, boolean left,
                           boolean enabled) {
        round(c, o + 457, t + 1, o + 735, t + 47, 10, SURF);
        stroke(c, o + 457, t + 1, o + 735, t + 47, 10, LINE, 2);
        for (int i = 0; i < 2; i++) {
            float hl = o + 456 + i * 140;
            boolean chosen = left == (i == 0);
            String id = i == 0 ? idL : idR;
            if (chosen) round(c, hl + 4, t + 4, hl + 136, t + 44, 8, enabled ? RED : GREY);
            else if (id.equals(pressed)) round(c, hl + 4, t + 4, hl + 136, t + 44, 8, PRESS);
            String lab = i == 0 ? l : r;
            float fs = 16;
            font(fs, chosen);
            while (fs > 12 && p.measureText(lab) > 124) font(--fs, chosen);   // smaller rather than cut
            if (chosen && p.measureText("✓ " + lab) <= 126) lab = "✓ " + lab;  // the tick only where it fits
            text(c, lab, hl, t, hl + 140, t + 48, 0, chosen ? WHITE : enabled ? INK : GREY);
            if (enabled) hit(hl, t, hl + 140, t + 48, id);
        }
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
                round(c, hl, 124, hl + cw - 6, 168, 8, id.equals(pressed) ? PRESS : SURF);
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
        text(c, pl.note, x, 428, x + w, 452, -1, NOTE_INK);
    }

    /** XBody's message dialog: a dark red band over the whole width. */
    private void paintConfirm(Canvas c) {
        p.setColor(VEIL);
        c.drawRect(0, 0, dw, 600, p);
        hits.clear();
        p.setColor(DIALOG);
        c.drawRect(0, 150, dw, 382, p);
        font(32, false);
        text(c, "Прекъсни връзката с " + Dev.SHORT[a.kind()] + "?", 0, 170, dw, 220, 0, WHITE);
        font(17, false);
        text(c, "Изходите се изключват. Ще можеш да избереш друго устройство.", 40, 222, dw - 40, 272, 0, WHITE);
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
                touchedMs = a.now();
                tapX = d[0];
                tapY = d[1];
                pressed = idAt(d[0], d[1]);
                pressMs = repeatMs = a.now();
                sliding = false;
                slideZone = pressed.startsWith("z:") && a.session() != null && !service ? Integer.parseInt(pressed.substring(2)) : -1;
                if (slideZone >= 0) {
                    slideX0 = d[0];
                    slideY0 = d[1];
                    slideStart = a.session().zone(slideZone);
                    slideValue = -1;
                }
                if (pressed.equals("slider")) grab(d[0]);
                else if (isStepper(pressed)) act(pressed, false);   // answer on touch, then repeat while held
                invalidate();
                return true;
            case MotionEvent.ACTION_MOVE:
                touchedMs = a.now();
                if (pressed.equals("slider")) drag(d[0]);
                else if (slideZone >= 0) slideZone(d[0], d[1]);
                return true;
            case MotionEvent.ACTION_UP: {
                touchedMs = a.now();
                String id = pressed;
                pressed = "";
                grabX = -1;
                if (sliding && slideZone >= 0) {             // the slide goes out on release (as the XEMS chip)
                    Session s = a.session();
                    if (s != null && slideValue >= 0 && slideValue != slideStart) s.setZone(slideZone, slideValue);
                    sliding = false;
                    slideZone = -1;
                    slideValue = -1;
                    bubbleUntil = a.now() + 1200;
                    invalidate();
                    return true;
                }
                slideZone = -1;
                // held: the trace (on the training screen a 2 s hold is the service mode, its panel has "Лог")
                if (id.equals("logo") && a.now() - pressMs > 1200 && !serviceHold()) a.shareLog();
                else if (id.length() > 0 && !isStepper(id) && !id.equals("slider") && id.equals(idAt(d[0], d[1]))) act(id, false);
                invalidate();
                return true;
            }
            case MotionEvent.ACTION_CANCEL:
                sliding = false;
                slideZone = -1;
                slideValue = -1;
                pressed = "";
                grabX = -1;
                invalidate();
                return true;
            default:
                return true;
        }
    }

    /**
     * A sideways slide on a zone label = that zone's strength — the XEMS focus board's chip slide: relative to the
     * finger (no jump), right = more, edge to edge of the label = 20 %, ≤ 20 per slide; an unpicked zone is picked
     * first (as its tap); it goes out on release.
     */
    private void slideZone(float x, float y) {
        float dx = x - slideX0, dy = y - slideY0;
        if (!sliding) {
            if (Math.abs(dx) < 12 || Math.abs(dx) < Math.abs(dy)) return;
            sliding = true;
            slideX0 = x;
            int b = 1 << slideZone;
            sel = sel == allMask() ? b : sel | b;   // picked first, as its tap
            return;
        }
        int dlt = Math.max(-SLIDE, Math.min(SLIDE, Math.round(dx / zoneW() * SLIDE)));
        slideValue = Math.max(0, Math.min(100, slideStart + dlt));
        bubbleUntil = a.now() + 1200;
        invalidate();
    }

    /** A touch on the bar: only on the fader itself does it take hold — a touch beside it changes nothing. */
    private void grab(float x) {
        grabX = -1;
        if (a.session() == null) return;
        float x0 = sliderX0(), x1 = sliderX1();
        int v = selValue();
        if (Math.abs(x - (x0 + (x1 - x0) * v / 100f)) > GRAB) return;
        grabX = x;
        grabV = v;
        grabMoved = false;
    }

    /** The grabbed fader follows the finger by how far it moved (no jump to where the chip was touched). */
    private void drag(float x) {
        if (a.session() == null || grabX < 0) return;
        float x0 = sliderX0(), x1 = sliderX1();
        float f = grabV + 100f * (x - grabX) / (x1 - x0);
        if (!grabMoved && Math.abs(x - grabX) < 3) return;   // a resting finger trembles: hold until it really moves
        grabMoved = true;
        int v = Math.max(0, Math.min(100, Math.round(f)));
        if (sel != 0) v = Math.abs(f - grabV) < 2.5f ? grabV : (v + 2) / 5 * 5;   // zones in steps of 5 under a finger
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
            else if (parts[1].equals("us")) q.us = bound(Safe.US_MIN / Safe.US_STEP, q.us / Safe.US_STEP + d,
                    Safe.US_MAX / Safe.US_STEP) * Safe.US_STEP;
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
        if (id.equals("theme")) {
            a.setDark(!a.dark());
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
            int fz = b == null ? -1 : b.zoneAt((tapX - r.left) / r.width(), (tapY - r.top) / r.height());
            int z = fz < 0 || s == null ? -1 : s.zoneOfPart(Session.ZONE_PART[fz]);   // the figure's part → this unit's zone
            if (z >= 0) sel = sel == allMask() ? 1 << z : sel ^ (1 << z);
            return;
        }
        if (service && id.startsWith("z:")) {       // the service mode: one zone at a time is tried
            svcZone = Integer.parseInt(id.substring(2));
            sel = 1 << svcZone;
            return;
        }
        if (id.startsWith("svc-suit:")) {
            a.channels().suit = id.charAt(9) - '0';
            a.channelsChanged();
            return;
        }
        if (id.startsWith("svc:") && svcZone >= 0 && s != null) {   // where the zone being tried was felt
            int fz = Integer.parseInt(id.substring(4));
            Channels ch = a.channels();
            int u = s.unitCh(svcZone);
            ch.felt(s.part(svcZone), s.part(fz));
            a.channelsChanged();
            showToast(fz == svcZone ? "✓ " + s.zoneName(fz) + " — вярно (к." + (u + 1) + ")"
                    : "✓ к." + (u + 1) + " → " + s.zoneName(fz) + ". „" + s.zoneName(svcZone) + "“ вече е к."
                            + (s.unitCh(svcZone) + 1) + " — пробвай пак");
            return;
        }
        if (id.equals("svc-reset")) {
            a.channels().reset(a.channels().suit);
            a.channelsChanged();
            showToast("Костюм " + Channels.SUIT[a.channels().suit] + ": каналите отначало");
            return;
        }
        if (id.equals("svc-log")) {                 // the unit trace (the logo's long press is the service mode here)
            a.shareLog();
            return;
        }
        if (id.equals("svc-done")) {
            toggleService();
            return;
        }
        if (id.startsWith("z:")) {   // tap = into / out of the selection (as on XBody)
            int b = 1 << Integer.parseInt(id.substring(2));
            // with ВСИЧКИ on, a tap on one zone means THAT zone (not "all but it")
            if (sel == allMask()) sel = b;
            else sel = (sel & b) != 0 ? sel & ~b : sel | b;
            return;
        }
        if (id.equals("all")) {
            svcZone = -1;
            int all = allMask();
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
        if (id.equals("wire-xbody") || id.equals("wire-xems")) {   // the zones keep their %, the leads change
            a.setXemsWiring(id.equals("wire-xems"));
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
        if (id.equals("back")) {
            if (service) toggleService();                         // ← the program screen (the procedure page if one was on)
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
