.class public final Lcom/isaigu/gymapp/ai/AiPlanner;
.super Ljava/lang/Object;
.source "AiPlanner.java"


# static fields
.field public static final ACTIVE_PAUSE_MIN_OFF_S:I = 0x2

.field public static final BUDGET_BETA:D = 0.1

.field public static final DT_FULL_MS:J = 0xc80L

.field public static final DT_SAFETY_ONLY_MS:J = 0x2710L

.field public static final T_BLOCK_MAX_S:D = 180.0

.field public static final T_REST_MAX_S:D = 120.0

.field public static final T_REST_MIN_S:D = 20.0


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addPhase(Lcom/isaigu/gymapp/ai/AiModel$Plan;Lcom/isaigu/gymapp/ai/AiModel$PhaseId;DIDDLcom/isaigu/gymapp/ai/AiModel$BlockMode;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)V
    .registers 15

    .line 327
    new-instance v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiModel$Phase;-><init>()V

    .line 328
    iput-object p1, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    .line 329
    int-to-double v1, p4

    mul-double p2, p2, v1

    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    move-result-wide p2

    long-to-int p3, p2

    iput p3, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    .line 330
    iput-wide p5, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiStart:D

    .line 331
    iput-wide p7, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiEnd:D

    .line 332
    iput-object p9, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->blockMode:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    .line 333
    iput-object p10, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->a:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    .line 334
    iput-object p11, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    .line 336
    sget-object p2, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->METABOLIC:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    if-ne p1, p2, :cond_22

    const-string p1, "METABOLIC"

    goto :goto_24

    :cond_22
    const-string p1, "FULL"

    :goto_24
    iput-object p1, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->exerciseClass:Ljava/lang/String;

    .line 337
    iget-object p0, p0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    return-void
.end method

