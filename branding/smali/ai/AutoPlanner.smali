.class public final Lcom/isaigu/gymapp/ai/AutoPlanner;
.super Ljava/lang/Object;
.source "AutoPlanner.java"


# static fields
.field public static final ACTIVE_MAX_S:I = 0x4b0

.field public static final MIN_SECONDS:I = 0x258

.field public static final RECOVERY_S:I = 0x258


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Lcom/isaigu/gymapp/ai/AutoModel$Input;I)Lcom/isaigu/gymapp/ai/AutoModel$Plan;
    .registers 24

    .prologue
    .line 66
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v2

    .line 67
    if-nez v2, :cond_23

    .line 68
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    .line 69
    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    :cond_23
    move-object v5, v2

    .line 71
    new-instance v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-direct {v11}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;-><init>()V

    .line 72
    iput-object v5, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    .line 73
    move-object/from16 v0, p0

    iput-object v0, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    .line 74
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-object/from16 v0, p0

    invoke-static {v5, v2, v0}, Lcom/isaigu/gymapp/ai/AutoPlanner;->maxSeconds(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;)I

    move-result v2

    .line 75
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->totalSeconds:Ljava/lang/Integer;

    if-eqz v3, :cond_51

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->totalSeconds:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    invoke-static {v5, v2, v0, v3}, Lcom/isaigu/gymapp/ai/AutoPlanner;->clampSeconds(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;I)I

    move-result v2

    :cond_51
    iput v2, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->activeS:I

    .line 76
    iget v2, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->activeS:I

    const/16 v3, 0x4b0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-object/from16 v0, p0

    invoke-static {v5, v4, v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->baseSeconds(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v2, v3, :cond_6e

    .line 77
    const-string v2, "\u0412\u0440\u0435\u043c\u0435\u0442\u043e \u0435 \u0441\u044a\u043a\u0440\u0430\u0442\u0435\u043d\u043e: \u0430\u0434\u0430\u043f\u0442\u0430\u0446\u0438\u044f / \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435"

    const-string v3, "Shortened: adaptation / recovery"

    invoke-virtual {v11, v2, v3}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_6e
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 83
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    if-nez v4, :cond_1db

    .line 84
    const-wide v2, 0x3fe6666666666666L    # 0.7

    .line 85
    const-string v4, "\u041f\u044a\u0440\u0432\u0430 \u0441\u0435\u0441\u0438\u044f: \u0434\u043e 70 % \u043e\u0442 \u043a\u0430\u043b\u0438\u0431\u0440\u0438\u0440\u0430\u043d\u0435\u0442\u043e"

    const-string v6, "First session: up to 70 % of the calibration"

    invoke-virtual {v11, v4, v6}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_82
    :goto_82
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    const/16 v6, 0x3c

    if-lt v4, v6, :cond_97

    .line 93
    const-wide v6, 0x3fb999999999999aL    # 0.1

    sub-double/2addr v2, v6

    .line 94
    const-string v4, "60+ \u0433.: \u221210 % \u0441\u0438\u043b\u0430, \u043f\u043e-\u0434\u044a\u043b\u0433\u0438 \u043f\u0430\u0443\u0437\u0438"

    const-string v6, "60+: \u221210 % strength, longer pauses"

    invoke-virtual {v11, v4, v6}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_97
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->measured:Z

    if-nez v4, :cond_ba

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoModel$Input;->bmi()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v4, v6, v8

    if-lez v4, :cond_ba

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoModel$Input;->bmi()D

    move-result-wide v6

    const-wide v8, 0x4032800000000000L    # 18.5

    cmpg-double v4, v6, v8

    if-gez v4, :cond_ba

    .line 99
    const-wide v6, 0x3fb999999999999aL    # 0.1

    sub-double/2addr v2, v6

    .line 101
    :cond_ba
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->isActive()Z

    move-result v4

    if-eqz v4, :cond_238

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->hoursSinceActive:D

    const-wide/16 v8, 0x0

    cmpl-double v4, v6, v8

    if-ltz v4, :cond_238

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->hoursSinceActive:D

    const-wide/high16 v8, 0x4052000000000000L    # 72.0

    cmpg-double v4, v6, v8

    if-gez v4, :cond_238

    const/4 v4, 0x1

    .line 102
    :goto_d5
    if-eqz v4, :cond_e4

    .line 103
    const-wide v6, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v6

    .line 104
    const-string v4, "\u041f\u043e\u0434 72 \u0447 \u043e\u0442 \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0430\u0442\u0430 \u0430\u043a\u0442\u0438\u0432\u043d\u0430: \u221220 %"

    const-string v6, "Under 72 h since the last active: \u221220 %"

    invoke-virtual {v11, v4, v6}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_e4
    const/4 v4, 0x0

    .line 109
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->isActive()Z

    move-result v6

    if-eqz v6, :cond_13b

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->readiness:D

    const-wide v8, 0x3fefae147ae147aeL    # 0.99

    cmpg-double v6, v6, v8

    if-gez v6, :cond_13b

    .line 110
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->readiness:D

    const-wide v8, 0x3fe999999999999aL    # 0.8

    cmpg-double v4, v6, v8

    if-gez v4, :cond_23b

    const/4 v4, 0x2

    .line 111
    :goto_106
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u041a\u0430\u043d\u0442\u0430\u0440\u044a\u0442: \u043d\u0435 \u0435 \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u0435\u043d \u2014 +"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " s \u043f\u0430\u0443\u0437\u0430"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Scale: not recovered \u2014 +"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " s pause"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v6, v7}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_13b
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->measured:Z

    if-eqz v6, :cond_150

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->muscleLow:Z

    if-eqz v6, :cond_150

    .line 115
    add-int/lit8 v4, v4, 0x1

    .line 116
    const-string v6, "\u041a\u0430\u043d\u0442\u0430\u0440\u044a\u0442: \u043c\u0430\u043b\u043a\u043e \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u2014 +1 s \u043f\u0430\u0443\u0437\u0430"

    const-string v7, "Scale: little muscle \u2014 +1 s pause"

    invoke-virtual {v11, v6, v7}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->note(Ljava/lang/String;Ljava/lang/String;)V

    :cond_150
    move v6, v4

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoModel$Input;->solo()Z

    move-result v4

    if-eqz v4, :cond_160

    .line 119
    const-wide v8, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 122
    :cond_160
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->focus:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->cond:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->today:Ljava/util/Set;

    invoke-static {v4, v7, v8}, Lcom/isaigu/gymapp/ai/AiPersonal;->of(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Lcom/isaigu/gymapp/ai/AiPersonal$Effect;

    move-result-object v12

    .line 123
    iget-wide v8, v12, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    mul-double/2addr v2, v8

    .line 124
    const-wide v8, 0x3fd999999999999aL    # 0.4

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iput-wide v2, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phiMax:D

    .line 127
    iget-wide v2, v5, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->envMax:D

    .line 128
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    const/4 v7, 0x3

    if-ge v4, v7, :cond_193

    .line 129
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 131
    :cond_193
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoModel$Input;->solo()Z

    move-result v4

    if-eqz v4, :cond_1a2

    .line 132
    const-wide v8, 0x3ff199999999999aL    # 1.1

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 134
    :cond_1a2
    iput-wide v2, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->envMax:D

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    iget v3, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->activeS:I

    move-object/from16 v0, p0

    invoke-static {v5, v2, v0, v3}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phases(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;I)Ljava/util/List;

    move-result-object v13

    .line 138
    const/4 v2, 0x0

    iput v2, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->totalS:I

    .line 139
    const/4 v2, 0x0

    iput v2, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->recoveryS:I

    .line 140
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1ba
    :goto_1ba
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    .line 141
    iget v4, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->totalS:I

    iget v7, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    add-int/2addr v4, v7

    iput v4, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->totalS:I

    .line 142
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v4

    if-eqz v4, :cond_1ba

    .line 143
    iget v4, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->recoveryS:I

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    add-int/2addr v2, v4

    iput v2, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->recoveryS:I

    goto :goto_1ba

    .line 86
    :cond_1db
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    const/4 v6, 0x2

    if-gt v4, v6, :cond_22a

    .line 87
    const-wide v2, 0x3fe999999999999aL    # 0.8

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u0421\u0435\u0441\u0438\u044f "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": \u0434\u043e 80 %"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Session "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": up to 80 %"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v4, v6}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->note(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_82

    .line 89
    :cond_22a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    const/4 v6, 0x7

    if-gt v4, v6, :cond_82

    .line 90
    const-wide v2, 0x3feccccccccccccdL    # 0.9

    goto/16 :goto_82

    .line 101
    :cond_238
    const/4 v4, 0x0

    goto/16 :goto_d5

    .line 110
    :cond_23b
    const/4 v4, 0x1

    goto/16 :goto_106

    .line 146
    :cond_23e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->intensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoModel$Intensity;->INTENSE:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    if-ne v2, v3, :cond_254

    move-object/from16 v0, p0

    invoke-static {v5, v0}, Lcom/isaigu/gymapp/ai/AutoPlanner;->intenseAllowed(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Z

    move-result v2

    if-nez v2, :cond_254

    .line 147
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoModel$Intensity;->STANDARD:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->intensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    .line 149
    :cond_254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->intensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoModel$Intensity;->SOFT:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    if-ne v2, v3, :cond_359

    const-wide v2, 0x3feb333333333333L    # 0.85

    move-wide v8, v2

    .line 150
    :goto_262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->intensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoModel$Intensity;->SOFT:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    if-ne v2, v3, :cond_36e

    const/4 v2, 0x1

    move v7, v2

    .line 151
    :goto_26c
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_270
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    .line 152
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v3

    if-nez v3, :cond_296

    .line 153
    iget-wide v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiStart:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v8

    move-wide/from16 v0, v16

    iput-wide v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiStart:D

    .line 154
    iget-wide v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiEnd:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v8

    move-wide/from16 v0, v16

    iput-wide v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiEnd:D

    .line 156
    :cond_296
    iget-wide v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    move-wide/from16 v16, v0

    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    cmpl-double v3, v16, v18

    if-nez v3, :cond_2a8

    .line 157
    iget-wide v0, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->envMax:D

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 159
    :cond_2a8
    iget-wide v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    move-wide/from16 v16, v0

    iget-wide v0, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->envMax:D

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->min(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 160
    iget-wide v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    move-wide/from16 v16, v0

    iget-wide v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    move-wide/from16 v18, v0

    iget-wide v0, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->envMax:D

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->min(DD)D

    move-result-wide v18

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 162
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->isActive()Z

    move-result v3

    if-nez v3, :cond_302

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hasTetanic()Z

    move-result v3

    if-eqz v3, :cond_302

    iget-boolean v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    if-nez v3, :cond_302

    .line 163
    iget-wide v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiStart:D

    move-wide/from16 v16, v0

    const-wide v18, 0x3fe6666666666666L    # 0.7

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->min(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiStart:D

    .line 164
    iget-wide v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiEnd:D

    move-wide/from16 v16, v0

    const-wide v18, 0x3fe6666666666666L    # 0.7

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->min(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiEnd:D

    .line 166
    :cond_302
    const/4 v3, 0x0

    move v4, v3

    :goto_304
    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_37e

    .line 167
    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 168
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->isTetanic()Z

    move-result v10

    if-eqz v10, :cond_355

    iget-wide v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->sigma:D

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmpl-double v10, v16, v18

    if-lez v10, :cond_355

    iget-boolean v10, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    if-nez v10, :cond_355

    .line 169
    const/4 v10, 0x1

    iget v15, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    add-int/2addr v15, v7

    invoke-static {v10, v15}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    .line 170
    move-object/from16 v0, p0

    iget v10, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    const/16 v15, 0x3c

    if-lt v10, v15, :cond_346

    .line 171
    iget v10, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    add-int/lit8 v10, v10, 0x2

    iput v10, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    .line 172
    iget v10, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    add-int/lit16 v10, v10, 0xc8

    iput v10, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    .line 174
    :cond_346
    iget v10, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    iget v15, v12, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->offS:I

    add-int/2addr v15, v6

    add-int/2addr v10, v15

    iput v10, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    .line 175
    iget v10, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    iget v15, v12, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->rampUpMs:I

    add-int/2addr v10, v15

    iput v10, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    .line 166
    :cond_355
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_304

    .line 149
    :cond_359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->intensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoModel$Intensity;->INTENSE:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    if-ne v2, v3, :cond_369

    const-wide v2, 0x3ff199999999999aL    # 1.1

    move-wide v8, v2

    goto/16 :goto_262

    :cond_369
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-wide v8, v2

    goto/16 :goto_262

    .line 150
    :cond_36e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->intensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoModel$Intensity;->INTENSE:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    if-ne v2, v3, :cond_37a

    const/4 v2, -0x1

    move v7, v2

    goto/16 :goto_26c

    :cond_37a
    const/4 v2, 0x0

    move v7, v2

    goto/16 :goto_26c

    .line 178
    :cond_37e
    const/4 v3, 0x0

    move v10, v3

    :goto_380
    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v10, v3, :cond_270

    .line 179
    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    add-int/lit8 v4, v10, 0x1

    iget-object v15, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    rem-int/2addr v4, v15

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 180
    iget-object v15, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_3be

    :goto_3b3
    invoke-static {v4, v3, v11, v2}, Lcom/isaigu/gymapp/ai/AutoLimits;->clampStep(Lcom/isaigu/gymapp/ai/AutoModel$Step;Lcom/isaigu/gymapp/ai/AutoModel$Step;Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Phase;)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v3

    invoke-interface {v15, v10, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 178
    add-int/lit8 v3, v10, 0x1

    move v10, v3

    goto :goto_380

    .line 180
    :cond_3be
    const/4 v3, 0x0

    goto :goto_3b3

    .line 184
    :cond_3c0
    iget-object v2, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->intensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoModel$Intensity;->SOFT:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    if-ne v2, v3, :cond_3f0

    .line 186
    const-string v2, "\u041c\u0435\u043a: \u221215 % \u0441\u0438\u043b\u0430, +1 s \u043f\u0430\u0443\u0437\u0430"

    const-string v3, "Soft: \u221215 % strength, +1 s pause"

    invoke-virtual {v11, v2, v3}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_3d4
    :goto_3d4
    iget-object v2, v5, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->zones:[I

    invoke-virtual {v12, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->apply([I)[I

    move-result-object v3

    .line 193
    const/4 v2, 0x0

    :goto_3db
    const/16 v4, 0xa

    if-ge v2, v4, :cond_400

    .line 194
    iget-object v4, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zones:[I

    aget v6, v3, v2

    aput v6, v4, v2

    .line 195
    iget-object v4, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zoneMax:[I

    iget-object v6, v12, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->zoneMax:[I

    aget v6, v6, v2

    aput v6, v4, v2

    .line 193
    add-int/lit8 v2, v2, 0x1

    goto :goto_3db

    .line 187
    :cond_3f0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->intensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoModel$Intensity;->INTENSE:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    if-ne v2, v3, :cond_3d4

    .line 188
    const-string v2, "\u0418\u043d\u0442\u0435\u043d\u0437\u0438\u0432\u0435\u043d: +10 % (\u0434\u043e \u0442\u0430\u0432\u0430\u043d\u0430), \u22121 s \u043f\u0430\u0443\u0437\u0430"

    const-string v3, "Intense: +10 % (to the ceiling), \u22121 s pause"

    invoke-virtual {v11, v2, v3}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->note(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d4

    .line 197
    :cond_400
    const/4 v2, 0x0

    move v4, v2

    :goto_402
    iget-object v2, v12, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->notesBg:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_421

    .line 198
    iget-object v2, v12, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->notesBg:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v12, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->notesEn:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v11, v2, v3}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_402

    .line 200
    :cond_421
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->breastfeeding:Z

    if-eqz v2, :cond_43c

    .line 201
    iget-object v2, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zones:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 202
    iget-object v2, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zoneLocked:[Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 203
    const-string v2, "\u041a\u044a\u0440\u043c\u0435\u043d\u0435: \u0433\u044a\u0440\u0434\u0438\u0442\u0435 \u0441\u0430 \u0438\u0437\u043a\u043b\u044e\u0447\u0435\u043d\u0438"

    const-string v3, "Breastfeeding: chest channel off"

    invoke-virtual {v11, v2, v3}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_43c
    const-string v2, "postpartum"

    iget-object v3, v5, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_485

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->diastasis:Z

    if-eqz v2, :cond_485

    .line 206
    iget-object v2, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zones:[I

    const/4 v3, 0x1

    iget-object v4, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zones:[I

    const/4 v6, 0x1

    aget v4, v4, v6

    const/16 v6, 0x28

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v4, v2, v3

    .line 207
    iget-object v2, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zoneMax:[I

    const/4 v3, 0x1

    const/16 v4, 0x28

    aput v4, v2, v3

    .line 208
    iget-object v3, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zoneLocked:[Z

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    const/4 v6, 0x6

    if-ge v2, v6, :cond_562

    const/4 v2, 0x1

    :goto_470
    aput-boolean v2, v3, v4

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->cond:Ljava/util/Set;

    const-string v3, "diastasis"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_485

    .line 210
    const-string v2, "\u0414\u0438\u0430\u0441\u0442\u0430\u0437\u0430: \u043a\u043e\u0440\u0435\u043c\u044a\u0442 \u0434\u043e 40 %"

    const-string v3, "Diastasis: abs up to 40 %"

    invoke-virtual {v11, v2, v3}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_485
    iget v2, v5, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    iput v2, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Lo:I

    .line 216
    iget v2, v5, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    iput v2, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Hi:I

    .line 217
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    if-nez v2, :cond_4aa

    .line 218
    const/4 v2, 0x2

    iget v3, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Lo:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Lo:I

    .line 219
    iget v2, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Lo:I

    iget v3, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Hi:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Hi:I

    .line 223
    :cond_4aa
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    invoke-static {v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->hrUse(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;)Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    move-result-object v2

    iput-object v2, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiPlanner;->hrMax(Lcom/isaigu/gymapp/ai/AiModel$Sex;I)I

    move-result v2

    iput v2, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrMax:I

    .line 225
    if-lez p1, :cond_565

    const/4 v2, 0x1

    :goto_4c5
    iput-boolean v2, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrRestMeasured:Z

    .line 226
    if-lez p1, :cond_568

    :goto_4c9
    move/from16 v0, p1

    iput v0, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrRest:I

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v2, v3, :cond_56c

    const-wide v2, -0x4056666666666666L    # -0.05

    .line 228
    :goto_4da
    iget-wide v6, v5, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    add-double v8, v6, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    const/16 v6, 0x3c

    if-lt v4, v6, :cond_57f

    const-wide v6, -0x4056666666666666L    # -0.05

    :goto_4eb
    add-double/2addr v8, v6

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoModel$Input;->solo()Z

    move-result v4

    if-eqz v4, :cond_583

    const-wide v6, -0x4056666666666666L    # -0.05

    :goto_4f7
    add-double/2addr v6, v8

    .line 229
    iput-wide v6, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->xCap:D

    .line 230
    invoke-virtual {v11, v6, v7}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrAt(D)I

    move-result v4

    iget v6, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrMax:I

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrCap:I

    .line 231
    iget-object v4, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->CORRIDOR:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    if-ne v4, v6, :cond_539

    .line 232
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->corridor(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)[D

    move-result-object v4

    .line 233
    const/4 v6, 0x0

    aget-wide v6, v4, v6

    iput-wide v6, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->xLo:D

    .line 234
    const/4 v6, 0x1

    aget-wide v6, v4, v6

    add-double/2addr v6, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    const/16 v3, 0x3c

    if-lt v2, v3, :cond_587

    const-wide v2, -0x4056666666666666L    # -0.05

    :goto_526
    add-double/2addr v2, v6

    iput-wide v2, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->xHi:D

    .line 235
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoPlanner;->goalSlimBmi(Lcom/isaigu/gymapp/ai/AutoModel$Input;)Z

    move-result v2

    if-eqz v2, :cond_539

    .line 236
    iget-wide v2, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->xHi:D

    const-wide v6, 0x3fa999999999999aL    # 0.05

    sub-double/2addr v2, v6

    iput-wide v2, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->xHi:D

    .line 241
    :cond_539
    iget-boolean v2, v5, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->doublePulse:Z

    if-eqz v2, :cond_58a

    const-string v2, "postpartum"

    iget-object v3, v5, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    .line 242
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_58a

    :cond_54e
    const/4 v2, 0x1

    :goto_54f
    iput-boolean v2, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->doublePulseAllowed:Z

    .line 245
    invoke-static {v11}, Lcom/isaigu/gymapp/ai/AutoPlanner;->simulateDose(Lcom/isaigu/gymapp/ai/AutoModel$Plan;)D

    move-result-wide v2

    iput-wide v2, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->qPlan:D

    .line 246
    iget-wide v2, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->qPlan:D

    const-wide v4, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v2, v4

    iput-wide v2, v11, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->qBudget:D

    .line 247
    return-object v11

    .line 208
    :cond_562
    const/4 v2, 0x0

    goto/16 :goto_470

    .line 225
    :cond_565
    const/4 v2, 0x0

    goto/16 :goto_4c5

    .line 226
    :cond_568
    const/16 p1, 0x46

    goto/16 :goto_4c9

    .line 227
    :cond_56c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v2, v3, :cond_57b

    const-wide v2, 0x3fa999999999999aL    # 0.05

    goto/16 :goto_4da

    :cond_57b
    const-wide/16 v2, 0x0

    goto/16 :goto_4da

    .line 228
    :cond_57f
    const-wide/16 v6, 0x0

    goto/16 :goto_4eb

    :cond_583
    const-wide/16 v6, 0x0

    goto/16 :goto_4f7

    .line 234
    :cond_587
    const-wide/16 v2, 0x0

    goto :goto_526

    .line 242
    :cond_58a
    const/4 v2, 0x0

    goto :goto_54f
.end method

.method public static clampSeconds(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;I)I
    .registers 6

    .prologue
    .line 55
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoPlanner;->maxSeconds(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;)I

    move-result v0

    .line 56
    const/16 v1, 0x258

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static cycleDose(Lcom/isaigu/gymapp/ai/AutoModel$Step;DZ)D
    .registers 13

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 277
    mul-double v0, v6, p1

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    .line 278
    if-eqz p3, :cond_35

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    if-lez v2, :cond_35

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_35

    .line 279
    mul-double v2, v6, p1

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 281
    :cond_35
    return-wide v0
.end method

.method private static goalSlimBmi(Lcom/isaigu/gymapp/ai/AutoModel$Input;)Z
    .registers 5

    .prologue
    .line 252
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->SLIM:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    if-ne v0, v1, :cond_1a

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->measured:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fatObese:Z

    if-eqz v0, :cond_1a

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoModel$Input;->bmi()D

    move-result-wide v0

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    cmpl-double v0, v0, v2

    if-gez v0, :cond_e

    :cond_1a
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static intenseAllowed(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Z
    .registers 4

    .prologue
    .line 61
    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1b

    iget v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    const/16 v1, 0x41

    if-ge v0, v1, :cond_1b

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AutoModel$Input;->solo()Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public static maxSeconds(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;)I
    .registers 9

    .prologue
    const/16 v3, 0x384

    .line 35
    const/16 v0, 0x4b0

    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->baseSeconds(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 36
    const-string v1, "senior"

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget v1, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1f

    .line 37
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 39
    :cond_1f
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->isActive()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 40
    iget v1, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    if-nez v1, :cond_52

    .line 41
    const/16 v1, 0x2d0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 45
    :cond_2f
    :goto_2f
    iget-wide v2, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->hoursSinceActive:D

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_4b

    iget-wide v2, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->hoursSinceActive:D

    const-wide/high16 v4, 0x4052000000000000L    # 72.0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_4b

    .line 46
    int-to-double v0, v0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 51
    :cond_4b
    :goto_4b
    const/16 v1, 0x258

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 42
    :cond_52
    iget v1, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    const/4 v2, 0x2

    if-gt v1, v2, :cond_2f

    .line 43
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2f

    .line 48
    :cond_5c
    iget v1, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    if-nez v1, :cond_4b

    .line 49
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_4b
.end method

.method public static simulateDose(Lcom/isaigu/gymapp/ai/AutoModel$Plan;)D
    .registers 15

    .prologue
    .line 257
    const-wide/16 v0, 0x0

    .line 258
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-wide v2, v0

    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    .line 259
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 262
    const/4 v5, 0x0

    .line 263
    const/4 v1, 0x0

    move v4, v1

    .line 264
    :goto_20
    iget v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    if-ge v5, v1, :cond_9

    .line 265
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    rem-int v6, v4, v6

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 266
    iget-wide v8, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phiMax:D

    int-to-double v10, v5

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    int-to-double v12, v6

    div-double/2addr v10, v12

    invoke-virtual {v0, v10, v11}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiAt(D)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    iget-wide v10, v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->sigma:D

    mul-double/2addr v8, v10

    .line 267
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-boolean v6, v6, Lcom/isaigu/gymapp/ai/AutoModel$Input;->doublePulse:Z

    if-eqz v6, :cond_5f

    iget-boolean v6, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->doublePulseAllowed:Z

    if-eqz v6, :cond_5f

    const/4 v6, 0x1

    :goto_51
    invoke-static {v1, v8, v9, v6}, Lcom/isaigu/gymapp/ai/AutoPlanner;->cycleDose(Lcom/isaigu/gymapp/ai/AutoModel$Step;DZ)D

    move-result-wide v8

    add-double/2addr v2, v8

    .line 268
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->durationS()I

    move-result v1

    add-int/2addr v5, v1

    .line 269
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    .line 270
    goto :goto_20

    .line 267
    :cond_5f
    const/4 v6, 0x0

    goto :goto_51

    .line 272
    :cond_61
    return-wide v2
.end method
