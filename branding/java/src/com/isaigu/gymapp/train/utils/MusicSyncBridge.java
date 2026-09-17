package com.isaigu.gymapp.train.utils;

import android.app.Activity;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;

import com.isaigu.gymapp.MainActivity;
import com.isaigu.gymapp.fragment.MainFragment;
import com.isaigu.gymapp.fragment.NewTrainFragment;
import com.isaigu.gymapp.train.TrainItemManager;

import java.util.ArrayList;
import java.util.List;

public class MusicSyncBridge {
    private static boolean tryAttach(TrainItemManager manager) {
        if (manager == null) {
            return false;
        }
        MusicSync.setManager(manager);
        return true;
    }

    private static boolean tryAttach(NewTrainFragment fragment) {
        return fragment != null && tryAttach(fragment.manager);
    }

    private static void collectFragments(FragmentManager fm, List<Fragment> out) {
        if (fm == null || out == null) {
            return;
        }
        try {
            List<Fragment> fragments = fm.getFragments();
            if (fragments == null) {
                return;
            }
            for (Fragment fragment : fragments) {
                if (fragment == null) {
                    continue;
                }
                out.add(fragment);
                collectFragments(fragment.getChildFragmentManager(), out);
            }
        } catch (Throwable ignored) {
        }
    }

    private static NewTrainFragment findNewTrainFragment(List<Fragment> fragments) {
        if (fragments == null) {
            return null;
        }
        NewTrainFragment fallback = null;
        for (Fragment fragment : fragments) {
            if (fragment instanceof NewTrainFragment) {
                return (NewTrainFragment) fragment;
            }
            if (fragment instanceof MainFragment) {
                MainFragment main = (MainFragment) fragment;
                if (main.newTrainFragment != null) {
                    fallback = main.newTrainFragment;
                }
            }
        }
        return fallback;
    }

    private static Activity resolveActivity(Activity activity) {
        if (activity != null) {
            return activity;
        }
        return MainActivity.getInstance();
    }

    public static boolean attachManager(Activity activity) {
        activity = resolveActivity(activity);
        if (activity == null) {
            return false;
        }
        if (!(activity instanceof FragmentActivity)) {
            return false;
        }
        try {
            List<Fragment> all = new ArrayList<>();
            FragmentActivity fragmentActivity = (FragmentActivity) activity;
            collectFragments(fragmentActivity.getSupportFragmentManager(), all);
            NewTrainFragment train = findNewTrainFragment(all);
            if (train != null) {
                return tryAttach(train);
            }
        } catch (Throwable ignored) {
        }
        return false;
    }
}
