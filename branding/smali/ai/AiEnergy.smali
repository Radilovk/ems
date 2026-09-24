.class public final Lcom/isaigu/gymapp/ai/AiEnergy;
.super Ljava/lang/Object;
.source "AiEnergy.java"


# static fields
.field public static final DEFAULT_HR_MAX:I = 0xb4

.field public static final DEFAULT_HR_REST:I = 0x46

.field public static final DEFAULT_WEIGHT_KG:D = 75.0

.field public static final EMS_MET_FULL:D = 2.0

.field public static final MET_PEAK:D = 10.0


# instance fields
.field private hrMax:I

.field private hrRest:I

.field private kcal:D

.field private kcalEms:D

.field private lastMs:J

.field private final weightKg:D


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 31
    const/16 v0, 0x46

    const/16 v1, 0xb4

    invoke-direct {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiEnergy;-><init>(II)V

    .line 32
    return-void
.end method

.method public constructor <init>(II)V
    .registers 5

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->lastMs:J

    .line 35
    const-wide v0, 0x4052c00000000000L    # 75.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->weightKg:D

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEnergy;->setHeart(II)V

    .line 37
    return-void
.end method


# virtual methods
.method public getKcal()D
    .registers 3

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcal:D

    return-wide v0
.end method

.method public getKcalEms()D
    .registers 3

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcalEms:D

    return-wide v0
.end method

.method public reset()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 45
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcal:D

    .line 46
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcalEms:D

    .line 47
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->lastMs:J

    .line 48
    return-void
.end method

.method public setHeart(II)V
    .registers 4

    .prologue
    .line 40
    const/16 v0, 0x1e

    if-le p1, v0, :cond_f

    :goto_4
    iput p1, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->hrRest:I

    .line 41
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->hrRest:I

    add-int/lit8 v0, v0, 0x14

    if-le p2, v0, :cond_12

    :goto_c
    iput p2, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->hrMax:I

    .line 42
    return-void

    .line 40
    :cond_f
    const/16 p1, 0x46

    goto :goto_4

    .line 41
    :cond_12
    const/16 p2, 0xb4

    goto :goto_c
.end method

.method public tick(JDDI)V
    .registers 23

    .prologue
    .line 58
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->lastMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_d

    .line 59
    move-wide/from16 v0, p1

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->lastMs:J

    .line 72
    :goto_c
    return-void

    .line 62
    :cond_d
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1388

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->lastMs:J

    sub-long v6, p1, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double v4, v2, v4

    .line 63
    move-wide/from16 v0, p1

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->lastMs:J

    .line 64
    const-wide/16 v2, 0x0

    cmpl-double v2, p3, v2

    if-lez v2, :cond_90

    iget v2, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->hrRest:I

    int-to-double v2, v2

    sub-double v2, p3, v2

    iget v6, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->hrMax:I

    iget v7, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->hrRest:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    div-double/2addr v2, v6

    .line 65
    :goto_3b
    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 66
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, 0x4022000000000000L    # 9.0

    mul-double/2addr v2, v8

    add-double/2addr v6, v2

    .line 67
    const-wide/16 v2, 0x0

    cmpl-double v2, p5, v2

    if-lez v2, :cond_93

    if-lez p7, :cond_93

    .line 68
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v0, p5

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    mul-double/2addr v2, v8

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    move/from16 v0, p7

    int-to-double v10, v0

    const-wide v12, 0x4055400000000000L    # 85.0

    div-double/2addr v10, v12

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v2, v8

    .line 69
    :goto_74
    const-wide/high16 v8, 0x400c000000000000L    # 3.5

    iget-wide v10, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->weightKg:D

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4069000000000000L    # 200.0

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    div-double/2addr v8, v10

    .line 70
    iget-wide v10, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcal:D

    add-double/2addr v6, v2

    mul-double/2addr v6, v8

    mul-double/2addr v6, v4

    add-double/2addr v6, v10

    iput-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcal:D

    .line 71
    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcalEms:D

    mul-double/2addr v2, v8

    mul-double/2addr v2, v4

    add-double/2addr v2, v6

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiEnergy;->kcalEms:D

    goto/16 :goto_c

    .line 64
    :cond_90
    const-wide/16 v2, 0x0

    goto :goto_3b

    .line 68
    :cond_93
    const-wide/16 v2, 0x0

    goto :goto_74
.end method
