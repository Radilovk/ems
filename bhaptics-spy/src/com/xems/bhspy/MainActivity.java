package com.xems.bhspy;

import android.app.Activity;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.Gravity;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;

/** One screen: what it hears, the code, whether it was sent. Landscape, big text. */
public class MainActivity extends Activity {
    private TextView info;
    private EditText ipEdit;
    private final Handler h = new Handler(Looper.getMainLooper());
    private final Runnable tick = new Tick();

    @Override
    protected void onCreate(Bundle b) {
        super.onCreate(b);
        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setBackgroundColor(Color.rgb(16, 18, 24));
        root.setPadding(48, 36, 48, 36);
        TextView title = new TextView(this);
        title.setText("XEMS · слушател на bHaptics");
        title.setTextColor(Color.WHITE);
        title.setTextSize(28);
        root.addView(title);
        TextView how = new TextView(this);
        how.setText("Пусни играта, играй 2–3 минути и излез. Записът се изпраща сам. Нищо друго.");
        how.setTextColor(Color.rgb(170, 180, 200));
        how.setTextSize(18);
        how.setPadding(0, 12, 0, 24);
        root.addView(how);
        info = new TextView(this);
        info.setTextColor(Color.WHITE);
        info.setTextSize(22);
        root.addView(info);
        LinearLayout ipRow = new LinearLayout(this);
        ipRow.setPadding(0, 20, 0, 0);
        ipEdit = new EditText(this);
        ipEdit.setHint("IP на таблета (ако сам не го намери), напр. 192.168.1.20");
        ipEdit.setTextColor(Color.WHITE);
        ipEdit.setHintTextColor(Color.rgb(120, 130, 150));
        ipEdit.setSingleLine(true);
        ipRow.addView(ipEdit, new LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f));
        Button ipSave = new Button(this);
        ipSave.setText("Запиши IP");
        ipSave.setOnClickListener(new SaveIp());
        ipRow.addView(ipSave);
        root.addView(ipRow);
        LinearLayout row = new LinearLayout(this);
        row.setGravity(Gravity.START);
        row.setPadding(0, 28, 0, 0);
        Button send = new Button(this);
        send.setText("Изпрати сега");
        send.setOnClickListener(new Send());
        row.addView(send);
        Button fresh = new Button(this);
        fresh.setText("Нов запис");
        fresh.setOnClickListener(new Fresh());
        row.addView(fresh);
        root.addView(row);
        setContentView(root);
    }

    @Override
    protected void onResume() {
        super.onResume();
        ipEdit.setText(Spy.get(this).tabletIp());
        h.post(tick);
    }

    @Override
    protected void onPause() {
        h.removeCallbacks(tick);
        super.onPause();
    }

    private final class Tick implements Runnable {
        @Override
        public void run() {
            Spy s = Spy.get(MainActivity.this);
            info.setText("Състояние: " + s.status() + "\nТаблет: " + s.tabletStatus() + "\n" + s.tabletDiag() + "\nОбаждания: " + s.calls() + "\nОт: " + s.callers()
                + "\nКод на записа: " + s.code());
            h.postDelayed(this, 1000);
        }
    }

    private final class SaveIp implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            Spy.get(MainActivity.this).setTabletIp(ipEdit.getText().toString());
        }
    }

    private final class Send implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            Spy.get(MainActivity.this).uploadNow();
        }
    }

    private final class Fresh implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            Spy.get(MainActivity.this).restart();
        }
    }
}
