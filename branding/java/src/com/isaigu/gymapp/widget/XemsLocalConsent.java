package com.isaigu.gymapp.widget;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.drawable.GradientDrawable;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/**
 * The client's informed consent and declaration, signed with a finger on the tablet (owner, 1.1.530 —
 * docs/xems-consent.md). Short and plain, with the value of a written document: what EMS is and its usual effects, a
 * short list of contraindications (or a doctor's written approval), the client's duties, the strength set by the
 * client's own feeling, voluntary participation and the limit of the studio's liability (never for intent or gross
 * negligence — art. 94 of the Obligations and Contracts Act), consent to the health data (GDPR art. 9), valid until
 * withdrawn. The signed record is one picture — the text of this version, the client's name, the date and time and
 * the signature — kept on the tablet (files/consents/&lt;client&gt;.png); a new version of the text asks for a new
 * signature. Named classes only (dx).
 */
public final class XemsLocalConsent {
    private XemsLocalConsent() {}

    /** Bump when the text changes: the client signs again. */
    public static final int VERSION = 1;
    static final String PREFS = "xems_user_profiles";

    static final String TITLE_BG = "Информирано съгласие и декларация за EMS тренировки и процедури";
    static final String TITLE_EN = "Informed consent and declaration for EMS training and treatments";

    static final String[] ITEMS_BG = {
            "Запознат/а съм, че EMS (електрическа мускулна стимулация) свива мускулите чрез ток. Обичайни последици са "
                    + "мускулна треска, умора и зачервяване на кожата; при прекомерно натоварване е възможно увреждане "
                    + "на мускулите.",
            "Нямам противопоказания за EMS: бременност; пейсмейкър или друг имплантиран електронен уред; "
                    + "сърдечно-съдово заболяване или тромбоза; херния; епилепсия; онкологично заболяване; склонност "
                    + "към кървене; остро възпаление, инфекция или температура; операция през последните 3 месеца; "
                    + "рани в зоните на електродите. Ако имам някое от тях, ще представя писмено разрешение от лекар "
                    + "преди тренировка.",
            "Ще съобщавам на треньора за всяка промяна в здравето си и ще прекратя тренировката веднага при болка, "
                    + "замаяност, затруднено дишане или друго неразположение.",
            "Силата на импулса се настройва според моето усещане и с моето участие. Ще спазвам указанията на "
                    + "треньора.",
            "Участвам доброволно и на собствен риск. Студиото и треньорът не носят отговорност за вреди за здравето "
                    + "ми, причинени от непълни или неверни сведения за здравето ми, премълчано заболяване или "
                    + "неспазване на указанията. Това не ограничава отговорността им при умисъл или груба небрежност "
                    + "(чл. 94 от Закона за задълженията и договорите).",
            "Съгласен/на съм студиото да обработва личните ми данни, включително за здравето, само за безопасното "
                    + "провеждане на тренировките, съгласно Регламент (ЕС) 2016/679 (GDPR). Мога да оттегля "
                    + "съгласието си по всяко време.",
            "Декларацията важи за всички следващи тренировки и процедури до писменото ѝ оттегляне.",
    };
    static final String[] ITEMS_EN = {
            "I understand that EMS (electrical muscle stimulation) contracts the muscles with a current. Usual effects "
                    + "are muscle soreness, fatigue and reddened skin; overload may injure the muscles.",
            "I have no contraindication to EMS: pregnancy; a pacemaker or other implanted electronic device; "
                    + "cardiovascular disease or thrombosis; hernia; epilepsy; cancer; a bleeding tendency; acute "
                    + "inflammation, infection or fever; surgery in the last 3 months; wounds where the electrodes sit. "
                    + "If I have any of them, I will bring a doctor's written approval before training.",
            "I will tell the trainer of any change in my health and stop at once on pain, dizziness, shortness of "
                    + "breath or any other discomfort.",
            "The impulse strength is set by my own feeling and with my participation. I will follow the trainer's "
                    + "instructions.",
            "I take part voluntarily and at my own risk. The studio and the trainer are not liable for harm to my "
                    + "health caused by incomplete or untrue information about my health, an undisclosed condition or "
                    + "not following the instructions. This does not limit their liability for intent or gross "
                    + "negligence (art. 94 of the Bulgarian Obligations and Contracts Act).",
            "I agree that the studio processes my personal data, health data included, only for the safe conduct "
                    + "of the training, under Regulation (EU) 2016/679 (GDPR). I may withdraw this consent at any time.",
            "This declaration applies to all following trainings and treatments until withdrawn in writing.",
    };
    static final String CLOSE_BG = "Прочетох, разбрах и приемам горното.";
    static final String CLOSE_EN = "I have read, understood and accept the above.";

