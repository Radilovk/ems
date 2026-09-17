package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;

public class Fragment {
    public Context getContext() { return null; }

    public FragmentManager getChildFragmentManager() { return null; }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
    }

    public void onDestroyView() {
    }

    public Activity getActivity() { return null; }

    public void startActivityForResult(Intent intent, int requestCode) {
    }
}
