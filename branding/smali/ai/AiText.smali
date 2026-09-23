.class final Lcom/isaigu/gymapp/ai/AiText;
.super Ljava/lang/Object;
.source "AiText.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static action(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 68
    if-nez p0, :cond_5

    .line 69
    const-string p0, ""

    .line 108
    :cond_4
    :goto_4
    return-object p0

    .line 71
    :cond_5
    const-string v0, "phase:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 73
    :try_start_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0424\u0430\u0437\u0430: "

    const-string v2, "Phase: "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x6

    .line 74
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiText;->phase(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_32} :catch_242

    move-result-object p0

    goto :goto_4

    .line 79
    :cond_34
    const-string v0, "rest"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    const-string v0, "\u041c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u0443\u043c\u043e\u0440\u0430 \u2014 \u043f\u043e\u0447\u0438\u0432\u043a\u0430"

    const-string v1, "Muscle fatigue \u2014 rest"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    .line 80
    :cond_45
    const-string v0, "rest_timeout"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    const-string v0, "\u0414\u044a\u043b\u0433\u0430 \u043f\u043e\u0447\u0438\u0432\u043a\u0430 \u2014 \u0441\u043b\u0435\u0434\u0432\u0430\u0449\u0438\u044f\u0442 \u0431\u043b\u043e\u043a \u0435 \u043f\u043e-\u043c\u0435\u043a"

    const-string v1, "Long rest \u2014 next block softer"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    .line 81
    :cond_56
    const-string v0, "rest_ready"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    const-string v0, "\u041f\u043e\u0447\u0438\u0432\u043a\u0430\u0442\u0430 \u0441\u0442\u0438\u0433\u0430 \u2014 \u0441\u043b\u0435\u0434\u0432\u0430\u0449\u0438\u044f\u0442 \u0431\u043b\u043e\u043a \u0435 \u0441 \u0431\u0443\u0442\u043e\u043d"

    const-string v1, "Rest done \u2014 start the next block by hand"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    .line 82
    :cond_67
    const-string v0, "continue"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    const-string v0, "\u0421\u043b\u0435\u0434\u0432\u0430\u0449 \u0431\u043b\u043e\u043a"

    const-string v1, "Next block"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    .line 83
    :cond_78
    const-string v0, "reentry"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const-string v0, "\u0421\u043b\u0435\u0434 \u0434\u044a\u043b\u0433\u0430 \u043f\u0430\u0443\u0437\u0430 \u2014 \u043f\u043e-\u043c\u0435\u043a\u043e \u043d\u0430\u0447\u0430\u043b\u043e"

    const-string v1, "After a long pause \u2014 softer start"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    .line 84
    :cond_8a
    const-string v0, "hr_block_end"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    const-string v0, "\u041f\u0443\u043b\u0441\u044a\u0442 \u0435 \u043d\u0430\u0434 \u043a\u043e\u0440\u0438\u0434\u043e\u0440\u0430 \u2014 \u0431\u043b\u043e\u043a\u044a\u0442 \u043f\u0440\u0438\u043a\u043b\u044e\u0447\u0432\u0430, \u043f\u043e\u0447\u0438\u0432\u043a\u0430"

    const-string v1, "HR above corridor \u2014 block ends, rest"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    .line 85
    :cond_9c
    const-string v0, "l3_longer_pause"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    const-string v0, "\u041f\u0443\u043b\u0441\u044a\u0442 \u0435 \u043d\u0430\u0434 \u043a\u043e\u0440\u0438\u0434\u043e\u0440\u0430 \u2014 \u043f\u043e-\u0434\u044a\u043b\u0433\u0430 \u043f\u0430\u0443\u0437\u0430"

    const-string v1, "HR above corridor \u2014 longer pause"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    .line 86
    :cond_ae
    const-string v0, "l4_softer_b"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c0

    const-string v0, "\u041f\u0443\u043b\u0441\u044a\u0442 \u0435 \u0432\u0438\u0441\u043e\u043a \u2014 \u043f\u043e-\u043c\u0435\u043a \u0441\u0435\u0433\u043c\u0435\u043d\u0442 B"

    const-string v1, "HR high \u2014 softer segment B"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    .line 87
    :cond_c0
    const-string v0, "u_down"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2

    const-string v0, "\u041f\u0443\u043b\u0441\u044a\u0442 \u043e\u0441\u0442\u0430\u0432\u0430 \u0432\u0438\u0441\u043e\u043a \u2014 \u043f\u043e-\u043d\u0438\u0441\u043a\u0430 \u0441\u0438\u043b\u0430"

    const-string v1, "HR stays high \u2014 lower strength"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    .line 88
    :cond_d2
    const-string v0, "l2_shorter_blocks"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e4

    const-string v0, "\u0421\u044a\u0440\u0446\u0435\u0442\u043e \u0440\u0435\u0430\u0433\u0438\u0440\u0430 \u0441\u0438\u043b\u043d\u043e \u2014 \u043f\u043e-\u043a\u044a\u0441\u0438 \u0431\u043b\u043e\u043a\u043e\u0432\u0435"

    const-string v1, "Strong HR response \u2014 shorter blocks"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    .line 89
    :cond_e4
    const-string v0, "l1_budget"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f6

    const-string v0, "\u0423\u0441\u0442\u043e\u0439\u0447\u0438\u0432\u043e \u043d\u0430\u0442\u043e\u0432\u0430\u0440\u0432\u0430\u043d\u0435 \u2014 \u043f\u043e-\u043c\u0430\u043b\u043a\u0430 \u043e\u0431\u0449\u0430 \u0434\u043e\u0437\u0430"

    const-string v1, "Sustained load \u2014 smaller total dose"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    .line 90
    :cond_f6
    const-string v0, "l1_cooldown"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_106

    const-string v0, "budget_cooldown"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_110

    :cond_106
    const-string v0, "\u0414\u043e\u0441\u0442\u0430\u0442\u044a\u0447\u043d\u043e \u0437\u0430 \u0434\u043d\u0435\u0441 \u2014 \u0440\u0430\u0437\u043f\u0443\u0441\u043a\u0430\u043d\u0435"

    const-string v1, "Enough for today \u2014 cool-down"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    .line 91
    :cond_110
    const-string v0, "below_corridor"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_122

    const-string v0, "\u041f\u043e\u0434 \u043a\u043e\u0440\u0438\u0434\u043e\u0440\u0430 \u2014 \u043f\u043e-\u043a\u0440\u0430\u0442\u043a\u0438 \u043f\u043e\u0447\u0438\u0432\u043a\u0438"

    const-string v1, "Below corridor \u2014 shorter rests"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    .line 92
    :cond_122
    const-string v0, "hr_cap"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_134

    const-string v0, "\u0422\u0430\u0432\u0430\u043d \u043d\u0430 \u043f\u0443\u043b\u0441\u0430 \u2014 \u0441\u0442\u0438\u043c\u0443\u043b\u0430\u0446\u0438\u044f\u0442\u0430 \u0435 \u0441\u043f\u0440\u044f\u043d\u0430"

    const-string v1, "HR ceiling \u2014 stimulation stopped"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    .line 93
    :cond_134
    const-string v0, "can_resume"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_146

    const-string v0, "\u041f\u0443\u043b\u0441\u044a\u0442 \u0441\u0435 \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u0438 \u2014 \u043c\u043e\u0436\u0435 \u0434\u0430 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438"

    const-string v1, "HR recovered \u2014 you may continue"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    .line 94
    :cond_146
    const-string v0, "band_lost_soft"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_158

    const-string v0, "\u041d\u044f\u043c\u0430 \u043f\u0443\u043b\u0441 30 s \u2014 \u0441\u0438\u043b\u0430 \u0434\u043e 80%"

    const-string v1, "No HR for 30 s \u2014 strength capped at 80%"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    .line 95
    :cond_158
    const-string v0, "band_lost_cooldown"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16a

    const-string v0, "\u041d\u044f\u043c\u0430 \u043f\u0443\u043b\u0441 2 \u043c\u0438\u043d \u2014 \u0440\u0430\u0437\u043f\u0443\u0441\u043a\u0430\u043d\u0435"

    const-string v1, "No HR for 2 min \u2014 cool-down"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    .line 96
    :cond_16a
    const-string v0, "non_responder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17c

    const-string v0, "\u041f\u0443\u043b\u0441\u044a\u0442 \u043d\u0435 \u0440\u0435\u0430\u0433\u0438\u0440\u0430 \u2014 \u0443\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430 \u0441\u0430\u043c\u043e \u043f\u043b\u0430\u043d\u044a\u0442"

    const-string v1, "HR not responding \u2014 plan only"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    .line 97
    :cond_17c
    const-string v0, "checkpoint"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18e

    const-string v0, "\u041a\u043e\u043d\u0442\u0440\u043e\u043b\u043d\u0430 \u0442\u043e\u0447\u043a\u0430 \u2014 \u043e\u0446\u0435\u043d\u0438 \u0443\u0441\u0435\u0449\u0430\u043d\u0435\u0442\u043e"

    const-string v1, "Checkpoint \u2014 rate the sensation"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    .line 98
    :cond_18e
    const-string v0, "checkpoint_timeout"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a0

    const-string v0, "\u041d\u044f\u043c\u0430 \u043e\u0442\u0433\u043e\u0432\u043e\u0440 \u2014 \u043f\u0430\u0443\u0437\u0430"

    const-string v1, "No answer \u2014 paused"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    .line 99
    :cond_1a0
    const-string v0, "cr10_down"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b2

    const-string v0, "\u0421\u0438\u043b\u0430\u0442\u0430 \u0435 \u043d\u0430\u043c\u0430\u043b\u0435\u043d\u0430 \u0441\u043f\u043e\u0440\u0435\u0434 \u0443\u0441\u0435\u0449\u0430\u043d\u0435\u0442\u043e"

    const-string v1, "Strength lowered to match sensation"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    .line 100
    :cond_1b2
    const-string v0, "cr10_up"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c4

    const-string v0, "\u0421\u0438\u043b\u0430\u0442\u0430 \u0435 \u0432\u044a\u0440\u043d\u0430\u0442\u0430 \u043a\u044a\u043c \u043a\u0430\u043b\u0438\u0431\u0440\u0438\u0440\u0430\u043d\u0435\u0442\u043e"

    const-string v1, "Strength restored towards calibration"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    .line 101
    :cond_1c4
    const-string v0, "cr10_ok"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d6

    const-string v0, "\u0423\u0441\u0435\u0449\u0430\u043d\u0435\u0442\u043e \u0435 \u0432 \u0446\u0435\u043b\u0442\u0430"

    const-string v1, "Sensation on target"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    .line 102
    :cond_1d6
    const-string v0, "reduce"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e8

    const-string v0, "\u041d\u0430\u043c\u0430\u043b\u0435\u043d\u043e \u0440\u044a\u0447\u043d\u043e \u221210%"

    const-string v1, "Reduced manually \u221210%"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    .line 103
    :cond_1e8
    const-string v0, "user_pause"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1fa

    const-string v0, "\u041f\u0430\u0443\u0437\u0430"

    const-string v1, "Paused"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    .line 104
    :cond_1fa
    const-string v0, "resume"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20c

    const-string v0, "\u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0430\u0432\u0430"

    const-string v1, "Resumed"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    .line 105
    :cond_20c
    const-string v0, "stop"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21e

    const-string v0, "\u0421\u043f\u0440\u044f\u043d\u0430 \u043e\u0442 \u043e\u043f\u0435\u0440\u0430\u0442\u043e\u0440\u0430"

    const-string v1, "Stopped by operator"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    .line 106
    :cond_21e
    const-string v0, "done"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_230

    const-string v0, "\u0421\u0435\u0441\u0438\u044f\u0442\u0430 \u043f\u0440\u0438\u043a\u043b\u044e\u0447\u0438"

    const-string v1, "Session complete"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    .line 107
    :cond_230
    const-string v0, "start"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u0421\u0442\u0430\u0440\u0442"

    const-string v1, "Start"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    .line 75
    :catch_242
    move-exception v0

    goto/16 :goto_4
