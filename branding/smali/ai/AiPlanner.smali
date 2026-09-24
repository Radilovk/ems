.class public final Lcom/isaigu/gymapp/ai/AiPlanner;
.super Ljava/lang/Object;
.source "AiPlanner.java"


# static fields
.field public static final BUDGET_BETA:D = 0.1

.field public static final DT_FULL_MS:J = 0xc80L

.field public static final DT_SAFETY_ONLY_MS:J = 0x2710L

.field public static final T_BLOCK_MAX_S:D = 180.0

.field public static final T_REST_MAX_S:D = 120.0

.field public static final T_REST_MIN_S:D = 20.0


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addPhase(Lcom/isaigu/gymapp/ai/AiModel$Plan;Lcom/isaigu/gymapp/ai/AiModel$PhaseId;DIDDLcom/isaigu/gymapp/ai/AiModel$BlockMode;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)V
    .registers 19

    .prologue
    .line 234
    new-instance v3, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    invoke-direct {v3}, Lcom/isaigu/gymapp/ai/AiModel$Phase;-><init>()V

    .line 235
    iput-object p1, v3, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    .line 236
    int-to-double v4, p4

    mul-double/2addr v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v2, v4

    iput v2, v3, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    .line 237
    iput-wide p5, v3, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiStart:D

    .line 238
    iput-wide p7, v3, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiEnd:D

    .line 239
    move-object/from16 v0, p9

    iput-object v0, v3, Lcom/isaigu/gymapp/ai/AiModel$Phase;->blockMode:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    .line 240
    move-object/from16 v0, p10

    iput-object v0, v3, Lcom/isaigu/gymapp/ai/AiModel$Phase;->a:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    .line 241
    move-object/from16 v0, p11

    iput-object v0, v3, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    .line 243
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->METABOLIC:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    if-ne p1, v2, :cond_2e

    const-string v2, "METABOLIC"

    :goto_26
    iput-object v2, v3, Lcom/isaigu/gymapp/ai/AiModel$Phase;->exerciseClass:Ljava/lang/String;

    .line 244
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    return-void

    .line 243
    :cond_2e
    const-string v2, "FULL"

    goto :goto_26
.end method

