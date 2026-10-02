package com.isaigu.gymapp.ai;

import android.content.Context;
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
    /** Reference size of the board (dp): the shape of the two "Добави" rows on the training screen. */
    static final int DESIGN_W = 1160;
    static final int DESIGN_H = 290;

    /** Scales the board evenly to the space it got, centred (touches follow the scale). */
    static final class Fit implements View.OnLayoutChangeListener {
        private final View content;

        Fit(View content) {
            this.content = content;
        }

        @Override
        public void onLayoutChange(View v, int l, int t, int r, int b, int ol, int ot, int or, int ob) {
            int w = r - l;
            int h = b - t;
            int dw = content.getLayoutParams().width;
            int dh = content.getLayoutParams().height;
            if (w <= 0 || h <= 0 || dw <= 0 || dh <= 0) {
                return;
            }
            float k = Math.min(w / (float) dw, h / (float) dh);
            content.setPivotX(0);
            content.setPivotY(0);
            content.setScaleX(k);
            content.setScaleY(k);
            content.setTranslationX((w - dw * k) / 2f);
            content.setTranslationY((h - dh * k) / 2f);
        }
    }

    private AutoBoard() {}

    public static boolean isAttached() {
        return board != null && board.getParent() != null;
    }

    /** Builds the board under the first row when Auto runs, removes it otherwise. */
    static void sync(View any) {
        boolean want = AutoSession.getStage() == AutoSession.Stage.RUNNING && AutoSession.getEngine() != null;
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
            if (isAttached() && rv == list) {
                keepFirstRow(rv);
                return;
            }
            detach();
            attach(c, rv);
        } catch (Throwable t) {
            com.isaigu.gymapp.widget.XemsGuard.report("AutoBoard.sync", t);
        }
    }

    private static void attach(Context c, View rv) {
        LinearLayout parent = (LinearLayout) rv.getParent();
        list = rv;
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

        // The place of the two "Добави" rows: wide and short (≈ 4 : 1). The board is laid out once at a reference
        // size with that shape and scaled evenly to the real space, so it fits exactly on every tablet — no scrolling,
        // nothing cut, the same proportions everywhere.
        LinearLayout content = XemsUi.vertical(c);
        AutoUi.buildBoard(c, content);
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
