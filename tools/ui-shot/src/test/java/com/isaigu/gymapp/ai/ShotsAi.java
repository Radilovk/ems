package com.isaigu.gymapp.ai;

import android.app.Activity;
import android.widget.LinearLayout;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.Robolectric;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;

import xems.Shots;

/** The AI training's wizard as the tablet shows it (the board's place: 1160 dp wide; 330 and 460 dp high). */
@RunWith(RobolectricTestRunner.class)
@Config(sdk = 30, qualifiers = "w1280dp-h800dp-land-mdpi")
@GraphicsMode(GraphicsMode.Mode.NATIVE)
public class ShotsAi {
    @Test
    public void wizard() throws Exception {
        Activity a = Robolectric.buildActivity(Activity.class).setup().get();
        com.isaigu.gymapp.widget.XemsUi.init(a);
        AutoModel.Input in = AutoSession.getInput();
        in.sex = AiModel.Sex.MALE;
        in.age = 45;
        in.heightCm = 185;
        in.weightKg = 98;
        in.programId = AutoCatalog.recommended(in.goal, in.kind, in).id;
        for (int st = 0; st <= 3; st++) {
            AiWizard.step = st;
            if (st == 2) {
                AiTrain.healthOpen = true;
                in.cond.add("knees");
                in.cond.add("diabetes");
            }
            draw(a, "ai-" + (st + 1));
        }
        // the summary with an answer
        AutoSession.buildPlan();
        AiTrain.view = AiTrain.SUMMARY;
        AiCoach.Reply r = AiCoach.parse("{\"ok\":true,\"coach\":{\"reply\":\"Намалявам натоварването и съобразявам липсата на храна.\","
                + "\"advice\":{\"exercise\":\"Бавни, контролирани движения без подскоци и без дълбоки клякания заради коленете.\","
                + "\"load\":\"Усещане около 5-6 от 10.\",\"rest\":\"Спокойно дишане на място.\",\"equipment\":\"Само собствено тегло.\","
                + "\"before\":\"Половин банан 10-15 минути преди.\",\"during\":\"Вода на малки глътки.\",\"after\":\"Белтък и зеленчуци до 2 часа.\"}}}");
        AiCoach.userSaid("днес искам по-леко, не съм закусил");
        AiCoach.aiSaid(r);
        draw(a, "ai-5");
    }

    static void draw(Activity a, String name) throws Exception {
        for (int h : new int[] {330, 460}) {
            LinearLayout content = com.isaigu.gymapp.widget.XemsUi.vertical(a);
            AiTrain.build(a, content);
            Shots.shot(content, 1160, h, name + "-" + h);
        }
    }
}
