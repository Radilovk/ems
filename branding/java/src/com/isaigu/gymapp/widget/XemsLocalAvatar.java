package com.isaigu.gymapp.widget;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Shader;
import android.net.Uri;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

/**
 * Client photo: picked from the gallery, cropped square, 320 px JPEG in the app's files
 * (files/avatars). The client's iconUrl gets "file://…" — the app's lists load it with Glide
 * as any other icon. A new file per change, so Glide's cache never shows the old face.
 */
public final class XemsLocalAvatar {
    static final int SIZE = 320;
    private static final String DIR = "avatars";
    private static final String TAG = "xems_avatar_pick";
    private static final int REQ = 0x5A7;

    public interface Picked {
        void onPicked(Bitmap square);
    }

    private static Picked pending;

    private XemsLocalAvatar() {}

    /** Opens the gallery; {@code cb} gets the cropped square (on the main thread) or nothing. */
    public static void pick(Activity a, Picked cb) {
        try {
            pending = cb;
            FragmentManager fm = a.getFragmentManager();
            Fragment old = fm.findFragmentByTag(TAG);
            if (old != null) {
                fm.beginTransaction().remove(old).commitAllowingStateLoss();
                fm.executePendingTransactions();
            }
            fm.beginTransaction().add(new Host(), TAG).commitAllowingStateLoss();
            fm.executePendingTransactions();
        } catch (Throwable t) {
            android.util.Log.w("xems", "XemsLocalAvatar.pick", t);
        }
    }

    /** Headless fragment: starts the picker and gets its result (works on any Activity). */
    public static final class Host extends Fragment {
        @Override
        public void onCreate(android.os.Bundle b) {
            super.onCreate(b);
            if (b == null) {
                try {
                    Intent i = new Intent(Intent.ACTION_GET_CONTENT);
                    i.setType("image/*");
                    i.addCategory(Intent.CATEGORY_OPENABLE);
                    startActivityForResult(Intent.createChooser(i, null), REQ);
                } catch (Throwable t) {
                    android.util.Log.w("xems", "XemsLocalAvatar.start", t);
                    done();
                }
            }
        }

        @Override
        public void onActivityResult(int req, int res, Intent data) {
            super.onActivityResult(req, res, data);
            Picked cb = pending;
            pending = null;
            try {
                if (req == REQ && res == Activity.RESULT_OK && data != null && data.getData() != null && cb != null) {
                    Bitmap sq = load(getActivity(), data.getData());
                    if (sq != null) {
                        cb.onPicked(sq);
                    }
                }
            } catch (Throwable t) {
                android.util.Log.w("xems", "XemsLocalAvatar.result", t);
            }
            done();
        }

        void done() {
            try {
                getFragmentManager().beginTransaction().remove(this).commitAllowingStateLoss();
            } catch (Throwable ignored) {
            }
        }
    }

    /** Decode (sampled), turn upright (EXIF), crop the centre square, scale to SIZE. */
    static Bitmap load(Context c, Uri uri) throws Exception {
        BitmapFactory.Options o = new BitmapFactory.Options();
        o.inJustDecodeBounds = true;
        InputStream in = c.getContentResolver().openInputStream(uri);
        try {
            BitmapFactory.decodeStream(in, null, o);
        } finally {
            in.close();
        }
        int side = Math.min(o.outWidth, o.outHeight);
        int sample = 1;
        while (side / (sample * 2) >= SIZE) {
            sample *= 2;
        }
        o = new BitmapFactory.Options();
        o.inSampleSize = sample;
        in = c.getContentResolver().openInputStream(uri);
        Bitmap bm;
        try {
            bm = BitmapFactory.decodeStream(in, null, o);
        } finally {
            in.close();
        }
        if (bm == null) {
            return null;
        }
        int rot = rotation(c, uri);
        int s = Math.min(bm.getWidth(), bm.getHeight());
        Matrix m = new Matrix();
        float k = SIZE / (float) s;
        m.postScale(k, k);
        if (rot != 0) {
            m.postRotate(rot);
        }
        Bitmap sq = Bitmap.createBitmap(bm, (bm.getWidth() - s) / 2, (bm.getHeight() - s) / 2, s, s, m, true);
        if (sq != bm) {
            bm.recycle();
        }
        return sq;
    }

    private static int rotation(Context c, Uri uri) {
        try {
            InputStream in = c.getContentResolver().openInputStream(uri);
            try {
                android.media.ExifInterface e = new android.media.ExifInterface(in);
                int o = e.getAttributeInt(android.media.ExifInterface.TAG_ORIENTATION, 1);
                return o == 6 ? 90 : o == 3 ? 180 : o == 8 ? 270 : 0;
            } finally {
                in.close();
            }
        } catch (Throwable t) {
            return 0;
        }
    }

