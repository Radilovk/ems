package com.isaigu.gymapp.wearable;

import android.Manifest;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.provider.CalendarContract;

import com.isaigu.gymapp.bean.TrainUser;
import com.isaigu.gymapp.mgr.DataMgr;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * The studio's appointments from the tablet's own calendar (Acuity → Google Calendar sync, or any
 * calendar the tablet shows), matched to the app's clients by e-mail, phone or name. Read only.
 */
public final class Schedule {
    static final String PREFS = "xems_schedule";

    private Schedule() {}

    /** One appointment. */
    public static final class Appt {
        public long eventId;
        public long begin;
        public long end;
        public String title = "";
        public String desc = "";
        public String where = "";
        public String who = "";          // attendee e-mails
        public long calendarId;
        public String calendar = "";
        /** The matched client, or null. */
        public TrainUser user;
        /** How the client was found: "email", "phone", "name", "link" (set by the trainer), "" none. */
        public String by = "";

        public String key() {
            return eventId + ":" + begin;
        }

        /** Shown name: the client's, else the event's title. */
        public String name() {
            if (user != null) {
                String n = user.nickName != null && user.nickName.length() > 0 ? user.nickName : user.name;
                if (n != null && n.length() > 0) {
                    return n;
                }
            }
            return title;
        }
    }

    public static final class Cal {
        public long id;
        public String name;
    }

    public static boolean canRead(Context c) {
        if (c == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 23) {
            return true;
        }
        return c.checkSelfPermission(Manifest.permission.READ_CALENDAR) == PackageManager.PERMISSION_GRANTED;
    }

    // ================================================================ settings

    static SharedPreferences prefs(Context c) {
        return c.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }

    /** Calendar to read, -1 = all visible calendars. */
    public static long calendarId(Context c) {
        try {
            return prefs(c).getLong("cal", -1L);
        } catch (Throwable t) {
            return -1L;
        }
    }

    public static void setCalendarId(Context c, long id) {
        prefs(c).edit().putLong("cal", id).apply();
    }

    public static List<Cal> calendars(Context c) {
        List<Cal> out = new ArrayList<Cal>();
        if (!canRead(c)) {
            return out;
        }
        Cursor cur = null;
        try {
            cur = c.getContentResolver().query(CalendarContract.Calendars.CONTENT_URI,
                    new String[] {CalendarContract.Calendars._ID, CalendarContract.Calendars.CALENDAR_DISPLAY_NAME,
                            CalendarContract.Calendars.VISIBLE},
                    null, null, CalendarContract.Calendars.CALENDAR_DISPLAY_NAME);
            while (cur != null && cur.moveToNext()) {
                if (cur.getInt(2) == 0) {
                    continue;
                }
                Cal k = new Cal();
                k.id = cur.getLong(0);
                k.name = cur.getString(1) != null ? cur.getString(1) : "#" + k.id;
                out.add(k);
            }
        } catch (Throwable t) {
            WearableBleDiagLog.log("plan", "calendars: " + t);
        } finally {
            if (cur != null) {
                cur.close();
            }
        }
        return out;
    }

    public static boolean canWrite(Context c) {
        if (c == null) {
            return false;
        }
        return Build.VERSION.SDK_INT < 23
                || c.checkSelfPermission(Manifest.permission.WRITE_CALENDAR) == PackageManager.PERMISSION_GRANTED;
    }

    /** Where new appointments go: the chosen calendar if writable, else the primary writable one, else any. */
    public static long writableCalendar(Context c) {
        if (!canRead(c)) {
            return -1;
        }
        long chosen = calendarId(c);
        long primary = -1;
        long any = -1;
        Cursor cur = null;
        try {
            cur = c.getContentResolver().query(CalendarContract.Calendars.CONTENT_URI,
                    new String[] {CalendarContract.Calendars._ID, CalendarContract.Calendars.CALENDAR_ACCESS_LEVEL,
                            CalendarContract.Calendars.IS_PRIMARY, CalendarContract.Calendars.VISIBLE},
                    null, null, null);
            while (cur != null && cur.moveToNext()) {
                long id = cur.getLong(0);
                if (cur.getInt(1) < CalendarContract.Calendars.CAL_ACCESS_CONTRIBUTOR || cur.getInt(3) == 0) {
                    continue;
                }
                if (id == chosen) {
                    return id;
                }
                if (primary < 0 && !cur.isNull(2) && cur.getInt(2) == 1) {
                    primary = id;
                }
                if (any < 0) {
                    any = id;
                }
            }
        } catch (Throwable t) {
            WearableBleDiagLog.log("plan", "calendars: " + t);
        } finally {
            if (cur != null) {
                cur.close();
            }
        }
        return primary >= 0 ? primary : any;
    }

