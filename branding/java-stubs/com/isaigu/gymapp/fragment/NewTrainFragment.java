package com.isaigu.gymapp.fragment;

import android.support.v4.app.Fragment;
import com.isaigu.gymapp.BaseActivity;
import com.isaigu.gymapp.train.TrainItemManager;

public class NewTrainFragment extends Fragment {
    TrainItemManager manager;                  // package-private in the app: never read it from another package

    public BaseActivity getBaseActivity() {
        return null;
    }

    /** Added by apply-pause-parts.py: the adapter and the muscle icons redraw. */
    public void xemsRefreshParts() {}
}
