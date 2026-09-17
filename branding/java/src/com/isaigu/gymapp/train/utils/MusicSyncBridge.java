package com.isaigu.gymapp.train.utils;

import android.app.Activity;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;

import com.isaigu.gymapp.fragment.MainFragment;
import com.isaigu.gymapp.fragment.NewTrainFragment;
import com.isaigu.gymapp.train.TrainItemManager;

import java.util.List;

public class MusicSyncBridge {
    private static boolean tryAttach(TrainItemManager manager) {
        if (manager == null) {
            return false;
        }
        MusicSync.setManager(manager);
        return true;
    }

    public static boolean attachManager(Activity activity) {
        if (activity == null) {
            return false;
        }
        try {
            if (!(activity instanceof FragmentActivity)) {
                return false;
            }
            FragmentManager fm = ((FragmentActivity) activity).getSupportFragmentManager();
            if (fm == null) {
                return false;
            }
            List<Fragment> fragments = fm.getFragments();
            if (fragments == null) {
                return false;
            }
            for (Fragment fragment : fragments) {
                if (fragment instanceof NewTrainFragment) {
                    return tryAttach(((NewTrainFragment) fragment).manager);
                }
                if (fragment instanceof MainFragment) {
                    MainFragment main = (MainFragment) fragment;
                    Fragment current = main.fragment_now;
                    if (current instanceof NewTrainFragment) {
                        if (tryAttach(((NewTrainFragment) current).manager)) {
                            return true;
                        }
                    }
                    NewTrainFragment train = main.newTrainFragment;
                    if (train != null) {
                        return tryAttach(train.manager);
                    }
                }
            }
        } catch (Throwable ignored) {
        }
        return false;
    }
}
