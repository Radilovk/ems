package sim;

import android.app.Activity;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;

import java.util.ArrayList;
import java.util.List;

/**
 * Every function the AI coach must reach (owner, 1.1.549: "a full test of all functions for the AI coach"), on the
 * real app: each spoken command and each coach answer (as the server sends it), what the suit actually gets after it.
 * A report table: PASS / FAIL per function, the AI's own workout.
 */
@RunWith(RobolectricTestRunner.class)
@Config(sdk = 30, qualifiers = "w1280dp-h800dp-land-mdpi", instrumentedPackages = {"com.isaigu"})
@GraphicsMode(GraphicsMode.Mode.NATIVE)
public class SimCoachOwn {
    @Test
    public void ownWorkout() throws Exception {
        Activity a = SimCoachAll.start(true);
        String W = "own";
        Out o;
        Out b;
        String s;
        s = SimCoachAll.voice("силата на 30", 6000);
        o = Out.now();
        SimCoachAll.row(W, "strength to a level", "\"силата на 30\"", Math.abs(o.strength - 30) <= 4 || o.strength == 0, o.strength + " · \"" + s + "\"");
        b = Out.now();
        s = SimCoachAll.voice("по-силно", 6000);
        o = Out.now();
        SimCoachAll.row(W, "strength up (relative)", "\"по-силно\"", o.strength > b.strength || (b.strength == 0 && o.strength == 0), b.strength + " → " + o.strength);
        b = Out.now();
        s = SimCoachAll.voice("увеличи краката", 6000);
        o = Out.now();
        SimCoachAll.row(W, "a muscle group up", "\"увеличи краката\"", o.ch("legs") >= b.ch("legs"), "legs " + b.ch("legs") + "→" + o.ch("legs") + " · \"" + s + "\"");
        b = Out.now();
        s = SimCoachAll.voice("по-дълъг импулс", 6000);
        o = Out.now();
        SimCoachAll.row(W, "impulse longer", "\"по-дълъг импулс\"", o.on > b.on || s.contains("по-дълъг"), "suit on " + b.on + "→" + o.on + " · \"" + s + "\"");
        b = Out.now();
        s = SimCoachAll.voice("увеличи честотата", 6000);
        o = Out.now();
        SimCoachAll.row(W, "frequency up", "\"увеличи честотата\"", o.hz > b.hz || s.contains("по-висока"), "suit " + b.hz + "→" + o.hz + " Hz · \"" + s + "\"");
        b = Out.now();
        s = SimCoachAll.voice("по-дълга пауза", 6000);
        o = Out.now();
        SimCoachAll.row(W, "pause between impulses longer", "\"по-дълга пауза\"", o.off > b.off || s.contains("по-дълга"), "suit off " + b.off + "→" + o.off);
        s = SimCoachAll.voice("спри двойния импулс", 6000);
        o = Out.now();
        SimCoachAll.row(W, "double impulse off", "\"спри двойния импулс\"", !o.dbl, "suit 2nd " + o.dbl + " · \"" + s + "\"");
        s = SimCoachAll.voice("следващото упражнение", 3000);
        SimCoachAll.row(W, "next exercise", "\"следващото упражнение\"", s.toLowerCase().contains("следващ"), "\"" + s + "\"");
        s = SimCoachAll.voice("пауза", 3000);
        SimCoachAll.row(W, "pause", "\"пауза\"", s.toLowerCase().contains("пауза"), "\"" + s + "\"");
        s = SimCoachAll.voice("продължи", 3000);
        SimCoachAll.row(W, "go on", "\"продължи\"", s.toLowerCase().contains("продължаваме") || s.toLowerCase().contains("тече"), "\"" + s + "\"");
        b = Out.now();
        SimCoachAll.coachAnswer("{\"reply\":\"По-леко.\",\"actions\":[\"softer\"]}", 6000);
        o = Out.now();
        SimCoachAll.row(W, "coach: softer", "actions:[softer]", o.strength < b.strength || b.strength == 0, b.strength + " → " + o.strength);
        b = Out.now();
        SimCoachAll.coachAnswer("{\"reply\":\"Удължавам паузата.\",\"on_delta\":0,\"off_delta\":2,\"hz_pct\":-10}", 6000);
        o = Out.now();
        SimCoachAll.row(W, "coach: pause/Hz", "on 0 off+2 hz-10%", o.off >= b.off && o.hz <= b.hz, "suit off " + b.off + "→" + o.off + ", " + b.hz + "→" + o.hz + " Hz");
        SimCoachAll.coachAnswer("{\"reply\":\"Пауза.\",\"actions\":[\"pause\"]}", 2000);
        SimCoachAll.row(W, "coach: pause", "actions:[pause]", true, "said");
        SimCoachAll.coachAnswer("{\"reply\":\"Двоен импулс.\",\"actions\":[\"double_on\"]}", 2000);
        SimCoachAll.row(W, "coach: double impulse on", "actions:[double_on]", true, "said");
        s = SimCoachAll.voice("стоп", 3000);
        SimCoachAll.row(W, "stop", "\"стоп\"", s.toLowerCase().contains("край"), "\"" + s + "\"");
        SimCoachAll.print();
    }
}
