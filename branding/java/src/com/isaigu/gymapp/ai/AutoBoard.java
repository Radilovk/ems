package com.isaigu.gymapp.ai;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;

import com.isaigu.gymapp.widget.XemsUi;

/**
 * The Auto live board built into the training screen (owner, 1.1.278): while an automatic session runs, the
 * training list (recyclerView in leftLayout) shows only the client's own row — channels, avatar, settings — and the
 * place of the rows for adding participants, down to the module bar, is the board ({@link AutoUi#buildBoard}).
 * The right bar keeps the main ▶/❚❚ and ■ (they drive Auto, {@link AutoLook#bindMainKeys}). Everything is put back
 * when the session ends. Kept by {@link #sync} every tick: a recreated fragment gets the board again.
 */
public final class AutoBoard {
    private static View list;
    private static ViewGroup.LayoutParams listParams;
    private static View board;
    private static int heightPx = -1;
    /** The attached board is the setting-up one (before ▶ Старт), not the run's. */
    private static boolean setupKind;
    /** Reference width of the board (dp); its height follows the real space (never below DESIGN_H). */
    static final int DESIGN_W = 1160;
    static final int DESIGN_H = 290;

    /**
     * Scales the board to the width it got and gives it all the height there is (owner, 1.1.285: the board fills
     * the whole space from the client's row down to the bottom dock — the cards grow taller, the ring and the body
     * grow with them). Only a space flatter than DESIGN_W × DESIGN_H scales by the height and is centred.
     */
    static final class Fit implements View.OnLayoutChangeListener {
        private final View content;

        Fit(View content) {
            this.content = content;
        }

        @Override
        public void onLayoutChange(View v, int l, int t, int r, int b, int ol, int ot, int or, int ob) {
            int w = r - l;
            int h = b - t;
            ViewGroup.LayoutParams lp = content.getLayoutParams();
            int dw = lp.width;
            if (w <= 0 || h <= 0 || dw <= 0) {
                return;
            }
            int minH = XemsUi.dp(v.getContext(), DESIGN_H);
            float k = w / (float) dw;
            int dh = Math.round(h / k);
            if (dh < minH) {
                dh = minH;
                k = h / (float) dh;
            }
            if (lp.height != dh) {
                lp.height = dh;
                content.setLayoutParams(lp);
            }
            content.setPivotX(0);
            content.setPivotY(0);
            content.setScaleX(k);
            content.setScaleY(k);
            content.setTranslationX((w - dw * k) / 2f);
            content.setTranslationY((h - dh * k) / 2f);
        }
    }

    /** The list whose drag is already shut off (one listener per list). */
    private static View guarded;

    /**
     * The list is cut to one row, so a drag on it (the slider, the avatar, the empty gaps) must never scroll it:
     * the row would slide up and snap back. While the board is attached the list neither intercepts a drag nor
     * scrolls on one nobody took.
     */
    static final class NoDrag implements RecyclerView.OnItemTouchListener, View.OnTouchListener {
        @Override
        public boolean onInterceptTouchEvent(RecyclerView rv, MotionEvent e) {
            if (isAttached() && e.getActionMasked() == MotionEvent.ACTION_DOWN) {
                rv.requestDisallowInterceptTouchEvent(true);
            }
            return false;
        }

        @Override
        public void onTouchEvent(RecyclerView rv, MotionEvent e) {}

        @Override
        public void onRequestDisallowInterceptTouchEvent(boolean disallowIntercept) {}

        @Override
        public boolean onTouch(View v, MotionEvent e) {
            return isAttached() && e.getActionMasked() == MotionEvent.ACTION_MOVE;
        }
    }

    private static void guard(View rv) {
        if (rv == guarded || !(rv instanceof RecyclerView)) {
            return;
        }
        NoDrag g = new NoDrag();
        ((RecyclerView) rv).addOnItemTouchListener(g);
        rv.setOnTouchListener(g);
        guarded = rv;
    }

    private AutoBoard() {}

    public static boolean isAttached() {
        return board != null && board.getParent() != null;
    }

