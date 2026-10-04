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
import android.graphics.Color;
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

    private static final java.util.WeakHashMap<android.view.View, Boolean> GRAB =
            new java.util.WeakHashMap<android.view.View, Boolean>();
    private static int ringId;
    private static java.lang.reflect.Method autoOn;

    /** Auto owns the suits (ai.AutoLook, compiled after this class — so by name): the ring does not move. */
    private static boolean autoOwns() {
        try {
            if (autoOn == null) {
                autoOn = Class.forName("com.isaigu.gymapp.ai.AutoLook").getMethod("isOn");
            }
            return Boolean.TRUE.equals(autoOn.invoke(null));
        } catch (Throwable t) {
            return false;
        }
    }

    /**
     * Hook: start of CircleSeekBar.onTouchEvent (thumb centre and radius in view coordinates). The ring
     * around the avatar moves only when the gesture starts on its handle; a tap or drag anywhere else on
     * the track is ignored (and left to the row). Other CircleSeekBars (music seek) are untouched.
     */
    public static boolean grab(android.view.View v, android.view.MotionEvent e, float tx, float ty, float pr) {
        try {
            if (ringId == 0) {
                ringId = v.getResources().getIdentifier("circleSeekBar", "id", v.getContext().getPackageName());
            }
            if (v.getId() != ringId) {
                return true;
            }
            if (autoOwns()) {
                return false;          // Auto (owner, 1.1.315): strength only with the + / − keys, never the ring
            }
            int a = e.getActionMasked();
            if (a == android.view.MotionEvent.ACTION_DOWN) {
                float d = v.getResources().getDisplayMetrics().density;
                float r = Math.max(pr * 1.8f, 30 * d);
                float dx = e.getX() - tx;
                float dy = e.getY() - ty;
                boolean ok = dx * dx + dy * dy <= r * r;
                GRAB.put(v, ok ? Boolean.TRUE : Boolean.FALSE);
                if (ok && v.getParent() != null) {
                    v.getParent().requestDisallowInterceptTouchEvent(true);
                }
                return ok;
            }
            Boolean g = GRAB.get(v);
            if (a == android.view.MotionEvent.ACTION_UP || a == android.view.MotionEvent.ACTION_CANCEL) {
                GRAB.remove(v);
            }
            if (g == null || !g.booleanValue()) {
                return false;
            }
            steady(v, e, tx, ty);
            return true;
        } catch (Throwable t) {
            return true;
        }
    }

    /** Closer to the centre than this part of the ring's radius, the angle is noise. */
    private static final float DEAD_CORE = 0.45f;
    /** One move event never turns the ring more than this (a jump across the gap or the centre). */
    private static final double MAX_STEP = 50;

    /**
     * The ring's value follows the finger's direction from the centre, so a finger drifting towards the
     * centre (or across the ends of the ring) swung it to 0 or max. Such a point is moved onto the thumb:
     * the ring stays where it is and follows again once the finger is back on a sane line.
     */
    static void steady(android.view.View v, android.view.MotionEvent e, float tx, float ty) {
        float cx = v.getWidth() / 2;
        float cy = v.getHeight() / 2;
        float rx = tx - cx;
        float ry = ty - cy;
        float ring = (float) Math.sqrt(rx * rx + ry * ry);
        if (ring < 1) {
            return;
        }
        float fx = e.getX() - cx;
        float fy = e.getY() - cy;
        float dist = (float) Math.sqrt(fx * fx + fy * fy);
        boolean hold = dist < ring * DEAD_CORE;
        if (!hold) {
            double step = angle(fx, fy, dist) - angle(rx, ry, ring);
            while (step > 180) {
                step -= 360;
            }
            while (step < -180) {
                step += 360;
            }
            hold = Math.abs(step) > MAX_STEP;
        }
        if (hold) {
            e.setLocation(tx, ty);
        }
    }

    /** CircleSeekBar's angle: 0 at the top, clockwise, degrees. */
    private static double angle(float dx, float dy, float dist) {
        double deg = Math.toDegrees(Math.acos(Math.max(-1, Math.min(1, dy / dist))));
        return dx < 0 ? deg + 180 : 180 - deg;
    }

    /**
     * Hook: TrainViewHolder.bind (the training screen). With several clients a tap on a photo picks
     * that client (the photo lights up) and the master controls — + / −, ▶ / ❚❚ and ⚙ Master — act
     * on the picked clients only; nothing picked = everyone, as before. A long press opens the client
     * card. The client is read at touch time (the slot may get another client later).
     */
    public static void bindCard(final android.view.View icon, final com.isaigu.gymapp.train.model.TrainItem item) {
        try {
            if (icon == null) {
                return;
            }
            icon.setOnClickListener(null);
            icon.setClickable(false);
            icon.setOnTouchListener(new CardTouch(item, null));
            showPick(icon, picked(item));
        } catch (Throwable t) {
            android.util.Log.w("xems", "XemsLocalAvatar.bindCard", t);
        }
    }

    // ================================================================ picked clients (training screen)

    /** Picked rows → the client id they were picked with (a slot that gets another client drops out). */
    private static final java.util.WeakHashMap<com.isaigu.gymapp.train.model.TrainItem, Long> PICKED =
            new java.util.WeakHashMap<com.isaigu.gymapp.train.model.TrainItem, Long>();

    private static long clientId(com.isaigu.gymapp.train.model.TrainItem it) {
        if (it == null || it.isEmpty() || it.data == null || it.data.trainUser == null) {
            return Long.MIN_VALUE;
        }
        return it.data.trainUser.id;
    }

    /** The rows picked now (stale ones — empty slot, other client — are dropped). */
    static synchronized java.util.List<com.isaigu.gymapp.train.model.TrainItem> pickedItems() {
        java.util.List<com.isaigu.gymapp.train.model.TrainItem> out =
                new java.util.ArrayList<com.isaigu.gymapp.train.model.TrainItem>();
        java.util.Iterator<java.util.Map.Entry<com.isaigu.gymapp.train.model.TrainItem, Long>> i =
                PICKED.entrySet().iterator();
        while (i.hasNext()) {
            java.util.Map.Entry<com.isaigu.gymapp.train.model.TrainItem, Long> e = i.next();
            com.isaigu.gymapp.train.model.TrainItem it = e.getKey();
            if (it == null || e.getValue() == null || clientId(it) != e.getValue().longValue()) {
                i.remove();
            } else {
                out.add(it);
            }
        }
        return out;
    }

    public static synchronized boolean picked(com.isaigu.gymapp.train.model.TrainItem it) {
        Long id = it != null ? PICKED.get(it) : null;
        return id != null && clientId(it) == id.longValue();
    }

    /** Tap on a photo: pick / unpick that client. Returns the new state. */
    static synchronized boolean togglePick(com.isaigu.gymapp.train.model.TrainItem it) {
        if (picked(it)) {
            PICKED.remove(it);
            return false;
        }
        long id = clientId(it);
        if (id == Long.MIN_VALUE) {
            return false;
        }
        PICKED.put(it, id);
        return true;
    }

    /**
     * Hook: the master + / − (TrainItemManager.lambda$addAllPartValue$6) and ⚙ Master
     * (NewTrainFragment.lambda$settingAllUser$15): does a master control act on this row?
     */
    public static boolean masterApplies(com.isaigu.gymapp.train.model.TrainItem it) {
        try {
            return pickedItems().isEmpty() || picked(it);
        } catch (Throwable t) {
            return true;
        }
    }

    /**
     * Hook: NewTrainFragment.startOrStopAll (▶ / ❚❚ of the master panel). With clients picked it starts
     * them, or pauses them when one of them runs, and returns true (the others and the panel's own
     * state stay as they are); with nobody picked it returns false and the usual start / pause runs.
     * ■ (end of the session) stays for everyone: it also ends the timer, the music and the band.
     */
    public static boolean masterStartOrStop() {
        try {
            java.util.List<com.isaigu.gymapp.train.model.TrainItem> list = pickedItems();
            if (list.isEmpty()) {
                return false;
            }
            boolean running = false;
            for (com.isaigu.gymapp.train.model.TrainItem it : list) {
                running |= it.data != null && it.data.start;
            }
            for (com.isaigu.gymapp.train.model.TrainItem it : list) {
                if (running) {
                    it.stop();
                } else {
                    it.start();
                }
            }
            return true;
        } catch (Throwable t) {
            android.util.Log.w("xems", "XemsLocalAvatar.masterStartOrStop", t);
            return false;
        }
    }

    /** The photo lit (a glowing ring round it) while its client is picked. */
    static void showPick(android.view.View icon, boolean on) {
        try {
            android.view.ViewOverlay ov = icon.getOverlay();
            Object old = icon.getTag(TAG_GLOW);
            if (old instanceof Glow) {
                ov.remove((Glow) old);
                icon.setTag(TAG_GLOW, null);
            }
            if (on) {
                Glow g = new Glow(icon);
                g.setBounds(0, 0, Math.max(1, icon.getWidth()), Math.max(1, icon.getHeight()));
                ov.add(g);
                icon.setTag(TAG_GLOW, g);
            }
            icon.invalidate();
        } catch (Throwable t) {
            android.util.Log.w("xems", "XemsLocalAvatar.showPick", t);
        }
    }

    /** View tag key for the glow (an app id that no view uses as a tag key). */
    private static final int TAG_GLOW = 0x7f5a7e01;

    /** A soft halo and a bright ring at the photo's edge (same geometry as {@link #onPhoto}). */
    static final class Glow extends android.graphics.drawable.Drawable {
        private final android.view.View v;
        private final Paint p = new Paint(Paint.ANTI_ALIAS_FLAG);

        Glow(android.view.View v) {
            this.v = v;
            p.setStyle(Paint.Style.STROKE);
        }

        @Override
        public void draw(Canvas c) {
            int w = v.getWidth();
            int h = v.getHeight();
            if (w != getBounds().width() || h != getBounds().height()) {
                setBounds(0, 0, Math.max(1, w), Math.max(1, h));
            }
            float d = v.getResources().getDisplayMetrics().density;
            float r = (Math.min(w, h) - 44 * d) / 2f - 46 * d;
            if (r <= 0) {
                return;
            }
            float cx = w / 2f;
            float cy = h / 2f;
            // halo: rings fading outwards
            for (int i = 6; i >= 1; i--) {
                p.setStrokeWidth(3 * d);
                p.setColor(Color.argb(22 + (6 - i) * 14, 0x5E, 0xF0, 0x8C));
                c.drawCircle(cx, cy, r + i * 2.2f * d, p);
            }
            // the ring itself, on the photo's edge
            p.setStrokeWidth(4.5f * d);
            p.setColor(0xFF5EF08C);
            c.drawCircle(cx, cy, r - 1.5f * d, p);
            p.setStrokeWidth(1.5f * d);
            p.setColor(0xCCFFFFFF);
            c.drawCircle(cx, cy, r - 1.5f * d, p);
        }

        @Override
        public void setAlpha(int alpha) {}

        @Override
        public void setColorFilter(android.graphics.ColorFilter cf) {}

        @Override
        public int getOpacity() {
            return android.graphics.PixelFormat.TRANSLUCENT;
        }
    }

    /** Long press on the photo → the client card (posted while the finger stays on it). */
    static final class LongCard implements Runnable {
        final CardTouch touch;
        final android.view.View v;

        LongCard(CardTouch touch, android.view.View v) {
            this.touch = touch;
            this.v = v;
        }

        @Override
        public void run() {
            if (touch.down && touch.pending == this) {
                touch.longDone = true;
                try {
                    v.performHapticFeedback(android.view.HapticFeedbackConstants.LONG_PRESS);
                } catch (Throwable ignored) {
                }
                touch.open(v);
            }
        }
    }

    /** Old training list (TrainFragment) — same card. */
    public static void bindCard(final android.view.View icon, final com.isaigu.gymapp.bean.TrainUserProgramDataWrapper w) {
        try {
            if (icon == null) {
                return;
            }
            icon.setOnClickListener(null);
            icon.setClickable(false);
            icon.setOnTouchListener(new CardTouch(null, w));
        } catch (Throwable t) {
            android.util.Log.w("xems", "XemsLocalAvatar.bindCard", t);
        }
    }

    /**
     * The photo is under the index buttons (ma, pauseMaValue: the main / second impulse strength) and fills
     * the whole cluster. It takes a touch only on the photo itself (the ring's dead centre) and never on a
     * button above it — otherwise the touch goes on to the view below (the index button), as before 1.1.103.
     */
    static final class CardTouch implements android.view.View.OnTouchListener {
        private final com.isaigu.gymapp.train.model.TrainItem item;
        private final com.isaigu.gymapp.bean.TrainUserProgramDataWrapper wrapper;
        boolean down;
        boolean longDone;
        LongCard pending;

        CardTouch(com.isaigu.gymapp.train.model.TrainItem item, com.isaigu.gymapp.bean.TrainUserProgramDataWrapper wrapper) {
            this.item = item;
            this.wrapper = wrapper;
        }

        @Override
        public boolean onTouch(android.view.View v, android.view.MotionEvent e) {
            try {
                int a = e.getActionMasked();
                if (a == android.view.MotionEvent.ACTION_DOWN) {
                    down = onPhoto(v, e.getX(), e.getY());
                    longDone = false;
                    cancelLong(v);
                    if (down && item != null) {
                        pending = new LongCard(this, v);
                        v.postDelayed(pending, android.view.ViewConfiguration.getLongPressTimeout());
                    }
                    return down;
                }
                if (!down) {
                    return false;
                }
                if (a == android.view.MotionEvent.ACTION_MOVE) {
                    if (!onPhoto(v, e.getX(), e.getY())) {
                        cancelLong(v);
                    }
                } else if (a == android.view.MotionEvent.ACTION_UP) {
                    down = false;
                    cancelLong(v);
                    if (!longDone && onPhoto(v, e.getX(), e.getY())) {
                        if (item != null) {
                            // training screen: tap = pick this client for the master controls
                            boolean on = togglePick(item);
                            showPick(v, on);
                            try {
                                v.performHapticFeedback(android.view.HapticFeedbackConstants.VIRTUAL_KEY);
                            } catch (Throwable ignored) {
                            }
                        } else {
                            open(v);
                        }
                    }
                } else if (a == android.view.MotionEvent.ACTION_CANCEL) {
                    down = false;
                    cancelLong(v);
                }
                return true;
            } catch (Throwable t) {
                down = false;
                return false;
            }
        }

        private void cancelLong(android.view.View v) {
            if (pending != null) {
                v.removeCallbacks(pending);
                pending = null;
            }
        }

        void open(android.view.View v) {
            com.isaigu.gymapp.bean.TrainUserProgramDataWrapper w = wrapper != null ? wrapper : item != null ? item.data : null;
            Activity act = activity(v.getContext());
            if (w != null && w.trainUser != null && act != null) {
                showCard(act, w.trainUser, w.trainProgram);
            }
        }
    }

    /** Inside the photo circle and not on a visible clickable sibling (the index buttons). */
    static boolean onPhoto(android.view.View v, float x, float y) {
        float d = v.getResources().getDisplayMetrics().density;
        float side = Math.min(v.getWidth(), v.getHeight()) - 44 * d;   // the ring's padding
        float r = side / 2f - 46 * d;                                     // ring 14 dp + pointer 18 dp + margin
        if (r <= 0) {
            return false;
        }
        float dx = x - v.getWidth() / 2f;
        float dy = y - v.getHeight() / 2f;
        if (dx * dx + dy * dy >= r * r) {
            return false;
        }
        if (v.getParent() instanceof android.view.ViewGroup) {
            android.view.ViewGroup g = (android.view.ViewGroup) v.getParent();
            float px = v.getLeft() + x;
            float py = v.getTop() + y;
            for (int i = 0; i < g.getChildCount(); i++) {
                android.view.View c = g.getChildAt(i);
                if (c == v || c.getVisibility() != android.view.View.VISIBLE || !c.isClickable()
                        || c instanceof com.isaigu.gymapp.widget.CircleSeekBar) {
                    continue;
                }
                if (px >= c.getLeft() && px < c.getRight() && py >= c.getTop() && py < c.getBottom()) {
                    return false;
                }
            }
        }
        return true;
    }

    private static Activity activity(Context c) {
        while (c instanceof android.content.ContextWrapper && !(c instanceof Activity)) {
            c = ((android.content.ContextWrapper) c).getBaseContext();
        }
        return c instanceof Activity ? (Activity) c : null;
    }

    private static final int C_BG = 0xFF14171C;
    private static final int C_HERO = 0xFF1B2A20;
    private static final int C_CARD = 0xFF20242C;
    private static final int C_TEXT = 0xFFF2F4F7;
    private static final int C_DIM = 0xFF98A2B3;
    private static final int C_ACCENT = 0xFF43A047;
    private static final int C_WARN = 0xFFE5484D;

    /** Client card: a modal sheet that scrolls — photo, name and everything the client form knows. */
    public static void showCard(final Activity a, final com.isaigu.gymapp.bean.TrainUser u,
            com.isaigu.gymapp.bean.TrainProgram program) {
        try {
            final android.app.Dialog dlg = new android.app.Dialog(a);
            dlg.requestWindowFeature(android.view.Window.FEATURE_NO_TITLE);
            dlg.setCanceledOnTouchOutside(true);

            android.widget.LinearLayout sheet = new android.widget.LinearLayout(a);
            sheet.setOrientation(android.widget.LinearLayout.VERTICAL);
            sheet.setBackground(round(a, C_BG, 28));

            android.widget.ScrollView sc = new android.widget.ScrollView(a);
            sc.setVerticalScrollBarEnabled(false);
            android.widget.LinearLayout body = new android.widget.LinearLayout(a);
            body.setOrientation(android.widget.LinearLayout.VERTICAL);
            body.setPadding(dp(a, 24), dp(a, 24), dp(a, 24), dp(a, 8));
            sc.addView(body);

            // hero: photo, name, chips
            android.widget.LinearLayout hero = new android.widget.LinearLayout(a);
            hero.setOrientation(android.widget.LinearLayout.HORIZONTAL);
            hero.setGravity(android.view.Gravity.CENTER_VERTICAL);
            hero.setPadding(dp(a, 20), dp(a, 20), dp(a, 20), dp(a, 20));
            android.graphics.drawable.GradientDrawable hg = new android.graphics.drawable.GradientDrawable(
                    android.graphics.drawable.GradientDrawable.Orientation.TL_BR, new int[] {0xFF1F3A27, 0xFF17201A});
            hg.setCornerRadius(dp(a, 22));
            hero.setBackground(hg);
            android.widget.ImageView ph = new android.widget.ImageView(a);
            Bitmap sq = read(u.iconUrl, 0);
            ph.setImageBitmap(sq != null ? circle(sq) : initials(a, u.name));
            hero.addView(ph, new android.widget.LinearLayout.LayoutParams(dp(a, 120), dp(a, 120)));
            android.widget.LinearLayout who = new android.widget.LinearLayout(a);
            who.setOrientation(android.widget.LinearLayout.VERTICAL);
            who.setPadding(dp(a, 20), 0, 0, 0);
            who.addView(tv(a, u.name != null ? u.name : "", 28, C_TEXT, true));
            android.widget.LinearLayout chips = new android.widget.LinearLayout(a);
            chips.setOrientation(android.widget.LinearLayout.HORIZONTAL);
            chips.setPadding(0, dp(a, 10), 0, 0);
            if (u.gender != null) {
                chip(a, chips, u.gender == com.isaigu.gymapp.bean.Gender.Female
                        ? XemsLocalUserForm.tr("Жена", "Female") : XemsLocalUserForm.tr("Мъж", "Male"), C_ACCENT);
            }
            if (u.birtyday != null) {
                int y = XemsLocalUserForm.yearsSince(u.birtyday);
                if (y > 0 && y < 120) {
                    chip(a, chips, y + XemsLocalUserForm.tr(" г.", " y"), C_ACCENT);
                }
            }
            who.addView(chips);
            hero.addView(who, new android.widget.LinearLayout.LayoutParams(0, -2, 1f));
            body.addView(hero, new android.widget.LinearLayout.LayoutParams(-1, -2));

            // body tiles
            android.widget.LinearLayout tiles = new android.widget.LinearLayout(a);
            tiles.setOrientation(android.widget.LinearLayout.HORIZONTAL);
            tiles.setPadding(0, dp(a, 14), 0, 0);
            tile(a, tiles, XemsLocalUserForm.tr("Ръст", "Height"), u.height > 0 ? u.height + " cm" : "—");
            tile(a, tiles, XemsLocalUserForm.tr("Тегло", "Weight"), u.weight > 0 ? Math.round(u.weight) + " kg" : "—");
            String bmi = "—";
            if (u.height > 0 && u.weight > 0) {
                double m = u.height / 100.0;
                bmi = String.format(java.util.Locale.US, "%.1f", u.weight / (m * m));
            }
            tile(a, tiles, "BMI", bmi);
            body.addView(tiles, new android.widget.LinearLayout.LayoutParams(-1, -2));

            // goal · fitness · contraindications
            String[] prof = a.getSharedPreferences("xems_user_profiles", Context.MODE_PRIVATE)
                    .getString("u" + u.id, "").split("\\|", -1);
            if (prof.length >= 3) {
                section(a, body, XemsLocalUserForm.tr("Цел и форма", "Goal and fitness"));
                android.widget.LinearLayout gf = new android.widget.LinearLayout(a);
                gf.setOrientation(android.widget.LinearLayout.HORIZONTAL);
                tile(a, gf, XemsLocalUserForm.tr("Цел", "Goal"),
                        prof[0].length() > 0 ? XemsLocalUserForm.goalName(prof[0]) : "—");
                tile(a, gf, XemsLocalUserForm.tr("Форма", "Fitness"),
                        prof[1].length() > 0 ? XemsLocalUserForm.fitnessName(prof[1]) : "—");
                body.addView(gf, new android.widget.LinearLayout.LayoutParams(-1, -2));
                section(a, body, XemsLocalUserForm.tr("Противопоказания", "Contraindications"));
                android.widget.LinearLayout cs = new android.widget.LinearLayout(a);
                cs.setOrientation(android.widget.LinearLayout.VERTICAL);
                boolean any = false;
                for (String k : prof[2].split(",")) {
                    if (k.trim().length() > 0) {
                        any = true;
                        row(a, cs, "•  " + XemsLocalUserForm.contraName(k.trim()), C_WARN);
                    }
                }
                if (!any) {
                    row(a, cs, XemsLocalUserForm.tr("Няма", "None"), C_ACCENT);
                }
                body.addView(cs, new android.widget.LinearLayout.LayoutParams(-1, -2));
            }

            // contact · program · since
            boolean phone = u.phone != null && u.phone.trim().length() > 0;
            boolean mail = u.email != null && u.email.trim().length() > 0;
            if (phone || mail) {
                section(a, body, XemsLocalUserForm.tr("Контакт", "Contact"));
                if (phone) {
                    fact(a, body, XemsLocalUserForm.tr("Телефон", "Phone"), u.phone.trim());
                }
                if (mail) {
                    fact(a, body, XemsLocalUserForm.tr("Имейл", "Email"), u.email.trim());
                }
            }
            section(a, body, XemsLocalUserForm.tr("Тренировка", "Training"));
            if (program != null && program.name != null && program.name.length() > 0) {
                fact(a, body, XemsLocalUserForm.tr("Програма", "Program"), program.name);
            }
            if (u.createTime != null) {
                fact(a, body, XemsLocalUserForm.tr("Клиент от", "Client since"),
                        new java.text.SimpleDateFormat("dd.MM.yyyy", java.util.Locale.US).format(u.createTime));
            }
            sheet.addView(sc, new android.widget.LinearLayout.LayoutParams(-1, 0, 1f));

            // buttons (always visible)
            android.widget.LinearLayout bar = new android.widget.LinearLayout(a);
            bar.setOrientation(android.widget.LinearLayout.HORIZONTAL);
            bar.setPadding(dp(a, 24), dp(a, 12), dp(a, 24), dp(a, 20));
            android.widget.TextView close = button(a, XemsLocalUserForm.tr("Затвори", "Close"), C_CARD, C_TEXT);
            android.widget.TextView edit = button(a, XemsLocalUserForm.tr("Редактирай", "Edit"), C_ACCENT, 0xFFFFFFFF);
            android.widget.LinearLayout.LayoutParams bp = new android.widget.LinearLayout.LayoutParams(0, dp(a, 56), 1f);
            bar.addView(close, bp);
            android.widget.LinearLayout.LayoutParams ep = new android.widget.LinearLayout.LayoutParams(0, dp(a, 56), 1f);
            ep.leftMargin = dp(a, 12);
            bar.addView(edit, ep);
            sheet.addView(bar, new android.widget.LinearLayout.LayoutParams(-1, -2));
            close.setOnClickListener(new android.view.View.OnClickListener() {
                public void onClick(android.view.View v) {
                    dlg.dismiss();
                }
            });
            edit.setOnClickListener(new android.view.View.OnClickListener() {
                public void onClick(android.view.View v) {
                    dlg.dismiss();
                    XemsLocalUserForm.show(a, u);
                }
            });

            dlg.setContentView(sheet);
            android.view.Window win = dlg.getWindow();
            if (win != null) {
                win.setBackgroundDrawable(new android.graphics.drawable.ColorDrawable(0));
                win.setDimAmount(0.65f);
                android.util.DisplayMetrics dm = a.getResources().getDisplayMetrics();
                win.setLayout(Math.min(dm.widthPixels - dp(a, 48), dp(a, 640)),
                        Math.min(dm.heightPixels - dp(a, 48), dp(a, 720)));
                win.setWindowAnimations(android.R.style.Animation_Dialog);
            }
            dlg.show();
        } catch (Throwable t) {
            android.util.Log.w("xems", "XemsLocalAvatar.showCard", t);
        }
    }

    private static void chip(Context c, android.widget.LinearLayout row, String text, int color) {
        android.widget.TextView t = tv(c, text, 15, color, true);
        android.graphics.drawable.GradientDrawable g = new android.graphics.drawable.GradientDrawable();
        g.setColor((color & 0x00FFFFFF) | 0x26000000);
        g.setCornerRadius(dp(c, 14));
        t.setBackground(g);
        t.setPadding(dp(c, 12), dp(c, 5), dp(c, 12), dp(c, 5));
        android.widget.LinearLayout.LayoutParams lp = new android.widget.LinearLayout.LayoutParams(-2, -2);
        lp.rightMargin = dp(c, 8);
        row.addView(t, lp);
    }

    private static void tile(Context c, android.widget.LinearLayout row, String label, String value) {
        android.widget.LinearLayout t = new android.widget.LinearLayout(c);
        t.setOrientation(android.widget.LinearLayout.VERTICAL);
        t.setBackground(round(c, C_CARD, 18));
        t.setPadding(dp(c, 16), dp(c, 12), dp(c, 16), dp(c, 12));
        t.addView(tv(c, label, 14, C_DIM, false));
        t.addView(tv(c, value, 22, C_TEXT, true));
        android.widget.LinearLayout.LayoutParams lp = new android.widget.LinearLayout.LayoutParams(0, -2, 1f);
        if (row.getChildCount() > 0) {
            lp.leftMargin = dp(c, 10);
        }
        row.addView(t, lp);
    }

    private static void section(Context c, android.widget.LinearLayout body, String title) {
        android.widget.TextView t = tv(c, title.toUpperCase(), 13, C_DIM, true);
        t.setLetterSpacing(0.08f);
        t.setPadding(dp(c, 4), dp(c, 20), 0, dp(c, 8));
        body.addView(t);
    }

    private static void row(Context c, android.widget.LinearLayout col, String text, int color) {
        android.widget.TextView t = tv(c, text, 18, color, true);
        t.setBackground(round(c, C_CARD, 14));
        t.setPadding(dp(c, 16), dp(c, 12), dp(c, 16), dp(c, 12));
        android.widget.LinearLayout.LayoutParams lp = new android.widget.LinearLayout.LayoutParams(-1, -2);
        lp.bottomMargin = dp(c, 6);
        col.addView(t, lp);
    }

    private static android.widget.TextView button(Context c, String text, int bg, int fg) {
        android.widget.TextView b = tv(c, text, 18, fg, true);
        b.setGravity(android.view.Gravity.CENTER);
        b.setBackground(round(c, bg, 18));
        return b;
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
