.class public final Lcom/isaigu/gymapp/ai/AutoPlanner;
.super Ljava/lang/Object;
.source "AutoPlanner.java"


# static fields
.field public static final ACTIVE_CEILING_S:I = 0x5dc

.field public static final ACTIVE_MAX_S:I = 0x4b0

.field public static final MIN_SECONDS:I = 0x258

.field public static final RECOVERY_S:I = 0x258

.field public static final STRETCH_MAX_S:I = 0x12c


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
    .line 78
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v2

    .line 79
    if-nez v2, :cond_23

    .line 80
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

    .line 81
    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    :cond_23
    move-object v5, v2

    .line 83
    new-instance v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-direct {v9}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;-><init>()V

    .line 84
    iput-object v5, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    .line 85
    move-object/from16 v0, p0

    iput-object v0, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    .line 86
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-object/from16 v0, p0

    invoke-static {v5, v2, v0}, Lcom/isaigu/gymapp/ai/AutoPlanner;->maxSeconds(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;)I

    move-result v2

    .line 87
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
    iput v2, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->activeS:I

    .line 88
    iget v2, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->activeS:I

    const/16 v3, 0x4b0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-object/from16 v0, p0

    invoke-static {v5, v4, v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->baseSeconds(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v2, v3, :cond_6e

    .line 89
    const-string v2, "\u0412\u0440\u0435\u043c\u0435\u0442\u043e \u0435 \u0441\u044a\u043a\u0440\u0430\u0442\u0435\u043d\u043e: \u0430\u0434\u0430\u043f\u0442\u0430\u0446\u0438\u044f / \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435"

    const-string v3, "Shortened: adaptation / recovery"

    invoke-virtual {v9, v2, v3}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_6e
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->isFace(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Z

    move-result v10

    .line 99
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 100
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    if-nez v4, :cond_1cc

    .line 101
    const-wide v2, 0x3fe6666666666666L    # 0.7

    .line 107
    :cond_7f
    :goto_7f
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    const/16 v6, 0x3c

    if-lt v4, v6, :cond_94

    .line 108
    const-wide v6, 0x3fb999999999999aL    # 0.1

    sub-double/2addr v2, v6

    .line 109
    const-string v4, "60+ \u0433.: \u043f\u043e-\u0434\u044a\u043b\u0433\u0438 \u043f\u0430\u0443\u0437\u0438"

    const-string v6, "60+: longer pauses"

    invoke-virtual {v9, v4, v6}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_94
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->measured:Z

    if-nez v4, :cond_b7

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoModel$Input;->bmi()D

    move-result-wide v6

    const-wide/16 v12, 0x0

    cmpl-double v4, v6, v12

    if-lez v4, :cond_b7

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoModel$Input;->bmi()D

    move-result-wide v6

    const-wide v12, 0x4032800000000000L    # 18.5

    cmpg-double v4, v6, v12

    if-gez v4, :cond_b7

    .line 114
    const-wide v6, 0x3fb999999999999aL    # 0.1

    sub-double/2addr v2, v6

    .line 116
    :cond_b7
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->isActive()Z

    move-result v4

    if-eqz v4, :cond_1e8

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->hoursSinceActive:D

    const-wide/16 v12, 0x0

    cmpl-double v4, v6, v12

    if-ltz v4, :cond_1e8

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->hoursSinceActive:D

    const-wide/high16 v12, 0x4052000000000000L    # 72.0

    cmpg-double v4, v6, v12

    if-gez v4, :cond_1e8

    const/4 v4, 0x1

    .line 117
    :goto_d2
    if-eqz v4, :cond_e1

    .line 118
    const-wide v6, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v6

    .line 119
    const-string v4, "\u041f\u043e\u0434 72 \u0447 \u043e\u0442 \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0430\u0442\u0430 \u0430\u043a\u0442\u0438\u0432\u043d\u0430: \u043f\u043e-\u043a\u0440\u0430\u0442\u043a\u043e"

    const-string v6, "Under 72 h since the last active: shorter"

    invoke-virtual {v9, v4, v6}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_e1
    const/4 v4, 0x0

    .line 124
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->isActive()Z

    move-result v6

    if-eqz v6, :cond_138

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->readiness:D

    const-wide v12, 0x3fefae147ae147aeL    # 0.99

    cmpg-double v6, v6, v12

    if-gez v6, :cond_138

    .line 125
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->readiness:D

    const-wide v12, 0x3fe999999999999aL    # 0.8

    cmpg-double v4, v6, v12

    if-gez v4, :cond_1eb

    const/4 v4, 0x2

    .line 126
    :goto_103
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

    invoke-virtual {v9, v6, v7}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_138
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->measured:Z

    if-eqz v6, :cond_14d

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->muscleLow:Z

    if-eqz v6, :cond_14d

    .line 130
    add-int/lit8 v4, v4, 0x1

    .line 131
    const-string v6, "\u041a\u0430\u043d\u0442\u0430\u0440\u044a\u0442: \u043c\u0430\u043b\u043a\u043e \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u2014 +1 s \u043f\u0430\u0443\u0437\u0430"

    const-string v7, "Scale: little muscle \u2014 +1 s pause"

    invoke-virtual {v9, v6, v7}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->note(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14d
    move v6, v4

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoModel$Input;->solo()Z

    move-result v4

    if-eqz v4, :cond_15d

    .line 134
    const-wide v12, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 137
    :cond_15d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->focus:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->cond:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->today:Ljava/util/Set;

    invoke-static {v4, v7, v8}, Lcom/isaigu/gymapp/ai/AiPersonal;->of(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Lcom/isaigu/gymapp/ai/AiPersonal$Effect;

    move-result-object v11

    .line 138
    iget-wide v12, v11, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    mul-double/2addr v2, v12

    .line 139
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phiMax:D

    .line 142
    iget-wide v2, v5, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->envMax:D

    .line 143
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    const/4 v7, 0x3

    if-ge v4, v7, :cond_183

    .line 144
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 146
    :cond_183
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoModel$Input;->solo()Z

    move-result v4

    if-eqz v4, :cond_191

    .line 147
    const-wide v12, 0x3ff199999999999aL    # 1.1

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->min(DD)D

    .line 149
    :cond_191
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->envMax:D

    .line 152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    iget v3, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->activeS:I

    move-object/from16 v0, p0

    invoke-static {v5, v2, v0, v3}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phases(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;I)Ljava/util/List;

    move-result-object v12

    .line 153
    const/4 v2, 0x0

    iput v2, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->totalS:I

    .line 154
    const/4 v2, 0x0

    iput v2, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->recoveryS:I

    .line 155
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1ab
    :goto_1ab
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1ee

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    .line 156
    iget v4, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->totalS:I

    iget v7, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    add-int/2addr v4, v7

    iput v4, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->totalS:I

    .line 157
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v4

    if-eqz v4, :cond_1ab

    .line 158
    iget v4, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->recoveryS:I

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    add-int/2addr v2, v4

    iput v2, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->recoveryS:I

    goto :goto_1ab

    .line 102
    :cond_1cc
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    const/4 v6, 0x2

    if-gt v4, v6, :cond_1da

    .line 103
    const-wide v2, 0x3fe999999999999aL    # 0.8

    goto/16 :goto_7f

    .line 104
    :cond_1da
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    const/4 v6, 0x7

    if-gt v4, v6, :cond_7f

    .line 105
    const-wide v2, 0x3feccccccccccccdL    # 0.9

    goto/16 :goto_7f

    .line 116
    :cond_1e8
    const/4 v4, 0x0

    goto/16 :goto_d2

    .line 125
    :cond_1eb
    const/4 v4, 0x1

    goto/16 :goto_103

    .line 161
    :cond_1ee
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->intensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoModel$Intensity;->INTENSE:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    if-ne v2, v3, :cond_204

    move-object/from16 v0, p0

    invoke-static {v5, v0}, Lcom/isaigu/gymapp/ai/AutoPlanner;->intenseAllowed(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Z

    move-result v2

    if-nez v2, :cond_204

    .line 162
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoModel$Intensity;->STANDARD:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->intensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    .line 164
    :cond_204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->intensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoModel$Intensity;->SOFT:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    if-ne v2, v3, :cond_2b7

    .line 165
    :cond_20c
    :goto_20c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->intensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoModel$Intensity;->SOFT:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    if-ne v2, v3, :cond_2c1

    const/4 v2, 0x1

    move v7, v2

    .line 166
    :goto_216
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_21a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_335

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    .line 168
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    iput-wide v14, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiStart:D

    .line 169
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    iput-wide v14, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiEnd:D

    .line 170
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    iput-wide v14, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 171
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    iput-wide v14, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 172
    iget-wide v14, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    cmpl-double v3, v14, v16

    if-nez v3, :cond_242

    .line 173
    iget-wide v14, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->envMax:D

    iput-wide v14, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 175
    :cond_242
    iget-wide v14, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    iget-wide v0, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->envMax:D

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(DD)D

    move-result-wide v14

    iput-wide v14, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 176
    iget-wide v14, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    iget-wide v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    move-wide/from16 v16, v0

    iget-wide v0, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->envMax:D

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->min(DD)D

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    iput-wide v14, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 177
    const/4 v3, 0x0

    move v4, v3

    :goto_264
    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_2d1

    .line 178
    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 179
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->isTetanic()Z

    move-result v8

    if-eqz v8, :cond_2b3

    iget-wide v14, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->sigma:D

    const-wide/16 v16, 0x0

    cmpl-double v8, v14, v16

    if-lez v8, :cond_2b3

    iget-boolean v8, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    if-nez v8, :cond_2b3

    .line 180
    const/4 v8, 0x1

    iget v14, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    add-int/2addr v14, v7

    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    .line 181
    move-object/from16 v0, p0

    iget v8, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    const/16 v14, 0x3c

    if-lt v8, v14, :cond_2a4

    .line 182
    iget v8, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    add-int/lit8 v8, v8, 0x2

    iput v8, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    .line 183
    iget v8, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    add-int/lit16 v8, v8, 0xc8

    iput v8, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    .line 185
    :cond_2a4
    iget v8, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    iget v14, v11, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->offS:I

    add-int/2addr v14, v6

    add-int/2addr v8, v14

    iput v8, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    .line 186
    iget v8, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    iget v14, v11, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->rampUpMs:I

    add-int/2addr v8, v14

    iput v8, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    .line 177
    :cond_2b3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_264

    .line 164
    :cond_2b7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->intensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoModel$Intensity;->INTENSE:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    if-ne v2, v3, :cond_20c

    goto/16 :goto_20c

    .line 165
    :cond_2c1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->intensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoModel$Intensity;->INTENSE:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    if-ne v2, v3, :cond_2cd

    const/4 v2, -0x1

    move v7, v2

    goto/16 :goto_216

    :cond_2cd
    const/4 v2, 0x0

    move v7, v2

    goto/16 :goto_216

    .line 189
    :cond_2d1
    const/4 v3, 0x0

    move v4, v3

    :goto_2d3
    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_2f7

    .line 190
    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 191
    iget v8, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    if-lez v8, :cond_2f3

    iget-wide v14, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    const-wide/16 v16, 0x0

    cmpl-double v8, v14, v16

    if-lez v8, :cond_2f3

    .line 192
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    iput-wide v14, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    .line 189
    :cond_2f3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_2d3

    .line 195
    :cond_2f7
    const/4 v3, 0x0

    move v8, v3

    :goto_2f9
    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v8, v3, :cond_21a

    .line 196
    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    add-int/lit8 v4, v8, 0x1

    iget-object v14, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    rem-int/2addr v4, v14

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 197
    iget-object v14, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    iget-object v15, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_333

    :goto_328
    invoke-static {v4, v3, v9, v2}, Lcom/isaigu/gymapp/ai/AutoLimits;->clampStep(Lcom/isaigu/gymapp/ai/AutoModel$Step;Lcom/isaigu/gymapp/ai/AutoModel$Step;Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Phase;)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v3

    invoke-interface {v14, v8, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 195
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    goto :goto_2f9

    .line 197
    :cond_333
    const/4 v3, 0x0

    goto :goto_328

    .line 201
    :cond_335
    iget-object v2, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->intensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoModel$Intensity;->SOFT:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    if-ne v2, v3, :cond_36f

    .line 203
    const-string v2, "\u041c\u0435\u043a: +1 s \u043f\u0430\u0443\u0437\u0430"

    const-string v3, "Soft: +1 s pause"

    invoke-virtual {v9, v2, v3}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_349
    :goto_349
    const/4 v2, 0x0

    move v4, v2

    :goto_34b
    const/16 v2, 0xa

    if-ge v4, v2, :cond_385

    .line 212
    iget-object v2, v5, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->zones:[I

    aget v2, v2, v4

    if-lez v2, :cond_37f

    const/4 v2, 0x1

    .line 213
    :goto_356
    iget-object v6, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zones:[I

    if-eqz v2, :cond_381

    const/16 v3, 0x64

    :goto_35c
    aput v3, v6, v4

    .line 214
    iget-object v3, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zoneMax:[I

    const/16 v6, 0x64

    aput v6, v3, v4

    .line 215
    iget-object v3, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zoneLocked:[Z

    if-nez v2, :cond_383

    const/4 v2, 0x1

    :goto_369
    aput-boolean v2, v3, v4

    .line 211
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_34b

    .line 204
    :cond_36f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->intensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoModel$Intensity;->INTENSE:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    if-ne v2, v3, :cond_349

    .line 205
    const-string v2, "\u0418\u043d\u0442\u0435\u043d\u0437\u0438\u0432\u0435\u043d: \u22121 s \u043f\u0430\u0443\u0437\u0430"

    const-string v3, "Intense: \u22121 s pause"

    invoke-virtual {v9, v2, v3}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->note(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_349

    .line 212
    :cond_37f
    const/4 v2, 0x0

    goto :goto_356

    .line 213
    :cond_381
    const/4 v3, 0x0

    goto :goto_35c

    .line 215
    :cond_383
    const/4 v2, 0x0

    goto :goto_369

    .line 217
    :cond_385
    const/16 v2, 0x64

    iput v2, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zoneDelta:I

    .line 218
    const/4 v2, 0x0

    move v4, v2

    :goto_38b
    iget-object v2, v11, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->notesBg:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_3de

    .line 219
    iget-object v2, v11, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->notesBg:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 220
    iget-object v3, v11, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->notesEn:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 221
    const-string v6, "\u0414\u0438\u0430\u0441\u0442\u0430\u0437\u0430"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3b2

    .line 222
    if-eqz v10, :cond_3b6

    :goto_3ad
    if-eqz v10, :cond_3ca

    :goto_3af
    invoke-virtual {v9, v2, v3}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_3b2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_38b

    .line 222
    :cond_3b6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u041f\u0440\u0435\u043f\u043e\u0440\u044a\u043a\u0430 \u00b7 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3ad

    :cond_3ca
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Advice \u00b7 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3af

    .line 225
    :cond_3de
    if-nez v10, :cond_40f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->zoneForce:[I

    if-eqz v2, :cond_40f

    .line 227
    const/4 v2, 0x0

    :goto_3e7
    const/16 v3, 0xa

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->zoneForce:[I

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v2, v3, :cond_40f

    .line 228
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->zoneForce:[I

    aget v3, v3, v2

    if-ltz v3, :cond_40a

    .line 229
    iget-object v4, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zones:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->zoneForce:[I

    aget v3, v3, v2

    if-lez v3, :cond_40d

    const/16 v3, 0x64

    :goto_408
    aput v3, v4, v2

    .line 227
    :cond_40a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e7

    .line 229
    :cond_40d
    const/4 v3, 0x0

    goto :goto_408

    .line 233
    :cond_40f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->breastfeeding:Z

    if-eqz v2, :cond_42a

    .line 234
    iget-object v2, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zones:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 235
    iget-object v2, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zoneLocked:[Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 236
    const-string v2, "\u041a\u044a\u0440\u043c\u0435\u043d\u0435: \u0433\u044a\u0440\u0434\u0438\u0442\u0435 \u0441\u0430 \u0438\u0437\u043a\u043b\u044e\u0447\u0435\u043d\u0438"

    const-string v3, "Breastfeeding: chest channel off"

    invoke-virtual {v9, v2, v3}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_42a
    if-eqz v10, :cond_433

    .line 239
    const-string v2, "\u041b\u0438\u0446\u0435: \u0440\u0430\u0431\u043e\u0442\u044f\u0442 \u0441\u0430\u043c\u043e \u043c\u0435\u0441\u0442\u0430\u0442\u0430 \u043d\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430 (\u0431\u0443\u043a\u0441\u0430 F1\u2013F10)"

    const-string v3, "Face: only the program\'s sites work (connector F1\u2013F10)"

    invoke-virtual {v9, v2, v3}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_433
    if-nez v10, :cond_47e

    iget-object v2, v11, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->zoneMax:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    const/16 v3, 0x64

    if-lt v2, v3, :cond_450

    const-string v2, "postpartum"

    iget-object v3, v5, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->diastasis:Z

    if-eqz v2, :cond_47e

    :cond_450
    const/4 v2, 0x1

    .line 243
    :goto_451
    if-eqz v2, :cond_466

    .line 245
    iget-object v2, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zones:[I

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 246
    iget-object v2, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zoneLocked:[Z

    const/4 v3, 0x1

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 247
    const-string v2, "\u0414\u0438\u0430\u0441\u0442\u0430\u0437\u0430: \u043a\u043e\u0440\u0435\u043c\u044a\u0442 \u0435 \u0438\u0437\u043a\u043b\u044e\u0447\u0435\u043d"

    const-string v3, "Diastasis: abs channel off"

    invoke-virtual {v9, v2, v3}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_466
    const/4 v2, 0x0

    :goto_467
    const/16 v3, 0xa

    if-ge v2, v3, :cond_480

    .line 251
    iget-object v3, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zones:[I

    iget-object v4, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zones:[I

    aget v4, v4, v2

    iget-object v6, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zoneMax:[I

    aget v6, v6, v2

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v4, v3, v2

    .line 250
    add-int/lit8 v2, v2, 0x1

    goto :goto_467

    .line 242
    :cond_47e
    const/4 v2, 0x0

    goto :goto_451

    .line 255
    :cond_480
    iget v2, v5, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    iput v2, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Lo:I

    .line 256
    iget v2, v5, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    iput v2, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Hi:I

    .line 257
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    if-nez v2, :cond_4a5

    .line 258
    const/4 v2, 0x2

    iget v3, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Lo:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Lo:I

    .line 259
    iget v2, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Lo:I

    iget v3, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Hi:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Hi:I

    .line 263
    :cond_4a5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    invoke-static {v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->hrUse(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;)Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    move-result-object v2

    iput-object v2, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiPlanner;->hrMax(Lcom/isaigu/gymapp/ai/AiModel$Sex;I)I

    move-result v2

    iput v2, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrMax:I

    .line 265
    if-lez p1, :cond_55d

    const/4 v2, 0x1

    :goto_4c0
    iput-boolean v2, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrRestMeasured:Z

    .line 266
    if-lez p1, :cond_560

    :goto_4c4
    move/from16 v0, p1

    iput v0, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrRest:I

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v2, v3, :cond_564

    const-wide v2, -0x4056666666666666L    # -0.05

    .line 268
    :goto_4d5
    iget-wide v6, v5, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    add-double v10, v6, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    const/16 v6, 0x3c

    if-lt v4, v6, :cond_577

    const-wide v6, -0x4056666666666666L    # -0.05

    :goto_4e6
    add-double/2addr v10, v6

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoModel$Input;->solo()Z

    move-result v4

    if-eqz v4, :cond_57b

    const-wide v6, -0x4056666666666666L    # -0.05

    :goto_4f2
    add-double/2addr v6, v10

    .line 269
    iput-wide v6, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->xCap:D

    .line 270
    invoke-virtual {v9, v6, v7}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrAt(D)I

    move-result v4

    iget v6, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrMax:I

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrCap:I

    .line 271
    iget-object v4, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->CORRIDOR:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    if-ne v4, v6, :cond_534

    .line 272
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->corridor(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)[D

    move-result-object v4

    .line 273
    const/4 v6, 0x0

    aget-wide v6, v4, v6

    iput-wide v6, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->xLo:D

    .line 274
    const/4 v6, 0x1

    aget-wide v6, v4, v6

    add-double/2addr v6, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    const/16 v3, 0x3c

    if-lt v2, v3, :cond_57f

    const-wide v2, -0x4056666666666666L    # -0.05

    :goto_521
    add-double/2addr v2, v6

    iput-wide v2, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->xHi:D

    .line 275
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoPlanner;->goalSlimBmi(Lcom/isaigu/gymapp/ai/AutoModel$Input;)Z

    move-result v2

    if-eqz v2, :cond_534

    .line 276
    iget-wide v2, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->xHi:D

    const-wide v6, 0x3fa999999999999aL    # 0.05

    sub-double/2addr v2, v6

    iput-wide v2, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->xHi:D

    .line 281
    :cond_534
    iget-boolean v2, v5, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->doublePulse:Z

    if-eqz v2, :cond_582

    const-string v2, "postpartum"

    iget-object v3, v5, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    .line 282
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_549

    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_582

    :cond_549
    const/4 v2, 0x1

    :goto_54a
    iput-boolean v2, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->doublePulseAllowed:Z

    .line 285
    invoke-static {v9}, Lcom/isaigu/gymapp/ai/AutoPlanner;->simulateDose(Lcom/isaigu/gymapp/ai/AutoModel$Plan;)D

    move-result-wide v2

    iput-wide v2, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->qPlan:D

    .line 286
    iget-wide v2, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->qPlan:D

    const-wide v4, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v2, v4

    iput-wide v2, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->qBudget:D

    .line 287
    return-object v9

    .line 265
    :cond_55d
    const/4 v2, 0x0

    goto/16 :goto_4c0

    .line 266
    :cond_560
    const/16 p1, 0x46

    goto/16 :goto_4c4

    .line 267
    :cond_564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v2, v3, :cond_573

    const-wide v2, 0x3fa999999999999aL    # 0.05

    goto/16 :goto_4d5

    :cond_573
    const-wide/16 v2, 0x0

    goto/16 :goto_4d5

    .line 268
    :cond_577
    const-wide/16 v6, 0x0

    goto/16 :goto_4e6

    :cond_57b
    const-wide/16 v6, 0x0

    goto/16 :goto_4f2

    .line 274
    :cond_57f
    const-wide/16 v2, 0x0

    goto :goto_521

    .line 282
    :cond_582
    const/4 v2, 0x0

    goto :goto_54a
.end method

.method public static clampSeconds(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;I)I
    .registers 6

    .prologue
    .line 67
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoPlanner;->maxSeconds(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;)I

    move-result v0

    .line 68
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

    .line 317
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

    .line 318
    if-eqz p3, :cond_35

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    if-lez v2, :cond_35

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_35

    .line 319
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

    .line 321
    :cond_35
    return-wide v0
.end method

.method private static goalSlimBmi(Lcom/isaigu/gymapp/ai/AutoModel$Input;)Z
    .registers 5

    .prologue
    .line 292
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
    .line 73
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

    .line 47
    const/16 v0, 0x4b0

    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->baseSeconds(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 48
    const-string v1, "senior"

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget v1, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1f

    .line 49
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 51
    :cond_1f
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->isActive()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 52
    iget v1, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    if-nez v1, :cond_52

    .line 53
    const/16 v1, 0x2d0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 57
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

    .line 58
    int-to-double v0, v0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 63
    :cond_4b
    :goto_4b
    const/16 v1, 0x258

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 54
    :cond_52
    iget v1, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    const/4 v2, 0x2

    if-gt v1, v2, :cond_2f

    .line 55
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2f

    .line 60
    :cond_5c
    iget v1, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    if-nez v1, :cond_4b

    .line 61
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_4b
.end method

.method public static simulateDose(Lcom/isaigu/gymapp/ai/AutoModel$Plan;)D
    .registers 15

    .prologue
    .line 297
    const-wide/16 v0, 0x0

    .line 298
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

    .line 299
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 302
    const/4 v5, 0x0

    .line 303
    const/4 v1, 0x0

    move v4, v1

    .line 304
    :goto_20
    iget v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    if-ge v5, v1, :cond_9

    .line 305
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    rem-int v6, v4, v6

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 306
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

    .line 307
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

    .line 308
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->durationS()I

    move-result v1

    add-int/2addr v5, v1

    .line 309
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    .line 310
    goto :goto_20

    .line 307
    :cond_5f
    const/4 v6, 0x0

    goto :goto_51

    .line 312
    :cond_61
    return-wide v2
.end method

.method public static stretchS(Lcom/isaigu/gymapp/ai/AutoModel$Plan;)I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 42
    if-nez p0, :cond_4

    :goto_3
    return v0

    :cond_4
    const/16 v1, 0x12c

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->activeS:I

    rsub-int v2, v2, 0x5dc

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_3
.end method
