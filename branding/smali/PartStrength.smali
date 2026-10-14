.class public final Lcom/isaigu/gymapp/train/utils/PartStrength;
.super Ljava/lang/Object;
.source "PartStrength.java"


# static fields
.field static final MAX_RAISE:I = 0x14


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSelected(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z
    .registers 11

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 46
    :try_start_2
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 47
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->selection(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[Z

    move-result-object v0

    .line 48
    if-nez v0, :cond_e

    move v0, v6

    .line 67
    :goto_d
    return v0

    .line 51
    :cond_e
    invoke-static {p0, v2, v0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->yellow(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z)[Z

    move-result-object v8

    .line 52
    invoke-static {v0, v8}, Lcom/isaigu/gymapp/train/utils/PartStrength;->without([Z[Z)[Z

    move-result-object v3

    .line 53
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PartPick;->touch()V

    .line 54
    invoke-static {v3}, Lcom/isaigu/gymapp/train/utils/PartStrength;->any([Z)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 55
    invoke-static {v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->mainReal(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v4

    iget-boolean v0, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v0, :cond_48

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondReal(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v5

    .line 56
    :goto_2b
    invoke-static {p0, v2, v3, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->change(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V

    .line 57
    if-eqz v5, :cond_38

    .line 58
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/train/utils/PartStrength;->follow(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z[I[I)V

    .line 61
    :cond_38
    invoke-static {v8}, Lcom/isaigu/gymapp/train/utils/PartStrength;->any([Z)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 62
    invoke-static {p0, v2, v8, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->changeSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V

    .line 64
    :cond_41
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addAllPartValue(IZ)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_46} :catch_4a

    move v0, v7

    .line 65
    goto :goto_d

    .line 55
    :cond_48
    const/4 v5, 0x0

    goto :goto_2b

    .line 66
    :catch_4a
    move-exception v0

    move v0, v6

    .line 67
    goto :goto_d
.end method

.method static any([Z)Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 320
    if-eqz p0, :cond_c

    move v0, v1

    .line 321
    :goto_4
    array-length v2, p0

    if-ge v0, v2, :cond_c

    .line 322
    aget-boolean v2, p0, v0

    if-eqz v2, :cond_d

    .line 323
    const/4 v1, 0x1

    .line 327
    :cond_c
    return v1

    .line 321
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method static apply([II[ZIZZ)I
    .registers 13

    .prologue
    const/4 v1, 0x0

    .line 500
    array-length v0, p0

    new-array v6, v0, [I

    move v0, v1

    move v2, v1

    .line 502
    :goto_6
    array-length v3, p0

    if-ge v0, v3, :cond_2c

    .line 503
    aget v3, p0, v0

    invoke-static {v3, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v3

    .line 504
    aget-boolean v4, p2, v0

    if-eqz v4, :cond_1a

    if-eqz p4, :cond_29

    int-to-long v4, p3

    :goto_16
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/train/utils/PartStrength;->clamp(J)I

    move-result v3

    :cond_1a
    aput v3, v6, v0

    .line 505
    aget-boolean v3, p2, v0

    if-eqz v3, :cond_26

    .line 506
    aget v3, v6, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 502
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 504
    :cond_29
    add-int/2addr v3, p3

    int-to-long v4, v3

    goto :goto_16

    .line 510
    :cond_2c
    if-le v2, p1, :cond_55

    if-eqz p5, :cond_55

    .line 511
    const/16 v0, 0x64

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v6, p2, v0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->raisedStrength([I[ZI)I

    move-result v0

    .line 513
    :goto_3a
    array-length v2, p0

    if-ge v1, v2, :cond_54

    .line 514
    aget-boolean v2, p2, v1

    if-nez v2, :cond_43

    if-eq v0, p1, :cond_51

    .line 515
    :cond_43
    aget v2, v6, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v3, p0, v1

    invoke-static {v2, v0, v3}, Lcom/isaigu/gymapp/train/utils/PartStrength;->percentFor(III)I

    move-result v2

    aput v2, p0, v1

    .line 513
    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 518
    :cond_54
    return v0

    :cond_55
    move v0, p1

    goto :goto_3a
.end method

.method public static bar(Landroid/view/View;Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/ProgramDataBean;II)V
    .registers 15

    .prologue
    const/4 v5, 0x0

    .line 444
    if-eqz p2, :cond_14

    iget-object v0, p2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v0, :cond_14

    iget-object v0, p2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    move-object v6, v0

    .line 445
    :goto_c
    if-eqz v6, :cond_13

    if-ltz p3, :cond_13

    array-length v0, v6

    if-lt p3, v0, :cond_16

    .line 492
    :cond_13
    :goto_13
    return-void

    :cond_14
    move-object v6, v5

    .line 444
    goto :goto_c

    .line 449
    :cond_16
    :try_start_16
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartLook;->lockedSecond(Landroid/view/View;)Z

    move-result v0

    .line 450
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartLook;->release(Landroid/view/View;)V

    .line 451
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PartPick;->touch()V

    .line 452
    array-length v1, v6

    new-array v3, v1, [Z

    .line 453
    const/4 v1, 0x1

    aput-boolean v1, v3, p3

    .line 454
    iget-boolean v1, p2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v1, :cond_59

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->active(Lcom/isaigu/gymapp/bean/TrainProgram;)Z

    move-result v1

    if-nez v1, :cond_36

    invoke-static {p3}, Lcom/isaigu/gymapp/wearable/PartPick;->tappedYellow(I)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 455
    :cond_36
    iget v0, p2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    const/4 v1, 0x0

    invoke-static {v1, p2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondCap(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 456
    invoke-static {p2, v6}, Lcom/isaigu/gymapp/wearable/SecondParts;->effective(Lcom/isaigu/gymapp/bean/ProgramDataBean;[I)[I

    move-result-object v1

    aget v1, v1, p3

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v1

    .line 457
    const/4 v2, 0x0

    invoke-static {p4, v0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {v2, p1, p2, v3, v0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->changeSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_54} :catch_55

    goto :goto_13

    .line 489
    :catch_55
    move-exception v0

    .line 490
    aput p4, v6, p3

    goto :goto_13

    .line 460
    :cond_59
    :try_start_59
    iget-boolean v1, p2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v1, :cond_c0

    if-eqz v0, :cond_c0

    .line 462
    iget v0, p2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    const/4 v1, 0x0

    invoke-static {v1, p2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondCap(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 463
    const/4 v1, 0x0

    invoke-static {v1, p2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondReal(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v1

    aget v1, v1, p3

    .line 464
    invoke-static {p4, v0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v2

    .line 465
    aget v4, v6, p3

    iget v5, p2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v4

    .line 466
    if-lez v1, :cond_af

    int-to-double v4, v4

    int-to-double v8, v2

    mul-double/2addr v4, v8

    int-to-double v0, v1

    div-double v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    .line 468
    :goto_89
    const/4 v4, 0x0

    invoke-static {v4, p2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondReal(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v4

    .line 469
    invoke-static {p2, v6}, Lcom/isaigu/gymapp/wearable/SecondParts;->effective(Lcom/isaigu/gymapp/bean/ProgramDataBean;[I)[I

    move-result-object v5

    .line 470
    iget v7, p2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-long v8, v7

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, p2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    aget v7, v6, p3

    invoke-static {v0, v1, v7}, Lcom/isaigu/gymapp/train/utils/PartStrength;->percentFor(III)I

    move-result v0

    aput v0, v6, p3

    .line 471
    invoke-static {p2, v6, v5}, Lcom/isaigu/gymapp/wearable/SecondParts;->set(Lcom/isaigu/gymapp/bean/ProgramDataBean;[I[I)V

    .line 472
    aput v2, v4, p3

    .line 473
    const/4 v0, 0x0

    invoke-static {v0, p1, p2, v3, v4}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondTo(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z[I)V

    goto/16 :goto_13

    .line 467
    :cond_af
    if-lez v0, :cond_be

    int-to-double v4, v2

    iget v1, p2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-double v8, v1

    mul-double/2addr v4, v8

    int-to-double v0, v0

    div-double v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    goto :goto_89

    :cond_be
    int-to-long v0, v4

    goto :goto_89

    .line 476
    :cond_c0
    iget-boolean v0, p2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v0, :cond_f0

    invoke-static {p2, v6}, Lcom/isaigu/gymapp/wearable/SecondParts;->effective(Lcom/isaigu/gymapp/bean/ProgramDataBean;[I)[I

    move-result-object v0

    .line 477
    :goto_c8
    iget-boolean v1, p2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v1, :cond_f5

    invoke-static {p2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->mainReal(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v4

    .line 478
    :goto_d0
    if-eqz v4, :cond_d7

    const/4 v1, 0x0

    invoke-static {v1, p2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondReal(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v5

    .line 479
    :cond_d7
    aput p4, v6, p3

    .line 480
    if-eqz v0, :cond_e6

    array-length v1, v0

    array-length v2, v6

    if-ne v1, v2, :cond_e6

    .line 481
    if-nez v4, :cond_e3

    .line 482
    aput p4, v0, p3

    .line 484
    :cond_e3
    invoke-static {p2, v6, v0}, Lcom/isaigu/gymapp/wearable/SecondParts;->set(Lcom/isaigu/gymapp/bean/ProgramDataBean;[I[I)V

    .line 486
    :cond_e6
    if-eqz v4, :cond_13

    .line 487
    const/4 v0, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/train/utils/PartStrength;->follow(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z[I[I)V

    goto/16 :goto_13

    .line 476
    :cond_f0
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/SecondParts;->get(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I
    :try_end_f3
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_f3} :catch_55

    move-result-object v0

    goto :goto_c8

    :cond_f5
    move-object v4, v5

    .line 477
    goto :goto_d0
.end method

.method static bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 579
    if-nez p0, :cond_4

    .line 583
    :cond_3
    :goto_3
    return-object v0

    .line 582
    :cond_4
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    .line 583
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    goto :goto_3
.end method

.method static change(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V
    .registers 11

    .prologue
    const/4 v4, 0x0

    .line 350
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 351
    iget-boolean v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v1, :cond_29

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/SecondParts;->effective(Lcom/isaigu/gymapp/bean/ProgramDataBean;[I)[I

    move-result-object v1

    move-object v6, v1

    .line 352
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

    .line 353
    if-eqz v6, :cond_28

    array-length v1, v6

    array-length v2, v0

    if-ne v1, v2, :cond_28

    .line 354
    invoke-static {p1, v0, v6}, Lcom/isaigu/gymapp/wearable/SecondParts;->set(Lcom/isaigu/gymapp/bean/ProgramDataBean;[I[I)V

    .line 356
    :cond_28
    return-void

    .line 351
    :cond_29
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/SecondParts;->get(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v1

    move-object v6, v1

    goto :goto_e

    :cond_2f
    move v5, v4

    .line 352
    goto :goto_17
.end method

.method static changeSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V
    .registers 5

    .prologue
    .line 183
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    :goto_6
    invoke-static {p0, v0, p1, p2, p3}, Lcom/isaigu/gymapp/train/utils/PartStrength;->changeSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V

    .line 184
    return-void

    .line 183
    :cond_a
    const/4 v0, 0x0

    goto :goto_6
.end method

.method static changeSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V
    .registers 13

    .prologue
    .line 187
    iget-object v0, p2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 188
    invoke-static {p2, v2}, Lcom/isaigu/gymapp/wearable/SecondParts;->effective(Lcom/isaigu/gymapp/bean/ProgramDataBean;[I)[I

    move-result-object v3

    .line 189
    iget v0, p2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    invoke-static {p0, p2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondCap(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 190
    array-length v0, v2

    new-array v5, v0, [I

    .line 191
    const/4 v0, 0x0

    :goto_16
    array-length v1, v2

    if-ge v0, v1, :cond_2e

    .line 192
    aget v1, v3, v0

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v1

    .line 193
    aget-boolean v6, p3, v0

    if-eqz v6, :cond_29

    add-int/2addr v1, p4

    int-to-long v6, v1

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/train/utils/PartStrength;->clamp(J)I

    move-result v1

    :cond_29
    aput v1, v5, v0

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 195
    :cond_2e
    invoke-static {p0, p1, p2, p3, v5}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondTo(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z[I)V

    .line 196
    return-void
.end method

.method public static channelBy(Lcom/isaigu/gymapp/train/model/TrainItem;II)V
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 380
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 381
    if-eqz v2, :cond_19

    iget-object v0, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v0, :cond_19

    iget-object v0, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 382
    :goto_f
    if-eqz v0, :cond_18

    if-ltz p1, :cond_18

    array-length v1, v0

    if-ge p1, v1, :cond_18

    if-nez p2, :cond_1b

    .line 397
    :cond_18
    :goto_18
    return-void

    :cond_19
    move-object v0, v5

    .line 381
    goto :goto_f

    .line 385
    :cond_1b
    array-length v0, v0

    new-array v3, v0, [Z

    .line 386
    const/4 v0, 0x1

    aput-boolean v0, v3, p1

    .line 387
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PartPick;->touch()V

    .line 388
    iget-boolean v0, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v0, :cond_38

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->active(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v0

    if-nez v0, :cond_34

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/PartPick;->tappedYellow(I)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 389
    :cond_34
    invoke-static {p0, v2, v3, p2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->changeSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V

    goto :goto_18

    .line 392
    :cond_38
    invoke-static {v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->mainReal(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v4

    iget-boolean v0, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v0, :cond_44

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondReal(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v5

    .line 393
    :cond_44
    invoke-static {p0, v2, v3, p2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->change(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V

    .line 394
    if-eqz v5, :cond_18

    .line 395
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/train/utils/PartStrength;->follow(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z[I[I)V

    goto :goto_18
.end method

.method static clamp(J)I
    .registers 6

    .prologue
    .line 607
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

    .line 543
    move v0, v1

    :goto_2
    array-length v2, p0

    if-ge v0, v2, :cond_1f

    .line 544
    if-eqz p3, :cond_e

    aget-boolean v2, p1, v0

    if-eqz v2, :cond_e

    .line 543
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 547
    :cond_e
    aget v2, p0, v0

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 548
    invoke-static {v2, p2, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->percentFor(III)I

    move-result v3

    invoke-static {v3, p2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v3

    if-eq v3, v2, :cond_b

    .line 552
    :goto_1e
    return v1

    :cond_1f
    const/4 v1, 0x1

    goto :goto_1e
.end method

.method static follow(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z[I[I)V
    .registers 16

    .prologue
    const/4 v1, 0x0

    .line 268
    if-eqz p2, :cond_9

    iget-boolean v0, p2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v0, :cond_9

    if-nez p3, :cond_a

    .line 289
    :cond_9
    :goto_9
    return-void

    .line 271
    :cond_a
    invoke-static {p2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->mainReal(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v3

    .line 272
    invoke-static {p0, p2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondReal(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v4

    move v0, v1

    move v2, v1

    .line 274
    :goto_14
    array-length v1, v4

    if-ge v0, v1, :cond_5f

    .line 275
    aget-boolean v1, p3, v0

    if-eqz v1, :cond_5d

    aget v1, v3, v0

    aget v5, p4, v0

    if-ne v1, v5, :cond_26

    move v1, v2

    .line 274
    :goto_22
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_14

    .line 278
    :cond_26
    const/4 v2, 0x1

    .line 279
    aget v1, p4, v0

    if-lez v1, :cond_3f

    .line 280
    aget v1, p5, v0

    int-to-double v6, v1

    aget v1, v3, v0

    int-to-double v8, v1

    mul-double/2addr v6, v8

    aget v1, p4, v0

    int-to-double v8, v1

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v1, v6

    aput v1, v4, v0

    move v1, v2

    goto :goto_22

    .line 281
    :cond_3f
    iget v1, p2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    if-lez v1, :cond_5d

    .line 282
    aget v1, v3, v0

    int-to-double v6, v1

    iget v1, p2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    invoke-static {p0, p2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondCap(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-double v8, v1

    mul-double/2addr v6, v8

    iget v1, p2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-double v8, v1

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v1, v6

    aput v1, v4, v0

    :cond_5d
    move v1, v2

    goto :goto_22

    .line 286
    :cond_5f
    if-eqz v2, :cond_9

    .line 287
    invoke-static {p0, p1, p2, p3, v4}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondTo(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z[I)V

    goto :goto_9
.end method

.method static level(Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z)I
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 334
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v3, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    move v0, v1

    move v2, v1

    .line 336
    :goto_7
    array-length v1, v3

    if-ge v0, v1, :cond_1e

    .line 337
    aget-boolean v1, p1, v0

    if-eqz v1, :cond_1f

    .line 338
    aget v1, v3, v0

    iget v4, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 336
    :goto_1a
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_7

    .line 341
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

    .line 166
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/SecondParts;->effective(Lcom/isaigu/gymapp/bean/ProgramDataBean;[I)[I

    move-result-object v3

    .line 167
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondStrength(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v4

    move v0, v1

    move v2, v1

    .line 169
    :goto_f
    array-length v1, v3

    if-ge v0, v1, :cond_24

    .line 170
    aget-boolean v1, p2, v0

    if-eqz v1, :cond_25

    .line 171
    aget v1, v3, v0

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 169
    :goto_20
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_f

    .line 174
    :cond_24
    return v2

    :cond_25
    move v1, v2

    goto :goto_20
.end method

.method public static levels(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)[I
    .registers 4

    .prologue
    .line 246
    if-eqz p2, :cond_7

    :try_start_2
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondReal(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v0

    .line 248
    :goto_6
    return-object v0

    .line 246
    :cond_7
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->mainReal(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_a} :catch_c

    move-result-object v0

    goto :goto_6

    .line 247
    :catch_c
    move-exception v0

    .line 248
    const/4 v0, 0x0

    goto :goto_6
.end method

.method static mainReal(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I
    .registers 6

    .prologue
    .line 254
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 255
    array-length v0, v1

    new-array v2, v0, [I

    .line 256
    const/4 v0, 0x0

    :goto_8
    array-length v3, v1

    if-ge v0, v3, :cond_18

    .line 257
    aget v3, v1, v0

    iget v4, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v3

    aput v3, v2, v0

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 259
    :cond_18
    return-object v2
.end method

.method public static modeCarry(Lcom/isaigu/gymapp/train/model/TrainItem;I)V
    .registers 9

    .prologue
    .line 409
    if-eqz p0, :cond_10

    :try_start_2
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 410
    :goto_6
    if-eqz v0, :cond_f

    const/4 v1, 0x3

    if-ne p1, v1, :cond_f

    iget v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    if-ne v1, p1, :cond_12

    .line 431
    :cond_f
    :goto_f
    return-void

    .line 409
    :cond_10
    const/4 v0, 0x0

    goto :goto_6

    .line 413
    :cond_12
    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 414
    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    .line 415
    if-eqz v1, :cond_f

    if-eqz v2, :cond_f

    if-eq v1, v2, :cond_f

    iget-object v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v0, :cond_f

    iget-object v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v0, :cond_f

    .line 418
    iget-object v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 419
    iget-object v3, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-nez v3, :cond_37

    .line 420
    new-instance v3, Lcom/isaigu/gymapp/bean/PartStrenthBean;

    invoke-direct {v3}, Lcom/isaigu/gymapp/bean/PartStrenthBean;-><init>()V

    iput-object v3, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    .line 422
    :cond_37
    iget-object v3, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 423
    if-eqz v3, :cond_41

    array-length v4, v3

    array-length v5, v0

    if-eq v4, v5, :cond_57

    .line 424
    :cond_41
    iget-object v3, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, v3, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 428
    :goto_4b
    iget v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->clamp(J)I

    move-result v0

    iput v0, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    goto :goto_f

    .line 429
    :catch_55
    move-exception v0

    goto :goto_f

    .line 426
    :cond_57
    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v6, v0

    invoke-static {v0, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5d} :catch_55

    goto :goto_4b
.end method

.method static percentFor(III)I
    .registers 7

    .prologue
    .line 562
    if-gtz p1, :cond_3

    .line 575
    :goto_2
    return p2

    .line 565
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

    .line 566
    :goto_12
    if-lez v0, :cond_1d

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v1

    if-le v1, p0, :cond_1d

    .line 567
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    .line 569
    :cond_1d
    :goto_1d
    const/16 v1, 0x64

    if-ge v0, v1, :cond_2a

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v1

    if-ge v1, p0, :cond_2a

    .line 570
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 572
    :cond_2a
    if-lez v0, :cond_34

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v1

    if-le v1, p0, :cond_34

    .line 573
    add-int/lit8 v0, v0, -0x1

    :cond_34
    move p2, v0

    .line 575
    goto :goto_2
.end method

.method static raisedStrength([I[ZI)I
    .registers 5

    .prologue
    .line 527
    move v0, p2

    :goto_1
    const/16 v1, 0x64

    if-gt v0, v1, :cond_11

    .line 528
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->exact([I[ZIZ)Z

    move-result v1

    if-eqz v1, :cond_e

    move p2, v0

    .line 539
    :cond_d
    :goto_d
    return p2

    .line 527
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 534
    :cond_11
    add-int/lit8 v0, p2, -0x1

    :goto_13
    if-lez v0, :cond_d

    .line 535
    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->exact([I[ZIZ)Z

    move-result v1

    if-eqz v1, :cond_1e

    move p2, v0

    .line 536
    goto :goto_d

    .line 534
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_13
.end method

.method static real(II)I
    .registers 4

    .prologue
    .line 557
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
    .line 364
    if-eqz p0, :cond_5

    .line 365
    :try_start_2
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->save(Lcom/isaigu/gymapp/bean/TrainProgram;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6

    .line 369
    :cond_5
    :goto_5
    return-void

    .line 367
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method static saveProgram(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 2

    .prologue
    .line 359
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    :goto_6
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->saveProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    .line 360
    return-void

    .line 359
    :cond_a
    const/4 v0, 0x0

    goto :goto_6
.end method

.method static secondCap(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I
    .registers 3

    .prologue
    .line 156
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SafeGuard;->free2(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_9

    move-result v0

    if-eqz v0, :cond_a

    .line 157
    const/16 v0, 0x96

    .line 161
    :goto_8
    return v0

    .line 159
    :catch_9
    move-exception v0

    .line 161
    :cond_a
    iget v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/SafeLimits;->pauseCap(I)I

    move-result v0

    goto :goto_8
.end method

.method public static secondPdu(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)[B
    .registers 6

    .prologue
    .line 133
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SecondParts;->get(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v0

    .line 134
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

    .line 136
    new-instance v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;

    invoke-direct {v1}, Lcom/isaigu/gymapp/bean/ProgramDataBean;-><init>()V

    .line 137
    iget v2, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 138
    new-instance v2, Lcom/isaigu/gymapp/bean/PartStrenthBean;

    invoke-direct {v2}, Lcom/isaigu/gymapp/bean/PartStrenthBean;-><init>()V

    .line 139
    iput-object v0, v2, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 140
    iput-object v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    .line 141
    invoke-static {v1, p1, p2}, Lcom/isaigu/gymapp/train/utils/CommandUtil;->getPartsParamsPduWithStrength(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)[B
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2d} :catch_2f

    move-result-object v0

    .line 145
    :goto_2e
    return-object v0

    .line 143
    :catch_2f
    move-exception v0

    .line 145
    :cond_30
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/train/utils/CommandUtil;->getPartsParamsPduWithStrength(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)[B

    move-result-object v0

    goto :goto_2e
.end method

.method static secondReal(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I
    .registers 8

    .prologue
    .line 233
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 234
    invoke-static {p1, v1}, Lcom/isaigu/gymapp/wearable/SecondParts;->effective(Lcom/isaigu/gymapp/bean/ProgramDataBean;[I)[I

    move-result-object v2

    .line 235
    iget v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondCap(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 236
    array-length v0, v1

    new-array v4, v0, [I

    .line 237
    const/4 v0, 0x0

    :goto_16
    array-length v5, v1

    if-ge v0, v5, :cond_24

    .line 238
    aget v5, v2, v0

    invoke-static {v5, v3}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v5

    aput v5, v4, v0

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 240
    :cond_24
    return-object v4
.end method

.method static secondStrength(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I
    .registers 4

    .prologue
    .line 150
    iget v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondCap(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method static secondTo(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z[I)V
    .registers 15

    .prologue
    const/4 v1, 0x0

    .line 204
    iget-object v0, p2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v4, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 205
    invoke-static {p2, v4}, Lcom/isaigu/gymapp/wearable/SecondParts;->effective(Lcom/isaigu/gymapp/bean/ProgramDataBean;[I)[I

    move-result-object v5

    .line 206
    invoke-static {p0, p2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondCap(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v6

    .line 207
    iget v0, p2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v0, v1

    move v2, v1

    .line 209
    :goto_15
    array-length v7, v4

    if-ge v0, v7, :cond_2e

    .line 210
    aget v7, p4, v0

    int-to-long v8, v7

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/train/utils/PartStrength;->clamp(J)I

    move-result v7

    aput v7, p4, v0

    .line 211
    aget-boolean v7, p3, v0

    if-eqz v7, :cond_2b

    .line 212
    aget v7, p4, v0

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 209
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 216
    :cond_2e
    if-le v2, v3, :cond_65

    if-le v6, v3, :cond_65

    .line 217
    const/16 v0, 0x64

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p4, p3, v0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->raisedStrength([I[ZI)I

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 219
    :goto_40
    array-length v2, v4

    if-ge v1, v2, :cond_5a

    .line 220
    aget-boolean v2, p3, v1

    if-nez v2, :cond_49

    if-eq v0, v3, :cond_57

    .line 221
    :cond_49
    aget v2, p4, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v6, v5, v1

    invoke-static {v2, v0, v6}, Lcom/isaigu/gymapp/train/utils/PartStrength;->percentFor(III)I

    move-result v2

    aput v2, v5, v1

    .line 219
    :cond_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 224
    :cond_5a
    if-eq v0, v3, :cond_61

    .line 225
    iput v0, p2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 226
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->saveProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    .line 228
    :cond_61
    invoke-static {p2, v4, v5}, Lcom/isaigu/gymapp/wearable/SecondParts;->set(Lcom/isaigu/gymapp/bean/ProgramDataBean;[I[I)V

    .line 229
    return-void

    :cond_65
    move v0, v3

    goto :goto_40
.end method

.method public static seekValue(Lcom/isaigu/gymapp/train/model/TrainItem;I)I
    .registers 6

    .prologue
    .line 111
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 112
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->selection(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[Z

    move-result-object v1

    .line 113
    if-nez v1, :cond_11

    .line 114
    if-eqz v0, :cond_10

    invoke-static {p0, v0, p1}, Lcom/isaigu/gymapp/train/utils/PartLook;->ringValue(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;I)I

    move-result p1

    .line 121
    :cond_10
    :goto_10
    return p1

    .line 116
    :cond_11
    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->yellow(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z)[Z

    move-result-object v2

    .line 117
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->without([Z[Z)[Z

    move-result-object v1

    .line 118
    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->any([Z)Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->level(Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z)I

    move-result v0

    .line 119
    :goto_23
    mul-int/lit8 v0, v0, 0x4b

    div-int/lit8 p1, v0, 0x64

    goto :goto_10

    .line 118
    :cond_28
    invoke-static {p0, v0, v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->level2(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z)I
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2b} :catch_2d

    move-result v0

    goto :goto_23

    .line 120
    :catch_2d
    move-exception v0

    goto :goto_10
.end method

.method static selection(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[Z
    .registers 11

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 588
    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    if-nez v0, :cond_c

    .line 603
    :cond_b
    :goto_b
    return-object v4

    .line 591
    :cond_c
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    .line 592
    if-eqz v0, :cond_b

    iget-object v3, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v3, :cond_b

    .line 595
    iget-object v3, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v3, v3

    iget-object v5, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    array-length v5, v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 596
    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v0, v0

    new-array v3, v0, [Z

    move v5, v2

    move v6, v2

    .line 598
    :goto_25
    if-ge v5, v7, :cond_4d

    .line 599
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    array-length v0, v0

    if-ge v5, v0, :cond_49

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_49

    move v0, v1

    .line 600
    :goto_37
    iget-object v8, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    aget-boolean v8, v8, v5

    if-eqz v8, :cond_4b

    if-nez v0, :cond_4b

    move v0, v1

    :goto_40
    aput-boolean v0, v3, v5

    .line 601
    aget-boolean v0, v3, v5

    or-int/2addr v6, v0

    .line 598
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_25

    :cond_49
    move v0, v2

    .line 599
    goto :goto_37

    :cond_4b
    move v0, v2

    .line 600
    goto :goto_40

    .line 603
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
    .registers 13

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 76
    :try_start_2
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 77
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->selection(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[Z

    move-result-object v0

    .line 78
    if-nez v0, :cond_e

    move v0, v6

    .line 101
    :goto_d
    return v0

    .line 81
    :cond_e
    invoke-static {p0, v2, v0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->yellow(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z)[Z

    move-result-object v9

    .line 82
    invoke-static {v0, v9}, Lcom/isaigu/gymapp/train/utils/PartStrength;->without([Z[Z)[Z

    move-result-object v3

    .line 83
    invoke-static {v3}, Lcom/isaigu/gymapp/train/utils/PartStrength;->any([Z)Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/train/utils/PartStrength;->level(Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z)I

    move-result v0

    move v8, v0

    .line 84
    :goto_21
    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->clamp(J)I

    move-result v0

    add-int/lit8 v1, v8, 0x14

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 87
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PartPick;->touch()V

    .line 88
    invoke-static {v3}, Lcom/isaigu/gymapp/train/utils/PartStrength;->any([Z)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 89
    invoke-static {v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->mainReal(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v4

    iget-boolean v0, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v0, :cond_68

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondReal(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v5

    .line 90
    :goto_41
    sub-int v0, v10, v8

    invoke-static {p0, v2, v3, v0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->change(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V

    .line 91
    if-eqz v5, :cond_50

    .line 92
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/train/utils/PartStrength;->follow(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z[I[I)V

    .line 95
    :cond_50
    invoke-static {v9}, Lcom/isaigu/gymapp/train/utils/PartStrength;->any([Z)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 96
    sub-int v0, v10, v8

    invoke-static {p0, v2, v9, v0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->changeSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V

    .line 98
    :cond_5b
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addAllPartValue(IZ)V

    move v0, v7

    .line 99
    goto :goto_d

    .line 83
    :cond_62
    invoke-static {p0, v2, v9}, Lcom/isaigu/gymapp/train/utils/PartStrength;->level2(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z)I
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_65} :catch_6a

    move-result v0

    move v8, v0

    goto :goto_21

    .line 89
    :cond_68
    const/4 v5, 0x0

    goto :goto_41

    .line 100
    :catch_6a
    move-exception v0

    move v0, v6

    .line 101
    goto :goto_d
.end method

.method static without([Z[Z)[Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 310
    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    .line 311
    if-eqz p1, :cond_1d

    move v1, v2

    .line 312
    :goto_a
    array-length v3, v0

    if-ge v1, v3, :cond_1d

    .line 313
    aget-boolean v3, v0, v1

    if-eqz v3, :cond_1b

    aget-boolean v3, p1, v1

    if-nez v3, :cond_1b

    const/4 v3, 0x1

    :goto_16
    aput-boolean v3, v0, v1

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1b
    move v3, v2

    .line 313
    goto :goto_16

    .line 316
    :cond_1d
    return-object v0
.end method

.method static yellow(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z)[Z
    .registers 10

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 296
    if-eqz p1, :cond_8

    iget-boolean v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-nez v0, :cond_a

    :cond_8
    move-object v0, v5

    .line 306
    :goto_9
    return-object v0

    .line 299
    :cond_a
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->active(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v6

    .line 300
    array-length v0, p2

    new-array v4, v0, [Z

    move v0, v1

    move v2, v1

    .line 302
    :goto_13
    array-length v3, p2

    if-ge v0, v3, :cond_2d

    .line 303
    aget-boolean v3, p2, v0

    if-eqz v3, :cond_2b

    if-nez v6, :cond_22

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/PartPick;->tappedYellow(I)Z

    move-result v3

    if-eqz v3, :cond_2b

    :cond_22
    const/4 v3, 0x1

    :goto_23
    aput-boolean v3, v4, v0

    .line 304
    aget-boolean v3, v4, v0

    or-int/2addr v2, v3

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_2b
    move v3, v1

    .line 303
    goto :goto_23

    .line 306
    :cond_2d
    if-eqz v2, :cond_31

    move-object v0, v4

    goto :goto_9

    :cond_31
    move-object v0, v5

    goto :goto_9
.end method