    /** A new appointment in the tablet's calendar (studios without an online booking). Event id or -1. */
    public static long add(Context c, TrainUser u, long begin, long end) {
        long cal = writableCalendar(c);
        if (cal < 0 || !canWrite(c) || u == null) {
            return -1;
        }
        try {
            String name = u.name != null ? u.name : "";
            StringBuilder d = new StringBuilder("XEMS");
            if (u.phone != null && u.phone.trim().length() > 0) {
                d.append("\n").append(u.phone.trim());
            }
            if (u.email != null && u.email.trim().length() > 0) {
                d.append("\n").append(u.email.trim());
            }
            android.content.ContentValues v = new android.content.ContentValues();
            v.put(CalendarContract.Events.CALENDAR_ID, cal);
            v.put(CalendarContract.Events.TITLE, name);
            v.put(CalendarContract.Events.DESCRIPTION, d.toString());
            v.put(CalendarContract.Events.DTSTART, begin);
            v.put(CalendarContract.Events.DTEND, end);
            v.put(CalendarContract.Events.EVENT_TIMEZONE, java.util.TimeZone.getDefault().getID());
            Uri uri = c.getContentResolver().insert(CalendarContract.Events.CONTENT_URI, v);
            long id = uri != null ? ContentUris.parseId(uri) : -1;
            if (id >= 0) {
                Appt a = new Appt();
                a.eventId = id;
                a.begin = begin;
                a.end = end;
                a.title = name;
                a.desc = d.toString();
                link(c, a, u);
            }
            return id;
        } catch (Throwable t) {
            WearableBleDiagLog.log("plan", "add: " + t);
            return -1;
        }
    }

    // ================================================================ reading

    /** Appointments that overlap [from, to], oldest first, each matched to a client when possible. */
    public static List<Appt> read(Context c, long from, long to) {
        List<Appt> out = new ArrayList<Appt>();
        if (!canRead(c)) {
            return out;
        }
        long only = calendarId(c);
        Cursor cur = null;
        ContentResolver cr = c.getContentResolver();
        try {
            Uri.Builder b = CalendarContract.Instances.CONTENT_URI.buildUpon();
            ContentUris.appendId(b, from);
            ContentUris.appendId(b, to);
            String sel = CalendarContract.Instances.ALL_DAY + "=0 AND " + CalendarContract.Instances.VISIBLE + "=1";
            if (only >= 0) {
                sel += " AND " + CalendarContract.Instances.CALENDAR_ID + "=" + only;
            }
            cur = cr.query(b.build(), new String[] {
                    CalendarContract.Instances.EVENT_ID, CalendarContract.Instances.BEGIN,
                    CalendarContract.Instances.END, CalendarContract.Instances.TITLE,
                    CalendarContract.Instances.DESCRIPTION, CalendarContract.Instances.EVENT_LOCATION,
                    CalendarContract.Instances.CALENDAR_ID, CalendarContract.Instances.CALENDAR_DISPLAY_NAME,
                    CalendarContract.Instances.STATUS, CalendarContract.Instances.SELF_ATTENDEE_STATUS},
                    sel, null, CalendarContract.Instances.BEGIN + " ASC");
            while (cur != null && cur.moveToNext()) {
                if (!cur.isNull(8) && cur.getInt(8) == CalendarContract.Instances.STATUS_CANCELED) {
                    continue;
                }
                Appt a = new Appt();
                a.eventId = cur.getLong(0);
                a.begin = cur.getLong(1);
                a.end = cur.getLong(2);
                a.title = str(cur.getString(3));
                a.desc = str(cur.getString(4));
                a.where = str(cur.getString(5));
                a.calendarId = cur.getLong(6);
                a.calendar = str(cur.getString(7));
                if (a.end <= a.begin) {
                    a.end = a.begin + 30 * 60000L;
                }
                out.add(a);
            }
        } catch (Throwable t) {
            WearableBleDiagLog.log("plan", "read: " + t);
        } finally {
            if (cur != null) {
                cur.close();
            }
        }
        List<TrainUser> users = users();
        SharedPreferences p = null;
        try {
            p = prefs(c);
        } catch (Throwable ignored) {
        }
        for (int i = 0; i < out.size(); i++) {
            Appt a = out.get(i);
            a.who = attendees(cr, a.eventId);
            match(a, users, p);
        }
        Collections.sort(out, new ByBegin());
        return out;
    }

