package com.isaigu.gymapp.wearable;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.isaigu.gymapp.bean.TrainProgram;
import com.isaigu.gymapp.bean.TrainUser;
import com.isaigu.gymapp.message.MessageDispatcher;
import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.utils.BeanUtils;
import com.isaigu.gymapp.widget.XemsGuard;
import com.isaigu.gymapp.widget.XemsLang;
import com.isaigu.gymapp.widget.XemsNav;
import com.isaigu.gymapp.widget.XemsUi;

import java.util.List;

/**
 * Client list (Потребители):
 * <ul>
 *   <li>▶ at the end of every row: the client's last program (their saved one, else the last training's)
 *       goes onto a connected free suit and the training page opens — no picking of client, program and
 *       device. Green and active only while such a suit exists (re-checked every 2 s); the impulses are
 *       started by the trainer as always.</li>
 *   <li>↻ next to the search: pulls the clients again (booking app / server) and redraws the list; in the
 *       client / program / device picker it also scans for suits again.</li>
 * </ul>
 * Hooks: UserFragment$UserAdapter.onBindViewHolder, the first search field of UserFragment and of the
 * connect dialogs (scripts/apply-quick-start.py).
 */
public final class QuickStart {
    private static final String TAG = "xems_quick";
    private static final String REFRESH_TAG = "xems_refresh";

    private QuickStart() {}

    static String tr(String bg, String en) {
        return XemsLang.tr(bg, en);
    }

    static List<TrainItem> items() {
        return WearableSyncHelper.getItemManager() != null ? WearableSyncHelper.getItemManager().getItemList() : null;
    }

    /** A connected suit that is not training, for this client (−1 = none). */
    static int slotFor(TrainUser u) {
        List<TrainItem> items = items();
        return items != null ? NextClient.pickSlot(items, u, System.currentTimeMillis()) : -1;
    }

    // ------------------------------------------------------------------ ▶ in the row

    public static void bindRow(View row, TrainUser u) {
        try {
            if (!(row instanceof LinearLayout) || u == null) {
                return;
            }
            LinearLayout l = (LinearLayout) row;
            Context c = row.getContext();
            XemsUi.init(c);
            TextView b = (TextView) l.findViewWithTag(TAG);
            if (b == null) {
                b = XemsUi.iconButton(c, "▶", XemsUi.GO, 0xFFFFFFFF, 52);
                b.setTag(TAG);
                b.setContentDescription(tr("Старт на тренировка", "Start a training"));
                LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(XemsUi.dp(c, 52), XemsUi.dp(c, 52));
                lp.leftMargin = XemsUi.dp(c, 12);
                lp.rightMargin = XemsUi.dp(c, 16);
                lp.gravity = Gravity.CENTER_VERTICAL;
                l.addView(b, lp);
            }
            Go go = new Go(b, u);
            b.setOnClickListener(go);
            go.paint();
            b.removeCallbacks(go);
            b.postDelayed(go, 2000L);
        } catch (Throwable t) {
            XemsGuard.report("QuickStart.bindRow", t);
        }
    }

    static final class Go implements View.OnClickListener, Runnable {
        private final TextView b;
        private final TrainUser u;

        Go(TextView b, TrainUser u) {
            this.b = b;
            this.u = u;
        }

        void paint() {
            boolean ok = slotFor(u) >= 0;
            b.setAlpha(ok ? 1f : 0.35f);
            b.setBackgroundDrawable(roundFill(b.getContext(), ok ? XemsUi.GO : XemsUi.SURFACE));
            b.setTextColor(ok ? 0xFFFFFFFF : XemsUi.MUTED);
        }

        @Override
        public void run() {                             // live state while the row is on screen
            if (b.getWindowToken() == null) {
                return;
            }
            paint();
            b.postDelayed(this, 2000L);
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            start(activity(v.getContext()), u);
        }
    }

    static android.graphics.drawable.Drawable roundFill(Context c, int color) {
        android.graphics.drawable.GradientDrawable g = new android.graphics.drawable.GradientDrawable();
        g.setShape(android.graphics.drawable.GradientDrawable.OVAL);
        g.setColor(color);
        return g;
    }

