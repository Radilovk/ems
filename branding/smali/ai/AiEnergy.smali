.class public final Lcom/isaigu/gymapp/ai/AiEnergy;
.super Ljava/lang/Object;
.source "AiEnergy.java"


# static fields
.field public static final DEFAULT_HR_MAX:I = 0xb4

.field public static final DEFAULT_HR_REST:I = 0x46

.field public static final DEFAULT_WEIGHT_KG:D = 75.0

.field public static final EMS_VO2_FULL:D = 7.0

.field public static final EPOC_TAU_S:D = 40.0


# instance fields
.field private hrMax:I

.field private final hrRatioValid:Z

.field private hrRest:I

.field private kcal:D

.field private kcalEms:D

.field private kcalRest:D

.field private lastMs:J

.field private lastVo2:D

.field private vo2max:D

.field private final vo2maxPopulation:D

.field private final vo2rest:D

.field private final weightKg:D


# direct methods
.method public constructor <init>()V
    .registers 12

    .prologue
    .line 50
    const/16 v2, 0x46

    const/16 v3, 0xb4

    const-wide v4, 0x4052c00000000000L    # 75.0

    const-wide/high16 v6, 0x400c000000000000L    # 3.5

    const-wide/high16 v8, 0x4043000000000000L    # 38.0

    const/4 v10, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/isaigu/gymapp/ai/AiEnergy;-><init>(IIDDDZ)V

    .line 51
    return-void
.end method

.method public constructor <init>(II)V
    .registers 14

    .prologue
    .line 54
    const-wide v4, 0x4052c00000000000L    # 75.0

    const-wide/high16 v6, 0x400c000000000000L    # 3.5

    const-wide/high16 v8, 0x4043000000000000L    # 38.0

    const/4 v10, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v10}, Lcom/isaigu/gymapp/ai/AiEnergy;-><init>(IIDDDZ)V

    .line 55
    return-void
.end method

.method private constructor <init>(IIDDDZ)V
    .registers 13

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->lastVo2:D

    .line 46
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->lastMs:J

    .line 59
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    cmpl-double v0, p3, v0

    if-ltz v0, :cond_26

    const-wide v0, 0x406f400000000000L    # 250.0

    cmpg-double v0, p3, v0

    if-gtz v0, :cond_26

    :goto_1a
    iput-wide p3, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->weightKg:D

    .line 60
    iput-wide p5, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2rest:D

    .line 61
    iput-wide p7, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2maxPopulation:D

    .line 62
    iput-boolean p9, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->hrRatioValid:Z

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEnergy;->setHeart(II)V

    .line 64
    return-void

    .line 59
    :cond_26
    const-wide p3, 0x4052c00000000000L    # 75.0

    goto :goto_1a
.end method

.method public static fitnessVo2max(Lcom/isaigu/gymapp/ai/AiModel$Fitness;Lcom/isaigu/gymapp/ai/AiModel$Sex;I)D
    .registers 11

    .prologue
    .line 90
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne p0, v0, :cond_29

    const-wide/high16 v0, 0x4041000000000000L    # 34.0

    .line 91
    :goto_6
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne p1, v2, :cond_10

    .line 92
    const-wide v2, 0x3fea8f5c28f5c28fL    # 0.83

    mul-double/2addr v0, v2

    .line 94
    :cond_10
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide v4, 0x3f826e978d4fdf3bL    # 0.009

    const/4 v6, 0x0

    add-int/lit8 v7, p2, -0x19

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    .line 95
    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0

    .line 90
    :cond_29
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne p0, v0, :cond_30

    const-wide/high16 v0, 0x404a000000000000L    # 52.0

    goto :goto_6

    :cond_30
    const-wide/high16 v0, 0x4045000000000000L    # 42.0

    goto :goto_6
.end method

.method public static forSession(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Lcom/isaigu/gymapp/ai/AiModel$Profile;)Lcom/isaigu/gymapp/ai/AiEnergy;
    .registers 15

    .prologue
    const/4 v10, 0x1

    const/4 v0, 0x0

    .line 68
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->weightKg:D

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_4c

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->weightKg:D

    const-wide v4, 0x406f400000000000L    # 250.0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_4c

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->weightKg:D

    .line 69
    :goto_17
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Screening;->hrLoweringMedication:Z

    if-eqz v1, :cond_52

    move v11, v10

    .line 70
    :goto_22
    if-eqz p1, :cond_54

    iget-boolean v1, p1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v1, :cond_54

    iget v2, p1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrRest:I

    .line 71
    :goto_2a
    if-eqz p1, :cond_56

    iget v1, p1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrMax:I

    if-lez v1, :cond_56

    iget v3, p1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrMax:I

    .line 72
    :goto_32
    new-instance v1, Lcom/isaigu/gymapp/ai/AiEnergy;

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    iget v7, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    invoke-static {v6, v7, v4, v5}, Lcom/isaigu/gymapp/ai/AiEnergy;->restingVo2(Lcom/isaigu/gymapp/ai/AiModel$Sex;ID)D

    move-result-wide v6

    iget-object v8, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    iget-object v9, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    iget v12, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    .line 73
    invoke-static {v8, v9, v12}, Lcom/isaigu/gymapp/ai/AiEnergy;->fitnessVo2max(Lcom/isaigu/gymapp/ai/AiModel$Fitness;Lcom/isaigu/gymapp/ai/AiModel$Sex;I)D

    move-result-wide v8

    if-nez v11, :cond_5f

    :goto_48
    invoke-direct/range {v1 .. v10}, Lcom/isaigu/gymapp/ai/AiEnergy;-><init>(IIDDDZ)V

    .line 72
    return-object v1

    .line 68
    :cond_4c
    const-wide v4, 0x4052c00000000000L    # 75.0

    goto :goto_17

    :cond_52
    move v11, v0

    .line 69
    goto :goto_22

    .line 70
    :cond_54
    const/4 v2, -0x1

    goto :goto_2a

    .line 71
    :cond_56
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    iget v3, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiPlanner;->hrMax(Lcom/isaigu/gymapp/ai/AiModel$Sex;I)I

    move-result v3

    goto :goto_32

    :cond_5f
    move v10, v0

    .line 73
    goto :goto_48
