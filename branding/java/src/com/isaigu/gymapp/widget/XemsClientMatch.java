package com.isaigu.gymapp.widget;

import com.isaigu.gymapp.bean.TrainUser;
import com.isaigu.gymapp.mgr.DataMgr;

import java.util.ArrayList;
import java.util.List;

/** Finding a client on the tablet list by e-mail, else by the phone's last 9 digits (profiles and dossiers). */
public final class XemsClientMatch {
    private XemsClientMatch() {}

    public static TrainUser find(String email, String phone) {
        List<TrainUser> users = DataMgr.getInstance().trainUsers;
        if (users == null) {
            return null;
        }
        List<TrainUser> list = new ArrayList<TrainUser>(users);
        String e = email == null ? "" : email.trim();
        if (e.length() > 0) {
            for (int i = 0; i < list.size(); i++) {
                TrainUser u = list.get(i);
                if (u != null && u.email != null && e.equalsIgnoreCase(u.email.trim())) {
                    return u;
                }
            }
        }
        String d = digits9(phone);
        if (d.length() >= 7) {
            for (int i = 0; i < list.size(); i++) {
                TrainUser u = list.get(i);
                if (u != null && d.equals(digits9(u.phone))) {
                    return u;
                }
            }
        }
        return null;
    }

    public static String digits9(String s) {
        if (s == null) {
            return "";
        }
        StringBuilder b = new StringBuilder();
        for (int i = 0; i < s.length(); i++) {
            char ch = s.charAt(i);
            if (ch >= '0' && ch <= '9') {
                b.append(ch);
            }
        }
        String d = b.toString();
        return d.length() > 9 ? d.substring(d.length() - 9) : d;
    }
}
