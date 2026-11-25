.class public final Lcom/isaigu/gymapp/ai/Endurance;
.super Ljava/lang/Object;
.source "Endurance.java"


# static fields
.field public static final DWELL_S:D = 60.0

.field public static final FLOOR_HZ:I = 0x14

.field public static final HORIZON_S:D = 120.0

.field public static final HR_DWELL_S:D = 30.0

.field public static final RESERVE_S:D = 200.0

.field public static final STEP_HZ:I = 0x5

.field public static final TAU_REST_S:D = 120.0

.field public static final TAU_WORK_S:D = 300.0


# instance fields
.field private cut:I

.field private final fMax:D

.field private last:Ljava/lang/String;

.field public lastByHeart:Z

.field public lastHoldS:D

.field private reserve:D

.field private sinceStep:D

.field private final tau:D


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/ai/AiModel$Fitness;)V
    .registers 6

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/Endurance;->reserve:D

    .line 42
    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/Endurance;->sinceStep:D

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/Endurance;->last:Ljava/lang/String;

    .line 49
    if-eqz p1, :cond_23

    :goto_14
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiPlanner;->fatigueParams(Lcom/isaigu/gymapp/ai/AiModel$Fitness;)[D

    move-result-object v0

    .line 50
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/Endurance;->fMax:D

    .line 51
    const/4 v1, 0x2

    aget-wide v0, v0, v1

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/Endurance;->tau:D

    .line 52
    return-void

    .line 49
    :cond_23
    sget-object p1, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->MID:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    goto :goto_14
.end method

.method static depth(I)D
    .registers 7

    .prologue
    .line 69
    const/16 v0, 0x32

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x4075e00000000000L    # 350.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 70
    const-wide v2, 0x3feb333333333333L    # 0.85

    const-wide v4, 0x3ff2666666666666L    # 1.15

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public criticalHz(IIIIDI)I
    .registers 17

    .prologue
    .line 89
    move v2, p1

    :goto_1
    const/16 v0, 0x14

    if-le v2, v0, :cond_1a

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    move/from16 v8, p7

    .line 90
    invoke-virtual/range {v1 .. v8}, Lcom/isaigu/gymapp/ai/Endurance;->intensity(IIIIDI)D

    move-result-wide v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_17

    .line 94
    :goto_16
    return v2

    .line 89
    :cond_17
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 94
    :cond_1a
    const/16 v2, 0x14

    goto :goto_16
.end method

.method public cut()I
    .registers 2

    .prologue
    .line 56
    iget v0, p0, Lcom/isaigu/gymapp/ai/Endurance;->cut:I

    return v0
.end method

.method public holdS(IIIIDI)D
    .registers 17

    .prologue
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 83
    invoke-virtual/range {p0 .. p7}, Lcom/isaigu/gymapp/ai/Endurance;->intensity(IIIIDI)D

    move-result-wide v0

    .line 84
    cmpg-double v2, v0, v6

    if-gtz v2, :cond_d

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_c
    return-wide v0

    :cond_d
    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/Endurance;->reserve:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x4069000000000000L    # 200.0

    mul-double/2addr v2, v4

    sub-double/2addr v0, v6

    div-double v0, v2, v0

    goto :goto_c
.end method

.method public intensity(IIIIDI)D
    .registers 17

    .prologue
    const/4 v4, 0x1

    const-wide/16 v0, 0x0

    .line 75
    const/16 v2, 0x14

    if-lt p1, v2, :cond_d

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/Endurance;->fMax:D

    cmpg-double v2, v2, v0

    if-gtz v2, :cond_e

    .line 78
    :cond_d
    :goto_d
    return-wide v0

    :cond_e
    invoke-static {v4, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v4, p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/Endurance;->tau:D

    move v0, p1

    move v3, p4

    move-wide v4, p5

    invoke-static/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/SafeLimits;->peak(IIIIDD)D

    move-result-wide v0

    invoke-static/range {p7 .. p7}, Lcom/isaigu/gymapp/ai/Endurance;->depth(I)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/Endurance;->fMax:D

    div-double/2addr v0, v2

    goto :goto_d
.end method

.method public last()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Endurance;->last:Ljava/lang/String;

    return-object v0
.end method

.method public reserve()D
    .registers 3

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/Endurance;->reserve:D

    return-wide v0
.end method

.method public rest(D)V
    .registers 14

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 135
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_24

    .line 136
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/Endurance;->reserve:D

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/Endurance;->reserve:D

    sub-double v2, v8, v2

    neg-double v4, p1

    const-wide/high16 v6, 0x405e000000000000L    # 120.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    sub-double v4, v8, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/Endurance;->reserve:D

    .line 137
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/Endurance;->reserve:D

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/Endurance;->reserve:D

    .line 139
    :cond_24
    return-void
.end method

.method public restart(IIIIDI)V
    .registers 19

    .prologue
    .line 146
    iget v0, p0, Lcom/isaigu/gymapp/ai/Endurance;->cut:I

    if-gtz v0, :cond_5

    .line 160
    :cond_4
    :goto_4
    return-void

    .line 149
    :cond_5
    iget v0, p0, Lcom/isaigu/gymapp/ai/Endurance;->cut:I

    add-int v9, p1, v0

    .line 150
    const/4 v0, 0x0

    :goto_a
    iget v1, p0, Lcom/isaigu/gymapp/ai/Endurance;->cut:I

    if-gt v0, v1, :cond_4

    .line 151
    sub-int v2, v9, v0

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    .line 152
    invoke-virtual/range {v1 .. v8}, Lcom/isaigu/gymapp/ai/Endurance;->holdS(IIIIDI)D

    move-result-wide v4

    const-wide/high16 v6, 0x405e000000000000L    # 120.0

    cmpl-double v1, v4, v6

    if-ltz v1, :cond_6d

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after the pause: reserve "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/Endurance;->reserve:D

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " % \u2192 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Hz (cut "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/ai/Endurance;->cut:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u2192 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/ai/Endurance;->last:Ljava/lang/String;

    .line 155
    iput v0, p0, Lcom/isaigu/gymapp/ai/Endurance;->cut:I

    .line 156
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/Endurance;->sinceStep:D

    goto :goto_4

    .line 150
    :cond_6d
    add-int/lit8 v0, v0, 0x5

    goto :goto_a
.end method

.method public work(IIIIDIDZ)Z
    .registers 25

    .prologue
    .line 102
    const-wide/16 v2, 0x0

    cmpg-double v2, p8, v2

    if-gtz v2, :cond_8

    .line 103
    const/4 v2, 0x0

    .line 130
    :goto_7
    return v2

    .line 105
    :cond_8
    invoke-virtual/range {p0 .. p7}, Lcom/isaigu/gymapp/ai/Endurance;->intensity(IIIIDI)D

    move-result-wide v8

    .line 106
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v8, v2

    if-lez v2, :cond_3c

    .line 107
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/Endurance;->reserve:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v4, v8, v4

    mul-double v4, v4, p8

    const-wide/high16 v6, 0x4069000000000000L    # 200.0

    div-double/2addr v4, v6

    sub-double/2addr v2, v4

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/Endurance;->reserve:D

    .line 111
    :goto_20
    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/Endurance;->reserve:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/Endurance;->reserve:D

    .line 112
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/Endurance;->sinceStep:D

    add-double v2, v2, p8

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/Endurance;->sinceStep:D

    .line 113
    const/16 v2, 0x14

    if-ge p1, v2, :cond_58

    .line 114
    const/4 v2, 0x0

    goto :goto_7

    .line 109
    :cond_3c
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/Endurance;->reserve:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/Endurance;->reserve:D

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v0, p8

    neg-double v10, v0

    const-wide v12, 0x4072c00000000000L    # 300.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->exp(D)D

    move-result-wide v10

    sub-double/2addr v6, v10

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/Endurance;->reserve:D

    goto :goto_20

    .line 116
    :cond_58
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v8, v2

    if-lez v2, :cond_11f

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/Endurance;->reserve:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x4069000000000000L    # 200.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v4, v8, v4

    div-double/2addr v2, v4

    .line 117
    :goto_6e
    const/16 v4, 0x14

    invoke-virtual/range {p0 .. p7}, Lcom/isaigu/gymapp/ai/Endurance;->criticalHz(IIIIDI)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 118
    const-wide/high16 v6, 0x405e000000000000L    # 120.0

    cmpg-double v5, v2, v6

    if-gez v5, :cond_123

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/Endurance;->sinceStep:D

    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    cmpl-double v5, v6, v10

    if-ltz v5, :cond_123

    const/4 v5, 0x1

    move v6, v5

    .line 119
    :goto_88
    if-eqz p10, :cond_127

    iget-wide v10, p0, Lcom/isaigu/gymapp/ai/Endurance;->sinceStep:D

    const-wide/high16 v12, 0x403e000000000000L    # 30.0

    cmpl-double v5, v10, v12

    if-ltz v5, :cond_127

    const/4 v5, 0x1

    .line 120
    :goto_93
    if-nez v6, :cond_97

    if-eqz v5, :cond_14b

    :cond_97
    add-int/lit8 v7, p1, -0x5

    if-eqz v5, :cond_9d

    const/16 v4, 0x14

    :cond_9d
    if-lt v7, v4, :cond_14b

    .line 121
    iget v4, p0, Lcom/isaigu/gymapp/ai/Endurance;->cut:I

    add-int/lit8 v4, v4, 0x5

    iput v4, p0, Lcom/isaigu/gymapp/ai/Endurance;->cut:I

    .line 122
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/isaigu/gymapp/ai/Endurance;->sinceStep:D

    .line 123
    if-eqz v5, :cond_12a

    if-nez v6, :cond_12a

    const/4 v4, 0x1

    :goto_ae
    iput-boolean v4, p0, Lcom/isaigu/gymapp/ai/Endurance;->lastByHeart:Z

    .line 124
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/Endurance;->lastHoldS:D

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v5, :cond_12c

    const-string v2, "heart at its ceiling"

    :goto_bb
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Hz "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " s (I "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v8

    .line 126
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " %, reserve "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/Endurance;->reserve:D

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " %) \u2192 \u2212"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Hz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/ai/Endurance;->last:Ljava/lang/String;

    .line 128
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 116
    :cond_11f
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto/16 :goto_6e

    .line 118
    :cond_123
    const/4 v5, 0x0

    move v6, v5

    goto/16 :goto_88

    .line 119
    :cond_127
    const/4 v5, 0x0

    goto/16 :goto_93

    .line 123
    :cond_12a
    const/4 v4, 0x0

    goto :goto_ae

    .line 125
    :cond_12c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "holds "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " s more"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_bb

    .line 130
    :cond_14b
    const/4 v2, 0x0

    goto/16 :goto_7
.end method
