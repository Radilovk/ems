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
    .line 368
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

    .line 412
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 376
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->figs:[Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;

    .line 377
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->paint:Landroid/graphics/Paint;

    .line 378
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->glowPaint:Landroid/graphics/Paint;

    .line 379
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->src:Landroid/graphics/Rect;

    .line 380
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->dst:Landroid/graphics/RectF;

    .line 382
    new-array v0, v1, [D

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->target:[D

    .line 383
    new-array v0, v1, [D

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->held:[D

    .line 384
    new-array v0, v1, [D

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->from:[D

    .line 385
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->fadeMs:[J

    .line 386
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->activeSince:[J

    .line 387
    new-array v0, v1, [D

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->live:[D

    .line 388
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->off:[Z

    .line 389
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->active:[Z

    .line 390
    new-array v0, v1, [D

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->shown:[D

    .line 391
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->sexKey:Ljava/lang/String;

    .line 393
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->dirty:Z

    .line 394
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->glowDirty:Z

    .line 395
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->first:Z

    .line 413
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
    .line 617
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 619
    :try_start_8
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 620
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 621
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 622
    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    .line 623
    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    move-result-object v0

    .line 625
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 623
    return-object v0

    .line 625
    :catchall_1f
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 626
    throw v0
.end method

.method static load(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;
    .registers 20

    .prologue
    .line 547
    new-instance v10, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;

    invoke-direct {v10}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;-><init>()V

    .line 549
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xems/body/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-art.webp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->decode(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v10, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->art:Landroid/graphics/Bitmap;

    .line 550
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xems/body/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-idx.webp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->decode(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 551
    iget-object v3, v10, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->art:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_51

    if-nez v2, :cond_53

    :cond_51
    move-object v2, v10

    .line 601
    :goto_52
    return-object v2

    .line 554
    :cond_53
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 555
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 556
    mul-int v3, v5, v9

    new-array v3, v3, [I

    .line 557
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 558
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 559
    const/4 v2, 0x0

    .line 560
    array-length v6, v3

    const/4 v4, 0x0

    :goto_6c
    if-ge v4, v6, :cond_7b

    aget v7, v3, v4

    .line 561
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->zoneOf(I)I

    move-result v7

    if-ltz v7, :cond_78

    .line 562
    add-int/lit8 v2, v2, 0x1

    .line 560
    :cond_78
    add-int/lit8 v4, v4, 0x1

    goto :goto_6c

    .line 565
    :cond_7b
    new-array v4, v2, [I

    iput-object v4, v10, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->idx:[I

    .line 566
    new-array v4, v2, [B

    iput-object v4, v10, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->zone:[B

    .line 567
    new-array v4, v2, [B

    iput-object v4, v10, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->shade:[B

    .line 568
    new-array v2, v2, [B

    iput-object v2, v10, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->cov:[B

    .line 569
    const/4 v2, 0x0

    .line 570
    const/16 v4, 0x16

    new-array v7, v4, [D

    .line 571
    const/16 v4, 0x16

    new-array v8, v4, [D

    .line 572
    const/16 v4, 0x16

    new-array v11, v4, [I

    .line 573
    const/4 v4, 0x0

    move v6, v4

    :goto_9a
    array-length v4, v3

    if-ge v6, v4, :cond_ea

    .line 574
    aget v12, v3, v6

    .line 575
    invoke-static {v12}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->zoneOf(I)I

    move-result v13

    .line 576
    if-ltz v13, :cond_e4

    .line 577
    rem-int v14, v6, v5

    .line 578
    mul-int/lit8 v15, v13, 0x2

    div-int/lit8 v4, v5, 0x2

    if-ge v14, v4, :cond_e8

    const/4 v4, 0x0

    :goto_ae
    add-int/2addr v4, v15

    .line 579
    aget-wide v16, v7, v4

    int-to-double v14, v14

    add-double v14, v14, v16

    aput-wide v14, v7, v4

    .line 580
    aget-wide v14, v8, v4

    div-int v16, v6, v5

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    aput-wide v14, v8, v4

    .line 581
    aget v14, v11, v4

    add-int/lit8 v14, v14, 0x1

    aput v14, v11, v4

    .line 582
    iget-object v4, v10, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->idx:[I

    aput v6, v4, v2

    .line 583
    iget-object v4, v10, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->zone:[B

    int-to-byte v13, v13

    aput-byte v13, v4, v2

    .line 584
    iget-object v4, v10, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->shade:[B

    shr-int/lit8 v13, v12, 0x8

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    aput-byte v13, v4, v2

    .line 585
    iget-object v4, v10, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->cov:[B

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v4, v2

    .line 586
    add-int/lit8 v2, v2, 0x1

    .line 573
    :cond_e4
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_9a

    .line 578
    :cond_e8
    const/4 v4, 0x1

    goto :goto_ae

    .line 589
    :cond_ea
    const/16 v2, 0x16

    new-array v2, v2, [F

    iput-object v2, v10, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->ax:[F

    .line 590
    const/16 v2, 0x16

    new-array v2, v2, [F

    iput-object v2, v10, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->ay:[F

    .line 591
    const/4 v2, 0x0

    move v3, v2

    :goto_f8
    const/16 v2, 0x16

    if-ge v3, v2, :cond_124

    .line 592
    iget-object v4, v10, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->ax:[F

    aget v2, v11, v3

    if-lez v2, :cond_11e

    aget-wide v12, v7, v3

    aget v2, v11, v3

    int-to-double v14, v2

    div-double/2addr v12, v14

    double-to-float v2, v12

    :goto_109
    aput v2, v4, v3

    .line 593
    iget-object v4, v10, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->ay:[F

    aget v2, v11, v3

    if-lez v2, :cond_121

    aget-wide v12, v8, v3

    aget v2, v11, v3

    int-to-double v14, v2

    div-double/2addr v12, v14

    double-to-float v2, v12

    :goto_118
    aput v2, v4, v3

    .line 591
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_f8

    .line 592
    :cond_11e
    const/high16 v2, -0x40800000    # -1.0f

    goto :goto_109

    .line 593
    :cond_121
    const/high16 v2, -0x40800000    # -1.0f

    goto :goto_118

    .line 595
    :cond_124
    mul-int v2, v5, v9

    new-array v2, v2, [I

    iput-object v2, v10, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->px:[I

    .line 596
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v9, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v10, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->over:Landroid/graphics/Bitmap;

    .line 597
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v9, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v10, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->glow:Landroid/graphics/Bitmap;
    :try_end_13a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_13a} :catch_13d

    :goto_13a
    move-object v2, v10

    .line 601
    goto/16 :goto_52

    .line 598
    :catch_13d
    move-exception v2

    .line 599
    const-string v3, "AutoViews.body"

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13a
.end method

.method private repaint(Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;Landroid/graphics/Bitmap;Z)V
    .registers 14

    .prologue
    .line 649
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 674
    :cond_4
    :goto_4
    return-void

    .line 652
    :cond_5
    const/16 v0, 0xb

    new-array v2, v0, [I

    .line 653
    const/16 v0, 0xb

    new-array v3, v0, [F

    .line 654
    const/4 v0, 0x0

    move v1, v0

    :goto_f
    const/16 v0, 0xb

    if-ge v1, v0, :cond_6d

    .line 655
    if-eqz p3, :cond_4e

    .line 656
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

    .line 657
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

    .line 654
    :goto_48
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    .line 657
    :cond_4c
    const/4 v0, 0x0

    goto :goto_46

    .line 659
    :cond_4e
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->female:Z

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->shown:[D

    aget-wide v4, v4, v1

    invoke-static {v0, v4, v5}, Lcom/isaigu/gymapp/ai/AutoViews;->bodyHeat(ZD)I

    move-result v0

    aput v0, v2, v1

    .line 660
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

    .line 663
    :cond_6d
    iget-object v1, p1, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->px:[I

    .line 664
    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 665
    const/4 v0, 0x0

    :goto_74
    iget-object v4, p1, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->idx:[I

    array-length v4, v4

    if-ge v0, v4, :cond_a7

    .line 666
    iget-object v4, p1, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->zone:[B

    aget-byte v4, v4, v0

    .line 667
    aget v5, v3, v4

    .line 668
    const/4 v6, 0x0

    cmpg-float v6, v5, v6

    if-gtz v6, :cond_87

    .line 665
    :goto_84
    add-int/lit8 v0, v0, 0x1

    goto :goto_74

    .line 671
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

    .line 673
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
    .line 631
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 632
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 633
    and-int/lit16 v3, p0, 0xff

    .line 634
    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v2, p1, v2

    if-gez v2, :cond_29

    .line 635
    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v2, v0

    .line 636
    mul-int/lit8 v0, v1, 0x2

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v1, v0

    .line 637
    mul-int/lit8 v0, v3, 0x2

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 644
    :goto_1f
    shl-int/lit8 v3, p2, 0x18

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v3

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0

    .line 639
    :cond_29
    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, p1

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v2, v4

    const v4, 0x3f0ccccd    # 0.55f

    mul-float/2addr v4, v2

    .line 640
    int-to-float v2, v0

    rsub-int v0, v0, 0xff

    int-to-float v0, v0

    mul-float/2addr v0, v4

    add-float/2addr v0, v2

    float-to-int v2, v0

    .line 641
    int-to-float v0, v1

    rsub-int v1, v1, 0xff

    int-to-float v1, v1

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    float-to-int v1, v0

    .line 642
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
    .line 538
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->fadeMs:[J

    aget-wide v0, v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_f

    .line 539
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->held:[D

    aget-wide v0, v0, p1

    .line 543
    :goto_e
    return-wide v0

    .line 541
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

    .line 542
    mul-double v2, v0, v0

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v6

    sub-double v0, v4, v0

    mul-double/2addr v0, v2

    .line 543
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

    .line 606
    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    .line 607
    and-int/lit16 v3, p0, 0xff

    const/16 v4, 0x8

    if-gt v3, v4, :cond_e

    .line 613
    :goto_d
    return v1

    .line 610
    :cond_e
    const/4 v3, 0x1

    if-lt v2, v3, :cond_16

    if-gt v2, v0, :cond_16

    .line 611
    add-int/lit8 v1, v2, -0x1

    goto :goto_d

    .line 613
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
.method public anchor(III[F)Z
    .registers 13

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 516
    if-ltz p1, :cond_1f

    const/4 v0, 0x2

    if-ge p1, v0, :cond_1f

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->figs:[Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;

    aget-object v0, v0, p1

    move-object v3, v0

    .line 517
    :goto_d
    if-eqz v3, :cond_1d

    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->ax:[F

    if-eqz v0, :cond_1d

    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->art:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1d

    if-ltz p2, :cond_1d

    const/16 v0, 0xb

    if-lt p2, v0, :cond_22

    :cond_1d
    move v0, v1

    .line 533
    :goto_1e
    return v0

    .line 516
    :cond_1f
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_d

    .line 520
    :cond_22
    mul-int/lit8 v0, p2, 0x2

    add-int/2addr v0, p3

    .line 521
    iget-object v4, v3, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->ax:[F

    aget v4, v4, v0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3c

    .line 522
    mul-int/lit8 v0, p2, 0x2

    rsub-int/lit8 v4, p3, 0x1

    add-int/2addr v0, v4

    .line 523
    iget-object v4, v3, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->ax:[F

    aget v4, v4, v0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3c

    move v0, v1

    .line 524
    goto :goto_1e

    .line 527
    :cond_3c
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 528
    invoke-virtual {p0, p1, v4}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->figRect(ILandroid/graphics/RectF;)Z

    move-result v5

    if-nez v5, :cond_49

    move v0, v1

    .line 529
    goto :goto_1e

    .line 531
    :cond_49
    iget v5, v4, Landroid/graphics/RectF;->left:F

    iget-object v6, v3, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->ax:[F

    aget v6, v6, v0

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    mul-float/2addr v6, v7

    iget-object v7, v3, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->art:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    aput v5, p4, v1

    .line 532
    iget v1, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, v3, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->ay:[F

    aget v0, v5, v0

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v0, v4

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->art:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    add-float/2addr v0, v1

    aput v0, p4, v2

    move v0, v2

    .line 533
    goto :goto_1e
.end method

.method figRect(ILandroid/graphics/RectF;)Z
    .registers 15

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 478
    const/high16 v0, 0x41b00000    # 22.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v5

    .line 479
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->getHeight()I

    move-result v0

    int-to-float v6, v0

    .line 481
    iget-object v7, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->figs:[Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;

    array-length v8, v7

    move v3, v2

    move v0, v4

    :goto_16
    if-ge v3, v8, :cond_35

    aget-object v9, v7, v3

    .line 482
    if-eqz v9, :cond_32

    iget-object v10, v9, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->art:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_32

    .line 483
    iget-object v10, v9, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->art:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v6

    iget-object v9, v9, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->art:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v10, v9

    add-float/2addr v0, v9

    .line 481
    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 486
    :cond_35
    cmpg-float v3, v0, v4

    if-lez v3, :cond_47

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->figs:[Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;

    aget-object v3, v3, p1

    if-eqz v3, :cond_47

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->figs:[Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->art:Landroid/graphics/Bitmap;

    if-nez v3, :cond_49

    :cond_47
    move v0, v2

    .line 508
    :goto_48
    return v0

    .line 490
    :cond_49
    add-float v3, v0, v5

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_60

    .line 491
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v5

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float v1, v3, v1

    .line 493
    :cond_60
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v1

    add-float/2addr v0, v5

    sub-float v0, v3, v0

    div-float/2addr v0, v11

    .line 494
    mul-float v3, v6, v1

    .line 495
    sub-float v1, v6, v3

    div-float v4, v1, v11

    move v1, v2

    .line 496
    :goto_71
    const/4 v6, 0x2

    if-ge v1, v6, :cond_a0

    .line 497
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->figs:[Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;

    aget-object v6, v6, v1

    .line 498
    if-eqz v6, :cond_7e

    iget-object v7, v6, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->art:Landroid/graphics/Bitmap;

    if-nez v7, :cond_81

    .line 496
    :cond_7e
    :goto_7e
    add-int/lit8 v1, v1, 0x1

    goto :goto_71

    .line 501
    :cond_81
    iget-object v7, v6, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->art:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v3

    iget-object v6, v6, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->art:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v7, v6

    .line 502
    if-ne v1, p1, :cond_9d

    .line 503
    add-float v1, v0, v6

    add-float v2, v4, v3

    invoke-virtual {p2, v0, v4, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 504
    const/4 v0, 0x1

    goto :goto_48

    .line 506
    :cond_9d
    add-float/2addr v6, v5

    add-float/2addr v0, v6

    goto :goto_7e

    :cond_a0
    move v0, v2

    .line 508
    goto :goto_48
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 22

    .prologue
    .line 678
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 679
    const/4 v4, 0x0

    .line 680
    const/4 v2, 0x0

    move v3, v2

    move v5, v4

    :goto_8
    const/16 v2, 0xb

    if-ge v3, v2, :cond_50

    .line 681
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6, v7}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->shownAt(IJ)D

    move-result-wide v8

    .line 682
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->shown:[D

    aget-wide v10, v2, v3

    cmpl-double v2, v8, v10

    if-eqz v2, :cond_2c

    .line 683
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->shown:[D

    aput-wide v8, v2, v3

    .line 684
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->dirty:Z

    .line 685
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->glowDirty:Z

    .line 687
    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->fadeMs:[J

    aget-wide v8, v2, v3

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-lez v2, :cond_4e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->fadeMs:[J

    aget-wide v8, v2, v3

    sub-long v8, v6, v8

    const-wide/16 v10, 0x384

    cmp-long v2, v8, v10

    if-gez v2, :cond_4e

    const/4 v2, 0x1

    :goto_47
    or-int v4, v5, v2

    .line 680
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v5, v4

    goto :goto_8

    .line 687
    :cond_4e
    const/4 v2, 0x0

    goto :goto_47

    .line 689
    :cond_50
    const/4 v3, 0x0

    .line 690
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->active:[Z

    array-length v9, v8

    const/4 v2, 0x0

    move v4, v3

    :goto_58
    if-ge v2, v9, :cond_61

    aget-boolean v3, v8, v2

    .line 691
    or-int/2addr v3, v4

    .line 690
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    goto :goto_58

    .line 693
    :cond_61
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->dirty:Z

    if-eqz v2, :cond_87

    .line 694
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->dirty:Z

    .line 695
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->figs:[Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;

    array-length v9, v8

    const/4 v2, 0x0

    move v3, v2

    :goto_73
    if-ge v3, v9, :cond_87

    aget-object v10, v8, v3

    .line 696
    if-eqz v10, :cond_85

    iget-object v2, v10, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->over:Landroid/graphics/Bitmap;

    :goto_7b
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2, v11}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->repaint(Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;Landroid/graphics/Bitmap;Z)V

    .line 695
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_73

    .line 696
    :cond_85
    const/4 v2, 0x0

    goto :goto_7b

    .line 699
    :cond_87
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->glowDirty:Z

    if-eqz v2, :cond_af

    if-eqz v4, :cond_af

    .line 700
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->glowDirty:Z

    .line 701
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->figs:[Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;

    array-length v9, v8

    const/4 v2, 0x0

    move v3, v2

    :goto_9b
    if-ge v3, v9, :cond_af

    aget-object v10, v8, v3

    .line 702
    if-eqz v10, :cond_ad

    iget-object v2, v10, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->glow:Landroid/graphics/Bitmap;

    :goto_a3
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2, v11}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->repaint(Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;Landroid/graphics/Bitmap;Z)V

    .line 701
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_9b

    .line 702
    :cond_ad
    const/4 v2, 0x0

    goto :goto_a3

    .line 706
    :cond_af
    const-wide/16 v2, 0x44c

    rem-long v2, v6, v2

    long-to-double v2, v2

    const-wide v6, 0x4091300000000000L    # 1100.0

    div-double/2addr v2, v6

    .line 707
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->glowPaint:Landroid/graphics/Paint;

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

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 708
    const/4 v2, 0x0

    :goto_e8
    const/4 v3, 0x2

    if-ge v2, v3, :cond_15f

    .line 709
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->figs:[Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;

    aget-object v3, v3, v2

    .line 710
    if-eqz v3, :cond_103

    iget-object v6, v3, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->art:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_103

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->dst:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->figRect(ILandroid/graphics/RectF;)Z

    move-result v6

    if-nez v6, :cond_106

    .line 708
    :cond_103
    :goto_103
    add-int/lit8 v2, v2, 0x1

    goto :goto_e8

    .line 713
    :cond_106
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->src:Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, v3, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->art:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    iget-object v10, v3, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->art:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 714
    iget-object v6, v3, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->art:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->src:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->dst:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 715
    iget-object v6, v3, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->over:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_145

    .line 716
    iget-object v6, v3, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->over:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->src:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->dst:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 718
    :cond_145
    if-eqz v4, :cond_103

    iget-object v6, v3, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->glow:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_103

    .line 719
    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->glow:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->src:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->dst:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->glowPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_103

    .line 722
    :cond_15f
    if-nez v4, :cond_163

    if-eqz v5, :cond_166

    .line 723
    :cond_163
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->postInvalidateOnAnimation()V

    .line 725
    :cond_166
    return-void
.end method

.method public set(Lcom/isaigu/gymapp/ai/AiModel$Sex;[D[D[Z)V
    .registers 11

    .prologue
    .line 416
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->set(Lcom/isaigu/gymapp/ai/AiModel$Sex;[D[D[Z[Z)V

    .line 417
    return-void
.end method

.method public set(Lcom/isaigu/gymapp/ai/AiModel$Sex;[D[D[Z[Z)V
    .registers 22

    .prologue
    .line 425
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_51

    const-string v2, "female"

    .line 426
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->sexKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_60

    .line 427
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->sexKey:Ljava/lang/String;

    .line 428
    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_54

    const/4 v3, 0x1

    :goto_1d
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->female:Z

    .line 429
    const/4 v3, 0x0

    :goto_22
    const/4 v4, 0x2

    if-ge v3, v4, :cond_56

    .line 430
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

    .line 429
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 425
    :cond_51
    const-string v2, "male"

    goto :goto_8

    .line 428
    :cond_54
    const/4 v3, 0x0

    goto :goto_1d

    .line 432
    :cond_56
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->dirty:Z

    .line 433
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->glowDirty:Z

    .line 435
    :cond_60
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 436
    const/4 v3, 0x0

    .line 437
    const/4 v2, 0x0

    move v9, v2

    move v12, v3

    :goto_68
    const/16 v2, 0xb

    if-ge v9, v2, :cond_180

    .line 439
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

    .line 440
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

    .line 441
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

    .line 442
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

    .line 443
    :goto_be
    if-eqz v8, :cond_ce

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->active:[Z

    aget-boolean v2, v2, v9

    if-nez v2, :cond_ce

    .line 444
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->activeSince:[J

    aput-wide v6, v2, v9

    .line 446
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

    .line 447
    :cond_e0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->glowDirty:Z

    .line 449
    :cond_e5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->active:[Z

    aput-boolean v8, v2, v9

    .line 450
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->live:[D

    aput-wide v10, v2, v9

    .line 451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->target:[D

    aput-wide v4, v2, v9

    .line 452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->off:[Z

    aget-boolean v2, v2, v9

    if-eq v3, v2, :cond_10a

    .line 453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->off:[Z

    aput-boolean v3, v2, v9

    .line 454
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->dirty:Z

    .line 458
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

    .line 459
    :goto_122
    if-eqz v2, :cond_15c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->held:[D

    aget-wide v2, v2, v9

    cmpl-double v2, v4, v2

    if-eqz v2, :cond_15c

    .line 460
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->from:[D

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->first:Z

    if-eqz v2, :cond_177

    move-wide v2, v4

    :goto_139
    aput-wide v2, v10, v9

    .line 461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->held:[D

    aput-wide v4, v2, v9

    .line 462
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->fadeMs:[J

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->first:Z

    if-eqz v2, :cond_17e

    const-wide/16 v2, 0x0

    :goto_14d
    aput-wide v2, v4, v9

    .line 463
    if-eqz v8, :cond_157

    .line 464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->activeSince:[J

    aput-wide v6, v2, v9

    .line 466
    :cond_157
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->dirty:Z

    .line 468
    :cond_15c
    or-int v3, v12, v8

    .line 437
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    move v12, v3

    goto/16 :goto_68

    .line 439
    :cond_164
    const-wide/16 v4, 0x0

    goto/16 :goto_81

    .line 440
    :cond_168
    const-wide/16 v2, 0x0

    move-wide v10, v2

    goto/16 :goto_9c

    .line 441
    :cond_16d
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_af

    .line 442
    :cond_171
    const/4 v2, 0x0

    move v8, v2

    goto/16 :goto_be

    .line 458
    :cond_175
    const/4 v2, 0x0

    goto :goto_122

    .line 460
    :cond_177
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v6, v7}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->shownAt(IJ)D

    move-result-wide v2

    goto :goto_139

    :cond_17e
    move-wide v2, v6

    .line 462
    goto :goto_14d

    .line 470
    :cond_180
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->first:Z

    .line 471
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->dirty:Z

    if-nez v2, :cond_193

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->glowDirty:Z

    if-nez v2, :cond_193

    if-eqz v12, :cond_196

    .line 472
    :cond_193
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->invalidate()V

    .line 474
    :cond_196
    return-void
.end method