    static String tr(String bg, String en) {
        return XemsLang.tr(bg, en);
    }

    static SharedPreferences prefs(Context c) {
        return c.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }

    /** The signed version of this client's consent (0 = never signed). */
    public static int signedVersion(Context c, long userId) {
        return c == null ? 0 : prefs(c).getInt("consent" + userId, 0);
    }

    /** Signed with the current text. */
    public static boolean valid(Context c, long userId) {
        return signedVersion(c, userId) >= VERSION;
    }

    public static long signedAt(Context c, long userId) {
        return c == null ? 0L : prefs(c).getLong("consentAt" + userId, 0L);
    }

    static File file(Context c, long userId) {
        File dir = new File(c.getFilesDir(), "consents");
        if (!dir.exists()) {
            dir.mkdirs();
        }
        return new File(dir, userId + ".png");
    }

    static String stamp(long t) {
        return new SimpleDateFormat("dd.MM.yyyy HH:mm", Locale.US).format(new Date(t));
    }

    /** One line for the client's card: signed (when) / to sign / a new text to sign. */
    public static String status(Context c, long userId) {
        int v = userId > 0 ? signedVersion(c, userId) : 0;
        if (v >= VERSION) {
            return tr("✓ Подписано на ", "✓ Signed on ") + stamp(signedAt(c, userId));
        }
        if (v > 0) {
            return tr("Текстът е обновен — нужен е нов подпис", "The text was updated — a new signature is needed");
        }
        return tr("Не е подписано", "Not signed");
    }

    /**
     * Keeps the signed record: one picture with the text of this version, the name, the date and the signature.
     * Returns false when it could not be written (nothing is marked signed then).
     */
    public static boolean save(Context c, long userId, String name, Bitmap signature, long time) {
        if (c == null || userId <= 0 || signature == null) {
            return false;
        }
        try {
            Bitmap doc = document(name, signature, time);
            FileOutputStream out = new FileOutputStream(file(c, userId));
            try {
                doc.compress(Bitmap.CompressFormat.PNG, 100, out);
            } finally {
                out.close();
            }
            prefs(c).edit().putInt("consent" + userId, VERSION).putLong("consentAt" + userId, time).apply();
            return true;
        } catch (Throwable t) {
            android.util.Log.e("xems_consent", "save", t);
            return false;
        }
    }

