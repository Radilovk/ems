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

.field static final LOUD_MARGIN:F = 10.0f

.field static final MARGIN:I = 0x4b

.field static final MAXF:I = 0x80

.field static final MAXFALSE:I = 0x6

.field static final MAXT:I = 0x3

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
    .registers 3

    .prologue
    const v1, 0x3fffffff    # 1.9999999f

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    new-instance v0, Lcom/isaigu/gymapp/ai/WakeWord$Front;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/WakeWord$Front;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->front:Lcom/isaigu/gymapp/ai/WakeWord$Front;

    .line 398
    new-instance v0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/WakeWord$Finder;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->tpl:Ljava/util/List;

    .line 401
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->neg:Ljava/util/List;

    .line 403
    const/16 v0, 0x578

    iput v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->thr:I

    .line 405
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->sens:F

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->falseNeg:Ljava/util/List;

    .line 415
    iput v1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->lastWakeD:I

    .line 422
    iput v1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->lastD:I

    .line 425
    const/16 v0, 0x1a

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->bands:[F

    .line 426
    const/4 v0, 0x1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->edb:[F

    return-void
.end method

.method static dtw(Lcom/isaigu/gymapp/ai/WakeWord$Word;Lcom/isaigu/gymapp/ai/WakeWord$Word;I)I
    .registers 23

    .prologue
    .line 356
    move-object/from16 v0, p0

    iget v11, v0, Lcom/isaigu/gymapp/ai/WakeWord$Word;->n:I

    move-object/from16 v0, p1

    iget v12, v0, Lcom/isaigu/gymapp/ai/WakeWord$Word;->n:I

    .line 357
    const/4 v2, 0x2

    if-lt v11, v2, :cond_16

    const/4 v2, 0x2

    if-lt v12, v2, :cond_16

    mul-int/lit8 v2, v12, 0x2

    if-gt v11, v2, :cond_16

    mul-int/lit8 v2, v11, 0x2

    if-le v12, v2, :cond_1a

    .line 358
    :cond_16
    const v2, 0x3fffffff    # 1.9999999f

    .line 392
    :goto_19
    return v2

    .line 360
    :cond_1a
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    add-int/lit8 v13, v2, 0x4

    .line 361
    add-int/lit8 v2, v12, 0x1

    new-array v10, v2, [I

    add-int/lit8 v2, v12, 0x1

    new-array v5, v2, [I

    .line 362
    const v2, 0x3fffffff    # 1.9999999f

    invoke-static {v10, v2}, Ljava/util/Arrays;->fill([II)V

    .line 363
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v10, v2

    .line 364
    const v2, 0x3fffffff    # 1.9999999f

    move/from16 v0, p2

    if-lt v0, v2, :cond_8d

    const-wide/32 v2, 0x3fffffff

    .line 365
    :goto_3e
    const/4 v4, 0x1

    move v8, v4

    move-object v9, v5

    :goto_41
    if-gt v8, v11, :cond_f8

    .line 366
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

    .line 367
    const v5, 0x3fffffff    # 1.9999999f

    invoke-static {v9, v5}, Ljava/util/Arrays;->fill([II)V

    .line 368
    const v5, 0x3fffffff    # 1.9999999f

    move v6, v4

    move v7, v5

    .line 369
    :goto_64
    if-gt v6, v14, :cond_df

    .line 370
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/WakeWord$Word;->f:[[B

    add-int/lit8 v5, v8, -0x1

    aget-object v15, v4, v5

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/WakeWord$Word;->f:[[B

    add-int/lit8 v5, v6, -0x1

    aget-object v16, v4, v5

    .line 371
    const/4 v5, 0x0

    .line 372
    const/4 v4, 0x0

    :goto_78
    const/16 v17, 0xd

    move/from16 v0, v17

    if-ge v4, v0, :cond_98

    .line 373
    aget-byte v17, v15, v4

    aget-byte v18, v16, v4

    sub-int v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v17

    add-int v5, v5, v17

    .line 372
    add-int/lit8 v4, v4, 0x1

    goto :goto_78

    .line 364
    :cond_8d
    move/from16 v0, p2

    int-to-long v2, v0

    add-int v4, v11, v12

    int-to-long v6, v4

    mul-long/2addr v2, v6

    const-wide/16 v6, 0x10

    div-long/2addr v2, v6

    goto :goto_3e

    .line 375
    :cond_98
    add-int/lit8 v4, v6, -0x1

    aget v4, v10, v4

    const v15, 0x3fffffff    # 1.9999999f

    if-ge v4, v15, :cond_db

    add-int/lit8 v4, v6, -0x1

    aget v4, v10, v4

    mul-int/lit8 v15, v5, 0x2

    add-int/2addr v4, v15

    .line 376
    :goto_a8
    aget v15, v10, v6

    const v16, 0x3fffffff    # 1.9999999f

    move/from16 v0, v16

    if-ge v15, v0, :cond_b9

    aget v15, v10, v6

    add-int/2addr v15, v5

    if-ge v15, v4, :cond_b9

    .line 377
    aget v4, v10, v6

    add-int/2addr v4, v5

    .line 379
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

    .line 380
    add-int/lit8 v4, v6, -0x1

    aget v4, v9, v4

    add-int/2addr v4, v5

    .line 382
    :cond_d0
    aput v4, v9, v6

    .line 383
    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 369
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v7, v5

    goto :goto_64

    .line 375
    :cond_db
    const v4, 0x3fffffff    # 1.9999999f

    goto :goto_a8

    .line 385
    :cond_df
    const v4, 0x3fffffff    # 1.9999999f

    if-ge v7, v4, :cond_e9

    int-to-long v4, v7

    cmp-long v4, v4, v2

    if-lez v4, :cond_ee

    .line 386
    :cond_e9
    const v2, 0x3fffffff    # 1.9999999f

    goto/16 :goto_19

    .line 365
    :cond_ee
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    move-object/from16 v19, v10

    move-object v10, v9

    move-object/from16 v9, v19

    goto/16 :goto_41

    .line 392
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

    .line 710
    move v1, v0

    :goto_2
    if-ge v1, p2, :cond_30

    aget v2, p1, v0

    array-length v3, p0

    if-ge v2, v3, :cond_30

    .line 711
    aget v2, p1, v0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 712
    mul-int/lit8 v2, v2, 0xd

    add-int/lit8 v2, v2, 0x1

    .line 713
    aget v3, p1, v0

    add-int/2addr v3, v2

    array-length v4, p0

    if-le v3, v4, :cond_1a

    .line 721
    :goto_19
    return v0

    .line 716
    :cond_1a
    new-array v3, v2, [B

    .line 717
    aget v4, p1, v0

    invoke-static {p0, v4, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 718
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/WakeWord$Word;->unpack([B)Lcom/isaigu/gymapp/ai/WakeWord$Word;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 719
    aget v3, p1, v0

    add-int/2addr v2, v3

    aput v2, p1, v0

    .line 710
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 721
    :cond_30
    const/4 v0, 0x1

    goto :goto_19
.end method

.method private woke(Lcom/isaigu/gymapp/ai/WakeWord$Word;)V
    .registers 3

    .prologue
    .line 564
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->lastWakeWord:Lcom/isaigu/gymapp/ai/WakeWord$Word;

    .line 565
    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->lastD:I

    iput v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->lastWakeD:I

    .line 566
    return-void
.end method


# virtual methods
.method accept(Lcom/isaigu/gymapp/ai/WakeWord$Word;)Z
    .registers 3

    .prologue
    .line 589
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/isaigu/gymapp/ai/WakeWord;->accept(Lcom/isaigu/gymapp/ai/WakeWord$Word;F)Z

    move-result v0

    return v0
.end method

.method accept(Lcom/isaigu/gymapp/ai/WakeWord$Word;F)Z
    .registers 14

    .prologue
    const v2, 0x3fffffff    # 1.9999999f

    const/4 v4, 0x0

    .line 593
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/ai/WakeWord;->match(Lcom/isaigu/gymapp/ai/WakeWord$Word;)I

    move-result v5

    .line 594
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/WakeWord;->threshold()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    if-le v5, v0, :cond_12

    .line 617
    :cond_11
    :goto_11
    return v4

    .line 597
    :cond_12
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->falseNeg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/WakeWord$Word;

    .line 598
    invoke-static {p1, v0, v2}, Lcom/isaigu/gymapp/ai/WakeWord;->dtw(Lcom/isaigu/gymapp/ai/WakeWord$Word;Lcom/isaigu/gymapp/ai/WakeWord$Word;I)I

    move-result v0

    if-ge v0, v5, :cond_18

    goto :goto_11

    .line 603
    :cond_2b
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->neg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/WakeWord$Word;

    .line 604
    invoke-static {p1, v0, v2}, Lcom/isaigu/gymapp/ai/WakeWord;->dtw(Lcom/isaigu/gymapp/ai/WakeWord$Word;Lcom/isaigu/gymapp/ai/WakeWord$Word;I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v0

    .line 605
    goto :goto_32

    .line 607
    :cond_48
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->neg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4e
    :goto_4e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/WakeWord$Word;

    .line 608
    iget v3, v0, Lcom/isaigu/gymapp/ai/WakeWord$Word;->n:I

    iget v7, p1, Lcom/isaigu/gymapp/ai/WakeWord$Word;->n:I

    add-int/lit8 v7, v7, 0x2

    if-le v3, v7, :cond_4e

    .line 609
    new-instance v7, Lcom/isaigu/gymapp/ai/WakeWord$Word;

    invoke-direct {v7}, Lcom/isaigu/gymapp/ai/WakeWord$Word;-><init>()V

    .line 610
    iget v3, v0, Lcom/isaigu/gymapp/ai/WakeWord$Word;->n:I

    iget v8, p1, Lcom/isaigu/gymapp/ai/WakeWord$Word;->n:I

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v7, Lcom/isaigu/gymapp/ai/WakeWord$Word;->n:I

    move v3, v4

    .line 611
    :goto_72
    iget v8, v7, Lcom/isaigu/gymapp/ai/WakeWord$Word;->n:I

    if-ge v3, v8, :cond_86

    .line 612
    iget-object v8, v0, Lcom/isaigu/gymapp/ai/WakeWord$Word;->f:[[B

    aget-object v8, v8, v3

    iget-object v9, v7, Lcom/isaigu/gymapp/ai/WakeWord$Word;->f:[[B

    aget-object v9, v9, v3

    const/16 v10, 0xd

    invoke-static {v8, v4, v9, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 611
    add-int/lit8 v3, v3, 0x1

    goto :goto_72

    .line 614
    :cond_86
    invoke-static {p1, v7, v2}, Lcom/isaigu/gymapp/ai/WakeWord;->dtw(Lcom/isaigu/gymapp/ai/WakeWord$Word;Lcom/isaigu/gymapp/ai/WakeWord$Word;I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_4e

    .line 617
    :cond_8f
    if-ge v1, v2, :cond_9d

    int-to-long v2, v5

    const-wide/16 v6, 0x64

    mul-long/2addr v2, v6

    const-wide/16 v6, 0x4b

    int-to-long v0, v1

    mul-long/2addr v0, v6

    cmp-long v0, v2, v0

    if-gtz v0, :cond_11

    :cond_9d
    const/4 v4, 0x1

    goto/16 :goto_11
.end method

.method public clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 482
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->tpl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 483
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->neg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 484
    const/16 v0, 0x578

    iput v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->thr:I

    .line 485
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->falseNeg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 486
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->sens:F

    .line 487
    iput v1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->loud:F

    .line 488
    iput v1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->loudSum:F

    .line 489
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->loudN:I

    .line 490
    return-void
.end method

.method public examples()I
    .registers 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->tpl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public feedback(Z)V
    .registers 5

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 573
    if-eqz p1, :cond_1a

    .line 574
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

    .line 586
    :cond_16
    :goto_16
    return-void

    .line 574
    :cond_17
    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->sens:F

    goto :goto_14

    .line 577
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

    .line 580
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->falseNeg:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->lastWakeWord:Lcom/isaigu/gymapp/ai/WakeWord$Word;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->falseNeg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_4b

    .line 582
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->falseNeg:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 584
    :cond_4b
    const v0, 0x3f333333    # 0.7f

    iget v1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->sens:F

    const v2, 0x3f6b851f    # 0.92f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->sens:F

    .line 585
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->lastWakeWord:Lcom/isaigu/gymapp/ai/WakeWord$Word;

    goto :goto_16
.end method

.method public hasContrast()Z
    .registers 2

    .prologue
    .line 478
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

    .line 687
    if-eqz p1, :cond_12

    array-length v0, p1

    if-lt v0, v6, :cond_12

    aget-byte v0, p1, v3

    if-lt v0, v2, :cond_12

    aget-byte v0, p1, v3

    if-le v0, v7, :cond_13

    .line 706
    :cond_12
    :goto_12
    return v3

    .line 690
    :cond_13
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->tpl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 691
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->neg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 692
    new-array v0, v2, [I

    aput v6, v0, v3

    .line 693
    aget-byte v4, p1, v2

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/WakeWord;->tpl:Ljava/util/List;

    invoke-static {p1, v0, v4, v5}, Lcom/isaigu/gymapp/ai/WakeWord;->read([B[IILjava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 696
    aget-byte v4, p1, v3

    if-lt v4, v6, :cond_44

    aget v4, v0, v3

    array-length v5, p1

    if-ge v4, v5, :cond_44

    .line 697
    aget v4, v0, v3

    add-int/lit8 v5, v4, 0x1

    aput v5, v0, v3

    aget-byte v4, p1, v4

    .line 698
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/WakeWord;->neg:Ljava/util/List;

    invoke-static {p1, v0, v4, v5}, Lcom/isaigu/gymapp/ai/WakeWord;->read([B[IILjava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 702
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

    .line 703
    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->loud:F

    iput v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->loudSum:F

    .line 704
    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->loud:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_68

    move v0, v2

    :goto_5f
    iput v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->loudN:I

    .line 705
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/WakeWord;->retune()V

    move v3, v2

    .line 706
    goto :goto_12

    :cond_66
    move v0, v1

    .line 702
    goto :goto_52

    :cond_68
    move v0, v3

    .line 704
    goto :goto_5f
.end method

.method loudEnough(F)Z
    .registers 5

    .prologue
    .line 442
    iput p1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->lastLoud:F

    .line 443
    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->loud:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_16

    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->lastLoud:F

    iget v1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->loud:F

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/WakeWord;->loudMargin()F

    move-result v2

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method loudMargin()F
    .registers 5

    .prologue
    .line 448
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
    .line 621
    const v0, 0x3fffffff    # 1.9999999f

    .line 622
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

    .line 623
    invoke-static {p1, v0, v1}, Lcom/isaigu/gymapp/ai/WakeWord;->dtw(Lcom/isaigu/gymapp/ai/WakeWord$Word;Lcom/isaigu/gymapp/ai/WakeWord$Word;I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v0

    .line 624
    goto :goto_a

    .line 625
    :cond_20
    iput v1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->lastD:I

    .line 626
    return v1
.end method

.method meanLen()I
    .registers 4

    .prologue
    .line 555
    const/4 v0, 0x0

    .line 556
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

    .line 557
    iget v0, v0, Lcom/isaigu/gymapp/ai/WakeWord$Word;->n:I

    add-int/2addr v0, v1

    move v1, v0

    .line 558
    goto :goto_8

    .line 559
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
    .registers 13

    .prologue
    const/4 v6, 0x3

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 494
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->front:Lcom/isaigu/gymapp/ai/WakeWord$Front;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->bands:[F

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/WakeWord;->edb:[F

    invoke-virtual {v0, p1, v1, v2}, Lcom/isaigu/gymapp/ai/WakeWord$Front;->push(S[F[F)Z

    move-result v0

    if-nez v0, :cond_12

    .line 551
    :cond_11
    :goto_11
    return v7

    .line 497
    :cond_12
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->recording:Z

    iput-boolean v1, v0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->lenient:Z

    .line 498
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->bands:[F

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/WakeWord;->edb:[F

    aget v2, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->frame([FF)Z

    move-result v0

    .line 499
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->skipped:Z

    if-eqz v1, :cond_39

    .line 500
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iput-boolean v7, v0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->skipped:Z

    .line 501
    iput-boolean v7, p0, Lcom/isaigu/gymapp/ai/WakeWord;->fired:Z

    .line 502
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->recording:Z

    if-eqz v0, :cond_37

    move v0, v6

    :goto_35
    move v7, v0

    goto :goto_11

    :cond_37
    move v0, v7

    goto :goto_35

    .line 504
    :cond_39
    if-eqz v0, :cond_110

    .line 505
    iget-boolean v9, p0, Lcom/isaigu/gymapp/ai/WakeWord;->fired:Z

    .line 506
    iput-boolean v7, p0, Lcom/isaigu/gymapp/ai/WakeWord;->fired:Z

    .line 507
    new-instance v1, Lcom/isaigu/gymapp/ai/WakeWord$Word;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/WakeWord$Word;-><init>()V

    .line 508
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/WakeWord;->front:Lcom/isaigu/gymapp/ai/WakeWord$Front;

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget v3, v3, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->w0:I

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget v4, v4, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->w1:I

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget v5, v5, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->wPeak:F

    invoke-virtual/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->span(Lcom/isaigu/gymapp/ai/WakeWord$Word;Lcom/isaigu/gymapp/ai/WakeWord$Front;IIF)V

    .line 509
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->recording:Z

    if-eqz v0, :cond_92

    .line 510
    iput-boolean v7, p0, Lcom/isaigu/gymapp/ai/WakeWord;->recording:Z

    .line 511
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->recordingNeg:Z

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->neg:Ljava/util/List;

    .line 512
    :goto_63
    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/WakeWord;->recordingNeg:Z

    if-nez v2, :cond_7e

    .line 513
    iget v2, p0, Lcom/isaigu/gymapp/ai/WakeWord;->loudSum:F

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget v3, v3, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->wPeak:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/isaigu/gymapp/ai/WakeWord;->loudSum:F

    .line 514
    iget v2, p0, Lcom/isaigu/gymapp/ai/WakeWord;->loudN:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/ai/WakeWord;->loudN:I

    .line 515
    iget v2, p0, Lcom/isaigu/gymapp/ai/WakeWord;->loudSum:F

    iget v3, p0, Lcom/isaigu/gymapp/ai/WakeWord;->loudN:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/isaigu/gymapp/ai/WakeWord;->loud:F

    .line 517
    :cond_7e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v6, :cond_87

    .line 518
    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 520
    :cond_87
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/WakeWord;->retune()V

    .line 522
    const/4 v7, 0x2

    goto :goto_11

    .line 511
    :cond_8f
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->tpl:Ljava/util/List;

    goto :goto_63

    .line 524
    :cond_92
    if-nez v9, :cond_11

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/WakeWord;->ready()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 525
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget v0, v0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->wPeak:F

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ai/WakeWord;->loudEnough(F)Z

    move-result v0

    .line 526
    if-eqz v0, :cond_b6

    invoke-virtual {p0, v1, v10}, Lcom/isaigu/gymapp/ai/WakeWord;->accept(Lcom/isaigu/gymapp/ai/WakeWord$Word;F)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 527
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget v0, v0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->w1:I

    iput v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->wakeFrame:I

    .line 528
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/ai/WakeWord;->woke(Lcom/isaigu/gymapp/ai/WakeWord$Word;)V

    move v7, v8

    .line 529
    goto/16 :goto_11

    .line 531
    :cond_b6
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

    .line 532
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

    goto/16 :goto_11

    .line 537
    :cond_110
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->recording:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->fired:Z

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/WakeWord;->ready()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget v0, v0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->state:I

    if-ne v0, v8, :cond_11

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget v0, v0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->t:I

    rem-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_11

    .line 538
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget v0, v0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->t:I

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget v1, v1, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->s0:I

    sub-int/2addr v0, v1

    .line 539
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/WakeWord;->meanLen()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    .line 540
    int-to-float v2, v1

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    if-lt v0, v2, :cond_11

    int-to-float v1, v1

    const v2, 0x3fa66666    # 1.3f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    if-gt v0, v1, :cond_11

    .line 541
    new-instance v1, Lcom/isaigu/gymapp/ai/WakeWord$Word;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/WakeWord$Word;-><init>()V

    .line 542
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/WakeWord;->front:Lcom/isaigu/gymapp/ai/WakeWord$Front;

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget v3, v3, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->s0:I

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget v4, v4, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->t:I

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget v5, v5, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->peak:F

    invoke-virtual/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->span(Lcom/isaigu/gymapp/ai/WakeWord$Word;Lcom/isaigu/gymapp/ai/WakeWord$Front;IIF)V

    .line 543
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget v0, v0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->peak:F

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ai/WakeWord;->loudEnough(F)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0, v1, v10}, Lcom/isaigu/gymapp/ai/WakeWord;->accept(Lcom/isaigu/gymapp/ai/WakeWord$Word;F)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 544
    iput-boolean v8, p0, Lcom/isaigu/gymapp/ai/WakeWord;->fired:Z

    .line 545
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget v0, v0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->t:I

    iput v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->wakeFrame:I

    .line 546
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/ai/WakeWord;->woke(Lcom/isaigu/gymapp/ai/WakeWord$Word;)V

    move v7, v8

    .line 547
    goto/16 :goto_11
.end method

.method public ready()Z
    .registers 3

    .prologue
    .line 452
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
    .line 465
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget v1, v1, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->t:I

    add-int/lit8 v1, v1, 0x23

    iput v1, v0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->hold:I

    .line 466
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->recording:Z

    .line 467
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->recordingNeg:Z

    .line 468
    return-void
.end method

.method public recordContrast()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 472
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->finder:Lcom/isaigu/gymapp/ai/WakeWord$Finder;

    iget v1, v1, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->t:I

    add-int/lit8 v1, v1, 0x23

    iput v1, v0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->hold:I

    .line 473
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/WakeWord;->recording:Z

    .line 474
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/WakeWord;->recordingNeg:Z

    .line 475
    return-void
.end method

.method retune()V
    .registers 11

    .prologue
    const v9, 0x3fffffff    # 1.9999999f

    const/4 v0, 0x0

    .line 630
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->tpl:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    .line 631
    const/high16 v3, 0x44af0000    # 1400.0f

    .line 632
    const/4 v1, 0x2

    if-lt v8, v1, :cond_53

    .line 633
    const-wide/16 v4, 0x0

    move v7, v0

    move v2, v0

    .line 635
    :goto_13
    if-ge v7, v8, :cond_3d

    .line 636
    add-int/lit8 v0, v7, 0x1

    move v6, v0

    :goto_18
    if-ge v6, v8, :cond_39

    .line 637
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

    .line 638
    if-ge v0, v9, :cond_55

    .line 639
    int-to-long v0, v0

    add-long/2addr v4, v0

    .line 640
    add-int/lit8 v0, v2, 0x1

    .line 636
    :goto_34
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move v2, v0

    goto :goto_18

    .line 635
    :cond_39
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_13

    .line 644
    :cond_3d
    if-lez v2, :cond_53

    .line 645
    const/high16 v0, 0x40200000    # 2.5f

    long-to-float v1, v4

    mul-float/2addr v0, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    .line 650
    :goto_45
    const/16 v1, 0x6a4

    const v2, 0x3fa8f5c3    # 1.32f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->thr:I

    .line 651
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

    .line 670
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 671
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 672
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->tpl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 673
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

    .line 674
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/WakeWord$Word;->pack()[B

    move-result-object v0

    .line 675
    array-length v3, v0

    invoke-virtual {v1, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_19

    .line 677
    :cond_2e
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->neg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 678
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

    .line 679
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/WakeWord$Word;->pack()[B

    move-result-object v0

    .line 680
    array-length v3, v0

    invoke-virtual {v1, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3d

    .line 682
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

    .line 683
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public spreadOfExamples()I
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 655
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->tpl:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_b

    .line 664
    :goto_a
    return v0

    :cond_b
    move v2, v0

    move v1, v0

    .line 659
    :goto_d
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->tpl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_45

    .line 660
    add-int/lit8 v0, v2, 0x1

    move v4, v0

    move v3, v1

    :goto_19
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->tpl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_40

    .line 661
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

    .line 660
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_19

    .line 659
    :cond_40
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v1, v3

    goto :goto_d

    :cond_45
    move v0, v1

    .line 664
    goto :goto_a
.end method

.method public threshold()I
    .registers 3

    .prologue
    .line 460
    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord;->thr:I

    int-to-float v0, v0

    iget v1, p0, Lcom/isaigu/gymapp/ai/WakeWord;->sens:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
