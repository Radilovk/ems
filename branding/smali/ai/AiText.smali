.class final Lcom/isaigu/gymapp/ai/AiText;
.super Ljava/lang/Object;
.source "AiText.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static action(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 68
    if-nez p0, :cond_5

    .line 69
    const-string p0, ""

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

    const/4 v1, 0x6

    .line 74
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiText;->phase(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_31
    .catchall {:try_start_d .. :try_end_31} :catchall_32

    .line 73
    return-object p0

    .line 75
    :catchall_32
    move-exception v0

    .line 76
    return-object p0

    .line 79
    :cond_34
    const-string v0, "rest"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    const-string p0, "\u041c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u0443\u043c\u043e\u0440\u0430 \u2014 \u043f\u043e\u0447\u0438\u0432\u043a\u0430"

    const-string v0, "Muscle fatigue \u2014 rest"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 80
    :cond_45
    const-string v0, "rest_timeout"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    const-string p0, "\u0414\u044a\u043b\u0433\u0430 \u043f\u043e\u0447\u0438\u0432\u043a\u0430 \u2014 \u0441\u043b\u0435\u0434\u0432\u0430\u0449\u0438\u044f\u0442 \u0431\u043b\u043e\u043a \u0435 \u043f\u043e-\u043c\u0435\u043a"

    const-string v0, "Long rest \u2014 next block softer"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 81
    :cond_56
    const-string v0, "rest_ready"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    const-string p0, "\u041f\u043e\u0447\u0438\u0432\u043a\u0430\u0442\u0430 \u0441\u0442\u0438\u0433\u0430 \u2014 \u0441\u043b\u0435\u0434\u0432\u0430\u0449\u0438\u044f\u0442 \u0431\u043b\u043e\u043a \u0435 \u0441 \u0431\u0443\u0442\u043e\u043d"

    const-string v0, "Rest done \u2014 start the next block by hand"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 82
    :cond_67
    const-string v0, "continue"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    const-string p0, "\u0421\u043b\u0435\u0434\u0432\u0430\u0449 \u0431\u043b\u043e\u043a"

    const-string v0, "Next block"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 83
    :cond_78
    const-string v0, "increase"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    const-string p0, "\u0421\u0438\u043b\u0430\u0442\u0430 \u0435 \u0443\u0432\u0435\u043b\u0438\u0447\u0435\u043d\u0430 +10%"

    const-string v0, "Strength raised +10%"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 84
    :cond_89
    const-string v0, "pause_on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    const-string p0, "\u0414\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441 \u2014 \u0432\u043a\u043b\u044e\u0447\u0435\u043d"

    const-string v0, "Double impulse \u2014 on"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 85
    :cond_9a
    const-string v0, "pause_off"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    const-string p0, "\u0414\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441 \u2014 \u0438\u0437\u043a\u043b\u044e\u0447\u0435\u043d"

    const-string v0, "Double impulse \u2014 off"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 86
    :cond_ab
    const-string v0, "reentry"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    const-string p0, "\u0421\u043b\u0435\u0434 \u0434\u044a\u043b\u0433\u0430 \u043f\u0430\u0443\u0437\u0430 \u2014 \u043f\u043e-\u043c\u0435\u043a\u043e \u043d\u0430\u0447\u0430\u043b\u043e"

    const-string v0, "After a long pause \u2014 softer start"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 87
    :cond_bc
    const-string v0, "hr_block_end"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cd

    const-string p0, "\u041f\u0443\u043b\u0441\u044a\u0442 \u0435 \u043d\u0430\u0434 \u043a\u043e\u0440\u0438\u0434\u043e\u0440\u0430 \u2014 \u0431\u043b\u043e\u043a\u044a\u0442 \u043f\u0440\u0438\u043a\u043b\u044e\u0447\u0432\u0430, \u043f\u043e\u0447\u0438\u0432\u043a\u0430"

    const-string v0, "HR above corridor \u2014 block ends, rest"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 88
    :cond_cd
    const-string v0, "l3_longer_pause"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_de

    const-string p0, "\u041f\u0443\u043b\u0441\u044a\u0442 \u0435 \u043d\u0430\u0434 \u043a\u043e\u0440\u0438\u0434\u043e\u0440\u0430 \u2014 \u043f\u043e-\u0434\u044a\u043b\u0433\u0430 \u043f\u0430\u0443\u0437\u0430"

    const-string v0, "HR above corridor \u2014 longer pause"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 89
    :cond_de
    const-string v0, "l4_softer_b"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ef

    const-string p0, "\u041f\u0443\u043b\u0441\u044a\u0442 \u0435 \u0432\u0438\u0441\u043e\u043a \u2014 \u043f\u043e-\u043c\u0435\u043a \u0441\u0435\u0433\u043c\u0435\u043d\u0442 B"

    const-string v0, "HR high \u2014 softer segment B"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 90
    :cond_ef
    const-string v0, "u_down"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_100

    const-string p0, "\u041f\u0443\u043b\u0441\u044a\u0442 \u043e\u0441\u0442\u0430\u0432\u0430 \u0432\u0438\u0441\u043e\u043a \u2014 \u043f\u043e-\u043d\u0438\u0441\u043a\u0430 \u0441\u0438\u043b\u0430"

    const-string v0, "HR stays high \u2014 lower strength"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 91
    :cond_100
    const-string v0, "l2_shorter_blocks"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_111

    const-string p0, "\u0421\u044a\u0440\u0446\u0435\u0442\u043e \u0440\u0435\u0430\u0433\u0438\u0440\u0430 \u0441\u0438\u043b\u043d\u043e \u2014 \u043f\u043e-\u043a\u044a\u0441\u0438 \u0431\u043b\u043e\u043a\u043e\u0432\u0435"

    const-string v0, "Strong HR response \u2014 shorter blocks"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 92
    :cond_111
    const-string v0, "l1_budget"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_122

    const-string p0, "\u0423\u0441\u0442\u043e\u0439\u0447\u0438\u0432\u043e \u043d\u0430\u0442\u043e\u0432\u0430\u0440\u0432\u0430\u043d\u0435 \u2014 \u043f\u043e-\u043c\u0430\u043b\u043a\u0430 \u043e\u0431\u0449\u0430 \u0434\u043e\u0437\u0430"

    const-string v0, "Sustained load \u2014 smaller total dose"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 93
    :cond_122
    const-string v0, "l1_cooldown"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_256

    const-string v0, "budget_cooldown"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_134

    goto/16 :goto_256

    .line 94
    :cond_134
    const-string v0, "below_corridor"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_145

    const-string p0, "\u041f\u043e\u0434 \u043a\u043e\u0440\u0438\u0434\u043e\u0440\u0430 \u2014 \u043f\u043e-\u043a\u0440\u0430\u0442\u043a\u0438 \u043f\u043e\u0447\u0438\u0432\u043a\u0438"

    const-string v0, "Below corridor \u2014 shorter rests"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 95
    :cond_145
    const-string v0, "hr_cap"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_156

    const-string p0, "\u0422\u0430\u0432\u0430\u043d \u043d\u0430 \u043f\u0443\u043b\u0441\u0430 \u2014 \u0441\u0442\u0438\u043c\u0443\u043b\u0430\u0446\u0438\u044f\u0442\u0430 \u0435 \u0441\u043f\u0440\u044f\u043d\u0430"

    const-string v0, "HR ceiling \u2014 stimulation stopped"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 96
    :cond_156
    const-string v0, "can_resume"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_167

    const-string p0, "\u041f\u0443\u043b\u0441\u044a\u0442 \u0441\u0435 \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u0438 \u2014 \u043c\u043e\u0436\u0435 \u0434\u0430 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438"

    const-string v0, "HR recovered \u2014 you may continue"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 97
    :cond_167
    const-string v0, "band_lost_soft"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_178

    const-string p0, "\u041d\u044f\u043c\u0430 \u043f\u0443\u043b\u0441 30 s \u2014 \u0441\u0438\u043b\u0430 \u0434\u043e 80%"

    const-string v0, "No HR for 30 s \u2014 strength capped at 80%"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 98
    :cond_178
    const-string v0, "band_lost_cooldown"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_189

    const-string p0, "\u041d\u044f\u043c\u0430 \u043f\u0443\u043b\u0441 2 \u043c\u0438\u043d \u2014 \u0440\u0430\u0437\u043f\u0443\u0441\u043a\u0430\u043d\u0435"

    const-string v0, "No HR for 2 min \u2014 cool-down"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 99
    :cond_189
    const-string v0, "non_responder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19a

    const-string p0, "\u041f\u0443\u043b\u0441\u044a\u0442 \u043d\u0435 \u0440\u0435\u0430\u0433\u0438\u0440\u0430 \u2014 \u0443\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430 \u0441\u0430\u043c\u043e \u043f\u043b\u0430\u043d\u044a\u0442"

    const-string v0, "HR not responding \u2014 plan only"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 100
    :cond_19a
    const-string v0, "checkpoint"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ab

    const-string p0, "\u041a\u043e\u043d\u0442\u0440\u043e\u043b\u043d\u0430 \u0442\u043e\u0447\u043a\u0430 \u2014 \u043e\u0446\u0435\u043d\u0438 \u0443\u0441\u0435\u0449\u0430\u043d\u0435\u0442\u043e"

    const-string v0, "Checkpoint \u2014 rate the sensation"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 101
    :cond_1ab
    const-string v0, "checkpoint_timeout"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1bc

    const-string p0, "\u041d\u044f\u043c\u0430 \u043e\u0442\u0433\u043e\u0432\u043e\u0440 \u2014 \u043f\u0430\u0443\u0437\u0430"

    const-string v0, "No answer \u2014 paused"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 102
    :cond_1bc
    const-string v0, "cr10_down"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1cd

    const-string p0, "\u0421\u0438\u043b\u0430\u0442\u0430 \u0435 \u043d\u0430\u043c\u0430\u043b\u0435\u043d\u0430 \u0441\u043f\u043e\u0440\u0435\u0434 \u0443\u0441\u0435\u0449\u0430\u043d\u0435\u0442\u043e"

    const-string v0, "Strength lowered to match sensation"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 103
    :cond_1cd
    const-string v0, "cr10_up"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1de

    const-string p0, "\u0421\u0438\u043b\u0430\u0442\u0430 \u0435 \u0432\u044a\u0440\u043d\u0430\u0442\u0430 \u043a\u044a\u043c \u043a\u0430\u043b\u0438\u0431\u0440\u0438\u0440\u0430\u043d\u0435\u0442\u043e"

    const-string v0, "Strength restored towards calibration"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 104
    :cond_1de
    const-string v0, "cr10_ok"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ef

    const-string p0, "\u0423\u0441\u0435\u0449\u0430\u043d\u0435\u0442\u043e \u0435 \u0432 \u0446\u0435\u043b\u0442\u0430"

    const-string v0, "Sensation on target"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 105
    :cond_1ef
    const-string v0, "reduce"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_200

    const-string p0, "\u041d\u0430\u043c\u0430\u043b\u0435\u043d\u043e \u0440\u044a\u0447\u043d\u043e \u221210%"

    const-string v0, "Reduced manually \u221210%"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 106
    :cond_200
    const-string v0, "user_pause"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_211

    const-string p0, "\u041f\u0430\u0443\u0437\u0430"

    const-string v0, "Paused"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 107
    :cond_211
    const-string v0, "resume"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_222

    const-string p0, "\u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0430\u0432\u0430"

    const-string v0, "Resumed"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 108
    :cond_222
    const-string v0, "stop"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_233

    const-string p0, "\u0421\u043f\u0440\u044f\u043d\u0430 \u043e\u0442 \u043e\u043f\u0435\u0440\u0430\u0442\u043e\u0440\u0430"

    const-string v0, "Stopped by operator"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 109
    :cond_233
    const-string v0, "done"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_244

    const-string p0, "\u0421\u0435\u0441\u0438\u044f\u0442\u0430 \u043f\u0440\u0438\u043a\u043b\u044e\u0447\u0438"

    const-string v0, "Session complete"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 110
    :cond_244
    const-string v0, "start"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_255

    const-string p0, "\u0421\u0442\u0430\u0440\u0442"

    const-string v0, "Start"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 111
    :cond_255
    return-object p0

    .line 93
    :cond_256
    :goto_256
    const-string p0, "\u0414\u043e\u0441\u0442\u0430\u0442\u044a\u0447\u043d\u043e \u0437\u0430 \u0434\u043d\u0435\u0441 \u2014 \u0440\u0430\u0437\u043f\u0443\u0441\u043a\u0430\u043d\u0435"

    const-string v0, "Enough for today \u2014 cool-down"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bg()Z
    .registers 1

    .line 11
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return v0

    .line 12
    :catchall_5
    move-exception v0

    .line 13
    const/4 v0, 0x1

    return v0
.end method

.method static contraindication(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 115
    const-string v0, "pregnancy"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p0, "\u0411\u0440\u0435\u043c\u0435\u043d\u043d\u043e\u0441\u0442"

    const-string v0, "Pregnancy"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 116
    :cond_11
    const-string v0, "implant"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string p0, "\u041f\u0435\u0439\u0441\u043c\u0435\u0439\u043a\u044a\u0440 / \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u043d\u0435\u043d \u0438\u043c\u043f\u043b\u0430\u043d\u0442"

    const-string v0, "Pacemaker / electronic implant"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 117
    :cond_22
    const-string v0, "cardiovascular"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string p0, "\u0421\u044a\u0440\u0434\u0435\u0447\u043d\u043e-\u0441\u044a\u0434\u043e\u0432\u043e \u0437\u0430\u0431\u043e\u043b\u044f\u0432\u0430\u043d\u0435"

    const-string v0, "Cardiovascular disease"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 118
    :cond_33
    const-string v0, "circulation"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string p0, "\u0410\u0440\u0442\u0435\u0440\u0438\u0430\u043b\u043d\u0438 \u043d\u0430\u0440\u0443\u0448\u0435\u043d\u0438\u044f / \u0442\u0440\u043e\u043c\u0431\u043e\u0437\u0430"

    const-string v0, "Arterial disorder / thrombosis"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 119
    :cond_44
    const-string v0, "hernia"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    const-string p0, "\u0425\u0435\u0440\u043d\u0438\u044f (\u043a\u043e\u0440\u0435\u043c\u043d\u0430 / \u0438\u043d\u0433\u0432\u0438\u043d\u0430\u043b\u043d\u0430)"

    const-string v0, "Hernia (abdominal / inguinal)"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 120
    :cond_55
    const-string v0, "cancer"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const-string p0, "\u041e\u043d\u043a\u043e\u043b\u043e\u0433\u0438\u0447\u043d\u043e \u0437\u0430\u0431\u043e\u043b\u044f\u0432\u0430\u043d\u0435"

    const-string v0, "Cancer"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 121
    :cond_66
    const-string v0, "bleeding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    const-string p0, "\u041d\u0430\u0440\u0443\u0448\u0435\u043d\u043e \u043a\u0440\u044a\u0432\u043e\u0441\u044a\u0441\u0438\u0440\u0432\u0430\u043d\u0435"

    const-string v0, "Bleeding disorder"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 122
    :cond_77
    const-string v0, "epilepsy"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    const-string p0, "\u0415\u043f\u0438\u043b\u0435\u043f\u0441\u0438\u044f"

    const-string v0, "Epilepsy"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 123
    :cond_88
    const-string v0, "neurological"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    const-string p0, "\u0422\u0435\u0436\u043a\u043e \u043d\u0435\u0432\u0440\u043e\u043b\u043e\u0433\u0438\u0447\u043d\u043e \u0437\u0430\u0431\u043e\u043b\u044f\u0432\u0430\u043d\u0435"

    const-string v0, "Severe neurological disease"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 124
    :cond_99
    const-string v0, "recent_surgery"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    const-string p0, "\u0421\u043a\u043e\u0440\u043e\u0448\u043d\u0430 \u043e\u043f\u0435\u0440\u0430\u0446\u0438\u044f"

    const-string v0, "Recent surgery"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 125
    :cond_aa
    const-string v0, "skin_lesion"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bb

    const-string p0, "\u0420\u0430\u043d\u0438 / \u043a\u043e\u0436\u043d\u0438 \u043b\u0435\u0437\u0438\u0438 \u043f\u043e\u0434 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438\u0442\u0435"

    const-string v0, "Wounds / skin lesions under electrodes"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 126
    :cond_bb
    const-string v0, "kidney"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cc

    const-string p0, "\u0411\u044a\u0431\u0440\u0435\u0447\u043d\u043e \u0437\u0430\u0431\u043e\u043b\u044f\u0432\u0430\u043d\u0435"

    const-string v0, "Kidney disease"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 127
    :cond_cc
    const-string v0, "tuberculosis"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dd

    const-string p0, "\u0422\u0443\u0431\u0435\u0440\u043a\u0443\u043b\u043e\u0437\u0430"

    const-string v0, "Tuberculosis"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 128
    :cond_dd
    return-object p0
.end method

.method static flag(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 146
    const-string v0, "NO_BAND"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p0, "\u0411\u0435\u0437 \u0433\u0440\u0438\u0432\u043d\u0430"

    const-string v0, "No band"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 147
    :cond_11
    const-string v0, "HR_SLOW"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string p0, "\u041f\u0443\u043b\u0441\u044a\u0442 \u0438\u0434\u0432\u0430 \u0440\u044f\u0434\u043a\u043e \u2014 \u0441\u0430\u043c\u043e \u0442\u0430\u0432\u0430\u043d"

    const-string v0, "HR too slow \u2014 ceiling only"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 148
    :cond_22
    const-string v0, "FLAG_TACHY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string p0, "\u041f\u0443\u043b\u0441 \u0432 \u043f\u043e\u043a\u043e\u0439 \u2265 100"

    const-string v0, "Resting HR \u2265 100"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 149
    :cond_33
    const-string v0, "FLAG_BRADY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string p0, "\u041f\u0443\u043b\u0441 \u0432 \u043f\u043e\u043a\u043e\u0439 < 40"

    const-string v0, "Resting HR < 40"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 150
    :cond_44
    const-string v0, "BAND_LOST"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    const-string p0, "\u0417\u0430\u0433\u0443\u0431\u0435\u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430"

    const-string v0, "Band lost"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 151
    :cond_55
    const-string v0, "NON_RESPONDER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const-string p0, "\u041f\u0443\u043b\u0441\u044a\u0442 \u043d\u0435 \u0440\u0435\u0430\u0433\u0438\u0440\u0430"

    const-string v0, "HR non-responder"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 152
    :cond_66
    const-string v0, "BUDGET"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    const-string p0, "\u0418\u0437\u0447\u0435\u0440\u043f\u0430\u043d \u0431\u044e\u0434\u0436\u0435\u0442 \u043d\u0430 \u0434\u043e\u0437\u0430\u0442\u0430"

    const-string v0, "Dose budget reached"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 153
    :cond_77
    return-object p0
.end method

.method static goal(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Ljava/lang/String;
    .registers 2

    .line 22
    sget-object v0, Lcom/isaigu/gymapp/ai/AiText$1;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$Goal:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_38

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2f

    const/4 v0, 0x3

    if-eq p0, v0, :cond_26

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1d

    .line 27
    const-string p0, "\u0426\u0435\u043b\u0443\u043b\u0438\u0442"

    const-string v0, "Cellulite"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 26
    :cond_1d
    const-string p0, "\u0414\u0440\u0435\u043d\u0430\u0436"

    const-string v0, "Drainage"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 25
    :cond_26
    const-string p0, "\u041c\u0430\u0441\u0430\u0436"

    const-string v0, "Massage"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 24
    :cond_2f
    const-string p0, "\u0418\u0437\u0433\u0430\u0440\u044f\u043d\u0435"

    const-string v0, "Fat burn"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 23
    :cond_38
    const-string p0, "\u0422\u043e\u043d\u0443\u0441"

    const-string v0, "Tone"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static goalHint(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Ljava/lang/String;
    .registers 2

    .line 32
    sget-object v0, Lcom/isaigu/gymapp/ai/AiText$1;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$Goal:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_38

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2f

    const/4 v0, 0x3

    if-eq p0, v0, :cond_26

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1d

    .line 37
    const-string p0, "\u0411\u0435\u0434\u0440\u0430 \u0438 \u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435"

    const-string v0, "Thighs and glutes"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 36
    :cond_1d
    const-string p0, "\u041b\u0438\u043c\u0444\u0435\u043d \u043f\u043e\u0442\u043e\u043a \u00b7 1 Hz"

    const-string v0, "Lymph flow \u00b7 1 Hz"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 35
    :cond_26
    const-string p0, "\u041e\u0442\u043f\u0443\u0441\u043a\u0430\u043d\u0435 \u00b7 \u043d\u0438\u0441\u043a\u0438 \u0447\u0435\u0441\u0442\u043e\u0442\u0438"

    const-string v0, "Relax \u00b7 low frequency"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 34
    :cond_2f
    const-string p0, "\u041c\u0435\u0442\u0430\u0431\u043e\u043b\u0438\u0442\u043d\u0430 \u00b7 30\u201340 \u043c\u0438\u043d"

    const-string v0, "Metabolic \u00b7 30\u201340 min"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 33
    :cond_38
    const-string p0, "\u0421\u0438\u043b\u0430 \u0438 \u0441\u0442\u044f\u0433\u0430\u043d\u0435 \u00b7 \u0434\u043e 20 \u043c\u0438\u043d"

    const-string v0, "Strength \u00b7 up to 20 min"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static mmss(D)Ljava/lang/String;
    .registers 5

    .line 176
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    long-to-int p1, p0

    .line 177
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    div-int/lit8 v1, p1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    rem-int/lit8 p1, p1, 0x3c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "%d:%02d"

    invoke-static {p0, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static pauseHint(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Ljava/lang/String;
    .registers 2

    .line 158
    sget-object v0, Lcom/isaigu/gymapp/ai/AiText$1;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$Goal:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_32

    const/4 v0, 0x2

    if-eq p0, v0, :cond_29

    const/4 v0, 0x3

    if-eq p0, v0, :cond_20

    const/4 v0, 0x5

    if-eq p0, v0, :cond_17

    .line 171
    const-string p0, ""

    return-object p0

    .line 166
    :cond_17
    const-string p0, "\u0412 \u0441\u0438\u043b\u043e\u0432\u0430\u0442\u0430 \u0447\u0430\u0441\u0442, 8 Hz \u2014 \u0441\u0442\u0438\u043c\u0443\u043b \u0437\u0430 \u0442\u044a\u043a\u0430\u043d\u0442\u0430."

    const-string v0, "In the strength part, 8 Hz \u2014 a tissue stimulus."

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 169
    :cond_20
    const-string p0, "\u0411\u0430\u0432\u0435\u043d \u0440\u0438\u0442\u044a\u043c \u043c\u0435\u0436\u0434\u0443 \u0438\u043c\u043f\u0443\u043b\u0441\u0438\u0442\u0435."

    const-string v0, "A slow rhythm between impulses."

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 163
    :cond_29
    const-string p0, "\u0412 \u0437\u0430\u0433\u0440\u044f\u0432\u043a\u0430\u0442\u0430 \u0438 \u043e\u0441\u043d\u043e\u0432\u043d\u0430\u0442\u0430 \u0447\u0430\u0441\u0442 \u2014 \u043f\u043e\u0432\u0435\u0447\u0435 \u0438\u0437\u0433\u0430\u0440\u044f\u043d\u0435."

    const-string v0, "In the warm-up and main part \u2014 more burn."

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 160
    :cond_32
    const-string p0, "\u0412 \u0437\u0430\u0433\u0440\u044f\u0432\u043a\u0430\u0442\u0430; \u0441\u0438\u043b\u043e\u0432\u0430\u0442\u0430 \u0447\u0430\u0441\u0442 \u043e\u0441\u0442\u0430\u0432\u0430 \u0441 \u043f\u044a\u043b\u043d\u0430 \u043f\u043e\u0447\u0438\u0432\u043a\u0430."

    const-string v0, "In the warm-up; the strength part keeps full rest."

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static phase(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)Ljava/lang/String;
    .registers 2

    .line 42
    sget-object v0, Lcom/isaigu/gymapp/ai/AiText$1;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$PhaseId:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_23

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1a

    .line 46
    const-string p0, "\u0420\u0430\u0437\u043f\u0443\u0441\u043a\u0430\u043d\u0435"

    const-string v0, "Cool-down"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 45
    :cond_1a
    const-string p0, "\u041c\u0435\u0442\u0430\u0431\u043e\u043b\u0438\u0442\u043d\u0430"

    const-string v0, "Metabolic"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 44
    :cond_23
    const-string p0, "\u041e\u0441\u043d\u043e\u0432\u043d\u0430"

    const-string v0, "Main"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 43
    :cond_2c
    const-string p0, "\u0417\u0430\u0433\u0440\u044f\u0432\u043a\u0430"

    const-string v0, "Warm-up"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static screeningCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 132
    const-string v0, "contra:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiText;->contraindication(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 133
    :cond_12
    const-string v0, "age_under_18"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string p0, "\u041f\u043e\u0434 18 \u0433\u043e\u0434\u0438\u043d\u0438"

    const-string v0, "Under 18"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 134
    :cond_23
    const-string v0, "invalid_combination"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const-string p0, "\u0426\u0435\u043b\u0442\u0430 \u0438\u0437\u0438\u0441\u043a\u0432\u0430 \u043f\u0430\u0441\u0438\u0432\u0435\u043d \u0440\u0435\u0436\u0438\u043c"

    const-string v0, "This goal needs passive mode"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 135
    :cond_34
    const-string v0, "fever"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    const-string p0, "\u0422\u0435\u043c\u043f\u0435\u0440\u0430\u0442\u0443\u0440\u0430 / \u0437\u0430\u0431\u043e\u043b\u044f\u0432\u0430\u043d\u0435"

    const-string v0, "Fever / illness"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 136
    :cond_45
    const-string v0, "alcohol_stress"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    const-string p0, "\u0410\u043b\u043a\u043e\u0445\u043e\u043b \u0438\u043b\u0438 \u0441\u0438\u043b\u0435\u043d \u0441\u0442\u0440\u0435\u0441 (48 \u0447)"

    const-string v0, "Alcohol or heavy stress (48 h)"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 137
    :cond_56
    const-string v0, "arrhythmia"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    const-string p0, "\u0418\u0437\u0432\u0435\u0441\u0442\u043d\u0430 \u0430\u0440\u0438\u0442\u043c\u0438\u044f"

    const-string v0, "Known arrhythmia"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 138
    :cond_67
    const-string v0, "not_eaten"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    const-string p0, "\u0425\u0430\u043f\u043d\u0438 ~250 kcal \u0432\u044a\u0433\u043b\u0435\u0445\u0438\u0434\u0440\u0430\u0442\u0438 \u043f\u0440\u0435\u0434\u0438"

    const-string v0, "Eat ~250 kcal carbs before"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 139
    :cond_78
    const-string v0, "not_hydrated"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    const-string p0, "\u0418\u0437\u043f\u0438\u0439 250\u2013500 ml \u0432\u043e\u0434\u0430"

    const-string v0, "Drink 250\u2013500 ml water"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 140
    :cond_89
    const-string v0, "hr_medication"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    const-string p0, "\u041b\u0435\u043a\u0430\u0440\u0441\u0442\u0432\u0430 \u0437\u0430 \u043f\u0443\u043b\u0441\u0430 \u2014 \u043f\u0443\u043b\u0441\u044a\u0442 \u0442\u0435\u0436\u0438 \u043f\u043e-\u043c\u0430\u043b\u043a\u043e"

    const-string v0, "HR medication \u2014 HR weighted less"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 141
    :cond_9a
    const-string v0, "not_rested"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    const-string p0, "\u0418\u0437\u043c\u0435\u0440\u0432\u0430\u043d\u0435\u0442\u043e \u0432 \u043f\u043e\u043a\u043e\u0439 \u0449\u0435 \u0435 \u043f\u043e-\u0434\u044a\u043b\u0433\u043e"

    const-string v0, "Rest measurement will be longer"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 142
    :cond_ab
    return-object p0
.end method

.method static state(Lcom/isaigu/gymapp/ai/AiEngine$State;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 51
    sget-object v0, Lcom/isaigu/gymapp/ai/AiText$1;->$SwitchMap$com$isaigu$gymapp$ai$AiEngine$State:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine$State;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_6e

    .line 62
    const-string p0, "\u0413\u043e\u0442\u043e\u0432\u0430"

    const-string p1, "Ready"

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 61
    :pswitch_14
    const-string p0, "\u0421\u043f\u0440\u044f\u043d\u0430"

    const-string p1, "Stopped"

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 60
    :pswitch_1d
    const-string p0, "\u0413\u043e\u0442\u043e\u0432\u043e"

    const-string p1, "Done"

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 59
    :pswitch_26
    const-string p0, "\u0412\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435 \u00b7 60 s"

    const-string p1, "Recovery \u00b7 60 s"

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 58
    :pswitch_2f
    const-string p0, "\u041d\u0430 \u043f\u0430\u0443\u0437\u0430"

    const-string p1, "Paused"

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 55
    :pswitch_38
    const-string p0, "hr_cap"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_49

    .line 56
    const-string p0, "\u041f\u0430\u0443\u0437\u0430 \u2014 \u043f\u0443\u043b\u0441\u044a\u0442 \u0434\u043e\u0441\u0442\u0438\u0433\u043d\u0430 \u0442\u0430\u0432\u0430\u043d\u0430"

    const-string p1, "Paused \u2014 HR ceiling reached"

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_51

    .line 57
    :cond_49
    const-string p0, "\u041f\u0430\u0443\u0437\u0430 \u2014 \u0447\u0430\u043a\u0430 \u043e\u0442\u0433\u043e\u0432\u043e\u0440"

    const-string p1, "Paused \u2014 waiting for answer"

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 55
    :goto_51
    return-object p0

    .line 54
    :pswitch_52
    const-string p0, "\u041a\u043e\u043d\u0442\u0440\u043e\u043b\u043d\u0430 \u0442\u043e\u0447\u043a\u0430"

    const-string p1, "Checkpoint"

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 53
    :pswitch_5b
    const-string p0, "\u041f\u043e\u0447\u0438\u0432\u043a\u0430"

    const-string p1, "Rest"

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 52
    :pswitch_64
    const-string p0, "\u0420\u0430\u0431\u043e\u0442\u0430"

    const-string p1, "Work"

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_64
        :pswitch_5b
        :pswitch_52
        :pswitch_38
        :pswitch_2f
        :pswitch_26
        :pswitch_1d
        :pswitch_14
    .end packed-switch
.end method

.method static t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 18
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiText;->bg()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    move-object p0, p1

    :goto_8
    return-object p0
.end method
