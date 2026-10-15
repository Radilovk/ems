package bg.xems.fleshka;

/** The unit's note on the stick (xems-update.log, written by updater.sh): how its last run ended. Plain Java (the
 *  host test runs it). */
public final class StickLog {
    // What the unit wrote on the stick at its last run (xems-update.log): "XEMS v11 OK", or "!<the error>"; null: none.
    public static String lastRun(String log) {
        if (log == null) return null;
        int a = log.lastIndexOf("=== ");
        if (a < 0) return null;
        String run = log.substring(a);
        for (String l : run.split("\n")) {
            int e = l.indexOf("ERROR: ");
            if (e >= 0) return "!" + plain(l.substring(e + 7).trim());
        }
        for (String l : run.split("\n")) {
            String t = l.trim();
            if (t.startsWith("XEMS v") && t.contains(" OK")) return t.substring(0, t.indexOf(" OK") + 3);
            if (t.startsWith("XEMS removed")) return "връщане на предишното състояние";
        }
        return "!прекъснато преди края (машината изгасна или флашката излезе)";
    }

    static String plain(String err) {   // the unit's English → what to do
        if (err.contains("checksum")) return "пакетът на флашката е недописан (флашката е извадена твърде рано)";
        if (err.contains("missing xems/payload")) return "на флашката липсва пакетът";
        if (err.contains("RESTORE")) return "няма копие за връщане";
        return err;
    }
}
