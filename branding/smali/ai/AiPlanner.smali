.class public final Lcom/isaigu/gymapp/ai/AiPlanner;
.super Ljava/lang/Object;
.source "AiPlanner.java"


# static fields
.field public static final ACTIVE_PAUSE_MIN_OFF_S:I = 0x2

.field public static final BUDGET_BETA:D = 0.1

.field public static final CONT_FLOOR:D = 0.3

.field public static final CONT_F_SHARE:D = 0.75

.field public static final DT_FULL_MS:J = 0xc80L

.field public static final DT_SAFETY_ONLY_MS:J = 0x2710L

.field static final F50_HZ:D = 15.0

.field static final FF_N:D = 2.5

.field public static final T_BLOCK_MAX_S:D = 180.0

.field public static final T_REST_MAX_S:D = 120.0

.field public static final T_REST_MIN_S:D = 20.0

.field public static final WARMUP_HZ:I = 0x7


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addPhase(Lcom/isaigu/gymapp/ai/AiModel$Plan;Lcom/isaigu/gymapp/ai/AiModel$PhaseId;DIDDLcom/isaigu/gymapp/ai/AiModel$BlockMode;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)V
    .registers 19

    .prologue
    .line 360
    new-instance v3, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    invoke-direct {v3}, Lcom/isaigu/gymapp/ai/AiModel$Phase;-><init>()V

    .line 361
    iput-object p1, v3, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    .line 362
    int-to-double v4, p4

    mul-double/2addr v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v2, v4

    iput v2, v3, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    .line 363
    iput-wide p5, v3, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiStart:D

    .line 364
    iput-wide p7, v3, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiEnd:D

    .line 365
    move-object/from16 v0, p9

    iput-object v0, v3, Lcom/isaigu/gymapp/ai/AiModel$Phase;->blockMode:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    .line 366
    move-object/from16 v0, p10

    iput-object v0, v3, Lcom/isaigu/gymapp/ai/AiModel$Phase;->a:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    .line 367
    move-object/from16 v0, p11

    iput-object v0, v3, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    .line 369
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->METABOLIC:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    if-ne p1, v2, :cond_2e

    const-string v2, "METABOLIC"

    :goto_26
    iput-object v2, v3, Lcom/isaigu/gymapp/ai/AiModel$Phase;->exerciseClass:Ljava/lang/String;

    .line 370
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    return-void

    .line 369
    :cond_2e
    const-string v2, "FULL"

    goto :goto_26
.end method

.method public static afterOff(DLcom/isaigu/gymapp/ai/AiModel$CycleSpec;DIZD)D
    .registers 18

    .prologue
    .line 426
    neg-int v0, p5

    int-to-double v0, v0

    div-double v0, v0, p7

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    .line 427
    if-eqz p6, :cond_25

    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hasActivePause()Z

    move-result v0

    if-eqz v0, :cond_25

    iget v0, p2, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pauseHz:I

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueWeight(I)D

    move-result-wide v0

    mul-double/2addr v0, p3

    iget-wide v4, p2, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pauseSigma:D

    mul-double/2addr v0, v4

    mul-double v0, v0, p7

    .line 428
    :goto_1c
    mul-double v4, p0, v2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v2, v6, v2

    mul-double/2addr v0, v2

    add-double/2addr v0, v4

    return-wide v0

    .line 427
    :cond_25
    const-wide/16 v0, 0x0

    goto :goto_1c
.end method

