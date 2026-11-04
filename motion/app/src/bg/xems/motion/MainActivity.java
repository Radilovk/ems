package bg.xems.motion;

import android.Manifest;
import android.app.Activity;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.hardware.usb.UsbManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.provider.MediaStore;
import android.view.View;
import android.view.WindowManager;
import android.webkit.JavascriptInterface;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;

/**
 * "XEMS Движение" — the XEMS Motion test bench as an app (owner 2026-11-03: install, open, everything inside: the
 * sensors' firmware over USB, connecting, calibration, the 3-D figure, the demo, recordings). The page is the same as
 * https://radilovk.github.io/ems/motion/viewer/ (assets/viewer); this activity gives it what a browser cannot: native
 * Bluetooth (no device chooser, all five at once — Android's WebView has no Web Bluetooth), the USB firmware loader, and
 * saving + sharing recordings. docs/xems-motion.md "The app".
 */
public class MainActivity extends Activity {
    WebView web;
    Ble ble;
    boolean pageReady;

    @Override
    protected void onCreate(Bundle b) {
        super.onCreate(b);
        getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
        web = new WebView(this);
        WebSettings s = web.getSettings();
        s.setJavaScriptEnabled(true);
        s.setDomStorageEnabled(true);
        s.setAllowFileAccess(true);
        s.setAllowFileAccessFromFileURLs(true);
        s.setMediaPlaybackRequiresUserGesture(false);
        web.setWebViewClient(new Client());
        web.setWebChromeClient(new WebChromeClient());
        web.setSystemUiVisibility(View.SYSTEM_UI_FLAG_LAYOUT_STABLE | View.SYSTEM_UI_FLAG_HIDE_NAVIGATION
                | View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY);
        ble = new Ble(this, new ToPage());
        web.addJavascriptInterface(new Bridge(), "XemsNative");
        setContentView(web);
        web.loadUrl("file:///android_asset/viewer/index.html?app=1");
        askPermissions();
        usbIntent(getIntent());
    }

    @Override
    protected void onNewIntent(Intent i) {
        super.onNewIntent(i);
        usbIntent(i);
    }

    void usbIntent(Intent i) {
        if (i != null && UsbManager.ACTION_USB_DEVICE_ATTACHED.equals(i.getAction())) {
            js("XemsApp.onUsb(true)");
        }
    }

    void askPermissions() {
        if (Build.VERSION.SDK_INT < 23) {
            return;
        }
        String[] p = Build.VERSION.SDK_INT >= 31
                ? new String[] {"android.permission.BLUETOOTH_SCAN", "android.permission.BLUETOOTH_CONNECT",
                        Manifest.permission.ACCESS_FINE_LOCATION}
                : new String[] {Manifest.permission.ACCESS_FINE_LOCATION, Manifest.permission.WRITE_EXTERNAL_STORAGE};
        boolean need = false;
        for (String x : p) {
            if (checkSelfPermission(x) != PackageManager.PERMISSION_GRANTED) {
                need = true;
            }
        }
        if (need) {
            requestPermissions(p, 1);
        }
    }

    @Override
    public void onRequestPermissionsResult(int code, String[] p, int[] r) {
        js("XemsApp.onPermissions()");
    }

    @Override
    protected void onDestroy() {
        ble.disconnectAll();
        super.onDestroy();
    }

    void js(String code) {
        if (web != null && pageReady) {
            web.post(new Run(code));
        }
    }

    static String q(String s) {                        // a JS string literal
        StringBuilder o = new StringBuilder("'");
        for (char c : s.toCharArray()) {
            if (c == '\'' || c == '\\') {
                o.append('\\').append(c);
            } else if (c < 32) {
                o.append(' ');
            } else {
                o.append(c);
            }
        }
        return o.append('\'').toString();
    }

    final class Run implements Runnable {
        final String code;

        Run(String code) {
            this.code = code;
        }

        @Override
        public void run() {
            web.evaluateJavascript(code, null);
        }
    }

    final class Client extends WebViewClient {
        @Override
        public void onPageFinished(WebView v, String url) {
            pageReady = true;
            usbIntent(getIntent());
        }
    }

    final class ToPage implements Ble.Sink, Usb.Listener {
        @Override
        public void onFrames(String batch) {
            js("XemsApp.onFrames(" + q(batch) + ")");
        }

