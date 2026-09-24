.class public final Lcom/isaigu/gymapp/train/utils/PartStrength;
.super Ljava/lang/Object;
.source "PartStrength.java"


# static fields
.field static final MAX_RAISE:I = 0x14


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSelected(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 37
    :try_start_2
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 38
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->selection(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[Z

    move-result-object v3

    .line 39
    if-nez v3, :cond_d

    .line 46
    :goto_c
    return v0

    .line 42
    :cond_d
    invoke-static {p0, v2, v3, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->change(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V

    .line 43
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/isaigu/gymapp/train/model/TrainItem;->addAllPartValue(IZ)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_15} :catch_17

    move v0, v1

    .line 44
    goto :goto_c

    .line 45
    :catch_17
    move-exception v1

    goto :goto_c
.end method

.method static apply([II[ZIZZ)I
    .registers 13

    .prologue
    const/4 v1, 0x0

    .line 149
    array-length v0, p0

    new-array v6, v0, [I

    move v0, v1

    move v2, v1

    .line 151
    :goto_6
    array-length v3, p0

    if-ge v0, v3, :cond_2c

    .line 152
    aget v3, p0, v0

    invoke-static {v3, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v3

    .line 153
    aget-boolean v4, p2, v0

    if-eqz v4, :cond_1a

    if-eqz p4, :cond_29

    int-to-long v4, p3

    :goto_16
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/train/utils/PartStrength;->clamp(J)I

    move-result v3

    :cond_1a
    aput v3, v6, v0

    .line 154
    aget-boolean v3, p2, v0

    if-eqz v3, :cond_26

    .line 155
    aget v3, v6, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 151
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 153
    :cond_29
    add-int/2addr v3, p3

    int-to-long v4, v3

    goto :goto_16

    .line 159
    :cond_2c
    if-le v2, p1, :cond_55

    if-eqz p5, :cond_55

    .line 160
    const/16 v0, 0x64

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v6, p2, v0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->raisedStrength([I[ZI)I

    move-result v0

    .line 162
    :goto_3a
    array-length v2, p0

    if-ge v1, v2, :cond_54

    .line 163
    aget-boolean v2, p2, v1

    if-nez v2, :cond_43

    if-eq v0, p1, :cond_51

    .line 164
    :cond_43
    aget v2, v6, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v3, p0, v1

    invoke-static {v2, v0, v3}, Lcom/isaigu/gymapp/train/utils/PartStrength;->percentFor(III)I

    move-result v2

    aput v2, p0, v1

    .line 162
    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 167
    :cond_54
    return v0

    :cond_55
    move v0, p1

    goto :goto_3a
.end method

.method static bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 228
    if-nez p0, :cond_4

    .line 232
    :cond_3
    :goto_3
    return-object v0

    .line 231
    :cond_4
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    .line 232
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    goto :goto_3
.end method

.method static bestPause([I[Z[ID)I
    .registers 20

    .prologue
    .line 123
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v10, v0

    .line 124
    int-to-long v0, v10

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->clamp(J)I

    move-result v1

    .line 125
    const-wide v2, 0x7fffffffffffffffL

    .line 126
    const/4 v0, 0x0

    add-int/lit8 v4, v10, -0x4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_16
    const/16 v4, 0x64

    add-int/lit8 v5, v10, 0x4

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-gt v0, v4, :cond_54

    .line 127
    const-wide/16 v6, 0x0

    .line 128
    const/4 v4, 0x0

    :goto_23
    array-length v5, p0

    if-ge v4, v5, :cond_40

    .line 129
    aget-boolean v5, p1, v4

    if-nez v5, :cond_3a

    .line 130
    aget v5, p0, v4

    invoke-static {v5, v0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v5

    aget v8, p2, v4

    sub-int/2addr v5, v8

    .line 131
    if-lez v5, :cond_3d

    const-wide/16 v8, 0x2

    int-to-long v12, v5

    mul-long/2addr v8, v12

    :goto_39
    add-long/2addr v6, v8

    .line 128
    :cond_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 131
    :cond_3d
    neg-int v5, v5

    int-to-long v8, v5

    goto :goto_39

    .line 134
    :cond_40
    const-wide/16 v4, 0x10

    mul-long/2addr v4, v6

    sub-int v6, v0, v10

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 135
    cmp-long v6, v4, v2

    if-gez v6, :cond_51

    move-wide v2, v4

    move v1, v0

    .line 126
    :cond_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 140
    :cond_54
    return v1
.end method

.method static change(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V
    .registers 12

    .prologue
    const/4 v4, 0x0

    .line 102
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 103
    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 104
    iget v6, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 105
    array-length v2, v0

    new-array v7, v2, [I

    move v2, v4

    .line 106
    :goto_d
    array-length v3, v0

    if-ge v2, v3, :cond_1b

    .line 107
    aget v3, v0, v2

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v3

    aput v3, v7, v2

    .line 106
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 109
    :cond_1b
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v2

    if-nez v2, :cond_49

    const/4 v5, 0x1

    :goto_22
    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/train/utils/PartStrength;->apply([II[ZIZZ)I

    move-result v2

    iput v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 110
    iget-boolean v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v2, :cond_48

    iget v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    if-eq v2, v1, :cond_48

    if-lez v1, :cond_48

    .line 113
    int-to-double v2, v6

    iget v4, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    int-to-double v4, v1

    div-double/2addr v2, v4

    invoke-static {v0, p2, v7, v2, v3}, Lcom/isaigu/gymapp/train/utils/PartStrength;->bestPause([I[Z[ID)I

    move-result v0

    iput v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 115
    :try_start_41
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->save(Lcom/isaigu/gymapp/bean/TrainProgram;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_48} :catch_4b

    .line 119
    :cond_48
    :goto_48
    return-void

    :cond_49
    move v5, v4

    .line 109
    goto :goto_22

    .line 116
    :catch_4b
    move-exception v0

    goto :goto_48
.end method

.method static clamp(J)I
    .registers 6

    .prologue
    .line 256
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x64

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method static exact([I[ZIZ)Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 192
    move v0, v1

    :goto_2
    array-length v2, p0

    if-ge v0, v2, :cond_1f

    .line 193
    if-eqz p3, :cond_e

    aget-boolean v2, p1, v0

    if-eqz v2, :cond_e

    .line 192
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 196
    :cond_e
    aget v2, p0, v0

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 197
    invoke-static {v2, p2, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->percentFor(III)I

    move-result v3

    invoke-static {v3, p2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v3

    if-eq v3, v2, :cond_b

    .line 201
    :goto_1e
    return v1

    :cond_1f
    const/4 v1, 0x1

    goto :goto_1e
.end method

.method static level(Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z)I
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 90
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v3, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    move v0, v1

    move v2, v1

    .line 92
    :goto_7
    array-length v1, v3

    if-ge v0, v1, :cond_1e

    .line 93
    aget-boolean v1, p1, v0

    if-eqz v1, :cond_1f

    .line 94
    aget v1, v3, v0

    iget v4, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 92
    :goto_1a
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_7

    .line 97
    :cond_1e
    return v2

    :cond_1f
    move v1, v2

    goto :goto_1a
.end method

.method static percentFor(III)I
    .registers 7

    .prologue
    .line 211
    if-gtz p1, :cond_3

    .line 224
    :goto_2
    return p2

    .line 214
    :cond_3
    int-to-double v0, p0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    int-to-double v2, p1

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-long v0, v0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->clamp(J)I

    move-result v0

    .line 215
    :goto_12
    if-lez v0, :cond_1d

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v1

    if-le v1, p0, :cond_1d

    .line 216
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    .line 218
    :cond_1d
    :goto_1d
    const/16 v1, 0x64

    if-ge v0, v1, :cond_2a

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v1

    if-ge v1, p0, :cond_2a

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 221
    :cond_2a
    if-lez v0, :cond_34

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v1

    if-le v1, p0, :cond_34

    .line 222
    add-int/lit8 v0, v0, -0x1

    :cond_34
    move p2, v0

    .line 224
    goto :goto_2
.end method

.method static raisedStrength([I[ZI)I
    .registers 5

    .prologue
    .line 176
    move v0, p2

    :goto_1
    const/16 v1, 0x64

    if-gt v0, v1, :cond_11

    .line 177
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->exact([I[ZIZ)Z

    move-result v1

    if-eqz v1, :cond_e

    move p2, v0

    .line 188
    :cond_d
    :goto_d
    return p2

    .line 176
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 183
    :cond_11
    add-int/lit8 v0, p2, -0x1

    :goto_13
    if-lez v0, :cond_d

    .line 184
    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->exact([I[ZIZ)Z

    move-result v1

    if-eqz v1, :cond_1e

    move p2, v0

    .line 185
    goto :goto_d

    .line 183
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_13
.end method

.method static real(II)I
    .registers 4

    .prologue
    .line 206
    int-to-float v0, p0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static seekValue(Lcom/isaigu/gymapp/train/model/TrainItem;I)I
    .registers 4

    .prologue
    .line 75
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 76
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->selection(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[Z

    move-result-object v1

    .line 77
    if-nez v1, :cond_b

    .line 82
    :goto_a
    return p1

    .line 80
    :cond_b
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->level(Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4b

    div-int/lit8 p1, v0, 0x64
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_a

    .line 81
    :catch_14
    move-exception v0

    goto :goto_a
.end method

.method static selection(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[Z
    .registers 11

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 237
    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    if-nez v0, :cond_c

    .line 252
    :cond_b
    :goto_b
    return-object v4

    .line 240
    :cond_c
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    .line 241
    if-eqz v0, :cond_b

    iget-object v3, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v3, :cond_b

    .line 244
    iget-object v3, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v3, v3

    iget-object v5, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    array-length v5, v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 245
    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v0, v0

    new-array v3, v0, [Z

    move v5, v2

    move v6, v2

    .line 247
    :goto_25
    if-ge v5, v7, :cond_4d

    .line 248
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    array-length v0, v0

    if-ge v5, v0, :cond_49

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_49

    move v0, v1

    .line 249
    :goto_37
    iget-object v8, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    aget-boolean v8, v8, v5

    if-eqz v8, :cond_4b

    if-nez v0, :cond_4b

    move v0, v1

    :goto_40
    aput-boolean v0, v3, v5

    .line 250
    aget-boolean v0, v3, v5

    or-int/2addr v6, v0

    .line 247
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_25

    :cond_49
    move v0, v2

    .line 248
    goto :goto_37

    :cond_4b
    move v0, v2

    .line 249
    goto :goto_40

    .line 252
    :cond_4d
    if-eqz v6, :cond_52

    move-object v0, v3

    :goto_50
    move-object v4, v0

    goto :goto_b

    :cond_52
    move-object v0, v4

    goto :goto_50
.end method

.method public static setSelected(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 55
    :try_start_2
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 56
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->selection(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[Z

    move-result-object v3

    .line 57
    if-nez v3, :cond_d

    .line 68
    :goto_c
    return v0

    .line 60
    :cond_d
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/train/utils/PartStrength;->level(Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z)I

    move-result v4

    .line 61
    int-to-long v6, p1

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/train/utils/PartStrength;->clamp(J)I

    move-result v5

    add-int/lit8 v6, v4, 0x14

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 64
    sub-int v4, v5, v4

    invoke-static {p0, v2, v3, v4}, Lcom/isaigu/gymapp/train/utils/PartStrength;->change(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V

    .line 65
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/isaigu/gymapp/train/model/TrainItem;->addAllPartValue(IZ)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_26} :catch_28

    move v0, v1

    .line 66
    goto :goto_c

    .line 67
    :catch_28
    move-exception v1

    goto :goto_c
.end method
