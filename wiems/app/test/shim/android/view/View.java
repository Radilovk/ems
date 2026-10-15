package android.view;

import android.content.Context;
import android.graphics.Canvas;

/** Render-test shim: a size and a draw entry point. */
public class View {
    public int w = 1280, h = 800;

    public View(Context c) {}

    public int getWidth() { return w; }

    public int getHeight() { return h; }

    public void invalidate() {}

    public void setBackgroundColor(int c) {}

    protected void onDraw(Canvas c) {}

    public boolean onTouchEvent(MotionEvent e) { return false; }

    public void draw(Canvas c) { onDraw(c); }
}
