.class public final Lcom/isaigu/gymapp/train/utils/PartStrength;
.super Ljava/lang/Object;
.source "PartStrength.java"


# static fields
.field static final MAX_RAISE:I = 0x14


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSelected(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 45
    :try_start_2
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 46
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->selection(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[Z

    move-result-object v3

    .line 47
    if-nez v3, :cond_d

    .line 62
    :goto_c
    return v0

    .line 50
    :cond_d
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/train/utils/PartStrength;->yellow(Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z)[Z

    move-result-object v4

    .line 51
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/train/utils/PartStrength;->without([Z[Z)[Z

    move-result-object v3

    .line 52
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PartPick;->touch()V

    .line 53
    invoke-static {v3}, Lcom/isaigu/gymapp/train/utils/PartStrength;->any([Z)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 54
    invoke-static {p0, v2, v3, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->change(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V

    .line 56
    :cond_21
    invoke-static {v4}, Lcom/isaigu/gymapp/train/utils/PartStrength;->any([Z)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 57
    invoke-static {p0, v2, v4, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->changeSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V

    .line 59
    :cond_2a
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/isaigu/gymapp/train/model/TrainItem;->addAllPartValue(IZ)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2f} :catch_31

    move v0, v1

    .line 60
    goto :goto_c

    .line 61
    :catch_31
    move-exception v1

    goto :goto_c
.end method

.method static any([Z)Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 225
    if-eqz p0, :cond_c

    move v0, v1

    .line 226
    :goto_4
    array-length v2, p0

    if-ge v0, v2, :cond_c

    .line 227
    aget-boolean v2, p0, v0

    if-eqz v2, :cond_d

    .line 228
    const/4 v1, 0x1

    .line 232
    :cond_c
    return v1

    .line 226
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method static apply([II[ZIZZ)I
    .registers 13

    .prologue
    const/4 v1, 0x0

    .line 346
    array-length v0, p0

    new-array v6, v0, [I

    move v0, v1

    move v2, v1

    .line 348
    :goto_6
    array-length v3, p0

    if-ge v0, v3, :cond_2c

    .line 349
    aget v3, p0, v0

    invoke-static {v3, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v3

    .line 350
    aget-boolean v4, p2, v0

    if-eqz v4, :cond_1a

    if-eqz p4, :cond_29

    int-to-long v4, p3

    :goto_16
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/train/utils/PartStrength;->clamp(J)I

    move-result v3

    :cond_1a
    aput v3, v6, v0

    .line 351
    aget-boolean v3, p2, v0

    if-eqz v3, :cond_26

    .line 352
    aget v3, v6, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 348
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 350
    :cond_29
    add-int/2addr v3, p3

    int-to-long v4, v3

    goto :goto_16

    .line 356
    :cond_2c
    if-le v2, p1, :cond_55

    if-eqz p5, :cond_55

    .line 357
    const/16 v0, 0x64

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v6, p2, v0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->raisedStrength([I[ZI)I

    move-result v0

    .line 359
    :goto_3a
    array-length v2, p0

    if-ge v1, v2, :cond_54

    .line 360
    aget-boolean v2, p2, v1

    if-nez v2, :cond_43

    if-eq v0, p1, :cond_51

    .line 361
    :cond_43
    aget v2, v6, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v3, p0, v1

    invoke-static {v2, v0, v3}, Lcom/isaigu/gymapp/train/utils/PartStrength;->percentFor(III)I

    move-result v2

    aput v2, p0, v1

    .line 359
    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 364
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

    .line 425
    if-nez p0, :cond_4

    .line 429
    :cond_3
    :goto_3
    return-object v0

    .line 428
    :cond_4
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    .line 429
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    goto :goto_3
.end method

.method static bestPause([I[Z[ID)I
    .registers 20

    .prologue
    .line 320
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v10, v0

    .line 321
    int-to-long v0, v10

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->clamp(J)I

    move-result v1

    .line 322
    const-wide v2, 0x7fffffffffffffffL

    .line 323
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

    .line 324
    const-wide/16 v6, 0x0

    .line 325
    const/4 v4, 0x0

    :goto_23
    array-length v5, p0

    if-ge v4, v5, :cond_40

    .line 326
    aget-boolean v5, p1, v4

    if-nez v5, :cond_3a

    .line 327
    aget v5, p0, v4

    invoke-static {v5, v0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v5

    aget v8, p2, v4

    sub-int/2addr v5, v8

    .line 328
    if-lez v5, :cond_3d

    const-wide/16 v8, 0x2

    int-to-long v12, v5

    mul-long/2addr v8, v12

    :goto_39
    add-long/2addr v6, v8

    .line 325
    :cond_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 328
    :cond_3d
    neg-int v5, v5

    int-to-long v8, v5

    goto :goto_39

    .line 331
    :cond_40
    const-wide/16 v4, 0x10

    mul-long/2addr v4, v6

    sub-int v6, v0, v10

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 332
    cmp-long v6, v4, v2

    if-gez v6, :cond_51

    move-wide v2, v4

    move v1, v0

    .line 323
    :cond_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 337
    :cond_54
    return v1
.end method

.method static bestPauseOwn([I[ID)I
    .registers 18

    .prologue
    .line 300
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v10, v0

    .line 301
    int-to-long v0, v10

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->clamp(J)I

    move-result v1

    .line 302
    const-wide v2, 0x7fffffffffffffffL

    .line 303
    const/4 v0, 0x0

    add-int/lit8 v4, v10, -0x4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_16
    const/16 v4, 0x64

    add-int/lit8 v5, v10, 0x4

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-gt v0, v4, :cond_5a

    .line 304
    const-wide/16 v6, 0x0

    .line 305
    const/4 v4, 0x0

    :goto_23
    array-length v5, p0

    if-ge v4, v5, :cond_46

    .line 306
    aget v5, p1, v4

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    aget v8, p0, v4

    invoke-static {v5, v0, v8}, Lcom/isaigu/gymapp/train/utils/PartStrength;->percentFor(III)I

    move-result v5

    invoke-static {v5, v0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v5

    aget v8, p1, v4

    sub-int/2addr v5, v8

    .line 307
    if-lez v5, :cond_43

    const-wide/16 v8, 0x2

    int-to-long v12, v5

    mul-long/2addr v8, v12

    :goto_3f
    add-long/2addr v6, v8

    .line 305
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 307
    :cond_43
    neg-int v5, v5

    int-to-long v8, v5

    goto :goto_3f

    .line 309
    :cond_46
    const-wide/16 v4, 0x10

    mul-long/2addr v4, v6

    sub-int v6, v0, v10

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 310
    cmp-long v6, v4, v2

    if-gez v6, :cond_57

    move-wide v2, v4

    move v1, v0

    .line 303
    :cond_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 315
    :cond_5a
    return v1
.end method

.method static change(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V
    .registers 16

    .prologue
    const/4 v4, 0x0

    .line 254
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 255
    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 256
    iget v7, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 257
    iget-boolean v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v2, :cond_35

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/SecondParts;->get(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v6

    .line 258
    :goto_11
    if-eqz v6, :cond_37

    array-length v2, v6

    array-length v3, v0

    if-ne v2, v3, :cond_37

    move-object v2, v6

    .line 259
    :goto_18
    array-length v3, v0

    new-array v8, v3, [I

    .line 260
    array-length v3, v0

    new-array v9, v3, [I

    move v3, v4

    .line 261
    :goto_1f
    array-length v5, v0

    if-ge v3, v5, :cond_39

    .line 262
    aget v5, v2, v3

    invoke-static {v5, v7}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v5

    aput v5, v8, v3

    .line 263
    aget v5, v0, v3

    invoke-static {v5, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v5

    aput v5, v9, v3

    .line 261
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 257
    :cond_35
    const/4 v6, 0x0

    goto :goto_11

    :cond_37
    move-object v2, v0

    .line 258
    goto :goto_18

    .line 265
    :cond_39
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v2

    if-nez v2, :cond_71

    const/4 v5, 0x1

    :goto_40
    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/train/utils/PartStrength;->apply([II[ZIZZ)I

    move-result v2

    iput v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 266
    if-eqz v6, :cond_a4

    array-length v2, v6

    array-length v3, v0

    if-ne v2, v3, :cond_a4

    .line 267
    array-length v2, v0

    new-array v5, v2, [I

    move v2, v4

    .line 268
    :goto_52
    array-length v3, v0

    if-ge v2, v3, :cond_76

    .line 269
    aget-boolean v3, p2, v2

    if-eqz v3, :cond_73

    aget v3, v8, v2

    aget v10, v0, v2

    iget v11, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    invoke-static {v10, v11}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v10

    add-int/2addr v3, v10

    aget v10, v9, v2

    sub-int/2addr v3, v10

    int-to-long v10, v3

    invoke-static {v10, v11}, Lcom/isaigu/gymapp/train/utils/PartStrength;->clamp(J)I

    move-result v3

    :goto_6c
    aput v3, v5, v2

    .line 268
    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    :cond_71
    move v5, v4

    .line 265
    goto :goto_40

    .line 269
    :cond_73
    aget v3, v8, v2

    goto :goto_6c

    .line 272
    :cond_76
    iget v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    if-eq v2, v1, :cond_bf

    if-lez v1, :cond_bf

    .line 273
    int-to-double v2, v7

    iget v7, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-double v8, v7

    mul-double/2addr v2, v8

    int-to-double v8, v1

    div-double/2addr v2, v8

    invoke-static {v6, v5, v2, v3}, Lcom/isaigu/gymapp/train/utils/PartStrength;->bestPauseOwn([I[ID)I

    move-result v1

    .line 274
    iput v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 275
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->saveProgram(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 277
    :goto_8c
    array-length v2, v0

    if-ge v4, v2, :cond_a0

    .line 278
    aget v2, v5, v4

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v3, v6, v4

    invoke-static {v2, v1, v3}, Lcom/isaigu/gymapp/train/utils/PartStrength;->percentFor(III)I

    move-result v2

    aput v2, v6, v4

    .line 277
    add-int/lit8 v4, v4, 0x1

    goto :goto_8c

    .line 280
    :cond_a0
    invoke-static {p1, v0, v6}, Lcom/isaigu/gymapp/wearable/SecondParts;->set(Lcom/isaigu/gymapp/bean/ProgramDataBean;[I[I)V

    .line 289
    :cond_a3
    :goto_a3
    return-void

    .line 283
    :cond_a4
    iget-boolean v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v2, :cond_a3

    iget v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    if-eq v2, v1, :cond_a3

    if-lez v1, :cond_a3

    .line 286
    int-to-double v2, v7

    iget v4, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    int-to-double v4, v1

    div-double/2addr v2, v4

    invoke-static {v0, p2, v8, v2, v3}, Lcom/isaigu/gymapp/train/utils/PartStrength;->bestPause([I[Z[ID)I

    move-result v0

    iput v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 287
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->saveProgram(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    goto :goto_a3

    :cond_bf
    move v1, v7

    goto :goto_8c
.end method

.method static changeSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V
    .registers 16

    .prologue
    const/4 v1, 0x0

    .line 171
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v5, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 172
    invoke-static {p1, v5}, Lcom/isaigu/gymapp/wearable/SecondParts;->effective(Lcom/isaigu/gymapp/bean/ProgramDataBean;[I)[I

    move-result-object v6

    .line 173
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondCap(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v7

    .line 174
    iget v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 175
    array-length v0, v5

    new-array v8, v0, [I

    move v0, v1

    move v2, v1

    .line 177
    :goto_18
    array-length v3, v5

    if-ge v0, v3, :cond_3a

    .line 178
    aget v3, v6, v0

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v3

    .line 179
    aget-boolean v9, p2, v0

    if-eqz v9, :cond_2b

    add-int/2addr v3, p3

    int-to-long v10, v3

    invoke-static {v10, v11}, Lcom/isaigu/gymapp/train/utils/PartStrength;->clamp(J)I

    move-result v3

    :cond_2b
    aput v3, v8, v0

    .line 180
    aget-boolean v3, p2, v0

    if-eqz v3, :cond_37

    .line 181
    aget v3, v8, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 177
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 185
    :cond_3a
    if-le v2, v4, :cond_71

    if-le v7, v4, :cond_71

    .line 186
    const/16 v0, 0x64

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v8, p2, v0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->raisedStrength([I[ZI)I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 188
    :goto_4c
    array-length v2, v5

    if-ge v1, v2, :cond_66

    .line 189
    aget-boolean v2, p2, v1

    if-nez v2, :cond_55

    if-eq v0, v4, :cond_63

    .line 190
    :cond_55
    aget v2, v8, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v3, v6, v1

    invoke-static {v2, v0, v3}, Lcom/isaigu/gymapp/train/utils/PartStrength;->percentFor(III)I

    move-result v2

    aput v2, v6, v1

    .line 188
    :cond_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    .line 193
    :cond_66
    if-eq v0, v4, :cond_6d

    .line 194
    iput v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 195
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->saveProgram(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 197
    :cond_6d
    invoke-static {p1, v5, v6}, Lcom/isaigu/gymapp/wearable/SecondParts;->set(Lcom/isaigu/gymapp/bean/ProgramDataBean;[I[I)V

    .line 198
    return-void

    :cond_71
    move v0, v4

    goto :goto_4c
.end method

.method static clamp(J)I
    .registers 6

    .prologue
    .line 453
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

    .line 389
    move v0, v1

    :goto_2
    array-length v2, p0

    if-ge v0, v2, :cond_1f

    .line 390
    if-eqz p3, :cond_e

    aget-boolean v2, p1, v0

    if-eqz v2, :cond_e

    .line 389
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 393
    :cond_e
    aget v2, p0, v0

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 394
    invoke-static {v2, p2, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->percentFor(III)I

    move-result v3

    invoke-static {v3, p2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v3

    if-eq v3, v2, :cond_b

    .line 398
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

    .line 239
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v3, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    move v0, v1

    move v2, v1

    .line 241
    :goto_7
    array-length v1, v3

    if-ge v0, v1, :cond_1e

    .line 242
    aget-boolean v1, p1, v0

    if-eqz v1, :cond_1f

    .line 243
    aget v1, v3, v0

    iget v4, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 241
    :goto_1a
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_7

    .line 246
    :cond_1e
    return v2

    :cond_1f
    move v1, v2

    goto :goto_1a
.end method

.method static level2(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z)I
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 154
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/SecondParts;->effective(Lcom/isaigu/gymapp/bean/ProgramDataBean;[I)[I

    move-result-object v3

    .line 155
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondStrength(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v4

    move v0, v1

    move v2, v1

    .line 157
    :goto_f
    array-length v1, v3

    if-ge v0, v1, :cond_24

    .line 158
    aget-boolean v1, p2, v0

    if-eqz v1, :cond_25

    .line 159
    aget v1, v3, v0

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 157
    :goto_20
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_f

    .line 162
    :cond_24
    return v2

    :cond_25
    move v1, v2

    goto :goto_20
.end method

.method static percentFor(III)I
    .registers 7

    .prologue
    .line 408
    if-gtz p1, :cond_3

    .line 421
    :goto_2
    return p2

    .line 411
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

    .line 412
    :goto_12
    if-lez v0, :cond_1d

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v1

    if-le v1, p0, :cond_1d

    .line 413
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    .line 415
    :cond_1d
    :goto_1d
    const/16 v1, 0x64

    if-ge v0, v1, :cond_2a

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v1

    if-ge v1, p0, :cond_2a

    .line 416
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 418
    :cond_2a
    if-lez v0, :cond_34

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v1

    if-le v1, p0, :cond_34

    .line 419
    add-int/lit8 v0, v0, -0x1

    :cond_34
    move p2, v0

    .line 421
    goto :goto_2
.end method

.method static raisedStrength([I[ZI)I
    .registers 5

    .prologue
    .line 373
    move v0, p2

    :goto_1
    const/16 v1, 0x64

    if-gt v0, v1, :cond_11

    .line 374
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->exact([I[ZIZ)Z

    move-result v1

    if-eqz v1, :cond_e

    move p2, v0

    .line 385
    :cond_d
    :goto_d
    return p2

    .line 373
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 380
    :cond_11
    add-int/lit8 v0, p2, -0x1

    :goto_13
    if-lez v0, :cond_d

    .line 381
    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->exact([I[ZIZ)Z

    move-result v1

    if-eqz v1, :cond_1e

    move p2, v0

    .line 382
    goto :goto_d

    .line 380
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_13
.end method

.method static real(II)I
    .registers 4

    .prologue
    .line 403
    int-to-float v0, p0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method static saveProgram(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 2

    .prologue
    .line 293
    :try_start_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->save(Lcom/isaigu/gymapp/bean/TrainProgram;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    .line 296
    :goto_7
    return-void

    .line 294
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method static secondCap(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I
    .registers 5

    .prologue
    .line 144
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SafeGuard;->free2(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_9

    move-result v0

    if-eqz v0, :cond_a

    .line 145
    const/16 v0, 0x96

    .line 149
    :goto_8
    return v0

    .line 147
    :catch_9
    move-exception v0

    .line 149
    :cond_a
    const/4 v0, 0x0

    const/16 v1, 0x64

    iget v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_8
.end method

.method public static secondPdu(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)[B
    .registers 6

    .prologue
    .line 121
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SecondParts;->get(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v0

    .line 122
    if-eqz v0, :cond_30

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v1, :cond_30

    array-length v1, v0

    iget-object v2, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v2, v2

    if-ne v1, v2, :cond_30

    .line 124
    new-instance v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;

    invoke-direct {v1}, Lcom/isaigu/gymapp/bean/ProgramDataBean;-><init>()V

    .line 125
    iget v2, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 126
    new-instance v2, Lcom/isaigu/gymapp/bean/PartStrenthBean;

    invoke-direct {v2}, Lcom/isaigu/gymapp/bean/PartStrenthBean;-><init>()V

    .line 127
    iput-object v0, v2, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 128
    iput-object v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    .line 129
    invoke-static {v1, p1, p2}, Lcom/isaigu/gymapp/train/utils/CommandUtil;->getPartsParamsPduWithStrength(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)[B
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2d} :catch_2f

    move-result-object v0

    .line 133
    :goto_2e
    return-object v0

    .line 131
    :catch_2f
    move-exception v0

    .line 133
    :cond_30
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/train/utils/CommandUtil;->getPartsParamsPduWithStrength(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)[B

    move-result-object v0

    goto :goto_2e
.end method

.method static secondStrength(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I
    .registers 4

    .prologue
    .line 138
    iget v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondCap(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static seekValue(Lcom/isaigu/gymapp/train/model/TrainItem;I)I
    .registers 6

    .prologue
    .line 99
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 100
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->selection(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[Z

    move-result-object v1

    .line 101
    if-nez v1, :cond_b

    .line 109
    :goto_a
    return p1

    .line 104
    :cond_b
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->yellow(Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z)[Z

    move-result-object v2

    .line 105
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->without([Z[Z)[Z

    move-result-object v1

    .line 106
    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->any([Z)Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->level(Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z)I

    move-result v0

    .line 107
    :goto_1d
    mul-int/lit8 v0, v0, 0x4b

    div-int/lit8 p1, v0, 0x64

    goto :goto_a

    .line 106
    :cond_22
    invoke-static {p0, v0, v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->level2(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z)I
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_25} :catch_27

    move-result v0

    goto :goto_1d

    .line 108
    :catch_27
    move-exception v0

    goto :goto_a
.end method

.method static selection(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[Z
    .registers 11

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 434
    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    if-nez v0, :cond_c

    .line 449
    :cond_b
    :goto_b
    return-object v4

    .line 437
    :cond_c
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    .line 438
    if-eqz v0, :cond_b

    iget-object v3, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v3, :cond_b

    .line 441
    iget-object v3, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v3, v3

    iget-object v5, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    array-length v5, v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 442
    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v0, v0

    new-array v3, v0, [Z

    move v5, v2

    move v6, v2

    .line 444
    :goto_25
    if-ge v5, v7, :cond_4d

    .line 445
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    array-length v0, v0

    if-ge v5, v0, :cond_49

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_49

    move v0, v1

    .line 446
    :goto_37
    iget-object v8, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    aget-boolean v8, v8, v5

    if-eqz v8, :cond_4b

    if-nez v0, :cond_4b

    move v0, v1

    :goto_40
    aput-boolean v0, v3, v5

    .line 447
    aget-boolean v0, v3, v5

    or-int/2addr v6, v0

    .line 444
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_25

    :cond_49
    move v0, v2

    .line 445
    goto :goto_37

    :cond_4b
    move v0, v2

    .line 446
    goto :goto_40

    .line 449
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

    .line 71
    :try_start_2
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 72
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/train/utils/PartStrength;->selection(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[Z

    move-result-object v2

    .line 73
    if-nez v2, :cond_d

    .line 92
    :goto_c
    return v0

    .line 76
    :cond_d
    invoke-static {v3, v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->yellow(Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z)[Z

    move-result-object v4

    .line 77
    invoke-static {v2, v4}, Lcom/isaigu/gymapp/train/utils/PartStrength;->without([Z[Z)[Z

    move-result-object v5

    .line 78
    invoke-static {v5}, Lcom/isaigu/gymapp/train/utils/PartStrength;->any([Z)Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/train/utils/PartStrength;->level(Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z)I

    move-result v2

    .line 79
    :goto_1f
    int-to-long v6, p1

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/train/utils/PartStrength;->clamp(J)I

    move-result v6

    add-int/lit8 v7, v2, 0x14

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 82
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PartPick;->touch()V

    .line 83
    invoke-static {v5}, Lcom/isaigu/gymapp/train/utils/PartStrength;->any([Z)Z

    move-result v7

    if-eqz v7, :cond_38

    .line 84
    sub-int v7, v6, v2

    invoke-static {p0, v3, v5, v7}, Lcom/isaigu/gymapp/train/utils/PartStrength;->change(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V

    .line 86
    :cond_38
    invoke-static {v4}, Lcom/isaigu/gymapp/train/utils/PartStrength;->any([Z)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 87
    sub-int v2, v6, v2

    invoke-static {p0, v3, v4, v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->changeSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V

    .line 89
    :cond_43
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/isaigu/gymapp/train/model/TrainItem;->addAllPartValue(IZ)V

    move v0, v1

    .line 90
    goto :goto_c

    .line 78
    :cond_4a
    invoke-static {p0, v3, v4}, Lcom/isaigu/gymapp/train/utils/PartStrength;->level2(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z)I
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_4d} :catch_4f

    move-result v2

    goto :goto_1f

    .line 91
    :catch_4f
    move-exception v1

    goto :goto_c
.end method

.method static without([Z[Z)[Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 215
    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    .line 216
    if-eqz p1, :cond_1d

    move v1, v2

    .line 217
    :goto_a
    array-length v3, v0

    if-ge v1, v3, :cond_1d

    .line 218
    aget-boolean v3, v0, v1

    if-eqz v3, :cond_1b

    aget-boolean v3, p1, v1

    if-nez v3, :cond_1b

    const/4 v3, 0x1

    :goto_16
    aput-boolean v3, v0, v1

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1b
    move v3, v2

    .line 218
    goto :goto_16

    .line 221
    :cond_1d
    return-object v0
.end method

.method static yellow(Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z)[Z
    .registers 8

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 202
    if-eqz p0, :cond_8

    iget-boolean v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-nez v0, :cond_a

    :cond_8
    move-object v0, v5

    .line 211
    :goto_9
    return-object v0

    .line 205
    :cond_a
    array-length v0, p1

    new-array v4, v0, [Z

    move v0, v1

    move v2, v1

    .line 207
    :goto_f
    array-length v3, p1

    if-ge v0, v3, :cond_27

    .line 208
    aget-boolean v3, p1, v0

    if-eqz v3, :cond_25

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/PartPick;->isYellow(I)Z

    move-result v3

    if-eqz v3, :cond_25

    const/4 v3, 0x1

    :goto_1d
    aput-boolean v3, v4, v0

    .line 209
    aget-boolean v3, v4, v0

    or-int/2addr v2, v3

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_25
    move v3, v1

    .line 208
    goto :goto_1d

    .line 211
    :cond_27
    if-eqz v2, :cond_2b

    move-object v0, v4

    goto :goto_9

    :cond_2b
    move-object v0, v5

    goto :goto_9
.end method
