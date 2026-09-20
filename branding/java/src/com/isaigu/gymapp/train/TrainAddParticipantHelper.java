package com.isaigu.gymapp.train;

import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.isaigu.gymapp.BaseActivity;
import com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment;
import com.isaigu.gymapp.fragment.NewTrainFragment;
import com.isaigu.gymapp.train.model.TrainItem;

import java.util.List;

/** Floating add-user control anchored to the last participant row (does not touch row ViewBinding). */
public final class TrainAddParticipantHelper {
    private static final int RECYCLER_ID = 0x7f090149;
    private static final int WRAP_ID = 0x7f09028d;
    private static final int BTN_ID = 0x7f09028a;
    private static final int STR_ADD = 0x7f0d0174;
    private static final int DRAWABLE_WHITE_CIRCLE = 0x7f0800ca;
    private static final int MIPMAP_ADD3 = 0x7f0c0002;

    private static NewTrainFragment host;
    private static RecyclerView recycler;
    private static FrameLayout overlayHost;
    private static View overlayWrap;
    private static boolean attached;

    private TrainAddParticipantHelper() {}

    public static void attach(NewTrainFragment fragment, View root) {
        if (fragment == null || root == null || attached) {
            return;
        }
        View rv = root.findViewById(RECYCLER_ID);
        if (!(rv instanceof RecyclerView)) {
            return;
        }
        host = fragment;
        recycler = (RecyclerView) rv;
        ensureOverlay(recycler.getContext());
        recycler.addOnScrollListener(new RecyclerView.OnScrollListener() {
            @Override
            public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
                scheduleRefresh();
            }
        });
        recycler.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() {
            @Override
            public void onGlobalLayout() {
                scheduleRefresh();
            }
        });
        attached = true;
        scheduleRefresh();
    }

    public static void refresh() {
        if (host == null || recycler == null || overlayWrap == null || overlayHost == null) {
            return;
        }
        TrainItemManager manager = host.manager;
        if (manager == null) {
            overlayWrap.setVisibility(View.GONE);
            return;
        }
        List<TrainItem> items = manager.getItemList();
        if (items == null || items.isEmpty()) {
            overlayWrap.setVisibility(View.GONE);
            return;
        }
        int nonEmpty = 0;
        boolean hasEmpty = false;
        for (int i = 0; i < items.size(); i++) {
            TrainItem item = items.get(i);
            if (item == null) {
                continue;
            }
            if (item.isEmpty()) {
                hasEmpty = true;
            } else {
                nonEmpty++;
            }
        }
        if (nonEmpty == 0 || nonEmpty >= 6 || hasEmpty) {
            overlayWrap.setVisibility(View.GONE);
            return;
        }
        int lastPos = -1;
        for (int i = items.size() - 1; i >= 0; i--) {
            TrainItem item = items.get(i);
            if (item != null && !item.isEmpty()) {
                lastPos = i;
                break;
            }
        }
        if (lastPos < 0) {
            overlayWrap.setVisibility(View.GONE);
            return;
        }
        RecyclerView.LayoutManager lm = recycler.getLayoutManager();
        if (!(lm instanceof LinearLayoutManager)) {
            overlayWrap.setVisibility(View.GONE);
            return;
        }
        View row = lm.findViewByPosition(lastPos);
        if (row == null) {
            overlayWrap.setVisibility(View.GONE);
            return;
        }
        overlayWrap.setVisibility(View.VISIBLE);
        positionOverlay(row);
    }

    private static void scheduleRefresh() {
        if (overlayWrap == null) {
            return;
        }
        overlayWrap.removeCallbacks(refreshRunnable);
        overlayWrap.post(refreshRunnable);
    }

    private static final Runnable refreshRunnable = new Runnable() {
        @Override
        public void run() {
            refresh();
        }
    };

    private static void positionOverlay(View row) {
        int[] rowLoc = new int[2];
        int[] hostLoc = new int[2];
        row.getLocationInWindow(rowLoc);
        overlayHost.getLocationInWindow(hostLoc);
        float density = row.getResources().getDisplayMetrics().density;
        int marginRight = (int) (6f * density + 0.5f);
        int hangBelow = (int) (38f * density + 0.5f);
        int wrapW = overlayWrap.getWidth();
        int wrapH = overlayWrap.getHeight();
        if (wrapW <= 0 || wrapH <= 0) {
            overlayWrap.measure(
                    View.MeasureSpec.makeMeasureSpec(0, View.MeasureSpec.UNSPECIFIED),
                    View.MeasureSpec.makeMeasureSpec(0, View.MeasureSpec.UNSPECIFIED));
            wrapW = overlayWrap.getMeasuredWidth();
            wrapH = overlayWrap.getMeasuredHeight();
        }
        float x = rowLoc[0] + row.getWidth() - wrapW - marginRight - hostLoc[0];
        float y = rowLoc[1] + row.getHeight() - wrapH + hangBelow - hostLoc[1];
        overlayWrap.setX(x);
        overlayWrap.setY(y);
    }

    private static void ensureOverlay(Context context) {
        if (overlayWrap != null) {
            return;
        }
        ViewGroup parent = (ViewGroup) recycler.getParent();
        int index = parent.indexOfChild(recycler);
        ViewGroup.LayoutParams recyclerLp = recycler.getLayoutParams();

        parent.removeView(recycler);
        overlayHost = new FrameLayout(context);
        overlayHost.setLayoutParams(recyclerLp);
        overlayHost.setClipChildren(false);
        overlayHost.setClipToPadding(false);

        FrameLayout.LayoutParams recyclerInner = new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.MATCH_PARENT);
        overlayHost.addView(recycler, recyclerInner);

        overlayWrap = buildOverlay(context);
        FrameLayout.LayoutParams wrapLp = new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT);
        overlayHost.addView(overlayWrap, wrapLp);
        overlayWrap.setVisibility(View.GONE);

        parent.addView(overlayHost, index);
    }

    private static View buildOverlay(Context context) {
        float density = context.getResources().getDisplayMetrics().density;
        int outer = (int) (64f * density + 0.5f);
        int inner = (int) (52f * density + 0.5f);

        LinearLayout wrap = new LinearLayout(context);
        wrap.setId(WRAP_ID);
        wrap.setOrientation(LinearLayout.VERTICAL);
        wrap.setGravity(Gravity.CENTER_HORIZONTAL);
        wrap.setClipChildren(false);
        wrap.setClipToPadding(false);

        FrameLayout circle = new FrameLayout(context);
        circle.setBackgroundResource(DRAWABLE_WHITE_CIRCLE);
        LinearLayout.LayoutParams circleLp = new LinearLayout.LayoutParams(outer, outer);
        wrap.addView(circle, circleLp);

        Button button = new Button(context);
        button.setId(BTN_ID);
        button.setBackgroundResource(MIPMAP_ADD3);
        FrameLayout.LayoutParams btnLp = new FrameLayout.LayoutParams(inner, inner, Gravity.CENTER);
        circle.addView(button, btnLp);

        TextView label = new TextView(context);
        label.setText(STR_ADD);
        label.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13f);
        label.setTextColor(0xFF666666);
        label.setGravity(Gravity.CENTER);
        LinearLayout.LayoutParams labelLp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT);
        labelLp.topMargin = (int) (4f * density + 0.5f);
        wrap.addView(label, labelLp);

        View.OnClickListener openDialog = new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                openAddUserDialog();
            }
        };
        button.setOnClickListener(openDialog);
        wrap.setOnClickListener(openDialog);
        return wrap;
    }

    private static void openAddUserDialog() {
        if (host == null) {
            return;
        }
        BaseActivity activity = host.getBaseActivity();
        if (activity == null) {
            return;
        }
        activity.showDialogFragment(new NewUserProgramDeviceConnectDialogFragment());
    }
}