    /** The document: white page, the text, then name · date · signature (A4-like width). */
    static Bitmap document(String name, Bitmap signature, long time) {
        int w = 1240;
        int pad = 80;
        TextPaint title = new TextPaint(Paint.ANTI_ALIAS_FLAG);
        title.setColor(0xFF111111);
        title.setTextSize(40);
        title.setFakeBoldText(true);
        TextPaint body = new TextPaint(Paint.ANTI_ALIAS_FLAG);
        body.setColor(0xFF222222);
        body.setTextSize(28);
        StringBuilder sb = new StringBuilder();
        String[] items = XemsLang.isBg() ? ITEMS_BG : ITEMS_EN;
        for (int i = 0; i < items.length; i++) {
            sb.append(i + 1).append(". ").append(items[i]).append("\n\n");
        }
        sb.append(tr(CLOSE_BG, CLOSE_EN));
        int tw = w - 2 * pad;
        StaticLayout tl = new StaticLayout(tr(TITLE_BG, TITLE_EN), title, tw, Layout.Alignment.ALIGN_NORMAL, 1.15f, 0, false);
        StaticLayout bl = new StaticLayout(sb.toString(), body, tw, Layout.Alignment.ALIGN_NORMAL, 1.25f, 0, false);
        int sigH = 260;
        int h = pad + tl.getHeight() + 40 + bl.getHeight() + 60 + 120 + sigH + pad;
        Bitmap bmp = Bitmap.createBitmap(w, h, Bitmap.Config.ARGB_8888);
        Canvas cv = new Canvas(bmp);
        cv.drawColor(0xFFFFFFFF);
        int y = pad;
        cv.save();
        cv.translate(pad, y);
        tl.draw(cv);
        cv.restore();
        y += tl.getHeight() + 40;
        cv.save();
        cv.translate(pad, y);
        bl.draw(cv);
        cv.restore();
        y += bl.getHeight() + 60;
        body.setFakeBoldText(true);
        cv.drawText(tr("Клиент: ", "Client: ") + (name != null ? name : ""), pad, y + 34, body);
        body.setFakeBoldText(false);
        cv.drawText(tr("Дата и час: ", "Date and time: ") + stamp(time) + tr("   ·   версия ", "   ·   version ") + VERSION,
                pad, y + 80, body);
        y += 120;
        float scale = Math.min(1f, Math.min((float) tw / signature.getWidth(), (float) sigH / signature.getHeight()));
        int sw = Math.round(signature.getWidth() * scale);
        int sh = Math.round(signature.getHeight() * scale);
        cv.drawBitmap(Bitmap.createScaledBitmap(signature, Math.max(1, sw), Math.max(1, sh), true), pad, y, null);
        Paint line = new Paint(Paint.ANTI_ALIAS_FLAG);
        line.setColor(0xFF888888);
        line.setStrokeWidth(2);
        cv.drawLine(pad, y + sigH - 10, pad + tw / 2f, y + sigH - 10, line);
        body.setTextSize(22);
        body.setColor(0xFF666666);
        cv.drawText(tr("Подпис", "Signature"), pad, y + sigH + 22, body);
        return bmp;
    }

    // ================================================================ the signing sheet

    /** What the form does with the signature (kept until the client is saved — a new client has no id yet). */
    public interface Signed {
        void onSigned(Bitmap signature, long time);
    }

    /** Text on the left, the signing pad on the right (landscape): Clear · Sign (on once there is a stroke). */
    public static void open(Activity a, String clientName, Signed done) {
        if (a == null) {
            return;
        }
        Dialog d = new Dialog(a, android.R.style.Theme_Black_NoTitleBar_Fullscreen);
        LinearLayout page = new LinearLayout(a);
        page.setOrientation(LinearLayout.HORIZONTAL);
        page.setBackgroundColor(0xFF060B14);
        int p = dp(a, 20);
        page.setPadding(p, p, p, p);

        // left: the text
        LinearLayout text = new LinearLayout(a);
        text.setOrientation(LinearLayout.VERTICAL);
        TextView t = label(a, tr(TITLE_BG, TITLE_EN), 21, 0xFFECEFF4, true);
        text.addView(t);
        String[] items = XemsLang.isBg() ? ITEMS_BG : ITEMS_EN;
        for (int i = 0; i < items.length; i++) {
            LinearLayout row = new LinearLayout(a);
            row.setOrientation(LinearLayout.HORIZONTAL);
            TextView n = label(a, (i + 1) + ".", 15, 0xFF43A047, true);
            row.addView(n, new LinearLayout.LayoutParams(dp(a, 26), ViewGroup.LayoutParams.WRAP_CONTENT));
            TextView s = label(a, items[i], 15, 0xFFDDE3EA, false);
            s.setLineSpacing(dp(a, 2), 1f);
            row.addView(s, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            LinearLayout.LayoutParams rl = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT);
            rl.topMargin = dp(a, 12);
            text.addView(row, rl);
        }
        ScrollView sv = new ScrollView(a);
        sv.addView(text);
        page.addView(sv, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1.25f));