    /** Saves the photo; returns the iconUrl ("file://…") or null. Removes the client's old one. */
    public static String save(Context c, Bitmap sq, String oldUrl) {
        try {
            File dir = new File(c.getFilesDir(), DIR);
            if (!dir.isDirectory() && !dir.mkdirs()) {
                return null;
            }
            File f = new File(dir, "a" + System.currentTimeMillis() + ".jpg");
            FileOutputStream out = new FileOutputStream(f);
            try {
                sq.compress(Bitmap.CompressFormat.JPEG, 88, out);
            } finally {
                out.close();
            }
            delete(c, oldUrl);
            return Uri.fromFile(f).toString();
        } catch (Throwable t) {
            android.util.Log.w("xems", "XemsLocalAvatar.save", t);
            return null;
        }
    }

    /** Deletes a photo of ours (files/avatars) — never anything else. */
    public static void delete(Context c, String url) {
        try {
            if (url == null || !url.startsWith("file://")) {
                return;
            }
            File f = new File(Uri.parse(url).getPath());
            File dir = new File(c.getFilesDir(), DIR);
            if (dir.getCanonicalPath().equals(f.getParentFile().getCanonicalPath())) {
                f.delete();
            }
        } catch (Throwable ignored) {
        }
    }

    /** The photo of a client as a bitmap, or null (for the client card). */
    public static Bitmap read(String url, int size) {
        try {
            if (url == null || !url.startsWith("file://")) {
                return null;
            }
            Bitmap b = BitmapFactory.decodeFile(Uri.parse(url).getPath());
            return b != null && size > 0 ? Bitmap.createScaledBitmap(b, size, size, true) : b;
        } catch (Throwable t) {
            return null;
        }
    }

    /** A round version of a square bitmap. */
    public static Bitmap circle(Bitmap sq) {
        if (sq == null) {
            return null;
        }
        int s = Math.min(sq.getWidth(), sq.getHeight());
        Bitmap out = Bitmap.createBitmap(s, s, Bitmap.Config.ARGB_8888);
        Canvas cv = new Canvas(out);
        Paint p = new Paint(Paint.ANTI_ALIAS_FLAG);
        p.setShader(new BitmapShader(sq, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP));
        cv.drawCircle(s / 2f, s / 2f, s / 2f, p);
        return out;
    }

    // ================================================================ training screen

    /**
     * Hook: CircleSeekBar.isTouch — a touch in the middle of the ring (on the client's photo) is
     * not the slider's: the slider moves only on its ring, the photo gets the tap.
     */
    public static boolean inCenter(android.view.View v, float x, float y) {
        try {
            float d = v.getResources().getDisplayMetrics().density;
            float w = v.getWidth() - v.getPaddingLeft() - v.getPaddingRight();
            float dead = w / 2f - 46 * d;              // ring 14 dp + pointer 18 dp + margin
            if (dead <= 0) {
                return false;
            }
            float dx = x - v.getWidth() / 2f;
            float dy = y - v.getHeight() / 2f;
            return dx * dx + dy * dy < dead * dead;
        } catch (Throwable t) {
            return false;
        }
    }

    /** Hook: training slot bound — a tap on the client's photo opens the client card. */
    public static void bindCard(final android.view.View icon, final com.isaigu.gymapp.bean.TrainUserProgramDataWrapper w) {
        try {
            if (icon == null) {
                return;
            }
            if (w == null || w.trainUser == null) {
                icon.setOnClickListener(null);
                icon.setClickable(false);
                return;
            }
            icon.setOnClickListener(new android.view.View.OnClickListener() {
                public void onClick(android.view.View v) {
                    Context c = v.getContext();
                    while (c instanceof android.content.ContextWrapper && !(c instanceof Activity)) {
                        c = ((android.content.ContextWrapper) c).getBaseContext();
                    }
                    if (c instanceof Activity) {
                        showCard((Activity) c, w.trainUser, w.trainProgram);
                    }
                }
            });
        } catch (Throwable t) {
            android.util.Log.w("xems", "XemsLocalAvatar.bindCard", t);
        }
    }

    private static final int C_BG = 0xFF121418;
    private static final int C_CARD = 0xFF1C1F26;
    private static final int C_TEXT = 0xFFECEFF4;
    private static final int C_DIM = 0xFF9AA3B2;
    private static final int C_ACCENT = 0xFF43A047;