    static final class ByBegin implements Comparator<Appt> {
        @Override
        public int compare(Appt x, Appt y) {
            return x.begin < y.begin ? -1 : x.begin > y.begin ? 1 : 0;
        }
    }

    private static String attendees(ContentResolver cr, long eventId) {
        StringBuilder sb = new StringBuilder();
        Cursor cur = null;
        try {
            cur = CalendarContract.Attendees.query(cr, eventId, new String[] {
                    CalendarContract.Attendees.ATTENDEE_EMAIL, CalendarContract.Attendees.ATTENDEE_NAME});
            while (cur != null && cur.moveToNext()) {
                sb.append(str(cur.getString(0))).append(' ').append(str(cur.getString(1))).append('\n');
            }
        } catch (Throwable ignored) {
        } finally {
            if (cur != null) {
                cur.close();
            }
        }
        return sb.toString();
    }

    static List<TrainUser> users() {
        try {
            DataMgr dm = DataMgr.getInstance();
            if (dm != null && dm.trainUsers != null) {
                return new ArrayList<TrainUser>(dm.trainUsers);
            }
        } catch (Throwable ignored) {
        }
        return new ArrayList<TrainUser>();
    }

    // ================================================================ matching

    private static final Pattern EMAIL = Pattern.compile("[A-Za-z0-9._%+\\-]+@[A-Za-z0-9.\\-]+\\.[A-Za-z]{2,}");
    private static final Pattern PHONE = Pattern.compile("\\+?[0-9][0-9 ()\\-/.]{6,}[0-9]");

    static void match(Appt a, List<TrainUser> users, SharedPreferences p) {
        String text = a.title + "\n" + a.desc + "\n" + a.where + "\n" + a.who;
        // 1. the trainer linked this event's client before
        if (p != null) {
            long id = p.getLong("link:" + linkKey(a), -1L);
            if (id >= 0) {
                TrainUser u = byId(users, id);
                if (u != null) {
                    a.user = u;
                    a.by = "link";
                    return;
                }
            }
        }
        // 2. e-mail
        List<String> mails = new ArrayList<String>();
        Matcher m = EMAIL.matcher(text);
        while (m.find()) {
            mails.add(m.group().toLowerCase(Locale.ROOT));
        }
        for (int i = 0; i < users.size() && !mails.isEmpty(); i++) {
            TrainUser u = users.get(i);
            if (u != null && u.email != null && mails.contains(u.email.trim().toLowerCase(Locale.ROOT))) {
                a.user = u;
                a.by = "email";
                return;
            }
        }
        // 3. phone (last 9 digits, so +359 88… and 088… agree)
        List<String> phones = new ArrayList<String>();
        m = PHONE.matcher(text);
        while (m.find()) {
            String d = tail(digits(m.group()));
            if (d.length() >= 7) {
                phones.add(d);
            }
        }
        for (int i = 0; i < users.size() && !phones.isEmpty(); i++) {
            TrainUser u = users.get(i);
            String d = u != null && u.phone != null ? tail(digits(u.phone)) : "";
            if (d.length() >= 7 && phones.contains(d)) {
                a.user = u;
                a.by = "phone";
                return;
            }
        }
        // 4. name: every word of the client's name in the title (Cyrillic and Latin agree)
        List<String> words = words(a.title + " " + a.who);
        TrainUser best = null;
        int bestN = 0;
        boolean tie = false;
        for (int i = 0; i < users.size(); i++) {
            TrainUser u = users.get(i);
            if (u == null) {
                continue;
            }
            int n = Math.max(nameHits(u.name, words), nameHits(u.nickName, words));
            if (n > bestN) {
                best = u;
                bestN = n;
                tie = false;
            } else if (n == bestN && n > 0) {
                tie = true;
            }
        }
        if (best != null && !tie) {
            a.user = best;
            a.by = "name";
        }
    }