.end method

.method private static kcalPerLitre(D)D
    .registers 8

    .prologue
    .line 148
    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    .line 149
    const-wide v2, 0x4012be76c8b43958L    # 4.686

    const-wide v4, 0x3fe6666666666666L    # 0.7

    sub-double/2addr v0, v4

    const-wide v4, 0x3fd3333333333333L    # 0.3

    div-double/2addr v0, v4

    const-wide v4, 0x3fd71a9fbe76c8b4L    # 0.361

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static restingVo2(Lcom/isaigu/gymapp/ai/AiModel$Sex;ID)D
    .registers 12

    .prologue
    const/16 v2, 0x3c

    const/16 v1, 0x1e

    .line 79
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne p0, v0, :cond_55

    .line 80
    if-ge p1, v1, :cond_39

    const-wide v0, 0x402da2d0e5604189L    # 14.818

    mul-double/2addr v0, p2

    const-wide v2, 0x407e69999999999aL    # 486.6

    add-double/2addr v0, v2

    .line 84
    :goto_16
    const-wide v2, 0x4096800000000000L    # 1440.0

    div-double/2addr v0, v2

    const-wide v2, 0x401351eb851eb852L    # 4.83

    div-double/2addr v0, v2

    .line 85
    const-wide v2, 0x4002666666666666L    # 2.3

    const-wide/high16 v4, 0x4012000000000000L    # 4.5

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v6

    div-double/2addr v0, p2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0

    .line 80
    :cond_39
    if-ge p1, v2, :cond_48

    const-wide v0, 0x40204083126e978dL    # 8.126

    mul-double/2addr v0, p2

    const-wide v2, 0x408a6ccccccccccdL    # 845.6

    add-double/2addr v0, v2

    goto :goto_16

    :cond_48
    const-wide v0, 0x402229fbe76c8b44L    # 9.082

    mul-double/2addr v0, p2

    const-wide v2, 0x4084940000000000L    # 658.5

    add-double/2addr v0, v2

    goto :goto_16

    .line 82
    :cond_55
    if-ge p1, v1, :cond_64

    const-wide v0, 0x402e1d2f1a9fbe77L    # 15.057

    mul-double/2addr v0, p2

    const-wide v2, 0x4085a1999999999aL    # 692.2

    add-double/2addr v0, v2

    goto :goto_16

    :cond_64
    if-ge p1, v2, :cond_73

    const-wide v0, 0x4026f1a9fbe76c8bL    # 11.472

    mul-double/2addr v0, p2

    const-wide v2, 0x408b48cccccccccdL    # 873.1

    add-double/2addr v0, v2

    goto :goto_16

    :cond_73
    const-wide v0, 0x40276c083126e979L    # 11.711

    mul-double/2addr v0, p2

    const-wide v2, 0x40825d999999999aL    # 587.7

    add-double/2addr v0, v2

    goto :goto_16
.end method


# virtual methods
.method public closeEpoc()V
    .registers 7

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->lastVo2:D

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2rest:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_27

    .line 158
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcal:D

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->lastVo2:D

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2rest:D

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->weightKg:D

    mul-double/2addr v2, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    const-wide v4, 0x401351eb851eb852L    # 4.83

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4044000000000000L    # 40.0

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcal:D

    .line 160
    :cond_27
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->lastVo2:D

    .line 161
    return-void
.end method

.method public getActiveKcal()D
    .registers 7

    .prologue
    .line 165
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcal:D

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcalRest:D

    sub-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getKcal()D
    .registers 3

    .prologue
    .line 173
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcal:D

    return-wide v0
.end method

.method public getKcalEms()D
    .registers 3

    .prologue
    .line 178
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcalEms:D

    return-wide v0
.end method

.method public getVo2max()D
    .registers 3

    .prologue
    .line 182
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2max:D

    return-wide v0
.end method

.method public getVo2rest()D
    .registers 3

    .prologue
    .line 169
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2rest:D

    return-wide v0