    /** Client card: photo, name and everything the client form knows. */
    public static void showCard(final Activity a, final com.isaigu.gymapp.bean.TrainUser u,
            com.isaigu.gymapp.bean.TrainProgram program) {
        try {
            final android.app.Dialog dlg = new android.app.Dialog(a);
            dlg.requestWindowFeature(android.view.Window.FEATURE_NO_TITLE);
            android.widget.LinearLayout page = new android.widget.LinearLayout(a);
            page.setOrientation(android.widget.LinearLayout.HORIZONTAL);
            page.setPadding(dp(a, 28), dp(a, 28), dp(a, 28), dp(a, 24));
            page.setBackground(round(a, C_BG, 28));

            // left: photo, name, buttons
            android.widget.LinearLayout left = new android.widget.LinearLayout(a);
            left.setOrientation(android.widget.LinearLayout.VERTICAL);
            left.setGravity(android.view.Gravity.CENTER_HORIZONTAL);
            android.widget.ImageView ph = new android.widget.ImageView(a);
            Bitmap sq = read(u.iconUrl, 0);
            if (sq != null) {
                ph.setImageBitmap(circle(sq));
            } else {
                ph.setImageBitmap(initials(a, u.name));
            }
            left.addView(ph, new android.widget.LinearLayout.LayoutParams(dp(a, 150), dp(a, 150)));
            android.widget.TextView nm = tv(a, u.name != null ? u.name : "", 26, C_TEXT, true);
            nm.setGravity(android.view.Gravity.CENTER);
            nm.setPadding(0, dp(a, 12), 0, dp(a, 4));
            left.addView(nm, new android.widget.LinearLayout.LayoutParams(dp(a, 240), -2));
            String sub = sexAge(u);
            if (sub.length() > 0) {
                android.widget.TextView sb = tv(a, sub, 17, C_DIM, false);
                sb.setGravity(android.view.Gravity.CENTER);
                left.addView(sb, new android.widget.LinearLayout.LayoutParams(dp(a, 240), -2));
            }
            android.widget.TextView edit = tv(a, XemsLocalUserForm.tr("Редактирай", "Edit"), 18, 0xFFFFFFFF, true);
            edit.setGravity(android.view.Gravity.CENTER);
            edit.setBackground(round(a, C_ACCENT, 24));
            edit.setPadding(dp(a, 24), dp(a, 12), dp(a, 24), dp(a, 12));
            android.widget.LinearLayout.LayoutParams ep = new android.widget.LinearLayout.LayoutParams(dp(a, 200), -2);
            ep.topMargin = dp(a, 20);
            left.addView(edit, ep);
            edit.setOnClickListener(new android.view.View.OnClickListener() {
                public void onClick(android.view.View v) {
                    dlg.dismiss();
                    XemsLocalUserForm.show(a, u);
                }
            });
            android.widget.TextView close = tv(a, XemsLocalUserForm.tr("Затвори", "Close"), 18, C_TEXT, true);
            close.setGravity(android.view.Gravity.CENTER);
            close.setBackground(round(a, C_CARD, 24));
            close.setPadding(dp(a, 24), dp(a, 12), dp(a, 24), dp(a, 12));
            android.widget.LinearLayout.LayoutParams cp = new android.widget.LinearLayout.LayoutParams(dp(a, 200), -2);
            cp.topMargin = dp(a, 10);
            left.addView(close, cp);
            close.setOnClickListener(new android.view.View.OnClickListener() {
                public void onClick(android.view.View v) {
                    dlg.dismiss();
                }
            });
            page.addView(left);

            // right: the facts
            android.widget.LinearLayout facts = new android.widget.LinearLayout(a);
            facts.setOrientation(android.widget.LinearLayout.VERTICAL);
            facts.setPadding(dp(a, 28), 0, 0, 0);
            String[] prof = a.getSharedPreferences("xems_user_profiles", Context.MODE_PRIVATE)
                    .getString("u" + u.id, "").split("\\|", -1);
            if (u.height > 0) {
                fact(a, facts, XemsLocalUserForm.tr("Ръст", "Height"), u.height + " cm");
            }
            if (u.weight > 0) {
                String w = Math.round(u.weight) + " kg";
                if (u.height > 0) {
                    double m = u.height / 100.0;
                    w += "   ·   BMI " + String.format(java.util.Locale.US, "%.1f", u.weight / (m * m));
                }
                fact(a, facts, XemsLocalUserForm.tr("Тегло", "Weight"), w);
            }
            if (prof.length >= 3) {
                if (prof[0].length() > 0) {
                    fact(a, facts, XemsLocalUserForm.tr("Цел", "Goal"), XemsLocalUserForm.goalName(prof[0]));
                }
                if (prof[1].length() > 0) {
                    fact(a, facts, XemsLocalUserForm.tr("Форма", "Fitness"), XemsLocalUserForm.fitnessName(prof[1]));
                }
                StringBuilder cs = new StringBuilder();
                for (String k : prof[2].split(",")) {
                    if (k.trim().length() > 0) {
                        cs.append(cs.length() > 0 ? ", " : "").append(XemsLocalUserForm.contraName(k.trim()));
                    }
                }
                fact(a, facts, XemsLocalUserForm.tr("Противопоказания", "Contraindications"),
                        cs.length() > 0 ? cs.toString() : XemsLocalUserForm.tr("няма", "none"));
            }
            if (u.phone != null && u.phone.trim().length() > 0) {
                fact(a, facts, XemsLocalUserForm.tr("Телефон", "Phone"), u.phone.trim());
            }
            if (u.email != null && u.email.trim().length() > 0) {
                fact(a, facts, XemsLocalUserForm.tr("Имейл", "Email"), u.email.trim());
            }
            if (program != null && program.name != null && program.name.length() > 0) {
                fact(a, facts, XemsLocalUserForm.tr("Програма", "Program"), program.name);
            }
            if (u.createTime != null) {
                fact(a, facts, XemsLocalUserForm.tr("Клиент от", "Client since"),
                        new java.text.SimpleDateFormat("dd.MM.yyyy", java.util.Locale.US).format(u.createTime));
            }
            android.widget.ScrollView sc = new android.widget.ScrollView(a);
            sc.addView(facts);
            page.addView(sc, new android.widget.LinearLayout.LayoutParams(0, -2, 1f));

            dlg.setContentView(page);
            android.view.Window win = dlg.getWindow();
            if (win != null) {
                win.setBackgroundDrawable(new android.graphics.drawable.ColorDrawable(0));
                int sw = a.getResources().getDisplayMetrics().widthPixels;
                win.setLayout(Math.min(sw - dp(a, 48), dp(a, 760)), -2);
            }
            dlg.show();
        } catch (Throwable t) {
            android.util.Log.w("xems", "XemsLocalAvatar.showCard", t);
        }
    }

