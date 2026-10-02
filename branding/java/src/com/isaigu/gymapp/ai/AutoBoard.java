package com.isaigu.gymapp.ai;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ScrollView;

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

        LinearLayout content = XemsUi.vertical(c);
        content.setPadding(XemsUi.dp(c, 6), XemsUi.dp(c, 4), XemsUi.dp(c, 6), XemsUi.dp(c, 8));
        AutoUi.buildBoard(c, content);
        ScrollView sv = new ScrollView(c);                  // a shorter screen scrolls instead of cutting
        sv.setFillViewport(true);
        sv.setVerticalScrollBarEnabled(false);
        sv.addView(content, new ScrollView.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                Math.max(XemsUi.dp(c, 430), 0)));
        board = sv;
        int at = parent.indexOfChild(rv) + 1;
        parent.addView(sv, at, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
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
