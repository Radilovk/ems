package com.isaigu.gymapp.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;

/**
 * Square avatar cluster locked to a 170dp reference stage.
 * Measures children at the reference size, displays scaled to fit the
 * available column space so ring, icon, and index buttons keep proportions.
 */
public class AvatarStageLayout extends RelativeLayout {

    private static final float REF_DP = 170f;

    private int refPx;
    private float appliedScale = 1f;

    public AvatarStageLayout(Context context) {
        super(context);
    }

    public AvatarStageLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public AvatarStageLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        refPx = Math.round(REF_DP * getResources().getDisplayMetrics().density);
        int avail = Math.min(
                MeasureSpec.getSize(widthMeasureSpec),
                MeasureSpec.getSize(heightMeasureSpec));
        super.onMeasure(
                MeasureSpec.makeMeasureSpec(refPx, MeasureSpec.EXACTLY),
                MeasureSpec.makeMeasureSpec(refPx, MeasureSpec.EXACTLY));
        setMeasuredDimension(avail, avail);
    }

    @Override
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        int size = right - left;
        float scale = size / (float) refPx;
        super.onLayout(changed, 0, 0, refPx, refPx);
        if (Math.abs(scale - appliedScale) > 0.01f) {
            appliedScale = scale;
            setScaleX(scale);
            setScaleY(scale);
        }
        setPivotX(size / 2f);
        setPivotY(size / 2f);
    }
}
