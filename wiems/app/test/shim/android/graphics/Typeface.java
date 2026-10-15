package android.graphics;

public class Typeface {
    public static final Typeface DEFAULT = new Typeface(false), DEFAULT_BOLD = new Typeface(true);
    final boolean bold;

    Typeface(boolean b) { bold = b; }
}
