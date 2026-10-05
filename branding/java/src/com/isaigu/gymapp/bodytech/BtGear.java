package com.isaigu.gymapp.bodytech;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.widget.XemsGuard;
import com.isaigu.gymapp.widget.XemsUi;

/**
 * Hook: TrainViewHolder$1.onNoDoubleClick (the row's gear, scripts/apply-bodytech.py). On a row whose suit is a
 * bodytech one the gear first asks: "Настройки на програмата" (the stock dialog, as always) or "Тестов режим"
 * ({@link BtTestMode}). Every other row opens the stock dialog at once.
 */
public final class BtGear {
    private BtGear() {}

    private static boolean bypass;

    /** true = handled here (the stock dialog is not opened now). */
    public static boolean open(TrainItem item, View gear) {
        try {
            if (bypass) {
                bypass = false;
                return false;
            }
            if (item == null || item.data == null || gear == null) return false;
            String mac = item.data.macAddress;
            if (!BtBridge.isBodytechMac(mac)) return false;
            Activity act = activity(gear.getContext());
            if (act == null) return false;
            BtSettings.load(act);
            new Choice(act, gear, mac).show();
            return true;
        } catch (Throwable t) {
            XemsGuard.report("BtGear.open", t);
            return false;
        }
    }

    static Activity activity(Context c) {
        while (c instanceof ContextWrapper) {
            if (c instanceof Activity) return (Activity) c;
            c = ((ContextWrapper) c).getBaseContext();
        }
        return null;
    }

    static final class Choice {
        final Activity a;
        final View gear;
        final String mac;
        final XemsUi.Shell sh;

        Choice(Activity a, View gear, String mac) {
            this.a = a;
            this.gear = gear;
            this.mac = mac;
            XemsUi.init(a);
            sh = XemsUi.shell(a, "Костюм bodytech", null, 520);
            TextView prog = XemsUi.button(a, "Настройки на програмата", XemsUi.PRIMARY);
            prog.setOnClickListener(new Program(this));
            TextView test = XemsUi.button(a, "Тестов режим", XemsUi.SECONDARY);
            test.setOnClickListener(new Test(this));
            sh.body.addView(prog, XemsUi.matchWrap(a, 8));
            LinearLayout.LayoutParams tp = XemsUi.matchWrap(a, 12);
            sh.body.addView(test, tp);
            TextView hint = XemsUi.text(a, "Тестовият режим е отделен от тренировката: пробваш Hz до 1000, ширина до 511 µs "
                    + "и форма на импулса на всеки канал, без да пипаш програмата.", 12, XemsUi.HINT, false);
            hint.setPadding(0, XemsUi.dp(a, 12), 0, XemsUi.dp(a, 8));
            sh.body.addView(hint);
        }

        void show() {
            sh.dialog.show();
        }
    }

    static final class Program implements View.OnClickListener {
        final Choice c;

        Program(Choice c) {
            this.c = c;
        }

        @Override
        public void onClick(View v) {
            c.sh.dialog.dismiss();
            new Handler(Looper.getMainLooper()).postDelayed(new Replay(c.gear), 200);
        }
    }

    /** The stock gear again, past the hook once. */
    static final class Replay implements Runnable {
        final View gear;

        Replay(View gear) {
            this.gear = gear;
        }

        @Override
        public void run() {
            bypass = true;
            if (!gear.performClick()) bypass = false;
        }
    }

    static final class Test implements View.OnClickListener {
        final Choice c;

        Test(Choice c) {
            this.c = c;
        }

        @Override
        public void onClick(View v) {
            c.sh.dialog.dismiss();
            new BtTestMode(c.a, c.mac).show();
        }
    }
}