    /** Words of the name found in the title; 0 unless all are there (a lone first name counts). */
    private static int nameHits(String name, List<String> words) {
        if (name == null) {
            return 0;
        }
        List<String> parts = words(name);
        if (parts.isEmpty()) {
            return 0;
        }
        for (int i = 0; i < parts.size(); i++) {
            if (!words.contains(parts.get(i))) {
                return 0;
            }
        }
        return parts.size();
    }

    /** The trainer picks the client of an event: remembered for the same e-mail / phone / title. */
    public static void link(Context c, Appt a, TrainUser u) {
        if (c == null || a == null) {
            return;
        }
        SharedPreferences.Editor e = prefs(c).edit();
        if (u == null) {
            e.remove("link:" + linkKey(a));
        } else {
            e.putLong("link:" + linkKey(a), u.id);
        }
        e.apply();
        a.user = u;
        a.by = u != null ? "link" : "";
    }

    static String linkKey(Appt a) {
        Matcher m = EMAIL.matcher(a.desc + "\n" + a.who);
        if (m.find()) {
            return m.group().toLowerCase(Locale.ROOT);
        }
        m = PHONE.matcher(a.desc);
        if (m.find()) {
            String d = tail(digits(m.group()));
            if (d.length() >= 7) {
                return d;
            }
        }
        List<String> w = words(a.title);
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < w.size(); i++) {
            sb.append(w.get(i)).append(' ');
        }
        return sb.toString().trim();
    }

    static TrainUser byId(List<TrainUser> users, long id) {
        for (int i = 0; i < users.size(); i++) {
            TrainUser u = users.get(i);
            if (u != null && u.id == id) {
                return u;
            }
        }
        return null;
    }

    static String digits(String s) {
        StringBuilder b = new StringBuilder();
        for (int i = 0; i < s.length(); i++) {
            char ch = s.charAt(i);
            if (ch >= '0' && ch <= '9') {
                b.append(ch);
            }
        }
        return b.toString();
    }

    private static String tail(String d) {
        return d.length() > 9 ? d.substring(d.length() - 9) : d;
    }

    /** Lower-case Latin words (Cyrillic transliterated, spelling variants folded), 2+ letters. */
    static List<String> words(String s) {
        List<String> out = new ArrayList<String>();
        String t = fold(s);
        StringBuilder w = new StringBuilder();
        for (int i = 0; i <= t.length(); i++) {
            char ch = i < t.length() ? t.charAt(i) : ' ';
            if (ch >= 'a' && ch <= 'z') {
                w.append(ch);
            } else {
                if (w.length() >= 2) {
                    out.add(w.toString());
                }
                w.setLength(0);
            }
        }
        return out;
    }

    private static final String CYR = "абвгдежзийклмнопрстуфхцчшщъьюяэыё";
    private static final String[] LAT = {"a", "b", "v", "g", "d", "e", "zh", "z", "i", "i", "k", "l", "m", "n",
            "o", "p", "r", "s", "t", "u", "f", "h", "c", "ch", "sh", "sht", "a", "i", "iu", "ia", "e", "i", "e"};

    static String fold(String s) {
        if (s == null) {
            return "";
        }
        String lower = s.toLowerCase(Locale.ROOT);
        StringBuilder b = new StringBuilder(lower.length() + 8);
        for (int i = 0; i < lower.length(); i++) {
            char ch = lower.charAt(i);
            int k = CYR.indexOf(ch);
            b.append(k >= 0 ? LAT[k] : String.valueOf(ch));
        }
        // Latin spellings of the same Bulgarian name: Hristo/Khristo, Yordan/Jordan/Iordan, Tsvetan/Cvetan, Maria/Mariya …
        return b.toString().replace("kh", "h").replace("ts", "c").replace("tz", "c").replace("y", "i")
                .replace("j", "i").replace("w", "v").replace("x", "ks").replace("ph", "f").replace("ii", "i");
    }

    private static String str(String s) {
        return s != null ? s : "";
    }
}
