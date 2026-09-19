package com.isaigu.gymapp.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

/**
 * Keeps avatar ring, photo, and index buttons in the same proportions as the
 * tuned reference layout (130×170dp), without shifting the cluster.
 *
 * At reference size the inflated XML is left untouched. On other column sizes
 * only child margins/sizes/padding are scaled — the container is never scaled.
 */
public class AvatarClusterLayout extends RelativeLayout {

    /** Reference column size matching the tuned phone layout. */
    private static final float REF_W_DP = 130f;
    private static final float REF_H_DP = 170f;

    private static final float BTN_DP = 45f;
    private static final float EDGE_DP = 0f;
    private static final float VERT_DP = 10f;
    private static final float ICON_PAD_DP = 29f;

    private static final float EPS = 0.02f;

    private int appliedW;
    private int appliedH;

    public AvatarClusterLayout(Context context) {
        super(context);
    }

    public AvatarClusterLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public AvatarClusterLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    @Override
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        if (w <= 0 || h <= 0 || (w == appliedW && h == appliedH)) {
            return;
        }
        appliedW = w;
        appliedH = h;

        float density = getResources().getDisplayMetrics().density;
        float sx = w / (REF_W_DP * density);
        float sy = h / (REF_H_DP * density);
        if (Math.abs(sx - 1f) < EPS && Math.abs(sy - 1f) < EPS) {
            return;
        }

        float s = Math.min(sx, sy);
        int btn = Math.round(BTN_DP * density * s);
        int vert = Math.round(VERT_DP * density * sy);
        int edge = Math.round(EDGE_DP * density * sx);
        int pad = Math.round(ICON_PAD_DP * density * s);

        applyCornerButton("ma", btn, vert, edge, true, false);
        applyCornerButton("pauseMaValue", btn, vert, edge, false, true);
        applyCornerButton("hzValue", btn, vert, edge, true, false, true);
        applyCornerButton("pauseHzValue", btn, vert, edge, false, true, true);

        int iconId = id("userIcon");
        if (iconId != 0) {
            ImageView icon = findViewById(iconId);
            if (icon != null) {
                icon.setPadding(pad, pad, pad, pad);
            }
        }
    }

    private void applyCornerButton(
            String name,
            int btn,
            int vert,
            int edge,
            boolean left,
            boolean right) {
        applyCornerButton(name, btn, vert, edge, left, right, false);
    }

    private void applyCornerButton(
            String name,
            int btn,
            int vert,
            int edge,
            boolean left,
            boolean right,
            boolean bottom) {
        int viewId = id(name);
        if (viewId == 0) {
            return;
        }
        View view = findViewById(viewId);
        if (!(view instanceof TextView) || !(view.getLayoutParams() instanceof LayoutParams)) {
            return;
        }
        LayoutParams lp = (LayoutParams) view.getLayoutParams();
        lp.width = btn;
        lp.height = btn;
        lp.leftMargin = left ? edge : 0;
        lp.rightMargin = right ? edge : 0;
        if (bottom) {
            lp.topMargin = 0;
            lp.bottomMargin = vert;
            lp.addRule(ALIGN_PARENT_BOTTOM);
            lp.addRule(ALIGN_PARENT_TOP, 0);
        } else {
            lp.topMargin = vert;
            lp.bottomMargin = 0;
            lp.addRule(ALIGN_PARENT_TOP);
            lp.addRule(ALIGN_PARENT_BOTTOM, 0);
        }
        if (left) {
            lp.addRule(ALIGN_PARENT_LEFT);
            lp.addRule(ALIGN_PARENT_RIGHT, 0);
        }
        if (right) {
            lp.addRule(ALIGN_PARENT_RIGHT);
            lp.addRule(ALIGN_PARENT_LEFT, 0);
        }
        view.setLayoutParams(lp);
    }

    private int id(String name) {
        return getResources().getIdentifier(name, "id", getContext().getPackageName());
    }
}
