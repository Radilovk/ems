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

    .line 53
    const/16 v0, 0xa

    new-array v1, v0, [D

    fill-array-data v1, :array_12

    sput-object v1, Lcom/isaigu/gymapp/ai/AiEnergy;->CH_MASS:[D

    .line 54
    new-array v0, v0, [D

    fill-array-data v0, :array_3e

    sput-object v0, Lcom/isaigu/gymapp/ai/AiEnergy;->CH_DEPTH:[D

    return-void

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
    .registers 11

    .line 109
    const/16 v1, 0x46

    const/16 v2, 0xb4

    const-wide v3, 0x4052c00000000000L    # 75.0

    const-wide/high16 v5, 0x400c000000000000L    # 3.5

    const-wide/high16 v7, 0x4043000000000000L    # 38.0

    const/4 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/isaigu/gymapp/ai/AiEnergy;-><init>(IIDDDZ)V

    .line 110
    return-void
.end method

.method public constructor <init>(II)V
    .registers 13

    .line 113
    const-wide v3, 0x4052c00000000000L    # 75.0

    const-wide/high16 v5, 0x400c000000000000L    # 3.5

    const-wide/high16 v7, 0x4043000000000000L    # 38.0

    const/4 v9, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v9}, Lcom/isaigu/gymapp/ai/AiEnergy;-><init>(IIDDDZ)V

    .line 114
    return-void
.end method

.method private constructor <init>(IIDDDZ)V
    .registers 13

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->muscleScale:D

    .line 104
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->lastVo2:D

    .line 105
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->lastMs:J

    .line 118
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    cmpl-double v2, p3, v0

    if-ltz v2, :cond_1f

    const-wide v0, 0x406f400000000000L    # 250.0

    cmpg-double v2, p3, v0

    if-gtz v2, :cond_1f

    goto :goto_24

    :cond_1f
    const-wide p3, 0x4052c00000000000L    # 75.0

    :goto_24
    iput-wide p3, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->weightKg:D

    .line 119
    iput-wide p5, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2rest:D

    .line 120
    iput-wide p7, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2maxPopulation:D

    .line 121
    iput-boolean p9, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->hrRatioValid:Z

    .line 122
    const-wide p5, 0x3fd6147ae147ae14L    # 0.345

    mul-double p3, p3, p5

    const-wide p5, 0x403c800000000000L    # 28.5

    div-double/2addr p3, p5

    iput-wide p3, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->muscleScale:D

    .line 123
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEnergy;->setHeart(II)V

    .line 124
    return-void
.end method

.method static armsSent()D
    .registers 2

    .line 61
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->armsFactor()F

    move-result v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_6

    float-to-double v0, v0

    return-wide v0

    .line 62
    :catchall_6
    move-exception v0

    .line 63
    const-wide v0, 0x3fa999999999999aL    # 0.05

    return-wide v0
.end method

.method public static evokedVo2(Lcom/isaigu/gymapp/ai/AiEnergy$Stim;D)D
    .registers 22

    .line 224
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_7

    .line 225
    return-wide v1

    .line 227
    :cond_7
    nop

    .line 228
    move-wide v5, v1

    const/4 v4, 0x0

    :goto_a
    sget-object v7, Lcom/isaigu/gymapp/ai/AiEnergy;->CH_MASS:[D

    array-length v7, v7

    if-ge v4, v7, :cond_c6

    .line 229
    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->disabled:[Z

    if-eqz v7, :cond_22

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->disabled:[Z

    array-length v7, v7

    if-ge v4, v7, :cond_22

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->disabled:[Z

    aget-boolean v7, v7, v4

    if-eqz v7, :cond_22

    .line 230
    move/from16 v18, v4

    goto/16 :goto_c2

    .line 232
    :cond_22
    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->channels:[I

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    if-eqz v7, :cond_35

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->channels:[I

    array-length v7, v7

    if-ge v4, v7, :cond_32

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->channels:[I

    aget v7, v7, v4

    goto :goto_33

    :cond_32
    const/4 v7, 0x0

    :goto_33
    int-to-double v10, v7

    goto :goto_36

    :cond_35
    move-wide v10, v8

    .line 233
    :goto_36
    div-double/2addr v10, v8

    const/4 v7, 0x4

    if-ne v4, v7, :cond_3f

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiEnergy;->armsSent()D

    move-result-wide v12

    goto :goto_41

    :cond_3f
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    :goto_41
    mul-double v10, v10, v12

    .line 234
    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->toleratedCharge:[D

    if-eqz v7, :cond_51

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->toleratedCharge:[D

    array-length v7, v7

    if-ge v4, v7, :cond_51

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->toleratedCharge:[D

    aget-wide v12, v7, v4

    goto :goto_52

    :cond_51
    move-wide v12, v1

    .line 235
    :goto_52
    nop

    .line 236
    iget-wide v14, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->onShare:D

    const-wide v16, 0x4075e00000000000L    # 350.0

    cmpl-double v7, v14, v1

    if-lez v7, :cond_82

    iget v7, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->hz:I

    if-lez v7, :cond_82

    .line 237
    iget-wide v14, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->strengthPct:D

    div-double/2addr v14, v8

    mul-double v14, v14, v10

    iget v7, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pwUs:I

    move/from16 v18, v4

    int-to-double v3, v7

    div-double v3, v3, v16

    mul-double v14, v14, v3

    .line 238
    iget-wide v3, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->onShare:D

    invoke-static {v14, v15, v12, v13}, Lcom/isaigu/gymapp/ai/AiEnergy;->recruited(DD)D

    move-result-wide v14

    mul-double v3, v3, v14

    iget v7, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->hz:I

    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AiEnergy;->freqFactor(I)D

    move-result-wide v14

    mul-double v3, v3, v14

    add-double/2addr v3, v1

    goto :goto_85

    .line 236
    :cond_82
    move/from16 v18, v4

    .line 240
    move-wide v3, v1

    :goto_85
    iget-wide v14, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pauseShare:D

    cmpl-double v7, v14, v1

    if-lez v7, :cond_ac

    iget v7, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pauseHz:I

    if-lez v7, :cond_ac

    .line 241
    iget-wide v14, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pauseStrengthPct:D

    div-double/2addr v14, v8

    mul-double v10, v10, v14

    iget v7, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pwUs:I

    int-to-double v7, v7

    div-double v7, v7, v16

    mul-double v10, v10, v7

    .line 242
    iget-wide v7, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pauseShare:D

    invoke-static {v10, v11, v12, v13}, Lcom/isaigu/gymapp/ai/AiEnergy;->recruited(DD)D

    move-result-wide v9

    mul-double v7, v7, v9

    iget v9, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pauseHz:I

    invoke-static {v9}, Lcom/isaigu/gymapp/ai/AiEnergy;->freqFactor(I)D

    move-result-wide v9

    mul-double v7, v7, v9

    add-double/2addr v3, v7

    .line 244
    :cond_ac
    sget-object v7, Lcom/isaigu/gymapp/ai/AiEnergy;->CH_MASS:[D

    aget-wide v8, v7, v18

    mul-double v8, v8, p1

    sget-object v7, Lcom/isaigu/gymapp/ai/AiEnergy;->CH_DEPTH:[D

    aget-wide v10, v7, v18

    mul-double v8, v8, v10

    mul-double v8, v8, v3

    const-wide v3, 0x406f400000000000L    # 250.0

    mul-double v8, v8, v3

    add-double/2addr v5, v8

    .line 228
    :goto_c2
    add-int/lit8 v4, v18, 0x1

    goto/16 :goto_a

    .line 246
    :cond_c6
    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr v5, v0

    return-wide v5
.end method

.method public static fitnessVo2max(Lcom/isaigu/gymapp/ai/AiModel$Fitness;Lcom/isaigu/gymapp/ai/AiModel$Sex;I)D
    .registers 9

    .line 152
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne p0, v0, :cond_7

    const-wide/high16 v0, 0x4041000000000000L    # 34.0

    goto :goto_10

    :cond_7
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne p0, v0, :cond_e

    const-wide/high16 v0, 0x404a000000000000L    # 52.0

    goto :goto_10

    :cond_e
    const-wide/high16 v0, 0x4045000000000000L    # 42.0

    .line 153
    :goto_10
    sget-object p0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne p1, p0, :cond_1b

    .line 154
    const-wide p0, 0x3fea8f5c28f5c28fL    # 0.83

    mul-double v0, v0, p0

    .line 156
    :cond_1b
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    const-wide v2, 0x3f826e978d4fdf3bL    # 0.009

    const/4 v4, 0x0

    add-int/lit8 p2, p2, -0x19

    invoke-static {v4, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-double v4, p2

    mul-double v4, v4, v2

    sub-double/2addr p0, v4

    mul-double v0, v0, p0

    .line 157
    const-wide/high16 p0, 0x4030000000000000L    # 16.0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static forSession(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Lcom/isaigu/gymapp/ai/AiModel$Profile;)Lcom/isaigu/gymapp/ai/AiEnergy;
    .registers 15

    .line 128
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->weightKg:D

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_16

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->weightKg:D

    const-wide v2, 0x406f400000000000L    # 250.0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_16

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->weightKg:D

    goto :goto_1b

    :cond_16
    const-wide v0, 0x4052c00000000000L    # 75.0

    .line 129
    :goto_1b
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    const/4 v3, 0x1

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Screening;->hrLoweringMedication:Z

    if-eqz v2, :cond_28

    const/4 v2, 0x1

    goto :goto_29

    :cond_28
    const/4 v2, 0x0

    .line 130
    :goto_29
    if-eqz p1, :cond_32

    iget-boolean v4, p1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v4, :cond_32

    iget v4, p1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrRest:I

    goto :goto_33

    :cond_32
    const/4 v4, -0x1

    .line 131
    :goto_33
    if-eqz p1, :cond_3c

    iget v5, p1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrMax:I

    if-lez v5, :cond_3c

    iget p1, p1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrMax:I

    goto :goto_44

    :cond_3c
    iget-object p1, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    iget v5, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    invoke-static {p1, v5}, Lcom/isaigu/gymapp/ai/AiPlanner;->hrMax(Lcom/isaigu/gymapp/ai/AiModel$Sex;I)I

    move-result p1

    .line 132
    :goto_44
    new-instance v12, Lcom/isaigu/gymapp/ai/AiEnergy;

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    iget v6, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    invoke-static {v5, v6, v0, v1}, Lcom/isaigu/gymapp/ai/AiEnergy;->restingVo2(Lcom/isaigu/gymapp/ai/AiModel$Sex;ID)D

    move-result-wide v7

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    iget v9, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    .line 133
    invoke-static {v5, v6, v9}, Lcom/isaigu/gymapp/ai/AiEnergy;->fitnessVo2max(Lcom/isaigu/gymapp/ai/AiModel$Fitness;Lcom/isaigu/gymapp/ai/AiModel$Sex;I)D

    move-result-wide v9

    xor-int/lit8 v11, v2, 0x1

    move-object v2, v12

    move v3, v4

    move v4, p1

    move-wide v5, v0

    invoke-direct/range {v2 .. v11}, Lcom/isaigu/gymapp/ai/AiEnergy;-><init>(IIDDDZ)V

    .line 134
    iget-object p0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object p1, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne p0, p1, :cond_6d

    const-wide p0, 0x3fd3d70a3d70a3d7L    # 0.31

    goto :goto_72

    :cond_6d
    const-wide p0, 0x3fd851eb851eb852L    # 0.38

    :goto_72
    mul-double p0, p0, v0

    const-wide v0, 0x403c800000000000L    # 28.5

    div-double/2addr p0, v0

    iput-wide p0, v12, Lcom/isaigu/gymapp/ai/AiEnergy;->muscleScale:D

    .line 135
    return-object v12
.end method

.method static freqFactor(I)D
    .registers 5

    .line 265
    int-to-double v0, p0

    const-wide/high16 v2, 0x4039000000000000L    # 25.0

    add-double/2addr v2, v0

    div-double/2addr v0, v2

    const-wide v2, 0x3fe8ba2e8ba2e8baL    # 0.7727272727272727

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private static kcalPerLitre(D)D
    .registers 4

    .line 270
    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    mul-double p0, p0, v0

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    add-double/2addr p0, v0

    .line 271
    const-wide v0, 0x3fe6666666666666L    # 0.7

    sub-double/2addr p0, v0

    const-wide v0, 0x3fd3333333333333L    # 0.3

    div-double/2addr p0, v0

    const-wide v0, 0x3fd71a9fbe76c8b4L    # 0.361

    mul-double p0, p0, v0

    const-wide v0, 0x4012be76c8b43958L    # 4.686

    add-double/2addr p0, v0

    return-wide p0
.end method

.method static recruited(DD)D
    .registers 10

    .line 254
    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gtz v2, :cond_7

    .line 255
    return-wide v0

    .line 257
    :cond_7
    cmpl-double v2, p2, v0

    if-lez v2, :cond_c

    goto :goto_d

    :cond_c
    move-wide p2, p0

    .line 258
    :goto_d
    const-wide v2, 0x3fa999999999999aL    # 0.05

    mul-double v2, v2, p2

    .line 259
    const-wide v4, 0x3fe6666666666666L    # 0.7

    sub-double/2addr p0, v2

    mul-double p0, p0, v4

    const-wide v4, 0x3e112e0be826d695L    # 1.0E-9

    sub-double/2addr p2, v2

    invoke-static {v4, v5, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p2

    div-double/2addr p0, p2

    .line 260
    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static restingVo2(Lcom/isaigu/gymapp/ai/AiModel$Sex;ID)D
    .registers 10

    .line 141
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    const/16 v1, 0x3c

    const/16 v2, 0x1e

    if-ne p0, v0, :cond_34

    .line 142
    if-ge p1, v2, :cond_18

    const-wide p0, 0x402da2d0e5604189L    # 14.818

    mul-double p0, p0, p2

    const-wide v0, 0x407e69999999999aL    # 486.6

    :goto_16
    add-double/2addr p0, v0

    goto :goto_60

    :cond_18
    if-ge p1, v1, :cond_27

    const-wide p0, 0x40204083126e978dL    # 8.126

    mul-double p0, p0, p2

    const-wide v0, 0x408a6ccccccccccdL    # 845.6

    goto :goto_16

    :cond_27
    const-wide p0, 0x402229fbe76c8b44L    # 9.082

    mul-double p0, p0, p2

    const-wide v0, 0x4084940000000000L    # 658.5

    goto :goto_16

    .line 144
    :cond_34
    if-ge p1, v2, :cond_44

    const-wide p0, 0x402e1d2f1a9fbe77L    # 15.057

    mul-double p0, p0, p2

    const-wide v0, 0x4085a1999999999aL    # 692.2

    :goto_42
    add-double/2addr p0, v0

    goto :goto_60

    :cond_44
    if-ge p1, v1, :cond_53

    const-wide p0, 0x4026f1a9fbe76c8bL    # 11.472

    mul-double p0, p0, p2

    const-wide v0, 0x408b48cccccccccdL    # 873.1

    goto :goto_42

    :cond_53
    const-wide p0, 0x40276c083126e979L    # 11.711

    mul-double p0, p0, p2

    const-wide v0, 0x40825d999999999aL    # 587.7

    goto :goto_42

    .line 146
    :goto_60
    const-wide v0, 0x4096800000000000L    # 1440.0

    div-double/2addr p0, v0

    const-wide v0, 0x401351eb851eb852L    # 4.83

    div-double/2addr p0, v0

    .line 147
    const-wide v0, 0x4002666666666666L    # 2.3

    const-wide/high16 v2, 0x4012000000000000L    # 4.5

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double p0, p0, v4

    div-double/2addr p0, p2

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public closeEpoc()V
    .registers 7

    .line 279
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->lastVo2:D

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2rest:D

    cmpl-double v4, v0, v2

    if-lez v4, :cond_26

    .line 280
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcal:D

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->weightKg:D

    mul-double v0, v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    const-wide v2, 0x401351eb851eb852L    # 4.83

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4044000000000000L    # 40.0

    mul-double v0, v0, v2

    add-double/2addr v4, v0

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcal:D

    .line 282
    :cond_26
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->lastVo2:D

    .line 283
    return-void
.end method

.method public getActiveKcal()D
    .registers 5

    .line 287
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcal:D

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcalRest:D

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getKcal()D
    .registers 3

    .line 295
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcal:D

    return-wide v0
.end method

.method public getKcalEms()D
    .registers 3

    .line 300
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcalEms:D

    return-wide v0
.end method

.method public getKcalEmsModel()D
    .registers 3

    .line 305
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcalEmsModel:D

    return-wide v0
.end method

.method public getMuscleScale()D
    .registers 3

    .line 309
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->muscleScale:D

    return-wide v0
.end method

.method public getVo2max()D
    .registers 3

    .line 313
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2max:D

    return-wide v0
.end method

.method public getVo2rest()D
    .registers 3

    .line 291
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2rest:D

    return-wide v0
.end method

.method public getWeightKg()D
    .registers 3

    .line 317
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->weightKg:D

    return-wide v0
.end method

.method public reset()V
    .registers 3

    .line 174
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcal:D

    .line 175
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcalRest:D

    .line 176
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcalEms:D

    .line 177
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcalEmsModel:D

    .line 178
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->lastVo2:D

    .line 179
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->lastMs:J

    .line 180
    return-void
.end method

.method public setHeart(II)V
    .registers 9

    .line 161
    const/16 v0, 0x23

    if-lt p1, v0, :cond_a

    const/16 v0, 0x78

    if-gt p1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 162
    :goto_b
    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/16 p1, 0x46

    :goto_10
    iput p1, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->hrRest:I

    .line 163
    add-int/lit8 p1, p1, 0x14

    if-le p2, p1, :cond_17

    goto :goto_19

    :cond_17
    const/16 p2, 0xb4

    :goto_19
    iput p2, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->hrMax:I

    .line 164
    if-eqz v0, :cond_48

    iget-boolean p1, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->hrRatioValid:Z

    if-eqz p1, :cond_48

    .line 165
    const-wide/high16 v0, 0x4032000000000000L    # 18.0

    const-wide v2, 0x4052c00000000000L    # 75.0

    const-wide v4, 0x402e99999999999aL    # 15.3

    int-to-double p1, p2

    mul-double p1, p1, v4

    iget v4, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->hrRest:I

    int-to-double v4, v4

    div-double/2addr p1, v4

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    .line 166
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double p1, p1, v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2maxPopulation:D

    mul-double v2, v2, v0

    add-double/2addr p1, v2

    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2max:D

    .line 167
    goto :goto_4c

    .line 168
    :cond_48
    iget-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2maxPopulation:D

    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2max:D

    .line 170
    :goto_4c
    iget-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2max:D

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2rest:D

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    add-double/2addr v0, v2

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2max:D

    .line 171
    return-void
.end method

.method public tick(JD)V
    .registers 11

    .line 184
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AiEnergy;->tick(JDLcom/isaigu/gymapp/ai/AiEnergy$Stim;)V

    .line 185
    return-void
.end method

.method public tick(JDLcom/isaigu/gymapp/ai/AiEnergy$Stim;)V
    .registers 29

    .line 194
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p5

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->lastMs:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-gez v8, :cond_11

    .line 195
    iput-wide v1, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->lastMs:J

    .line 196
    return-void

    .line 198
    :cond_11
    const-wide/16 v8, 0x1388

    sub-long v4, v1, v4

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    .line 199
    iput-wide v1, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->lastMs:J

    .line 200
    const-wide/16 v1, 0x0

    cmpl-double v8, p3, v1

    if-lez v8, :cond_37

    iget v8, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->hrRest:I

    int-to-double v9, v8

    sub-double v9, p3, v9

    iget v11, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->hrMax:I

    sub-int/2addr v11, v8

    int-to-double v11, v11

    div-double/2addr v9, v11

    goto :goto_38

    :cond_37
    move-wide v9, v1

    .line 201
    :goto_38
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 202
    iget-wide v13, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2rest:D

    iget-wide v1, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->weightKg:D

    mul-double v15, v13, v1

    div-double/2addr v15, v6

    .line 203
    iget-wide v11, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2max:D

    sub-double/2addr v11, v13

    mul-double v11, v11, v8

    add-double/2addr v13, v11

    mul-double v13, v13, v1

    div-double/2addr v13, v6

    .line 204
    if-eqz v3, :cond_5b

    iget-wide v1, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->muscleScale:D

    invoke-static {v3, v1, v2}, Lcom/isaigu/gymapp/ai/AiEnergy;->evokedVo2(Lcom/isaigu/gymapp/ai/AiEnergy$Stim;D)D

    move-result-wide v1

    goto :goto_5d

    :cond_5b
    const-wide/16 v1, 0x0

    .line 205
    :goto_5d
    add-double v10, v15, v1

    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v17

    .line 207
    sub-double v19, v17, v15

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2max:D

    move-wide/from16 v21, v10

    iget-wide v10, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->vo2rest:D

    sub-double/2addr v6, v10

    iget-wide v10, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->weightKg:D

    mul-double v6, v6, v10

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v10

    const-wide v10, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    div-double v6, v19, v6

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 208
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiEnergy;->kcalPerLitre(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    div-double/2addr v6, v8

    .line 209
    const-wide v10, 0x408f400000000000L    # 1000.0

    mul-double v10, v10, v17

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->weightKg:D

    div-double/2addr v10, v8

    iput-wide v10, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->lastVo2:D

    .line 210
    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcal:D

    mul-double v17, v17, v6

    mul-double v17, v17, v4

    add-double v8, v8, v17

    iput-wide v8, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcal:D

    .line 211
    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcalRest:D

    const-wide v10, 0x401351eb851eb852L    # 4.83

    mul-double v15, v15, v10

    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    div-double/2addr v15, v10

    mul-double v15, v15, v4

    add-double/2addr v8, v15

    iput-wide v8, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcalRest:D

    .line 212
    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcalEmsModel:D

    mul-double v1, v1, v6

    mul-double v1, v1, v4

    add-double/2addr v8, v1

    iput-wide v8, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcalEmsModel:D

    .line 213
    cmpl-double v1, v21, v13

    if-lez v1, :cond_d7

    .line 214
    iget-wide v1, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcalEms:D

    sub-double v10, v21, v13

    mul-double v10, v10, v6

    mul-double v10, v10, v4

    add-double/2addr v1, v10

    iput-wide v1, v0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcalEms:D

    .line 216
    :cond_d7
    return-void
.end method