.end method

.method static bg()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 11
    :try_start_1
    const-string v1, "en"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_e} :catch_14

    move-result v1

    if-nez v1, :cond_12

    .line 13
    :goto_11
    return v0

    .line 11
    :cond_12
    const/4 v0, 0x0

    goto :goto_11

    .line 12
    :catch_14
    move-exception v1

    goto :goto_11
.end method

.method static contraindication(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 112
    const-string v0, "pregnancy"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "\u0411\u0440\u0435\u043c\u0435\u043d\u043d\u043e\u0441\u0442"

    const-string v1, "Pregnancy"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 125
    :cond_10
    :goto_10
    return-object p0

    .line 113
    :cond_11
    const-string v0, "implant"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "\u041f\u0435\u0439\u0441\u043c\u0435\u0439\u043a\u044a\u0440 / \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u043d\u0435\u043d \u0438\u043c\u043f\u043b\u0430\u043d\u0442"

    const-string v1, "Pacemaker / electronic implant"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 114
    :cond_22
    const-string v0, "cardiovascular"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "\u0421\u044a\u0440\u0434\u0435\u0447\u043d\u043e-\u0441\u044a\u0434\u043e\u0432\u043e \u0437\u0430\u0431\u043e\u043b\u044f\u0432\u0430\u043d\u0435"

    const-string v1, "Cardiovascular disease"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 115
    :cond_33
    const-string v0, "circulation"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string v0, "\u0410\u0440\u0442\u0435\u0440\u0438\u0430\u043b\u043d\u0438 \u043d\u0430\u0440\u0443\u0448\u0435\u043d\u0438\u044f / \u0442\u0440\u043e\u043c\u0431\u043e\u0437\u0430"

    const-string v1, "Arterial disorder / thrombosis"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 116
    :cond_44
    const-string v0, "hernia"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    const-string v0, "\u0425\u0435\u0440\u043d\u0438\u044f (\u043a\u043e\u0440\u0435\u043c\u043d\u0430 / \u0438\u043d\u0433\u0432\u0438\u043d\u0430\u043b\u043d\u0430)"

    const-string v1, "Hernia (abdominal / inguinal)"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 117
    :cond_55
    const-string v0, "cancer"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const-string v0, "\u041e\u043d\u043a\u043e\u043b\u043e\u0433\u0438\u0447\u043d\u043e \u0437\u0430\u0431\u043e\u043b\u044f\u0432\u0430\u043d\u0435"

    const-string v1, "Cancer"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 118
    :cond_66
    const-string v0, "bleeding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    const-string v0, "\u041d\u0430\u0440\u0443\u0448\u0435\u043d\u043e \u043a\u0440\u044a\u0432\u043e\u0441\u044a\u0441\u0438\u0440\u0432\u0430\u043d\u0435"

    const-string v1, "Bleeding disorder"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 119
    :cond_77
    const-string v0, "epilepsy"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    const-string v0, "\u0415\u043f\u0438\u043b\u0435\u043f\u0441\u0438\u044f"

    const-string v1, "Epilepsy"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 120
    :cond_88
    const-string v0, "neurological"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    const-string v0, "\u0422\u0435\u0436\u043a\u043e \u043d\u0435\u0432\u0440\u043e\u043b\u043e\u0433\u0438\u0447\u043d\u043e \u0437\u0430\u0431\u043e\u043b\u044f\u0432\u0430\u043d\u0435"

    const-string v1, "Severe neurological disease"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_10

    .line 121
    :cond_9a
    const-string v0, "recent_surgery"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    const-string v0, "\u0421\u043a\u043e\u0440\u043e\u0448\u043d\u0430 \u043e\u043f\u0435\u0440\u0430\u0446\u0438\u044f"

    const-string v1, "Recent surgery"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_10

    .line 122
    :cond_ac
    const-string v0, "skin_lesion"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    const-string v0, "\u0420\u0430\u043d\u0438 / \u043a\u043e\u0436\u043d\u0438 \u043b\u0435\u0437\u0438\u0438 \u043f\u043e\u0434 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438\u0442\u0435"

    const-string v1, "Wounds / skin lesions under electrodes"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_10

    .line 123
    :cond_be
    const-string v0, "kidney"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d0

    const-string v0, "\u0411\u044a\u0431\u0440\u0435\u0447\u043d\u043e \u0437\u0430\u0431\u043e\u043b\u044f\u0432\u0430\u043d\u0435"

    const-string v1, "Kidney disease"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_10

    .line 124
    :cond_d0
    const-string v0, "tuberculosis"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "\u0422\u0443\u0431\u0435\u0440\u043a\u0443\u043b\u043e\u0437\u0430"

    const-string v1, "Tuberculosis"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_10
.end method

.method static flag(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 143
    const-string v0, "NO_BAND"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "\u0411\u0435\u0437 \u0433\u0440\u0438\u0432\u043d\u0430"

    const-string v1, "No band"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 150
    :cond_10
    :goto_10
    return-object p0

    .line 144
    :cond_11
    const-string v0, "HR_SLOW"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "\u041f\u0443\u043b\u0441\u044a\u0442 \u0438\u0434\u0432\u0430 \u0440\u044f\u0434\u043a\u043e \u2014 \u0441\u0430\u043c\u043e \u0442\u0430\u0432\u0430\u043d"

    const-string v1, "HR too slow \u2014 ceiling only"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 145
    :cond_22
    const-string v0, "FLAG_TACHY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "\u041f\u0443\u043b\u0441 \u0432 \u043f\u043e\u043a\u043e\u0439 \u2265 100"

    const-string v1, "Resting HR \u2265 100"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 146
    :cond_33
    const-string v0, "FLAG_BRADY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string v0, "\u041f\u0443\u043b\u0441 \u0432 \u043f\u043e\u043a\u043e\u0439 < 40"

    const-string v1, "Resting HR < 40"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 147
    :cond_44
    const-string v0, "BAND_LOST"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    const-string v0, "\u0417\u0430\u0433\u0443\u0431\u0435\u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430"

    const-string v1, "Band lost"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 148
    :cond_55
    const-string v0, "NON_RESPONDER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const-string v0, "\u041f\u0443\u043b\u0441\u044a\u0442 \u043d\u0435 \u0440\u0435\u0430\u0433\u0438\u0440\u0430"

    const-string v1, "HR non-responder"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 149
    :cond_66
    const-string v0, "BUDGET"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "\u0418\u0437\u0447\u0435\u0440\u043f\u0430\u043d \u0431\u044e\u0434\u0436\u0435\u0442 \u043d\u0430 \u0434\u043e\u0437\u0430\u0442\u0430"

    const-string v1, "Dose budget reached"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10
.end method

.method static goal(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 22
    sget-object v0, Lcom/isaigu/gymapp/ai/AiText$1;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$Goal:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_38

    .line 27
    const-string v0, "\u0426\u0435\u043b\u0443\u043b\u0438\u0442"

    const-string v1, "Cellulite"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_13
    return-object v0

    .line 23
    :pswitch_14
    const-string v0, "\u0422\u043e\u043d\u0443\u0441"

    const-string v1, "Tone"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 24
    :pswitch_1d
    const-string v0, "\u0418\u0437\u0433\u0430\u0440\u044f\u043d\u0435"

    const-string v1, "Fat burn"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 25
    :pswitch_26
    const-string v0, "\u041c\u0430\u0441\u0430\u0436"

    const-string v1, "Massage"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 26
    :pswitch_2f
    const-string v0, "\u0414\u0440\u0435\u043d\u0430\u0436"

    const-string v1, "Drainage"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 22
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_14
        :pswitch_1d
        :pswitch_26
        :pswitch_2f
    .end packed-switch
.end method

.method static goalHint(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 32
    sget-object v0, Lcom/isaigu/gymapp/ai/AiText$1;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$Goal:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_38

    .line 37
    const-string v0, "\u0411\u0435\u0434\u0440\u0430 \u0438 \u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435"

    const-string v1, "Thighs and glutes"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_13
    return-object v0

    .line 33
    :pswitch_14
    const-string v0, "\u0421\u0438\u043b\u0430 \u0438 \u0441\u0442\u044f\u0433\u0430\u043d\u0435 \u00b7 \u0434\u043e 20 \u043c\u0438\u043d"

    const-string v1, "Strength \u00b7 up to 20 min"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 34
    :pswitch_1d
    const-string v0, "\u041c\u0435\u0442\u0430\u0431\u043e\u043b\u0438\u0442\u043d\u0430 \u00b7 30\u201340 \u043c\u0438\u043d"

    const-string v1, "Metabolic \u00b7 30\u201340 min"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 35
    :pswitch_26
    const-string v0, "\u041e\u0442\u043f\u0443\u0441\u043a\u0430\u043d\u0435 \u00b7 \u043d\u0438\u0441\u043a\u0438 \u0447\u0435\u0441\u0442\u043e\u0442\u0438"

    const-string v1, "Relax \u00b7 low frequency"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 36
    :pswitch_2f
    const-string v0, "\u041b\u0438\u043c\u0444\u0435\u043d \u043f\u043e\u0442\u043e\u043a \u00b7 1 Hz"

    const-string v1, "Lymph flow \u00b7 1 Hz"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 32
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_14
        :pswitch_1d
        :pswitch_26
        :pswitch_2f
    .end packed-switch
.end method

.method static mmss(D)Ljava/lang/String;
    .registers 8

    .prologue
    .line 154
    const-wide/16 v0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 155
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    div-int/lit8 v5, v0, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    rem-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static phase(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 42
    sget-object v0, Lcom/isaigu/gymapp/ai/AiText$1;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$PhaseId:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    .line 46
    const-string v0, "\u0420\u0430\u0437\u043f\u0443\u0441\u043a\u0430\u043d\u0435"

    const-string v1, "Cool-down"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_13
    return-object v0

    .line 43
    :pswitch_14
    const-string v0, "\u0417\u0430\u0433\u0440\u044f\u0432\u043a\u0430"

    const-string v1, "Warm-up"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 44
    :pswitch_1d
    const-string v0, "\u041e\u0441\u043d\u043e\u0432\u043d\u0430"

    const-string v1, "Main"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 45
    :pswitch_26
    const-string v0, "\u041c\u0435\u0442\u0430\u0431\u043e\u043b\u0438\u0442\u043d\u0430"

    const-string v1, "Metabolic"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 42
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_14
        :pswitch_1d
        :pswitch_26
    .end packed-switch
.end method

.method static screeningCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 129
    const-string v0, "contra:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiText;->contraindication(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 139
    :cond_11
    :goto_11
    return-object p0

    .line 130
    :cond_12
    const-string v0, "age_under_18"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "\u041f\u043e\u0434 18 \u0433\u043e\u0434\u0438\u043d\u0438"

    const-string v1, "Under 18"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_11

    .line 131
    :cond_23
    const-string v0, "invalid_combination"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "\u0426\u0435\u043b\u0442\u0430 \u0438\u0437\u0438\u0441\u043a\u0432\u0430 \u043f\u0430\u0441\u0438\u0432\u0435\u043d \u0440\u0435\u0436\u0438\u043c"

    const-string v1, "This goal needs passive mode"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_11

    .line 132
    :cond_34
    const-string v0, "fever"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    const-string v0, "\u0422\u0435\u043c\u043f\u0435\u0440\u0430\u0442\u0443\u0440\u0430 / \u0437\u0430\u0431\u043e\u043b\u044f\u0432\u0430\u043d\u0435"

    const-string v1, "Fever / illness"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_11

    .line 133
    :cond_45
    const-string v0, "alcohol_stress"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    const-string v0, "\u0410\u043b\u043a\u043e\u0445\u043e\u043b \u0438\u043b\u0438 \u0441\u0438\u043b\u0435\u043d \u0441\u0442\u0440\u0435\u0441 (48 \u0447)"

    const-string v1, "Alcohol or heavy stress (48 h)"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_11

    .line 134
    :cond_56
    const-string v0, "arrhythmia"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    const-string v0, "\u0418\u0437\u0432\u0435\u0441\u0442\u043d\u0430 \u0430\u0440\u0438\u0442\u043c\u0438\u044f"

    const-string v1, "Known arrhythmia"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_11

    .line 135
    :cond_67
    const-string v0, "not_eaten"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    const-string v0, "\u0425\u0430\u043f\u043d\u0438 ~250 kcal \u0432\u044a\u0433\u043b\u0435\u0445\u0438\u0434\u0440\u0430\u0442\u0438 \u043f\u0440\u0435\u0434\u0438"

    const-string v1, "Eat ~250 kcal carbs before"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_11

    .line 136
    :cond_78
    const-string v0, "not_hydrated"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    const-string v0, "\u0418\u0437\u043f\u0438\u0439 250\u2013500 ml \u0432\u043e\u0434\u0430"

    const-string v1, "Drink 250\u2013500 ml water"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_11

    .line 137
    :cond_89
    const-string v0, "hr_medication"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    const-string v0, "\u041b\u0435\u043a\u0430\u0440\u0441\u0442\u0432\u0430 \u0437\u0430 \u043f\u0443\u043b\u0441\u0430 \u2014 \u043f\u0443\u043b\u0441\u044a\u0442 \u0442\u0435\u0436\u0438 \u043f\u043e-\u043c\u0430\u043b\u043a\u043e"

    const-string v1, "HR medication \u2014 HR weighted less"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_11

    .line 138
    :cond_9b
    const-string v0, "not_rested"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "\u0418\u0437\u043c\u0435\u0440\u0432\u0430\u043d\u0435\u0442\u043e \u0432 \u043f\u043e\u043a\u043e\u0439 \u0449\u0435 \u0435 \u043f\u043e-\u0434\u044a\u043b\u0433\u043e"

    const-string v1, "Rest measurement will be longer"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_11
.end method

.method static state(Lcom/isaigu/gymapp/ai/AiEngine$State;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 51
    sget-object v0, Lcom/isaigu/gymapp/ai/AiText$1;->$SwitchMap$com$isaigu$gymapp$ai$AiEngine$State:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_6e

    .line 62
    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u0430"

    const-string v1, "Ready"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_13
    return-object v0

    .line 52
    :pswitch_14
    const-string v0, "\u0420\u0430\u0431\u043e\u0442\u0430"

    const-string v1, "Work"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 53
    :pswitch_1d
    const-string v0, "\u041f\u043e\u0447\u0438\u0432\u043a\u0430"

    const-string v1, "Rest"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 54
    :pswitch_26
    const-string v0, "\u041a\u043e\u043d\u0442\u0440\u043e\u043b\u043d\u0430 \u0442\u043e\u0447\u043a\u0430"

    const-string v1, "Checkpoint"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 55
    :pswitch_2f
    const-string v0, "hr_cap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 56
    const-string v0, "\u041f\u0430\u0443\u0437\u0430 \u2014 \u043f\u0443\u043b\u0441\u044a\u0442 \u0434\u043e\u0441\u0442\u0438\u0433\u043d\u0430 \u0442\u0430\u0432\u0430\u043d\u0430"

    const-string v1, "Paused \u2014 HR ceiling reached"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 57
    :cond_40
    const-string v0, "\u041f\u0430\u0443\u0437\u0430 \u2014 \u0447\u0430\u043a\u0430 \u043e\u0442\u0433\u043e\u0432\u043e\u0440"

    const-string v1, "Paused \u2014 waiting for answer"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 58
    :pswitch_49
    const-string v0, "\u041d\u0430 \u043f\u0430\u0443\u0437\u0430"

    const-string v1, "Paused"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 59
    :pswitch_52
    const-string v0, "\u0412\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435 \u00b7 60 s"

    const-string v1, "Recovery \u00b7 60 s"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 60
    :pswitch_5b
    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u043e"

    const-string v1, "Done"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 61
    :pswitch_64
    const-string v0, "\u0421\u043f\u0440\u044f\u043d\u0430"

    const-string v1, "Stopped"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 51
    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_14
        :pswitch_1d
        :pswitch_26
        :pswitch_2f
        :pswitch_49
        :pswitch_52
        :pswitch_5b
        :pswitch_64
    .end packed-switch
.end method

.method static t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 18
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiText;->bg()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-object p0

    :cond_7
    move-object p0, p1

    goto :goto_6
.end method
