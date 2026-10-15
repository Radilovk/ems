package bg.xems.fleshka;

import android.app.Activity;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.provider.DocumentsContract;
import android.view.Gravity;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.MessageDigest;

/**
 * XEMS за XBody — prepares the USB stick for the XBody unit from an Android phone or tablet (OTG), the same job
 * PODGOTVI-FLESHKA does on a PC. The stick's files ride in assets/fleshka (scripts/xbody/build-android.sh). The
 * trainer picks the stick's root (Storage Access Framework); the app copies, checks the payload's md5 and says so.
 * A XIAO in UF2 mode picked instead gets the bridge firmware. A stick that holds a backup of an earlier install can
 * be armed to undo it. Backups on the stick are never touched. No lambdas / anonymous classes (dx).
 */
public class MainActivity extends Activity {
    static final int PICK = 1;
    static final int INK = 0xFF303741, RED = 0xFFE21A22, GREEN = 0xFF00B38B, SOFT = 0xFF6B7178, LINE = 0xFFBFC2C5;
    static final String[] XEMS_FILES = {"VERSION", "payload.tar.gz", "payload.md5", "remove.list"};

    TextView status;
    Button pick, install, undo;
    Uri tree;
    String version = "?";
    final Handler ui = new Handler(Looper.getMainLooper());

    @Override
    protected void onCreate(Bundle b) {
        super.onCreate(b);
        try {
            version = new String(readAsset("fleshka/xems/VERSION"), "UTF-8").trim();
        } catch (Exception e) {
            version = "?";
        }
        ScrollView sv = new ScrollView(this);
        sv.setBackgroundColor(Color.WHITE);
        LinearLayout col = new LinearLayout(this);
        col.setOrientation(LinearLayout.VERTICAL);
        int pad = dp(22);
        col.setPadding(pad, pad, pad, pad);
        sv.addView(col);

        TextView brand = text("XEMS за XBody", 26, INK, true);
        col.addView(brand);
        col.addView(text("Флашка за обновяване · версия " + version, 16, SOFT, false));
        col.addView(space(18));
        col.addView(step("1", "Включи флашката с OTG кабел (FAT32, до 32 GB)."));
        col.addView(step("2", "Натисни „Избери флашката“ и посочи самата флашка — не папка в нея."));
        col.addView(step("3", "На машината: изключи XBody → вкарай флашката → включи → чакай да се изключи сама → "
                + "извади флашката → включи."));
        col.addView(space(18));

        pick = button("Избери флашката", INK, true);
        pick.setOnClickListener(new Click(0));
        col.addView(pick);
        col.addView(space(10));
        install = button("Инсталирай версия " + version, GREEN, true);
        install.setOnClickListener(new Click(1));
        install.setVisibility(View.GONE);
        col.addView(install);
        col.addView(space(10));
        undo = button("Върни назад последната инсталация", RED, false);
        undo.setOnClickListener(new Click(2));
        undo.setVisibility(View.GONE);
        col.addView(undo);
        col.addView(space(18));
        status = text("", 16, INK, false);
        col.addView(status);
        col.addView(space(18));
        col.addView(text("Нова платка XIAO? Включи я с OTG, натисни RESET два пъти бързо и я избери тук — "
                + "приложението я програмира. Или я включи в машината: тя я програмира сама.", 14, SOFT, false));
        setContentView(sv);
    }

    // ---------------------------------------------------------------- the UI kit (XBody's look: white, ink, red)

    int dp(int v) { return (int) (v * getResources().getDisplayMetrics().density + 0.5f); }

    TextView text(String s, int sp, int color, boolean bold) {
        TextView t = new TextView(this);
        t.setText(s);
        t.setTextSize(sp);
        t.setTextColor(color);
        if (bold) t.setTypeface(Typeface.DEFAULT_BOLD);
        t.setLineSpacing(0, 1.15f);
        return t;
    }

    View space(int h) {
        View v = new View(this);
        v.setLayoutParams(new LinearLayout.LayoutParams(1, dp(h)));
        return v;
    }

