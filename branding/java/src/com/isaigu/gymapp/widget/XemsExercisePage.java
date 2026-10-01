package com.isaigu.gymapp.widget;

import android.app.Activity;
import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.util.Base64;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import android.widget.TextView;

/**
 * Settings → "Каталог с упражнения": the server's exercise selector (/admin/exercises) full screen inside the app,
 * without a code or password — the tablet's signed license token and device id ride in the address fragment (the
 * page sends them as X-Tablet-Token / X-Device-Id; the server checks the token, the license and this activation).
 * A tablet without a license gets the page's own code prompt. docs/xems-workouts.md
 */
public final class XemsExercisePage {
    private XemsExercisePage() {}

    public static void open(Activity a) {
        try {
            openImpl(a);
        } catch (Throwable t) {
            XemsGuard.report("XemsExercisePage.open", t);
        }
    }

    /** The page's address with this tablet's credentials in the fragment (never sent over the wire). */
    static String url() throws Exception {
        String base = XemsLicense.server();
        while (base.endsWith("/")) {
            base = base.substring(0, base.length() - 1);
        }
        String url = base + "/admin/exercises";
        String token = XemsLicense.token();
        if (token != null && token.length() > 0) {
            String json = "{\"t\":" + XemsLicenseToken.quote(token) + ",\"d\":"
                    + XemsLicenseToken.quote(XemsLicense.deviceId()) + "}";
            String b64 = Base64.encodeToString(json.getBytes("UTF-8"), Base64.URL_SAFE | Base64.NO_WRAP | Base64.NO_PADDING);
            url += "#tab=" + b64;
        }
        return url;
    }

    private static void openImpl(Activity a) throws Exception {
        XemsUi.init(a);
        Dialog d = new Dialog(a, android.R.style.Theme_Black_NoTitleBar_Fullscreen);
        d.requestWindowFeature(Window.FEATURE_NO_TITLE);
        LinearLayout root = XemsUi.vertical(a);
        root.setBackgroundColor(0xFF0D1117);                   // the page's own background: no flash

        LinearLayout bar = XemsUi.horizontal(a);
        bar.setGravity(Gravity.CENTER_VERTICAL);
        bar.setPadding(XemsUi.dp(a, 18), XemsUi.dp(a, 6), XemsUi.dp(a, 8), XemsUi.dp(a, 6));
        bar.setBackgroundColor(0xFF161B22);
        TextView title = XemsUi.text(a, XemsLang.tr("Каталог с упражнения", "Exercise catalog"), 18, 0xFFE6EDF3, true);
        bar.addView(title, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        TextView close = XemsUi.iconButton(a, "✕", 0xFF21262D, 0xFFE6EDF3, 48);
        close.setOnClickListener(new Close(d));
        close.setContentDescription(XemsLang.tr("Затвори", "Close"));
        bar.addView(close);
        root.addView(bar, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, XemsUi.dp(a, 60)));

        WebView web = new WebView(a);
        WebSettings s = web.getSettings();
        s.setJavaScriptEnabled(true);
        s.setDomStorageEnabled(true);
        s.setLoadWithOverviewMode(true);
        s.setUseWideViewPort(true);
        web.setBackgroundColor(0xFF0D1117);
        web.setWebViewClient(new WebViewClient());              // links stay inside
        root.addView(web, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
        web.loadUrl(url());

        d.setContentView(root);
        d.setOnDismissListener(new Gone(web));
        Window w = d.getWindow();
        if (w != null) {
            w.setBackgroundDrawable(new ColorDrawable(0xFF0D1117));
            w.setLayout(WindowManager.LayoutParams.MATCH_PARENT, WindowManager.LayoutParams.MATCH_PARENT);
            w.setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_ADJUST_RESIZE);
        }
        d.show();
        XemsFullscreen.immersive(root);
    }

    static final class Close implements View.OnClickListener {
        private final Dialog d;

        Close(Dialog d) {
            this.d = d;
        }

        @Override
        public void onClick(View v) {
            d.dismiss();
        }
    }

    static final class Gone implements android.content.DialogInterface.OnDismissListener {
        private final WebView web;

        Gone(WebView web) {
            this.web = web;
        }

        @Override
        public void onDismiss(android.content.DialogInterface di) {
            try {
                web.stopLoading();
                web.destroy();
            } catch (Throwable ignored) {
            }
        }
    }
}
