import com.isaigu.gymapp.ai.AiVoiceGateProbe;

/** What heard speech may go to the AI (ai/AiVoiceGate) — the phrases a hall really produces. */
public class GateSim {
    static int fails;

    static void expect(String text, boolean followUp, boolean answer, long now, boolean want) {
        boolean got = AiVoiceGateProbe.pass(text, followUp, answer, now);
        String tag = (followUp ? "follow" : "wake") + (answer ? "+answer" : "");
        System.out.println((got == want ? "ok   " : "FAIL ") + (got ? "AI   " : "stay ") + tag + "  \"" + text + "\""
                + (got ? "" : "  (" + AiVoiceGateProbe.why() + ")"));
        if (got != want) {
            fails++;
        }
    }

    public static void main(String[] a) {
        long t = 1_000_000;
        AiVoiceGateProbe.reset();
        expect("ъъ", false, false, t += 3000, false);
        expect("хм", true, false, t += 3000, false);
        expect("добре", false, false, t += 3000, false);
        expect("Благодаря!", true, false, t += 3000, false);
        expect("да", false, true, t += 3000, true);                       // the answer to the AI's question
        expect("ок", true, true, t += 3000, true);
        expect("клиентът е уморен днес", false, false, t += 3000, true);
        expect("клиентът е уморен днес", false, false, t += 3000, false);   // the same again at once
        expect("краката", true, false, t += 3000, false);                 // a stray word after the answer
        expect("какво да правим", true, false, t += 3000, true);          // a question in the dialogue
        expect("тя има болки в коляното", true, false, t += 3000, true);   // a real sentence in the dialogue
        expect("тренер", false, false, t += 3000, false);
        expect("клиентът е уморен днес", false, false, t += 20000, true);  // the repeat window passed
        // a radio in the hall: 12 different sentences in 30 s → at most 8 go out
        AiVoiceGateProbe.reset();
        int out = 0;
        for (int i = 0; i < 12; i++) {
            if (AiVoiceGateProbe.pass("изречение номер " + i + " от радиото", false, false, t + i * 2500L)) {
                out++;
            }
        }
        System.out.println((out == 8 ? "ok   " : "FAIL ") + "radio: " + out + " of 12 went to the AI (limit 8 a minute)");
        if (out != 8) {
            fails++;
        }
        System.out.println(fails == 0 ? "ALL OK" : fails + " FAILED");
        System.exit(fails == 0 ? 0 : 1);
    }
}
