package com.isaigu.gymapp.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;

public class CircleSeekBar extends View {
    public interface OnSeekBarChangeListener {
        void onChanged(CircleSeekBar seekbar, int progress);

        void onChangedEnd(CircleSeekBar seekbar, int progress);
    }

    public CircleSeekBar(Context context) {
        super(context);
    }

    public CircleSeekBar(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public void setCurProcess(int curProcess) {
    }

    public void setMaxProcess(int maxProcess) {
    }

    public int getCurProcess() {
        return 0;
    }

    public int getMaxProcess() {
        return 100;
    }

    public void setOnSeekBarChangeListener(OnSeekBarChangeListener listener) {
    }
}
