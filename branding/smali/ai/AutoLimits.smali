.class public final Lcom/isaigu/gymapp/ai/AutoLimits;
.super Ljava/lang/Object;
.source "AutoLimits.java"


# static fields
.field public static final ON_MAX_ACTIVE:I = 0x6

.field public static final ON_MAX_PASSIVE:I = 0x4

.field public static final ON_MAX_WAVE:I = 0x3

.field public static final PW_MAX:I = 0x190

.field public static final PW_MIN:I = 0x96

.field public static final RAISE_PER_CYCLE:I = 0x5

.field public static final RAMP_MIN_TETANIC_MS:I = 0x12c


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static balance([I)V
    .registers 12

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    .line 146
    aget v0, p0, v9

    const-wide v2, 0x3ff4cccccccccccdL    # 1.3

    const/4 v1, 0x7

    aget v1, p0, v1

    int-to-double v4, v1

    mul-double/2addr v2, v4

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    aput v0, p0, v9

    .line 147
    aget v0, p0, v10

    const/16 v1, 0x9

    aget v1, p0, v1

    int-to-double v2, v1

    const-wide v4, 0x3fe3333333333333L    # 0.6

    div-double/2addr v2, v4

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    aput v0, p0, v10

    .line 148
    aget v0, p0, v8

    const-wide v2, 0x3ff3333333333333L    # 1.2

    const/4 v1, 0x6

    aget v1, p0, v1

    int-to-double v4, v1

    mul-double/2addr v2, v4

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    aput v0, p0, v8

    .line 149
    return-void
.end method

.method public static balanced([I)Z
    .registers 11

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide v8, 0x3e112e0be826d695L    # 1.0E-9

    .line 152
    aget v2, p0, v0

    int-to-double v2, v2

    const-wide v4, 0x3ff4cccccccccccdL    # 1.3

    const/4 v6, 0x7

    aget v6, p0, v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    add-double/2addr v4, v8

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_40

    const/4 v2, 0x2

    aget v2, p0, v2

    int-to-double v2, v2

    const/16 v4, 0x9

    aget v4, p0, v4

    int-to-double v4, v4

    const-wide v6, 0x3fe3333333333333L    # 0.6

    div-double/2addr v4, v6

    add-double/2addr v4, v8

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_40

    aget v2, p0, v1

    int-to-double v2, v2

    const-wide v4, 0x3ff3333333333333L    # 1.2

    const/4 v6, 0x6

    aget v6, p0, v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    add-double/2addr v4, v8

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_40

    :goto_3f
    return v0

    :cond_40
    move v0, v1

    goto :goto_3f
.end method

.method static clamp(III)I
    .registers 3

    .prologue
    .line 176
    if-ge p0, p1, :cond_3

    :goto_2
    return p1

    :cond_3
    if-le p0, p2, :cond_7

    move p1, p2

    goto :goto_2

    :cond_7
    move p1, p0

    goto :goto_2
.end method

.method public static clampStep(Lcom/isaigu/gymapp/ai/AutoModel$Step;Lcom/isaigu/gymapp/ai/AutoModel$Step;Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Phase;)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 14

    .prologue
    const/4 v1, 0x0

    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    .line 62
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->copy()Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v3

    .line 63
    iget v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    invoke-static {p2}, Lcom/isaigu/gymapp/ai/AutoLimits;->hzMax(Lcom/isaigu/gymapp/ai/AutoModel$Plan;)I

    move-result v4

    invoke-static {v0, v2, v4}, Lcom/isaigu/gymapp/ai/AutoLimits;->clamp(III)I

    move-result v0

    iput v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    .line 64
    iget v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    const/16 v4, 0x96

    iget v5, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AutoLimits;->pwMax(I)I

    move-result v5

    invoke-static {v0, v4, v5}, Lcom/isaigu/gymapp/ai/AutoLimits;->clamp(III)I

    move-result v0

    iput v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    .line 65
    iget v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    .line 66
    iget v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    .line 67
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->isTetanic()Z

    move-result v0

    if-eqz v0, :cond_81

    iget-wide v4, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->sigma:D

    cmpl-double v0, v4, v8

    if-lez v0, :cond_81

    .line 68
    iget v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    invoke-static {p2, p3}, Lcom/isaigu/gymapp/ai/AutoLimits;->onMax(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Phase;)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    .line 69
    const/16 v0, 0x12c

    iget v4, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    .line 70
    iget v4, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    if-eqz p1, :cond_a1

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->isTetanic()Z

    move-result v0

    if-nez v0, :cond_a1

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->durationS()I

    move-result v0

    :goto_64
    add-int/2addr v4, v0

    .line 71
    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    if-eqz v0, :cond_72

    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->isActive()Z

    move-result v0

    if-nez v0, :cond_72

    move v1, v2

    .line 72
    :cond_72
    if-eqz p3, :cond_a3

    iget-boolean v0, p3, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    if-eqz v0, :cond_a3

    move v0, v2

    .line 74
    :goto_79
    if-ge v4, v0, :cond_81

    .line 75
    iget v1, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    sub-int/2addr v0, v4

    add-int/2addr v0, v1

    iput v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    .line 78
    :cond_81
    iget v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    if-lez v0, :cond_a0

    .line 79
    iget v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    const/16 v1, 0xa

    invoke-static {v0, v2, v1}, Lcom/isaigu/gymapp/ai/AutoLimits;->clamp(III)I

    move-result v0

    iput v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    .line 80
    const-wide v0, 0x3fe3333333333333L    # 0.6

    iget-wide v4, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    .line 82
    :cond_a0
    return-object v3

    :cond_a1
    move v0, v1

    .line 70
    goto :goto_64

    .line 73
    :cond_a3
    if-eqz v1, :cond_a8

    iget v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    goto :goto_79

    :cond_a8
    const-wide v0, 0x3fe51eb851eb851fL    # 0.66

    iget v5, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    int-to-double v6, v5

    mul-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_79
.end method

.method public static clampZones([ILcom/isaigu/gymapp/ai/AutoModel$Plan;)[I
    .registers 3

    .prologue
    .line 124
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zones:[I

    invoke-static {p0, v0, p1}, Lcom/isaigu/gymapp/ai/AutoLimits;->clampZones([I[ILcom/isaigu/gymapp/ai/AutoModel$Plan;)[I

    move-result-object v0

    return-object v0
.end method

.method public static clampZones([I[ILcom/isaigu/gymapp/ai/AutoModel$Plan;)[I
    .registers 10

    .prologue
    const/16 v6, 0xa

    const/4 v3, 0x0

    .line 129
    new-array v4, v6, [I

    move v2, v3

    .line 130
    :goto_6
    if-ge v2, v6, :cond_47

    .line 131
    if-eqz p1, :cond_38

    array-length v0, p1

    if-ge v2, v0, :cond_38

    aget v1, p1, v2

    .line 132
    :goto_f
    if-eqz p0, :cond_3d

    array-length v0, p0

    if-ge v2, v0, :cond_3d

    aget v0, p0, v2

    .line 133
    :goto_16
    iget-object v5, p2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zoneLocked:[Z

    aget-boolean v5, v5, v2

    if-eqz v5, :cond_3f

    .line 134
    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zones:[I

    aget v0, v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 138
    :goto_24
    const/16 v1, 0x64

    iget-object v5, p2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zoneMax:[I

    aget v5, v5, v2

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v3, v1}, Lcom/isaigu/gymapp/ai/AutoLimits;->clamp(III)I

    move-result v0

    aput v0, v4, v2

    .line 130
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    .line 131
    :cond_38
    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zones:[I

    aget v1, v0, v2

    goto :goto_f

    :cond_3d
    move v0, v1

    .line 132
    goto :goto_16

    .line 136
    :cond_3f
    iget v5, p2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zoneDelta:I

    add-int/2addr v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_24

    .line 140
    :cond_47
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AutoLimits;->balance([I)V

    .line 141
    return-object v4
.end method

.method public static hzMax(Lcom/isaigu/gymapp/ai/AutoModel$Plan;)I
    .registers 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    const/16 v1, 0x3c

    if-lt v0, v1, :cond_f

    const/16 v0, 0x55

    :goto_e
    return v0

    :cond_f
    const/16 v0, 0x78

    goto :goto_e
.end method

.method public static onMax(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Phase;)I
    .registers 3

    .prologue
    .line 34
    if-eqz p1, :cond_8

    iget-boolean v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    if-eqz v0, :cond_8

    .line 35
    const/4 v0, 0x3

    .line 41
    :goto_7
    return v0

    .line 37
    :cond_8
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->isActive()Z

    move-result v0

    if-nez v0, :cond_25

    const/4 v0, 0x1

    .line 38
    :goto_15
    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Input;->solo()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 39
    :cond_23
    const/4 v0, 0x4

    goto :goto_7

    .line 37
    :cond_25
    const/4 v0, 0x0

    goto :goto_15

    .line 41
    :cond_27
    const/4 v0, 0x6

    goto :goto_7
.end method

.method public static pwMax(I)I
    .registers 2

    .prologue
    .line 46
    const/16 v0, 0x64

    if-lt p0, v0, :cond_7

    .line 47
    const/16 v0, 0x12c

    .line 49
    :goto_6
    return v0

    :cond_7
    const/16 v0, 0x190

    goto :goto_6
.end method

.method public static rowStrength(IDDDI)I
    .registers 15

    .prologue
    const/4 v1, 0x0

    .line 163
    if-lez p0, :cond_9

    const-wide/16 v2, 0x0

    cmpg-double v0, p1, v2

    if-gtz v0, :cond_b

    :cond_9
    move v0, v1

    .line 172
    :goto_a
    return v0

    .line 166
    :cond_b
    int-to-double v2, p0

    mul-double/2addr v2, p1

    mul-double/2addr v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    .line 167
    int-to-double v2, p0

    mul-double/2addr v2, p5

    const-wide v4, 0x3e112e0be826d695L    # 1.0E-9

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 168
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 169
    if-ltz p7, :cond_2c

    add-int/lit8 v2, p7, 0x5

    if-le v0, v2, :cond_2c

    .line 170
    add-int/lit8 v0, p7, 0x5

    .line 172
    :cond_2c
    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoLimits;->clamp(III)I

    move-result v0

    goto :goto_a
.end method

.method public static windowHz(Lcom/isaigu/gymapp/ai/AutoModel$Window;II)I
    .registers 9

    .prologue
    .line 90
    if-eqz p0, :cond_6

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Window;->hz:Z

    if-nez v0, :cond_7

    .line 94
    :cond_6
    :goto_6
    return p1

    .line 93
    :cond_7
    const/4 v0, 0x1

    int-to-double v2, p1

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoModel$Window;->hzShare:D

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 94
    sub-int v1, p1, v0

    add-int/2addr v0, p1

    invoke-static {p2, v1, v0}, Lcom/isaigu/gymapp/ai/AutoLimits;->clamp(III)I

    move-result p1

    goto :goto_6
.end method

.method public static windowOff(Lcom/isaigu/gymapp/ai/AutoModel$Window;II)I
    .registers 5

    .prologue
    .line 105
    if-eqz p0, :cond_6

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Window;->off:Z

    if-nez v0, :cond_7

    .line 108
    :cond_6
    :goto_6
    return p1

    :cond_7
    const/4 v0, 0x1

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Window;->offMinus:I

    sub-int v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Window;->offPlus:I

    add-int/2addr v1, p1

    invoke-static {p2, v0, v1}, Lcom/isaigu/gymapp/ai/AutoLimits;->clamp(III)I

    move-result p1

    goto :goto_6
.end method

.method public static windowOn(Lcom/isaigu/gymapp/ai/AutoModel$Window;II)I
    .registers 5

    .prologue
    .line 98
    if-eqz p0, :cond_6

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Window;->on:Z

    if-nez v0, :cond_7

    .line 101
    :cond_6
    :goto_6
    return p1

    :cond_7
    const/4 v0, 0x1

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Window;->onMinus:I

    sub-int v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Window;->onPlus:I

    add-int/2addr v1, p1

    invoke-static {p2, v0, v1}, Lcom/isaigu/gymapp/ai/AutoLimits;->clamp(III)I

    move-result p1

    goto :goto_6
.end method

.method public static windowPw(Lcom/isaigu/gymapp/ai/AutoModel$Window;II)I
    .registers 5

    .prologue
    .line 112
    if-eqz p0, :cond_6

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Window;->pw:Z

    if-nez v0, :cond_7

    .line 115
    :cond_6
    :goto_6
    return p1

    :cond_7
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Window;->pwDelta:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Window;->pwDelta:I

    add-int/2addr v1, p1

    invoke-static {p2, v0, v1}, Lcom/isaigu/gymapp/ai/AutoLimits;->clamp(III)I

    move-result p1

    goto :goto_6
.end method
