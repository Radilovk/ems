.class public final Lcom/isaigu/gymapp/train/utils/PartStrength;
.super Ljava/lang/Object;
.source "PartStrength.java"


# static fields
.field static final MAX_RAISE:I = 0x14


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSelected(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 41
    :try_start_2
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 42
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->selection(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[Z

    move-result-object v3

    .line 43
    if-nez v3, :cond_d

    .line 58
    :goto_c
    return v0

    .line 46
    :cond_d
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/train/utils/PartStrength;->yellow(Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z)[Z

    move-result-object v4

    .line 47
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/train/utils/PartStrength;->without([Z[Z)[Z

    move-result-object v3

    .line 48
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PartPick;->touch()V

    .line 49
    invoke-static {v3}, Lcom/isaigu/gymapp/train/utils/PartStrength;->any([Z)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 50
    invoke-static {p0, v2, v3, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->change(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V

    .line 52
    :cond_21
    invoke-static {v4}, Lcom/isaigu/gymapp/train/utils/PartStrength;->any([Z)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 53
    invoke-static {p0, v2, v4, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->changeSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V

    .line 55
    :cond_2a
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/isaigu/gymapp/train/model/TrainItem;->addAllPartValue(IZ)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2f} :catch_31

    move v0, v1

    .line 56
    goto :goto_c

    .line 57
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

    .line 314
    array-length v0, p0

    new-array v6, v0, [I

    move v0, v1

    move v2, v1

    .line 316
    :goto_6
    array-length v3, p0

    if-ge v0, v3, :cond_2c

    .line 317
    aget v3, p0, v0

    invoke-static {v3, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v3

    .line 318
    aget-boolean v4, p2, v0

    if-eqz v4, :cond_1a

    if-eqz p4, :cond_29

    int-to-long v4, p3

    :goto_16
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/train/utils/PartStrength;->clamp(J)I

    move-result v3

    :cond_1a
    aput v3, v6, v0

    .line 319
    aget-boolean v3, p2, v0

    if-eqz v3, :cond_26

    .line 320
    aget v3, v6, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 316
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 318
    :cond_29
    add-int/2addr v3, p3

    int-to-long v4, v3

    goto :goto_16

    .line 324
    :cond_2c
    if-le v2, p1, :cond_55

    if-eqz p5, :cond_55

    .line 325
    const/16 v0, 0x64

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v6, p2, v0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->raisedStrength([I[ZI)I

    move-result v0

    .line 327
    :goto_3a
    array-length v2, p0

    if-ge v1, v2, :cond_54

    .line 328
    aget-boolean v2, p2, v1

    if-nez v2, :cond_43

    if-eq v0, p1, :cond_51

    .line 329
    :cond_43
    aget v2, v6, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v3, p0, v1

    invoke-static {v2, v0, v3}, Lcom/isaigu/gymapp/train/utils/PartStrength;->percentFor(III)I

    move-result v2

    aput v2, p0, v1

    .line 327
    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 332
    :cond_54
    return v0

    :cond_55
    move v0, p1

    goto :goto_3a
.end method

.method public static bar(Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/ProgramDataBean;II)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 285
    if-eqz p1, :cond_14

    iget-object v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v1, :cond_14

    iget-object v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    move-object v1, v0

    .line 286
    :goto_c
    if-eqz v1, :cond_13

    if-ltz p2, :cond_13

    array-length v0, v1

    if-lt p2, v0, :cond_16

    .line 306
    :cond_13
    :goto_13
    return-void

    :cond_14
    move-object v1, v0

    .line 285
    goto :goto_c

    .line 290
    :cond_16
    :try_start_16
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PartPick;->touch()V

    .line 291
    iget-boolean v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v0, :cond_4f

    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/PartPick;->isYellow(I)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 292
    array-length v0, v1

    new-array v0, v0, [Z

    .line 293
    const/4 v2, 0x1

    aput-boolean v2, v0, p2

    .line 294
    invoke-static {p1, v1}, Lcom/isaigu/gymapp/wearable/SecondParts;->effective(Lcom/isaigu/gymapp/bean/ProgramDataBean;[I)[I

    move-result-object v2

    aget v2, v2, p2

    iget v3, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    const/4 v4, 0x0

    invoke-static {v4, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondCap(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v2

    .line 295
    const/4 v3, 0x0

    iget v4, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    invoke-static {p3, v4}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v4

    sub-int v2, v4, v2

    invoke-static {v3, p0, p1, v0, v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->changeSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_4a} :catch_4b

    goto :goto_13

    .line 303
    :catch_4b
    move-exception v0

    .line 304
    aput p3, v1, p2

    goto :goto_13

    .line 298
    :cond_4f
    :try_start_4f
    iget-boolean v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v0, :cond_63

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/wearable/SecondParts;->effective(Lcom/isaigu/gymapp/bean/ProgramDataBean;[I)[I

    move-result-object v0

    .line 299
    :goto_57
    aput p3, v1, p2

    .line 300
    if-eqz v0, :cond_13

    array-length v2, v0

    array-length v3, v1

    if-ne v2, v3, :cond_13

    .line 301
    invoke-static {p1, v1, v0}, Lcom/isaigu/gymapp/wearable/SecondParts;->set(Lcom/isaigu/gymapp/bean/ProgramDataBean;[I[I)V

    goto :goto_13

    .line 298
    :cond_63
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/SecondParts;->get(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_66} :catch_4b

    move-result-object v0

    goto :goto_57
.end method

.method static bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 393
    if-nez p0, :cond_4

    .line 397
    :cond_3
    :goto_3
    return-object v0

    .line 396
    :cond_4
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    .line 397
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    goto :goto_3
.end method

.method static change(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V
    .registers 11

    .prologue
    const/4 v4, 0x0

    .line 255
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 256
    iget-boolean v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v1, :cond_29

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/SecondParts;->effective(Lcom/isaigu/gymapp/bean/ProgramDataBean;[I)[I

    move-result-object v1

    move-object v6, v1

    .line 257
    :goto_e
    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v2

    if-nez v2, :cond_2f

    const/4 v5, 0x1

    :goto_17
    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/train/utils/PartStrength;->apply([II[ZIZZ)I

    move-result v1

    iput v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 258
    if-eqz v6, :cond_28

    array-length v1, v6

    array-length v2, v0

    if-ne v1, v2, :cond_28

    .line 259
    invoke-static {p1, v0, v6}, Lcom/isaigu/gymapp/wearable/SecondParts;->set(Lcom/isaigu/gymapp/bean/ProgramDataBean;[I[I)V

    .line 261
    :cond_28
    return-void

    .line 256
    :cond_29
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/SecondParts;->get(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v1

    move-object v6, v1

    goto :goto_e

    :cond_2f
    move v5, v4

    .line 257
    goto :goto_17
.end method

.method static changeSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V
    .registers 5

    .prologue
    .line 167
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    :goto_6
    invoke-static {p0, v0, p1, p2, p3}, Lcom/isaigu/gymapp/train/utils/PartStrength;->changeSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V

    .line 168
    return-void

    .line 167
    :cond_a
    const/4 v0, 0x0

    goto :goto_6
.end method

.method static changeSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V
    .registers 15

    .prologue
    .line 171
    iget-object v0, p2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v4, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 172
    invoke-static {p2, v4}, Lcom/isaigu/gymapp/wearable/SecondParts;->effective(Lcom/isaigu/gymapp/bean/ProgramDataBean;[I)[I

    move-result-object v5

    .line 173
    invoke-static {p0, p2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondCap(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v6

    .line 174
    iget v0, p2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 175
    array-length v0, v4

    new-array v7, v0, [I

    .line 176
    const/4 v1, 0x0

    .line 177
    const/4 v0, 0x0

    :goto_17
    array-length v2, v4

    if-ge v0, v2, :cond_39

    .line 178
    aget v2, v5, v0

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v2

    .line 179
    aget-boolean v8, p3, v0

    if-eqz v8, :cond_2a

    add-int/2addr v2, p4

    int-to-long v8, v2

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/train/utils/PartStrength;->clamp(J)I

    move-result v2

    :cond_2a
    aput v2, v7, v0

    .line 180
    aget-boolean v2, p3, v0

    if-eqz v2, :cond_36

    .line 181
    aget v2, v7, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 177
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 185
    :cond_39
    if-le v1, v3, :cond_71

    if-le v6, v3, :cond_71

    .line 186
    const/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v7, p3, v0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->raisedStrength([I[ZI)I

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 188
    :goto_4b
    const/4 v1, 0x0

    :goto_4c
    array-length v2, v4

    if-ge v1, v2, :cond_66

    .line 189
    aget-boolean v2, p3, v1

    if-nez v2, :cond_55

    if-eq v0, v3, :cond_63

    .line 190
    :cond_55
    aget v2, v7, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v6, v5, v1

    invoke-static {v2, v0, v6}, Lcom/isaigu/gymapp/train/utils/PartStrength;->percentFor(III)I

    move-result v2

    aput v2, v5, v1

    .line 188
    :cond_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    .line 193
    :cond_66
    if-eq v0, v3, :cond_6d

    .line 194
    iput v0, p2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 195
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->saveProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    .line 197
    :cond_6d
    invoke-static {p2, v4, v5}, Lcom/isaigu/gymapp/wearable/SecondParts;->set(Lcom/isaigu/gymapp/bean/ProgramDataBean;[I[I)V

    .line 198
    return-void

    :cond_71
    move v0, v3

    goto :goto_4b
.end method

.method static clamp(J)I
    .registers 6

    .prologue
    .line 421
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

    .line 357
    move v0, v1

    :goto_2
    array-length v2, p0

    if-ge v0, v2, :cond_1f

    .line 358
    if-eqz p3, :cond_e

    aget-boolean v2, p1, v0

    if-eqz v2, :cond_e

    .line 357
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 361
    :cond_e
    aget v2, p0, v0

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 362
    invoke-static {v2, p2, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->percentFor(III)I

    move-result v3

    invoke-static {v3, p2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v3

    if-eq v3, v2, :cond_b

    .line 366
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

    .line 150
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/SecondParts;->effective(Lcom/isaigu/gymapp/bean/ProgramDataBean;[I)[I

    move-result-object v3

    .line 151
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondStrength(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v4

    move v0, v1

    move v2, v1

    .line 153
    :goto_f
    array-length v1, v3

    if-ge v0, v1, :cond_24

    .line 154
    aget-boolean v1, p2, v0

    if-eqz v1, :cond_25

    .line 155
    aget v1, v3, v0

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 153
    :goto_20
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_f

    .line 158
    :cond_24
    return v2

    :cond_25
    move v1, v2

    goto :goto_20
.end method

.method static percentFor(III)I
    .registers 7

    .prologue
    .line 376
    if-gtz p1, :cond_3

    .line 389
    :goto_2
    return p2

    .line 379
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

    .line 380
    :goto_12
    if-lez v0, :cond_1d

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v1

    if-le v1, p0, :cond_1d

    .line 381
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    .line 383
    :cond_1d
    :goto_1d
    const/16 v1, 0x64

    if-ge v0, v1, :cond_2a

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v1

    if-ge v1, p0, :cond_2a

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 386
    :cond_2a
    if-lez v0, :cond_34

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v1

    if-le v1, p0, :cond_34

    .line 387
    add-int/lit8 v0, v0, -0x1

    :cond_34
    move p2, v0

    .line 389
    goto :goto_2
.end method

.method static raisedStrength([I[ZI)I
    .registers 5

    .prologue
    .line 341
    move v0, p2

    :goto_1
    const/16 v1, 0x64

    if-gt v0, v1, :cond_11

    .line 342
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->exact([I[ZIZ)Z

    move-result v1

    if-eqz v1, :cond_e

    move p2, v0

    .line 353
    :cond_d
    :goto_d
    return p2

    .line 341
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 348
    :cond_11
    add-int/lit8 v0, p2, -0x1

    :goto_13
    if-lez v0, :cond_d

    .line 349
    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->exact([I[ZIZ)Z

    move-result v1

    if-eqz v1, :cond_1e

    move p2, v0

    .line 350
    goto :goto_d

    .line 348
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_13
.end method

.method static real(II)I
    .registers 4

    .prologue
    .line 371
    int-to-float v0, p0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method static saveProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)V
    .registers 2

    .prologue
    .line 269
    if-eqz p0, :cond_5

    .line 270
    :try_start_2
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->save(Lcom/isaigu/gymapp/bean/TrainProgram;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6

    .line 274
    :cond_5
    :goto_5
    return-void

    .line 272
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method static saveProgram(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 2

    .prologue
    .line 264
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    :goto_6
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->saveProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    .line 265
    return-void

    .line 264
    :cond_a
    const/4 v0, 0x0

    goto :goto_6
.end method

.method static secondCap(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I
    .registers 5

    .prologue
    .line 140
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SafeGuard;->free2(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_9

    move-result v0

    if-eqz v0, :cond_a

    .line 141
    const/16 v0, 0x96

    .line 145
    :goto_8
    return v0

    .line 143
    :catch_9
    move-exception v0

    .line 145
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
    .line 117
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SecondParts;->get(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v0

    .line 118
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

    .line 120
    new-instance v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;

    invoke-direct {v1}, Lcom/isaigu/gymapp/bean/ProgramDataBean;-><init>()V

    .line 121
    iget v2, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 122
    new-instance v2, Lcom/isaigu/gymapp/bean/PartStrenthBean;

    invoke-direct {v2}, Lcom/isaigu/gymapp/bean/PartStrenthBean;-><init>()V

    .line 123
    iput-object v0, v2, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 124
    iput-object v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    .line 125
    invoke-static {v1, p1, p2}, Lcom/isaigu/gymapp/train/utils/CommandUtil;->getPartsParamsPduWithStrength(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)[B
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2d} :catch_2f

    move-result-object v0

    .line 129
    :goto_2e
    return-object v0

    .line 127
    :catch_2f
    move-exception v0

    .line 129
    :cond_30
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/train/utils/CommandUtil;->getPartsParamsPduWithStrength(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)[B

    move-result-object v0

    goto :goto_2e
.end method

.method static secondStrength(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I
    .registers 4

    .prologue
    .line 134
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
    .line 95
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 96
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->selection(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[Z

    move-result-object v1

    .line 97
    if-nez v1, :cond_b

    .line 105
    :goto_a
    return p1

    .line 100
    :cond_b
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->yellow(Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z)[Z

    move-result-object v2

    .line 101
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->without([Z[Z)[Z

    move-result-object v1

    .line 102
    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->any([Z)Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->level(Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z)I

    move-result v0

    .line 103
    :goto_1d
    mul-int/lit8 v0, v0, 0x4b

    div-int/lit8 p1, v0, 0x64

    goto :goto_a

    .line 102
    :cond_22
    invoke-static {p0, v0, v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->level2(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z)I
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_25} :catch_27

    move-result v0

    goto :goto_1d

    .line 104
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

    .line 402
    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    if-nez v0, :cond_c

    .line 417
    :cond_b
    :goto_b
    return-object v4

    .line 405
    :cond_c
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    .line 406
    if-eqz v0, :cond_b

    iget-object v3, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v3, :cond_b

    .line 409
    iget-object v3, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v3, v3

    iget-object v5, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    array-length v5, v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 410
    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v0, v0

    new-array v3, v0, [Z

    move v5, v2

    move v6, v2

    .line 412
    :goto_25
    if-ge v5, v7, :cond_4d

    .line 413
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    array-length v0, v0

    if-ge v5, v0, :cond_49

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_49

    move v0, v1

    .line 414
    :goto_37
    iget-object v8, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    aget-boolean v8, v8, v5

    if-eqz v8, :cond_4b

    if-nez v0, :cond_4b

    move v0, v1

    :goto_40
    aput-boolean v0, v3, v5

    .line 415
    aget-boolean v0, v3, v5

    or-int/2addr v6, v0

    .line 412
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_25

    :cond_49
    move v0, v2

    .line 413
    goto :goto_37

    :cond_4b
    move v0, v2

    .line 414
    goto :goto_40

    .line 417
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

    .line 67
    :try_start_2
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 68
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/train/utils/PartStrength;->selection(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[Z

    move-result-object v2

    .line 69
    if-nez v2, :cond_d

    .line 88
    :goto_c
    return v0

    .line 72
    :cond_d
    invoke-static {v3, v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->yellow(Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z)[Z

    move-result-object v4

    .line 73
    invoke-static {v2, v4}, Lcom/isaigu/gymapp/train/utils/PartStrength;->without([Z[Z)[Z

    move-result-object v5

    .line 74
    invoke-static {v5}, Lcom/isaigu/gymapp/train/utils/PartStrength;->any([Z)Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/train/utils/PartStrength;->level(Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z)I

    move-result v2

    .line 75
    :goto_1f
    int-to-long v6, p1

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/train/utils/PartStrength;->clamp(J)I

    move-result v6

    add-int/lit8 v7, v2, 0x14

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 78
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PartPick;->touch()V

    .line 79
    invoke-static {v5}, Lcom/isaigu/gymapp/train/utils/PartStrength;->any([Z)Z

    move-result v7

    if-eqz v7, :cond_38

    .line 80
    sub-int v7, v6, v2

    invoke-static {p0, v3, v5, v7}, Lcom/isaigu/gymapp/train/utils/PartStrength;->change(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V

    .line 82
    :cond_38
    invoke-static {v4}, Lcom/isaigu/gymapp/train/utils/PartStrength;->any([Z)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 83
    sub-int v2, v6, v2

    invoke-static {p0, v3, v4, v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->changeSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V

    .line 85
    :cond_43
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/isaigu/gymapp/train/model/TrainItem;->addAllPartValue(IZ)V

    move v0, v1

    .line 86
    goto :goto_c

    .line 74
    :cond_4a
    invoke-static {p0, v3, v4}, Lcom/isaigu/gymapp/train/utils/PartStrength;->level2(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z)I
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_4d} :catch_4f

    move-result v2

    goto :goto_1f

    .line 87
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