        // right: who, when, the pad, the keys
        LinearLayout right = new LinearLayout(a);
        right.setOrientation(LinearLayout.VERTICAL);
        right.setPadding(dp(a, 24), 0, 0, 0);
        right.addView(label(a, tr(CLOSE_BG, CLOSE_EN), 16, 0xFFECEFF4, true));
        TextView who = label(a, (clientName != null && clientName.length() > 0 ? clientName + "  ·  " : "")
                + stamp(System.currentTimeMillis()), 15, 0xFF93AFC6, false);
        LinearLayout.LayoutParams wl = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT);
        wl.topMargin = dp(a, 6);
        right.addView(who, wl);
        SignPad pad = new SignPad(a);
        GradientDrawable bg = new GradientDrawable();
        bg.setColor(0xFFFFFFFF);
        bg.setCornerRadius(dp(a, 14));
        pad.setBackground(bg);
        LinearLayout.LayoutParams pl = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f);
        pl.topMargin = dp(a, 14);
        right.addView(pad, pl);
        TextView hint = label(a, tr("Подпишете се с пръст в бялото поле", "Sign with a finger in the white field"),
                13, 0xFF93AFC6, false);
        hint.setGravity(Gravity.CENTER);
        LinearLayout.LayoutParams hl = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT);
        hl.topMargin = dp(a, 6);
        right.addView(hint, hl);

        LinearLayout keys = new LinearLayout(a);
        keys.setOrientation(LinearLayout.HORIZONTAL);
        TextView cancel = key(a, tr("Отказ", "Cancel"), false);
        TextView clear = key(a, tr("Изчисти", "Clear"), false);
        TextView sign = key(a, tr("Подписвам", "I sign"), true);
        sign.setEnabled(false);
        sign.setAlpha(0.4f);
        pad.onInk = sign;
        cancel.setOnClickListener(new Close(d));
        clear.setOnClickListener(new ClearPad(pad, sign));
        sign.setOnClickListener(new SignClick(d, pad, done));
        keys.addView(cancel, new LinearLayout.LayoutParams(0, dp(a, 52), 1f));
        LinearLayout.LayoutParams cl = new LinearLayout.LayoutParams(0, dp(a, 52), 1f);
        cl.leftMargin = dp(a, 10);
        keys.addView(clear, cl);
        LinearLayout.LayoutParams sl = new LinearLayout.LayoutParams(0, dp(a, 52), 1.6f);
        sl.leftMargin = dp(a, 10);
        keys.addView(sign, sl);
        LinearLayout.LayoutParams kl = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT);
        kl.topMargin = dp(a, 14);
        right.addView(keys, kl);
        page.addView(right, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1f));

        d.setContentView(page);
        d.show();
    }

    /** The signed document, full screen (tap to close). */
    public static void view(Activity a, long userId) {
        try {
            File f = file(a, userId);
            if (!f.exists()) {
                return;
            }
            Dialog d = new Dialog(a, android.R.style.Theme_Black_NoTitleBar_Fullscreen);
            ImageView iv = new ImageView(a);
            iv.setBackgroundColor(0xFF060B14);
            iv.setScaleType(ImageView.ScaleType.FIT_CENTER);
            iv.setImageBitmap(BitmapFactory.decodeFile(f.getAbsolutePath()));
            iv.setOnClickListener(new Close(d));
            ScrollView sv = new ScrollView(a);
            sv.addView(iv, new ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT));
            iv.setAdjustViewBounds(true);
            d.setContentView(sv);
            d.show();
        } catch (Throwable t) {
            android.util.Log.e("xems_consent", "view", t);
        }
    }

    static final class Close implements View.OnClickListener {
        private final Dialog d;

        Close(Dialog d) {
            this.d = d;
        }

        @Override
        public void onClick(View v) {
            d.dismiss();
        }
    }

    static final class ClearPad implements View.OnClickListener {
        private final SignPad pad;
        private final View sign;

        ClearPad(SignPad pad, View sign) {
            this.pad = pad;
            this.sign = sign;
        }

        @Override
        public void onClick(View v) {
            pad.clear();
            sign.setEnabled(false);
            sign.setAlpha(0.4f);
        }
    }

    static final class SignClick implements View.OnClickListener {
        private final Dialog d;
        private final SignPad pad;
        private final Signed done;

        SignClick(Dialog d, SignPad pad, Signed done) {
            this.d = d;
            this.pad = pad;
            this.done = done;
        }

        @Override
        public void onClick(View v) {
            Bitmap b = pad.bitmap();
            if (b == null) {
                return;
            }
            d.dismiss();
            if (done != null) {
                done.onSigned(b, System.currentTimeMillis());
            }
        }
    }

    /** A finger signature: dark ink on white, smoothed with quadratic segments. */
    static final class SignPad extends View {
        private final Path path = new Path();
        private final Paint ink = new Paint(Paint.ANTI_ALIAS_FLAG);
        private float lx;
        private float ly;
        private boolean any;
        View onInk;

        SignPad(Context c) {
            super(c);
            ink.setColor(0xFF0B1F44);
            ink.setStyle(Paint.Style.STROKE);
            ink.setStrokeCap(Paint.Cap.ROUND);
            ink.setStrokeJoin(Paint.Join.ROUND);
            ink.setStrokeWidth(c.getResources().getDisplayMetrics().density * 2.6f);
        }

        void clear() {
            path.reset();
            any = false;
            invalidate();
        }

        Bitmap bitmap() {
            if (!any || getWidth() <= 0 || getHeight() <= 0) {
                return null;
            }
            Bitmap b = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
            Canvas c = new Canvas(b);
            c.drawColor(0xFFFFFFFF);
            c.drawPath(path, ink);
            return b;
        }

        @Override
        protected void onDraw(Canvas c) {
            super.onDraw(c);
            c.drawPath(path, ink);
        }

        @Override
        public boolean onTouchEvent(MotionEvent e) {
            float x = e.getX();
            float y = e.getY();
            switch (e.getActionMasked()) {
                case MotionEvent.ACTION_DOWN:
                    getParent().requestDisallowInterceptTouchEvent(true);
                    path.moveTo(x, y);
                    lx = x;
                    ly = y;
                    return true;
                case MotionEvent.ACTION_MOVE:
                    path.quadTo(lx, ly, (x + lx) / 2f, (y + ly) / 2f);
                    lx = x;
                    ly = y;
                    if (!any) {
                        any = true;
                        if (onInk != null) {
                            onInk.setEnabled(true);
                            onInk.setAlpha(1f);
                        }
                    }
                    invalidate();
                    return true;
                case MotionEvent.ACTION_UP:
                    path.lineTo(x, y);
                    invalidate();
                    return true;
                default:
                    return super.onTouchEvent(e);
            }
        }
    }

    // ---------------------------------------------------------------- small widgets

    static int dp(Context c, float v) {
        return Math.round(v * c.getResources().getDisplayMetrics().density);
    }

    static TextView label(Context c, String s, float sp, int color, boolean bold) {
        TextView t = new TextView(c);
        t.setText(s);
        t.setTextSize(sp);
        t.setTextColor(color);
        if (bold) {
            t.setTypeface(android.graphics.Typeface.DEFAULT_BOLD);
        }
        return t;
    }

    static TextView key(Context c, String s, boolean primary) {
        TextView t = label(c, s, 16, primary ? 0xFFFFFFFF : 0xFFECEFF4, true);
        t.setGravity(Gravity.CENTER);
        GradientDrawable g = new GradientDrawable();
        g.setCornerRadius(dp(c, 12));
        g.setColor(primary ? 0xFF43A047 : 0xFF0B1623);
        g.setStroke(dp(c, 1), primary ? 0xFF43A047 : 0xFF1C3A52);
        t.setBackground(g);
        return t;
    }
}
