import com.isaigu.gymapp.widget.XemsSearch;

/** Offline check of the client search: Cyrillic ↔ Latin phonetic matches (XemsSearch.matches). */
public final class SearchSim {
    public static void main(String[] a) {
        String[][] yes = {{"Иван Петров", "ivan"}, {"Ivan", "Иван"}, {"Мария", "maria"}, {"Maria", "мария"},
                {"Цветан", "cvetan"}, {"Цветан", "tsvetan"}, {"Живко", "jivko"}, {"Йордан", "jordan"},
                {"Христо", "hristo"}, {"Щерев", "shterev"}, {"Юлия", "yulia"}, {"Petar", "Петър"},
                {"Chavdar", "Чавдар"}, {"Георги", "GEO"}};
        String[][] no = {{"Иван", "мария"}, {"Petar", "ivan"}};
        int fails = 0;
        for (String[] x : yes) {
            if (!XemsSearch.matches(x[0], x[1])) {
                fails++;
                System.out.println("FAIL should match: " + x[0] + " / " + x[1]);
            }
        }
        for (String[] x : no) {
            if (XemsSearch.matches(x[0], x[1])) {
                fails++;
                System.out.println("FAIL should not match: " + x[0] + " / " + x[1]);
            }
        }
        System.out.println(fails == 0 ? "SearchSim: all OK (" + (yes.length + no.length) + ")" : "SearchSim: " + fails + " FAILED");
        if (fails > 0) {
            System.exit(1);
        }
    }
}
