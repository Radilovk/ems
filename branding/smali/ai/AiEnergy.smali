.class public final Lcom/isaigu/gymapp/ai/AiEnergy;
.super Ljava/lang/Object;
.source "AiEnergy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/AiEnergy$Stim;
    }
.end annotation


# static fields
.field public static final ARMS:I = 0x4

.field public static final ARMS_SENT:D = 0.05

.field public static final CH_DEPTH:[D

.field public static final CH_MASS:[D

.field public static final DEFAULT_HR_MAX:I = 0xb4

.field public static final DEFAULT_HR_REST:I = 0x46

.field public static final DEFAULT_WEIGHT_KG:D = 75.0

.field public static final EPOC_TAU_S:D = 40.0

.field public static final R_AT_TOLERATED:D = 0.7

.field public static final R_MAX:D = 250.0

.field public static final SM_REF_KG:D = 28.5


# instance fields
.field private hrMax:I

.field private final hrRatioValid:Z

.field private hrRest:I

.field private kcal:D

.field private kcalEms:D

.field private kcalEmsModel:D

.field private kcalRest:D

.field private lastMs:J

.field private lastVo2:D

.field private muscleScale:D

.field private vo2max:D

.field private final vo2maxPopulation:D

.field private final vo2rest:D

.field private final weightKg:D


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0xa

    .line 53
    new-array v0, v1, [D

    fill-array-data v0, :array_12

    sput-object v0, Lcom/isaigu/gymapp/ai/AiEnergy;->CH_MASS:[D

    .line 54
    new-array v0, v1, [D

    fill-array-data v0, :array_3e

    sput-object v0, Lcom/isaigu/gymapp/ai/AiEnergy;->CH_DEPTH:[D

    return-void

    .line 53
    nop

    :array_12
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3ff999999999999aL    # 1.6
        0x4013333333333333L    # 4.8
        0x400199999999999aL    # 2.2
        0x4000000000000000L    # 2.0
        0x3feccccccccccccdL    # 0.9
        0x400199999999999aL    # 2.2
        0x3ff0000000000000L    # 1.0
        0x4004cccccccccccdL    # 2.6
        0x4003333333333333L    # 2.4
    .end array-data

    .line 54
    :array_3e
    .array-data 8
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fd6666666666666L    # 0.35
        0x3fdccccccccccccdL    # 0.45
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fdccccccccccccdL    # 0.45
        0x3fd999999999999aL    # 0.4
        0x3fd6666666666666L    # 0.35
        0x3fd999999999999aL    # 0.4
    .end array-data
.end method

.method public constructor <init>()V
    .registers 12

    .prologue
    .line 100
    const/16 v2, 0x46

    const/16 v3, 0xb4

    const-wide v4, 0x4052c00000000000L    # 75.0

    const-wide/high16 v6, 0x400c000000000000L    # 3.5

    const-wide/high16 v8, 0x4043000000000000L    # 38.0

    const/4 v10, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/isaigu/gymapp/ai/AiEnergy;-><init>(IIDDDZ)V

    .line 101
    return-void
.end method

.method public constructor <init>(II)V
    .registers 14

    .prologue
    .line 104
    const-wide v4, 0x4052c00000000000L    # 75.0

    const-wide/high16 v6, 0x400c000000000000L    # 3.5

    const-wide/high16 v8, 0x4043000000000000L    # 38.0

    const/4 v10, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v10}, Lcom/isaigu/gymapp/ai/AiEnergy;-><init>(IIDDDZ)V

    .line 105
    return-void
.end method

.method private constructor <init>(IIDDDZ)V
    .registers 15

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->muscleScale:D

    .line 95
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->lastVo2:D

    .line 96
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->lastMs:J

    .line 109
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    cmpl-double v0, p3, v0

    if-ltz v0, :cond_3a

    const-wide v0, 0x406f400000000000L    # 250.0

    cmpg-double v0, p3, v0

    if-gtz v0, :cond_3a

    :goto_1e
    iput-wide p3, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->weightKg:D

    .line 110
    iput-wide p5, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2rest:D

    .line 111
    iput-wide p7, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2maxPopulation:D

    .line 112
    iput-boolean p9, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->hrRatioValid:Z

    .line 113
    const-wide v0, 0x3fd6147ae147ae14L    # 0.345

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->weightKg:D

    mul-double/2addr v0, v2

    const-wide v2, 0x403c800000000000L    # 28.5

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->muscleScale:D

    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEnergy;->setHeart(II)V

    .line 115
    return-void

    .line 109
    :cond_3a
    const-wide p3, 0x4052c00000000000L    # 75.0

    goto :goto_1e
.end method

.method public static evokedVo2(Lcom/isaigu/gymapp/ai/AiEnergy$Stim;D)D
    .registers 22

    .prologue
    .line 215
    if-nez p0, :cond_5

    .line 216
    const-wide/16 v2, 0x0

    .line 237
    :goto_4
    return-wide v2

    .line 218
    :cond_5
    const-wide/16 v4, 0x0

    .line 219
    const/4 v2, 0x0

    :goto_8
    sget-object v3, Lcom/isaigu/gymapp/ai/AiEnergy;->CH_MASS:[D

    array-length v3, v3

    if-ge v2, v3, :cond_ef

    .line 220
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->disabled:[Z

    if-eqz v3, :cond_25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->disabled:[Z

    array-length v3, v3

    if-ge v2, v3, :cond_25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->disabled:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_25

    .line 219
    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 223
    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->channels:[I

    if-eqz v3, :cond_e3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->channels:[I

    array-length v3, v3

    if-ge v2, v3, :cond_e0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->channels:[I

    aget v3, v3, v2

    :goto_38
    int-to-double v6, v3

    .line 224
    :goto_39
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double v8, v6, v8

    const/4 v3, 0x4

    if-ne v2, v3, :cond_e7

    const-wide v6, 0x3fa999999999999aL    # 0.05

    :goto_45
    mul-double v10, v8, v6

    .line 225
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->toleratedCharge:[D

    if-eqz v3, :cond_eb

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->toleratedCharge:[D

    array-length v3, v3

    if-ge v2, v3, :cond_eb

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->toleratedCharge:[D

    aget-wide v6, v3, v2

    .line 226
    :goto_5a
    const-wide/16 v8, 0x0

    .line 227
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->onShare:D

    const-wide/16 v14, 0x0

    cmpl-double v3, v12, v14

    if-lez v3, :cond_94

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->hz:I

    if-lez v3, :cond_94

    .line 228
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->strengthPct:D

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    div-double/2addr v12, v14

    mul-double/2addr v12, v10

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pwUs:I

    int-to-double v14, v3

    const-wide v16, 0x4075e00000000000L    # 350.0

    div-double v14, v14, v16

    mul-double/2addr v12, v14

    .line 229
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->onShare:D

    invoke-static {v12, v13, v6, v7}, Lcom/isaigu/gymapp/ai/AiEnergy;->recruited(DD)D

    move-result-wide v12

    mul-double/2addr v12, v14

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->hz:I

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiEnergy;->freqFactor(I)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v8, v12

    .line 231
    :cond_94
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pauseShare:D

    const-wide/16 v14, 0x0

    cmpl-double v3, v12, v14

    if-lez v3, :cond_cb

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pauseHz:I

    if-lez v3, :cond_cb

    .line 232
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pauseStrengthPct:D

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    div-double/2addr v12, v14

    mul-double/2addr v10, v12

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pwUs:I

    int-to-double v12, v3

    const-wide v14, 0x4075e00000000000L    # 350.0

    div-double/2addr v12, v14

    mul-double/2addr v10, v12

    .line 233
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pauseShare:D

    invoke-static {v10, v11, v6, v7}, Lcom/isaigu/gymapp/ai/AiEnergy;->recruited(DD)D

    move-result-wide v6

    mul-double/2addr v6, v12

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pauseHz:I

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiEnergy;->freqFactor(I)D

    move-result-wide v10

    mul-double/2addr v6, v10

    add-double/2addr v8, v6

    .line 235
    :cond_cb
    sget-object v3, Lcom/isaigu/gymapp/ai/AiEnergy;->CH_MASS:[D

    aget-wide v6, v3, v2

    mul-double v6, v6, p1

    sget-object v3, Lcom/isaigu/gymapp/ai/AiEnergy;->CH_DEPTH:[D

    aget-wide v10, v3, v2

    mul-double/2addr v6, v10

    mul-double/2addr v6, v8

    const-wide v8, 0x406f400000000000L    # 250.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    goto/16 :goto_22

    .line 223
    :cond_e0
    const/4 v3, 0x0

    goto/16 :goto_38

    :cond_e3
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    goto/16 :goto_39

    .line 224
    :cond_e7
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_45

    .line 225
    :cond_eb
    const-wide/16 v6, 0x0

    goto/16 :goto_5a

    .line 237
    :cond_ef
    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double v2, v4, v2

    goto/16 :goto_4
.end method

.method public static fitnessVo2max(Lcom/isaigu/gymapp/ai/AiModel$Fitness;Lcom/isaigu/gymapp/ai/AiModel$Sex;I)D
    .registers 11

    .prologue
    .line 143
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne p0, v0, :cond_29

    const-wide/high16 v0, 0x4041000000000000L    # 34.0

    .line 144
    :goto_6
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne p1, v2, :cond_10

    .line 145
    const-wide v2, 0x3fea8f5c28f5c28fL    # 0.83

    mul-double/2addr v0, v2

    .line 147
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

    .line 148
    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0

    .line 143
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

    .line 119
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->weightKg:D

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_60

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->weightKg:D

    const-wide v4, 0x406f400000000000L    # 250.0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_60

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->weightKg:D

    .line 120
    :goto_17
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    if-eqz v1, :cond_66

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Screening;->hrLoweringMedication:Z

    if-eqz v1, :cond_66

    move v11, v10

    .line 121
    :goto_22
    if-eqz p1, :cond_68

    iget-boolean v1, p1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v1, :cond_68

    iget v2, p1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrRest:I

    .line 122
    :goto_2a
    if-eqz p1, :cond_6a

    iget v1, p1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrMax:I

    if-lez v1, :cond_6a

    iget v3, p1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrMax:I

    .line 123
    :goto_32
    new-instance v1, Lcom/isaigu/gymapp/ai/AiEnergy;

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    iget v7, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    invoke-static {v6, v7, v4, v5}, Lcom/isaigu/gymapp/ai/AiEnergy;->restingVo2(Lcom/isaigu/gymapp/ai/AiModel$Sex;ID)D

    move-result-wide v6

    iget-object v8, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    iget-object v9, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    iget v12, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    .line 124
    invoke-static {v8, v9, v12}, Lcom/isaigu/gymapp/ai/AiEnergy;->fitnessVo2max(Lcom/isaigu/gymapp/ai/AiModel$Fitness;Lcom/isaigu/gymapp/ai/AiModel$Sex;I)D

    move-result-wide v8

    if-nez v11, :cond_73

    :goto_48
    invoke-direct/range {v1 .. v10}, Lcom/isaigu/gymapp/ai/AiEnergy;-><init>(IIDDDZ)V

    .line 125
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v0, v2, :cond_75

    const-wide v2, 0x3fd3d70a3d70a3d7L    # 0.31

    :goto_56
    mul-double/2addr v2, v4

    const-wide v4, 0x403c800000000000L    # 28.5

    div-double/2addr v2, v4

    iput-wide v2, v1, Lcom/isaigu/gymapp/ai/AiEnergy;->muscleScale:D

    .line 126
    return-object v1

    .line 119
    :cond_60
    const-wide v4, 0x4052c00000000000L    # 75.0

    goto :goto_17

    :cond_66
    move v11, v0

    .line 120
    goto :goto_22

    .line 121
    :cond_68
    const/4 v2, -0x1

    goto :goto_2a

    .line 122
    :cond_6a
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    iget v3, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiPlanner;->hrMax(Lcom/isaigu/gymapp/ai/AiModel$Sex;I)I

    move-result v3

    goto :goto_32

    :cond_73
    move v10, v0

    .line 124
    goto :goto_48

    .line 125
    :cond_75
    const-wide v2, 0x3fd851eb851eb852L    # 0.38

    goto :goto_56
.end method

.method static freqFactor(I)D
    .registers 7

    .prologue
    .line 256
    int-to-double v0, p0

    int-to-double v2, p0

    const-wide/high16 v4, 0x4039000000000000L    # 25.0

    add-double/2addr v2, v4

    div-double/2addr v0, v2

    const-wide v2, 0x3fe8ba2e8ba2e8baL    # 0.7727272727272727

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private static kcalPerLitre(D)D
    .registers 8

    .prologue
    .line 261
    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    .line 262
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

.method static recruited(DD)D
    .registers 12

    .prologue
    const-wide/16 v0, 0x0

    .line 245
    cmpg-double v2, p0, v0

    if-gtz v2, :cond_7

    .line 251
    :goto_6
    return-wide v0

    .line 248
    :cond_7
    cmpl-double v2, p2, v0

    if-lez v2, :cond_31

    .line 249
    :goto_b
    const-wide v2, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v2, p2

    .line 250
    const-wide v4, 0x3fe6666666666666L    # 0.7

    sub-double v6, p0, v2

    mul-double/2addr v4, v6

    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    sub-double v2, p2, v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    div-double v2, v4, v2

    .line 251
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    goto :goto_6

    :cond_31
    move-wide p2, p0

    .line 248
    goto :goto_b
.end method

.method public static restingVo2(Lcom/isaigu/gymapp/ai/AiModel$Sex;ID)D
    .registers 12

    .prologue
    const/16 v2, 0x3c

    const/16 v1, 0x1e

    .line 132
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne p0, v0, :cond_55

    .line 133
    if-ge p1, v1, :cond_39

    const-wide v0, 0x402da2d0e5604189L    # 14.818

    mul-double/2addr v0, p2

    const-wide v2, 0x407e69999999999aL    # 486.6

    add-double/2addr v0, v2

    .line 137
    :goto_16
    const-wide v2, 0x4096800000000000L    # 1440.0

    div-double/2addr v0, v2

    const-wide v2, 0x401351eb851eb852L    # 4.83

    div-double/2addr v0, v2

    .line 138
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

    .line 133
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

    .line 135
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
    .line 270
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->lastVo2:D

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2rest:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_27

    .line 271
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

    .line 273
    :cond_27
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->lastVo2:D

    .line 274
    return-void
.end method

.method public getActiveKcal()D
    .registers 7

    .prologue
    .line 278
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
    .line 286
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcal:D

    return-wide v0
.end method

.method public getKcalEms()D
    .registers 3

    .prologue
    .line 291
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcalEms:D

    return-wide v0
.end method

.method public getKcalEmsModel()D
    .registers 3

    .prologue
    .line 296
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcalEmsModel:D

    return-wide v0
.end method

.method public getMuscleScale()D
    .registers 3

    .prologue
    .line 300
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->muscleScale:D

    return-wide v0
.end method

.method public getVo2max()D
    .registers 3

    .prologue
    .line 304
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2max:D

    return-wide v0
.end method

.method public getVo2rest()D
    .registers 3

    .prologue
    .line 282
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2rest:D

    return-wide v0
.end method

.method public getWeightKg()D
    .registers 3

    .prologue
    .line 308
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->weightKg:D

    return-wide v0
.end method

.method public reset()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 165
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcal:D

    .line 166
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcalRest:D

    .line 167
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcalEms:D

    .line 168
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcalEmsModel:D

    .line 169
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->lastVo2:D

    .line 170
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->lastMs:J

    .line 171
    return-void
.end method

.method public setHeart(II)V
    .registers 13

    .prologue
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 152
    const/16 v0, 0x23

    if-lt p1, v0, :cond_4e

    const/16 v0, 0x78

    if-gt p1, v0, :cond_4e

    const/4 v0, 0x1

    .line 153
    :goto_b
    if-eqz v0, :cond_50

    :goto_d
    iput p1, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->hrRest:I

    .line 154
    iget v1, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->hrRest:I

    add-int/lit8 v1, v1, 0x14

    if-le p2, v1, :cond_53

    :goto_15
    iput p2, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->hrMax:I

    .line 155
    if-eqz v0, :cond_56

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->hrRatioValid:Z

    if-eqz v0, :cond_56

    .line 156
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

    .line 157
    mul-double/2addr v0, v8

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2maxPopulation:D

    mul-double/2addr v2, v8

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2max:D

    .line 161
    :goto_40
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2max:D

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2rest:D

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    add-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2max:D

    .line 162
    return-void

    .line 152
    :cond_4e
    const/4 v0, 0x0

    goto :goto_b

    .line 153
    :cond_50
    const/16 p1, 0x46

    goto :goto_d

    .line 154
    :cond_53
    const/16 p2, 0xb4

    goto :goto_15

    .line 159
    :cond_56
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2maxPopulation:D

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2max:D

    goto :goto_40
.end method

.method public tick(JD)V
    .registers 12

    .prologue
    .line 175
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/isaigu/gymapp/ai/AiEnergy;->tick(JDLcom/isaigu/gymapp/ai/AiEnergy$Stim;)V

    .line 176
    return-void
.end method

.method public tick(JDLcom/isaigu/gymapp/ai/AiEnergy$Stim;)V
    .registers 31

    .prologue
    .line 185
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->lastMs:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_11

    .line 186
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/isaigu/gymapp/ai/AiEnergy;->lastMs:J

    .line 207
    :cond_10
    :goto_10
    return-void

    .line 189
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

    .line 190
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/isaigu/gymapp/ai/AiEnergy;->lastMs:J

    .line 191
    const-wide/16 v4, 0x0

    cmpl-double v4, p3, v4

    if-lez v4, :cond_137

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

    .line 192
    :goto_49
    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 193
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2rest:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->weightKg:D

    mul-double/2addr v4, v10

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double v10, v4, v10

    .line 194
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2rest:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2max:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2rest:D

    sub-double/2addr v12, v14

    mul-double/2addr v12, v8

    add-double/2addr v4, v12

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->weightKg:D

    mul-double/2addr v4, v12

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double v12, v4, v12

    .line 195
    if-eqz p5, :cond_13b

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->muscleScale:D

    move-object/from16 v0, p5

    invoke-static {v0, v4, v5}, Lcom/isaigu/gymapp/ai/AiEnergy;->evokedVo2(Lcom/isaigu/gymapp/ai/AiEnergy$Stim;D)D

    move-result-wide v4

    .line 196
    :goto_8c
    add-double v14, v10, v4

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    .line 198
    sub-double v16, v14, v10

    const-wide v18, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2max:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2rest:D

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->weightKg:D

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    const-wide v22, 0x408f400000000000L    # 1000.0

    div-double v20, v20, v22

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 199
    const-wide/16 v16, 0x0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiEnergy;->kcalPerLitre(D)D

    move-result-wide v8

    const-wide/high16 v16, 0x404e000000000000L    # 60.0

    div-double v8, v8, v16

    .line 200
    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v16, v16, v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->weightKg:D

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/isaigu/gymapp/ai/AiEnergy;->lastVo2:D

    .line 201
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcal:D

    move-wide/from16 v16, v0

    mul-double/2addr v14, v8

    mul-double/2addr v14, v6

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcal:D

    .line 202
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcalRest:D

    const-wide v16, 0x401351eb851eb852L    # 4.83

    mul-double v16, v16, v10

    const-wide/high16 v18, 0x404e000000000000L    # 60.0

    div-double v16, v16, v18

    mul-double v16, v16, v6

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcalRest:D

    .line 203
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcalEmsModel:D

    mul-double v16, v4, v8

    mul-double v16, v16, v6

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcalEmsModel:D

    .line 204
    add-double v14, v10, v4

    cmpl-double v14, v14, v12

    if-lez v14, :cond_10

    .line 205
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcalEms:D

    add-double/2addr v4, v10

    sub-double/2addr v4, v12

    mul-double/2addr v4, v8

    mul-double/2addr v4, v6

    add-double/2addr v4, v14

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcalEms:D

    goto/16 :goto_10

    .line 191
    :cond_137
    const-wide/16 v4, 0x0

    goto/16 :goto_49

    .line 195
    :cond_13b
    const-wide/16 v4, 0x0

    goto/16 :goto_8c
.end method