.end method

.method public getWeightKg()D
    .registers 3

    .prologue
    .line 186
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->weightKg:D

    return-wide v0
.end method

.method public reset()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 112
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcal:D

    .line 113
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcalRest:D

    .line 114
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcalEms:D

    .line 115
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->lastVo2:D

    .line 116
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->lastMs:J

    .line 117
    return-void
.end method

.method public setHeart(II)V
    .registers 13

    .prologue
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 99
    const/16 v0, 0x23

    if-lt p1, v0, :cond_4e

    const/16 v0, 0x78

    if-gt p1, v0, :cond_4e

    const/4 v0, 0x1

    .line 100
    :goto_b
    if-eqz v0, :cond_50

    :goto_d
    iput p1, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->hrRest:I

    .line 101
    iget v1, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->hrRest:I

    add-int/lit8 v1, v1, 0x14

    if-le p2, v1, :cond_53

    :goto_15
    iput p2, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->hrMax:I

    .line 102
    if-eqz v0, :cond_56

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->hrRatioValid:Z

    if-eqz v0, :cond_56

    .line 103
    const-wide/high16 v0, 0x4032000000000000L    # 18.0

    const-wide v2, 0x4052c00000000000L    # 75.0

    const-wide v4, 0x402e99999999999aL    # 15.3

    iget v6, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->hrMax:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    iget v6, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->hrRest:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 104
    mul-double/2addr v0, v8

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2maxPopulation:D

    mul-double/2addr v2, v8

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2max:D

    .line 108
    :goto_40
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2max:D

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2rest:D

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    add-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2max:D

    .line 109
    return-void

    .line 99
    :cond_4e
    const/4 v0, 0x0

    goto :goto_b

    .line 100
    :cond_50
    const/16 p1, 0x46

    goto :goto_d

    .line 101
    :cond_53
    const/16 p2, 0xb4

    goto :goto_15

    .line 106
    :cond_56
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2maxPopulation:D

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2max:D

    goto :goto_40
.end method

.method public tick(JDDI)V
    .registers 27

    .prologue
    .line 127
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->lastMs:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_11

    .line 128
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/isaigu/gymapp/ai/AiEnergy;->lastMs:J

    .line 144
    :goto_10
    return-void

    .line 131
    :cond_11
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1388

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->lastMs:J

    sub-long v8, p1, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double v6, v4, v6

    .line 132
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/isaigu/gymapp/ai/AiEnergy;->lastMs:J

    .line 133
    const-wide/16 v4, 0x0

    cmpl-double v4, p3, v4

    if-lez v4, :cond_e5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->hrRest:I

    int-to-double v4, v4

    sub-double v4, p3, v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->hrMax:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->hrRest:I

    sub-int/2addr v8, v9

    int-to-double v8, v8

    div-double/2addr v4, v8

    .line 134
    :goto_49
    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 135
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2rest:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2max:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2rest:D

    sub-double/2addr v10, v12

    mul-double/2addr v10, v8

    add-double/2addr v10, v4

    .line 136
    const-wide/16 v4, 0x0

    cmpl-double v4, p5, v4

    if-lez v4, :cond_e9

    if-lez p7, :cond_e9

    .line 137
    const-wide/high16 v4, 0x401c000000000000L    # 7.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v0, p5

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v12

    mul-double/2addr v4, v12

    const-wide/high16 v12, 0x3ff8000000000000L    # 1.5

    move/from16 v0, p7

    int-to-double v14, v0

    const-wide v16, 0x4055400000000000L    # 85.0

    div-double v14, v14, v16

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    mul-double/2addr v4, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v12, v8

    mul-double/2addr v4, v12

    .line 139
    :goto_90
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->weightKg:D

    const-wide v14, 0x408f400000000000L    # 1000.0

    div-double/2addr v12, v14

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiEnergy;->kcalPerLitre(D)D

    move-result-wide v8

    mul-double/2addr v8, v12

    const-wide/high16 v12, 0x404e000000000000L    # 60.0

    div-double/2addr v8, v12

    .line 140
    add-double/2addr v10, v4

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->lastVo2:D

    .line 141
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcal:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->lastVo2:D

    mul-double/2addr v12, v8

    mul-double/2addr v12, v6

    add-double/2addr v10, v12

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcal:D

    .line 142
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcalRest:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2rest:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->weightKg:D

    mul-double/2addr v12, v14

    const-wide v14, 0x408f400000000000L    # 1000.0

    div-double/2addr v12, v14

    const-wide v14, 0x401351eb851eb852L    # 4.83

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x404e000000000000L    # 60.0

    div-double/2addr v12, v14

    mul-double/2addr v12, v6

    add-double/2addr v10, v12

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcalRest:D

    .line 143
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcalEms:D

    mul-double/2addr v4, v8

    mul-double/2addr v4, v6

    add-double/2addr v4, v10

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcalEms:D

    goto/16 :goto_10

    .line 133
    :cond_e5
    const-wide/16 v4, 0x0

    goto/16 :goto_49

    .line 138
    :cond_e9
    const-wide/16 v4, 0x0

    goto :goto_90
.end method