.method static applyPause(Lcom/isaigu/gymapp/ai/AiModel$Plan;Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V
    .registers 7

    .line 245
    nop

    .line 246
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    .line 247
    iget-object v4, v3, Lcom/isaigu/gymapp/ai/AiModel$Phase;->a:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    invoke-static {v3, v4, p1}, Lcom/isaigu/gymapp/ai/AiPlanner;->setPause(Lcom/isaigu/gymapp/ai/AiModel$Phase;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    .line 248
    iget-object v4, v3, Lcom/isaigu/gymapp/ai/AiModel$Phase;->a:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hasActivePause()Z

    move-result v4

    or-int/2addr v2, v4

    .line 249
    iget-object v4, v3, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v4, :cond_31

    .line 250
    iget-object v4, v3, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    invoke-static {v3, v4, p1}, Lcom/isaigu/gymapp/ai/AiPlanner;->setPause(Lcom/isaigu/gymapp/ai/AiModel$Phase;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    .line 251
    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hasActivePause()Z

    move-result v3

    or-int/2addr v2, v3

    .line 253
    :cond_31
    goto :goto_9

    .line 254
    :cond_32
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->pauseAvailable:Z

    .line 255
    if-eqz v2, :cond_3d

    iget-object p1, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->pause:Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$PauseMode;->PASSIVE:Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    if-eq p1, v0, :cond_3d

    const/4 v1, 0x1

    :cond_3d
    iput-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->pauseOn:Z

    .line 256
    return-void
.end method

.method private static autoActive(Lcom/isaigu/gymapp/ai/AiModel$Goal;Lcom/isaigu/gymapp/ai/AiModel$Phase;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)Z
    .registers 6

    .line 292
    sget-object v0, Lcom/isaigu/gymapp/ai/AiPlanner$1;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$Goal:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2a

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1c

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1b

    const/4 p1, 0x5

    if-eq p0, p1, :cond_16

    .line 302
    return v0

    .line 298
    :cond_16
    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->isTetanic()Z

    move-result p0

    return p0

    .line 300
    :cond_1b
    return v1

    .line 296
    :cond_1c
    iget-object p0, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    sget-object p2, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->WARMUP:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    if-eq p0, p2, :cond_28

    iget-object p0, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    sget-object p1, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->MAIN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    if-ne p0, p1, :cond_29

    :cond_28
    const/4 v0, 0x1

    :cond_29
    return v0

    .line 294
    :cond_2a
    iget-object p0, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    sget-object p1, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->WARMUP:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    if-ne p0, p1, :cond_31

    const/4 v0, 0x1

    :cond_31
    return v0
.end method

.method public static build(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Lcom/isaigu/gymapp/ai/AiModel$Profile;)Lcom/isaigu/gymapp/ai/AiModel$Plan;
    .registers 49

    .line 133
    move-object/from16 v0, p0

    new-instance v13, Lcom/isaigu/gymapp/ai/AiModel$Plan;

    invoke-direct {v13}, Lcom/isaigu/gymapp/ai/AiModel$Plan;-><init>()V

    .line 134
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Mode;->PASSIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    const/4 v15, 0x1

    if-ne v1, v2, :cond_10

    const/4 v12, 0x1

    goto :goto_11

    :cond_10
    const/4 v12, 0x0

    .line 135
    :goto_11
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Operator;->SELF:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    if-ne v1, v2, :cond_19

    const/4 v11, 0x1

    goto :goto_1a

    :cond_19
    const/4 v11, 0x0

    .line 136
    :goto_1a
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    .line 137
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->totalSeconds:Ljava/lang/Integer;

    if-eqz v2, :cond_27

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->totalSeconds:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2d

    :cond_27
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiPlanner;->defaultSeconds(Lcom/isaigu/gymapp/ai/AiModel$Goal;)I

    move-result v2

    .line 136
    :goto_2d
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiPlanner;->clampSeconds(Lcom/isaigu/gymapp/ai/AiModel$Goal;I)I

    move-result v10

    .line 138
    iput v10, v13, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    .line 139
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    if-eqz v11, :cond_3d

    const-wide v1, 0x3feccccccccccccdL    # 0.9

    goto :goto_3f

    :cond_3d
    move-wide/from16 v1, v16

    :goto_3f
    iput-wide v1, v13, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phiMax:D

    .line 141
    sget-object v1, Lcom/isaigu/gymapp/ai/AiPlanner$1;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$Goal:[I

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v18, 0x6

    const/4 v8, 0x2

    const/16 v19, 0x5

    const/4 v9, 0x4

    if-eq v1, v15, :cond_271

    if-eq v1, v8, :cond_1c7

    const/4 v6, 0x3

    if-eq v1, v6, :cond_14b

    if-eq v1, v9, :cond_e5

    .line 187
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->MAIN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    const-wide v3, 0x3fdccccccccccccdL    # 0.45

    const-wide v18, 0x3fe3333333333333L    # 0.6

    const-wide v20, 0x3fe3333333333333L    # 0.6

    sget-object v22, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->FATIGUE_DRIVEN:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    new-instance v30, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    const/16 v24, 0x55

    const/16 v25, 0x15e

    const/16 v26, 0x4

    const/16 v27, 0x6

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-object/from16 v23, v30

    invoke-direct/range {v23 .. v29}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;-><init>(IIIID)V

    const/16 v23, 0x0

    move-object v1, v13

    move v5, v10

    const/4 v15, 0x3

    move-wide/from16 v6, v18

    const/4 v14, 0x4

    const/16 v25, 0x2

    move-wide/from16 v8, v20

    move/from16 v20, v10

    move-object/from16 v10, v22

    move/from16 v31, v11

    move-object/from16 v11, v30

    move/from16 v32, v12

    move-object/from16 v12, v23

    invoke-static/range {v1 .. v12}, Lcom/isaigu/gymapp/ai/AiPlanner;->addPhase(Lcom/isaigu/gymapp/ai/AiModel$Plan;Lcom/isaigu/gymapp/ai/AiModel$PhaseId;DIDDLcom/isaigu/gymapp/ai/AiModel$BlockMode;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)V

    .line 189
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->MAIN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    const-wide v6, 0x3fe999999999999aL    # 0.8

    const-wide v8, 0x3fe999999999999aL    # 0.8

    sget-object v10, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->CONTINUOUS:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    new-instance v11, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    const/16 v34, 0x1

    const/16 v35, 0x12c

    const/16 v36, 0x3

    const/16 v37, 0x5

    const-wide/high16 v38, 0x3ff0000000000000L    # 1.0

    move-object/from16 v33, v11

    invoke-direct/range {v33 .. v39}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;-><init>(IIIID)V

    const/4 v12, 0x0

    move/from16 v5, v20

    invoke-static/range {v1 .. v12}, Lcom/isaigu/gymapp/ai/AiPlanner;->addPhase(Lcom/isaigu/gymapp/ai/AiModel$Plan;Lcom/isaigu/gymapp/ai/AiModel$PhaseId;DIDDLcom/isaigu/gymapp/ai/AiModel$BlockMode;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)V

    .line 191
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->COOLDOWN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    const-wide v3, 0x3fb999999999999aL    # 0.1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    sget-object v10, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->CONTINUOUS:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    new-instance v11, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    const/16 v34, 0x3

    const/16 v35, 0xfa

    const/16 v36, 0xa

    const/16 v37, 0x0

    move-object/from16 v33, v11

    invoke-direct/range {v33 .. v39}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;-><init>(IIIID)V

    invoke-static/range {v1 .. v12}, Lcom/isaigu/gymapp/ai/AiPlanner;->addPhase(Lcom/isaigu/gymapp/ai/AiModel$Plan;Lcom/isaigu/gymapp/ai/AiModel$PhaseId;DIDDLcom/isaigu/gymapp/ai/AiModel$BlockMode;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)V

    .line 193
    iput v15, v13, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Lo:I

    .line 194
    iput v14, v13, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Hi:I

    move/from16 v15, v32

    goto/16 :goto_2e4

    .line 176
    :cond_e5
    move/from16 v20, v10

    move/from16 v31, v11

    move/from16 v32, v12

    const/4 v14, 0x4

    const/4 v15, 0x3

    const/16 v25, 0x2

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->WARMUP:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    const-wide v3, 0x3fc3333333333333L    # 0.15

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide v8, 0x3fe999999999999aL    # 0.8

    sget-object v10, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->CONTINUOUS:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    new-instance v11, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    const/16 v34, 0x1

    const/16 v35, 0x12c

    const/16 v36, 0x3

    const/16 v37, 0x5

    const-wide/high16 v38, 0x3ff0000000000000L    # 1.0

    move-object/from16 v33, v11

    invoke-direct/range {v33 .. v39}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;-><init>(IIIID)V

    const/4 v12, 0x0

    move-object v1, v13

    move/from16 v5, v20

    invoke-static/range {v1 .. v12}, Lcom/isaigu/gymapp/ai/AiPlanner;->addPhase(Lcom/isaigu/gymapp/ai/AiModel$Plan;Lcom/isaigu/gymapp/ai/AiModel$PhaseId;DIDDLcom/isaigu/gymapp/ai/AiModel$BlockMode;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)V

    .line 178
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->MAIN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    const-wide v6, 0x3fe999999999999aL    # 0.8

    sget-object v10, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->CONTINUOUS:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    new-instance v11, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    move-object/from16 v33, v11

    invoke-direct/range {v33 .. v39}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;-><init>(IIIID)V

    invoke-static/range {v1 .. v12}, Lcom/isaigu/gymapp/ai/AiPlanner;->addPhase(Lcom/isaigu/gymapp/ai/AiModel$Plan;Lcom/isaigu/gymapp/ai/AiModel$PhaseId;DIDDLcom/isaigu/gymapp/ai/AiModel$BlockMode;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)V

    .line 180
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->COOLDOWN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    const-wide v3, 0x3fb999999999999aL    # 0.1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    sget-object v10, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->CONTINUOUS:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    new-instance v11, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    move-object/from16 v33, v11

    invoke-direct/range {v33 .. v39}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;-><init>(IIIID)V

    invoke-static/range {v1 .. v12}, Lcom/isaigu/gymapp/ai/AiPlanner;->addPhase(Lcom/isaigu/gymapp/ai/AiModel$Plan;Lcom/isaigu/gymapp/ai/AiModel$PhaseId;DIDDLcom/isaigu/gymapp/ai/AiModel$BlockMode;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)V

    .line 182
    iput v15, v13, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Lo:I

    .line 183
    iput v14, v13, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Hi:I

    .line 184
    move/from16 v15, v32

    goto/16 :goto_2e4

    .line 165
    :cond_14b
    move/from16 v20, v10

    move/from16 v31, v11

    move/from16 v32, v12

    const/4 v14, 0x4

    const/4 v15, 0x3

    const/16 v25, 0x2

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->WARMUP:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    const-wide v3, 0x3fc3333333333333L    # 0.15

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide v8, 0x3fe999999999999aL    # 0.8

    sget-object v10, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->CONTINUOUS:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    new-instance v11, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    const/16 v34, 0x3

    const/16 v35, 0xfa

    const/16 v36, 0xa

    const/16 v37, 0x2

    const-wide/high16 v38, 0x3ff0000000000000L    # 1.0

    move-object/from16 v33, v11

    invoke-direct/range {v33 .. v39}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;-><init>(IIIID)V

    const/4 v12, 0x0

    move-object v1, v13

    move/from16 v5, v20

    invoke-static/range {v1 .. v12}, Lcom/isaigu/gymapp/ai/AiPlanner;->addPhase(Lcom/isaigu/gymapp/ai/AiModel$Plan;Lcom/isaigu/gymapp/ai/AiModel$PhaseId;DIDDLcom/isaigu/gymapp/ai/AiModel$BlockMode;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)V

    .line 167
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->MAIN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    const-wide v6, 0x3fe999999999999aL    # 0.8

    sget-object v10, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->CONTINUOUS:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    new-instance v11, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    const/16 v34, 0x2

    move-object/from16 v33, v11

    invoke-direct/range {v33 .. v39}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;-><init>(IIIID)V

    new-instance v12, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    const/16 v41, 0x8

    const/16 v42, 0xfa

    const/16 v43, 0xa

    const/16 v44, 0x2

    const-wide/high16 v45, 0x3ff0000000000000L    # 1.0

    move-object/from16 v40, v12

    invoke-direct/range {v40 .. v46}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;-><init>(IIIID)V

    invoke-static/range {v1 .. v12}, Lcom/isaigu/gymapp/ai/AiPlanner;->addPhase(Lcom/isaigu/gymapp/ai/AiModel$Plan;Lcom/isaigu/gymapp/ai/AiModel$PhaseId;DIDDLcom/isaigu/gymapp/ai/AiModel$BlockMode;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)V

    .line 169
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->COOLDOWN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    const-wide v3, 0x3fb999999999999aL    # 0.1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    sget-object v10, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->CONTINUOUS:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    new-instance v11, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    const/16 v37, 0x0

    move-object/from16 v33, v11

    invoke-direct/range {v33 .. v39}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;-><init>(IIIID)V

    const/4 v12, 0x0

    invoke-static/range {v1 .. v12}, Lcom/isaigu/gymapp/ai/AiPlanner;->addPhase(Lcom/isaigu/gymapp/ai/AiModel$Plan;Lcom/isaigu/gymapp/ai/AiModel$PhaseId;DIDDLcom/isaigu/gymapp/ai/AiModel$BlockMode;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)V

    .line 171
    iput v15, v13, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Lo:I

    .line 172
    iput v14, v13, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Hi:I

    .line 173
    move/from16 v15, v32

    goto/16 :goto_2e4

    .line 153
    :cond_1c7
    move/from16 v20, v10

    move/from16 v31, v11

    move/from16 v32, v12

    const/4 v14, 0x4

    const/16 v25, 0x2

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->WARMUP:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    const-wide v3, 0x3fb999999999999aL    # 0.1

    const-wide v6, 0x3fe3333333333333L    # 0.6

    const-wide v8, 0x3feccccccccccccdL    # 0.9

    sget-object v10, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->CONTINUOUS:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    new-instance v11, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    const/16 v34, 0x55

    const/16 v35, 0x15e

    const/16 v36, 0x4

    const/16 v37, 0x4

    const-wide/high16 v38, 0x3ff0000000000000L    # 1.0

    move-object/from16 v33, v11

    invoke-direct/range {v33 .. v39}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;-><init>(IIIID)V

    const/4 v12, 0x0

    move-object v1, v13

    move/from16 v5, v20

    invoke-static/range {v1 .. v12}, Lcom/isaigu/gymapp/ai/AiPlanner;->addPhase(Lcom/isaigu/gymapp/ai/AiModel$Plan;Lcom/isaigu/gymapp/ai/AiModel$PhaseId;DIDDLcom/isaigu/gymapp/ai/AiModel$BlockMode;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)V

    .line 155
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->MAIN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    const-wide v3, 0x3fd999999999999aL    # 0.4

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    sget-object v10, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->FATIGUE_DRIVEN:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    new-instance v11, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    move-object/from16 v33, v11

    invoke-direct/range {v33 .. v39}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;-><init>(IIIID)V

    invoke-static/range {v1 .. v12}, Lcom/isaigu/gymapp/ai/AiPlanner;->addPhase(Lcom/isaigu/gymapp/ai/AiModel$Plan;Lcom/isaigu/gymapp/ai/AiModel$PhaseId;DIDDLcom/isaigu/gymapp/ai/AiModel$BlockMode;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)V

    .line 157
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->METABOLIC:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    const-wide v6, 0x3fe999999999999aL    # 0.8

    const-wide v8, 0x3fe999999999999aL    # 0.8

    sget-object v10, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->FATIGUE_DRIVEN:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    new-instance v11, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    const/16 v37, 0x0

    move-object/from16 v33, v11

    invoke-direct/range {v33 .. v39}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;-><init>(IIIID)V

    new-instance v12, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    const/16 v41, 0x6

    const/16 v42, 0x15e

    const/16 v43, 0x4

    const/16 v44, 0x0

    const-wide v45, 0x3fe6666666666666L    # 0.7

    move-object/from16 v40, v12

    invoke-direct/range {v40 .. v46}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;-><init>(IIIID)V

    invoke-static/range {v1 .. v12}, Lcom/isaigu/gymapp/ai/AiPlanner;->addPhase(Lcom/isaigu/gymapp/ai/AiModel$Plan;Lcom/isaigu/gymapp/ai/AiModel$PhaseId;DIDDLcom/isaigu/gymapp/ai/AiModel$BlockMode;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)V

    .line 159
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->COOLDOWN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    const-wide v3, 0x3fb999999999999aL    # 0.1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    sget-object v10, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->CONTINUOUS:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    new-instance v11, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    const/16 v34, 0x5

    const/16 v35, 0xfa

    const/16 v36, 0xa

    move-object/from16 v33, v11

    invoke-direct/range {v33 .. v39}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;-><init>(IIIID)V

    const/4 v12, 0x0

    invoke-static/range {v1 .. v12}, Lcom/isaigu/gymapp/ai/AiPlanner;->addPhase(Lcom/isaigu/gymapp/ai/AiModel$Plan;Lcom/isaigu/gymapp/ai/AiModel$PhaseId;DIDDLcom/isaigu/gymapp/ai/AiModel$BlockMode;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)V

    .line 161
    move/from16 v15, v32

    if-eqz v15, :cond_265

    const/4 v9, 0x4

    goto :goto_266

    :cond_265
    const/4 v9, 0x5

    :goto_266
    iput v9, v13, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Lo:I

    .line 162
    if-eqz v15, :cond_26c

    const/4 v1, 0x5

    goto :goto_26d

    :cond_26c
    const/4 v1, 0x6

    :goto_26d
    iput v1, v13, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Hi:I

    .line 163
    goto/16 :goto_2e4

    .line 143
    :cond_271
    move/from16 v20, v10

    move/from16 v31, v11

    move v15, v12

    const/4 v14, 0x4

    const/16 v25, 0x2

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->WARMUP:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    const-wide v3, 0x3fc3333333333333L    # 0.15

    const-wide v6, 0x3fe3333333333333L    # 0.6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sget-object v10, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->CONTINUOUS:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    new-instance v11, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    const/16 v33, 0x55

    const/16 v34, 0x15e

    const/16 v35, 0x4

    const/16 v36, 0x4

    const-wide/high16 v37, 0x3ff0000000000000L    # 1.0

    move-object/from16 v32, v11

    invoke-direct/range {v32 .. v38}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;-><init>(IIIID)V

    const/4 v12, 0x0

    move-object v1, v13

    move/from16 v5, v20

    invoke-static/range {v1 .. v12}, Lcom/isaigu/gymapp/ai/AiPlanner;->addPhase(Lcom/isaigu/gymapp/ai/AiModel$Plan;Lcom/isaigu/gymapp/ai/AiModel$PhaseId;DIDDLcom/isaigu/gymapp/ai/AiModel$BlockMode;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)V

    .line 145
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->MAIN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sget-object v10, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->FATIGUE_DRIVEN:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    new-instance v11, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    const/16 v35, 0x6

    move-object/from16 v32, v11

    invoke-direct/range {v32 .. v38}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;-><init>(IIIID)V

    invoke-static/range {v1 .. v12}, Lcom/isaigu/gymapp/ai/AiPlanner;->addPhase(Lcom/isaigu/gymapp/ai/AiModel$Plan;Lcom/isaigu/gymapp/ai/AiModel$PhaseId;DIDDLcom/isaigu/gymapp/ai/AiModel$BlockMode;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)V

    .line 147
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->COOLDOWN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    const-wide v3, 0x3fb999999999999aL    # 0.1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    sget-object v10, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->CONTINUOUS:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    new-instance v11, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    const/16 v33, 0x5

    const/16 v34, 0xfa

    const/16 v35, 0xa

    const/16 v36, 0x0

    move-object/from16 v32, v11

    invoke-direct/range {v32 .. v38}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;-><init>(IIIID)V

    invoke-static/range {v1 .. v12}, Lcom/isaigu/gymapp/ai/AiPlanner;->addPhase(Lcom/isaigu/gymapp/ai/AiModel$Plan;Lcom/isaigu/gymapp/ai/AiModel$PhaseId;DIDDLcom/isaigu/gymapp/ai/AiModel$BlockMode;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)V

    .line 149
    if-eqz v15, :cond_2d7

    goto :goto_2d8

    :cond_2d7
    const/4 v14, 0x6

    :goto_2d8
    iput v14, v13, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Lo:I

    .line 150
    if-eqz v15, :cond_2de

    const/4 v1, 0x5

    goto :goto_2e1

    :cond_2de
    const/16 v19, 0x7

    const/4 v1, 0x7

    :goto_2e1
    iput v1, v13, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Hi:I

    .line 151
    nop

    .line 199
    :goto_2e4
    iget-object v1, v13, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2ea
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    .line 200
    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->a:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    move/from16 v14, v31

    invoke-static {v2, v3, v15, v14}, Lcom/isaigu/gymapp/ai/AiPlanner;->limitCycle(Lcom/isaigu/gymapp/ai/AiModel$Phase;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;ZZ)V

    .line 201
    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v3, :cond_306

    .line 202
    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    invoke-static {v2, v3, v15, v14}, Lcom/isaigu/gymapp/ai/AiPlanner;->limitCycle(Lcom/isaigu/gymapp/ai/AiModel$Phase;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;ZZ)V

    .line 204
    :cond_306
    if-eqz v15, :cond_325

    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->a:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->isTetanic()Z

    move-result v3

    if-eqz v3, :cond_325

    .line 205
    iget-wide v3, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiStart:D

    const-wide v5, 0x3fe6666666666666L    # 0.7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    iput-wide v3, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiStart:D

    .line 206
    iget-wide v3, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiEnd:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    iput-wide v3, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiEnd:D

    .line 208
    :cond_325
    iget-wide v3, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiStart:D

    iget-wide v5, v13, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phiMax:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    iput-wide v3, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiStart:D

    .line 209
    iget-wide v3, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiEnd:D

    iget-wide v5, v13, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phiMax:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    iput-wide v3, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiEnd:D

    .line 210
    move/from16 v31, v14

    goto :goto_2ea

    .line 212
    :cond_33c
    move/from16 v14, v31

    invoke-static {v13, v0}, Lcom/isaigu/gymapp/ai/AiPlanner;->applyPause(Lcom/isaigu/gymapp/ai/AiModel$Plan;Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    .line 214
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueParams(Lcom/isaigu/gymapp/ai/AiModel$Fitness;)[D

    move-result-object v0

    .line 215
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    iput-wide v2, v13, Lcom/isaigu/gymapp/ai/AiModel$Plan;->fMax:D

    .line 216
    const/4 v1, 0x1

    aget-wide v2, v0, v1

    iput-wide v2, v13, Lcom/isaigu/gymapp/ai/AiModel$Plan;->fRec:D

    .line 217
    aget-wide v2, v0, v25

    iput-wide v2, v13, Lcom/isaigu/gymapp/ai/AiModel$Plan;->tauR:D

    .line 218
    invoke-static {v13, v1}, Lcom/isaigu/gymapp/ai/AiPlanner;->simulateDose(Lcom/isaigu/gymapp/ai/AiModel$Plan;Z)D

    move-result-wide v0

    iput-wide v0, v13, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qPlanPauseOn:D

    .line 219
    const/4 v0, 0x0

    invoke-static {v13, v0}, Lcom/isaigu/gymapp/ai/AiPlanner;->simulateDose(Lcom/isaigu/gymapp/ai/AiModel$Plan;Z)D

    move-result-wide v0

    iput-wide v0, v13, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qPlanPauseOff:D

    .line 220
    iget-boolean v0, v13, Lcom/isaigu/gymapp/ai/AiModel$Plan;->pauseOn:Z

    if-eqz v0, :cond_369

    iget-wide v0, v13, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qPlanPauseOn:D

    goto :goto_36b

    :cond_369
    iget-wide v0, v13, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qPlanPauseOff:D

    :goto_36b
    iput-wide v0, v13, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qPlan:D

    .line 221
    iget-wide v0, v13, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qPlan:D

    if-eqz v14, :cond_374

    const-wide/16 v2, 0x0

    goto :goto_379

    :cond_374
    const-wide v2, 0x3fb999999999999aL    # 0.1

    :goto_379
    add-double v2, v2, v16

    mul-double v0, v0, v2

    iput-wide v0, v13, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qBudget:D

    .line 222
    return-object v13
.end method

.method public static clampSeconds(Lcom/isaigu/gymapp/ai/AiModel$Goal;I)I
    .registers 5

    .line 123
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    const/16 v1, 0x258

    if-ne p0, v0, :cond_11

    .line 124
    const/16 p0, 0x4b0

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 126
    :cond_11
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->FAT:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    const/16 v2, 0x708

    if-ne p0, v0, :cond_22

    .line 127
    const/16 p0, 0x960

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 129
    :cond_22
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static cycleDose(Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;D)D
    .registers 5

    .line 358
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double p1, p1, v0

    iget v0, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pwUs:I

    int-to-double v0, v0

    mul-double p1, p1, v0

    iget v0, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    int-to-double v0, v0

    mul-double p1, p1, v0

    iget p0, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->onS:I

    int-to-double v0, p0

    mul-double p1, p1, v0

    return-wide p1
.end method

.method public static defaultSeconds(Lcom/isaigu/gymapp/ai/AiModel$Goal;)I
    .registers 2

    .line 119
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->FAT:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne p0, v0, :cond_7

    const/16 p0, 0x708

    goto :goto_9

    :cond_7
    const/16 p0, 0x4b0

    :goto_9
    return p0
.end method

.method public static derive(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;IDJ)Lcom/isaigu/gymapp/ai/AiModel$Profile;
    .registers 24

    .line 41
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    new-instance v3, Lcom/isaigu/gymapp/ai/AiModel$Profile;

    invoke-direct {v3}, Lcom/isaigu/gymapp/ai/AiModel$Profile;-><init>()V

    .line 42
    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    iget v5, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiPlanner;->hrMax(Lcom/isaigu/gymapp/ai/AiModel$Sex;I)I

    move-result v4

    iput v4, v3, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrMax:I

    .line 43
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez p1, :cond_19

    const/4 v6, 0x1

    goto :goto_1a

    :cond_19
    const/4 v6, 0x0

    :goto_1a
    iput-boolean v6, v3, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    .line 44
    if-lez p1, :cond_21

    move/from16 v6, p1

    goto :goto_22

    :cond_21
    const/4 v6, 0x0

    :goto_22
    iput v6, v3, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrRest:I

    .line 45
    move-wide/from16 v6, p2

    iput-wide v6, v3, Lcom/isaigu/gymapp/ai/AiModel$Profile;->sigmaRest:D

    .line 46
    iput-wide v1, v3, Lcom/isaigu/gymapp/ai/AiModel$Profile;->dtHrMs:J

    .line 47
    iget v6, v3, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrMax:I

    iget v7, v3, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrRest:I

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v3, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrr:I

    .line 49
    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    .line 52
    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    sget-object v9, Lcom/isaigu/gymapp/ai/AiModel$Mode;->PASSIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    if-ne v8, v9, :cond_3e

    const/4 v4, 0x1

    .line 53
    :cond_3e
    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v9, Lcom/isaigu/gymapp/ai/AiModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v14, 0x3fdccccccccccccdL    # 0.45

    if-ne v8, v9, :cond_5f

    .line 54
    if-eqz v4, :cond_51

    goto :goto_56

    :cond_51
    const-wide v14, 0x3fe6666666666666L    # 0.7

    .line 55
    :goto_56
    if-eqz v4, :cond_59

    goto :goto_87

    :cond_59
    const-wide v10, 0x3feb333333333333L    # 0.85

    goto :goto_87

    .line 56
    :cond_5f
    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v9, Lcom/isaigu/gymapp/ai/AiModel$Goal;->FAT:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v8, v9, :cond_80

    .line 57
    if-eqz v4, :cond_6a

    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    goto :goto_6f

    :cond_6a
    const-wide v6, 0x3fd999999999999aL    # 0.4

    .line 58
    :goto_6f
    if-eqz v4, :cond_72

    goto :goto_77

    :cond_72
    const-wide v14, 0x3fe2e147ae147ae1L    # 0.59

    .line 59
    :goto_77
    if-eqz v4, :cond_7a

    goto :goto_87

    :cond_7a
    const-wide v10, 0x3fe999999999999aL    # 0.8

    goto :goto_87

    .line 61
    :cond_80
    nop

    .line 62
    move-wide v10, v14

    const-wide v14, 0x3fd3333333333333L    # 0.3

    .line 64
    :goto_87
    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v9, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    const-wide v16, 0x3fa999999999999aL    # 0.05

    if-ne v8, v9, :cond_98

    const-wide v8, -0x4056666666666666L    # -0.05

    goto :goto_a3

    :cond_98
    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v9, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v8, v9, :cond_a1

    move-wide/from16 v8, v16

    goto :goto_a3

    :cond_a1
    const-wide/16 v8, 0x0

    .line 65
    :goto_a3
    iget v5, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    const/16 v12, 0x3c

    if-lt v5, v12, :cond_ab

    .line 66
    sub-double v8, v8, v16

    .line 68
    :cond_ab
    add-double/2addr v14, v8

    .line 69
    add-double/2addr v10, v8

    .line 70
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_b4

    .line 71
    add-double/2addr v6, v8

    .line 73
    :cond_b4
    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v8, Lcom/isaigu/gymapp/ai/AiModel$Operator;->SELF:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    if-ne v5, v8, :cond_bc

    .line 74
    sub-double v10, v10, v16

    .line 76
    :cond_bc
    iput-wide v6, v3, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    .line 77
    iput-wide v14, v3, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xHi:D

    .line 78
    iput-wide v10, v3, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xCap:D

    .line 79
    const-wide v5, 0x3fb999999999999aL    # 0.1

    sub-double/2addr v14, v5

    iput-wide v14, v3, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xRec:D

    .line 81
    invoke-virtual {v3, v10, v11}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAt(D)I

    move-result v5

    iget v6, v3, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrMax:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 82
    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->hrCapOverride:Ljava/lang/Integer;

    if-eqz v6, :cond_fd

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->hrCapOverride:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_fd

    .line 84
    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v7, Lcom/isaigu/gymapp/ai/AiModel$Operator;->SELF:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    if-ne v6, v7, :cond_f1

    .line 85
    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->hrCapOverride:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_fd

    .line 86
    :cond_f1
    iget v5, v3, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrMax:I

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->hrCapOverride:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 88
    :cond_fd
    :goto_fd
    iput v5, v3, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrCap:I

    .line 90
    iget-boolean v5, v3, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    if-nez v5, :cond_114

    .line 91
    const-wide/16 v1, 0x0

    iput-wide v1, v3, Lcom/isaigu/gymapp/ai/AiModel$Profile;->cRate:D

    .line 92
    const/4 v1, 0x1

    iput-boolean v1, v3, Lcom/isaigu/gymapp/ai/AiModel$Profile;->safetyOnly:Z

    .line 93
    iget-object v1, v3, Lcom/isaigu/gymapp/ai/AiModel$Profile;->flags:Ljava/util/List;

    const-string v2, "NO_BAND"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_136

    .line 94
    :cond_114
    const-wide/16 v8, 0x2710

    cmp-long v5, v1, v8

    if-lez v5, :cond_129

    .line 95
    const-wide/16 v1, 0x0

    iput-wide v1, v3, Lcom/isaigu/gymapp/ai/AiModel$Profile;->cRate:D

    .line 96
    const/4 v1, 0x1

    iput-boolean v1, v3, Lcom/isaigu/gymapp/ai/AiModel$Profile;->safetyOnly:Z

    .line 97
    iget-object v1, v3, Lcom/isaigu/gymapp/ai/AiModel$Profile;->flags:Ljava/util/List;

    const-string v2, "HR_SLOW"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_136

    .line 98
    :cond_129
    const-wide/16 v8, 0xc80

    cmp-long v5, v1, v8

    if-lez v5, :cond_134

    .line 99
    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    iput-wide v1, v3, Lcom/isaigu/gymapp/ai/AiModel$Profile;->cRate:D

    goto :goto_136

    .line 101
    :cond_134
    iput-wide v6, v3, Lcom/isaigu/gymapp/ai/AiModel$Profile;->cRate:D

    .line 103
    :goto_136
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    if-eqz v1, :cond_146

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Screening;->hrLoweringMedication:Z

    if-eqz v1, :cond_146

    const-wide v12, 0x3fd3333333333333L    # 0.3

    goto :goto_147

    :cond_146
    move-wide v12, v6

    :goto_147
    iput-wide v12, v3, Lcom/isaigu/gymapp/ai/AiModel$Profile;->cMed:D

    .line 104
    if-nez v4, :cond_15d

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Goal;->MASSAGE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-eq v1, v2, :cond_15d

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Goal;->DRAIN:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-eq v1, v2, :cond_15d

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Goal;->CELLULITE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v0, v1, :cond_160

    .line 105
    :cond_15d
    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/isaigu/gymapp/ai/AiModel$Profile;->safetyOnly:Z

    .line 107
    :cond_160
    iget-boolean v0, v3, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v0, :cond_171

    iget v0, v3, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrRest:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_171

    .line 108
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiModel$Profile;->flags:Ljava/util/List;

    const-string v1, "FLAG_TACHY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_171
    iget-boolean v0, v3, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v0, :cond_182

    iget v0, v3, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrRest:I

    const/16 v1, 0x28

    if-ge v0, v1, :cond_182

    .line 111
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiModel$Profile;->flags:Ljava/util/List;

    const-string v1, "FLAG_BRADY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_182
    return-object v3
.end method

.method public static deviceOffS(I)I
    .registers 2

    .line 363
    const/4 v0, 0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static fatigueParams(Lcom/isaigu/gymapp/ai/AiModel$Fitness;)[D
    .registers 3

    .line 342
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    const/4 v1, 0x3

    if-ne p0, v0, :cond_b

    .line 343
    new-array p0, v1, [D

    fill-array-data p0, :array_1c

    return-object p0

    .line 345
    :cond_b
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne p0, v0, :cond_15

    .line 346
    new-array p0, v1, [D

    fill-array-data p0, :array_2c

    return-object p0

    .line 348
    :cond_15
    new-array p0, v1, [D

    fill-array-data p0, :array_3c

    return-object p0

    nop

    :array_1c
    .array-data 8
        0x4028000000000000L    # 12.0
        0x4010000000000000L    # 4.0
        0x4044000000000000L    # 40.0
    .end array-data

    :array_2c
    .array-data 8
        0x4032000000000000L    # 18.0
        0x4018000000000000L    # 6.0
        0x4036000000000000L    # 22.0
    .end array-data

    :array_3c
    .array-data 8
        0x402e000000000000L    # 15.0
        0x4014000000000000L    # 5.0
        0x403e000000000000L    # 30.0
    .end array-data
.end method

.method public static fatigueWeight(I)D
    .registers 5

    .line 353
    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-double v0, p0

    const-wide v2, 0x4055400000000000L    # 85.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static hrMax(Lcom/isaigu/gymapp/ai/AiModel$Sex;I)I
    .registers 6

    .line 31
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne p0, v0, :cond_18

    .line 32
    const-wide v0, 0x4069c00000000000L    # 206.0

    const-wide v2, 0x3fec28f5c28f5c29L    # 0.88

    int-to-double p0, p1

    mul-double p0, p0, v2

    sub-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p1, p0

    goto :goto_28

    .line 33
    :cond_18
    const-wide/high16 v0, 0x406a000000000000L    # 208.0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    int-to-double p0, p1

    mul-double p0, p0, v2

    sub-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p1, p0

    .line 31
    :goto_28
    return p1
.end method

.method private static limitCycle(Lcom/isaigu/gymapp/ai/AiModel$Phase;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;ZZ)V
    .registers 5

    .line 315
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->isTetanic()Z

    move-result v0

    if-nez v0, :cond_7

    .line 316
    return-void

    .line 318
    :cond_7
    if-nez p2, :cond_e

    if-eqz p3, :cond_c

    goto :goto_e

    :cond_c
    const/4 p3, 0x6

    goto :goto_f

    :cond_e
    :goto_e
    const/4 p3, 0x4

    .line 319
    :goto_f
    iget v0, p1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->onS:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iput p3, p1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->onS:I

    .line 320
    if-eqz p2, :cond_27

    iget-object p0, p0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-nez p0, :cond_27

    .line 321
    iget p0, p1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    iget p2, p1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->onS:I

    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, p1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    .line 323
    :cond_27
    return-void
.end method

.method public static pauseDose(Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;DI)D
    .registers 6

    .line 308
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hasActivePause()Z

    move-result v0

    if-nez v0, :cond_9

    .line 309
    const-wide/16 p0, 0x0

    return-wide p0

    .line 311
    :cond_9
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double p1, p1, v0

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pauseSigma:D

    mul-double p1, p1, v0

    iget v0, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pwUs:I

    int-to-double v0, v0

    mul-double p1, p1, v0

    iget p0, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pauseHz:I

    int-to-double v0, p0

    mul-double p1, p1, v0

    int-to-double v0, p3

    mul-double p1, p1, v0

    return-wide p1
.end method

.method private static setPause(Lcom/isaigu/gymapp/ai/AiModel$Phase;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V
    .registers 9

    .line 259
    const/4 v0, 0x0

    iput v0, p1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pauseHz:I

    .line 260
    const-wide/16 v1, 0x0

    iput-wide v1, p1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pauseSigma:D

    .line 262
    iget-object v1, p2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiModel;->activePauseAllowed(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Z

    move-result v1

    if-eqz v1, :cond_8e

    iget v1, p1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_8e

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->COOLDOWN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    if-eq v1, v2, :cond_8e

    iget-object v1, p2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    .line 263
    invoke-static {v1, p0, p1}, Lcom/isaigu/gymapp/ai/AiPlanner;->autoActive(Lcom/isaigu/gymapp/ai/AiModel$Goal;Lcom/isaigu/gymapp/ai/AiModel$Phase;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)Z

    move-result p0

    if-nez p0, :cond_24

    goto/16 :goto_8e

    .line 266
    :cond_24
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->isTetanic()Z

    move-result p0

    .line 267
    if-eqz p0, :cond_35

    iget-object v1, p2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Goal;->CELLULITE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v1, v2, :cond_33

    const/16 v1, 0x8

    goto :goto_44

    :cond_33
    const/4 v1, 0x6

    goto :goto_44

    :cond_35
    const/4 v1, 0x1

    iget v2, p1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    int-to-float v2, v2

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_44
    iput v1, p1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pauseHz:I

    .line 268
    if-nez p0, :cond_51

    iget v1, p1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pauseHz:I

    iget v2, p1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    if-lt v1, v2, :cond_51

    .line 269
    iput v0, p1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pauseHz:I

    .line 270
    return-void

    .line 273
    :cond_51
    const-wide v0, 0x3fd999999999999aL    # 0.4

    if-nez p0, :cond_5e

    .line 274
    const-wide v2, 0x3fe3333333333333L    # 0.6

    goto :goto_74

    .line 275
    :cond_5e
    iget-object p0, p2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Goal;->CELLULITE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne p0, v2, :cond_67

    .line 276
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    goto :goto_74

    .line 277
    :cond_67
    iget-object p0, p2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Goal;->FAT:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne p0, v2, :cond_73

    .line 278
    const-wide v2, 0x3fdccccccccccccdL    # 0.45

    goto :goto_74

    .line 280
    :cond_73
    move-wide v2, v0

    .line 282
    :goto_74
    iget-object p0, p2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$Mode;->PASSIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    if-ne p0, v4, :cond_81

    .line 283
    const-wide v4, 0x3feb333333333333L    # 0.85

    mul-double v2, v2, v4

    .line 285
    :cond_81
    iget-object p0, p2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object p2, Lcom/isaigu/gymapp/ai/AiModel$Operator;->SELF:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    if-ne p0, p2, :cond_8b

    .line 286
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 288
    :cond_8b
    iput-wide v2, p1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pauseSigma:D

    .line 289
    return-void

    .line 264
    :cond_8e
    :goto_8e
    return-void
.end method

.method public static simulateDose(Lcom/isaigu/gymapp/ai/AiModel$Plan;)D
    .registers 3

    .line 370
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->pauseOn:Z

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiPlanner;->simulateDose(Lcom/isaigu/gymapp/ai/AiModel$Plan;Z)D

    move-result-wide v0

    return-wide v0
.end method

.method public static simulateDose(Lcom/isaigu/gymapp/ai/AiModel$Plan;Z)D
    .registers 25

    .line 374
    move-object/from16 v0, p0

    .line 375
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v4, 0x0

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    .line 376
    nop

    .line 377
    nop

    .line 378
    nop

    .line 379
    nop

    .line 380
    nop

    .line 381
    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    .line 382
    :cond_25
    :goto_25
    iget v2, v6, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-double v2, v2

    cmpg-double v18, v8, v2

    if-gez v18, :cond_ef

    .line 383
    if-eqz v10, :cond_55

    .line 384
    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->tauR:D

    div-double v18, v18, v2

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    mul-double v11, v11, v2

    .line 385
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v2

    .line 386
    add-double/2addr v13, v2

    .line 387
    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->fRec:D

    cmpg-double v18, v11, v2

    if-gtz v18, :cond_4a

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    cmpl-double v18, v13, v2

    if-gez v18, :cond_50

    :cond_4a
    const-wide/high16 v2, 0x405e000000000000L    # 120.0

    cmpl-double v18, v13, v2

    if-ltz v18, :cond_25

    .line 388
    :cond_50
    nop

    .line 389
    const/4 v10, 0x0

    const-wide/16 v16, 0x0

    goto :goto_25

    .line 393
    :cond_55
    iget-object v2, v6, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v2, :cond_5e

    if-eqz v15, :cond_5e

    iget-object v2, v6, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    goto :goto_60

    :cond_5e
    iget-object v2, v6, Lcom/isaigu/gymapp/ai/AiModel$Phase;->a:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    .line 394
    :goto_60
    iget v3, v6, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    move-wide/from16 v18, v13

    int-to-double v13, v3

    move-object v3, v1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    div-double v0, v8, v0

    invoke-virtual {v6, v0, v1}, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiAt(D)D

    move-result-wide v0

    iget-wide v13, v2, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->sigma:D

    mul-double v0, v0, v13

    .line 395
    invoke-static {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AiPlanner;->cycleDose(Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;D)D

    move-result-wide v13

    add-double/2addr v4, v13

    .line 396
    iget v13, v2, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    invoke-static {v13}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueWeight(I)D

    move-result-wide v13

    mul-double v13, v13, v0

    iget v7, v2, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->onS:I

    move-object/from16 v20, v6

    int-to-double v6, v7

    mul-double v13, v13, v6

    add-double/2addr v11, v13

    .line 397
    iget v6, v2, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    invoke-static {v6}, Lcom/isaigu/gymapp/ai/AiPlanner;->deviceOffS(I)I

    move-result v6

    .line 398
    neg-int v7, v6

    int-to-double v13, v7

    move-object/from16 v7, p0

    move-wide/from16 v21, v8

    iget-wide v8, v7, Lcom/isaigu/gymapp/ai/AiModel$Plan;->tauR:D

    div-double/2addr v13, v8

    invoke-static {v13, v14}, Ljava/lang/Math;->exp(D)D

    move-result-wide v8

    mul-double v11, v11, v8

    .line 399
    if-eqz p1, :cond_bd

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hasActivePause()Z

    move-result v8

    if-eqz v8, :cond_bd

    .line 400
    invoke-static {v2, v0, v1, v6}, Lcom/isaigu/gymapp/ai/AiPlanner;->pauseDose(Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;DI)D

    move-result-wide v8

    add-double/2addr v4, v8

    .line 401
    iget v8, v2, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pauseHz:I

    invoke-static {v8}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueWeight(I)D

    move-result-wide v8

    mul-double v8, v8, v0

    iget-wide v0, v2, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pauseSigma:D

    mul-double v8, v8, v0

    int-to-double v0, v6

    mul-double v8, v8, v0

    add-double/2addr v11, v8

    .line 403
    :cond_bd
    iget v0, v2, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->onS:I

    add-int/2addr v0, v6

    int-to-double v0, v0

    .line 404
    add-double v8, v21, v0

    .line 405
    add-double v16, v16, v0

    .line 406
    move-object/from16 v6, v20

    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v0, :cond_ce

    .line 407
    xor-int/lit8 v0, v15, 0x1

    move v15, v0

    .line 409
    :cond_ce
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AiModel$Phase;->blockMode:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->FATIGUE_DRIVEN:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    if-ne v0, v1, :cond_e9

    iget-wide v0, v7, Lcom/isaigu/gymapp/ai/AiModel$Plan;->fMax:D

    cmpl-double v2, v11, v0

    if-gez v2, :cond_e3

    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v2, v16, v0

    if-ltz v2, :cond_e9

    .line 411
    :cond_e3
    nop

    .line 412
    const/4 v0, 0x1

    const/4 v10, 0x1

    const-wide/16 v13, 0x0

    goto :goto_eb

    .line 414
    :cond_e9
    move-wide/from16 v13, v18

    :goto_eb
    move-object v1, v3

    move-object v0, v7

    goto/16 :goto_25

    .line 415
    :cond_ef
    move-object v7, v0

    move-object v3, v1

    goto/16 :goto_a

    .line 416
    :cond_f3
    return-wide v4
.end method
