package android.support.v7.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;

public class RecyclerView extends ViewGroup {
    public RecyclerView(Context context) {
        super(context);
    }

    public RecyclerView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public void addOnScrollListener(OnScrollListener listener) {}

    public LayoutManager getLayoutManager() {
        return null;
    }

    @Override
    protected void onLayout(boolean changed, int l, int t, int r, int b) {}

    public static abstract class OnScrollListener {
        public void onScrolled(RecyclerView recyclerView, int dx, int dy) {}
    }

    public static abstract class LayoutManager {
        public View findViewByPosition(int position) {
            return null;
        }
    }
}
