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

/** The AI training: its preparation window (1200 × 640 dp), the coach bar, the side chat, the Settings card. */
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
            if (st == 1) {
                AiTrain.free = false;
            }
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

    /** During the session: the coach bar and the side chat (a messenger). */
    @Test
    public void live() throws Exception {
        Activity a = Robolectric.buildActivity(Activity.class).setup().get();
        com.isaigu.gymapp.widget.XemsUi.init(a);
        AiCoach.userSpoke("по-силно краката");
        AiCoach.Reply r1 = new AiCoach.Reply();
        r1.reply = "✓ крака 46 %";
        AiCoach.aiSaid(r1);
        AiCoach.userSaid("леко ме боли коляното при клякането");
        AiCoach.Reply r2 = AiCoach.parse("{\"ok\":true,\"coach\":{\"reply\":\"Сваля бедрата с 10 % и удължавам почивките. "
                + "Клякай до половината, без да заключваш коляното.\",\"question\":{\"text\":\"Боли ли и при ходене?\","
                + "\"options\":[\"Да\",\"Не\",\"Само на стълби\"]}}}");
        AiCoach.aiSaid(r2);
        AiTrain.pending = r2.options.toArray(new String[0]);
        LinearLayout bar = com.isaigu.gymapp.widget.XemsUi.vertical(a);
        bar.addView(AiCoachBar.build(a), new LinearLayout.LayoutParams(-1, com.isaigu.gymapp.widget.XemsUi.dp(a, AiCoachBar.H_DP)));
        Shots.shot(bar, 1160, AiCoachBar.H_DP, "ai-bar");
        LinearLayout d = com.isaigu.gymapp.widget.XemsUi.vertical(a);
        AiChatDrawer.build(a, d);
        Shots.shot(d, AiChatDrawer.W_DP, 760, "ai-chat");
        LinearLayout set = com.isaigu.gymapp.widget.XemsUi.vertical(a);
        set.addView(VoiceSettings.card(a));
        Shots.shot(set, 900, 200, "ai-voice-settings");
    }

    static void draw(Activity a, String name) throws Exception {
        LinearLayout content = com.isaigu.gymapp.widget.XemsUi.vertical(a);
        AiWizard.build(a, content);
        Shots.shot(content, AiSetupSheet.W_DP, AiSetupSheet.H_DP, name);
    }
}
