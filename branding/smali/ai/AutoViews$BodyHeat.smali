.class public final Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;
.super Landroid/view/View;
.source "AutoViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AutoViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BodyHeat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;
    }
.end annotation


# static fields
.field static final COMMIT_MS:J = 0xea60L

.field static final DELTOID_R:I = 0xd

.field static final FADE_MS:J = 0x384L

.field static final PULSE_MS:J = 0x44cL

.field private static final SIDES:[Ljava/lang/String;

.field private static final Z:I = 0xb


# instance fields
.field private final active:[Z

.field private final activeSince:[J

.field private dirty:Z

.field private final dst:Landroid/graphics/RectF;

.field private final fadeMs:[J

.field private female:Z

.field private final figs:[Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;

.field private first:Z

.field private final from:[D

.field private glowDirty:Z

.field private final glowPaint:Landroid/graphics/Paint;

.field private final held:[D

.field private final live:[D

.field private final off:[Z

.field private final paint:Landroid/graphics/Paint;

.field private sexKey:Ljava/lang/String;

.field private final shown:[D

.field private final src:Landroid/graphics/Rect;

.field private final target:[D


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 366
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "front"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "back"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->SIDES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    const/16 v1, 0xb

    .line 407
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 374
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->figs:[Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;

    .line 375
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->paint:Landroid/graphics/Paint;

    .line 376
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->glowPaint:Landroid/graphics/Paint;

    .line 377
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->src:Landroid/graphics/Rect;

    .line 378
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->dst:Landroid/graphics/RectF;

    .line 380
    new-array v0, v1, [D

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->target:[D

    .line 381
    new-array v0, v1, [D

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->held:[D

    .line 382
    new-array v0, v1, [D

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->from:[D

    .line 383
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->fadeMs:[J

    .line 384
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->activeSince:[J

    .line 385
    new-array v0, v1, [D

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->live:[D

    .line 386
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->off:[Z

    .line 387
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->active:[Z

    .line 388
    new-array v0, v1, [D

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->shown:[D

    .line 389
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->sexKey:Ljava/lang/String;

    .line 391
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->dirty:Z

    .line 392
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->glowDirty:Z

    .line 393
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->first:Z

    .line 408
    return-void
.end method

.method private static decode(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 538
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 540
    :try_start_8
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 541
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 542
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 543
    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    .line 544
    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    move-result-object v0

    .line 546
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 544
    return-object v0

    .line 546
    :catchall_1f
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 547
    throw v0
.end method

.method static load(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;
    .registers 12

    .prologue
    const/4 v9, 0x0

    .line 482
    new-instance v8, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;

    invoke-direct {v8}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;-><init>()V

    .line 484
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xems/body/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-art.webp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->decode(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v8, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->art:Landroid/graphics/Bitmap;

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xems/body/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-idx.webp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->decode(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 486
    iget-object v1, v8, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->art:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4a

    if-nez v0, :cond_4c

    :cond_4a
    move-object v0, v8

    .line 522
    :goto_4b
    return-object v0

    .line 489
    :cond_4c
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 490
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 491
    mul-int v1, v3, v7

    new-array v1, v1, [I

    .line 492
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 493
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 495
    array-length v4, v1

    move v2, v9

    move v0, v9

    :goto_65
    if-ge v2, v4, :cond_74

    aget v5, v1, v2

    .line 496
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->zoneOf(I)I

    move-result v5

    if-ltz v5, :cond_71

    .line 497
    add-int/lit8 v0, v0, 0x1

    .line 495
    :cond_71
    add-int/lit8 v2, v2, 0x1

    goto :goto_65

    .line 500
    :cond_74
    new-array v2, v0, [I

    iput-object v2, v8, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->idx:[I

    .line 501
    new-array v2, v0, [B

    iput-object v2, v8, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->zone:[B

    .line 502
    new-array v2, v0, [B

    iput-object v2, v8, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->shade:[B

    .line 503
    new-array v0, v0, [B

    iput-object v0, v8, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->cov:[B

    move v2, v9

    move v0, v9

    .line 505
    :goto_86
    array-length v4, v1

    if-ge v2, v4, :cond_af

    .line 506
    aget v4, v1, v2

    .line 507
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->zoneOf(I)I

    move-result v5

    .line 508
    if-ltz v5, :cond_ac

    .line 509
    iget-object v6, v8, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->idx:[I

    aput v2, v6, v0

    .line 510
    iget-object v6, v8, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->zone:[B

    int-to-byte v5, v5

    aput-byte v5, v6, v0

    .line 511
    iget-object v5, v8, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->shade:[B

    shr-int/lit8 v6, v4, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v0

    .line 512
    iget-object v5, v8, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->cov:[B

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v5, v0

    .line 513
    add-int/lit8 v0, v0, 0x1

    .line 505
    :cond_ac
    add-int/lit8 v2, v2, 0x1

    goto :goto_86

    .line 516
    :cond_af
    mul-int v0, v3, v7

    new-array v0, v0, [I

    iput-object v0, v8, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->px:[I

    .line 517
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v8, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->over:Landroid/graphics/Bitmap;

    .line 518
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v8, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->glow:Landroid/graphics/Bitmap;
    :try_end_c5
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_c5} :catch_c7

    :goto_c5
    move-object v0, v8

    .line 522
    goto :goto_4b

    .line 519
    :catch_c7
    move-exception v0

    .line 520
    const-string v1, "AutoViews.body"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c5
.end method

.method private repaint(Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;Landroid/graphics/Bitmap;Z)V
    .registers 14

    .prologue
    .line 570
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 595
    :cond_4
    :goto_4
    return-void

    .line 573
    :cond_5
    const/16 v0, 0xb

    new-array v2, v0, [I

    .line 574
    const/16 v0, 0xb

    new-array v3, v0, [F

    .line 575
    const/4 v0, 0x0

    move v1, v0

    :goto_f
    const/16 v0, 0xb

    if-ge v1, v0, :cond_6d

    .line 576
    if-eqz p3, :cond_4e

    .line 577
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->female:Z

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->shown:[D

    aget-wide v6, v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/isaigu/gymapp/ai/AutoViews;->bodyHeat(ZD)I

    move-result v0

    const/4 v4, -0x1

    const v5, 0x3ee66666    # 0.45f

    invoke-static {v0, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v0

    aput v0, v2, v1

    .line 578
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->active:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_4c

    const-wide v4, 0x3fe199999999999aL    # 0.55

    const-wide v6, 0x3fdccccccccccccdL    # 0.45

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->live:[D

    aget-wide v8, v0, v1

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v0, v4

    :goto_46
    aput v0, v3, v1

    .line 575
    :goto_48
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    .line 578
    :cond_4c
    const/4 v0, 0x0

    goto :goto_46

    .line 580
    :cond_4e
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->female:Z

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->shown:[D

    aget-wide v4, v4, v1

    invoke-static {v0, v4, v5}, Lcom/isaigu/gymapp/ai/AutoViews;->bodyHeat(ZD)I

    move-result v0

    aput v0, v2, v1

    .line 581
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->off:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_64

    const/4 v0, 0x0

    :goto_61
    aput v0, v3, v1

    goto :goto_48

    :cond_64
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->shown:[D

    aget-wide v4, v0, v1

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AutoViews;->bodyFill(D)F

    move-result v0

    goto :goto_61

    .line 584
    :cond_6d
    iget-object v1, p1, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->px:[I

    .line 585
    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 586
    const/4 v0, 0x0

    :goto_74
    iget-object v4, p1, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->idx:[I

    array-length v4, v4

    if-ge v0, v4, :cond_a7

    .line 587
    iget-object v4, p1, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->zone:[B

    aget-byte v4, v4, v0

    .line 588
    aget v5, v3, v4

    .line 589
    const/4 v6, 0x0

    cmpg-float v6, v5, v6

    if-gtz v6, :cond_87

    .line 586
    :goto_84
    add-int/lit8 v0, v0, 0x1

    goto :goto_74

    .line 592
    :cond_87
    iget-object v6, p1, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->idx:[I

    aget v6, v6, v0

    aget v4, v2, v4

    iget-object v7, p1, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->shade:[B

    aget-byte v7, v7, v0

    and-int/lit16 v7, v7, 0xff

    int-to-float v7, v7

    const/high16 v8, 0x437f0000    # 255.0f

    div-float/2addr v7, v8

    iget-object v8, p1, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->cov:[B

    aget-byte v8, v8, v0

    and-int/lit16 v8, v8, 0xff

    int-to-float v8, v8

    mul-float/2addr v5, v8

    float-to-int v5, v5

    invoke-static {v4, v7, v5}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->shadeOf(IFI)I

    move-result v4

    aput v4, v1, v6

    goto :goto_84

    .line 594
    :cond_a7
    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto/16 :goto_4
.end method

.method private static shadeOf(IFI)I
    .registers 8

    .prologue
    .line 552
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 553
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 554
    and-int/lit16 v3, p0, 0xff

    .line 555
    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v2, p1, v2

    if-gez v2, :cond_29

    .line 556
    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v2, v0

    .line 557
    mul-int/lit8 v0, v1, 0x2

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v1, v0

    .line 558
    mul-int/lit8 v0, v3, 0x2

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 565
    :goto_1f
    shl-int/lit8 v3, p2, 0x18

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v3

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0

    .line 560
    :cond_29
    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, p1

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v2, v4

    const v4, 0x3f0ccccd    # 0.55f

    mul-float/2addr v4, v2

    .line 561
    int-to-float v2, v0

    rsub-int v0, v0, 0xff

    int-to-float v0, v0

    mul-float/2addr v0, v4

    add-float/2addr v0, v2

    float-to-int v2, v0

    .line 562
    int-to-float v0, v1

    rsub-int v1, v1, 0xff

    int-to-float v1, v1

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    float-to-int v1, v0

    .line 563
    int-to-float v0, v3

    rsub-int v3, v3, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    float-to-int v0, v0

    goto :goto_1f
.end method

.method private shownAt(IJ)D
    .registers 12

    .prologue
    .line 473
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->fadeMs:[J

    aget-wide v0, v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_f

    .line 474
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->held:[D

    aget-wide v0, v0, p1

    .line 478
    :goto_e
    return-wide v0

    .line 476
    :cond_f
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->fadeMs:[J

    aget-wide v2, v2, p1

    sub-long v2, p2, v2

    long-to-double v2, v2

    const-wide v4, 0x408c200000000000L    # 900.0

    div-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 477
    mul-double v2, v0, v0

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v6

    sub-double v0, v4, v0

    mul-double/2addr v0, v2

    .line 478
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->from:[D

    aget-wide v2, v2, p1

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->held:[D

    aget-wide v4, v4, p1

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->from:[D

    aget-wide v6, v6, p1

    sub-double/2addr v4, v6

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    goto :goto_e
.end method

.method static zoneOf(I)I
    .registers 6

    .prologue
    const/16 v0, 0xa

    const/4 v1, -0x1

    .line 527
    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    .line 528
    and-int/lit16 v3, p0, 0xff

    const/16 v4, 0x8

    if-gt v3, v4, :cond_e

    .line 534
    :goto_d
    return v1

    .line 531
    :cond_e
    const/4 v3, 0x1

    if-lt v2, v3, :cond_16

    if-gt v2, v0, :cond_16

    .line 532
    add-int/lit8 v1, v2, -0x1

    goto :goto_d

    .line 534
    :cond_16
    const/16 v3, 0xd

    if-ne v2, v3, :cond_1c

    :goto_1a
    move v1, v0

    goto :goto_d

    :cond_1c
    move v0, v1

    goto :goto_1a
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 22

    .prologue
    .line 599
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 600
    const/4 v4, 0x0

    .line 601
    const/4 v2, 0x0

    move v3, v2

    move v6, v4

    :goto_8
    const/16 v2, 0xb

    if-ge v3, v2, :cond_50

    .line 602
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8, v9}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->shownAt(IJ)D

    move-result-wide v4

    .line 603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->shown:[D

    aget-wide v10, v2, v3

    cmpl-double v2, v4, v10

    if-eqz v2, :cond_2c

    .line 604
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->shown:[D

    aput-wide v4, v2, v3

    .line 605
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->dirty:Z

    .line 606
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->glowDirty:Z

    .line 608
    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->fadeMs:[J

    aget-wide v4, v2, v3

    const-wide/16 v10, 0x0

    cmp-long v2, v4, v10

    if-lez v2, :cond_4e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->fadeMs:[J

    aget-wide v4, v2, v3

    sub-long v4, v8, v4

    const-wide/16 v10, 0x384

    cmp-long v2, v4, v10

    if-gez v2, :cond_4e

    const/4 v2, 0x1

    :goto_47
    or-int v4, v6, v2

    .line 601
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v6, v4

    goto :goto_8

    .line 608
    :cond_4e
    const/4 v2, 0x0

    goto :goto_47

    .line 610
    :cond_50
    const/4 v3, 0x0

    .line 611
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->active:[Z

    array-length v7, v4

    const/4 v2, 0x0

    move v5, v3

    :goto_58
    if-ge v2, v7, :cond_61

    aget-boolean v3, v4, v2

    .line 612
    or-int/2addr v3, v5

    .line 611
    add-int/lit8 v2, v2, 0x1

    move v5, v3

    goto :goto_58

    .line 614
    :cond_61
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->dirty:Z

    if-eqz v2, :cond_87

    .line 615
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->dirty:Z

    .line 616
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->figs:[Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;

    array-length v7, v4

    const/4 v2, 0x0

    move v3, v2

    :goto_73
    if-ge v3, v7, :cond_87

    aget-object v10, v4, v3

    .line 617
    if-eqz v10, :cond_85

    iget-object v2, v10, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->over:Landroid/graphics/Bitmap;

    :goto_7b
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2, v11}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->repaint(Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;Landroid/graphics/Bitmap;Z)V

    .line 616
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_73

    .line 617
    :cond_85
    const/4 v2, 0x0

    goto :goto_7b

    .line 620
    :cond_87
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->glowDirty:Z

    if-eqz v2, :cond_af

    if-eqz v5, :cond_af

    .line 621
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->glowDirty:Z

    .line 622
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->figs:[Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;

    array-length v7, v4

    const/4 v2, 0x0

    move v3, v2

    :goto_9b
    if-ge v3, v7, :cond_af

    aget-object v10, v4, v3

    .line 623
    if-eqz v10, :cond_ad

    iget-object v2, v10, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->glow:Landroid/graphics/Bitmap;

    :goto_a3
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2, v11}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->repaint(Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;Landroid/graphics/Bitmap;Z)V

    .line 622
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_9b

    .line 623
    :cond_ad
    const/4 v2, 0x0

    goto :goto_a3

    .line 627
    :cond_af
    const-wide/16 v2, 0x44c

    rem-long v2, v8, v2

    long-to-double v2, v2

    const-wide v8, 0x4091300000000000L    # 1100.0

    div-double/2addr v2, v8

    .line 628
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->glowPaint:Landroid/graphics/Paint;

    const-wide v8, 0x406fe00000000000L    # 255.0

    const-wide v10, 0x3fc3333333333333L    # 0.15

    const-wide v12, 0x3feb333333333333L    # 0.85

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    const-wide v18, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v2, v2, v18

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v2, v2, v16

    sub-double v2, v14, v2

    mul-double/2addr v2, v12

    add-double/2addr v2, v10

    mul-double/2addr v2, v8

    double-to-int v2, v2

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 629
    const/high16 v2, 0x41b00000    # 22.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v7

    .line 630
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->getHeight()I

    move-result v2

    int-to-float v8, v2

    .line 631
    const/4 v2, 0x0

    .line 632
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->figs:[Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;

    array-length v9, v4

    const/4 v3, 0x0

    :goto_fb
    if-ge v3, v9, :cond_11a

    aget-object v10, v4, v3

    .line 633
    if-eqz v10, :cond_117

    iget-object v11, v10, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->art:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_117

    .line 634
    iget-object v11, v10, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->art:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v8

    iget-object v10, v10, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->art:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float v10, v11, v10

    add-float/2addr v2, v10

    .line 632
    :cond_117
    add-int/lit8 v3, v3, 0x1

    goto :goto_fb

    .line 637
    :cond_11a
    const/high16 v3, 0x3f800000    # 1.0f

    .line 638
    add-float v4, v2, v7

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->getWidth()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v4, v4, v9

    if-lez v4, :cond_134

    .line 639
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v7

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    div-float/2addr v3, v4

    .line 641
    :cond_134
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v2, v3

    add-float/2addr v2, v7

    sub-float v2, v4, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    .line 642
    const/4 v4, 0x0

    :goto_141
    const/4 v9, 0x2

    if-ge v4, v9, :cond_1d5

    .line 643
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->figs:[Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;

    aget-object v9, v9, v4

    .line 644
    if-eqz v9, :cond_150

    iget-object v10, v9, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->art:Landroid/graphics/Bitmap;

    if-nez v10, :cond_153

    .line 642
    :cond_150
    :goto_150
    add-int/lit8 v4, v4, 0x1

    goto :goto_141

    .line 647
    :cond_153
    mul-float v10, v8, v3

    .line 648
    iget-object v11, v9, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->art:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v10

    iget-object v12, v9, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->art:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    .line 649
    sub-float v12, v8, v10

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    .line 650
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->src:Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget-object v0, v9, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->art:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    iget-object v0, v9, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->art:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Rect;->set(IIII)V

    .line 651
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->dst:Landroid/graphics/RectF;

    add-float v14, v2, v11

    add-float/2addr v10, v12

    invoke-virtual {v13, v2, v12, v14, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 652
    iget-object v10, v9, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->art:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->src:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->dst:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v12, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 653
    iget-object v10, v9, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->over:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_1b7

    .line 654
    iget-object v10, v9, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->over:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->src:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->dst:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v12, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 656
    :cond_1b7
    if-eqz v5, :cond_1d0

    iget-object v10, v9, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->glow:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_1d0

    .line 657
    iget-object v9, v9, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->glow:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->src:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->dst:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->glowPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 659
    :cond_1d0
    add-float v9, v11, v7

    add-float/2addr v2, v9

    goto/16 :goto_150

    .line 661
    :cond_1d5
    if-nez v5, :cond_1d9

    if-eqz v6, :cond_1dc

    .line 662
    :cond_1d9
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->postInvalidateOnAnimation()V

    .line 664
    :cond_1dc
    return-void
.end method

.method public set(Lcom/isaigu/gymapp/ai/AiModel$Sex;[D[D[Z)V
    .registers 11

    .prologue
    .line 411
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->set(Lcom/isaigu/gymapp/ai/AiModel$Sex;[D[D[Z[Z)V

    .line 412
    return-void
.end method

.method public set(Lcom/isaigu/gymapp/ai/AiModel$Sex;[D[D[Z[Z)V
    .registers 22

    .prologue
    .line 420
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_51

    const-string v2, "female"

    .line 421
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->sexKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_60

    .line 422
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->sexKey:Ljava/lang/String;

    .line 423
    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_54

    const/4 v3, 0x1

    :goto_1d
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->female:Z

    .line 424
    const/4 v3, 0x0

    :goto_22
    const/4 v4, 0x2

    if-ge v3, v4, :cond_56

    .line 425
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->figs:[Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->SIDES:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;

    move-result-object v5

    aput-object v5, v4, v3

    .line 424
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 420
    :cond_51
    const-string v2, "male"

    goto :goto_8

    .line 423
    :cond_54
    const/4 v3, 0x0

    goto :goto_1d

    .line 427
    :cond_56
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->dirty:Z

    .line 428
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->glowDirty:Z

    .line 430
    :cond_60
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 431
    const/4 v3, 0x0

    .line 432
    const/4 v2, 0x0

    move v9, v2

    move v12, v3

    :goto_68
    const/16 v2, 0xb

    if-ge v9, v2, :cond_180

    .line 434
    if-eqz p2, :cond_164

    move-object/from16 v0, p2

    array-length v2, v0

    if-ge v9, v2, :cond_164

    aget-wide v2, p2, v9

    const-wide/high16 v4, 0x4054000000000000L    # 80.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4054000000000000L    # 80.0

    div-double v4, v2, v4

    .line 435
    :goto_81
    if-eqz p3, :cond_168

    move-object/from16 v0, p3

    array-length v2, v0

    if-ge v9, v2, :cond_168

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aget-wide v10, p3, v9

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    mul-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    div-double/2addr v2, v10

    move-wide v10, v2

    .line 436
    :goto_9c
    if-eqz p4, :cond_a7

    move-object/from16 v0, p4

    array-length v2, v0

    if-ge v9, v2, :cond_a7

    aget-boolean v2, p4, v9

    if-nez v2, :cond_ad

    :cond_a7
    const-wide/16 v2, 0x0

    cmpg-double v2, v4, v2

    if-gez v2, :cond_16d

    :cond_ad
    const/4 v2, 0x1

    move v3, v2

    .line 437
    :goto_af
    if-eqz p5, :cond_171

    move-object/from16 v0, p5

    array-length v2, v0

    if-ge v9, v2, :cond_171

    aget-boolean v2, p5, v9

    if-eqz v2, :cond_171

    if-nez v3, :cond_171

    const/4 v2, 0x1

    move v8, v2

    .line 438
    :goto_be
    if-eqz v8, :cond_ce

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->active:[Z

    aget-boolean v2, v2, v9

    if-nez v2, :cond_ce

    .line 439
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->activeSince:[J

    aput-wide v6, v2, v9

    .line 441
    :cond_ce
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->active:[Z

    aget-boolean v2, v2, v9

    if-ne v8, v2, :cond_e0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->live:[D

    aget-wide v14, v2, v9

    cmpl-double v2, v10, v14

    if-eqz v2, :cond_e5

    .line 442
    :cond_e0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->glowDirty:Z

    .line 444
    :cond_e5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->active:[Z

    aput-boolean v8, v2, v9

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->live:[D

    aput-wide v10, v2, v9

    .line 446
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->target:[D

    aput-wide v4, v2, v9

    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->off:[Z

    aget-boolean v2, v2, v9

    if-eq v3, v2, :cond_10a

    .line 448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->off:[Z

    aput-boolean v3, v2, v9

    .line 449
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->dirty:Z

    .line 453
    :cond_10a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->first:Z

    if-nez v2, :cond_121

    if-eqz v8, :cond_121

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->activeSince:[J

    aget-wide v2, v2, v9

    sub-long v2, v6, v2

    const-wide/32 v10, 0xea60

    cmp-long v2, v2, v10

    if-ltz v2, :cond_175

    :cond_121
    const/4 v2, 0x1

    .line 454
    :goto_122
    if-eqz v2, :cond_15c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->held:[D

    aget-wide v2, v2, v9

    cmpl-double v2, v4, v2

    if-eqz v2, :cond_15c

    .line 455
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->from:[D

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->first:Z

    if-eqz v2, :cond_177

    move-wide v2, v4

    :goto_139
    aput-wide v2, v10, v9

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->held:[D

    aput-wide v4, v2, v9

    .line 457
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->fadeMs:[J

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->first:Z

    if-eqz v2, :cond_17e

    const-wide/16 v2, 0x0

    :goto_14d
    aput-wide v2, v4, v9

    .line 458
    if-eqz v8, :cond_157

    .line 459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->activeSince:[J

    aput-wide v6, v2, v9

    .line 461
    :cond_157
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->dirty:Z

    .line 463
    :cond_15c
    or-int v3, v12, v8

    .line 432
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    move v12, v3

    goto/16 :goto_68

    .line 434
    :cond_164
    const-wide/16 v4, 0x0

    goto/16 :goto_81

    .line 435
    :cond_168
    const-wide/16 v2, 0x0

    move-wide v10, v2

    goto/16 :goto_9c

    .line 436
    :cond_16d
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_af

    .line 437
    :cond_171
    const/4 v2, 0x0

    move v8, v2

    goto/16 :goto_be

    .line 453
    :cond_175
    const/4 v2, 0x0

    goto :goto_122

    .line 455
    :cond_177
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v6, v7}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->shownAt(IJ)D

    move-result-wide v2

    goto :goto_139

    :cond_17e
    move-wide v2, v6

    .line 457
    goto :goto_14d

    .line 465
    :cond_180
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->first:Z

    .line 466
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->dirty:Z

    if-nez v2, :cond_193

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->glowDirty:Z

    if-nez v2, :cond_193

    if-eqz v12, :cond_196

    .line 467
    :cond_193
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->invalidate()V

    .line 469
    :cond_196
    return-void
.end method