.method public static build(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Lcom/isaigu/gymapp/ai/AiModel$Profile;)Lcom/isaigu/gymapp/ai/AiModel$Plan;
    .registers 28

    .prologue
    .line 133
    new-instance v21, Lcom/isaigu/gymapp/ai/AiModel$Plan;

    invoke-direct/range {v21 .. v21}, Lcom/isaigu/gymapp/ai/AiModel$Plan;-><init>()V

    .line 134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$Mode;->PASSIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    if-ne v2, v3, :cond_142

    const/4 v2, 0x1

    move/from16 v19, v2

    .line 135
    :goto_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$Operator;->SELF:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    if-ne v2, v3, :cond_147

    const/4 v2, 0x1

    move/from16 v20, v2

    .line 136
    :goto_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->totalSeconds:Ljava/lang/Integer;

    if-eqz v2, :cond_14c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->totalSeconds:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 136
    :goto_2d
    invoke-static {v3, v2}, Lcom/isaigu/gymapp/ai/AiPlanner;->clampSeconds(Lcom/isaigu/gymapp/ai/AiModel$Goal;I)I

    move-result v22

    .line 138
    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    .line 139
    if-eqz v20, :cond_156

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    :goto_3e
    move-object/from16 v0, v21

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phiMax:D

    .line 141
    sget-object v2, Lcom/isaigu/gymapp/ai/AiPlanner$1;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$Goal:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_40c

    .line 187
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->MAIN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    const-wide v24, 0x3fdccccccccccccdL    # 0.45

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3fe3333333333333L    # 0.6

    sget-object v14, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->FATIGUE_DRIVEN:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    new-instance v3, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    const/16 v4, 0x55

    const/16 v5, 0x15e

    const/4 v6, 0x4

    const/4 v7, 0x6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v3 .. v9}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;-><init>(IIIID)V

    const/16 v16, 0x0

    move-object/from16 v5, v21

    move-object v6, v2

    move-wide/from16 v7, v24

    move/from16 v9, v22

    move-object v15, v3

    invoke-static/range {v5 .. v16}, Lcom/isaigu/gymapp/ai/AiPlanner;->addPhase(Lcom/isaigu/gymapp/ai/AiModel$Plan;Lcom/isaigu/gymapp/ai/AiModel$PhaseId;DIDDLcom/isaigu/gymapp/ai/AiModel$BlockMode;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)V

    .line 189
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->MAIN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    const-wide v24, 0x3fdccccccccccccdL    # 0.45

    const-wide v10, 0x3fe999999999999aL    # 0.8

    const-wide v12, 0x3fe999999999999aL    # 0.8

    sget-object v14, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->CONTINUOUS:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    new-instance v3, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    const/4 v4, 0x1

    const/16 v5, 0x12c

    const/4 v6, 0x3

    const/4 v7, 0x5

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v3 .. v9}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;-><init>(IIIID)V

    const/16 v16, 0x0

    move-object/from16 v5, v21

    move-object v6, v2

    move-wide/from16 v7, v24

    move/from16 v9, v22

    move-object v15, v3

    invoke-static/range {v5 .. v16}, Lcom/isaigu/gymapp/ai/AiPlanner;->addPhase(Lcom/isaigu/gymapp/ai/AiModel$Plan;Lcom/isaigu/gymapp/ai/AiModel$PhaseId;DIDDLcom/isaigu/gymapp/ai/AiModel$BlockMode;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)V

    .line 191
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->COOLDOWN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    const-wide v24, 0x3fb999999999999aL    # 0.1

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    sget-object v14, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->CONTINUOUS:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    new-instance v3, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    const/4 v4, 0x3

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v3 .. v9}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;-><init>(IIIID)V

    const/16 v16, 0x0

    move-object/from16 v5, v21

    move-object v6, v2

    move-wide/from16 v7, v24

    move/from16 v9, v22

    move-object v15, v3

    invoke-static/range {v5 .. v16}, Lcom/isaigu/gymapp/ai/AiPlanner;->addPhase(Lcom/isaigu/gymapp/ai/AiModel$Plan;Lcom/isaigu/gymapp/ai/AiModel$PhaseId;DIDDLcom/isaigu/gymapp/ai/AiModel$BlockMode;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)V

    .line 193
    const/4 v2, 0x3

    move-object/from16 v0, v21

    iput v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Lo:I

    .line 194
    const/4 v2, 0x4

    move-object/from16 v0, v21

    iput v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Hi:I

    .line 199
    :goto_db
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3cf

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    .line 200
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->a:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v2, v4, v0, v1}, Lcom/isaigu/gymapp/ai/AiPlanner;->limitCycle(Lcom/isaigu/gymapp/ai/AiModel$Phase;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;ZZ)V

    .line 201
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v4, :cond_105

    .line 202
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v2, v4, v0, v1}, Lcom/isaigu/gymapp/ai/AiPlanner;->limitCycle(Lcom/isaigu/gymapp/ai/AiModel$Phase;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;ZZ)V

    .line 204
    :cond_105
    if-eqz v19, :cond_129

    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->a:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->isTetanic()Z

    move-result v4

    if-eqz v4, :cond_129

    .line 205
    iget-wide v4, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiStart:D

    const-wide v6, 0x3fe6666666666666L    # 0.7

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiStart:D

    .line 206
    iget-wide v4, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiEnd:D

    const-wide v6, 0x3fe6666666666666L    # 0.7

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiEnd:D

    .line 208
    :cond_129
    iget-wide v4, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiStart:D

    move-object/from16 v0, v21

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phiMax:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiStart:D

    .line 209
    iget-wide v4, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiEnd:D

    move-object/from16 v0, v21

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phiMax:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiEnd:D

    goto :goto_e3

    .line 134
    :cond_142
    const/4 v2, 0x0

    move/from16 v19, v2

    goto/16 :goto_10

    .line 135
    :cond_147
    const/4 v2, 0x0

    move/from16 v20, v2

    goto/16 :goto_1b

    .line 137
    :cond_14c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiPlanner;->defaultSeconds(Lcom/isaigu/gymapp/ai/AiModel$Goal;)I

    move-result v2

    goto/16 :goto_2d

    .line 139
    :cond_156
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_3e

    .line 143
    :pswitch_15a
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->WARMUP:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    const-wide v24, 0x3fc3333333333333L    # 0.15

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sget-object v14, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->CONTINUOUS:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    new-instance v3, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    const/16 v4, 0x55

    const/16 v5, 0x15e

    const/4 v6, 0x4

    const/4 v7, 0x4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v3 .. v9}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;-><init>(IIIID)V

    const/16 v16, 0x0

    move-object/from16 v5, v21

    move-object v6, v2

    move-wide/from16 v7, v24

    move/from16 v9, v22

    move-object v15, v3

    invoke-static/range {v5 .. v16}, Lcom/isaigu/gymapp/ai/AiPlanner;->addPhase(Lcom/isaigu/gymapp/ai/AiModel$Plan;Lcom/isaigu/gymapp/ai/AiModel$PhaseId;DIDDLcom/isaigu/gymapp/ai/AiModel$BlockMode;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)V

    .line 145
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->MAIN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    const-wide/high16 v24, 0x3fe8000000000000L    # 0.75

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sget-object v14, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->FATIGUE_DRIVEN:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    new-instance v3, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    const/16 v4, 0x55

    const/16 v5, 0x15e

    const/4 v6, 0x6

    const/4 v7, 0x4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v3 .. v9}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;-><init>(IIIID)V

    const/16 v16, 0x0

    move-object/from16 v5, v21

    move-object v6, v2

    move-wide/from16 v7, v24

    move/from16 v9, v22

    move-object v15, v3

    invoke-static/range {v5 .. v16}, Lcom/isaigu/gymapp/ai/AiPlanner;->addPhase(Lcom/isaigu/gymapp/ai/AiModel$Plan;Lcom/isaigu/gymapp/ai/AiModel$PhaseId;DIDDLcom/isaigu/gymapp/ai/AiModel$BlockMode;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)V

    .line 147
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->COOLDOWN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    const-wide v24, 0x3fb999999999999aL    # 0.1

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    sget-object v14, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->CONTINUOUS:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    new-instance v3, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    const/4 v4, 0x5

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v3 .. v9}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;-><init>(IIIID)V

    const/16 v16, 0x0

    move-object/from16 v5, v21

    move-object v6, v2

    move-wide/from16 v7, v24

    move/from16 v9, v22

    move-object v15, v3

    invoke-static/range {v5 .. v16}, Lcom/isaigu/gymapp/ai/AiPlanner;->addPhase(Lcom/isaigu/gymapp/ai/AiModel$Plan;Lcom/isaigu/gymapp/ai/AiModel$PhaseId;DIDDLcom/isaigu/gymapp/ai/AiModel$BlockMode;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)V

    .line 149
    if-eqz v19, :cond_1df

    const/4 v2, 0x4

    :goto_1d2
    move-object/from16 v0, v21

    iput v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Lo:I

    .line 150
    if-eqz v19, :cond_1e1

    const/4 v2, 0x5

    :goto_1d9
    move-object/from16 v0, v21

    iput v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Hi:I

    goto/16 :goto_db

    .line 149
    :cond_1df
    const/4 v2, 0x6

    goto :goto_1d2

    .line 150
    :cond_1e1
    const/4 v2, 0x7

    goto :goto_1d9

    .line 153
    :pswitch_1e3
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->WARMUP:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    const-wide v24, 0x3fb999999999999aL    # 0.1

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    sget-object v14, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->CONTINUOUS:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    new-instance v3, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    const/16 v4, 0x55

    const/16 v5, 0x15e

    const/4 v6, 0x4

    const/4 v7, 0x4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v3 .. v9}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;-><init>(IIIID)V

    const/16 v16, 0x0

    move-object/from16 v5, v21

    move-object v6, v2

    move-wide/from16 v7, v24

    move/from16 v9, v22

    move-object v15, v3

    invoke-static/range {v5 .. v16}, Lcom/isaigu/gymapp/ai/AiPlanner;->addPhase(Lcom/isaigu/gymapp/ai/AiModel$Plan;Lcom/isaigu/gymapp/ai/AiModel$PhaseId;DIDDLcom/isaigu/gymapp/ai/AiModel$BlockMode;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)V

    .line 155
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->MAIN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    const-wide v24, 0x3fd999999999999aL    # 0.4

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    sget-object v14, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->FATIGUE_DRIVEN:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    new-instance v3, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    const/16 v4, 0x55

    const/16 v5, 0x15e

    const/4 v6, 0x4

    const/4 v7, 0x4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v3 .. v9}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;-><init>(IIIID)V

    const/16 v16, 0x0

    move-object/from16 v5, v21

    move-object v6, v2

    move-wide/from16 v7, v24

    move/from16 v9, v22

    move-object v15, v3

    invoke-static/range {v5 .. v16}, Lcom/isaigu/gymapp/ai/AiPlanner;->addPhase(Lcom/isaigu/gymapp/ai/AiModel$Plan;Lcom/isaigu/gymapp/ai/AiModel$PhaseId;DIDDLcom/isaigu/gymapp/ai/AiModel$BlockMode;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)V

    .line 157
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->METABOLIC:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    const-wide v24, 0x3fd999999999999aL    # 0.4

    const-wide v12, 0x3fe999999999999aL    # 0.8

    const-wide v14, 0x3fe999999999999aL    # 0.8

    sget-object v16, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->FATIGUE_DRIVEN:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    new-instance v3, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    const/16 v4, 0x55

    const/16 v5, 0x15e

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v3 .. v9}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;-><init>(IIIID)V

    new-instance v5, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    const/4 v6, 0x6

    const/16 v7, 0x15e

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-wide v10, 0x3fe6666666666666L    # 0.7

    invoke-direct/range {v5 .. v11}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;-><init>(IIIID)V

    move-object/from16 v7, v21

    move-object v8, v2

    move-wide/from16 v9, v24

    move/from16 v11, v22

    move-object/from16 v17, v3

    move-object/from16 v18, v5

    invoke-static/range {v7 .. v18}, Lcom/isaigu/gymapp/ai/AiPlanner;->addPhase(Lcom/isaigu/gymapp/ai/AiModel$Plan;Lcom/isaigu/gymapp/ai/AiModel$PhaseId;DIDDLcom/isaigu/gymapp/ai/AiModel$BlockMode;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)V

    .line 159
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->COOLDOWN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    const-wide v24, 0x3fb999999999999aL    # 0.1

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    sget-object v14, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->CONTINUOUS:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    new-instance v3, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    const/4 v4, 0x5

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v3 .. v9}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;-><init>(IIIID)V

    const/16 v16, 0x0

    move-object/from16 v5, v21

    move-object v6, v2

    move-wide/from16 v7, v24

    move/from16 v9, v22

    move-object v15, v3

    invoke-static/range {v5 .. v16}, Lcom/isaigu/gymapp/ai/AiPlanner;->addPhase(Lcom/isaigu/gymapp/ai/AiModel$Plan;Lcom/isaigu/gymapp/ai/AiModel$PhaseId;DIDDLcom/isaigu/gymapp/ai/AiModel$BlockMode;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)V

    .line 161
    if-eqz v19, :cond_2b1

    const/4 v2, 0x4

    :goto_2a4
    move-object/from16 v0, v21

    iput v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Lo:I

    .line 162
    if-eqz v19, :cond_2b3

    const/4 v2, 0x5

    :goto_2ab
    move-object/from16 v0, v21

    iput v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Hi:I

    goto/16 :goto_db

    .line 161
    :cond_2b1
    const/4 v2, 0x5

    goto :goto_2a4

    .line 162
    :cond_2b3
    const/4 v2, 0x6

    goto :goto_2ab

    .line 165
    :pswitch_2b5
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->WARMUP:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    const-wide v24, 0x3fc3333333333333L    # 0.15

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    const-wide v12, 0x3fe999999999999aL    # 0.8

    sget-object v14, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->CONTINUOUS:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    new-instance v3, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    const/4 v4, 0x3

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v3 .. v9}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;-><init>(IIIID)V

    const/16 v16, 0x0

    move-object/from16 v5, v21

    move-object v6, v2

    move-wide/from16 v7, v24

    move/from16 v9, v22

    move-object v15, v3

    invoke-static/range {v5 .. v16}, Lcom/isaigu/gymapp/ai/AiPlanner;->addPhase(Lcom/isaigu/gymapp/ai/AiModel$Plan;Lcom/isaigu/gymapp/ai/AiModel$PhaseId;DIDDLcom/isaigu/gymapp/ai/AiModel$BlockMode;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)V

    .line 167
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->MAIN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    const-wide/high16 v24, 0x3fe8000000000000L    # 0.75

    const-wide v12, 0x3fe999999999999aL    # 0.8

    const-wide v14, 0x3fe999999999999aL    # 0.8

    sget-object v16, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->CONTINUOUS:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    new-instance v3, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    const/4 v4, 0x2

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v3 .. v9}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;-><init>(IIIID)V

    new-instance v5, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    const/16 v6, 0x8

    const/16 v7, 0xfa

    const/16 v8, 0xa

    const/4 v9, 0x2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v5 .. v11}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;-><init>(IIIID)V

    move-object/from16 v7, v21

    move-object v8, v2

    move-wide/from16 v9, v24

    move/from16 v11, v22

    move-object/from16 v17, v3

    move-object/from16 v18, v5

    invoke-static/range {v7 .. v18}, Lcom/isaigu/gymapp/ai/AiPlanner;->addPhase(Lcom/isaigu/gymapp/ai/AiModel$Plan;Lcom/isaigu/gymapp/ai/AiModel$PhaseId;DIDDLcom/isaigu/gymapp/ai/AiModel$BlockMode;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)V

    .line 169
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->COOLDOWN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    const-wide v24, 0x3fb999999999999aL    # 0.1

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    sget-object v14, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->CONTINUOUS:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    new-instance v3, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    const/4 v4, 0x2

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v3 .. v9}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;-><init>(IIIID)V

    const/16 v16, 0x0

    move-object/from16 v5, v21

    move-object v6, v2

    move-wide/from16 v7, v24

    move/from16 v9, v22

    move-object v15, v3

    invoke-static/range {v5 .. v16}, Lcom/isaigu/gymapp/ai/AiPlanner;->addPhase(Lcom/isaigu/gymapp/ai/AiModel$Plan;Lcom/isaigu/gymapp/ai/AiModel$PhaseId;DIDDLcom/isaigu/gymapp/ai/AiModel$BlockMode;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)V

    .line 171
    const/4 v2, 0x3

    move-object/from16 v0, v21

    iput v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Lo:I

    .line 172
    const/4 v2, 0x4

    move-object/from16 v0, v21

    iput v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Hi:I

    goto/16 :goto_db

    .line 176
    :pswitch_34b
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->WARMUP:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    const-wide v24, 0x3fc3333333333333L    # 0.15

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    const-wide v12, 0x3fe999999999999aL    # 0.8

    sget-object v14, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->CONTINUOUS:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    new-instance v3, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    const/4 v4, 0x1

    const/16 v5, 0x12c

    const/4 v6, 0x3

    const/4 v7, 0x5

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v3 .. v9}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;-><init>(IIIID)V

    const/16 v16, 0x0

    move-object/from16 v5, v21

    move-object v6, v2

    move-wide/from16 v7, v24

    move/from16 v9, v22

    move-object v15, v3

    invoke-static/range {v5 .. v16}, Lcom/isaigu/gymapp/ai/AiPlanner;->addPhase(Lcom/isaigu/gymapp/ai/AiModel$Plan;Lcom/isaigu/gymapp/ai/AiModel$PhaseId;DIDDLcom/isaigu/gymapp/ai/AiModel$BlockMode;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)V

    .line 178
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->MAIN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    const-wide/high16 v24, 0x3fe8000000000000L    # 0.75

    const-wide v10, 0x3fe999999999999aL    # 0.8

    const-wide v12, 0x3fe999999999999aL    # 0.8

    sget-object v14, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->CONTINUOUS:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    new-instance v3, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    const/4 v4, 0x1

    const/16 v5, 0x12c

    const/4 v6, 0x3

    const/4 v7, 0x5

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v3 .. v9}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;-><init>(IIIID)V

    const/16 v16, 0x0

    move-object/from16 v5, v21

    move-object v6, v2

    move-wide/from16 v7, v24

    move/from16 v9, v22

    move-object v15, v3

    invoke-static/range {v5 .. v16}, Lcom/isaigu/gymapp/ai/AiPlanner;->addPhase(Lcom/isaigu/gymapp/ai/AiModel$Plan;Lcom/isaigu/gymapp/ai/AiModel$PhaseId;DIDDLcom/isaigu/gymapp/ai/AiModel$BlockMode;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)V

    .line 180
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->COOLDOWN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    const-wide v24, 0x3fb999999999999aL    # 0.1

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    sget-object v14, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->CONTINUOUS:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    new-instance v3, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    const/4 v4, 0x1

    const/16 v5, 0x12c

    const/4 v6, 0x3

    const/4 v7, 0x5

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v3 .. v9}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;-><init>(IIIID)V

    const/16 v16, 0x0

    move-object/from16 v5, v21

    move-object v6, v2

    move-wide/from16 v7, v24

    move/from16 v9, v22

    move-object v15, v3

    invoke-static/range {v5 .. v16}, Lcom/isaigu/gymapp/ai/AiPlanner;->addPhase(Lcom/isaigu/gymapp/ai/AiModel$Plan;Lcom/isaigu/gymapp/ai/AiModel$PhaseId;DIDDLcom/isaigu/gymapp/ai/AiModel$BlockMode;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)V

    .line 182
    const/4 v2, 0x3

    move-object/from16 v0, v21

    iput v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Lo:I

    .line 183
    const/4 v2, 0x4

    move-object/from16 v0, v21

    iput v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Hi:I

    goto/16 :goto_db

    .line 212
    :cond_3cf
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueParams(Lcom/isaigu/gymapp/ai/AiModel$Fitness;)[D

    move-result-object v2

    .line 213
    const/4 v3, 0x0

    aget-wide v4, v2, v3

    move-object/from16 v0, v21

    iput-wide v4, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->fMax:D

    .line 214
    const/4 v3, 0x1

    aget-wide v4, v2, v3

    move-object/from16 v0, v21

    iput-wide v4, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->fRec:D

    .line 215
    const/4 v3, 0x2

    aget-wide v2, v2, v3

    move-object/from16 v0, v21

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->tauR:D

    .line 216
    invoke-static/range {v21 .. v21}, Lcom/isaigu/gymapp/ai/AiPlanner;->simulateDose(Lcom/isaigu/gymapp/ai/AiModel$Plan;)D

    move-result-wide v2

    move-object/from16 v0, v21

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qPlan:D

    .line 217
    move-object/from16 v0, v21

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qPlan:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    if-eqz v20, :cond_405

    const-wide/16 v2, 0x0

    :goto_3fe
    add-double/2addr v2, v6

    mul-double/2addr v2, v4

    move-object/from16 v0, v21

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qBudget:D

    .line 218
    return-object v21

    .line 217
    :cond_405
    const-wide v2, 0x3fb999999999999aL    # 0.1

    goto :goto_3fe

    .line 141
    nop

    :pswitch_data_40c
    .packed-switch 0x1
        :pswitch_15a
        :pswitch_1e3
        :pswitch_2b5
        :pswitch_34b
    .end packed-switch
.end method

.method public static clampSeconds(Lcom/isaigu/gymapp/ai/AiModel$Goal;I)I
    .registers 5

    .prologue
    const/16 v2, 0x708

    const/16 v1, 0x258

    .line 123
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne p0, v0, :cond_13

    .line 124
    const/16 v0, 0x4b0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 129
    :goto_12
    return v0

    .line 126
    :cond_13
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->FAT:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne p0, v0, :cond_22

    .line 127
    const/16 v0, 0x960

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_12

    .line 129
    :cond_22
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_12
.end method

.method public static cycleDose(Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;D)D
    .registers 8

    .prologue
    .line 265
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, p1

    iget v2, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pwUs:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->onS:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static defaultSeconds(Lcom/isaigu/gymapp/ai/AiModel$Goal;)I
    .registers 2

    .prologue
    .line 119
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->FAT:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne p0, v0, :cond_7

    const/16 v0, 0x708

    :goto_6
    return v0

    :cond_7
    const/16 v0, 0x4b0

    goto :goto_6
.end method

.method public static derive(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;IDJ)Lcom/isaigu/gymapp/ai/AiModel$Profile;
    .registers 22

    .prologue
    .line 41
    new-instance v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;

    invoke-direct {v12}, Lcom/isaigu/gymapp/ai/AiModel$Profile;-><init>()V

    .line 42
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiPlanner;->hrMax(Lcom/isaigu/gymapp/ai/AiModel$Sex;I)I

    move-result v2

    iput v2, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrMax:I

    .line 43
    if-lez p1, :cond_12a

    const/4 v2, 0x1

    :goto_16
    iput-boolean v2, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    .line 44
    if-lez p1, :cond_12d

    :goto_1a
    move/from16 v0, p1

    iput v0, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrRest:I

    .line 45
    move-wide/from16 v0, p2

    iput-wide v0, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->sigmaRest:D

    .line 46
    move-wide/from16 v0, p4

    iput-wide v0, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->dtHrMs:J

    .line 47
    const/4 v2, 0x1

    iget v3, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrMax:I

    iget v4, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrRest:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrr:I

    .line 49
    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    .line 52
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$Mode;->PASSIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    if-ne v2, v3, :cond_131

    const/4 v2, 0x1

    .line 53
    :goto_3d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v3, v4, :cond_142

    .line 54
    if-eqz v2, :cond_134

    const-wide v6, 0x3fdccccccccccccdL    # 0.45

    .line 55
    :goto_4c
    if-eqz v2, :cond_13b

    const-wide v4, 0x3fe3333333333333L    # 0.6

    .line 64
    :goto_53
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v10, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v3, v10, :cond_17d

    const-wide v10, -0x4056666666666666L    # -0.05

    .line 65
    :goto_60
    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    const/16 v13, 0x3c

    if-lt v3, v13, :cond_6e

    .line 66
    const-wide v14, 0x3fa999999999999aL    # 0.05

    sub-double/2addr v10, v14

    .line 68
    :cond_6e
    add-double/2addr v6, v10

    .line 69
    add-double/2addr v4, v10

    .line 70
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_77

    .line 71
    add-double/2addr v8, v10

    .line 73
    :cond_77
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v10, Lcom/isaigu/gymapp/ai/AiModel$Operator;->SELF:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    if-ne v3, v10, :cond_85

    .line 74
    const-wide v10, 0x3fa999999999999aL    # 0.05

    sub-double/2addr v4, v10

    .line 76
    :cond_85
    iput-wide v8, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    .line 77
    iput-wide v6, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xHi:D

    .line 78
    iput-wide v4, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xCap:D

    .line 79
    const-wide v8, 0x3fb999999999999aL    # 0.1

    sub-double/2addr v6, v8

    iput-wide v6, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xRec:D

    .line 81
    invoke-virtual {v12, v4, v5}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAt(D)I

    move-result v3

    iget v4, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrMax:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 82
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->hrCapOverride:Ljava/lang/Integer;

    if-eqz v4, :cond_c1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->hrCapOverride:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_c1

    .line 84
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiModel$Operator;->SELF:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    if-ne v4, v5, :cond_190

    .line 85
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->hrCapOverride:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 88
    :cond_c1
    :goto_c1
    iput v3, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrCap:I

    .line 90
    iget-boolean v3, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-nez v3, :cond_1a0

    .line 91
    const-wide/16 v4, 0x0

    iput-wide v4, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->cRate:D

    .line 92
    const/4 v3, 0x1

    iput-boolean v3, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->safetyOnly:Z

    .line 93
    iget-object v3, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->flags:Ljava/util/List;

    const-string v4, "NO_BAND"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :goto_d5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    if-eqz v3, :cond_1c8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/ai/AiModel$Screening;->hrLoweringMedication:Z

    if-eqz v3, :cond_1c8

    const-wide v4, 0x3fd3333333333333L    # 0.3

    :goto_e8
    iput-wide v4, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->cMed:D

    .line 104
    if-nez v2, :cond_104

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$Goal;->MASSAGE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-eq v2, v3, :cond_104

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$Goal;->DRAIN:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-eq v2, v3, :cond_104

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$Goal;->CELLULITE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v2, v3, :cond_107

    .line 105
    :cond_104
    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->safetyOnly:Z

    .line 107
    :cond_107
    iget-boolean v2, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v2, :cond_118

    iget v2, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrRest:I

    const/16 v3, 0x64

    if-lt v2, v3, :cond_118

    .line 108
    iget-object v2, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->flags:Ljava/util/List;

    const-string v3, "FLAG_TACHY"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_118
    iget-boolean v2, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v2, :cond_129

    iget v2, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrRest:I

    const/16 v3, 0x28

    if-ge v2, v3, :cond_129

    .line 111
    iget-object v2, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->flags:Ljava/util/List;

    const-string v3, "FLAG_BRADY"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_129
    return-object v12

    .line 43
    :cond_12a
    const/4 v2, 0x0

    goto/16 :goto_16

    .line 44
    :cond_12d
    const/16 p1, 0x0

    goto/16 :goto_1a

    .line 52
    :cond_131
    const/4 v2, 0x0

    goto/16 :goto_3d

    .line 54
    :cond_134
    const-wide v6, 0x3fe6666666666666L    # 0.7

    goto/16 :goto_4c

    .line 55
    :cond_13b
    const-wide v4, 0x3feb333333333333L    # 0.85

    goto/16 :goto_53

    .line 56
    :cond_142
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$Goal;->FAT:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v3, v4, :cond_171

    .line 57
    if-eqz v2, :cond_15e

    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    .line 58
    :goto_14e
    if-eqz v2, :cond_164

    const-wide v6, 0x3fdccccccccccccdL    # 0.45

    .line 59
    :goto_155
    if-eqz v2, :cond_16a

    const-wide v4, 0x3fe3333333333333L    # 0.6

    goto/16 :goto_53

    .line 57
    :cond_15e
    const-wide v8, 0x3fd999999999999aL    # 0.4

    goto :goto_14e

    .line 58
    :cond_164
    const-wide v6, 0x3fe2e147ae147ae1L    # 0.59

    goto :goto_155

    .line 59
    :cond_16a
    const-wide v4, 0x3fe999999999999aL    # 0.8

    goto/16 :goto_53

    .line 61
    :cond_171
    const-wide v6, 0x3fd3333333333333L    # 0.3

    .line 62
    const-wide v4, 0x3fdccccccccccccdL    # 0.45

    goto/16 :goto_53

    .line 64
    :cond_17d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v10, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v3, v10, :cond_18c

    const-wide v10, 0x3fa999999999999aL    # 0.05

    goto/16 :goto_60

    :cond_18c
    const-wide/16 v10, 0x0

    goto/16 :goto_60

    .line 86
    :cond_190
    iget v3, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrMax:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->hrCapOverride:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto/16 :goto_c1

    .line 94
    :cond_1a0
    const-wide/16 v4, 0x2710

    cmp-long v3, p4, v4

    if-lez v3, :cond_1b6

    .line 95
    const-wide/16 v4, 0x0

    iput-wide v4, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->cRate:D

    .line 96
    const/4 v3, 0x1

    iput-boolean v3, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->safetyOnly:Z

    .line 97
    iget-object v3, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->flags:Ljava/util/List;

    const-string v4, "HR_SLOW"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d5

    .line 98
    :cond_1b6
    const-wide/16 v4, 0xc80

    cmp-long v3, p4, v4

    if-lez v3, :cond_1c2

    .line 99
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    iput-wide v4, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->cRate:D

    goto/16 :goto_d5

    .line 101
    :cond_1c2
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iput-wide v4, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->cRate:D

    goto/16 :goto_d5

    .line 103
    :cond_1c8
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_e8
.end method

.method public static deviceOffS(I)I
    .registers 2

    .prologue
    .line 270
    const/4 v0, 0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static fatigueParams(Lcom/isaigu/gymapp/ai/AiModel$Fitness;)[D
    .registers 3

    .prologue
    const/4 v1, 0x3

    .line 249
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne p0, v0, :cond_b

    .line 250
    new-array v0, v1, [D

    fill-array-data v0, :array_1c

    .line 255
    :goto_a
    return-object v0

    .line 252
    :cond_b
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne p0, v0, :cond_15

    .line 253
    new-array v0, v1, [D

    fill-array-data v0, :array_2c

    goto :goto_a

    .line 255
    :cond_15
    new-array v0, v1, [D

    fill-array-data v0, :array_3c

    goto :goto_a

    .line 250
    nop

    :array_1c
    .array-data 8
        0x4028000000000000L    # 12.0
        0x4010000000000000L    # 4.0
        0x4044000000000000L    # 40.0
    .end array-data

    .line 253
    :array_2c
    .array-data 8
        0x4032000000000000L    # 18.0
        0x4018000000000000L    # 6.0
        0x4036000000000000L    # 22.0
    .end array-data

    .line 255
    :array_3c
    .array-data 8
        0x402e000000000000L    # 15.0
        0x4014000000000000L    # 5.0
        0x403e000000000000L    # 30.0
    .end array-data
.end method

.method public static fatigueWeight(I)D
    .registers 5

    .prologue
    .line 260
    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x4055400000000000L    # 85.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static hrMax(Lcom/isaigu/gymapp/ai/AiModel$Sex;I)I
    .registers 8

    .prologue
    .line 31
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne p0, v0, :cond_17

    .line 32
    const-wide v0, 0x4069c00000000000L    # 206.0

    const-wide v2, 0x3fec28f5c28f5c29L    # 0.88

    int-to-double v4, p1

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 31
    :goto_16
    return v0

    .line 33
    :cond_17
    const-wide/high16 v0, 0x406a000000000000L    # 208.0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    int-to-double v4, p1

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_16
.end method

.method private static limitCycle(Lcom/isaigu/gymapp/ai/AiModel$Phase;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;ZZ)V
    .registers 6

    .prologue
    .line 222
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->isTetanic()Z

    move-result v0

    if-nez v0, :cond_7

    .line 230
    :cond_6
    :goto_6
    return-void

    .line 225
    :cond_7
    if-nez p2, :cond_b

    if-eqz p3, :cond_25

    :cond_b
    const/4 v0, 0x4

    .line 226
    :goto_c
    iget v1, p1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->onS:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->onS:I

    .line 227
    if-eqz p2, :cond_6

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-nez v0, :cond_6

    .line 228
    iget v0, p1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    iget v1, p1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->onS:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    goto :goto_6

    .line 225
    :cond_25
    const/4 v0, 0x6

    goto :goto_c
.end method

.method public static simulateDose(Lcom/isaigu/gymapp/ai/AiModel$Plan;)D
    .registers 23

    .prologue
    .line 277
    const-wide/16 v2, 0x0

    .line 278
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move-wide v4, v2

    :cond_b
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_fa

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    .line 279
    const-wide/16 v14, 0x0

    .line 280
    const-wide/16 v12, 0x0

    .line 281
    const/4 v10, 0x0

    .line 282
    const/4 v3, 0x0

    .line 283
    const-wide/16 v8, 0x0

    .line 284
    const-wide/16 v6, 0x0

    .line 285
    :cond_21
    :goto_21
    iget v11, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-double v0, v11

    move-wide/from16 v18, v0

    cmpg-double v11, v14, v18

    if-gez v11, :cond_b

    .line 286
    if-eqz v3, :cond_5e

    .line 287
    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->tauR:D

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->exp(D)D

    move-result-wide v18

    mul-double v12, v12, v18

    .line 288
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    add-double v14, v14, v18

    .line 289
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    add-double v8, v8, v18

    .line 290
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->fRec:D

    move-wide/from16 v18, v0

    cmpg-double v11, v12, v18

    if-gtz v11, :cond_54

    const-wide/high16 v18, 0x4034000000000000L    # 20.0

    cmpl-double v11, v8, v18

    if-gez v11, :cond_5a

    :cond_54
    const-wide/high16 v18, 0x405e000000000000L    # 120.0

    cmpl-double v11, v8, v18

    if-ltz v11, :cond_21

    .line 291
    :cond_5a
    const/4 v3, 0x0

    .line 292
    const-wide/16 v6, 0x0

    goto :goto_21

    .line 296
    :cond_5e
    iget-object v11, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v11, :cond_f4

    if-eqz v10, :cond_f4

    iget-object v11, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    .line 297
    :goto_66
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    iget v0, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    div-double v18, v14, v18

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiAt(D)D

    move-result-wide v18

    iget-wide v0, v11, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->sigma:D

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    .line 298
    move-wide/from16 v0, v18

    invoke-static {v11, v0, v1}, Lcom/isaigu/gymapp/ai/AiPlanner;->cycleDose(Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;D)D

    move-result-wide v20

    add-double v4, v4, v20

    .line 299
    iget v0, v11, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueWeight(I)D

    move-result-wide v20

    mul-double v18, v18, v20

    iget v0, v11, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->onS:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    add-double v12, v12, v18

    .line 300
    iget v0, v11, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/isaigu/gymapp/ai/AiPlanner;->deviceOffS(I)I

    move-result v17

    .line 301
    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->tauR:D

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->exp(D)D

    move-result-wide v18

    mul-double v12, v12, v18

    .line 302
    iget v11, v11, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->onS:I

    add-int v11, v11, v17

    int-to-double v0, v11

    move-wide/from16 v18, v0

    .line 303
    add-double v14, v14, v18

    .line 304
    add-double v6, v6, v18

    .line 305
    iget-object v11, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v11, :cond_d4

    .line 306
    if-nez v10, :cond_f8

    const/4 v10, 0x1

    .line 308
    :cond_d4
    :goto_d4
    iget-object v11, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->blockMode:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    sget-object v17, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->FATIGUE_DRIVEN:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    move-object/from16 v0, v17

    if-ne v11, v0, :cond_21

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->fMax:D

    move-wide/from16 v18, v0

    cmpl-double v11, v12, v18

    if-gez v11, :cond_ef

    const-wide v18, 0x4066800000000000L    # 180.0

    cmpl-double v11, v6, v18

    if-ltz v11, :cond_21

    .line 310
    :cond_ef
    const/4 v3, 0x1

    .line 311
    const-wide/16 v8, 0x0

    goto/16 :goto_21

    .line 296
    :cond_f4
    iget-object v11, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->a:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    goto/16 :goto_66

    .line 306
    :cond_f8
    const/4 v10, 0x0

    goto :goto_d4

    .line 315
    :cond_fa
    return-wide v4
.end method
