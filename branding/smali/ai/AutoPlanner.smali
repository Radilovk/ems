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
    .registers 22

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
    new-instance v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-direct {v10}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;-><init>()V

    .line 72
    iput-object v5, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    .line 73
    move-object/from16 v0, p0

    iput-object v0, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

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
    iput v2, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->activeS:I

    .line 76
    iget v2, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->activeS:I

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

    invoke-virtual {v10, v2, v3}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_6e
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 83
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    if-nez v4, :cond_1cb

    .line 84
    const-wide v2, 0x3fe6666666666666L    # 0.7

    .line 85
    const-string v4, "\u041f\u044a\u0440\u0432\u0430 \u0441\u0435\u0441\u0438\u044f: \u0434\u043e 70 % \u043e\u0442 \u043a\u0430\u043b\u0438\u0431\u0440\u0438\u0440\u0430\u043d\u0435\u0442\u043e"

    const-string v6, "First session: up to 70 % of the calibration"

    invoke-virtual {v10, v4, v6}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->note(Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-virtual {v10, v4, v6}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_97
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->measured:Z

    if-eqz v4, :cond_228

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->muscleLow:Z

    if-eqz v4, :cond_b6

    .line 99
    :goto_a3
    const-wide v6, 0x3fb999999999999aL    # 0.1

    sub-double/2addr v2, v6

    .line 100
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->measured:Z

    if-eqz v4, :cond_b6

    .line 101
    const-string v4, "\u041a\u0430\u043d\u0442\u0430\u0440\u044a\u0442: \u043c\u0430\u043b\u043a\u043e \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u2014 \u221210 % \u0441\u0438\u043b\u0430"

    const-string v6, "Scale: little muscle \u2014 \u221210 % strength"

    invoke-virtual {v10, v4, v6}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_b6
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->isActive()Z

    move-result v4

    if-eqz v4, :cond_dd

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->hoursSinceActive:D

    const-wide/16 v8, 0x0

    cmpl-double v4, v6, v8

    if-ltz v4, :cond_dd

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->hoursSinceActive:D

    const-wide/high16 v8, 0x4052000000000000L    # 72.0

    cmpg-double v4, v6, v8

    if-gez v4, :cond_dd

    .line 105
    const-wide v6, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v6

    .line 106
    const-string v4, "\u041f\u043e\u0434 72 \u0447 \u043e\u0442 \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0430\u0442\u0430 \u0430\u043a\u0442\u0438\u0432\u043d\u0430: \u221220 %"

    const-string v6, "Under 72 h since the last active: \u221220 %"

    invoke-virtual {v10, v4, v6}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_dd
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->isActive()Z

    move-result v4

    if-eqz v4, :cond_139

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->readiness:D

    const-wide v8, 0x3fefae147ae147aeL    # 0.99

    cmpg-double v4, v6, v8

    if-gez v4, :cond_139

    .line 110
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->readiness:D

    mul-double/2addr v2, v6

    .line 111
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->readiness:D

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v4, v6

    .line 112
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u041a\u0430\u043d\u0442\u0430\u0440\u044a\u0442: \u043d\u0435 \u0435 \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u0435\u043d \u2014 \u2212"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " %"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Scale: not recovered \u2014 \u2212"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " %"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v6, v4}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_139
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoModel$Input;->solo()Z

    move-result v4

    if-eqz v4, :cond_148

    .line 115
    const-wide v6, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 118
    :cond_148
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->focus:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->scaleFocus:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/ai/AiPersonal;->withScaleFocus(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->cond:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->today:Ljava/util/Set;

    invoke-static {v4, v6, v7}, Lcom/isaigu/gymapp/ai/AiPersonal;->of(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Lcom/isaigu/gymapp/ai/AiPersonal$Effect;

    move-result-object v11

    .line 119
    iget-wide v6, v11, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    mul-double/2addr v2, v6

    .line 120
    const-wide v6, 0x3fd999999999999aL    # 0.4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iput-wide v2, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phiMax:D

    .line 123
    iget-wide v2, v5, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->envMax:D

    .line 124
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    const/4 v6, 0x3

    if-ge v4, v6, :cond_183

    .line 125
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 127
    :cond_183
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoModel$Input;->solo()Z

    move-result v4

    if-eqz v4, :cond_192

    .line 128
    const-wide v6, 0x3ff199999999999aL    # 1.1

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 130
    :cond_192
    iput-wide v2, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->envMax:D

    .line 133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    iget v3, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->activeS:I

    move-object/from16 v0, p0

    invoke-static {v5, v2, v0, v3}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phases(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;I)Ljava/util/List;

    move-result-object v12

    .line 134
    const/4 v2, 0x0

    iput v2, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->totalS:I

    .line 135
    const/4 v2, 0x0

    iput v2, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->recoveryS:I

    .line 136
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1aa
    :goto_1aa
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_241

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    .line 137
    iget v4, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->totalS:I

    iget v6, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    add-int/2addr v4, v6

    iput v4, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->totalS:I

    .line 138
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v4

    if-eqz v4, :cond_1aa

    .line 139
    iget v4, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->recoveryS:I

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    add-int/2addr v2, v4

    iput v2, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->recoveryS:I

    goto :goto_1aa

    .line 86
    :cond_1cb
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    const/4 v6, 0x2

    if-gt v4, v6, :cond_21a

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

    invoke-virtual {v10, v4, v6}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->note(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_82

    .line 89
    :cond_21a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    const/4 v6, 0x7

    if-gt v4, v6, :cond_82

    .line 90
    const-wide v2, 0x3feccccccccccccdL    # 0.9

    goto/16 :goto_82

    .line 98
    :cond_228
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoModel$Input;->bmi()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v4, v6, v8

    if-lez v4, :cond_b6

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoModel$Input;->bmi()D

    move-result-wide v6

    const-wide v8, 0x4032800000000000L    # 18.5

    cmpg-double v4, v6, v8

    if-gez v4, :cond_b6

    goto/16 :goto_a3

    .line 142
    :cond_241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->intensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoModel$Intensity;->INTENSE:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    if-ne v2, v3, :cond_257

    move-object/from16 v0, p0

    invoke-static {v5, v0}, Lcom/isaigu/gymapp/ai/AutoPlanner;->intenseAllowed(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Z

    move-result v2

    if-nez v2, :cond_257

    .line 143
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoModel$Intensity;->STANDARD:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->intensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    .line 145
    :cond_257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->intensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoModel$Intensity;->SOFT:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    if-ne v2, v3, :cond_339

    const-wide v2, 0x3feb333333333333L    # 0.85

    move-wide v6, v2

    .line 146
    :goto_265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->intensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoModel$Intensity;->SOFT:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    if-ne v2, v3, :cond_34e

    const/4 v2, 0x1

    move v8, v2

    .line 147
    :goto_26f
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_273
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    .line 148
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v3

    if-nez v3, :cond_28f

    .line 149
    iget-wide v14, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiStart:D

    mul-double/2addr v14, v6

    iput-wide v14, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiStart:D

    .line 150
    iget-wide v14, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiEnd:D

    mul-double/2addr v14, v6

    iput-wide v14, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiEnd:D

    .line 152
    :cond_28f
    iget-wide v14, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    cmpl-double v3, v14, v16

    if-nez v3, :cond_29b

    .line 153
    iget-wide v14, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->envMax:D

    iput-wide v14, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 155
    :cond_29b
    iget-wide v14, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    iget-wide v0, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->envMax:D

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(DD)D

    move-result-wide v14

    iput-wide v14, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 156
    iget-wide v14, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    iget-wide v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    move-wide/from16 v16, v0

    iget-wide v0, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->envMax:D

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->min(DD)D

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    iput-wide v14, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 158
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->isActive()Z

    move-result v3

    if-nez v3, :cond_2e5

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hasTetanic()Z

    move-result v3

    if-eqz v3, :cond_2e5

    iget-boolean v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    if-nez v3, :cond_2e5

    .line 159
    iget-wide v14, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiStart:D

    const-wide v16, 0x3fe6666666666666L    # 0.7

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(DD)D

    move-result-wide v14

    iput-wide v14, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiStart:D

    .line 160
    iget-wide v14, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiEnd:D

    const-wide v16, 0x3fe6666666666666L    # 0.7

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(DD)D

    move-result-wide v14

    iput-wide v14, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiEnd:D

    .line 162
    :cond_2e5
    const/4 v3, 0x0

    move v4, v3

    :goto_2e7
    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_35e

    .line 163
    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 164
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->isTetanic()Z

    move-result v9

    if-eqz v9, :cond_335

    iget-wide v14, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->sigma:D

    const-wide/16 v16, 0x0

    cmpl-double v9, v14, v16

    if-lez v9, :cond_335

    iget-boolean v9, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    if-nez v9, :cond_335

    .line 165
    const/4 v9, 0x1

    iget v14, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    add-int/2addr v14, v8

    invoke-static {v9, v14}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    .line 166
    move-object/from16 v0, p0

    iget v9, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    const/16 v14, 0x3c

    if-lt v9, v14, :cond_327

    .line 167
    iget v9, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    add-int/lit8 v9, v9, 0x2

    iput v9, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    .line 168
    iget v9, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    add-int/lit16 v9, v9, 0xc8

    iput v9, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    .line 170
    :cond_327
    iget v9, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    iget v14, v11, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->offS:I

    add-int/2addr v9, v14

    iput v9, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    .line 171
    iget v9, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    iget v14, v11, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->rampUpMs:I

    add-int/2addr v9, v14

    iput v9, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    .line 162
    :cond_335
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_2e7

    .line 145
    :cond_339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->intensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoModel$Intensity;->INTENSE:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    if-ne v2, v3, :cond_349

    const-wide v2, 0x3ff199999999999aL    # 1.1

    move-wide v6, v2

    goto/16 :goto_265

    :cond_349
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-wide v6, v2

    goto/16 :goto_265

    .line 146
    :cond_34e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->intensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoModel$Intensity;->INTENSE:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    if-ne v2, v3, :cond_35a

    const/4 v2, -0x1

    move v8, v2

    goto/16 :goto_26f

    :cond_35a
    const/4 v2, 0x0

    move v8, v2

    goto/16 :goto_26f

    .line 174
    :cond_35e
    const/4 v3, 0x0

    move v9, v3

    :goto_360
    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v9, v3, :cond_273

    .line 175
    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    add-int/lit8 v4, v9, 0x1

    iget-object v14, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    rem-int/2addr v4, v14

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 176
    iget-object v14, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    iget-object v15, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_39a

    :goto_38f
    invoke-static {v4, v3, v10, v2}, Lcom/isaigu/gymapp/ai/AutoLimits;->clampStep(Lcom/isaigu/gymapp/ai/AutoModel$Step;Lcom/isaigu/gymapp/ai/AutoModel$Step;Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Phase;)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v3

    invoke-interface {v14, v9, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 174
    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_360

    .line 176
    :cond_39a
    const/4 v3, 0x0

    goto :goto_38f

    .line 180
    :cond_39c
    iget-object v2, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->intensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoModel$Intensity;->SOFT:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    if-ne v2, v3, :cond_3cc

    .line 182
    const-string v2, "\u041c\u0435\u043a: \u221215 % \u0441\u0438\u043b\u0430, +1 s \u043f\u0430\u0443\u0437\u0430"

    const-string v3, "Soft: \u221215 % strength, +1 s pause"

    invoke-virtual {v10, v2, v3}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_3b0
    :goto_3b0
    iget-object v2, v5, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->zones:[I

    invoke-virtual {v11, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->apply([I)[I

    move-result-object v3

    .line 189
    const/4 v2, 0x0

    :goto_3b7
    const/16 v4, 0xa

    if-ge v2, v4, :cond_3dc

    .line 190
    iget-object v4, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zones:[I

    aget v6, v3, v2

    aput v6, v4, v2

    .line 191
    iget-object v4, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zoneMax:[I

    iget-object v6, v11, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->zoneMax:[I

    aget v6, v6, v2

    aput v6, v4, v2

    .line 189
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b7

    .line 183
    :cond_3cc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->intensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoModel$Intensity;->INTENSE:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    if-ne v2, v3, :cond_3b0

    .line 184
    const-string v2, "\u0418\u043d\u0442\u0435\u043d\u0437\u0438\u0432\u0435\u043d: +10 % (\u0434\u043e \u0442\u0430\u0432\u0430\u043d\u0430), \u22121 s \u043f\u0430\u0443\u0437\u0430"

    const-string v3, "Intense: +10 % (to the ceiling), \u22121 s pause"

    invoke-virtual {v10, v2, v3}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->note(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b0

    .line 193
    :cond_3dc
    const/4 v2, 0x0

    move v4, v2

    :goto_3de
    iget-object v2, v11, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->notesBg:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_3fd

    .line 194
    iget-object v2, v11, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->notesBg:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v11, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->notesEn:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_3de

    .line 196
    :cond_3fd
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->breastfeeding:Z

    if-eqz v2, :cond_418

    .line 197
    iget-object v2, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zones:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 198
    iget-object v2, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zoneLocked:[Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 199
    const-string v2, "\u041a\u044a\u0440\u043c\u0435\u043d\u0435: \u0433\u044a\u0440\u0434\u0438\u0442\u0435 \u0441\u0430 \u0438\u0437\u043a\u043b\u044e\u0447\u0435\u043d\u0438"

    const-string v3, "Breastfeeding: chest channel off"

    invoke-virtual {v10, v2, v3}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_418
    const-string v2, "postpartum"

    iget-object v3, v5, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_461

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->diastasis:Z

    if-eqz v2, :cond_461

    .line 202
    iget-object v2, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zones:[I

    const/4 v3, 0x1

    iget-object v4, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zones:[I

    const/4 v6, 0x1

    aget v4, v4, v6

    const/16 v6, 0x28

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v4, v2, v3

    .line 203
    iget-object v2, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zoneMax:[I

    const/4 v3, 0x1

    const/16 v4, 0x28

    aput v4, v2, v3

    .line 204
    iget-object v3, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zoneLocked:[Z

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    const/4 v6, 0x6

    if-ge v2, v6, :cond_543

    const/4 v2, 0x1

    :goto_44c
    aput-boolean v2, v3, v4

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->cond:Ljava/util/Set;

    const-string v3, "diastasis"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_461

    .line 206
    const-string v2, "\u0414\u0438\u0430\u0441\u0442\u0430\u0437\u0430: \u043a\u043e\u0440\u0435\u043c\u044a\u0442 \u0434\u043e 40 %"

    const-string v3, "Diastasis: abs up to 40 %"

    invoke-virtual {v10, v2, v3}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_461
    iget-object v2, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zones:[I

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoLimits;->balance([I)V

    .line 212
    iget v2, v5, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    iput v2, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Lo:I

    .line 213
    iget v2, v5, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    iput v2, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Hi:I

    .line 214
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    if-nez v2, :cond_48b

    .line 215
    const/4 v2, 0x2

    iget v3, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Lo:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Lo:I

    .line 216
    iget v2, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Lo:I

    iget v3, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Hi:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Hi:I

    .line 220
    :cond_48b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    invoke-static {v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->hrUse(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;)Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    move-result-object v2

    iput-object v2, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiPlanner;->hrMax(Lcom/isaigu/gymapp/ai/AiModel$Sex;I)I

    move-result v2

    iput v2, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrMax:I

    .line 222
    if-lez p1, :cond_546

    const/4 v2, 0x1

    :goto_4a6
    iput-boolean v2, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrRestMeasured:Z

    .line 223
    if-lez p1, :cond_549

    :goto_4aa
    move/from16 v0, p1

    iput v0, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrRest:I

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v2, v3, :cond_54d

    const-wide v2, -0x4056666666666666L    # -0.05

    .line 225
    :goto_4bb
    iget-wide v6, v5, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    add-double v8, v6, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    const/16 v6, 0x3c

    if-lt v4, v6, :cond_560

    const-wide v6, -0x4056666666666666L    # -0.05

    :goto_4cc
    add-double/2addr v8, v6

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoModel$Input;->solo()Z

    move-result v4

    if-eqz v4, :cond_564

    const-wide v6, -0x4056666666666666L    # -0.05

    :goto_4d8
    add-double/2addr v6, v8

    .line 226
    iput-wide v6, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->xCap:D

    .line 227
    invoke-virtual {v10, v6, v7}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrAt(D)I

    move-result v4

    iget v6, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrMax:I

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrCap:I

    .line 228
    iget-object v4, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->CORRIDOR:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    if-ne v4, v6, :cond_51a

    .line 229
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->corridor(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)[D

    move-result-object v4

    .line 230
    const/4 v6, 0x0

    aget-wide v6, v4, v6

    iput-wide v6, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->xLo:D

    .line 231
    const/4 v6, 0x1

    aget-wide v6, v4, v6

    add-double/2addr v6, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    const/16 v3, 0x3c

    if-lt v2, v3, :cond_568

    const-wide v2, -0x4056666666666666L    # -0.05

    :goto_507
    add-double/2addr v2, v6

    iput-wide v2, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->xHi:D

    .line 232
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoPlanner;->goalSlimBmi(Lcom/isaigu/gymapp/ai/AutoModel$Input;)Z

    move-result v2

    if-eqz v2, :cond_51a

    .line 233
    iget-wide v2, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->xHi:D

    const-wide v6, 0x3fa999999999999aL    # 0.05

    sub-double/2addr v2, v6

    iput-wide v2, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->xHi:D

    .line 238
    :cond_51a
    iget-boolean v2, v5, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->doublePulse:Z

    if-eqz v2, :cond_56b

    const-string v2, "postpartum"

    iget-object v3, v5, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    .line 239
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_56b

    :cond_52f
    const/4 v2, 0x1

    :goto_530
    iput-boolean v2, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->doublePulseAllowed:Z

    .line 242
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoPlanner;->simulateDose(Lcom/isaigu/gymapp/ai/AutoModel$Plan;)D

    move-result-wide v2

    iput-wide v2, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->qPlan:D

    .line 243
    iget-wide v2, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->qPlan:D

    const-wide v4, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v2, v4

    iput-wide v2, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->qBudget:D

    .line 244
    return-object v10

    .line 204
    :cond_543
    const/4 v2, 0x0

    goto/16 :goto_44c

    .line 222
    :cond_546
    const/4 v2, 0x0

    goto/16 :goto_4a6

    .line 223
    :cond_549
    const/16 p1, 0x46

    goto/16 :goto_4aa

    .line 224
    :cond_54d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v2, v3, :cond_55c

    const-wide v2, 0x3fa999999999999aL    # 0.05

    goto/16 :goto_4bb

    :cond_55c
    const-wide/16 v2, 0x0

    goto/16 :goto_4bb

    .line 225
    :cond_560
    const-wide/16 v6, 0x0

    goto/16 :goto_4cc

    :cond_564
    const-wide/16 v6, 0x0

    goto/16 :goto_4d8

    .line 231
    :cond_568
    const-wide/16 v2, 0x0

    goto :goto_507

    .line 239
    :cond_56b
    const/4 v2, 0x0

    goto :goto_530
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

    .line 274
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

    .line 275
    if-eqz p3, :cond_35

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    if-lez v2, :cond_35

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_35

    .line 276
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

    .line 278
    :cond_35
    return-wide v0
.end method

.method private static goalSlimBmi(Lcom/isaigu/gymapp/ai/AutoModel$Input;)Z
    .registers 5

    .prologue
    .line 249
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
    .line 254
    const-wide/16 v0, 0x0

    .line 255
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

    .line 256
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 259
    const/4 v5, 0x0

    .line 260
    const/4 v1, 0x0

    move v4, v1

    .line 261
    :goto_20
    iget v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    if-ge v5, v1, :cond_9

    .line 262
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    rem-int v6, v4, v6

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 263
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

    .line 264
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

    .line 265
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->durationS()I

    move-result v1

    add-int/2addr v5, v1

    .line 266
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    .line 267
    goto :goto_20

    .line 264
    :cond_5f
    const/4 v6, 0x0

    goto :goto_51

    .line 269
    :cond_61
    return-wide v2
.end method
