package com.isaigu.gymapp.widget;

import java.util.Locale;

/**
 * Client-list search matching. The vendor screens filtered names with a case-sensitive
 * {@code String.contains}, so a Bulgarian name stored capitalised never matched a lower-case query
 * (and vice-versa) — search looked broken. This normalises both sides (trim + lower-case, which maps
 * Cyrillic correctly) so it matches regardless of case and surrounding spaces.
 *
 * Called from the patched user-search TextWatchers (apply-client-search-fix.py) in place of contains.
 */
public final class XemsSearch {

    private XemsSearch() {}

    /** True if {@code query} is empty or is a case-insensitive substring of {@code name}. */
    public static boolean matches(String name, String query) {
        if (query == null) {
            return true;
        }
        String q = norm(query);
        if (q.length() == 0) {
            return true;
        }
        if (name == null) {
            return false;
        }
        return norm(name).indexOf(q) >= 0;
    }

    private static String norm(String s) {
        return s.trim().toLowerCase(Locale.ROOT);
    }
}