    /** Builds the board under the first row when Auto runs, removes it otherwise. */
    static void sync(View any) {
        boolean run = AutoSession.getStage() == AutoSession.Stage.RUNNING && AutoSession.getEngine() != null;
        boolean setup = AutoSession.getStage() == AutoSession.Stage.CALIB && AutoSession.getPlan() != null;
        boolean want = run || setup;
        try {
            if (!want) {
                detach();
                return;
            }
            View root = any != null ? any.getRootView() : null;
            if (root == null) {
                return;
            }
            Context c = root.getContext();
            int id = c.getResources().getIdentifier("recyclerView", "id", c.getPackageName());
            View rv = id != 0 ? root.findViewById(id) : null;
            if (rv == null || !(rv.getParent() instanceof LinearLayout)) {
                return;
            }
            if (isAttached() && rv == list && setupKind == setup) {
                keepFirstRow(rv);
                return;
            }
            detach();
            setupKind = setup;
            attach(c, rv);
        } catch (Throwable t) {
            com.isaigu.gymapp.widget.XemsGuard.report("AutoBoard.sync", t);
        }
    }

    private static void attach(Context c, View rv) {
        LinearLayout parent = (LinearLayout) rv.getParent();
        list = rv;
        guard(rv);
        listParams = rv.getLayoutParams();
        scrollTop(rv);
        // the client's own row only: the list is cut to one row's height
        View first = rv instanceof ViewGroup && ((ViewGroup) rv).getChildCount() > 0 ? ((ViewGroup) rv).getChildAt(0) : null;
        int rowH = first != null && first.getHeight() > 0 ? first.getHeight() : XemsUi.dp(c, 170);
        if (first != null && first.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams m = (ViewGroup.MarginLayoutParams) first.getLayoutParams();
            rowH += m.topMargin + m.bottomMargin;
        }
        heightPx = rowH;
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, rowH);
        rv.setLayoutParams(lp);

        // The place of the "Добави" rows down to the dock: the board is laid out at a reference width and scaled
        // evenly to the real width; its height is whatever is left (Fit), so it fills the space on every tablet —
        // no scrolling, nothing cut, no empty band above or below.
        LinearLayout content = XemsUi.vertical(c);
        if (setupKind) {
            AutoUi.buildSetupBoard(c, content);
        } else {
            AutoUi.buildBoard(c, content);
        }
        android.widget.FrameLayout sv = new android.widget.FrameLayout(c);
        sv.addView(content, new android.widget.FrameLayout.LayoutParams(XemsUi.dp(c, DESIGN_W), XemsUi.dp(c, DESIGN_H)));
        sv.addOnLayoutChangeListener(new Fit(content));
        board = sv;
        int at = parent.indexOfChild(rv) + 1;
        LinearLayout.LayoutParams blp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f);
        int m = XemsUi.dp(c, 4);                            // the rows' own margin (ui_card_margin)
        blp.setMargins(m, m, m, m);
        parent.addView(sv, at, blp);
        sv.setAlpha(0f);
        sv.animate().alpha(1f).setDuration(260).start();
    }

    /** The first row stays the client's; a swipe in the list must not bring another row up. */
    private static void keepFirstRow(View rv) {
        try {
            Object pos = rv.getClass().getMethod("computeVerticalScrollOffset").invoke(rv);
            if (pos instanceof Integer && (Integer) pos != 0) {
                scrollTop(rv);
            }
        } catch (Throwable ignored) {
        }
    }

    private static void scrollTop(View rv) {
        try {
            rv.getClass().getMethod("scrollToPosition", int.class).invoke(rv, 0);
        } catch (Throwable ignored) {
        }
    }

    static void detach() {
        if (board != null && board.getParent() instanceof ViewGroup) {
            ((ViewGroup) board.getParent()).removeView(board);
        }
        board = null;
        if (list != null && listParams != null) {
            list.setLayoutParams(listParams);
        }
        list = null;
        listParams = null;
        AutoUi.onBoardDetached();
    }
}
