package android.support.v7.app;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.view.Window;

public class AlertDialog extends Dialog {
    public AlertDialog(Context context) {
        super(context);
    }

    public Window getWindow() {
        return null;
    }

    public static class Builder {
        public Builder(Context context) {
        }

        public Builder setView(View view) {
            return this;
        }

        public Builder setOnDismissListener(DialogInterface.OnDismissListener listener) {
            return this;
        }

        public Builder setTitle(CharSequence title) {
            return this;
        }

        public Builder setPositiveButton(int textId, DialogInterface.OnClickListener listener) {
            return this;
        }

        public Builder setNegativeButton(int textId, DialogInterface.OnClickListener listener) {
            return this;
        }

        public AlertDialog create() {
            return null;
        }

        public AlertDialog show() {
            return null;
        }
    }
}
