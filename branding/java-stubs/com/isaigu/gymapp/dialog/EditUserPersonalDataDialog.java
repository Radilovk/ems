package com.isaigu.gymapp.dialog;

import com.isaigu.gymapp.BaseActivity;
import com.isaigu.gymapp.BaseDialogFragment;
import com.isaigu.gymapp.bean.TrainUser;

public class EditUserPersonalDataDialog extends BaseDialogFragment {
    public BaseActivity getParentActivity() { return null; }
    public TrainUser getTrainUser() { return null; }
    public boolean isUpdateMode() { return false; }
    public int getViewIid() { return 0; }
}