        @Override
        public void onLine(String id, String line) {
            js("XemsApp.onLine(" + q(id) + "," + q(line) + ")");
        }

        @Override
        public void onState(String id, String state) {
            js("XemsApp.onState(" + q(id) + "," + q(state) + ")");
        }

        @Override
        public void onFlash(int stage, int percent, String note) {
            js("XemsApp.onFlash(" + stage + "," + percent + "," + q(note == null ? "" : note) + ")");
        }
    }

    /** What the page may call (window.XemsNative). */
    final class Bridge {
        @JavascriptInterface
        public String scan() {
            return ble.scan();
        }

        @JavascriptInterface
        public void disconnectAll() {
            ble.disconnectAll();
        }

        @JavascriptInterface
        public void send(String id, String line) {
            ble.send(id, line);
        }

        @JavascriptInterface
        public boolean usbPresent() {
            return Usb.present(MainActivity.this);
        }

        @JavascriptInterface
        public void flash(String board) {
            web.post(new StartFlash(board));
        }

        @JavascriptInterface
        public String version() {
            try {
                return getPackageManager().getPackageInfo(getPackageName(), 0).versionName;
            } catch (Throwable t) {
                return "?";
            }
        }

        /** Save a text file to Downloads and offer to share it; returns where it went. */
        @JavascriptInterface
        public String save(String name, String text) {
            try {
                Uri uri;
                if (Build.VERSION.SDK_INT >= 29) {
                    ContentValues v = new ContentValues();
                    v.put(MediaStore.MediaColumns.DISPLAY_NAME, name);
                    v.put(MediaStore.MediaColumns.MIME_TYPE, name.endsWith(".csv") ? "text/csv" : "application/json");
                    v.put(MediaStore.MediaColumns.RELATIVE_PATH, Environment.DIRECTORY_DOWNLOADS + "/XEMS Motion");
                    uri = getContentResolver().insert(MediaStore.Downloads.EXTERNAL_CONTENT_URI, v);
                    OutputStream o = getContentResolver().openOutputStream(uri);
                    o.write(text.getBytes("UTF-8"));
                    o.close();
                } else {
                    File dir = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS), "XEMS Motion");
                    dir.mkdirs();
                    File f = new File(dir, name);
                    FileOutputStream o = new FileOutputStream(f);
                    o.write(text.getBytes("UTF-8"));
                    o.close();
                    uri = Uri.fromFile(f);
                }
                return "Изтегляния/XEMS Motion/" + name;
            } catch (Throwable t) {
                return "грешка: " + t.getMessage();
            }
        }

        /** Share the files saved last (by name, in Downloads/XEMS Motion). */
        @JavascriptInterface
        public void share(String names) {
            web.post(new Share(names));
        }
    }

    final class StartFlash implements Runnable {
        final String board;

        StartFlash(String board) {
            this.board = board;
        }

        @Override
        public void run() {
            Usb.start(MainActivity.this, board, new ToPage());
        }
    }

    final class Share implements Runnable {
        final String names;

        Share(String names) {
            this.names = names;
        }

        @Override
        public void run() {
            try {
                java.util.ArrayList<Uri> uris = new java.util.ArrayList<Uri>();
                if (Build.VERSION.SDK_INT >= 29) {
                    for (String n : names.split("\\|")) {
                        android.database.Cursor c = getContentResolver().query(MediaStore.Downloads.EXTERNAL_CONTENT_URI,
                                new String[] {MediaStore.MediaColumns._ID}, MediaStore.MediaColumns.DISPLAY_NAME + "=?",
                                new String[] {n}, MediaStore.MediaColumns.DATE_ADDED + " DESC");
                        if (c != null) {
                            if (c.moveToFirst()) {
                                uris.add(Uri.withAppendedPath(MediaStore.Downloads.EXTERNAL_CONTENT_URI, String.valueOf(c.getLong(0))));
                            }
                            c.close();
                        }
                    }
                }
                if (uris.isEmpty()) {
                    return;                             // older Android: the files are in Downloads/XEMS Motion
                }
                Intent i = new Intent(Intent.ACTION_SEND_MULTIPLE);
                i.setType("*/*");
                i.putParcelableArrayListExtra(Intent.EXTRA_STREAM, uris);
                i.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
                startActivity(Intent.createChooser(i, "Изпрати записа"));
            } catch (Throwable ignored) {
            }
        }
    }
}