    View step(String n, String s) {
        LinearLayout row = new LinearLayout(this);
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setPadding(0, dp(6), 0, dp(6));
        TextView num = text(n, 16, Color.WHITE, true);
        num.setGravity(Gravity.CENTER);
        GradientDrawable dot = new GradientDrawable();
        dot.setShape(GradientDrawable.OVAL);
        dot.setColor(RED);
        num.setBackground(dot);
        row.addView(num, new LinearLayout.LayoutParams(dp(30), dp(30)));
        TextView t = text(s, 16, INK, false);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1);
        lp.leftMargin = dp(12);
        row.addView(t, lp);
        return row;
    }

    Button button(String s, int color, boolean filled) {
        Button b = new Button(this);
        b.setText(s);
        b.setAllCaps(false);
        b.setTextSize(18);
        b.setTextColor(filled ? Color.WHITE : color);
        GradientDrawable g = new GradientDrawable();
        g.setCornerRadius(dp(10));
        if (filled) g.setColor(color);
        else {
            g.setColor(Color.WHITE);
            g.setStroke(dp(2), color);
        }
        b.setBackground(g);
        b.setMinHeight(dp(58));
        return b;
    }

    void say(String s, int color) {
        status.setText(s);
        status.setTextColor(color);
    }

    final class Click implements View.OnClickListener {
        final int what;

        Click(int w) { what = w; }

        @Override
        public void onClick(View v) {
            if (what == 0) {
                Intent i = new Intent(Intent.ACTION_OPEN_DOCUMENT_TREE);
                i.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION | Intent.FLAG_GRANT_WRITE_URI_PERMISSION);
                startActivityForResult(i, PICK);
            } else {
                busy(true);
                say(what == 1 ? "Копирам…" : "Подготвям връщането…", INK);
                new Thread(new Work(what)).start();
            }
        }
    }

    void busy(boolean b) {
        pick.setEnabled(!b);
        install.setEnabled(!b);
        undo.setEnabled(!b);
    }

    @Override
    protected void onActivityResult(int req, int res, Intent data) {
        if (req != PICK || res != RESULT_OK || data == null || data.getData() == null) return;
        tree = data.getData();
        try {
            getContentResolver().takePersistableUriPermission(tree,
                    Intent.FLAG_GRANT_READ_URI_PERMISSION | Intent.FLAG_GRANT_WRITE_URI_PERMISSION);
        } catch (Exception ignored) {
        }
        String id = DocumentsContract.getTreeDocumentId(tree);
        if (id.startsWith("primary:")) {
            say("Това е паметта на телефона, не флашката. Избери флашката (USB) отляво в менюто.", RED);
            install.setVisibility(View.GONE);
            undo.setVisibility(View.GONE);
            return;
        }
        if (id.indexOf(':') >= 0 && id.indexOf(':') < id.length() - 1) {
            say("Избрана е папка. Избери самия корен на флашката.", RED);
            install.setVisibility(View.GONE);
            undo.setVisibility(View.GONE);
            return;
        }
        String info = readText(child(rootDoc(), "INFO_UF2.TXT"));
        if (info != null && (info.contains("nRF52840") || info.contains("XIAO"))) {   // the bridge board itself
            busy(true);
            say("Това е платката XIAO — програмирам моста…", INK);
            new Thread(new Work(3)).start();
            return;
        }
        install.setVisibility(View.VISIBLE);
        undo.setVisibility(hasBackup() ? View.VISIBLE : View.GONE);
        say("Флашката е избрана. Натисни „Инсталирай версия " + version + "“.", INK);
    }

    // ---------------------------------------------------------------- the work (off the UI thread)

    final class Work implements Runnable {
        final int what;

        Work(int w) { what = w; }

        @Override
        public void run() {
            String msg;
            int color = GREEN;
            try {
                if (what == 1) msg = doInstall();
                else if (what == 2) msg = doUndo();
                else msg = doXiao();
            } catch (Exception e) {
                msg = "Грешка: " + e.getMessage() + ". Опитай пак или с друга флашка (FAT32).";
                color = RED;
            }
            ui.post(new Done(msg, color));
        }
    }

    final class Done implements Runnable {
        final String msg;
        final int color;

        Done(String m, int c) { msg = m; color = c; }

        @Override
        public void run() {
            busy(false);
            say(msg, color);
            if (tree != null && install.getVisibility() == View.VISIBLE) undo.setVisibility(hasBackup() ? View.VISIBLE : View.GONE);
        }
    }

    String doInstall() throws Exception {
        String root = rootDoc();
        delete(child(root, "updater.done.sh"));
        String x = dir(root, "xems");
        delete(child(x, "RESTORE"));
        write(root, "updater.sh", readAsset("fleshka/updater.sh"));
        write(root, "README.txt", readAsset("fleshka/README.txt"));
        try {
            write(root, "xems-bridge.uf2", readAsset("fleshka/xems-bridge.uf2"));
        } catch (Exception ignored) {   // a build without the firmware
        }
        for (String f : XEMS_FILES) write(x, f, readAsset("fleshka/xems/" + f));
        // Read the payload back from the stick: the md5 must match what the unit will check.
        String want = new String(readAsset("fleshka/xems/payload.md5"), "UTF-8").trim().split("\\s+")[0];
        String got = md5(readDoc(child(x, "payload.tar.gz")));
        if (!want.equalsIgnoreCase(got)) throw new Exception("копието на флашката не съвпада");
        return "✓ Версия " + version + " е на флашката и е проверена.\nИзвади я и я занеси на машината (стъпка 3).";
    }

    String doUndo() throws Exception {
        String root = rootDoc();
        if (!hasBackup()) throw new Exception("на тази флашка няма копие от предишна инсталация");
        delete(child(root, "updater.done.sh"));
        write(root, "updater.sh", readAsset("fleshka/updater.sh"));
        write(dir(root, "xems"), "RESTORE", new byte[0]);
        return "✓ Флашката ще ВЪРНЕ последната инсталация.\nНа машината — както в стъпка 3.";
    }

    String doXiao() throws Exception {
        try {
            write(rootDoc(), "xems-bridge.uf2", readAsset("fleshka/xems-bridge.uf2"));
        } catch (Exception e) {   // the board restarts as soon as the file is in: the write may "fail" at the end
        }
        return "✓ Мостът е програмиран. Платката се рестартира сама — извади я.";
    }

    boolean hasBackup() {
        try {
            String x = child(rootDoc(), "xems");
            if (x == null) return false;
            Cursor c = getContentResolver().query(DocumentsContract.buildChildDocumentsUriUsingTree(tree, x),
                    new String[] {DocumentsContract.Document.COLUMN_DISPLAY_NAME}, null, null, null);
            boolean any = false;
            if (c != null) {
                while (c.moveToNext()) {
                    String n = c.getString(0);
                    if (n != null && n.startsWith("backup-") && n.endsWith(".added") && !n.contains("restored")) any = true;
                }
                c.close();
            }
            return any;
        } catch (Exception e) {
            return false;
        }
    }

    // ---------------------------------------------------------------- Storage Access Framework helpers

    String rootDoc() { return DocumentsContract.getTreeDocumentId(tree); }

    Uri doc(String id) { return DocumentsContract.buildDocumentUriUsingTree(tree, id); }

    String child(String parent, String name) {
        if (parent == null) return null;
        Cursor c = getContentResolver().query(DocumentsContract.buildChildDocumentsUriUsingTree(tree, parent),
                new String[] {DocumentsContract.Document.COLUMN_DOCUMENT_ID, DocumentsContract.Document.COLUMN_DISPLAY_NAME},
                null, null, null);
        String found = null;
        if (c != null) {
            while (c.moveToNext()) if (name.equalsIgnoreCase(c.getString(1))) { found = c.getString(0); break; }
            c.close();
        }
        return found;
    }

    String dir(String parent, String name) throws Exception {
        String id = child(parent, name);
        if (id != null) return id;
        Uri u = DocumentsContract.createDocument(getContentResolver(), doc(parent), DocumentsContract.Document.MIME_TYPE_DIR, name);
        if (u == null) throw new Exception("не мога да създам папка " + name);
        return DocumentsContract.getDocumentId(u);
    }

    void write(String parent, String name, byte[] data) throws Exception {
        String id = child(parent, name);
        Uri u = id != null ? doc(id)
                : DocumentsContract.createDocument(getContentResolver(), doc(parent), "application/octet-stream", name);
        if (u == null) throw new Exception("не мога да запиша " + name);
        OutputStream o = getContentResolver().openOutputStream(u, "wt");
        if (o == null) throw new Exception("не мога да запиша " + name);
        o.write(data);
        o.flush();
        o.close();
        String now = id != null ? id : DocumentsContract.getDocumentId(u);
        String shown = displayName(now);
        if (shown != null && !shown.equals(name)) throw new Exception("флашката преименува " + name + " на " + shown);
    }

    String displayName(String id) {
        Cursor c = getContentResolver().query(doc(id), new String[] {DocumentsContract.Document.COLUMN_DISPLAY_NAME},
                null, null, null);
        String n = null;
        if (c != null) {
            if (c.moveToFirst()) n = c.getString(0);
            c.close();
        }
        return n;
    }

    void delete(String id) {
        if (id == null) return;
        try {
            DocumentsContract.deleteDocument(getContentResolver(), doc(id));
        } catch (Exception ignored) {
        }
    }

    byte[] readDoc(String id) throws Exception {
        if (id == null) throw new Exception("файлът липсва на флашката");
        InputStream in = getContentResolver().openInputStream(doc(id));
        return readAll(in);
    }

    String readText(String id) {
        try {
            return id == null ? null : new String(readDoc(id), "UTF-8");
        } catch (Exception e) {
            return null;
        }
    }

    byte[] readAsset(String path) throws Exception { return readAll(getAssets().open(path)); }

    static byte[] readAll(InputStream in) throws Exception {
        ByteArrayOutputStream b = new ByteArrayOutputStream();
        byte[] buf = new byte[65536];
        int n;
        while ((n = in.read(buf)) > 0) b.write(buf, 0, n);
        in.close();
        return b.toByteArray();
    }

    static String md5(byte[] d) throws Exception {
        byte[] h = MessageDigest.getInstance("MD5").digest(d);
        StringBuilder s = new StringBuilder();
        for (byte x : h) s.append(String.format("%02x", x & 0xff));
        return s.toString();
    }

}
