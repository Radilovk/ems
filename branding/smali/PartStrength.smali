.class public final Lcom/isaigu/gymapp/train/utils/PartStrength;
.super Ljava/lang/Object;
.source "PartStrength.java"


# static fields
.field private static final LIFT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/isaigu/gymapp/bean/ProgramDataBean;",
            "[I>;"
        }
    .end annotation
.end field

.field static final MAX_RAISE:I = 0x14

.field private static final RATIO:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/isaigu/gymapp/bean/ProgramDataBean;",
            "[D>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 376
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/PartStrength;->LIFT:Ljava/util/Map;

    .line 379
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/PartStrength;->RATIO:Ljava/util/Map;

    return-void
.end method

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

    .line 322
    if-eqz p0, :cond_c

    move v0, v1

    .line 323
    :goto_4
    array-length v2, p0

    if-ge v0, v2, :cond_c

    .line 324
    aget-boolean v2, p0, v0

    if-eqz v2, :cond_d

    .line 325
    const/4 v1, 0x1

    .line 329
    :cond_c
    return v1

    .line 323
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method static apply([II[ZIZZ)I
    .registers 13

    .prologue
    const/4 v1, 0x0

    .line 729
    array-length v0, p0

    new-array v6, v0, [I

    move v0, v1

    move v2, v1

    .line 731
    :goto_6
    array-length v3, p0

    if-ge v0, v3, :cond_2c

    .line 732
    aget v3, p0, v0

    invoke-static {v3, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v3

    .line 733
    aget-boolean v4, p2, v0

    if-eqz v4, :cond_1a

    if-eqz p4, :cond_29

    int-to-long v4, p3

    :goto_16
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/train/utils/PartStrength;->clamp(J)I

    move-result v3

    :cond_1a
    aput v3, v6, v0

    .line 734
    aget-boolean v3, p2, v0

    if-eqz v3, :cond_26

    .line 735
    aget v3, v6, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 731
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 733
    :cond_29
    add-int/2addr v3, p3

    int-to-long v4, v3

    goto :goto_16

    .line 739
    :cond_2c
    if-le v2, p1, :cond_55

    if-eqz p5, :cond_55

    .line 740
    const/16 v0, 0x64

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v6, p2, v0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->raisedStrength([I[ZI)I

    move-result v0

    .line 742
    :goto_3a
    array-length v2, p0

    if-ge v1, v2, :cond_54

    .line 743
    aget-boolean v2, p2, v1

    if-nez v2, :cond_43

    if-eq v0, p1, :cond_51

    .line 744
    :cond_43
    aget v2, v6, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v3, p0, v1

    invoke-static {v2, v0, v3}, Lcom/isaigu/gymapp/train/utils/PartStrength;->percentFor(III)I

    move-result v2

    aput v2, p0, v1

    .line 742
    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 747
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

    .line 673
    if-eqz p2, :cond_14

    iget-object v0, p2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v0, :cond_14

    iget-object v0, p2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    move-object v6, v0

    .line 674
    :goto_c
    if-eqz v6, :cond_13

    if-ltz p3, :cond_13

    array-length v0, v6

    if-lt p3, v0, :cond_16

    .line 721
    :cond_13
    :goto_13
    return-void

    :cond_14
    move-object v6, v5

    .line 673
    goto :goto_c

    .line 678
    :cond_16
    :try_start_16
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartLook;->lockedSecond(Landroid/view/View;)Z

    move-result v0

    .line 679
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartLook;->release(Landroid/view/View;)V

    .line 680
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PartPick;->touch()V

    .line 681
    array-length v1, v6

    new-array v3, v1, [Z

    .line 682
    const/4 v1, 0x1

    aput-boolean v1, v3, p3

    .line 683
    iget-boolean v1, p2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v1, :cond_59

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->active(Lcom/isaigu/gymapp/bean/TrainProgram;)Z

    move-result v1

    if-nez v1, :cond_36

    invoke-static {p3}, Lcom/isaigu/gymapp/wearable/PartPick;->tappedYellow(I)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 684
    :cond_36
    iget v0, p2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    const/4 v1, 0x0

    invoke-static {v1, p2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondCap(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 685
    invoke-static {p2, v6}, Lcom/isaigu/gymapp/wearable/SecondParts;->effective(Lcom/isaigu/gymapp/bean/ProgramDataBean;[I)[I

    move-result-object v1

    aget v1, v1, p3

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v1

    .line 686
    const/4 v2, 0x0

    invoke-static {p4, v0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {v2, p1, p2, v3, v0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->changeSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_54} :catch_55

    goto :goto_13

    .line 718
    :catch_55
    move-exception v0

    .line 719
    aput p4, v6, p3

    goto :goto_13

    .line 689
    :cond_59
    :try_start_59
    iget-boolean v1, p2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v1, :cond_c0

    if-eqz v0, :cond_c0

    .line 691
    iget v0, p2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    const/4 v1, 0x0

    invoke-static {v1, p2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondCap(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 692
    const/4 v1, 0x0

    invoke-static {v1, p2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondReal(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v1

    aget v1, v1, p3

    .line 693
    invoke-static {p4, v0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v2

    .line 694
    aget v4, v6, p3

    iget v5, p2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v4

    .line 695
    if-lez v1, :cond_af

    int-to-double v4, v4

    int-to-double v8, v2

    mul-double/2addr v4, v8

    int-to-double v0, v1

    div-double v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    .line 697
    :goto_89
    const/4 v4, 0x0

    invoke-static {v4, p2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondReal(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v4

    .line 698
    invoke-static {p2, v6}, Lcom/isaigu/gymapp/wearable/SecondParts;->effective(Lcom/isaigu/gymapp/bean/ProgramDataBean;[I)[I

    move-result-object v5

    .line 699
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

    .line 700
    invoke-static {p2, v6, v5}, Lcom/isaigu/gymapp/wearable/SecondParts;->set(Lcom/isaigu/gymapp/bean/ProgramDataBean;[I[I)V

    .line 701
    aput v2, v4, p3

    .line 702
    const/4 v0, 0x0

    invoke-static {v0, p1, p2, v3, v4}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondTo(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z[I)V

    goto/16 :goto_13

    .line 696
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

    .line 705
    :cond_c0
    iget-boolean v0, p2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v0, :cond_f0

    invoke-static {p2, v6}, Lcom/isaigu/gymapp/wearable/SecondParts;->effective(Lcom/isaigu/gymapp/bean/ProgramDataBean;[I)[I

    move-result-object v0

    .line 706
    :goto_c8
    iget-boolean v1, p2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v1, :cond_f5

    invoke-static {p2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->mainReal(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v4

    .line 707
    :goto_d0
    if-eqz v4, :cond_d7

    const/4 v1, 0x0

    invoke-static {v1, p2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondReal(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v5

    .line 708
    :cond_d7
    aput p4, v6, p3

    .line 709
    if-eqz v0, :cond_e6

    array-length v1, v0

    array-length v2, v6

    if-ne v1, v2, :cond_e6

    .line 710
    if-nez v4, :cond_e3

    .line 711
    aput p4, v0, p3

    .line 713
    :cond_e3
    invoke-static {p2, v6, v0}, Lcom/isaigu/gymapp/wearable/SecondParts;->set(Lcom/isaigu/gymapp/bean/ProgramDataBean;[I[I)V

    .line 715
    :cond_e6
    if-eqz v4, :cond_13

    .line 716
    const/4 v0, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/train/utils/PartStrength;->follow(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z[I[I)V

    goto/16 :goto_13

    .line 705
    :cond_f0
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/SecondParts;->get(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I
    :try_end_f3
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_f3} :catch_55

    move-result-object v0

    goto :goto_c8

    :cond_f5
    move-object v4, v5

    .line 706
    goto :goto_d0
.end method

.method static bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 808
    if-nez p0, :cond_4

    .line 812
    :cond_3
    :goto_3
    return-object v0

    .line 811
    :cond_4
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    .line 812
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    goto :goto_3
.end method

.method public static boardSelected(Lcom/isaigu/gymapp/train/model/TrainItem;IZ)Z
    .registers 10

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 411
    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v4

    .line 412
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/train/utils/PartStrength;->selection(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[Z

    move-result-object v2

    .line 413
    if-eqz v2, :cond_13

    if-eqz p2, :cond_15

    iget-boolean v5, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-nez v5, :cond_15

    :cond_13
    move v0, v1

    .line 426
    :goto_14
    return v0

    .line 416
    :cond_15
    if-eqz p2, :cond_24

    .line 417
    const/4 v3, 0x0

    invoke-static {p0, v4, v3, v2, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->move(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z[ZI)V

    .line 423
    :goto_1b
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/isaigu/gymapp/train/model/TrainItem;->addAllPartValue(IZ)V

    goto :goto_14

    .line 425
    :catch_21
    move-exception v0

    move v0, v1

    .line 426
    goto :goto_14

    .line 419
    :cond_24
    invoke-static {p0, v4, v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->yellow(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z)[Z

    move-result-object v5

    .line 420
    invoke-static {v2, v5}, Lcom/isaigu/gymapp/train/utils/PartStrength;->without([Z[Z)[Z

    move-result-object v2

    .line 421
    invoke-static {v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->any([Z)Z

    move-result v6

    if-eqz v6, :cond_36

    :goto_32
    invoke-static {p0, v4, v2, v5, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->move(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z[ZI)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_35} :catch_21

    goto :goto_1b

    :cond_36
    move-object v2, v3

    goto :goto_32
.end method

.method static change(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V
    .registers 11

    .prologue
    const/4 v4, 0x0

    .line 352
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 353
    iget-boolean v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v1, :cond_29

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/SecondParts;->effective(Lcom/isaigu/gymapp/bean/ProgramDataBean;[I)[I

    move-result-object v1

    move-object v6, v1

    .line 354
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

    .line 355
    if-eqz v6, :cond_28

    array-length v1, v6

    array-length v2, v0

    if-ne v1, v2, :cond_28

    .line 356
    invoke-static {p1, v0, v6}, Lcom/isaigu/gymapp/wearable/SecondParts;->set(Lcom/isaigu/gymapp/bean/ProgramDataBean;[I[I)V

    .line 358
    :cond_28
    return-void

    .line 353
    :cond_29
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/SecondParts;->get(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v1

    move-object v6, v1

    goto :goto_e

    :cond_2f
    move v5, v4

    .line 354
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
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 393
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v4

    .line 394
    if-eqz v4, :cond_18

    iget-object v0, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v0, :cond_18

    iget-object v0, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 395
    :goto_10
    if-eqz v0, :cond_17

    if-ltz p1, :cond_17

    array-length v3, v0

    if-lt p1, v3, :cond_1a

    .line 402
    :cond_17
    :goto_17
    return-void

    :cond_18
    move-object v0, v1

    .line 394
    goto :goto_10

    .line 398
    :cond_1a
    array-length v0, v0

    new-array v0, v0, [Z

    .line 399
    aput-boolean v2, v0, p1

    .line 400
    iget-boolean v3, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v3, :cond_39

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->active(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v3

    if-nez v3, :cond_2f

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/PartPick;->tappedYellow(I)Z

    move-result v3

    if-eqz v3, :cond_39

    :cond_2f
    move v3, v2

    .line 401
    :goto_30
    if-eqz v3, :cond_3c

    move-object v2, v1

    :goto_33
    if-eqz v3, :cond_3e

    :goto_35
    invoke-static {p0, v4, v2, v0, p2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->move(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z[ZI)V

    goto :goto_17

    .line 400
    :cond_39
    const/4 v2, 0x0

    move v3, v2

    goto :goto_30

    :cond_3c
    move-object v2, v0

    .line 401
    goto :goto_33

    :cond_3e
    move-object v0, v1

    goto :goto_35
.end method

.method static clamp(J)I
    .registers 6

    .prologue
    .line 836
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

    .line 772
    move v0, v1

    :goto_2
    array-length v2, p0

    if-ge v0, v2, :cond_1f

    .line 773
    if-eqz p3, :cond_e

    aget-boolean v2, p1, v0

    if-eqz v2, :cond_e

    .line 772
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 776
    :cond_e
    aget v2, p0, v0

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 777
    invoke-static {v2, p2, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->percentFor(III)I

    move-result v3

    invoke-static {v3, p2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v3

    if-eq v3, v2, :cond_b

    .line 781
    :goto_1e
    return v1

    :cond_1f
    const/4 v1, 0x1

    goto :goto_1e
.end method

.method private static exactAt(I[II)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 598
    move v0, v1

    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_1d

    .line 599
    if-eq v0, p2, :cond_1a

    aget v2, p1, v0

    if-gt v2, p0, :cond_19

    aget v2, p1, v0

    invoke-static {v2, p0, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->percentFor(III)I

    move-result v2

    invoke-static {v2, p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v2

    aget v3, p1, v0

    if-eq v2, v3, :cond_1a

    .line 603
    :cond_19
    :goto_19
    return v1

    .line 598
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 603
    :cond_1d
    const/4 v1, 0x1

    goto :goto_19
.end method

.method static exactFrom(II[II)I
    .registers 7

    .prologue
    .line 583
    int-to-long v0, p0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->clamp(J)I

    move-result v1

    move v0, v1

    .line 584
    :goto_6
    if-gt v0, p1, :cond_13

    .line 585
    const/4 v2, -0x1

    invoke-static {v0, p2, v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->exactAt(I[II)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 594
    :cond_f
    :goto_f
    return v0

    .line 584
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 589
    :cond_13
    add-int/lit8 v0, v1, -0x1

    :goto_15
    if-lez v0, :cond_20

    .line 590
    invoke-static {v0, p2, p3}, Lcom/isaigu/gymapp/train/utils/PartStrength;->exactAt(I[II)Z

    move-result v2

    if-nez v2, :cond_f

    .line 589
    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    :cond_20
    move v0, v1

    .line 594
    goto :goto_f
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

    .line 291
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

    if-ge v0, v1, :cond_69

    .line 275
    aget-boolean v1, p3, v0

    if-eqz v1, :cond_67

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
    iget v1, p2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    if-nez v1, :cond_49

    .line 282
    aget v1, v3, v0

    aput v1, v4, v0

    move v1, v2

    goto :goto_22

    .line 283
    :cond_49
    iget v1, p2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    if-lez v1, :cond_67

    .line 284
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

    :cond_67
    move v1, v2

    goto :goto_22

    .line 288
    :cond_69
    if-eqz v2, :cond_9

    .line 289
    invoke-static {p0, p1, p2, p3, v4}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondTo(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z[I)V

    goto :goto_9
.end method

.method static level(Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z)I
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 336
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v3, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    move v0, v1

    move v2, v1

    .line 338
    :goto_7
    array-length v1, v3

    if-ge v0, v1, :cond_1e

    .line 339
    aget-boolean v1, p1, v0

    if-eqz v1, :cond_1f

    .line 340
    aget v1, v3, v0

    iget v4, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 338
    :goto_1a
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_7

    .line 343
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

.method static max([I)I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 607
    move v0, v1

    move v2, v1

    .line 608
    :goto_3
    if-eqz p0, :cond_12

    array-length v1, p0

    if-ge v0, v1, :cond_12

    .line 609
    aget v1, p0, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 608
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_3

    .line 611
    :cond_12
    return v2
.end method

.method public static modeCarry(Lcom/isaigu/gymapp/train/model/TrainItem;I)V
    .registers 9

    .prologue
    .line 638
    if-eqz p0, :cond_10

    :try_start_2
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 639
    :goto_6
    if-eqz v0, :cond_f

    const/4 v1, 0x3

    if-ne p1, v1, :cond_f

    iget v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    if-ne v1, p1, :cond_12

    .line 660
    :cond_f
    :goto_f
    return-void

    .line 638
    :cond_10
    const/4 v0, 0x0

    goto :goto_6

    .line 642
    :cond_12
    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 643
    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    .line 644
    if-eqz v1, :cond_f

    if-eqz v2, :cond_f

    if-eq v1, v2, :cond_f

    iget-object v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v0, :cond_f

    iget-object v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v0, :cond_f

    .line 647
    iget-object v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 648
    iget-object v3, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-nez v3, :cond_37

    .line 649
    new-instance v3, Lcom/isaigu/gymapp/bean/PartStrenthBean;

    invoke-direct {v3}, Lcom/isaigu/gymapp/bean/PartStrenthBean;-><init>()V

    iput-object v3, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    .line 651
    :cond_37
    iget-object v3, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 652
    if-eqz v3, :cond_41

    array-length v4, v3

    array-length v5, v0

    if-eq v4, v5, :cond_57

    .line 653
    :cond_41
    iget-object v3, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, v3, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 657
    :goto_4b
    iget v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->clamp(J)I

    move-result v0

    iput v0, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    goto :goto_f

    .line 658
    :catch_55
    move-exception v0

    goto :goto_f

    .line 655
    :cond_57
    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v6, v0

    invoke-static {v0, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5d} :catch_55

    goto :goto_4b
.end method

.method static move(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z[ZI)V
    .registers 27

    .prologue
    .line 432
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v4, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    move-object/from16 v16, v0

    .line 433
    if-eqz p4, :cond_16

    invoke-static/range {p2 .. p2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->any([Z)Z

    move-result v4

    if-nez v4, :cond_17

    invoke-static/range {p3 .. p3}, Lcom/isaigu/gymapp/train/utils/PartStrength;->any([Z)Z

    move-result v4

    if-nez v4, :cond_17

    .line 521
    :cond_16
    :goto_16
    return-void

    .line 436
    :cond_17
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PartPick;->touch()V

    .line 437
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v17

    .line 438
    sget-object v4, Lcom/isaigu/gymapp/train/utils/PartStrength;->LIFT:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 439
    if-eqz v4, :cond_23f

    const/4 v5, 0x2

    aget v5, v4, v5

    move-object/from16 v0, p1

    iget v6, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    if-ne v5, v6, :cond_3c

    const/4 v5, 0x3

    aget v5, v4, v5

    move-object/from16 v0, p1

    iget v6, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    if-eq v5, v6, :cond_23f

    .line 440
    :cond_3c
    const/4 v4, 0x0

    move-object v5, v4

    .line 442
    :goto_3e
    if-eqz v5, :cond_6f

    const/4 v4, 0x0

    aget v4, v5, v4

    move v13, v4

    .line 443
    :goto_44
    if-eqz v5, :cond_75

    const/4 v4, 0x1

    aget v4, v5, v4

    move v10, v4

    .line 444
    :goto_4a
    const/4 v5, -0x1

    .line 445
    invoke-static/range {p1 .. p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->mainReal(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v6

    .line 446
    const/4 v4, 0x0

    move v11, v5

    :goto_51
    move-object/from16 v0, v16

    array-length v5, v0

    if-ge v4, v5, :cond_7b

    .line 447
    if-eqz p2, :cond_5c

    aget-boolean v5, p2, v4

    if-nez v5, :cond_62

    :cond_5c
    if-eqz p3, :cond_23c

    aget-boolean v5, p3, v4

    if-eqz v5, :cond_23c

    :cond_62
    if-ltz v11, :cond_6a

    aget v5, v6, v4

    aget v7, v6, v11

    if-le v5, v7, :cond_23c

    :cond_6a
    move v5, v4

    .line 446
    :goto_6b
    add-int/lit8 v4, v4, 0x1

    move v11, v5

    goto :goto_51

    .line 442
    :cond_6f
    move-object/from16 v0, p1

    iget v4, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    move v13, v4

    goto :goto_44

    .line 443
    :cond_75
    move-object/from16 v0, p1

    iget v4, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    move v10, v4

    goto :goto_4a

    .line 451
    :cond_7b
    invoke-static/range {p3 .. p3}, Lcom/isaigu/gymapp/train/utils/PartStrength;->any([Z)Z

    move-result v4

    if-eqz v4, :cond_e7

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v4, :cond_e7

    .line 452
    invoke-static/range {p0 .. p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondReal(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v7

    .line 453
    const/4 v5, 0x0

    .line 454
    const/4 v4, 0x0

    :goto_8d
    move-object/from16 v0, v16

    array-length v6, v0

    if-ge v4, v6, :cond_a8

    .line 455
    aget-boolean v6, p3, v4

    if-eqz v6, :cond_a5

    .line 456
    aget v6, v7, v4

    int-to-long v8, v6

    move/from16 v0, p4

    int-to-long v14, v0

    add-long/2addr v8, v14

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/train/utils/PartStrength;->clamp(J)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 454
    :cond_a5
    add-int/lit8 v4, v4, 0x1

    goto :goto_8d

    .line 459
    :cond_a8
    if-nez v17, :cond_dc

    invoke-static/range {p0 .. p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondCap(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v4

    if-le v5, v4, :cond_dc

    .line 460
    int-to-double v4, v5

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v8

    const-wide v8, 0x4062c00000000000L    # 150.0

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 461
    invoke-static/range {p1 .. p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->mainReal(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v6

    .line 462
    move-object/from16 v0, p1

    iget v5, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/16 v5, 0x64

    invoke-static {v4, v5, v6, v11}, Lcom/isaigu/gymapp/train/utils/PartStrength;->exactFrom(II[II)I

    move-result v8

    move-object/from16 v0, p1

    iget v9, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/train/utils/PartStrength;->write(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[I[III)V

    .line 464
    :cond_dc
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/train/utils/PartStrength;->changeSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V

    .line 466
    :cond_e7
    invoke-static/range {p2 .. p2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->any([Z)Z

    move-result v4

    if-eqz v4, :cond_22e

    .line 467
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v4, :cond_134

    invoke-static/range {p0 .. p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondReal(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v9

    .line 468
    :goto_f7
    invoke-static/range {p1 .. p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->mainReal(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v8

    .line 469
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/train/utils/PartStrength;->change(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V

    .line 470
    if-eqz v9, :cond_22e

    .line 472
    sget-object v4, Lcom/isaigu/gymapp/train/utils/PartStrength;->RATIO:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    .line 473
    if-eqz v4, :cond_11c

    array-length v5, v4

    move-object/from16 v0, v16

    array-length v6, v0

    mul-int/lit8 v6, v6, 0x3

    if-eq v5, v6, :cond_239

    .line 474
    :cond_11c
    move-object/from16 v0, v16

    array-length v4, v0

    mul-int/lit8 v4, v4, 0x3

    new-array v5, v4, [D

    .line 475
    const/4 v4, 0x0

    :goto_124
    move-object/from16 v0, v16

    array-length v6, v0

    if-ge v4, v6, :cond_136

    .line 476
    mul-int/lit8 v6, v4, 0x3

    add-int/lit8 v6, v6, 0x1

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    aput-wide v14, v5, v6

    .line 475
    add-int/lit8 v4, v4, 0x1

    goto :goto_124

    .line 467
    :cond_134
    const/4 v9, 0x0

    goto :goto_f7

    .line 478
    :cond_136
    sget-object v4, Lcom/isaigu/gymapp/train/utils/PartStrength;->RATIO:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v12, v5

    .line 480
    :goto_13e
    invoke-static/range {p1 .. p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->mainReal(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v6

    .line 481
    invoke-static/range {p0 .. p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondReal(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v18

    .line 482
    move-object/from16 v0, v16

    array-length v4, v0

    new-array v0, v4, [Z

    move-object/from16 v19, v0

    .line 483
    move-object/from16 v0, v16

    array-length v4, v0

    new-array v7, v4, [Z

    .line 484
    const/4 v4, 0x0

    :goto_153
    move-object/from16 v0, v16

    array-length v5, v0

    if-ge v4, v5, :cond_1c8

    .line 485
    aget-boolean v5, p2, v4

    if-nez v5, :cond_15f

    .line 484
    :goto_15c
    add-int/lit8 v4, v4, 0x1

    goto :goto_153

    .line 488
    :cond_15f
    mul-int/lit8 v5, v4, 0x3

    add-int/lit8 v5, v5, 0x1

    aget-wide v14, v12, v5

    aget v5, v8, v4

    int-to-double v0, v5

    move-wide/from16 v20, v0

    cmpl-double v5, v14, v20

    if-nez v5, :cond_1a3

    mul-int/lit8 v5, v4, 0x3

    add-int/lit8 v5, v5, 0x2

    aget-wide v14, v12, v5

    aget v5, v9, v4

    int-to-double v0, v5

    move-wide/from16 v20, v0

    cmpl-double v5, v14, v20

    if-nez v5, :cond_1a3

    const/4 v5, 0x1

    .line 490
    :goto_17e
    if-eqz v5, :cond_1a5

    mul-int/lit8 v5, v4, 0x3

    aget-wide v14, v12, v5

    .line 492
    :goto_184
    mul-int/lit8 v5, v4, 0x3

    aput-wide v14, v12, v5

    .line 493
    const-wide/16 v20, 0x0

    cmpl-double v5, v14, v20

    if-ltz v5, :cond_1c4

    .line 494
    aget v5, v6, v4

    int-to-double v0, v5

    move-wide/from16 v20, v0

    mul-double v14, v14, v20

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/isaigu/gymapp/train/utils/PartStrength;->clamp(J)I

    move-result v5

    aput v5, v18, v4

    .line 495
    const/4 v5, 0x1

    aput-boolean v5, v19, v4

    goto :goto_15c

    .line 488
    :cond_1a3
    const/4 v5, 0x0

    goto :goto_17e

    .line 490
    :cond_1a5
    aget v5, v8, v4

    if-lez v5, :cond_1c1

    aget v5, v9, v4

    if-nez v5, :cond_1b6

    move-object/from16 v0, p1

    iget v5, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    if-nez v5, :cond_1b6

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    goto :goto_184

    .line 491
    :cond_1b6
    aget v5, v9, v4

    int-to-double v14, v5

    aget v5, v8, v4

    int-to-double v0, v5

    move-wide/from16 v20, v0

    div-double v14, v14, v20

    goto :goto_184

    :cond_1c1
    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    goto :goto_184

    .line 497
    :cond_1c4
    const/4 v5, 0x1

    aput-boolean v5, v7, v4

    goto :goto_15c

    .line 500
    :cond_1c8
    invoke-static/range {v19 .. v19}, Lcom/isaigu/gymapp/train/utils/PartStrength;->any([Z)Z

    move-result v4

    if-eqz v4, :cond_1dd

    .line 501
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, v18

    invoke-static {v0, v4, v1, v2, v3}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondTo(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z[I)V

    .line 503
    :cond_1dd
    invoke-static {v7}, Lcom/isaigu/gymapp/train/utils/PartStrength;->any([Z)Z

    move-result v4

    if-eqz v4, :cond_1ee

    .line 504
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v5

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/train/utils/PartStrength;->follow(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z[I[I)V

    .line 506
    :cond_1ee
    invoke-static/range {p1 .. p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->mainReal(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v5

    invoke-static/range {p0 .. p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondReal(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v6

    .line 507
    const/4 v4, 0x0

    :goto_1f7
    move-object/from16 v0, v16

    array-length v8, v0

    if-ge v4, v8, :cond_22e

    .line 508
    aget-boolean v8, p2, v4

    if-eqz v8, :cond_228

    .line 509
    aget-boolean v8, v7, v4

    if-eqz v8, :cond_216

    .line 510
    mul-int/lit8 v14, v4, 0x3

    aget v8, v5, v4

    if-lez v8, :cond_22b

    aget v8, v6, v4

    int-to-double v8, v8

    aget v15, v5, v4

    int-to-double v0, v15

    move-wide/from16 v18, v0

    div-double v8, v8, v18

    :goto_214
    aput-wide v8, v12, v14

    .line 512
    :cond_216
    mul-int/lit8 v8, v4, 0x3

    add-int/lit8 v8, v8, 0x1

    aget v9, v5, v4

    int-to-double v14, v9

    aput-wide v14, v12, v8

    .line 513
    mul-int/lit8 v8, v4, 0x3

    add-int/lit8 v8, v8, 0x2

    aget v9, v6, v4

    int-to-double v14, v9

    aput-wide v14, v12, v8

    .line 507
    :cond_228
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f7

    .line 510
    :cond_22b
    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    goto :goto_214

    .line 518
    :cond_22e
    if-nez v17, :cond_16

    .line 519
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v11, v13, v10}, Lcom/isaigu/gymapp/train/utils/PartStrength;->settle(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;III)V

    goto/16 :goto_16

    :cond_239
    move-object v12, v4

    goto/16 :goto_13e

    :cond_23c
    move v5, v11

    goto/16 :goto_6b

    :cond_23f
    move-object v5, v4

    goto/16 :goto_3e
.end method

.method static percentFor(III)I
    .registers 7

    .prologue
    .line 791
    if-gtz p1, :cond_3

    .line 804
    :goto_2
    return p2

    .line 794
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

    .line 795
    :goto_12
    if-lez v0, :cond_1d

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v1

    if-le v1, p0, :cond_1d

    .line 796
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    .line 798
    :cond_1d
    :goto_1d
    const/16 v1, 0x64

    if-ge v0, v1, :cond_2a

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v1

    if-ge v1, p0, :cond_2a

    .line 799
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 801
    :cond_2a
    if-lez v0, :cond_34

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v1

    if-le v1, p0, :cond_34

    .line 802
    add-int/lit8 v0, v0, -0x1

    :cond_34
    move p2, v0

    .line 804
    goto :goto_2
.end method

.method static raisedStrength([I[ZI)I
    .registers 5

    .prologue
    .line 756
    move v0, p2

    :goto_1
    const/16 v1, 0x64

    if-gt v0, v1, :cond_11

    .line 757
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->exact([I[ZIZ)Z

    move-result v1

    if-eqz v1, :cond_e

    move p2, v0

    .line 768
    :cond_d
    :goto_d
    return p2

    .line 756
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 763
    :cond_11
    add-int/lit8 v0, p2, -0x1

    :goto_13
    if-lez v0, :cond_d

    .line 764
    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->exact([I[ZIZ)Z

    move-result v1

    if-eqz v1, :cond_1e

    move p2, v0

    .line 765
    goto :goto_d

    .line 763
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_13
.end method

.method static real(II)I
    .registers 4

    .prologue
    .line 786
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
    .line 366
    if-eqz p0, :cond_5

    .line 367
    :try_start_2
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->save(Lcom/isaigu/gymapp/bean/TrainProgram;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6

    .line 371
    :cond_5
    :goto_5
    return-void

    .line 369
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method static saveProgram(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 2

    .prologue
    .line 361
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    :goto_6
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->saveProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    .line 362
    return-void

    .line 361
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

.method public static selectedSecond(Lcom/isaigu/gymapp/train/model/TrainItem;)I
    .registers 5

    .prologue
    const/4 v0, -0x1

    .line 617
    :try_start_1
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 618
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->selection(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[Z

    move-result-object v2

    .line 619
    if-eqz v2, :cond_f

    iget-boolean v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-nez v3, :cond_10

    .line 624
    :cond_f
    :goto_f
    return v0

    .line 622
    :cond_10
    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->level2(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z)I
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_13} :catch_15

    move-result v0

    goto :goto_f

    .line 623
    :catch_15
    move-exception v1

    goto :goto_f
.end method

.method static selection(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[Z
    .registers 11

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 817
    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    if-nez v0, :cond_c

    .line 832
    :cond_b
    :goto_b
    return-object v4

    .line 820
    :cond_c
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    .line 821
    if-eqz v0, :cond_b

    iget-object v3, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v3, :cond_b

    .line 824
    iget-object v3, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v3, v3

    iget-object v5, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    array-length v5, v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 825
    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v0, v0

    new-array v3, v0, [Z

    move v5, v2

    move v6, v2

    .line 827
    :goto_25
    if-ge v5, v7, :cond_4d

    .line 828
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    array-length v0, v0

    if-ge v5, v0, :cond_49

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_49

    move v0, v1

    .line 829
    :goto_37
    iget-object v8, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    aget-boolean v8, v8, v5

    if-eqz v8, :cond_4b

    if-nez v0, :cond_4b

    move v0, v1

    :goto_40
    aput-boolean v0, v3, v5

    .line 830
    aget-boolean v0, v3, v5

    or-int/2addr v6, v0

    .line 827
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_25

    :cond_49
    move v0, v2

    .line 828
    goto :goto_37

    :cond_4b
    move v0, v2

    .line 829
    goto :goto_40

    .line 832
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

.method static settle(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;III)V
    .registers 15

    .prologue
    .line 528
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->mainReal(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v2

    .line 529
    iget-boolean v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v0, :cond_86

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondReal(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v3

    .line 530
    :goto_c
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SafeGuard;->free2(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v6

    .line 531
    invoke-static {v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->max([I)I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 532
    if-eqz v3, :cond_33

    if-nez v6, :cond_33

    .line 533
    invoke-static {v3}, Lcom/isaigu/gymapp/train/utils/PartStrength;->max([I)I

    move-result v1

    int-to-double v4, v1

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v8

    const-wide v8, 0x4062c00000000000L    # 150.0

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 535
    :cond_33
    const/16 v1, 0x64

    invoke-static {v0, v1, v2, p2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->exactFrom(II[II)I

    move-result v4

    .line 536
    iget v5, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 537
    if-eqz v3, :cond_58

    .line 538
    if-ne v4, p3, :cond_88

    move v1, p4

    .line 539
    :goto_40
    if-eqz v6, :cond_98

    const/16 v0, 0x96

    .line 540
    :goto_44
    invoke-static {v3}, Lcom/isaigu/gymapp/train/utils/PartStrength;->max([I)I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 541
    if-ne v4, p3, :cond_50

    if-eq v5, p4, :cond_58

    .line 542
    :cond_50
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1, v0, v3, p2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->exactFrom(II[II)I

    move-result v5

    .line 545
    :cond_58
    iget v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    if-ne v4, v0, :cond_60

    iget v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    if-eq v5, v0, :cond_65

    :cond_60
    move-object v0, p0

    move-object v1, p1

    .line 546
    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/train/utils/PartStrength;->write(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[I[III)V

    .line 548
    :cond_65
    iget v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    if-ne v0, p3, :cond_6d

    iget v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    if-eq v0, p4, :cond_9d

    .line 549
    :cond_6d
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartStrength;->LIFT:Ljava/util/Map;

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p3, v1, v2

    const/4 v2, 0x1

    aput p4, v1, v2

    const/4 v2, 0x2

    iget v3, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    aput v3, v1, v2

    const/4 v2, 0x3

    iget v3, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    aput v3, v1, v2

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    :goto_85
    return-void

    .line 529
    :cond_86
    const/4 v3, 0x0

    goto :goto_c

    .line 538
    :cond_88
    if-lez p3, :cond_96

    int-to-double v0, p4

    int-to-double v8, v4

    mul-double/2addr v0, v8

    int-to-double v8, p3

    div-double/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    move v1, v0

    goto :goto_40

    :cond_96
    move v1, p4

    goto :goto_40

    .line 539
    :cond_98
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/SafeLimits;->pauseCap(I)I

    move-result v0

    goto :goto_44

    .line 551
    :cond_9d
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartStrength;->LIFT:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_85
.end method

.method static without([Z[Z)[Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 312
    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    .line 313
    if-eqz p1, :cond_1d

    move v1, v2

    .line 314
    :goto_a
    array-length v3, v0

    if-ge v1, v3, :cond_1d

    .line 315
    aget-boolean v3, v0, v1

    if-eqz v3, :cond_1b

    aget-boolean v3, p1, v1

    if-nez v3, :cond_1b

    const/4 v3, 0x1

    :goto_16
    aput-boolean v3, v0, v1

    .line 314
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1b
    move v3, v2

    .line 315
    goto :goto_16

    .line 318
    :cond_1d
    return-object v0
.end method

.method static write(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[I[III)V
    .registers 12

    .prologue
    const/4 v2, 0x0

    .line 557
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v3, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 558
    if-eqz p3, :cond_26

    invoke-static {p1, v3}, Lcom/isaigu/gymapp/wearable/SecondParts;->effective(Lcom/isaigu/gymapp/bean/ProgramDataBean;[I)[I

    move-result-object v0

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    :goto_11
    move v1, v2

    .line 559
    :goto_12
    array-length v4, v3

    if-ge v1, v4, :cond_2b

    .line 560
    aget v4, p2, v1

    invoke-static {v4, p4}, Ljava/lang/Math;->min(II)I

    move-result v4

    aget v5, v3, v1

    invoke-static {v4, p4, v5}, Lcom/isaigu/gymapp/train/utils/PartStrength;->percentFor(III)I

    move-result v4

    aput v4, v3, v1

    .line 559
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 558
    :cond_26
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/SecondParts;->get(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v0

    goto :goto_11

    .line 562
    :cond_2b
    iput p4, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 563
    if-eqz p3, :cond_4b

    .line 564
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondCap(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v1

    invoke-static {p5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 565
    :goto_37
    array-length v4, v3

    if-ge v2, v4, :cond_4b

    .line 566
    aget v4, p3, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    aget v5, v0, v2

    invoke-static {v4, v1, v5}, Lcom/isaigu/gymapp/train/utils/PartStrength;->percentFor(III)I

    move-result v4

    aput v4, v0, v2

    .line 565
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 569
    :cond_4b
    if-eqz v0, :cond_54

    array-length v1, v0

    array-length v2, v3

    if-ne v1, v2, :cond_54

    .line 570
    invoke-static {p1, v3, v0}, Lcom/isaigu/gymapp/wearable/SecondParts;->set(Lcom/isaigu/gymapp/bean/ProgramDataBean;[I[I)V

    .line 572
    :cond_54
    iget v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    if-eq p5, v0, :cond_5d

    .line 573
    iput p5, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 574
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->saveProgram(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 576
    :cond_5d
    return-void
.end method

.method static yellow(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z)[Z
    .registers 10

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 298
    if-eqz p1, :cond_8

    iget-boolean v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-nez v0, :cond_a

    :cond_8
    move-object v0, v5

    .line 308
    :goto_9
    return-object v0

    .line 301
    :cond_a
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->active(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v6

    .line 302
    array-length v0, p2

    new-array v4, v0, [Z

    move v0, v1

    move v2, v1

    .line 304
    :goto_13
    array-length v3, p2

    if-ge v0, v3, :cond_2d

    .line 305
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

    .line 306
    aget-boolean v3, v4, v0

    or-int/2addr v2, v3

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_2b
    move v3, v1

    .line 305
    goto :goto_23

    .line 308
    :cond_2d
    if-eqz v2, :cond_31

    move-object v0, v4

    goto :goto_9

    :cond_31
    move-object v0, v5

    goto :goto_9
.end method
