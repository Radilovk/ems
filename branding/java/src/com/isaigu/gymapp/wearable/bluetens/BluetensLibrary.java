package com.isaigu.gymapp.wearable.bluetens;

import android.content.Context;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * The Bluetens app's programs inside XEMS (owner, 2026-10-14: "every program of the native Bluetens app, by body part —
 * no dependency on that app being installed"). {@code assets/xems/bluetens.json} = branding/bluetens/programs.json, made
 * by scripts/bluetens/import-vendor.py from the vendor app's own catalog: each program with its name and description
 * (Bulgarian / English), category, mode, the body parts it is for, and its .lok text — played byte for byte on the pad
 * (file {@link #FILE}; the md5 decides whether it is uploaded again).
 */
public final class BluetensLibrary {
    static final String ASSET = "xems/bluetens.json";
    static final String FILE = "XNAT";

    private BluetensLibrary() {}

    public static final class Prog {
        public String file;
        public String cat;
        public String master;
        public String mode;
        public String nameBg;
        public String nameEn;
        public String[] parts;
        public int secs;
        public String lok;
        public int hzLo;
        public int hzHi;
        public int usHi;

        public String name(boolean bg) {
            return bg ? nameBg : nameEn;
        }

        public boolean on(String part) {
            if (part == null || part.length() == 0) {
                return true;
            }
            for (String p : parts) {
                if (p.equals(part)) {
                    return true;
                }
            }
            return false;
        }
    }

    /** The whole library: body parts (head → feet), categories, descriptions per program family, programs. */
    public static final class Lib {
        /** {id, bg, en} */
        public final List<String[]> parts = new ArrayList<String[]>();
        public final List<String[]> cats = new ArrayList<String[]>();
        /** master id → {bg, en} description */
        public final Map<String, String[]> desc = new HashMap<String, String[]>();
        public final List<Prog> progs = new ArrayList<Prog>();

        public Prog find(String file) {
            for (Prog p : progs) {
                if (p.file.equals(file)) {
                    return p;
                }
            }
            return null;
        }

        public String partName(String id, boolean bg) {
            return label(parts, id, bg);
        }

        public String catName(String id, boolean bg) {
            return label(cats, id, bg);
        }

        static String label(List<String[]> l, String id, boolean bg) {
            for (String[] x : l) {
                if (x[0].equals(id)) {
                    return bg ? x[1] : x[2];
                }
            }
            return id;
        }
    }

    private static Lib cache;

    /** Blocking (one asset, a few hundred programs parsed): call it off the main thread. */
    public static synchronized Lib load(Context c) {
        if (cache != null) {
            return cache;
        }
        try {
            InputStream in = c.getAssets().open(ASSET);
            try {
                ByteArrayOutputStream o = new ByteArrayOutputStream();
                byte[] buf = new byte[16384];
                int n;
                while ((n = in.read(buf)) > 0) {
                    o.write(buf, 0, n);
                }
                cache = parse(new String(o.toByteArray(), "UTF-8"));
            } finally {
                in.close();
            }
        } catch (Throwable t) {
            cache = new Lib();
        }
        return cache;
    }

    /** Pure: the JSON → the library; a program our .lok parser does not take is left out. */
    public static Lib parse(String json) throws Exception {
        Lib lib = new Lib();
        JSONObject root = new JSONObject(json);
        triples(root.optJSONArray("parts"), lib.parts);
        triples(root.optJSONArray("cats"), lib.cats);
        JSONObject masters = root.optJSONObject("masters");
        JSONArray progs = root.getJSONArray("programs");
        for (int i = 0; i < progs.length(); i++) {
            JSONObject o = progs.getJSONObject(i);
            Prog p = new Prog();
            p.file = o.getString("f");
            p.cat = o.optString("c", "");
            p.master = o.optString("m", "");
            p.mode = o.optString("mode", "");
            JSONArray n = o.getJSONArray("n");
            p.nameBg = n.getString(0);
            p.nameEn = n.length() > 1 ? n.getString(1) : p.nameBg;
            JSONArray b = o.optJSONArray("b");
            p.parts = new String[b != null ? b.length() : 0];
            for (int k = 0; k < p.parts.length; k++) {
                p.parts[k] = b.getString(k);
            }
            p.lok = o.getString("lok");
            try {
                stats(p, BluetensLok.parse(p.lok));
            } catch (Throwable t) {
                continue;
            }
            lib.progs.add(p);
            if (masters != null && p.master.length() > 0 && !lib.desc.containsKey(p.master)) {
                JSONObject m = masters.optJSONObject(p.master);
                JSONArray d = m != null ? m.optJSONArray("d") : null;
                if (d != null && d.length() > 0) {
                    lib.desc.put(p.master, new String[] {d.getString(0), d.length() > 1 ? d.getString(1) : d.getString(0)});
                }
            }
        }
        return lib;
    }

    static void triples(JSONArray a, List<String[]> into) throws Exception {
        if (a == null) {
            return;
        }
        for (int i = 0; i < a.length(); i++) {
            JSONArray x = a.getJSONArray(i);
            into.add(new String[] {x.getString(0), x.getString(1), x.length() > 2 ? x.getString(2) : x.getString(1)});
        }
    }

    static void stats(Prog p, BluetensLok lok) {
        p.secs = (int) Math.round(lok.ms() / 1000);
        int lo = Integer.MAX_VALUE, hi = 0, us = 0;
        for (BluetensLok.Section s : lok.sections) {
            for (BluetensLok.Block b : s.blocks) {
                int hz = Math.max(1, Math.round(b.freq10 / 10f));
                lo = Math.min(lo, hz);
                hi = Math.max(hi, hz);
                us = Math.max(us, b.impulse);
            }
        }
        p.hzLo = lo == Integer.MAX_VALUE ? 0 : lo;
        p.hzHi = hi;
        p.usHi = us;
    }

    /** Where the two electrodes go, for the body part chosen (one line; "" = choose a part first). */
    public static String placement(String part, boolean bg) {
        if ("shoulder".equals(part)) {
            return bg ? "Върху делтовидния мускул — отпред и отзад на рамото." : "On the deltoid — front and back of the shoulder.";
        } else if ("upper_back".equals(part)) {
            return bg ? "Между лопатките или върху трапеца, от двете страни на гръбначния стълб."
                    : "Between the shoulder blades or on the trapezius, either side of the spine.";
        } else if ("pectorals".equals(part)) {
            return bg ? "Върху гръдния мускул, под ключицата — никога при пейсмейкър." : "On the chest muscle below the collarbone — never with a pacemaker.";
        } else if ("upper_arm".equals(part)) {
            return bg ? "Върху бицепса или трицепса, по дължината на мускула." : "On the biceps or triceps, along the muscle.";
        } else if ("elbow".equals(part)) {
            return bg ? "Около лакътя — над и под болезненото място, не върху костта." : "Around the elbow — above and below the sore spot, not on the bone.";
        } else if ("forearm".equals(part)) {
            return bg ? "Върху предмишницата, по дължината на мускула." : "On the forearm, along the muscle.";
        } else if ("wrist".equals(part)) {
            return bg ? "От двете страни на китката, без да е върху костта." : "Either side of the wrist, off the bone.";
        } else if ("back".equals(part)) {
            return bg ? "Върху широкия гръбен мускул, отстрани на гърба." : "On the broad back muscle, on the side of the back.";
        } else if ("abdomen".equals(part)) {
            return bg ? "Отстрани на пъпа, на 3–4 см от него. Не при бременност." : "Beside the navel, 3–4 cm away. Not in pregnancy.";
        } else if ("lower_back".equals(part)) {
            return bg ? "На кръста, от двете страни на гръбначния стълб, на една височина."
                    : "On the lower back, either side of the spine, at the same height.";
        } else if ("buttock".equals(part)) {
            return bg ? "В горната външна част на седалището, един над друг." : "On the upper outer glute, one above the other.";
        } else if ("perineum".equals(part)) {
            return bg ? "Ниско на кръста над сакрума или по указанието на специалист." : "Low on the back over the sacrum, or as a specialist shows.";
        } else if ("thigh".equals(part)) {
            return bg ? "Отпред на бедрото: един над коляното, другият по средата на бедрото."
                    : "Front of the thigh: one above the knee, the other mid-thigh.";
        } else if ("knee".equals(part)) {
            return bg ? "Около коляното — над и под капачката, никога върху нея." : "Around the knee — above and below the kneecap, never on it.";
        } else if ("calf".equals(part)) {
            return bg ? "Върху най-плътната част на прасеца, един над друг." : "On the thickest part of the calf, one above the other.";
        } else if ("ankle".equals(part)) {
            return bg ? "Около глезена — отпред и отстрани, не върху костта." : "Around the ankle — front and side, off the bone.";
        } else if ("foot".equals(part)) {
            return bg ? "Върху ходилото — към петата и към предната част. Седнал." : "On the sole — toward the heel and the front. Seated.";
        }
        return "";
    }
}
