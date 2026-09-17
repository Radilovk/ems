package com.isaigu.gymapp;

import android.support.v4.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public abstract class BaseDialogFragment extends DialogFragment {
    public BaseActivity getParentActivity() {
        return null;
    }

    public abstract int getViewIid();

    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             android.os.Bundle savedInstanceState) {
        return inflater.inflate(getViewIid(), container, false);
    }

    public void onDestroyView() {
    }
}