.method public static afterOn(DLcom/isaigu/gymapp/ai/AiModel$CycleSpec;DD)D
    .registers 16

    .prologue
    .line 420
    iget v0, p2, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->onS:I

    neg-int v0, v0

    int-to-double v0, v0

    div-double/2addr v0, p5

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    .line 421
    mul-double v2, p0, v0

    iget v4, p2, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueWeight(I)D

    move-result-wide v4

    mul-double/2addr v4, p3

    mul-double/2addr v4, p5

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v0, v6, v0

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method static applyPause(Lcom/isaigu/gymapp/ai/AiModel$Plan;Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 278
    .line 279
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    .line 280
    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->a:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    invoke-static {v0, v4, p1}, Lcom/isaigu/gymapp/ai/AiPlanner;->setPause(Lcom/isaigu/gymapp/ai/AiModel$Phase;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    .line 281
    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->a:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hasActivePause()Z

    move-result v4

    or-int/2addr v1, v4

    .line 282
    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v4, :cond_40

    .line 283
    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    invoke-static {v0, v4, p1}, Lcom/isaigu/gymapp/ai/AiPlanner;->setPause(Lcom/isaigu/gymapp/ai/AiModel$Phase;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    .line 284
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hasActivePause()Z

    move-result v0

    or-int/2addr v0, v1

    :goto_30
    move v1, v0

    .line 286
    goto :goto_8

    .line 287
    :cond_32
    iput-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->pauseAvailable:Z

    .line 288
    if-eqz v1, :cond_3d

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->pause:Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$PauseMode;->PASSIVE:Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    if-eq v0, v1, :cond_3d

    const/4 v2, 0x1

    :cond_3d
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->pauseOn:Z

    .line 289
    return-void

    :cond_40
    move v0, v1

    goto :goto_30
.end method

.method private static autoActive(Lcom/isaigu/gymapp/ai/AiModel$Goal;Lcom/isaigu/gymapp/ai/AiModel$Phase;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 325
    sget-object v2, Lcom/isaigu/gymapp/ai/AiPlanner$1;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$Goal:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_20

    .line 335
    :goto_d
    :pswitch_d
    return v1

    .line 329
    :pswitch_e
    iget-object v2, p1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->MAIN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    if-ne v2, v3, :cond_16

    :goto_14
    move v1, v0

    goto :goto_d

    :cond_16
    move v0, v1

    goto :goto_14

    .line 331
    :pswitch_18
    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->isTetanic()Z

    move-result v1

    goto :goto_d

    :pswitch_1d
    move v1, v0

    .line 333
    goto :goto_d

    .line 325
    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_d
        :pswitch_e
        :pswitch_1d
        :pswitch_d
        :pswitch_18
    .end packed-switch
.end method

.method public static build(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Lcom/isaigu/gymapp/ai/AiModel$Profile;)Lcom/isaigu/gymapp/ai/AiModel$Plan;
    .registers 28

    .prologue
    .line 135
    new-instance v21, Lcom/isaigu/gymapp/ai/AiModel$Plan;

    invoke-direct/range {v21 .. v21}, Lcom/isaigu/gymapp/ai/AiModel$Plan;-><init>()V

    .line 136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$Mode;->PASSIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    if-ne v2, v3, :cond_142

    const/4 v2, 0x1

    move/from16 v19, v2

    .line 137
    :goto_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$Operator;->SELF:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    if-ne v2, v3, :cond_147

    const/4 v2, 0x1

    move/from16 v20, v2

    .line 138
    :goto_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    .line 139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->totalSeconds:Ljava/lang/Integer;

    if-eqz v2, :cond_14c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->totalSeconds:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 138
    :goto_2d
    invoke-static {v3, v2}, Lcom/isaigu/gymapp/ai/AiPlanner;->clampSeconds(Lcom/isaigu/gymapp/ai/AiModel$Goal;I)I

    move-result v22

    .line 140
    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    .line 141
    if-eqz v20, :cond_156

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    :goto_3e
    move-object/from16 v0, v21

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phiMax:D

    .line 143
    sget-object v2, Lcom/isaigu/gymapp/ai/AiPlanner$1;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$Goal:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_548

    .line 191
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

    .line 193
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

    .line 195
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

    .line 197
    const/4 v2, 0x3

    move-object/from16 v0, v21

    iput v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Lo:I

    .line 198
    const/4 v2, 0x4

    move-object/from16 v0, v21

    iput v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Hi:I

    .line 203
    :goto_db
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    .line 204
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->a:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v2, v4, v0, v1}, Lcom/isaigu/gymapp/ai/AiPlanner;->limitCycle(Lcom/isaigu/gymapp/ai/AiModel$Phase;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;ZZ)V

    .line 205
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v4, :cond_105

    .line 206
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v2, v4, v0, v1}, Lcom/isaigu/gymapp/ai/AiPlanner;->limitCycle(Lcom/isaigu/gymapp/ai/AiModel$Phase;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;ZZ)V

    .line 208
    :cond_105
    if-eqz v19, :cond_129

    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->a:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->isTetanic()Z

    move-result v4

    if-eqz v4, :cond_129

    .line 209
    iget-wide v4, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiStart:D

    const-wide v6, 0x3fe6666666666666L    # 0.7

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiStart:D

    .line 210
    iget-wide v4, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiEnd:D

    const-wide v6, 0x3fe6666666666666L    # 0.7

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiEnd:D

    .line 212
    :cond_129
    iget-wide v4, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiStart:D

    move-object/from16 v0, v21

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phiMax:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiStart:D

    .line 213
    iget-wide v4, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiEnd:D

    move-object/from16 v0, v21

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phiMax:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiEnd:D

    goto :goto_e3

    .line 136
    :cond_142
    const/4 v2, 0x0

    move/from16 v19, v2

    goto/16 :goto_10

    .line 137
    :cond_147
    const/4 v2, 0x0

    move/from16 v20, v2

    goto/16 :goto_1b

    .line 139
    :cond_14c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiPlanner;->defaultSeconds(Lcom/isaigu/gymapp/ai/AiModel$Goal;)I

    move-result v2

    goto/16 :goto_2d

    .line 141
    :cond_156
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_3e

    .line 147
    :pswitch_15a
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->WARMUP:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    const-wide v24, 0x3fc3333333333333L    # 0.15

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    sget-object v14, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->CONTINUOUS:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    new-instance v3, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    const/4 v4, 0x7

    const/16 v5, 0x15e

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

    .line 151
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

    .line 153
    if-eqz v19, :cond_1e2

    const/4 v2, 0x4

    :goto_1d5
    move-object/from16 v0, v21

    iput v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Lo:I

    .line 154
    if-eqz v19, :cond_1e4

    const/4 v2, 0x5

    :goto_1dc
    move-object/from16 v0, v21

    iput v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Hi:I

    goto/16 :goto_db

    .line 153
    :cond_1e2
    const/4 v2, 0x6

    goto :goto_1d5

    .line 154
    :cond_1e4
    const/4 v2, 0x7

    goto :goto_1dc

    .line 157
    :pswitch_1e6
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->WARMUP:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    const-wide v24, 0x3fb999999999999aL    # 0.1

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    sget-object v14, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->CONTINUOUS:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    new-instance v3, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    const/4 v4, 0x7

    const/16 v5, 0x15e

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

    .line 159
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

    .line 161
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

    .line 163
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

    .line 165
    if-eqz v19, :cond_2b4

    const/4 v2, 0x4

    :goto_2a7
    move-object/from16 v0, v21

    iput v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Lo:I

    .line 166
    if-eqz v19, :cond_2b6

    const/4 v2, 0x5

    :goto_2ae
    move-object/from16 v0, v21

    iput v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Hi:I

    goto/16 :goto_db

    .line 165
    :cond_2b4
    const/4 v2, 0x5

    goto :goto_2a7

    .line 166
    :cond_2b6
    const/4 v2, 0x6

    goto :goto_2ae

    .line 169
    :pswitch_2b8
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

    .line 171
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

    .line 173
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

    .line 175
    const/4 v2, 0x3

    move-object/from16 v0, v21

    iput v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Lo:I

    .line 176
    const/4 v2, 0x4

    move-object/from16 v0, v21

    iput v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Hi:I

    goto/16 :goto_db

    .line 180
    :pswitch_34e
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

    .line 182
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

    .line 184
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

    .line 186
    const/4 v2, 0x3

    move-object/from16 v0, v21

    iput v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Lo:I

    .line 187
    const/4 v2, 0x4

    move-object/from16 v0, v21

    iput v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Hi:I

    goto/16 :goto_db

    .line 217
    :cond_3d2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->focus:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->scaleFocus:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiPersonal;->withScaleFocus(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->cond:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->today:Ljava/util/Set;

    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/ai/AiPersonal;->of(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Lcom/isaigu/gymapp/ai/AiPersonal$Effect;

    move-result-object v2

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->personal:Lcom/isaigu/gymapp/ai/AiPersonal$Effect;

    .line 219
    if-nez v19, :cond_437

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->readiness:D

    const-wide v4, 0x3fefae147ae147aeL    # 0.99

    cmpg-double v2, v2, v4

    if-gez v2, :cond_437

    .line 220
    move-object/from16 v0, v21

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phiMax:D

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->readiness:D

    mul-double/2addr v2, v4

    move-object/from16 v0, v21

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phiMax:D

    .line 221
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_412
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_437

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    .line 222
    iget-wide v4, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiStart:D

    move-object/from16 v0, v21

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phiMax:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiStart:D

    .line 223
    iget-wide v4, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiEnd:D

    move-object/from16 v0, v21

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phiMax:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiEnd:D

    goto :goto_412

    .line 226
    :cond_437
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->personal:Lcom/isaigu/gymapp/ai/AiPersonal$Effect;

    iget-wide v2, v2, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_47f

    .line 227
    move-object/from16 v0, v21

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phiMax:D

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->personal:Lcom/isaigu/gymapp/ai/AiPersonal$Effect;

    iget-wide v4, v4, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    mul-double/2addr v2, v4

    move-object/from16 v0, v21

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phiMax:D

    .line 228
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_45a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    .line 229
    iget-wide v4, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiStart:D

    move-object/from16 v0, v21

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phiMax:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiStart:D

    .line 230
    iget-wide v4, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiEnd:D

    move-object/from16 v0, v21

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phiMax:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiEnd:D

    goto :goto_45a

    .line 233
    :cond_47f
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->personal:Lcom/isaigu/gymapp/ai/AiPersonal$Effect;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->offS:I

    if-lez v2, :cond_4d6

    .line 234
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_48f
    :goto_48f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    .line 235
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->a:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->isTetanic()Z

    move-result v4

    if-eqz v4, :cond_4b6

    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->a:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v4, v4, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    if-lez v4, :cond_4b6

    .line 236
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->a:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v5, v4, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->personal:Lcom/isaigu/gymapp/ai/AiPersonal$Effect;

    iget v6, v6, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->offS:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    .line 238
    :cond_4b6
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v4, :cond_48f

    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->isTetanic()Z

    move-result v4

    if-eqz v4, :cond_48f

    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v4, v4, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    if-lez v4, :cond_48f

    .line 239
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v4, v2, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->personal:Lcom/isaigu/gymapp/ai/AiPersonal$Effect;

    iget v5, v5, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->offS:I

    add-int/2addr v4, v5

    iput v4, v2, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    goto :goto_48f

    .line 244
    :cond_4d6
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiPlanner;->applyPause(Lcom/isaigu/gymapp/ai/AiModel$Plan;Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueParams(Lcom/isaigu/gymapp/ai/AiModel$Fitness;)[D

    move-result-object v2

    .line 247
    const/4 v3, 0x0

    aget-wide v4, v2, v3

    move-object/from16 v0, v21

    iput-wide v4, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->fMax:D

    .line 248
    const/4 v3, 0x1

    aget-wide v4, v2, v3

    move-object/from16 v0, v21

    iput-wide v4, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->fRec:D

    .line 249
    const/4 v3, 0x2

    aget-wide v2, v2, v3

    move-object/from16 v0, v21

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->tauR:D

    .line 250
    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiPlanner;->simulateDose(Lcom/isaigu/gymapp/ai/AiModel$Plan;Z)D

    move-result-wide v2

    move-object/from16 v0, v21

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qPlanPauseOn:D

    .line 251
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiPlanner;->simulateDose(Lcom/isaigu/gymapp/ai/AiModel$Plan;Z)D

    move-result-wide v2

    move-object/from16 v0, v21

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qPlanPauseOff:D

    .line 252
    move-object/from16 v0, v21

    iget-boolean v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->pauseOn:Z

    if-eqz v2, :cond_53c

    move-object/from16 v0, v21

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qPlanPauseOn:D

    :goto_51a
    move-object/from16 v0, v21

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qPlan:D

    .line 253
    const/4 v2, 0x0

    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->COOLDOWN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    move-object/from16 v0, v21

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/ai/AiPlanner;->simulateDose(Lcom/isaigu/gymapp/ai/AiModel$Plan;ZLcom/isaigu/gymapp/ai/AiModel$PhaseId;)D

    move-result-wide v2

    move-object/from16 v0, v21

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qCool:D

    .line 254
    move-object/from16 v0, v21

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qPlan:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    if-eqz v20, :cond_541

    const-wide/16 v2, 0x0

    :goto_535
    add-double/2addr v2, v6

    mul-double/2addr v2, v4

    move-object/from16 v0, v21

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qBudget:D

    .line 255
    return-object v21

    .line 252
    :cond_53c
    move-object/from16 v0, v21

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qPlanPauseOff:D

    goto :goto_51a

    .line 254
    :cond_541
    const-wide v2, 0x3fb999999999999aL    # 0.1

    goto :goto_535

    .line 143
    nop

    :pswitch_data_548
    .packed-switch 0x1
        :pswitch_15a
        :pswitch_1e6
        :pswitch_2b8
        :pswitch_34e
    .end packed-switch
.end method

.method public static clampSeconds(Lcom/isaigu/gymapp/ai/AiModel$Goal;I)I
    .registers 5

    .prologue
    const/16 v2, 0x708

    const/16 v1, 0x258

    .line 125
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne p0, v0, :cond_13

    .line 126
    const/16 v0, 0x4b0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 131
    :goto_12
    return v0

    .line 128
    :cond_13
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->FAT:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne p0, v0, :cond_22

    .line 129
    const/16 v0, 0x960

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_12

    .line 131
    :cond_22
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_12
.end method

.method public static continuousCap(DDLcom/isaigu/gymapp/ai/AiModel$CycleSpec;IZ)D
    .registers 21

    .prologue
    .line 438
    move-object/from16 v0, p4

    iget v2, v0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->onS:I

    neg-int v2, v2

    int-to-double v2, v2

    div-double v2, v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    .line 439
    const/4 v2, 0x1

    move/from16 v0, p5

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    neg-int v2, v2

    int-to-double v2, v2

    div-double v2, v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    .line 440
    move-object/from16 v0, p4

    iget v2, v0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueWeight(I)D

    move-result-wide v2

    mul-double v8, v2, p2

    .line 441
    if-eqz p6, :cond_79

    invoke-virtual/range {p4 .. p4}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hasActivePause()Z

    move-result v2

    if-eqz v2, :cond_79

    move-object/from16 v0, p4

    iget v2, v0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pauseHz:I

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueWeight(I)D

    move-result-wide v2

    move-object/from16 v0, p4

    iget-wide v10, v0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pauseSigma:D

    mul-double/2addr v2, v10

    mul-double v2, v2, p2

    .line 442
    :goto_3c
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v10, v4

    mul-double/2addr v10, v8

    mul-double/2addr v10, v6

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v12, v6

    mul-double/2addr v2, v12

    add-double/2addr v2, v10

    const-wide v10, 0x3e112e0be826d695L    # 1.0E-9

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v6, v4

    sub-double v6, v12, v6

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    div-double/2addr v2, v6

    .line 443
    mul-double v6, v2, v4

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double v4, v10, v4

    mul-double/2addr v4, v8

    add-double/2addr v4, v6

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 444
    const-wide v4, 0x3e112e0be826d695L    # 1.0E-9

    cmpl-double v4, v2, v4

    if-lez v4, :cond_7c

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v4, p0

    div-double v2, v4, v2

    .line 445
    :goto_6f
    const-wide v4, 0x3fd3333333333333L    # 0.3

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    return-wide v2

    .line 441
    :cond_79
    const-wide/16 v2, 0x0

    goto :goto_3c

    .line 444
    :cond_7c
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_6f
.end method

.method public static cycleDose(Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;D)D
    .registers 8

    .prologue
    .line 450
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
    .line 121
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
    .line 43
    new-instance v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;

    invoke-direct {v12}, Lcom/isaigu/gymapp/ai/AiModel$Profile;-><init>()V

    .line 44
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiPlanner;->hrMax(Lcom/isaigu/gymapp/ai/AiModel$Sex;I)I

    move-result v2

    iput v2, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrMax:I

    .line 45
    if-lez p1, :cond_12a

    const/4 v2, 0x1

    :goto_16
    iput-boolean v2, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    .line 46
    if-lez p1, :cond_12d

    :goto_1a
    move/from16 v0, p1

    iput v0, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrRest:I

    .line 47
    move-wide/from16 v0, p2

    iput-wide v0, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->sigmaRest:D

    .line 48
    move-wide/from16 v0, p4

    iput-wide v0, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->dtHrMs:J

    .line 49
    const/4 v2, 0x1

    iget v3, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrMax:I

    iget v4, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrRest:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrr:I

    .line 51
    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    .line 54
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$Mode;->PASSIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    if-ne v2, v3, :cond_131

    const/4 v2, 0x1

    .line 55
    :goto_3d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v3, v4, :cond_142

    .line 56
    if-eqz v2, :cond_134

    const-wide v6, 0x3fdccccccccccccdL    # 0.45

    .line 57
    :goto_4c
    if-eqz v2, :cond_13b

    const-wide v4, 0x3fe3333333333333L    # 0.6

    .line 66
    :goto_53
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v10, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v3, v10, :cond_17d

    const-wide v10, -0x4056666666666666L    # -0.05

    .line 67
    :goto_60
    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    const/16 v13, 0x3c

    if-lt v3, v13, :cond_6e

    .line 68
    const-wide v14, 0x3fa999999999999aL    # 0.05

    sub-double/2addr v10, v14

    .line 70
    :cond_6e
    add-double/2addr v6, v10

    .line 71
    add-double/2addr v4, v10

    .line 72
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_77

    .line 73
    add-double/2addr v8, v10

    .line 75
    :cond_77
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v10, Lcom/isaigu/gymapp/ai/AiModel$Operator;->SELF:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    if-ne v3, v10, :cond_85

    .line 76
    const-wide v10, 0x3fa999999999999aL    # 0.05

    sub-double/2addr v4, v10

    .line 78
    :cond_85
    iput-wide v8, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    .line 79
    iput-wide v6, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xHi:D

    .line 80
    iput-wide v4, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xCap:D

    .line 81
    const-wide v8, 0x3fb999999999999aL    # 0.1

    sub-double/2addr v6, v8

    iput-wide v6, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xRec:D

    .line 83
    invoke-virtual {v12, v4, v5}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAt(D)I

    move-result v3

    iget v4, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrMax:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 84
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->hrCapOverride:Ljava/lang/Integer;

    if-eqz v4, :cond_c1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->hrCapOverride:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_c1

    .line 86
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiModel$Operator;->SELF:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    if-ne v4, v5, :cond_190

    .line 87
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->hrCapOverride:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 90
    :cond_c1
    :goto_c1
    iput v3, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrCap:I

    .line 92
    iget-boolean v3, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-nez v3, :cond_1a0

    .line 93
    const-wide/16 v4, 0x0

    iput-wide v4, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->cRate:D

    .line 94
    const/4 v3, 0x1

    iput-boolean v3, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->safetyOnly:Z

    .line 95
    iget-object v3, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->flags:Ljava/util/List;

    const-string v4, "NO_BAND"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
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

    .line 106
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

    .line 107
    :cond_104
    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->safetyOnly:Z

    .line 109
    :cond_107
    iget-boolean v2, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v2, :cond_118

    iget v2, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrRest:I

    const/16 v3, 0x64

    if-lt v2, v3, :cond_118

    .line 110
    iget-object v2, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->flags:Ljava/util/List;

    const-string v3, "FLAG_TACHY"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_118
    iget-boolean v2, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v2, :cond_129

    iget v2, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrRest:I

    const/16 v3, 0x28

    if-ge v2, v3, :cond_129

    .line 113
    iget-object v2, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->flags:Ljava/util/List;

    const-string v3, "FLAG_BRADY"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_129
    return-object v12

    .line 45
    :cond_12a
    const/4 v2, 0x0

    goto/16 :goto_16

    .line 46
    :cond_12d
    const/16 p1, 0x0

    goto/16 :goto_1a

    .line 54
    :cond_131
    const/4 v2, 0x0

    goto/16 :goto_3d

    .line 56
    :cond_134
    const-wide v6, 0x3fe6666666666666L    # 0.7

    goto/16 :goto_4c

    .line 57
    :cond_13b
    const-wide v4, 0x3feb333333333333L    # 0.85

    goto/16 :goto_53

    .line 58
    :cond_142
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$Goal;->FAT:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v3, v4, :cond_171

    .line 59
    if-eqz v2, :cond_15e

    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    .line 60
    :goto_14e
    if-eqz v2, :cond_164

    const-wide v6, 0x3fdccccccccccccdL    # 0.45

    .line 61
    :goto_155
    if-eqz v2, :cond_16a

    const-wide v4, 0x3fe3333333333333L    # 0.6

    goto/16 :goto_53

    .line 59
    :cond_15e
    const-wide v8, 0x3fd999999999999aL    # 0.4

    goto :goto_14e

    .line 60
    :cond_164
    const-wide v6, 0x3fe2e147ae147ae1L    # 0.59

    goto :goto_155

    .line 61
    :cond_16a
    const-wide v4, 0x3fe999999999999aL    # 0.8

    goto/16 :goto_53

    .line 63
    :cond_171
    const-wide v6, 0x3fd3333333333333L    # 0.3

    .line 64
    const-wide v4, 0x3fdccccccccccccdL    # 0.45

    goto/16 :goto_53

    .line 66
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

    .line 88
    :cond_190
    iget v3, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrMax:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->hrCapOverride:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto/16 :goto_c1

    .line 96
    :cond_1a0
    const-wide/16 v4, 0x2710

    cmp-long v3, p4, v4

    if-lez v3, :cond_1b6

    .line 97
    const-wide/16 v4, 0x0

    iput-wide v4, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->cRate:D

    .line 98
    const/4 v3, 0x1

    iput-boolean v3, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->safetyOnly:Z

    .line 99
    iget-object v3, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->flags:Ljava/util/List;

    const-string v4, "HR_SLOW"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d5

    .line 100
    :cond_1b6
    const-wide/16 v4, 0xc80

    cmp-long v3, p4, v4

    if-lez v3, :cond_1c2

    .line 101
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    iput-wide v4, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->cRate:D

    goto/16 :goto_d5

    .line 103
    :cond_1c2
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iput-wide v4, v12, Lcom/isaigu/gymapp/ai/AiModel$Profile;->cRate:D

    goto/16 :goto_d5

    .line 105
    :cond_1c8
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_e8
.end method

.method public static deviceOffS(I)I
    .registers 2

    .prologue
    .line 455
    const/4 v0, 0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static fatigueParams(Lcom/isaigu/gymapp/ai/AiModel$Fitness;)[D
    .registers 9

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 380
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne p0, v0, :cond_2b

    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    .line 381
    :goto_8
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne p0, v2, :cond_35

    const-wide v2, 0x3fe999999999999aL    # 0.8

    .line 382
    :goto_11
    mul-double/2addr v2, v0

    const-wide/high16 v6, -0x3ff0000000000000L    # -4.0

    div-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    div-double/2addr v2, v4

    .line 383
    const/4 v4, 0x3

    new-array v4, v4, [D

    const/4 v5, 0x0

    aput-wide v2, v4, v5

    const/4 v5, 0x1

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v6

    aput-wide v2, v4, v5

    const/4 v2, 0x2

    aput-wide v0, v4, v2

    return-object v4

    .line 380
    :cond_2b
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne p0, v0, :cond_32

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    goto :goto_8

    :cond_32
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    goto :goto_8

    .line 381
    :cond_35
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne p0, v2, :cond_3f

    const-wide v2, 0x3ff2666666666666L    # 1.15

    goto :goto_11

    :cond_3f
    move-wide v2, v4

    goto :goto_11
.end method

.method public static fatigueWeight(I)D
    .registers 9

    .prologue
    .line 410
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiPlanner;->forceShare(I)D

    move-result-wide v0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    const-wide v4, 0x3fd3333333333333L    # 0.3

    const/4 v6, 0x0

    invoke-static {v6, p0}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    const-wide v6, 0x4055400000000000L    # 85.0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    const/16 v2, 0x55

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiPlanner;->forceShare(I)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method static forceShare(I)D
    .registers 7

    .prologue
    const-wide/high16 v4, 0x4004000000000000L    # 2.5

    .line 391
    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 392
    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v2, v0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static forceWeight(I)D
    .registers 5

    .prologue
    .line 406
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiPlanner;->forceShare(I)D

    move-result-wide v0

    const/16 v2, 0x55

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiPlanner;->forceShare(I)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static hrMax(Lcom/isaigu/gymapp/ai/AiModel$Sex;I)I
    .registers 8

    .prologue
    .line 33
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne p0, v0, :cond_17

    .line 34
    const-wide v0, 0x4069c00000000000L    # 206.0

    const-wide v2, 0x3fec28f5c28f5c29L    # 0.88

    int-to-double v4, p1

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 33
    :goto_16
    return v0

    .line 35
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
    .line 348
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->isTetanic()Z

    move-result v0

    if-nez v0, :cond_7

    .line 356
    :cond_6
    :goto_6
    return-void

    .line 351
    :cond_7
    if-nez p2, :cond_b

    if-eqz p3, :cond_25

    :cond_b
    const/4 v0, 0x4

    .line 352
    :goto_c
    iget v1, p1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->onS:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->onS:I

    .line 353
    if-eqz p2, :cond_6

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-nez v0, :cond_6

    .line 354
    iget v0, p1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    iget v1, p1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->onS:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    goto :goto_6

    .line 351
    :cond_25
    const/4 v0, 0x6

    goto :goto_c
.end method

.method public static pauseDose(Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;DI)D
    .registers 9

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hasActivePause()Z

    move-result v0

    if-nez v0, :cond_9

    .line 342
    const-wide/16 v0, 0x0

    .line 344
    :goto_8
    return-wide v0

    :cond_9
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pauseSigma:D

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pwUs:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pauseHz:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    int-to-double v2, p3

    mul-double/2addr v0, v2

    goto :goto_8
.end method

.method private static setPause(Lcom/isaigu/gymapp/ai/AiModel$Phase;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V
    .registers 10

    .prologue
    const/4 v6, 0x0

    const-wide v2, 0x3fd999999999999aL    # 0.4

    .line 292
    iput v6, p1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pauseHz:I

    .line 293
    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pauseSigma:D

    .line 295
    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiModel;->activePauseAllowed(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget v0, p1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_27

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->COOLDOWN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    if-eq v0, v1, :cond_27

    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    .line 296
    invoke-static {v0, p0, p1}, Lcom/isaigu/gymapp/ai/AiPlanner;->autoActive(Lcom/isaigu/gymapp/ai/AiModel$Goal;Lcom/isaigu/gymapp/ai/AiModel$Phase;Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 322
    :cond_27
    :goto_27
    return-void

    .line 299
    :cond_28
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->isTetanic()Z

    move-result v1

    .line 300
    if-eqz v1, :cond_45

    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$Goal;->CELLULITE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v0, v4, :cond_43

    const/16 v0, 0x8

    :goto_36
    iput v0, p1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pauseHz:I

    .line 301
    if-nez v1, :cond_55

    iget v0, p1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pauseHz:I

    iget v4, p1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    if-lt v0, v4, :cond_55

    .line 302
    iput v6, p1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pauseHz:I

    goto :goto_27

    .line 300
    :cond_43
    const/4 v0, 0x6

    goto :goto_36

    :cond_45
    const/4 v0, 0x1

    iget v4, p1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    int-to-float v4, v4

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_36

    .line 306
    :cond_55
    if-nez v1, :cond_75

    .line 307
    const-wide v0, 0x3fe3333333333333L    # 0.6

    .line 315
    :goto_5c
    iget-object v4, p2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiModel$Mode;->PASSIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    if-ne v4, v5, :cond_68

    .line 316
    const-wide v4, 0x3feb333333333333L    # 0.85

    mul-double/2addr v0, v4

    .line 318
    :cond_68
    iget-object v4, p2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiModel$Operator;->SELF:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    if-ne v4, v5, :cond_72

    .line 319
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 321
    :cond_72
    iput-wide v0, p1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pauseSigma:D

    goto :goto_27

    .line 308
    :cond_75
    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Goal;->CELLULITE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v0, v1, :cond_7e

    .line 309
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    goto :goto_5c

    .line 310
    :cond_7e
    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Goal;->FAT:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v0, v1, :cond_8a

    .line 311
    const-wide v0, 0x3fdccccccccccccdL    # 0.45

    goto :goto_5c

    :cond_8a
    move-wide v0, v2

    .line 313
    goto :goto_5c
.end method

.method public static simulateDose(Lcom/isaigu/gymapp/ai/AiModel$Plan;)D
    .registers 3

    .prologue
    .line 462
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->pauseOn:Z

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiPlanner;->simulateDose(Lcom/isaigu/gymapp/ai/AiModel$Plan;Z)D

    move-result-wide v0

    return-wide v0
.end method

.method public static simulateDose(Lcom/isaigu/gymapp/ai/AiModel$Plan;Z)D
    .registers 4

    .prologue
    .line 466
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/ai/AiPlanner;->simulateDose(Lcom/isaigu/gymapp/ai/AiModel$Plan;ZLcom/isaigu/gymapp/ai/AiModel$PhaseId;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static simulateDose(Lcom/isaigu/gymapp/ai/AiModel$Plan;ZLcom/isaigu/gymapp/ai/AiModel$PhaseId;)D
    .registers 41

    .prologue
    .line 471
    const-wide/16 v4, 0x0

    .line 472
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v35

    move-wide v6, v4

    :cond_b
    :goto_b
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15f

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v26, v4

    check-cast v26, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    .line 473
    if-eqz p2, :cond_23

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    move-object/from16 v0, p2

    if-ne v4, v0, :cond_b

    .line 476
    :cond_23
    const-wide/16 v14, 0x0

    .line 477
    const-wide/16 v11, 0x0

    .line 478
    const/4 v13, 0x0

    .line 479
    const/4 v10, 0x0

    .line 480
    const-wide/16 v8, 0x0

    .line 481
    const-wide/16 v4, 0x0

    move-wide/from16 v30, v4

    move-wide/from16 v32, v8

    move/from16 v27, v10

    move/from16 v34, v13

    move-wide/from16 v36, v14

    move-wide/from16 v28, v6

    .line 482
    :goto_39
    move-object/from16 v0, v26

    iget v4, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-double v4, v4

    cmpg-double v4, v36, v4

    if-gez v4, :cond_15b

    .line 483
    if-eqz v27, :cond_78

    .line 484
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->tauR:D

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    mul-double/2addr v11, v4

    .line 485
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double v14, v36, v4

    .line 486
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double v6, v32, v4

    .line 487
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->fRec:D

    cmpg-double v4, v11, v4

    if-gtz v4, :cond_66

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    cmpl-double v4, v6, v4

    if-gez v4, :cond_6c

    :cond_66
    const-wide/high16 v4, 0x405e000000000000L    # 120.0

    cmpl-double v4, v6, v4

    if-ltz v4, :cond_168

    .line 488
    :cond_6c
    const/4 v8, 0x0

    .line 489
    const-wide/16 v4, 0x0

    move-wide/from16 v30, v4

    move-wide/from16 v32, v6

    move/from16 v27, v8

    move-wide/from16 v36, v14

    goto :goto_39

    .line 493
    :cond_78
    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v4, :cond_ff

    if-eqz v34, :cond_ff

    move-object/from16 v0, v26

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    .line 494
    :goto_84
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, v26

    iget v6, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    div-double v4, v36, v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiAt(D)D

    move-result-wide v4

    iget-wide v6, v8, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->sigma:D

    mul-double v14, v4, v6

    .line 495
    iget v4, v8, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AiPlanner;->deviceOffS(I)I

    move-result v9

    .line 496
    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->blockMode:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->CONTINUOUS:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    if-ne v4, v5, :cond_bb

    .line 497
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->fMax:D

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->tauR:D

    move/from16 v10, p1

    invoke-static/range {v4 .. v10}, Lcom/isaigu/gymapp/ai/AiPlanner;->continuousCap(DDLcom/isaigu/gymapp/ai/AiModel$CycleSpec;IZ)D

    move-result-wide v4

    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v14

    .line 499
    :cond_bb
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->tauR:D

    move-wide/from16 v16, v0

    move-object v13, v8

    invoke-static/range {v11 .. v17}, Lcom/isaigu/gymapp/ai/AiPlanner;->afterOn(DLcom/isaigu/gymapp/ai/AiModel$CycleSpec;DD)D

    move-result-wide v17

    .line 500
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->tauR:D

    move-wide/from16 v24, v0

    move-object/from16 v19, v8

    move-wide/from16 v20, v14

    move/from16 v22, v9

    move/from16 v23, p1

    invoke-static/range {v17 .. v25}, Lcom/isaigu/gymapp/ai/AiPlanner;->afterOff(DLcom/isaigu/gymapp/ai/AiModel$CycleSpec;DIZD)D

    move-result-wide v20

    .line 501
    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->blockMode:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->FATIGUE_DRIVEN:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    if-ne v4, v5, :cond_104

    const-wide/16 v4, 0x0

    cmpl-double v4, v30, v4

    if-lez v4, :cond_104

    move-wide/from16 v0, v17

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->fMax:D

    cmpl-double v4, v4, v6

    if-lez v4, :cond_104

    .line 502
    const/4 v6, 0x1

    .line 503
    const-wide/16 v4, 0x0

    move-wide/from16 v32, v4

    move/from16 v27, v6

    .line 504
    goto/16 :goto_39

    .line 493
    :cond_ff
    move-object/from16 v0, v26

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->a:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    goto :goto_84

    .line 506
    :cond_104
    invoke-static {v8, v14, v15}, Lcom/isaigu/gymapp/ai/AiPlanner;->cycleDose(Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;D)D

    move-result-wide v4

    add-double v28, v28, v4

    .line 508
    if-eqz p1, :cond_118

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hasActivePause()Z

    move-result v4

    if-eqz v4, :cond_118

    .line 509
    invoke-static {v8, v14, v15, v9}, Lcom/isaigu/gymapp/ai/AiPlanner;->pauseDose(Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;DI)D

    move-result-wide v4

    add-double v28, v28, v4

    .line 511
    :cond_118
    iget v4, v8, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->onS:I

    add-int/2addr v4, v9

    int-to-double v4, v4

    .line 512
    add-double v14, v36, v4

    .line 513
    add-double v4, v4, v30

    .line 514
    move-object/from16 v0, v26

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v6, :cond_165

    .line 515
    if-nez v34, :cond_159

    const/4 v6, 0x1

    :goto_129
    move v9, v6

    .line 517
    :goto_12a
    move-object/from16 v0, v26

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->blockMode:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    sget-object v7, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->FATIGUE_DRIVEN:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    if-ne v6, v7, :cond_160

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->fMax:D

    cmpl-double v6, v20, v6

    if-gez v6, :cond_143

    const-wide v6, 0x4066800000000000L    # 180.0

    cmpl-double v6, v4, v6

    if-ltz v6, :cond_160

    .line 519
    :cond_143
    const/16 v27, 0x1

    .line 520
    const-wide/16 v32, 0x0

    move-wide/from16 v6, v32

    move/from16 v8, v27

    :goto_14b
    move-wide/from16 v30, v4

    move-wide/from16 v32, v6

    move/from16 v27, v8

    move/from16 v34, v9

    move-wide/from16 v11, v20

    move-wide/from16 v36, v14

    .line 522
    goto/16 :goto_39

    .line 515
    :cond_159
    const/4 v6, 0x0

    goto :goto_129

    :cond_15b
    move-wide/from16 v6, v28

    .line 523
    goto/16 :goto_b

    .line 524
    :cond_15f
    return-wide v6

    :cond_160
    move-wide/from16 v6, v32

    move/from16 v8, v27

    goto :goto_14b

    :cond_165
    move/from16 v9, v34

    goto :goto_12a

    :cond_168
    move-wide/from16 v32, v6

    move-wide/from16 v36, v14

    goto/16 :goto_39
.end method
