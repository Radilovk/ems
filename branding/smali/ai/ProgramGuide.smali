.class public final Lcom/isaigu/gymapp/ai/ProgramGuide;
.super Ljava/lang/Object;
.source "ProgramGuide.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;
    }
.end annotation


# static fields
.field static final ACTIVE_OFTEN_BG:Ljava/lang/String; = "1\u20132 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e, \u0441 2\u20133 \u0434\u043d\u0438 \u043f\u043e\u0447\u0438\u0432\u043a\u0430"

.field static final ACTIVE_OFTEN_EN:Ljava/lang/String; = "1\u20132 times a week, 2\u20133 days of rest between"

.field static final PASSIVE_COURSE_BG:Ljava/lang/String; = "\u041a\u0443\u0440\u0441 \u043e\u0442 10\u201312 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0438"

.field static final PASSIVE_COURSE_EN:Ljava/lang/String; = "A course of 10\u201312 treatments"

.field static final PASSIVE_OFTEN_BG:Ljava/lang/String; = "2 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e, \u0432 \u0434\u043d\u0438\u0442\u0435 \u0431\u0435\u0437 \u0430\u043a\u0442\u0438\u0432\u043d\u0430"

.field static final PASSIVE_OFTEN_EN:Ljava/lang/String; = "Twice a week, on the days without an active one"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;
    .registers 17

    .prologue
    .line 52
    new-instance v0, Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    aput-object p4, v2, v3

    const/4 v3, 0x2

    aput-object p5, v2, v3

    move-object v3, p6

    move-object v4, p7

    move-object v5, p8

    move-object/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 57
    if-nez p0, :cond_4

    .line 286
    :goto_3
    return-object v0

    .line 60
    :cond_4
    const-string v1, "face"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 61
    const-string p0, "face"

    .line 63
    :cond_e
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_3be

    :cond_16
    :goto_16
    packed-switch v1, :pswitch_data_424

    goto :goto_3

    .line 65
    :pswitch_1a
    const-string v0, "\u0422\u043e\u043a\u044a\u0442 \u0441\u0442\u0438\u0433\u0430 \u0438 \u0434\u044a\u043b\u0431\u043e\u043a\u0438\u0442\u0435 \u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0438 \u0432\u043b\u0430\u043a\u043d\u0430, \u0434\u043e \u043a\u043e\u0438\u0442\u043e \u043e\u0431\u0438\u043a\u043d\u043e\u0432\u0435\u043d\u0430\u0442\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u0442\u0440\u0443\u0434\u043d\u043e \u0434\u043e\u0441\u0442\u0438\u0433\u0430."

    const-string v1, "\u0421\u0442\u044f\u0433\u0430\u043d\u0435 \u0438 \u043e\u0442\u043f\u0443\u0441\u043a\u0430\u043d\u0435 \u043d\u0430 \u0440\u0430\u0432\u043d\u0438 \u0438\u043d\u0442\u0435\u0440\u0432\u0430\u043b\u0438 \u2014 \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0440\u0430\u0431\u043e\u0442\u044f\u0442 \u043f\u043e-\u0441\u0438\u043b\u043d\u043e \u0437\u0430 \u043f\u043e-\u043a\u0440\u0430\u0442\u043a\u043e \u0432\u0440\u0435\u043c\u0435."

    const-string v2, "\u0426\u044f\u043b\u043e\u0442\u043e \u0442\u044f\u043b\u043e \u043d\u0430\u0432\u0435\u0434\u043d\u044a\u0436: \u043a\u0440\u0430\u043a\u0430, \u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435, \u043a\u043e\u0440\u0435\u043c, \u0433\u0440\u044a\u0431 \u0438 \u0440\u044a\u0446\u0435."

    const-string v3, "The current reaches the deep muscle fibres an ordinary workout hardly gets to."

    const-string v4, "Hold and release at even intervals \u2014 the muscles work harder in less time."

    const-string v5, "The whole body at once: legs, glutes, abs, back and arms."

    const-string v6, "1\u20132 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e, \u0441 2\u20133 \u0434\u043d\u0438 \u043f\u043e\u0447\u0438\u0432\u043a\u0430"

    const-string v7, "1\u20132 times a week, 2\u20133 days of rest between"

    const-string v8, "\u041f\u044a\u0440\u0432\u0438\u0442\u0435 \u043f\u0440\u043e\u043c\u0435\u043d\u0438 \u0441\u0435 \u0443\u0441\u0435\u0449\u0430\u0442 \u0441\u043b\u0435\u0434 4\u20136 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438"

    const-string v9, "The first changes are felt after 4\u20136 sessions"

    invoke-static/range {v0 .. v9}, Lcom/isaigu/gymapp/ai/ProgramGuide;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;

    move-result-object v0

    goto :goto_3

    .line 63
    :sswitch_33
    const-string v2, "general"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v1, 0x0

    goto :goto_16

    :sswitch_3d
    const-string v2, "glutes"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v1, 0x1

    goto :goto_16

    :sswitch_47
    const-string v2, "mass"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v1, 0x2

    goto :goto_16

    :sswitch_51
    const-string v2, "upper"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v1, 0x3

    goto :goto_16

    :sswitch_5b
    const-string v2, "core"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v1, 0x4

    goto :goto_16

    :sswitch_65
    const-string v2, "power"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v1, 0x5

    goto :goto_16

    :sswitch_6f
    const-string v2, "cardio"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v1, 0x6

    goto :goto_16

    :sswitch_79
    const-string v2, "back_active"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v1, 0x7

    goto :goto_16

    :sswitch_83
    const-string v2, "senior"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v1, 0x8

    goto :goto_16

    :sswitch_8e
    const-string v2, "antiage"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v1, 0x9

    goto/16 :goto_16

    :sswitch_9a
    const-string v2, "cellulite"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v1, 0xa

    goto/16 :goto_16

    :sswitch_a6
    const-string v2, "postpartum"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v1, 0xb

    goto/16 :goto_16

    :sswitch_b2
    const-string v2, "drain"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v1, 0xc

    goto/16 :goto_16

    :sswitch_be
    const-string v2, "passive_metabolic"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v1, 0xd

    goto/16 :goto_16

    :sswitch_ca
    const-string v2, "back_pain"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v1, 0xe

    goto/16 :goto_16

    :sswitch_d6
    const-string v2, "recovery"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v1, 0xf

    goto/16 :goto_16

    :sswitch_e2
    const-string v2, "antiage_passive"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v1, 0x10

    goto/16 :goto_16

    :sswitch_ee
    const-string v2, "face"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v1, 0x11

    goto/16 :goto_16

    :sswitch_fa
    const-string v2, "general_passive"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v1, 0x12

    goto/16 :goto_16

    :sswitch_106
    const-string v2, "glutes_passive"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v1, 0x13

    goto/16 :goto_16

    :sswitch_112
    const-string v2, "mass_passive"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v1, 0x14

    goto/16 :goto_16

    :sswitch_11e
    const-string v2, "upper_passive"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v1, 0x15

    goto/16 :goto_16

    :sswitch_12a
    const-string v2, "core_passive"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v1, 0x16

    goto/16 :goto_16

    :sswitch_136
    const-string v2, "power_passive"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v1, 0x17

    goto/16 :goto_16

    :sswitch_142
    const-string v2, "senior_passive"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v1, 0x18

    goto/16 :goto_16

    .line 74
    :pswitch_14e
    const-string v0, "\u0410\u043a\u0446\u0435\u043d\u0442\u044a\u0442 \u0435 \u0432 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f\u0442\u0430 \u0437\u0430 \u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435\u0442\u043e \u0438 \u0437\u0430\u0434\u043d\u043e\u0442\u043e \u0431\u0435\u0434\u0440\u043e; \u0441\u0438\u043b\u0430\u0442\u0430 \u043f\u043e \u0437\u043e\u043d\u0438 \u044f \u043d\u0430\u0433\u043b\u0430\u0441\u044f\u0432\u0430 \u0442\u0440\u0435\u043d\u044c\u043e\u0440\u044a\u0442."

    const-string v1, "\u041a\u043b\u0435\u043a\u043e\u0432\u0435, \u043d\u0430\u043f\u0430\u0434\u0438 \u0438 \u043c\u043e\u0441\u0442\u043e\u0432\u0435 \u0437\u0430\u0435\u0434\u043d\u043e \u0441 \u0438\u043c\u043f\u0443\u043b\u0441\u0430 \u2014 \u0441\u0442\u044f\u0433\u0430\u043d\u0435\u0442\u043e \u0435 \u043f\u043e-\u0434\u044a\u043b\u0431\u043e\u043a\u043e."

    const-string v2, "\u041e\u0444\u043e\u0440\u043c\u044f \u043b\u0438\u043d\u0438\u044f\u0442\u0430 \u043d\u0430 \u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435\u0442\u043e \u0438 \u0431\u0435\u0434\u0440\u0430\u0442\u0430."

    const-string v3, "The focus is in the glute and hamstring exercises; the trainer sets the strength per zone."

    const-string v4, "Squats, lunges and bridges together with the impulse \u2014 a deeper hold."

    const-string v5, "Shapes the line of the glutes and thighs."

    const-string v6, "1\u20132 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e, \u0441 2\u20133 \u0434\u043d\u0438 \u043f\u043e\u0447\u0438\u0432\u043a\u0430"

    const-string v7, "1\u20132 times a week, 2\u20133 days of rest between"

    const-string v8, "\u041a\u0443\u0440\u0441 \u043e\u0442 8\u201312 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438"

    const-string v9, "A course of 8\u201312 sessions"

    invoke-static/range {v0 .. v9}, Lcom/isaigu/gymapp/ai/ProgramGuide;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;

    move-result-object v0

    goto/16 :goto_3

    .line 83
    :pswitch_168
    const-string v0, "\u0411\u0430\u0432\u043d\u0438 \u0442\u0435\u0436\u043a\u0438 \u043f\u043e\u0432\u0442\u043e\u0440\u0435\u043d\u0438\u044f \u0441 \u043f\u043e-\u0434\u044a\u043b\u0433\u0438 \u0441\u0442\u044f\u0433\u0430\u043d\u0438\u044f \u2014 \u0441\u0438\u0433\u043d\u0430\u043b \u043c\u0443\u0441\u043a\u0443\u043b\u044a\u0442 \u0434\u0430 \u0440\u0430\u0441\u0442\u0435."

    const-string v1, "\u0410\u043a\u0446\u0435\u043d\u0442 \u043d\u0430 \u0433\u043e\u043b\u0435\u043c\u0438\u0442\u0435 \u043c\u0443\u0441\u043a\u0443\u043b\u0438: \u043a\u0440\u0430\u043a\u0430, \u0433\u0440\u044a\u0431, \u0433\u044a\u0440\u0434\u0438."

    const-string v2, "\u041c\u0443\u0441\u043a\u0443\u043b\u044a\u0442 \u0440\u0430\u0441\u0442\u0435 \u0432 \u043f\u043e\u0447\u0438\u0432\u043a\u0430\u0442\u0430 \u2014 \u0437\u0430\u0442\u043e\u0432\u0430 \u0445\u0440\u0430\u043d\u0430\u0442\u0430 \u0438 \u0441\u044a\u043d\u044f\u0442 \u0441\u0430 \u0447\u0430\u0441\u0442 \u043e\u0442 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430."

    const-string v3, "Slow heavy reps with longer holds \u2014 the signal for the muscle to grow."

    const-string v4, "The focus is on the big muscles: legs, back, chest."

    const-string v5, "The muscle grows while resting \u2014 so food and sleep are part of the training."

    const-string v6, "1\u20132 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e, \u0441 2\u20133 \u0434\u043d\u0438 \u043f\u043e\u0447\u0438\u0432\u043a\u0430"

    const-string v7, "1\u20132 times a week, 2\u20133 days of rest between"

    const-string v8, "\u041a\u0443\u0440\u0441 \u043e\u0442 10\u201312 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438"

    const-string v9, "A course of 10\u201312 sessions"

    invoke-static/range {v0 .. v9}, Lcom/isaigu/gymapp/ai/ProgramGuide;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;

    move-result-object v0

    goto/16 :goto_3

    .line 92
    :pswitch_182
    const-string v0, "\u0413\u044a\u0440\u0434\u0438\u0442\u0435, \u0433\u044a\u0440\u0431\u044a\u0442, \u0440\u0430\u043c\u0435\u043d\u0435\u0442\u0435 \u0438 \u0440\u044a\u0446\u0435\u0442\u0435 \u0440\u0430\u0431\u043e\u0442\u044f\u0442 \u0441 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f \u0437\u0430 \u0433\u043e\u0440\u043d\u0430\u0442\u0430 \u0447\u0430\u0441\u0442."

    const-string v1, "\u041b\u0438\u0446\u0435\u0432\u0438 \u043e\u043f\u043e\u0440\u0438, \u0433\u0440\u0435\u0431\u0430\u043d\u0435 \u0438 \u043f\u0440\u0435\u0441\u0430 \u0437\u0430\u0435\u0434\u043d\u043e \u0441 \u0438\u043c\u043f\u0443\u043b\u0441\u0430."

    const-string v2, "\u041f\u043e-\u0441\u0442\u0435\u0433\u043d\u0430\u0442\u0430 \u0438 \u043f\u043e-\u0441\u0438\u043b\u043d\u0430 \u0433\u043e\u0440\u043d\u0430 \u0447\u0430\u0441\u0442 \u043d\u0430 \u0442\u044f\u043b\u043e\u0442\u043e."

    const-string v3, "The chest, back, shoulders and arms work with upper-body exercises."

    const-string v4, "Push-ups, rows and presses together with the impulse."

    const-string v5, "A firmer and stronger upper body."

    const-string v6, "1\u20132 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e, \u0441 2\u20133 \u0434\u043d\u0438 \u043f\u043e\u0447\u0438\u0432\u043a\u0430"

    const-string v7, "1\u20132 times a week, 2\u20133 days of rest between"

    const-string v8, "\u041a\u0443\u0440\u0441 \u043e\u0442 8\u201312 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438"

    const-string v9, "A course of 8\u201312 sessions"

    invoke-static/range {v0 .. v9}, Lcom/isaigu/gymapp/ai/ProgramGuide;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;

    move-result-object v0

    goto/16 :goto_3

    .line 101
    :pswitch_19c
    const-string v0, "\u041a\u043e\u0440\u0435\u043c\u044a\u0442 \u0438 \u043a\u0440\u044a\u0441\u0442\u044a\u0442 \u0440\u0430\u0431\u043e\u0442\u044f\u0442 \u0437\u0430\u0435\u0434\u043d\u043e \u2014 \u0433\u0440\u044a\u0431\u043d\u0430\u043a\u044a\u0442 \u0435 \u043f\u0430\u0437\u0435\u043d."

    const-string v1, "\u0414\u044a\u043b\u0431\u043e\u043a\u0438\u0442\u0435 \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u043d\u0430 \u043a\u043e\u0440\u0435\u043c\u0430 \u0441\u0442\u044f\u0433\u0430\u0442 \u0442\u0430\u043b\u0438\u044f\u0442\u0430 \u043a\u0430\u0442\u043e \u043a\u043e\u043b\u0430\u043d."

    const-string v2, "\u041f\u043b\u0430\u043d\u043a, \u043f\u0440\u0435\u0441\u0438 \u0438 \u0437\u0430\u0432\u044a\u0440\u0442\u0430\u043d\u0438\u044f \u0437\u0430\u0435\u0434\u043d\u043e \u0441 \u0438\u043c\u043f\u0443\u043b\u0441\u0430."

    const-string v3, "The abs and the lower back work together \u2014 the spine is protected."

    const-string v4, "The deep abdominal muscles tighten the waist like a belt."

    const-string v5, "Plank, crunches and twists together with the impulse."

    const-string v6, "1\u20132 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e, \u0441 2\u20133 \u0434\u043d\u0438 \u043f\u043e\u0447\u0438\u0432\u043a\u0430"

    const-string v7, "1\u20132 times a week, 2\u20133 days of rest between"

    const-string v8, "\u041a\u0443\u0440\u0441 \u043e\u0442 8\u201312 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438"

    const-string v9, "A course of 8\u201312 sessions"

    invoke-static/range {v0 .. v9}, Lcom/isaigu/gymapp/ai/ProgramGuide;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;

    move-result-object v0

    goto/16 :goto_3

    .line 110
    :pswitch_1b6
    const-string v0, "\u041a\u0440\u0430\u0442\u044a\u043a \u0441\u0438\u043b\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441 \u0438 \u0434\u044a\u043b\u0433\u0430 \u043f\u043e\u0447\u0438\u0432\u043a\u0430 \u2014 \u0440\u0430\u0431\u043e\u0442\u044f\u0442 \u0431\u044a\u0440\u0437\u0438\u0442\u0435 \u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0438 \u0432\u043b\u0430\u043a\u043d\u0430."

    const-string v1, "\u0412\u0437\u0440\u0438\u0432\u043d\u0438 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u044f \u0432 \u0441\u043e\u0431\u0441\u0442\u0432\u0435\u043d\u043e \u0442\u0435\u043c\u043f\u043e: \u043a\u043b\u0435\u043a, \u043e\u0442\u0441\u043a\u043e\u043a, \u0445\u0432\u044a\u0440\u043b\u044f\u043d\u0435."

    const-string v2, "\u0417\u0430 \u043d\u0430\u043f\u0440\u0435\u0434\u043d\u0430\u043b\u0438 \u2014 \u0441\u043b\u0435\u0434 \u043f\u044a\u0440\u0432\u0438\u0442\u0435 4 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438."

    const-string v3, "A short strong impulse and a long rest \u2014 the fast muscle fibres work."

    const-string v4, "Explosive moves at your own pace: squat, jump, throw."

    const-string v5, "For the experienced \u2014 after the first 4 sessions."

    const-string v6, "1 \u043f\u044a\u0442 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e, \u0441 \u043f\u043e\u043d\u0435 3 \u0434\u043d\u0438 \u043f\u043e\u0447\u0438\u0432\u043a\u0430"

    const-string v7, "Once a week, at least 3 days of rest"

    const-string v8, "\u041a\u0443\u0440\u0441 \u043e\u0442 6\u20138 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438"

    const-string v9, "A course of 6\u20138 sessions"

    invoke-static/range {v0 .. v9}, Lcom/isaigu/gymapp/ai/ProgramGuide;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;

    move-result-object v0

    goto/16 :goto_3

    .line 119
    :pswitch_1d0
    const-string v0, "\u0421\u0438\u043b\u043d\u0438 \u0441\u0442\u044f\u0433\u0430\u043d\u0438\u044f \u0441\u0435 \u0440\u0435\u0434\u0443\u0432\u0430\u0442 \u0441 \u0431\u044a\u0440\u0437\u043e \u043f\u043e\u0442\u0440\u0435\u043f\u0432\u0430\u043d\u0435 \u2014 \u043f\u0443\u043b\u0441\u044a\u0442 \u0441\u0435 \u0432\u0434\u0438\u0433\u0430 \u0438 \u0442\u044f\u043b\u043e\u0442\u043e \u0433\u043e\u0440\u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438."

    const-string v1, "\u0414\u0432\u0438\u0436\u0435\u043d\u0438\u0435\u0442\u043e \u043d\u0435 \u0441\u043f\u0438\u0440\u0430: \u0441\u0442\u0435\u043f, \u0445\u043e\u0434\u0435\u043d\u0435, \u043a\u043b\u0435\u043a\u043e\u0432\u0435."

    const-string v2, "\u041f\u0443\u043b\u0441\u044a\u0442 \u0441\u0435 \u0434\u044a\u0440\u0436\u0438 \u0432 \u0437\u043e\u043d\u0430\u0442\u0430, \u0432 \u043a\u043e\u044f\u0442\u043e \u0441\u0435 \u0438\u0437\u0433\u0430\u0440\u044f\u0442 \u043d\u0430\u0439-\u043c\u043d\u043e\u0433\u043e \u043c\u0430\u0437\u043d\u0438\u043d\u0438."

    const-string v3, "Strong holds alternate with a quick twitching \u2014 the pulse rises and the body burns fat."

    const-string v4, "The movement never stops: step, walking, squats."

    const-string v5, "The pulse is kept in the zone where most fat is burned."

    const-string v6, "1\u20132 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e, \u0441 2\u20133 \u0434\u043d\u0438 \u043f\u043e\u0447\u0438\u0432\u043a\u0430"

    const-string v7, "1\u20132 times a week, 2\u20133 days of rest between"

    const-string v8, "\u041a\u0443\u0440\u0441 \u043e\u0442 10\u201312 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438"

    const-string v9, "A course of 10\u201312 sessions"

    invoke-static/range {v0 .. v9}, Lcom/isaigu/gymapp/ai/ProgramGuide;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;

    move-result-object v0

    goto/16 :goto_3

    .line 128
    :pswitch_1ea
    const-string v0, "\u0413\u044a\u0440\u0431\u044a\u0442, \u043a\u0440\u044a\u0441\u0442\u044a\u0442 \u0438 \u043a\u043e\u0440\u0435\u043c\u044a\u0442 \u0441\u0442\u044f\u0433\u0430\u0442 \u0437\u0430\u0435\u0434\u043d\u043e \u2014 \u043a\u0430\u0442\u043e \u043a\u043e\u0440\u0441\u0435\u0442 \u043e\u043a\u043e\u043b\u043e \u0433\u0440\u044a\u0431\u043d\u0430\u043a\u0430."

    const-string v1, "\u0423\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f \u0431\u0435\u0437 \u0443\u0441\u0443\u043a\u0432\u0430\u043d\u0435 \u043f\u043e\u0434 \u0442\u043e\u0432\u0430\u0440."

    const-string v2, "\u0417\u0430 \u043f\u043e-\u0438\u0437\u043f\u0440\u0430\u0432\u0435\u043d\u0430 \u0441\u0442\u043e\u0439\u043a\u0430 \u0438 \u043f\u043e-\u043c\u0430\u043b\u043a\u043e \u043d\u0430\u043f\u0440\u0435\u0436\u0435\u043d\u0438\u0435 \u043f\u0440\u0438 \u0434\u044a\u043b\u0433\u043e \u0441\u0435\u0434\u0435\u043d\u0435."

    const-string v3, "The back, lower back and abs hold together \u2014 like a corset around the spine."

    const-string v4, "Exercises with no twisting under load."

    const-string v5, "For a straighter posture and less strain from long sitting."

    const-string v6, "1\u20132 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e, \u0441 2\u20133 \u0434\u043d\u0438 \u043f\u043e\u0447\u0438\u0432\u043a\u0430"

    const-string v7, "1\u20132 times a week, 2\u20133 days of rest between"

    const-string v8, "\u041a\u0443\u0440\u0441 \u043e\u0442 8\u201312 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438"

    const-string v9, "A course of 8\u201312 sessions"

    invoke-static/range {v0 .. v9}, Lcom/isaigu/gymapp/ai/ProgramGuide;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;

    move-result-object v0

    goto/16 :goto_3

    .line 137
    :pswitch_204
    const-string v0, "\u0421\u0440\u0435\u0449\u0443 \u0437\u0430\u0433\u0443\u0431\u0430\u0442\u0430 \u043d\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u0441 \u0432\u044a\u0437\u0440\u0430\u0441\u0442\u0442\u0430: \u0441\u0438\u043b\u0430 \u0438 \u0431\u044a\u0440\u0437\u0438\u043d\u0430 \u0437\u0430 \u0441\u0442\u043e\u043b, \u0441\u0442\u044a\u043b\u0431\u0438 \u0438 \u0441\u0438\u0433\u0443\u0440\u043d\u0430 \u043a\u0440\u0430\u0447\u043a\u0430."

    const-string v1, "\u041a\u043e\u0441\u0442\u0438: \u0441\u0442\u044f\u0433\u0430\u043d\u0435 \u0441 \u043b\u0435\u043a\u0438 \u0443\u0434\u0430\u0440\u0438 \u043d\u0430 \u043f\u0435\u0442\u0438\u0442\u0435 \u2014 \u0441\u0438\u0433\u043d\u0430\u043b \u043a\u043e\u0441\u0442\u0442\u0430 \u0434\u0430 \u043f\u0430\u0437\u0438 \u043f\u043b\u044a\u0442\u043d\u043e\u0441\u0442\u0442\u0430 \u0441\u0438."

    const-string v2, "\u0417\u0430\u0445\u0430\u0440 \u0438 \u043c\u0435\u043d\u043e\u043f\u0430\u0443\u0437\u0430: \u043a\u0440\u0430\u043a\u0430\u0442\u0430 \u043f\u043e\u0435\u043c\u0430\u0442 \u0437\u0430\u0445\u0430\u0440; \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0438 \u043a\u043e\u0441\u0442\u0438\u0442\u0435 \u0441\u0435 \u043f\u0430\u0437\u044f\u0442, \u043a\u043e\u0433\u0430\u0442\u043e \u0445\u043e\u0440\u043c\u043e\u043d\u0438\u0442\u0435 \u0441\u043f\u0430\u0434\u0430\u0442."

    const-string v3, "Against the loss of muscle with age: strength and speed for the chair, the stairs, a sure step."

    const-string v4, "Bone: holds with light heel drops \u2014 a signal for the bone to keep its density."

    const-string v5, "Sugar and menopause: the legs take up sugar; muscle and bone are kept as the hormones fall."

    const-string v6, "1 \u043f\u044a\u0442 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e \u0432 \u043d\u0430\u0447\u0430\u043b\u043e\u0442\u043e, \u043f\u043e\u0441\u043b\u0435 \u0434\u043e 2"

    const-string v7, "Once a week at first, then up to twice"

    const-string v8, "\u041a\u0443\u0440\u0441 \u043e\u0442 10\u201312 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438"

    const-string v9, "A course of 10\u201312 sessions"

    invoke-static/range {v0 .. v9}, Lcom/isaigu/gymapp/ai/ProgramGuide;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;

    move-result-object v0

    goto/16 :goto_3

    .line 146
    :pswitch_21e
    const-string v0, "\u0414\u044a\u043b\u0433\u043e\u043b\u0435\u0442\u0438\u0435 \u043d\u0430 \u0432\u0441\u044f\u043a\u0430 \u0432\u044a\u0437\u0440\u0430\u0441\u0442: \u043f\u0430\u0437\u0438 \u043c\u043b\u0430\u0434\u043e\u0441\u0442\u0442\u0430 \u043d\u0430 \u043a\u043b\u0435\u0442\u043a\u0438\u0442\u0435, \u043d\u0435 \u043b\u0435\u043a\u0443\u0432\u0430 \u0432\u044a\u0437\u0440\u0430\u0441\u0442\u0442\u0430 (\u0442\u044f \u0435 50+)."

    const-string v1, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u043f\u0443\u0441\u043a\u0430\u0442 \u0432\u0435\u0449\u0435\u0441\u0442\u0432\u0430 \u0441\u0440\u0435\u0449\u0443 \u0432\u044a\u0437\u043f\u0430\u043b\u0435\u043d\u0438\u0435\u0442\u043e; \u0445\u043e\u0434\u0435\u043d\u0435\u0442\u043e \u0441 \u0438\u043c\u043f\u0443\u043b\u0441\u0430 \u0445\u0440\u0430\u043d\u0438 \u043c\u043e\u0437\u044a\u043a\u0430."

    const-string v2, "\u041a\u0440\u0430\u0442\u043a\u0438 \u0438\u043d\u0442\u0435\u0440\u0432\u0430\u043b\u0438 \u0441 \u0432\u0441\u0438\u0447\u043a\u0430 \u0441\u0438\u043b\u0430 \u2014 \u0438\u0437\u0434\u0440\u044a\u0436\u043b\u0438\u0432\u043e\u0441\u0442\u0442\u0430 \u0435 \u043d\u0430\u0439-\u0441\u0438\u043b\u043d\u0438\u044f\u0442 \u0437\u043d\u0430\u043a \u0437\u0430 \u0434\u044a\u043b\u044a\u0433 \u0436\u0438\u0432\u043e\u0442."

    const-string v3, "Longevity at any age: keeps the cells young, it does not treat age (that is 50+)."

    const-string v4, "The muscles release substances against inflammation; walking with the impulse feeds the brain."

    const-string v5, "Short all-out intervals \u2014 endurance is the strongest sign of a long life."

    const-string v6, "1\u20132 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e, \u0441 2\u20133 \u0434\u043d\u0438 \u043f\u043e\u0447\u0438\u0432\u043a\u0430"

    const-string v7, "1\u20132 times a week, 2\u20133 days of rest between"

    const-string v8, "\u041a\u0443\u0440\u0441 \u043e\u0442 16 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438 \u0437\u0430 8 \u0441\u0435\u0434\u043c\u0438\u0446\u0438"

    const-string v9, "A course of 16 sessions in 8 weeks"

    invoke-static/range {v0 .. v9}, Lcom/isaigu/gymapp/ai/ProgramGuide;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;

    move-result-object v0

    goto/16 :goto_3

    .line 155
    :pswitch_238
    const-string v0, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u043f\u043e\u0434 \u043a\u043e\u0436\u0430\u0442\u0430 \u0441\u0435 \u0441\u0442\u044f\u0433\u0430\u0442 \u2014 \u0432\u0438\u0434\u044a\u0442 \u0441\u0442\u0430\u0432\u0430 \u043f\u043e-\u0433\u043b\u0430\u0434\u044a\u043a \u0438 \u0441\u0442\u0435\u0433\u043d\u0430\u0442."

    const-string v1, "\u0412\u044a\u043b\u043d\u0430 \u043f\u043e \u043a\u0440\u0430\u043a\u0430\u0442\u0430 \u0438\u0437\u0442\u043b\u0430\u0441\u043a\u0432\u0430 \u0437\u0430\u0434\u044a\u0440\u0436\u0430\u043d\u0430\u0442\u0430 \u0442\u0435\u0447\u043d\u043e\u0441\u0442 \u043d\u0430\u0433\u043e\u0440\u0435."

    const-string v2, "\u041d\u0430\u0439-\u0434\u043e\u0431\u0440\u0435 \u0434\u0435\u0439\u0441\u0442\u0432\u0430 \u0437\u0430\u0435\u0434\u043d\u043e \u0441 \u0432\u043e\u0434\u0430 \u0438 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435 \u043f\u0440\u0435\u0437 \u0434\u0435\u043d\u044f."

    const-string v3, "The muscles under the skin firm up \u2014 the look becomes smoother and firmer."

    const-string v4, "A wave along the legs pushes the held fluid upwards."

    const-string v5, "Works best together with water and movement during the day."

    const-string v6, "2 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e"

    const-string v7, "Twice a week"

    const-string v8, "\u041a\u0443\u0440\u0441 \u043e\u0442 10\u201312 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0438"

    const-string v9, "A course of 10\u201312 treatments"

    invoke-static/range {v0 .. v9}, Lcom/isaigu/gymapp/ai/ProgramGuide;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;

    move-result-object v0

    goto/16 :goto_3

    .line 164
    :pswitch_252
    const-string v0, "\u0422\u0430\u0437\u043e\u0432\u043e\u0442\u043e \u0434\u044a\u043d\u043e, \u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435\u0442\u043e \u0438 \u043a\u0440\u044a\u0441\u0442\u044a\u0442 \u0441\u0438 \u0432\u0440\u044a\u0449\u0430\u0442 \u0441\u0438\u043b\u0430\u0442\u0430 \u0438 \u043a\u043e\u043d\u0442\u0440\u043e\u043b\u0430."

    const-string v1, "\u041a\u043e\u0440\u0435\u043c\u044a\u0442 \u2014 \u0432\u043d\u0438\u043c\u0430\u0442\u0435\u043b\u043d\u043e: \u0441\u0438\u043b\u0430\u0442\u0430 \u043c\u0443 \u044f \u043d\u0430\u0433\u043b\u0430\u0441\u044f\u0432\u0430 \u0442\u0440\u0435\u043d\u044c\u043e\u0440\u044a\u0442."

    const-string v2, "\u041d\u0430\u0439-\u0440\u0430\u043d\u043e 6 \u0441\u0435\u0434\u043c\u0438\u0446\u0438 \u0441\u043b\u0435\u0434 \u0440\u0430\u0436\u0434\u0430\u043d\u0435\u0442\u043e, \u0441\u043b\u0435\u0434 \u0446\u0435\u0437\u0430\u0440\u043e\u0432\u043e \u2014 12."

    const-string v3, "The pelvic floor, glutes and lower back get their strength and control back."

    const-string v4, "The abs gently: the trainer sets their strength."

    const-string v5, "Not before 6 weeks after birth, 12 after a caesarean."

    const-string v6, "2 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e"

    const-string v7, "Twice a week"

    const-string v8, "\u041a\u0443\u0440\u0441 \u043e\u0442 10\u201312 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0438"

    const-string v9, "A course of 10\u201312 treatments"

    invoke-static/range {v0 .. v9}, Lcom/isaigu/gymapp/ai/ProgramGuide;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;

    move-result-object v0

    goto/16 :goto_3

    .line 173
    :pswitch_26c
    const-string v0, "\u0412\u044a\u043b\u043d\u0430 \u043e\u0442 \u043f\u0440\u0430\u0441\u0435\u0446\u0430 \u043d\u0430\u0433\u043e\u0440\u0435 \u043a\u044a\u043c \u043a\u043e\u0440\u0435\u043c\u0430 \u0438 \u0440\u0430\u043c\u0435\u043d\u0435\u0442\u0435 \u2014 \u043a\u0430\u0442\u043e \u0440\u044a\u0447\u0435\u043d \u043b\u0438\u043c\u0444\u0435\u043d \u043c\u0430\u0441\u0430\u0436."

    const-string v1, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0438\u0437\u043f\u043e\u043c\u043f\u0432\u0430\u0442 \u0437\u0430\u0434\u044a\u0440\u0436\u0430\u043d\u0430\u0442\u0430 \u0442\u0435\u0447\u043d\u043e\u0441\u0442 \u043a\u044a\u043c \u043b\u0438\u043c\u0444\u043d\u0438\u0442\u0435 \u043f\u044a\u0442\u0438\u0449\u0430."

    const-string v2, "\u041a\u0440\u0430\u043a\u0430\u0442\u0430 \u043e\u043b\u0435\u043a\u0432\u0430\u0442, \u043f\u043e\u0434\u0443\u0432\u0430\u043d\u0435\u0442\u043e \u043d\u0430\u043c\u0430\u043b\u044f\u0432\u0430."

    const-string v3, "A wave from the calf up to the abdomen and shoulders \u2014 like a manual lymph massage."

    const-string v4, "The muscles pump the held fluid towards the lymph pathways."

    const-string v5, "The legs feel lighter, the swelling goes down."

    const-string v6, "2\u20133 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e"

    const-string v7, "2\u20133 times a week"

    const-string v8, "\u041a\u0443\u0440\u0441 \u043e\u0442 8\u201310 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0438"

    const-string v9, "A course of 8\u201310 treatments"

    invoke-static/range {v0 .. v9}, Lcom/isaigu/gymapp/ai/ProgramGuide;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;

    move-result-object v0

    goto/16 :goto_3

    .line 182
    :pswitch_286
    const-string v0, "\u0420\u0438\u0442\u043c\u0438\u0447\u043d\u043e \u043f\u043e\u0442\u0440\u0435\u043f\u0432\u0430\u043d\u0435 \u2014 \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0433\u043e\u0440\u044f\u0442 \u0435\u043d\u0435\u0440\u0433\u0438\u044f, \u0431\u0435\u0437 \u0434\u0430 \u0441\u0435 \u0443\u043c\u043e\u0440\u044f\u0432\u0430\u0442."

    const-string v1, "\u041a\u0440\u0430\u0442\u043a\u0438 \u0431\u043b\u043e\u043a\u043e\u0432\u0435 \u0441\u0442\u044f\u0433\u0430\u043d\u0435 \u043c\u0435\u0436\u0434\u0443 \u0442\u044f\u0445 \u043f\u0430\u0437\u044f\u0442 \u0442\u043e\u043d\u0443\u0441\u0430."

    const-string v2, "\u041f\u043e\u0434\u0445\u043e\u0434\u044f\u0449\u043e, \u043a\u043e\u0433\u0430\u0442\u043e \u0430\u043a\u0442\u0438\u0432\u043d\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u0434\u043d\u0435\u0441 \u043d\u0435 \u0435 \u0432\u044a\u0437\u043c\u043e\u0436\u043d\u0430."

    const-string v3, "A rhythmic twitching \u2014 the muscles burn energy without getting tired."

    const-string v4, "Short blocks of holds in between keep the tone."

    const-string v5, "Suitable when an active session is not possible today."

    const-string v6, "2\u20133 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e"

    const-string v7, "2\u20133 times a week"

    const-string v8, "\u041a\u0443\u0440\u0441 \u043e\u0442 10\u201312 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0438"

    const-string v9, "A course of 10\u201312 treatments"

    invoke-static/range {v0 .. v9}, Lcom/isaigu/gymapp/ai/ProgramGuide;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;

    move-result-object v0

    goto/16 :goto_3

    .line 191
    :pswitch_2a0
    const-string v0, "\u041f\u044a\u0440\u0432\u043e \u0441\u0435 \u043e\u0442\u043f\u0443\u0441\u043a\u0430\u0442 \u043d\u0430\u043f\u0440\u0435\u0433\u043d\u0430\u0442\u0438\u0442\u0435 \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u043d\u0430 \u0433\u044a\u0440\u0431\u0430."

    const-string v1, "\u041b\u0435\u043a\u043e \u0441\u0442\u044f\u0433\u0430\u043d\u0435 \u043d\u0430 \u0434\u044a\u043b\u0431\u043e\u043a\u0438\u0442\u0435 \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u2014 \u0442\u0435 \u043f\u043e\u0435\u043c\u0430\u0442 \u0442\u043e\u0432\u0430\u0440\u0430 \u043e\u0442 \u0433\u0440\u044a\u0431\u043d\u0430\u043a\u0430."

    const-string v2, "\u041d\u0430\u043a\u0440\u0430\u044f \u0442\u0438\u0445\u0430 \u0447\u0435\u0441\u0442\u043e\u0442\u0430, \u043a\u043e\u044f\u0442\u043e \u043d\u0430\u043c\u0430\u043b\u044f\u0432\u0430 \u0443\u0441\u0435\u0449\u0430\u043d\u0435\u0442\u043e \u0437\u0430 \u0431\u043e\u043b\u043a\u0430."

    const-string v3, "First the tense back muscles relax."

    const-string v4, "A light hold of the deep muscles \u2014 they take the load off the spine."

    const-string v5, "At the end a quiet rate that dampens the feeling of pain."

    const-string v6, "2 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e"

    const-string v7, "Twice a week"

    const-string v8, "\u041a\u0443\u0440\u0441 \u043e\u0442 8\u201310 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0438"

    const-string v9, "A course of 8\u201310 treatments"

    invoke-static/range {v0 .. v9}, Lcom/isaigu/gymapp/ai/ProgramGuide;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;

    move-result-object v0

    goto/16 :goto_3

    .line 200
    :pswitch_2ba
    const-string v0, "\u0411\u0430\u0432\u043d\u043e \u0438 \u0431\u044a\u0440\u0437\u043e \u043f\u043e\u0442\u0440\u0435\u043f\u0432\u0430\u043d\u0435 \u0441\u0435 \u0440\u0435\u0434\u0443\u0432\u0430\u0442 \u2014 \u043a\u0440\u044a\u0432\u0442\u0430 \u043f\u0440\u0438\u0438\u0436\u0434\u0430, \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0441\u0435 \u043e\u0442\u043f\u0443\u0441\u043a\u0430\u0442."

    const-string v1, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0441\u0435 \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u0442 \u043f\u043e-\u0431\u044a\u0440\u0437\u043e 1\u20132 \u0434\u043d\u0438 \u0441\u043b\u0435\u0434 \u043d\u0430\u0442\u043e\u0432\u0430\u0440\u0432\u0430\u043d\u0435."

    const-string v2, "\u041b\u0435\u043a\u043e, \u043f\u0440\u0438\u044f\u0442\u043d\u043e \u0443\u0441\u0435\u0449\u0430\u043d\u0435 \u2014 \u043a\u0430\u0442\u043e \u043c\u0430\u0441\u0430\u0436."

    const-string v3, "Slow and quick twitching alternate \u2014 the blood flows in, the muscles relax."

    const-string v4, "The muscles recover faster 1\u20132 days after a hard session."

    const-string v5, "A light, pleasant feeling \u2014 like a massage."

    const-string v6, "\u0421\u043b\u0435\u0434 \u0432\u0441\u044f\u043a\u0430 \u0442\u0435\u0436\u043a\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v7, "After every hard session"

    const-string v8, "\u041a\u043e\u043b\u043a\u043e\u0442\u043e \u0435 \u043d\u0443\u0436\u043d\u043e"

    const-string v9, "As needed"

    invoke-static/range {v0 .. v9}, Lcom/isaigu/gymapp/ai/ProgramGuide;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;

    move-result-object v0

    goto/16 :goto_3

    .line 209
    :pswitch_2d4
    const-string v0, "\u0414\u044a\u043b\u0433\u043e\u043b\u0435\u0442\u0438\u0435 \u0432 \u043f\u043e\u043a\u043e\u0439: \u0437\u0430\u0445\u0430\u0440\u0442\u0430, \u043c\u043e\u0437\u044a\u043a\u044a\u0442 \u0438 \u0441\u044a\u0434\u043e\u0432\u0435\u0442\u0435 \u2014 \u043f\u044a\u0442\u0438\u0449\u0430\u0442\u0430, \u043f\u043e \u043a\u043e\u0438\u0442\u043e \u0442\u044f\u043b\u043e\u0442\u043e \u0441\u0442\u0430\u0440\u0435\u0435."

    const-string v1, "\u041a\u0440\u0430\u043a\u0430\u0442\u0430 \u0440\u0430\u0431\u043e\u0442\u044f\u0442 \u0446\u0435\u043b\u0438\u0442\u0435 \u2014 \u043f\u043e\u0435\u043c\u0430\u0442 \u0437\u0430\u0445\u0430\u0440 \u0438 \u043f\u043e\u0434\u0430\u0432\u0430\u0442 \u0441\u0438\u0433\u043d\u0430\u043b, \u043f\u043e\u043b\u0435\u0437\u0435\u043d \u0437\u0430 \u043c\u043e\u0437\u044a\u043a\u0430."

    const-string v2, "\u041b\u0435\u043a\u043e \u043f\u043e\u0442\u0440\u0435\u043f\u0432\u0430\u043d\u0435 \u043d\u0430\u043a\u0440\u0430\u044f \u2014 \u0441\u044a\u0434\u043e\u0432\u0435\u0442\u0435 \u043d\u0430 \u043a\u0440\u0430\u043a\u0430\u0442\u0430 \u0441\u0442\u0430\u0432\u0430\u0442 \u043f\u043e-\u0435\u043b\u0430\u0441\u0442\u0438\u0447\u043d\u0438."

    const-string v3, "Longevity at rest: sugar, brain and vessels \u2014 the paths by which the body ages."

    const-string v4, "The whole legs work \u2014 they take up sugar and send a signal good for the brain."

    const-string v5, "A light twitching at the end \u2014 the leg vessels grow more elastic."

    const-string v6, "2\u20133 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e"

    const-string v7, "2\u20133 times a week"

    const-string v8, "\u041a\u0443\u0440\u0441 \u043e\u0442 12 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0438 \u0437\u0430 6 \u0441\u0435\u0434\u043c\u0438\u0446\u0438"

    const-string v9, "A course of 12 treatments in 6 weeks"

    invoke-static/range {v0 .. v9}, Lcom/isaigu/gymapp/ai/ProgramGuide;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;

    move-result-object v0

    goto/16 :goto_3

    .line 218
    :pswitch_2ee
    const-string v0, "\u0422\u044a\u043d\u044a\u043a, \u043d\u0435\u0436\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441 \u0441\u0442\u044f\u0433\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u043d\u0430 \u043b\u0438\u0446\u0435\u0442\u043e \u043f\u043e\u0434 \u043a\u043e\u0436\u0430\u0442\u0430."

    const-string v1, "\u0412\u0441\u044f\u043a\u0430 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0430 \u0438\u043c\u0430 \u0441\u0432\u043e\u0438 \u043c\u0435\u0441\u0442\u0430 \u2014 \u0438\u0437\u0431\u0438\u0440\u0430\u0442 \u0441\u0435 \u0432 \u0441\u0442\u0443\u0434\u0438\u043e\u0442\u043e \u0437\u0430 \u043b\u0438\u0446\u0435."

    const-string v2, "\u0423\u0441\u0435\u0449\u0430 \u0441\u0435 \u043a\u0430\u0442\u043e \u043b\u0435\u043a\u043e \u0438\u0437\u0442\u0440\u044a\u043f\u0432\u0430\u043d\u0435, \u0431\u0435\u0437 \u0431\u043e\u043b\u043a\u0430."

    const-string v3, "A thin, gentle impulse firms the face muscles under the skin."

    const-string v4, "Every treatment has its own sites \u2014 chosen in the face studio."

    const-string v5, "It feels like a light tingle, never pain."

    const-string v6, "2\u20133 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e"

    const-string v7, "2\u20133 times a week"

    const-string v8, "\u041a\u0443\u0440\u0441 \u043e\u0442 10\u201312 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0438"

    const-string v9, "A course of 10\u201312 treatments"

    invoke-static/range {v0 .. v9}, Lcom/isaigu/gymapp/ai/ProgramGuide;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;

    move-result-object v0

    goto/16 :goto_3

    .line 229
    :pswitch_308
    const-string v0, "\u0421\u044a\u0449\u0430\u0442\u0430 \u0446\u0435\u043b \u043a\u0430\u0442\u043e \u041e\u0431\u0449\u043e \u0441\u0442\u044f\u0433\u0430\u043d\u0435, \u043d\u043e \u0432 \u043f\u043e\u043a\u043e\u0439: \u0442\u043e\u043a\u044a\u0442 \u0441\u0442\u044f\u0433\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0438\u0437\u0446\u044f\u043b\u043e, \u0431\u0435\u0437 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435."

    const-string v1, "\u0414\u044a\u043b\u0433\u043e \u043e\u0442\u043f\u0443\u0441\u043a\u0430\u043d\u0435 \u0441\u043b\u0435\u0434 \u0432\u0441\u044f\u043a\u043e \u0441\u0442\u044f\u0433\u0430\u043d\u0435 \u2014 \u043f\u0430\u0441\u0438\u0432\u043d\u043e\u0442\u043e \u0441\u0442\u044f\u0433\u0430\u043d\u0435 \u0443\u043c\u043e\u0440\u044f\u0432\u0430 \u043f\u043e-\u0431\u044a\u0440\u0437\u043e."

    const-string v2, "\u0417\u0430 \u0434\u043d\u0438\u0442\u0435 \u043c\u0435\u0436\u0434\u0443 \u0430\u043a\u0442\u0438\u0432\u043d\u0438\u0442\u0435 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438 \u0438\u043b\u0438 \u043a\u043e\u0433\u0430\u0442\u043e \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435 \u0434\u043d\u0435\u0441 \u043d\u0435 \u0435 \u0432\u044a\u0437\u043c\u043e\u0436\u043d\u043e."

    const-string v3, "The same goal as Full-body toning, at rest: the current tightens the muscles fully, no moving."

    const-string v4, "A long release after every hold \u2014 a passive hold tires sooner."

    const-string v5, "For the days between active sessions, or when moving is not possible today."

    const-string v6, "2 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e, \u0432 \u0434\u043d\u0438\u0442\u0435 \u0431\u0435\u0437 \u0430\u043a\u0442\u0438\u0432\u043d\u0430"

    const-string v7, "Twice a week, on the days without an active one"

    const-string v8, "\u041a\u0443\u0440\u0441 \u043e\u0442 10\u201312 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0438"

    const-string v9, "A course of 10\u201312 treatments"

    invoke-static/range {v0 .. v9}, Lcom/isaigu/gymapp/ai/ProgramGuide;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;

    move-result-object v0

    goto/16 :goto_3

    .line 237
    :pswitch_322
    const-string v0, "\u0421\u0435\u0434\u0430\u043b\u0438\u0449\u0435\u0442\u043e \u0438 \u0431\u0435\u0434\u0440\u0430\u0442\u0430 \u0441\u0435 \u0441\u0442\u044f\u0433\u0430\u0442 \u0432 \u043f\u043e\u043a\u043e\u0439 \u2014 \u0441\u044a\u0449\u0430\u0442\u0430 \u0446\u0435\u043b \u043a\u0430\u0442\u043e \u0430\u043a\u0442\u0438\u0432\u043d\u0430\u0442\u0430."

    const-string v1, "\u041d\u0430\u043a\u0440\u0430\u044f \u0432\u044a\u043b\u043d\u0430 \u043f\u043e \u043a\u0440\u0430\u043a\u0430\u0442\u0430 \u0438\u0437\u0442\u043b\u0430\u0441\u043a\u0432\u0430 \u0437\u0430\u0434\u044a\u0440\u0436\u0430\u043d\u0430\u0442\u0430 \u0442\u0435\u0447\u043d\u043e\u0441\u0442 \u043d\u0430\u0433\u043e\u0440\u0435."

    const-string v2, "\u041c\u0435\u0436\u0434\u0443 \u0430\u043a\u0442\u0438\u0432\u043d\u0438\u0442\u0435 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438 \u2014 \u043f\u043e\u0434\u0434\u044a\u0440\u0436\u0430 \u0442\u043e\u043d\u0443\u0441\u0430 \u0431\u0435\u0437 \u043d\u0430\u0442\u043e\u0432\u0430\u0440\u0432\u0430\u043d\u0435."

    const-string v3, "The glutes and thighs tighten at rest \u2014 the same goal as the active one."

    const-string v4, "At the end a wave along the legs pushes the held fluid upwards."

    const-string v5, "Between the active sessions \u2014 keeps the tone without strain."

    const-string v6, "2 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e, \u0432 \u0434\u043d\u0438\u0442\u0435 \u0431\u0435\u0437 \u0430\u043a\u0442\u0438\u0432\u043d\u0430"

    const-string v7, "Twice a week, on the days without an active one"

    const-string v8, "\u041a\u0443\u0440\u0441 \u043e\u0442 10\u201312 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0438"

    const-string v9, "A course of 10\u201312 treatments"

    invoke-static/range {v0 .. v9}, Lcom/isaigu/gymapp/ai/ProgramGuide;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;

    move-result-object v0

    goto/16 :goto_3

    .line 245
    :pswitch_33c
    const-string v0, "\u0414\u044a\u043b\u0433\u0438 \u0441\u0438\u043b\u043d\u0438 \u0441\u0442\u044f\u0433\u0430\u043d\u0438\u044f \u0432 \u043f\u043e\u043a\u043e\u0439 \u2014 \u043d\u0430\u043f\u0440\u0435\u0436\u0435\u043d\u0438\u0435\u0442\u043e \u0432 \u043c\u0443\u0441\u043a\u0443\u043b\u0430 \u0435 \u0441\u0438\u0433\u043d\u0430\u043b\u044a\u0442 \u0437\u0430 \u0440\u0430\u0441\u0442\u0435\u0436."

    const-string v1, "\u0414\u044a\u043b\u0433\u0430 \u043f\u043e\u0447\u0438\u0432\u043a\u0430, \u0437\u0430 \u0434\u0430 \u0435 \u043f\u044a\u043b\u043d\u043e \u0432\u0441\u044f\u043a\u043e \u0441\u0442\u044f\u0433\u0430\u043d\u0435."

    const-string v2, "\u0414\u043e\u043f\u044a\u043b\u0432\u0430 \u0430\u043a\u0442\u0438\u0432\u043d\u0430\u0442\u0430, \u043d\u0435 \u044f \u0437\u0430\u043c\u0435\u043d\u044f: \u0440\u0430\u0441\u0442\u0435\u0436\u044a\u0442 \u0438\u0434\u0432\u0430 \u0441 \u0445\u0440\u0430\u043d\u0430, \u0441\u044a\u043d \u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430."

    const-string v3, "Long strong holds at rest \u2014 the tension in the muscle is the signal to grow."

    const-string v4, "A long rest so every hold is full."

    const-string v5, "It adds to the active one, it does not replace it: growth needs food, sleep and training."

    const-string v6, "2 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e, \u0432 \u0434\u043d\u0438\u0442\u0435 \u0431\u0435\u0437 \u0430\u043a\u0442\u0438\u0432\u043d\u0430"

    const-string v7, "Twice a week, on the days without an active one"

    const-string v8, "\u041a\u0443\u0440\u0441 \u043e\u0442 10\u201312 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0438"

    const-string v9, "A course of 10\u201312 treatments"

    invoke-static/range {v0 .. v9}, Lcom/isaigu/gymapp/ai/ProgramGuide;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;

    move-result-object v0

    goto/16 :goto_3

    .line 253
    :pswitch_356
    const-string v0, "\u0413\u044a\u0440\u0434\u0438\u0442\u0435, \u0433\u044a\u0440\u0431\u044a\u0442, \u0440\u0430\u043c\u0435\u043d\u0435\u0442\u0435 \u0438 \u0440\u044a\u0446\u0435\u0442\u0435 \u0441\u0435 \u0441\u0442\u044f\u0433\u0430\u0442 \u0432 \u043f\u043e\u043a\u043e\u0439."

    const-string v1, "\u041a\u0440\u0430\u043a\u0430\u0442\u0430 \u043f\u043e\u0447\u0438\u0432\u0430\u0442 \u2014 \u043f\u043e\u0434\u0445\u043e\u0434\u044f\u0449\u043e \u0441\u043b\u0435\u0434 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u043d\u0430 \u043a\u0440\u0430\u043a\u0430\u0442\u0430."

    const-string v2, "\u041f\u043e\u0434\u0434\u044a\u0440\u0436\u0430 \u0433\u043e\u0440\u043d\u0430\u0442\u0430 \u0447\u0430\u0441\u0442 \u043c\u0435\u0436\u0434\u0443 \u0430\u043a\u0442\u0438\u0432\u043d\u0438\u0442\u0435 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438."

    const-string v3, "The chest, back, shoulders and arms tighten at rest."

    const-string v4, "The legs rest \u2014 good after a leg session."

    const-string v5, "Keeps the upper body up between the active sessions."

    const-string v6, "2 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e, \u0432 \u0434\u043d\u0438\u0442\u0435 \u0431\u0435\u0437 \u0430\u043a\u0442\u0438\u0432\u043d\u0430"

    const-string v7, "Twice a week, on the days without an active one"

    const-string v8, "\u041a\u0443\u0440\u0441 \u043e\u0442 10\u201312 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0438"

    const-string v9, "A course of 10\u201312 treatments"

    invoke-static/range {v0 .. v9}, Lcom/isaigu/gymapp/ai/ProgramGuide;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;

    move-result-object v0

    goto/16 :goto_3

    .line 261
    :pswitch_370
    const-string v0, "\u041a\u043e\u0440\u0435\u043c\u044a\u0442, \u043a\u0440\u044a\u0441\u0442\u044a\u0442 \u0438 \u0433\u044a\u0440\u0431\u044a\u0442 \u0441\u0435 \u0441\u0442\u044f\u0433\u0430\u0442 \u0437\u0430\u0435\u0434\u043d\u043e \u2014 \u043a\u043e\u0440\u0441\u0435\u0442 \u043e\u043a\u043e\u043b\u043e \u0433\u0440\u044a\u0431\u043d\u0430\u043a\u0430."

    const-string v1, "\u041b\u0435\u0433\u043d\u0430\u043b, \u0441\u0430\u043c\u043e \u0434\u0438\u0448\u0430\u0448 \u0441 \u0438\u043c\u043f\u0443\u043b\u0441\u0430 \u2014 \u0431\u0435\u0437 \u043d\u0430\u0442\u043e\u0432\u0430\u0440\u0432\u0430\u043d\u0435 \u043d\u0430 \u0433\u0440\u044a\u0431\u043d\u0430\u043a\u0430."

    const-string v2, "\u0421\u044a\u0449\u0430\u0442\u0430 \u0446\u0435\u043b \u043a\u0430\u0442\u043e \u0422\u0430\u043b\u0438\u044f \u0438 \u043a\u043e\u0440\u0435\u043c, \u0437\u0430 \u0434\u043d\u0438\u0442\u0435 \u0431\u0435\u0437 \u0430\u043a\u0442\u0438\u0432\u043d\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430."

    const-string v3, "The abs, lower back and back hold together \u2014 a corset around the spine."

    const-string v4, "Lying down, you only breathe with the impulse \u2014 no load on the spine."

    const-string v5, "The same goal as Waist & core, for the days without an active session."

    const-string v6, "2 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e, \u0432 \u0434\u043d\u0438\u0442\u0435 \u0431\u0435\u0437 \u0430\u043a\u0442\u0438\u0432\u043d\u0430"

    const-string v7, "Twice a week, on the days without an active one"

    const-string v8, "\u041a\u0443\u0440\u0441 \u043e\u0442 10\u201312 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0438"

    const-string v9, "A course of 10\u201312 treatments"

    invoke-static/range {v0 .. v9}, Lcom/isaigu/gymapp/ai/ProgramGuide;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;

    move-result-object v0

    goto/16 :goto_3

    .line 269
    :pswitch_38a
    const-string v0, "\u041a\u0440\u0430\u0442\u043a\u0438 \u0432\u0437\u0440\u0438\u0432\u043d\u0438 \u0438\u043c\u043f\u0443\u043b\u0441\u0438 \u0432 \u043f\u043e\u043a\u043e\u0439 \u2014 \u0431\u044a\u0440\u0437\u0438\u0442\u0435 \u0432\u043b\u0430\u043a\u043d\u0430 \u0441\u0435 \u0432\u043a\u043b\u044e\u0447\u0432\u0430\u0442 \u0438\u0437\u0446\u044f\u043b\u043e."

    const-string v1, "\u0414\u044a\u043b\u0433\u0430 \u043f\u043e\u0447\u0438\u0432\u043a\u0430 \u0441\u043b\u0435\u0434 \u0432\u0441\u0435\u043a\u0438 \u0438\u043c\u043f\u0443\u043b\u0441 \u2014 \u0435\u043d\u0435\u0440\u0433\u0438\u044f\u0442\u0430 \u0438\u043c \u0441\u0435 \u0432\u0440\u044a\u0449\u0430."

    const-string v2, "\u0417\u0430 \u043d\u0430\u043f\u0440\u0435\u0434\u043d\u0430\u043b\u0438 \u2014 \u0441\u043b\u0435\u0434 \u043f\u044a\u0440\u0432\u0438\u0442\u0435 4 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438."

    const-string v3, "Short explosive bursts at rest \u2014 the fast fibres fire in full."

    const-string v4, "A long rest after every burst \u2014 their energy comes back."

    const-string v5, "For the experienced \u2014 after the first 4 sessions."

    const-string v6, "1 \u043f\u044a\u0442 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e"

    const-string v7, "Once a week"

    const-string v8, "\u041a\u0443\u0440\u0441 \u043e\u0442 6\u20138 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0438"

    const-string v9, "A course of 6\u20138 treatments"

    invoke-static/range {v0 .. v9}, Lcom/isaigu/gymapp/ai/ProgramGuide;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;

    move-result-object v0

    goto/16 :goto_3

    .line 277
    :pswitch_3a4
    const-string v0, "\u0421\u0435\u0434\u043d\u0430\u043b, \u043a\u0440\u0430\u043a\u0430\u0442\u0430 \u0440\u0430\u0431\u043e\u0442\u044f\u0442 \u0441\u0430\u043c\u0438 \u2014 \u0441\u0440\u0435\u0449\u0443 \u0437\u0430\u0433\u0443\u0431\u0430\u0442\u0430 \u043d\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u0438, \u043f\u043e-\u043b\u0435\u0441\u043d\u043e \u0441\u0442\u0430\u0432\u0430\u043d\u0435."

    const-string v1, "\u0413\u044a\u0440\u0431\u044a\u0442 \u0438 \u0440\u0430\u043c\u0435\u043d\u0435\u0442\u0435 \u2014 \u0441\u0440\u0435\u0449\u0443 \u043f\u0440\u0435\u0433\u044a\u0440\u0431\u0432\u0430\u043d\u0435\u0442\u043e \u0441 \u0432\u044a\u0437\u0440\u0430\u0441\u0442\u0442\u0430."

    const-string v2, "\u041d\u0430\u043a\u0440\u0430\u044f \u0440\u0438\u0442\u044a\u043c \u043d\u0430 \u043a\u0440\u0430\u043a\u0430\u0442\u0430 \u0437\u0430 \u0437\u0430\u0445\u0430\u0440\u0442\u0430 \u2014 \u043d\u0430\u0439-\u0434\u043e\u0431\u0440\u0435 30\u201360 \u043c\u0438\u043d \u0441\u043b\u0435\u0434 \u0445\u0440\u0430\u043d\u0435\u043d\u0435."

    const-string v3, "Seated, the legs work by themselves \u2014 against muscle loss, easier rising."

    const-string v4, "The back and shoulders \u2014 against the stoop of age."

    const-string v5, "At the end a leg rhythm for the blood sugar \u2014 best 30\u201360 min after a meal."

    const-string v6, "2 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e, \u0432 \u0434\u043d\u0438\u0442\u0435 \u0431\u0435\u0437 \u0430\u043a\u0442\u0438\u0432\u043d\u0430"

    const-string v7, "Twice a week, on the days without an active one"

    const-string v8, "\u041a\u0443\u0440\u0441 \u043e\u0442 12 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0438 \u0437\u0430 6 \u0441\u0435\u0434\u043c\u0438\u0446\u0438"

    const-string v9, "A course of 12 treatments in 6 weeks"

    invoke-static/range {v0 .. v9}, Lcom/isaigu/gymapp/ai/ProgramGuide;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;

    move-result-object v0

    goto/16 :goto_3

    .line 63
    :sswitch_data_3be
    .sparse-switch
        -0x6f0d1d95 -> :sswitch_a6
        -0x6ef04930 -> :sswitch_fa
        -0x626b8aa2 -> :sswitch_79
        -0x558a3613 -> :sswitch_136
        -0x5183fbca -> :sswitch_6f
        -0x4a13fe0e -> :sswitch_3d
        -0x35ffd1d0 -> :sswitch_83
        -0x327a9da3 -> :sswitch_8e
        -0x2fa1806b -> :sswitch_d6
        -0x2b99fa26 -> :sswitch_106
        -0x1ac634bb -> :sswitch_e2
        -0x4c6f718 -> :sswitch_33
        0x2eaf9f -> :sswitch_5b
        0x2fd65d -> :sswitch_ee
        0x3306f4 -> :sswitch_47
        0x5b679f8 -> :sswitch_b2
        0x65e8905 -> :sswitch_65
        0x6a558a2 -> :sswitch_51
        0x1c4fe11c -> :sswitch_be
        0x2deab687 -> :sswitch_12a
        0x40211418 -> :sswitch_142
        0x4875ac8a -> :sswitch_11e
        0x4f930f2e -> :sswitch_ca
        0x625d7281 -> :sswitch_9a
        0x6660e8dc -> :sswitch_112
    .end sparse-switch

    :pswitch_data_424
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_14e
        :pswitch_168
        :pswitch_182
        :pswitch_19c
        :pswitch_1b6
        :pswitch_1d0
        :pswitch_1ea
        :pswitch_204
        :pswitch_21e
        :pswitch_238
        :pswitch_252
        :pswitch_26c
        :pswitch_286
        :pswitch_2a0
        :pswitch_2ba
        :pswitch_2d4
        :pswitch_2ee
        :pswitch_308
        :pswitch_322
        :pswitch_33c
        :pswitch_356
        :pswitch_370
        :pswitch_38a
        :pswitch_3a4
    .end packed-switch
.end method