    /** Client → a free connected suit with their last program → the training page. */
    public static void start(Activity a, TrainUser u) {
        try {
            if (a == null || u == null) {
                return;
            }
            List<TrainItem> items = items();
            int slot = slotFor(u);
            if (items == null || slot < 0) {
                Toast.makeText(a, tr("Няма свободен свързан костюм — свържи костюм и опитай пак.",
                        "No free connected suit — connect one and try again."), Toast.LENGTH_LONG).show();
                return;
            }
            TrainItem it = items.get(slot);
            boolean same = it.data.trainUser != null && it.data.trainUser.id == u.id;
            String line = "";
            if (!same) {
                NextPlan.Rec rec = NextPlan.recommend(a, u, 0, 0);
                NextPlan.Snap s = rec != null ? rec.last : null;
                TrainProgram p = NextPlan.program(u, s, it);
                TrainUser cu = (TrainUser) BeanUtils.cloneObject(u);
                it.data.trainUser = cu != null ? cu : u;
                if (p != null) {
                    it.setTrainProgram(p);
                }
                line = s != null ? " · " + NextPlan.line(s) : p != null && p.name != null ? " · " + p.name : "";
                NextClient.refreshRows(a);
            }
            XemsNav.goTraining();
            Toast.makeText(a, u.name + line, Toast.LENGTH_SHORT).show();
            WearableBleDiagLog.log("next", "quick start user " + u.id + " slot " + slot + (same ? " (already there)" : ""));
        } catch (Throwable t) {
            XemsGuard.report("QuickStart.start", t);
        }
    }

    static Activity activity(Context c) {
        while (c instanceof ContextWrapper) {
            if (c instanceof Activity) {
                return (Activity) c;
            }
            c = ((ContextWrapper) c).getBaseContext();
        }
        return null;
    }

    // ------------------------------------------------------------------ ↻ next to the search

    /** Hook: next to a screen's first search field. {@code owner} = the fragment (its xemsRefresh(), if any). */
    public static void refreshButton(View search, Object owner) {
        try {
            if (search == null || !(search.getParent() instanceof ViewGroup)) {
                return;
            }
            ViewGroup parent = (ViewGroup) search.getParent();
            if (parent.findViewWithTag(REFRESH_TAG) != null) {
                return;
            }
            Context c = search.getContext();
            XemsUi.init(c);
            TextView b = XemsUi.iconButton(c, "↻", XemsUi.SURFACE, XemsUi.TEXT, 40);
            b.setTag(REFRESH_TAG);
            b.setContentDescription(tr("Обнови", "Refresh"));
            b.setOnClickListener(new Refresh(owner));
            int size = XemsUi.dp(c, 40);
            if (parent instanceof LinearLayout) {
                LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(size, size);
                lp.leftMargin = XemsUi.dp(c, 10);
                lp.gravity = Gravity.CENTER_VERTICAL;
                parent.addView(b, parent.indexOfChild(search) + 1, lp);
            } else if (parent instanceof RelativeLayout) {
                RelativeLayout.LayoutParams lp = new RelativeLayout.LayoutParams(size, size);
                lp.addRule(RelativeLayout.ALIGN_PARENT_RIGHT);
                lp.addRule(RelativeLayout.CENTER_VERTICAL);
                lp.rightMargin = XemsUi.dp(c, 16);
                parent.addView(b, lp);
                if (search.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams m = (ViewGroup.MarginLayoutParams) search.getLayoutParams();
                    m.rightMargin = m.rightMargin + size + XemsUi.dp(c, 12);
                    search.setLayoutParams(m);
                }
            }
        } catch (Throwable t) {
            XemsGuard.report("QuickStart.refreshButton", t);
        }
    }

    static final class Refresh implements View.OnClickListener {
        private final Object owner;

        Refresh(Object owner) {
            this.owner = owner;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            v.animate().rotationBy(360f).setDuration(600L).start();
            try {
                Class.forName("com.isaigu.gymapp.widget.XemsClientSync").getMethod("now").invoke(null);
            } catch (Throwable ignored) {
            }
            try {
                MessageDispatcher.dispatchEventMessage((short) 0x65);   // the client lists reload
            } catch (Throwable ignored) {
            }
            try {
                if (owner != null) {
                    owner.getClass().getMethod("xemsRefresh").invoke(owner);  // the picker: scan for suits
                }
            } catch (Throwable ignored) {
            }
            Toast.makeText(v.getContext(), tr("Обновено ✓", "Refreshed ✓"), Toast.LENGTH_SHORT).show();
        }
    }
}