    private static String sexAge(com.isaigu.gymapp.bean.TrainUser u) {
        StringBuilder b = new StringBuilder();
        if (u.gender != null) {
            b.append(u.gender == com.isaigu.gymapp.bean.Gender.Female
                    ? XemsLocalUserForm.tr("Жена", "Female") : XemsLocalUserForm.tr("Мъж", "Male"));
        }
        if (u.birtyday != null) {
            int y = XemsLocalUserForm.yearsSince(u.birtyday);
            if (y > 0 && y < 120) {
                b.append(b.length() > 0 ? " · " : "").append(y).append(XemsLocalUserForm.tr(" г.", " y"));
            }
        }
        return b.toString();
    }

    private static void fact(Context c, android.widget.LinearLayout col, String label, String value) {
        android.widget.LinearLayout row = new android.widget.LinearLayout(c);
        row.setOrientation(android.widget.LinearLayout.VERTICAL);
        row.setBackground(round(c, C_CARD, 16));
        row.setPadding(dp(c, 16), dp(c, 10), dp(c, 16), dp(c, 10));
        row.addView(tv(c, label, 14, C_DIM, false));
        row.addView(tv(c, value, 19, C_TEXT, true));
        android.widget.LinearLayout.LayoutParams lp = new android.widget.LinearLayout.LayoutParams(-1, -2);
        lp.bottomMargin = dp(c, 8);
        col.addView(row, lp);
    }

    private static Bitmap initials(Context c, String name) {
        int s = dp(c, 150);
        Bitmap b = Bitmap.createBitmap(s, s, Bitmap.Config.ARGB_8888);
        Canvas cv = new Canvas(b);
        Paint p = new Paint(Paint.ANTI_ALIAS_FLAG);
        p.setColor(C_CARD);
        cv.drawCircle(s / 2f, s / 2f, s / 2f, p);
        String t = "";
        if (name != null) {
            for (String part : name.trim().split("\\s+")) {
                if (part.length() > 0 && t.length() < 2) {
                    t += part.substring(0, 1).toUpperCase();
                }
            }
        }
        p.setColor(C_TEXT);
        p.setTextSize(s * 0.38f);
        p.setTextAlign(Paint.Align.CENTER);
        p.setFakeBoldText(true);
        cv.drawText(t, s / 2f, s / 2f - (p.descent() + p.ascent()) / 2f, p);
        return b;
    }

    private static android.widget.TextView tv(Context c, String s, int sp, int color, boolean bold) {
        android.widget.TextView t = new android.widget.TextView(c);
        t.setText(s);
        t.setTextSize(android.util.TypedValue.COMPLEX_UNIT_SP, sp);
        t.setTextColor(color);
        if (bold) {
            t.setTypeface(android.graphics.Typeface.DEFAULT_BOLD);
        }
        return t;
    }

    private static android.graphics.drawable.GradientDrawable round(Context c, int color, int radiusDp) {
        android.graphics.drawable.GradientDrawable g = new android.graphics.drawable.GradientDrawable();
        g.setColor(color);
        g.setCornerRadius(dp(c, radiusDp));
        return g;
    }

    private static int dp(Context c, int v) {
        return Math.round(v * c.getResources().getDisplayMetrics().density);
    }
}
