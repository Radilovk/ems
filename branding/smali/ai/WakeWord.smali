.class public final Lcom/isaigu/gymapp/ai/WakeWord;
.super Ljava/lang/Object;
.source "WakeWord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/WakeWord$Front;,
        Lcom/isaigu/gymapp/ai/WakeWord$Finder;,
        Lcom/isaigu/gymapp/ai/WakeWord$Word;
    }
.end annotation


# static fields
.field static final DEFAULT_THR:I = 0x578

.field static final DIM:I = 0xd

.field static final FRAME:I = 0x190

.field static final HOP:I = 0xa0

.field static final INF:I = 0x3fffffff

.field public static final LOOSE:F = 1.45f

.field static final LOUD_MARGIN:F = 10.0f

.field static final MARGIN:I = 0x4b

.field static final MAXF:I = 0x80

.field static final MAXFALSE:I = 0x6

.field static final MAXT:I = 0x3

.field public static final NATIVE:F = 1.15f

.field static final NBIN:I = 0x101

.field static final NCEP:I = 0xc

.field static final NFFT:I = 0x200

.field static final NMEL:I = 0x1a

.field public static final NONE:I = 0x0

.field public static final RECORDED:I = 0x2

.field static final RING:I = 0x12c

.field static final SAFETY:F = 1.32f

.field static final SENS_MAX:F = 1.0f

.field static final SENS_MIN:F = 0.7f

.field public static final SKIPPED:I = 0x3

.field static final SR:I = 0x3e80

.field public static final THR_CAP:I = 0x6a4

.field public static final WAKE:I = 0x1

.field public static final WIDE_SPREAD:I = 0x898


# instance fields
.field private final bands:[F

.field public volatile cloud:Z

.field private final edb:[F

.field final falseNeg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/WakeWord$Word;",
            ">;"
        }
    .end annotation
.end field

.field final finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

.field private fired:Z

.field final front:Lcom/isaigu/gymapp/ai/WakeWord$Front;

.field public lastD:I

.field public lastLoud:F

.field private lastWakeD:I

.field private lastWakeWord:Lcom/isaigu/gymapp/ai/WakeWord$Word;

.field public volatile loose:F

.field public loud:F

.field private loudN:I

.field private loudSum:F

.field public miss:Ljava/lang/String;

.field final neg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/WakeWord$Word;",
            ">;"
        }
    .end annotation
.end field

.field recording:Z

.field private recordingNeg:Z

.field public sens:F

.field thr:I

.field final tpl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/WakeWord$Word;",
            ">;"
        }
    .end annotation
.end field

