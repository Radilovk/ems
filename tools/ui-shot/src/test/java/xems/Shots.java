package xems;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.Robolectric;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;

import java.io.File;
import java.io.FileOutputStream;

/**
 * Off-device screenshots of XEMS's own Java screens (tools/ui-shot): the real views, the real layout and drawing
 * (Robolectric native graphics), the tablet's size and colours. Each screen → out/<name>.png.
 */
@RunWith(RobolectricTestRunner.class)
@Config(sdk = 30, qualifiers = "w1280dp-h800dp-land-mdpi")
@GraphicsMode(GraphicsMode.Mode.NATIVE)
public class Shots {
    static File out() {
        File d = new File(System.getProperty("shot.out", "out"));
        d.mkdirs();
        return d;
    }

    /** The view at w × h dp (mdpi: 1 dp = 1 px here; the file is scaled 1:1), drawn to a PNG. */
    static void shot(View v, int w, int h, String name) throws Exception {
        v.measure(View.MeasureSpec.makeMeasureSpec(w, View.MeasureSpec.EXACTLY),
                View.MeasureSpec.makeMeasureSpec(h, View.MeasureSpec.EXACTLY));
        v.layout(0, 0, w, h);
        Bitmap b = Bitmap.createBitmap(w, h, Bitmap.Config.ARGB_8888);
        Canvas c = new Canvas(b);
        c.drawColor(com.isaigu.gymapp.widget.XemsUi.BG);
        v.draw(c);
        try (FileOutputStream o = new FileOutputStream(new File(out(), name + ".png"))) {
            b.compress(Bitmap.CompressFormat.PNG, 100, o);
        }
        System.out.println("SHOT " + name + " " + w + "x" + h);
    }

    @Test
    public void kit() throws Exception {
        Activity a = Robolectric.buildActivity(Activity.class).setup().get();
        com.isaigu.gymapp.widget.XemsUi.init(a);
        LinearLayout box = com.isaigu.gymapp.widget.XemsUi.vertical(a);
        box.addView(com.isaigu.gymapp.widget.XemsUi.text(a, "Проба · XEMS", 22, com.isaigu.gymapp.widget.XemsUi.TEXT, true));
        box.addView(com.isaigu.gymapp.widget.XemsUi.button(a, "▶  Старт", com.isaigu.gymapp.widget.XemsUi.PRIMARY));
        FrameLayout f = new FrameLayout(a);
        f.addView(box);
        shot(f, 600, 200, "kit");
    }
}