.field public wakeFrame:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const v2, 0x3fffffff    # 1.9999999f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->loose:F

    .line 411
    new-instance v0, Lcom/isaigu/gymapp/ai/WakeWord$Front;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/WakeWord$Front;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->front:Lcom/isaigu/gymapp/ai/WakeWord$Front;

    .line 412
    new-instance v0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/WakeWord$Finder;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    .line 413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->tpl:Ljava/util/List;

    .line 415
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->neg:Ljava/util/List;

    .line 417
    const/16 v0, 0x578

    iput v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->thr:I

    .line 419
    iput v1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->sens:F

    .line 425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->falseNeg:Ljava/util/List;

    .line 429
    iput v2, p0, Lcom/isaigu/gymapp/ai/WakeWord;->lastWakeD:I

    .line 436
    iput v2, p0, Lcom/isaigu/gymapp/ai/WakeWord;->lastD:I

    .line 439
    const/16 v0, 0x1a

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->bands:[F

    .line 440
    const/4 v0, 0x1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->edb:[F

    return-void
.end method

.method static dtw(Lcom/isaigu/gymapp/ai/WakeWord$Word;Lcom/isaigu/gymapp/ai/WakeWord$Word;I)I
    .registers 23

    .prologue
    .line 370
    move-object/from16 v0, p0

    iget v11, v0, Lcom/isaigu/gymapp/ai/WakeWord$Word;->n:I

    move-object/from16 v0, p1

    iget v12, v0, Lcom/isaigu/gymapp/ai/WakeWord$Word;->n:I

    .line 371
    const/4 v2, 0x2

    if-lt v11, v2, :cond_16

    const/4 v2, 0x2

    if-lt v12, v2, :cond_16

    mul-int/lit8 v2, v12, 0x2

    if-gt v11, v2, :cond_16

    mul-int/lit8 v2, v11, 0x2

    if-le v12, v2, :cond_1a

    .line 372
    :cond_16
    const v2, 0x3fffffff    # 1.9999999f

    .line 406
    :goto_19
    return v2

    .line 374
    :cond_1a
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    add-int/lit8 v13, v2, 0x4

    .line 375
    add-int/lit8 v2, v12, 0x1

    new-array v10, v2, [I

    add-int/lit8 v2, v12, 0x1

    new-array v5, v2, [I

    .line 376
    const v2, 0x3fffffff    # 1.9999999f

    invoke-static {v10, v2}, Ljava/util/Arrays;->fill([II)V

    .line 377
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v10, v2

    .line 378
    const v2, 0x3fffffff    # 1.9999999f

    move/from16 v0, p2

    if-lt v0, v2, :cond_8d

    const-wide/32 v2, 0x3fffffff

    .line 379
    :goto_3e
    const/4 v4, 0x1

    move v8, v4

    move-object v9, v5

    :goto_41
    if-gt v8, v11, :cond_f8

    .line 380
    add-int/lit8 v4, v8, -0x1

    add-int/lit8 v5, v12, -0x1

    mul-int/2addr v4, v5

    add-int/lit8 v5, v11, -0x1

    div-int/2addr v4, v5

    add-int/lit8 v5, v4, 0x1

    const/4 v4, 0x1

    sub-int v6, v5, v13

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v5, v13

    invoke-static {v12, v5}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 381
    const v5, 0x3fffffff    # 1.9999999f

    invoke-static {v9, v5}, Ljava/util/Arrays;->fill([II)V

    .line 382
    const v5, 0x3fffffff    # 1.9999999f

    move v6, v4

    move v7, v5

    .line 383
    :goto_64
    if-gt v6, v14, :cond_df

    .line 384
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/WakeWord$Word;->f:[[B

    add-int/lit8 v5, v8, -0x1

    aget-object v15, v4, v5

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/WakeWord$Word;->f:[[B

    add-int/lit8 v5, v6, -0x1

    aget-object v16, v4, v5

    .line 385
    const/4 v5, 0x0

    .line 386
    const/4 v4, 0x0

    :goto_78
    const/16 v17, 0xd

    move/from16 v0, v17

    if-ge v4, v0, :cond_98

    .line 387
    aget-byte v17, v15, v4

    aget-byte v18, v16, v4

    sub-int v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v17

    add-int v5, v5, v17

    .line 386
    add-int/lit8 v4, v4, 0x1

    goto :goto_78

    .line 378
    :cond_8d
    move/from16 v0, p2

    int-to-long v2, v0

    add-int v4, v11, v12

    int-to-long v6, v4

    mul-long/2addr v2, v6

    const-wide/16 v6, 0x10

    div-long/2addr v2, v6

    goto :goto_3e

    .line 389
    :cond_98
    add-int/lit8 v4, v6, -0x1

    aget v4, v10, v4

    const v15, 0x3fffffff    # 1.9999999f

    if-ge v4, v15, :cond_db

    add-int/lit8 v4, v6, -0x1

    aget v4, v10, v4

    mul-int/lit8 v15, v5, 0x2

    add-int/2addr v4, v15

    .line 390
    :goto_a8
    aget v15, v10, v6

    const v16, 0x3fffffff    # 1.9999999f

    move/from16 v0, v16

    if-ge v15, v0, :cond_b9

    aget v15, v10, v6

    add-int/2addr v15, v5

    if-ge v15, v4, :cond_b9

    .line 391
    aget v4, v10, v6

    add-int/2addr v4, v5

    .line 393
    :cond_b9
    add-int/lit8 v15, v6, -0x1

    aget v15, v9, v15

    const v16, 0x3fffffff    # 1.9999999f

    move/from16 v0, v16

    if-ge v15, v0, :cond_d0

    add-int/lit8 v15, v6, -0x1

    aget v15, v9, v15

    add-int/2addr v15, v5

    if-ge v15, v4, :cond_d0

    .line 394
    add-int/lit8 v4, v6, -0x1

    aget v4, v9, v4

    add-int/2addr v4, v5

    .line 396
    :cond_d0
    aput v4, v9, v6

    .line 397
    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 383
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v7, v5

    goto :goto_64

    .line 389
    :cond_db
    const v4, 0x3fffffff    # 1.9999999f

    goto :goto_a8

    .line 399
    :cond_df
    const v4, 0x3fffffff    # 1.9999999f

    if-ge v7, v4, :cond_e9

    int-to-long v4, v7

    cmp-long v4, v4, v2

    if-lez v4, :cond_ee

    .line 400
    :cond_e9
    const v2, 0x3fffffff    # 1.9999999f

    goto/16 :goto_19

    .line 379
    :cond_ee
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    move-object/from16 v19, v10

    move-object v10, v9

    move-object/from16 v9, v19

    goto/16 :goto_41

    .line 406
    :cond_f8
    aget v2, v10, v12

    const v3, 0x3fffffff    # 1.9999999f

    if-lt v2, v3, :cond_104

    const v2, 0x3fffffff    # 1.9999999f

    goto/16 :goto_19

    :cond_104
    aget v2, v10, v12

    int-to-long v2, v2

    const-wide/16 v4, 0x10

    mul-long/2addr v2, v4

    add-int v4, v11, v12

    int-to-long v4, v4

    div-long/2addr v2, v4

    long-to-int v2, v2

    goto/16 :goto_19
.end method

.method private static read([B[IILjava/util/List;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[II",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/WakeWord$Word;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 735
    move v1, v0

    :goto_2
    if-ge v1, p2, :cond_30

    aget v2, p1, v0

    array-length v3, p0

    if-ge v2, v3, :cond_30

    .line 736
    aget v2, p1, v0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 737
    mul-int/lit8 v2, v2, 0xd

    add-int/lit8 v2, v2, 0x1

    .line 738
    aget v3, p1, v0

    add-int/2addr v3, v2

    array-length v4, p0

    if-le v3, v4, :cond_1a

    .line 746
    :goto_19
    return v0

    .line 741
    :cond_1a
    new-array v3, v2, [B

    .line 742
    aget v4, p1, v0

    invoke-static {p0, v4, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 743
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/WakeWord$Word;->unpack([B)Lcom/isaigu/gymapp/ai/WakeWord$Word;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 744
    aget v3, p1, v0

    add-int/2addr v2, v3

    aput v2, p1, v0

    .line 735
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 746
    :cond_30
    const/4 v0, 0x1

    goto :goto_19
.end method

.method private woke(Lcom/isaigu/gymapp/ai/WakeWord$Word;)V
    .registers 3

    .prologue
    .line 586
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->lastWakeWord:Lcom/isaigu/gymapp/ai/WakeWord$Word;

    .line 587
    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->lastD:I

    iput v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->lastWakeD:I

    .line 588
    return-void
.end method


# virtual methods
.method accept(Lcom/isaigu/gymapp/ai/WakeWord$Word;)Z
    .registers 3

    .prologue
    .line 611
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/isaigu/gymapp/ai/WakeWord;->accept(Lcom/isaigu/gymapp/ai/WakeWord$Word;F)Z

    move-result v0

    return v0
.end method

.method accept(Lcom/isaigu/gymapp/ai/WakeWord$Word;F)Z
    .registers 15

    .prologue
    const/4 v5, 0x1

    const v2, 0x3fffffff    # 1.9999999f

    const/4 v4, 0x0

    .line 615
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/ai/WakeWord;->match(Lcom/isaigu/gymapp/ai/WakeWord$Word;)I

    move-result v6

    .line 616
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/WakeWord;->threshold()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    if-le v6, v0, :cond_13

    .line 642
    :cond_12
    :goto_12
    return v4

    .line 619
    :cond_13
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->cloud:Z

    if-eqz v0, :cond_1f

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1f

    move v4, v5

    .line 620
    goto :goto_12

    .line 622
    :cond_1f
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->falseNeg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/WakeWord$Word;

    .line 623
    invoke-static {p1, v0, v2}, Lcom/isaigu/gymapp/ai/WakeWord;->dtw(Lcom/isaigu/gymapp/ai/WakeWord$Word;Lcom/isaigu/gymapp/ai/WakeWord$Word;I)I

    move-result v0

    if-ge v0, v6, :cond_25

    goto :goto_12

    .line 628
    :cond_38
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->neg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_3f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/WakeWord$Word;

    .line 629
    invoke-static {p1, v0, v2}, Lcom/isaigu/gymapp/ai/WakeWord;->dtw(Lcom/isaigu/gymapp/ai/WakeWord$Word;Lcom/isaigu/gymapp/ai/WakeWord$Word;I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v0

    .line 630
    goto :goto_3f

    .line 632
    :cond_55
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->neg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5b
    :goto_5b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/WakeWord$Word;

    .line 633
    iget v3, v0, Lcom/isaigu/gymapp/ai/WakeWord$Word;->n:I

    iget v8, p1, Lcom/isaigu/gymapp/ai/WakeWord$Word;->n:I

    add-int/lit8 v8, v8, 0x2

    if-le v3, v8, :cond_5b

    .line 634
    new-instance v8, Lcom/isaigu/gymapp/ai/WakeWord$Word;

    invoke-direct {v8}, Lcom/isaigu/gymapp/ai/WakeWord$Word;-><init>()V

    .line 635
    iget v3, v0, Lcom/isaigu/gymapp/ai/WakeWord$Word;->n:I

    iget v9, p1, Lcom/isaigu/gymapp/ai/WakeWord$Word;->n:I

    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v8, Lcom/isaigu/gymapp/ai/WakeWord$Word;->n:I

    move v3, v4

    .line 636
    :goto_7f
    iget v9, v8, Lcom/isaigu/gymapp/ai/WakeWord$Word;->n:I

    if-ge v3, v9, :cond_93

    .line 637
    iget-object v9, v0, Lcom/isaigu/gymapp/ai/WakeWord$Word;->f:[[B

    aget-object v9, v9, v3

    iget-object v10, v8, Lcom/isaigu/gymapp/ai/WakeWord$Word;->f:[[B

    aget-object v10, v10, v3

    const/16 v11, 0xd

    invoke-static {v9, v4, v10, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 636
    add-int/lit8 v3, v3, 0x1

    goto :goto_7f

    .line 639
    :cond_93
    invoke-static {p1, v8, v2}, Lcom/isaigu/gymapp/ai/WakeWord;->dtw(Lcom/isaigu/gymapp/ai/WakeWord$Word;Lcom/isaigu/gymapp/ai/WakeWord$Word;I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_5b

    .line 642
    :cond_9c
    if-ge v1, v2, :cond_aa

    int-to-long v2, v6

    const-wide/16 v6, 0x64

    mul-long/2addr v2, v6

    const-wide/16 v6, 0x4b

    int-to-long v0, v1

    mul-long/2addr v0, v6

    cmp-long v0, v2, v0

    if-gtz v0, :cond_12

    :cond_aa
    move v4, v5

    goto/16 :goto_12
.end method

.method public clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 503
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->tpl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 504
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->neg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 505
    const/16 v0, 0x578

    iput v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->thr:I

    .line 506
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->falseNeg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 507
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->sens:F

    .line 508
    iput v1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->loud:F

    .line 509
    iput v1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->loudSum:F

    .line 510
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->loudN:I

    .line 511
    return-void
.end method

.method public examples()I
    .registers 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->tpl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public feedback(Z)V
    .registers 5

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 595
    if-eqz p1, :cond_1a

    .line 596
    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->sens:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_17

    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->sens:F

    const v1, 0x3f851eb8    # 1.04f

    mul-float/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_14
    iput v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->sens:F

    .line 608
    :cond_16
    :goto_16
    return-void

    .line 596
    :cond_17
    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->sens:F

    goto :goto_14

    .line 599
    :cond_1a
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->lastWakeWord:Lcom/isaigu/gymapp/ai/WakeWord$Word;

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->lastWakeD:I

    const v1, 0x3fffffff    # 1.9999999f

    if-eq v0, v1, :cond_16

    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->lastWakeD:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/WakeWord;->threshold()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_16

    .line 602
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->falseNeg:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->lastWakeWord:Lcom/isaigu/gymapp/ai/WakeWord$Word;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->falseNeg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_4b

    .line 604
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->falseNeg:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 606
    :cond_4b
    const v0, 0x3f333333    # 0.7f

    iget v1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->sens:F

    const v2, 0x3f6b851f    # 0.92f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->sens:F

    .line 607
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->lastWakeWord:Lcom/isaigu/gymapp/ai/WakeWord$Word;

    goto :goto_16
.end method

.method public floorDb()F
    .registers 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget v0, v0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->floorDb:F

    return v0
.end method

.method public hasContrast()Z
    .registers 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->neg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public load([B)Z
    .registers 10

    .prologue
    const/4 v7, 0x3

    const/4 v1, 0x0

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 712
    if-eqz p1, :cond_12

    array-length v0, p1

    if-lt v0, v6, :cond_12

    aget-byte v0, p1, v3

    if-lt v0, v2, :cond_12

    aget-byte v0, p1, v3

    if-le v0, v7, :cond_13

    .line 731
    :cond_12
    :goto_12
    return v3

    .line 715
    :cond_13
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->tpl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 716
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->neg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 717
    new-array v0, v2, [I

    aput v6, v0, v3

    .line 718
    aget-byte v4, p1, v2

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/WakeWord;->tpl:Ljava/util/List;

    invoke-static {p1, v0, v4, v5}, Lcom/isaigu/gymapp/ai/WakeWord;->read([B[IILjava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 721
    aget-byte v4, p1, v3

    if-lt v4, v6, :cond_44

    aget v4, v0, v3

    array-length v5, p1

    if-ge v4, v5, :cond_44

    .line 722
    aget v4, v0, v3

    add-int/lit8 v5, v4, 0x1

    aput v5, v0, v3

    aget-byte v4, p1, v4

    .line 723
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/WakeWord;->neg:Ljava/util/List;

    invoke-static {p1, v0, v4, v5}, Lcom/isaigu/gymapp/ai/WakeWord;->read([B[IILjava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 727
    :cond_44
    aget-byte v4, p1, v3

    if-ne v4, v7, :cond_66

    aget v4, v0, v3

    array-length v5, p1

    if-ge v4, v5, :cond_66

    aget v0, v0, v3

    aget-byte v0, p1, v0

    int-to-float v0, v0

    :goto_52
    iput v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->loud:F

    .line 728
    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->loud:F

    iput v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->loudSum:F

    .line 729
    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->loud:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_68

    move v0, v2

    :goto_5f
    iput v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->loudN:I

    .line 730
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/WakeWord;->retune()V

    move v3, v2

    .line 731
    goto :goto_12

    :cond_66
    move v0, v1

    .line 727
    goto :goto_52

    :cond_68
    move v0, v3

    .line 729
    goto :goto_5f
.end method

.method loudEnough(F)Z
    .registers 5

    .prologue
    .line 456
    iput p1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->lastLoud:F

    .line 459
    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->loose:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1e

    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->loud:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_1e

    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->lastLoud:F

    iget v1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->loud:F

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/WakeWord;->loudMargin()F

    move-result v2

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method loudMargin()F
    .registers 5

    .prologue
    .line 464
    const/high16 v0, 0x41200000    # 10.0f

    const/4 v1, 0x0

    iget v2, p0, Lcom/isaigu/gymapp/ai/WakeWord;->sens:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x41f00000    # 30.0f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method match(Lcom/isaigu/gymapp/ai/WakeWord$Word;)I
    .registers 5

    .prologue
    .line 646
    const v0, 0x3fffffff    # 1.9999999f

    .line 647
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->tpl:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/WakeWord$Word;

    .line 648
    invoke-static {p1, v0, v1}, Lcom/isaigu/gymapp/ai/WakeWord;->dtw(Lcom/isaigu/gymapp/ai/WakeWord$Word;Lcom/isaigu/gymapp/ai/WakeWord$Word;I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v0

    .line 649
    goto :goto_a

    .line 650
    :cond_20
    iput v1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->lastD:I

    .line 651
    return v1
.end method

.method meanLen()I
    .registers 4

    .prologue
    .line 577
    const/4 v0, 0x0

    .line 578
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->tpl:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/WakeWord$Word;

    .line 579
    iget v0, v0, Lcom/isaigu/gymapp/ai/WakeWord$Word;->n:I

    add-int/2addr v0, v1

    move v1, v0

    .line 580
    goto :goto_8

    .line 581
    :cond_19
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->tpl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    const/16 v0, 0x28

    :goto_23
    return v0

    :cond_24
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->tpl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int v0, v1, v0

    goto :goto_23
.end method

.method public push(S)I
    .registers 12

    .prologue
    const/4 v8, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 515
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->front:Lcom/isaigu/gymapp/ai/WakeWord$Front;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->bands:[F

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/WakeWord;->edb:[F

    invoke-virtual {v0, p1, v1, v2}, Lcom/isaigu/gymapp/ai/WakeWord$Front;->push(S[F[F)Z

    move-result v0

    if-nez v0, :cond_10

    .line 573
    :cond_f
    :goto_f
    return v7

    .line 518
    :cond_10
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->recording:Z

    iput-boolean v1, v0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->lenient:Z

    .line 519
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->loose:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_41

    move v0, v6

    :goto_21
    iput-boolean v0, v1, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->eager:Z

    .line 520
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->bands:[F

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/WakeWord;->edb:[F

    aget v2, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->frame([FF)Z

    move-result v0

    .line 521
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->skipped:Z

    if-eqz v1, :cond_43

    .line 522
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iput-boolean v7, v0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->skipped:Z

    .line 523
    iput-boolean v7, p0, Lcom/isaigu/gymapp/ai/WakeWord;->fired:Z

    .line 524
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->recording:Z

    if-eqz v0, :cond_f

    move v7, v8

    goto :goto_f

    :cond_41
    move v0, v7

    .line 519
    goto :goto_21

    .line 526
    :cond_43
    if-eqz v0, :cond_11d

    .line 527
    iget-boolean v9, p0, Lcom/isaigu/gymapp/ai/WakeWord;->fired:Z

    .line 528
    iput-boolean v7, p0, Lcom/isaigu/gymapp/ai/WakeWord;->fired:Z

    .line 529
    new-instance v1, Lcom/isaigu/gymapp/ai/WakeWord$Word;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/WakeWord$Word;-><init>()V

    .line 530
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/WakeWord;->front:Lcom/isaigu/gymapp/ai/WakeWord$Front;

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget v3, v3, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->w0:I

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget v4, v4, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->w1:I

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget v5, v5, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->wPeak:F

    invoke-virtual/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->span(Lcom/isaigu/gymapp/ai/WakeWord$Word;Lcom/isaigu/gymapp/ai/WakeWord$Front;IIF)V

    .line 531
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->recording:Z

    if-eqz v0, :cond_9d

    .line 532
    iput-boolean v7, p0, Lcom/isaigu/gymapp/ai/WakeWord;->recording:Z

    .line 533
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->recordingNeg:Z

    if-eqz v0, :cond_9a

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->neg:Ljava/util/List;

    .line 534
    :goto_6d
    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/WakeWord;->recordingNeg:Z

    if-nez v2, :cond_88

    .line 535
    iget v2, p0, Lcom/isaigu/gymapp/ai/WakeWord;->loudSum:F

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget v3, v3, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->wPeak:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/isaigu/gymapp/ai/WakeWord;->loudSum:F

    .line 536
    iget v2, p0, Lcom/isaigu/gymapp/ai/WakeWord;->loudN:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/ai/WakeWord;->loudN:I

    .line 537
    iget v2, p0, Lcom/isaigu/gymapp/ai/WakeWord;->loudSum:F

    iget v3, p0, Lcom/isaigu/gymapp/ai/WakeWord;->loudN:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/isaigu/gymapp/ai/WakeWord;->loud:F

    .line 539
    :cond_88
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v8, :cond_91

    .line 540
    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 542
    :cond_91
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/WakeWord;->retune()V

    .line 544
    const/4 v7, 0x2

    goto/16 :goto_f

    .line 533
    :cond_9a
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->tpl:Ljava/util/List;

    goto :goto_6d

    .line 546
    :cond_9d
    if-nez v9, :cond_f

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/WakeWord;->ready()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 547
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget v0, v0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->wPeak:F

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ai/WakeWord;->loudEnough(F)Z

    move-result v0

    .line 548
    if-eqz v0, :cond_c3

    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->loose:F

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/ai/WakeWord;->accept(Lcom/isaigu/gymapp/ai/WakeWord$Word;F)Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 549
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget v0, v0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->w1:I

    iput v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->wakeFrame:I

    .line 550
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/ai/WakeWord;->woke(Lcom/isaigu/gymapp/ai/WakeWord$Word;)V

    move v7, v6

    .line 551
    goto/16 :goto_f

    .line 553
    :cond_c3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "word not taken: d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->lastD:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/WakeWord;->threshold()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " loud="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget v1, v1, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->wPeak:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " need>="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->loud:F

    .line 554
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/WakeWord;->loudMargin()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->sens:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->miss:Ljava/lang/String;

    goto/16 :goto_f

    .line 559
    :cond_11d
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->recording:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->fired:Z

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/WakeWord;->ready()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget v0, v0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->state:I

    if-ne v0, v6, :cond_f

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget v0, v0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->t:I

    rem-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_f

    .line 560
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget v0, v0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->t:I

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget v1, v1, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->s0:I

    sub-int/2addr v0, v1

    .line 561
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/WakeWord;->meanLen()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    .line 562
    int-to-float v2, v1

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    if-lt v0, v2, :cond_f

    int-to-float v1, v1

    const v2, 0x3fa66666    # 1.3f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    if-gt v0, v1, :cond_f

    .line 563
    new-instance v1, Lcom/isaigu/gymapp/ai/WakeWord$Word;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/WakeWord$Word;-><init>()V

    .line 564
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/WakeWord;->front:Lcom/isaigu/gymapp/ai/WakeWord$Front;

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget v3, v3, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->s0:I

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget v4, v4, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->t:I

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget v5, v5, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->peak:F

    invoke-virtual/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->span(Lcom/isaigu/gymapp/ai/WakeWord$Word;Lcom/isaigu/gymapp/ai/WakeWord$Front;IIF)V

    .line 565
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget v0, v0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->peak:F

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ai/WakeWord;->loudEnough(F)Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->loose:F

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/ai/WakeWord;->accept(Lcom/isaigu/gymapp/ai/WakeWord$Word;F)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 566
    iput-boolean v6, p0, Lcom/isaigu/gymapp/ai/WakeWord;->fired:Z

    .line 567
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget v0, v0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->t:I

    iput v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->wakeFrame:I

    .line 568
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/ai/WakeWord;->woke(Lcom/isaigu/gymapp/ai/WakeWord$Word;)V

    move v7, v6

    .line 569
    goto/16 :goto_f
.end method

.method public ready()Z
    .registers 3

    .prologue
    .line 473
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->tpl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public record()V
    .registers 3

    .prologue
    .line 486
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget v1, v1, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->t:I

    add-int/lit8 v1, v1, 0x23

    iput v1, v0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->hold:I

    .line 487
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->recording:Z

    .line 488
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->recordingNeg:Z

    .line 489
    return-void
.end method

.method public recordContrast()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 493
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget v1, v1, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->t:I

    add-int/lit8 v1, v1, 0x23

    iput v1, v0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->hold:I

    .line 494
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/WakeWord;->recording:Z

    .line 495
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/WakeWord;->recordingNeg:Z

    .line 496
    return-void
.end method

.method retune()V
    .registers 11

    .prologue
    const v9, 0x3fffffff    # 1.9999999f

    const/4 v0, 0x0

    .line 655
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->tpl:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    .line 656
    const/high16 v3, 0x44af0000    # 1400.0f

    .line 657
    const/4 v1, 0x2

    if-lt v8, v1, :cond_53

    .line 658
    const-wide/16 v4, 0x0

    move v7, v0

    move v2, v0

    .line 660
    :goto_13
    if-ge v7, v8, :cond_3d

    .line 661
    add-int/lit8 v0, v7, 0x1

    move v6, v0

    :goto_18
    if-ge v6, v8, :cond_39

    .line 662
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->tpl:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/WakeWord$Word;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->tpl:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/ai/WakeWord$Word;

    invoke-static {v0, v1, v9}, Lcom/isaigu/gymapp/ai/WakeWord;->dtw(Lcom/isaigu/gymapp/ai/WakeWord$Word;Lcom/isaigu/gymapp/ai/WakeWord$Word;I)I

    move-result v0

    .line 663
    if-ge v0, v9, :cond_55

    .line 664
    int-to-long v0, v0

    add-long/2addr v4, v0

    .line 665
    add-int/lit8 v0, v2, 0x1

    .line 661
    :goto_34
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move v2, v0

    goto :goto_18

    .line 660
    :cond_39
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_13

    .line 669
    :cond_3d
    if-lez v2, :cond_53

    .line 670
    const/high16 v0, 0x40200000    # 2.5f

    long-to-float v1, v4

    mul-float/2addr v0, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    .line 675
    :goto_45
    const/16 v1, 0x6a4

    const v2, 0x3fa8f5c3    # 1.32f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->thr:I

    .line 676
    return-void

    :cond_53
    move v0, v3

    goto :goto_45

    :cond_55
    move v0, v2

    goto :goto_34
.end method

.method public save()[B
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 695
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 696
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 697
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->tpl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 698
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->tpl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/WakeWord$Word;

    .line 699
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/WakeWord$Word;->pack()[B

    move-result-object v0

    .line 700
    array-length v3, v0

    invoke-virtual {v1, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_19

    .line 702
    :cond_2e
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->neg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 703
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->neg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/WakeWord$Word;

    .line 704
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/WakeWord$Word;->pack()[B

    move-result-object v0

    .line 705
    array-length v3, v0

    invoke-virtual {v1, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3d

    .line 707
    :cond_52
    const/16 v0, 0x7f

    iget v2, p0, Lcom/isaigu/gymapp/ai/WakeWord;->loud:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 708
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public spreadOfExamples()I
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 680
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->tpl:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_b

    .line 689
    :goto_a
    return v0

    :cond_b
    move v2, v0

    move v1, v0

    .line 684
    :goto_d
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->tpl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_45

    .line 685
    add-int/lit8 v0, v2, 0x1

    move v4, v0

    move v3, v1

    :goto_19
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->tpl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_40

    .line 686
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->tpl:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/WakeWord$Word;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->tpl:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/ai/WakeWord$Word;

    const v5, 0x3fffffff    # 1.9999999f

    invoke-static {v0, v1, v5}, Lcom/isaigu/gymapp/ai/WakeWord;->dtw(Lcom/isaigu/gymapp/ai/WakeWord$Word;Lcom/isaigu/gymapp/ai/WakeWord$Word;I)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 685
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_19

    .line 684
    :cond_40
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v1, v3

    goto :goto_d

    :cond_45
    move v0, v1

    .line 689
    goto :goto_a
.end method

.method public threshold()I
    .registers 3

    .prologue
    .line 481
    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->thr:I

    int-to-float v0, v0

    iget v1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->sens:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
