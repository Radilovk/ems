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
.field private static final SIDES:[Ljava/lang/String;


# instance fields
.field private dirty:Z

.field private final dst:Landroid/graphics/RectF;

.field private final figs:[Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;

.field private final live:[D

.field private final load:[D

.field private final off:[Z

.field private final paint:Landroid/graphics/Paint;

.field private sexCol:I

.field private sexKey:Ljava/lang/String;

.field private final src:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 296
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
    .registers 5

    .prologue
    const/16 v2, 0xa

    .line 319
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 297
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->figs:[Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;

    .line 298
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->paint:Landroid/graphics/Paint;

    .line 299
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->src:Landroid/graphics/Rect;

    .line 300
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->dst:Landroid/graphics/RectF;

    .line 301
    new-array v0, v2, [D

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->load:[D

    .line 302
    new-array v0, v2, [D

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->live:[D

    .line 303
    new-array v0, v2, [Z

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->off:[Z

    .line 304
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->sexKey:Ljava/lang/String;

    .line 305
    const v0, -0xdd1c01

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->sexCol:I

    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->dirty:Z

    .line 320
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
    .line 398
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 400
    :try_start_8
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 401
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 402
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 403
    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    .line 404
    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    move-result-object v0

    .line 406
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 404
    return-object v0

    .line 406
    :catchall_1f
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 407
    throw v0
.end method

.method static load(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;
    .registers 15

    .prologue
    const/16 v12, 0xa

    const/16 v11, 0x8

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 354
    new-instance v8, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;

    invoke-direct {v8}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;-><init>()V

    .line 356
    :try_start_b
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

    .line 357
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

    .line 358
    iget-object v1, v8, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->art:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4f

    if-nez v0, :cond_51

    :cond_4f
    move-object v0, v8

    .line 394
    :goto_50
    return-object v0

    .line 361
    :cond_51
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 362
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 363
    mul-int v1, v3, v7

    new-array v1, v1, [I

    .line 364
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 365
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 367
    array-length v4, v1

    move v2, v9

    move v0, v9

    :goto_6a
    if-ge v2, v4, :cond_7f

    aget v5, v1, v2

    .line 368
    shr-int/lit8 v6, v5, 0x10

    and-int/lit16 v6, v6, 0xff

    .line 369
    if-lt v6, v10, :cond_7c

    if-gt v6, v12, :cond_7c

    and-int/lit16 v5, v5, 0xff

    if-le v5, v11, :cond_7c

    .line 370
    add-int/lit8 v0, v0, 0x1

    .line 367
    :cond_7c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6a

    .line 373
    :cond_7f
    new-array v2, v0, [I

    iput-object v2, v8, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->idx:[I

    .line 374
    new-array v2, v0, [B

    iput-object v2, v8, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->zone:[B

    .line 375
    new-array v2, v0, [B

    iput-object v2, v8, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->shade:[B

    .line 376
    new-array v0, v0, [B

    iput-object v0, v8, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->cov:[B

    move v2, v9

    move v0, v9

    .line 378
    :goto_91
    array-length v4, v1

    if-ge v2, v4, :cond_c2

    .line 379
    aget v4, v1, v2

    .line 380
    shr-int/lit8 v5, v4, 0x10

    and-int/lit16 v5, v5, 0xff

    .line 381
    if-lt v5, v10, :cond_bf

    if-gt v5, v12, :cond_bf

    and-int/lit16 v6, v4, 0xff

    if-le v6, v11, :cond_bf

    .line 382
    iget-object v6, v8, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->idx:[I

    aput v2, v6, v0

    .line 383
    iget-object v6, v8, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->zone:[B

    add-int/lit8 v5, v5, -0x1

    int-to-byte v5, v5

    aput-byte v5, v6, v0

    .line 384
    iget-object v5, v8, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->shade:[B

    shr-int/lit8 v6, v4, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v0

    .line 385
    iget-object v5, v8, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->cov:[B

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v5, v0

    .line 386
    add-int/lit8 v0, v0, 0x1

    .line 378
    :cond_bf
    add-int/lit8 v2, v2, 0x1

    goto :goto_91

    .line 389
    :cond_c2
    mul-int v0, v3, v7

    new-array v0, v0, [I

    iput-object v0, v8, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->px:[I

    .line 390
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v8, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->over:Landroid/graphics/Bitmap;
    :try_end_d0
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_d0} :catch_d3

    :goto_d0
    move-object v0, v8

    .line 394
    goto/16 :goto_50

    .line 391
    :catch_d3
    move-exception v0

    .line 392
    const-string v1, "AutoViews.body"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d0
.end method

.method private repaint(Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;)V
    .registers 16

    .prologue
    const/16 v1, 0xa

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 412
    if-eqz p1, :cond_a

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->over:Landroid/graphics/Bitmap;

    if-nez v0, :cond_b

    .line 449
    :cond_a
    :goto_a
    return-void

    .line 415
    :cond_b
    new-array v7, v1, [I

    .line 416
    new-array v8, v1, [F

    move v0, v2

    .line 417
    :goto_10
    array-length v1, v7

    if-ge v0, v1, :cond_41

    .line 419
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->sexCol:I

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->load:[D

    aget-wide v4, v4, v0

    invoke-static {v1, v4, v5}, Lcom/isaigu/gymapp/ai/AutoViews;->bodyHeat(ID)I

    move-result v1

    const/4 v4, -0x1

    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->live:[D

    aget-wide v12, v5, v0

    mul-double/2addr v10, v12

    double-to-float v5, v10

    invoke-static {v1, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v1

    aput v1, v7, v0

    .line 420
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->off:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_38

    move v1, v3

    :goto_33
    aput v1, v8, v0

    .line 417
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 420
    :cond_38
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->load:[D

    aget-wide v4, v1, v0

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AutoViews;->bodyFill(D)F

    move-result v1

    goto :goto_33

    .line 422
    :cond_41
    iget-object v1, p1, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->px:[I

    .line 423
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    move v0, v2

    .line 424
    :goto_47
    iget-object v4, p1, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->idx:[I

    array-length v4, v4

    if-ge v0, v4, :cond_be

    .line 425
    iget-object v4, p1, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->zone:[B

    aget-byte v4, v4, v0

    .line 426
    aget v9, v8, v4

    .line 427
    cmpg-float v5, v9, v3

    if-gtz v5, :cond_59

    .line 424
    :goto_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 430
    :cond_59
    aget v4, v7, v4

    .line 431
    iget-object v5, p1, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->shade:[B

    aget-byte v5, v5, v0

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    const/high16 v6, 0x437f0000    # 255.0f

    div-float v10, v5, v6

    .line 432
    shr-int/lit8 v5, v4, 0x10

    and-int/lit16 v5, v5, 0xff

    .line 433
    shr-int/lit8 v6, v4, 0x8

    and-int/lit16 v11, v6, 0xff

    .line 434
    and-int/lit16 v4, v4, 0xff

    .line 435
    const/high16 v6, 0x3f000000    # 0.5f

    cmpg-float v6, v10, v6

    if-gez v6, :cond_9e

    .line 436
    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    mul-float/2addr v5, v10

    float-to-int v6, v5

    .line 437
    mul-int/lit8 v5, v11, 0x2

    int-to-float v5, v5

    mul-float/2addr v5, v10

    float-to-int v5, v5

    .line 438
    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    mul-float/2addr v4, v10

    float-to-int v4, v4

    .line 445
    :goto_85
    iget-object v10, p1, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->cov:[B

    aget-byte v10, v10, v0

    and-int/lit16 v10, v10, 0xff

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    .line 446
    iget-object v10, p1, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->idx:[I

    aget v10, v10, v0

    shl-int/lit8 v9, v9, 0x18

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v6, v9

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v1, v10

    goto :goto_56

    .line 440
    :cond_9e
    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, v10

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v6, v10

    const v10, 0x3f0ccccd    # 0.55f

    mul-float/2addr v10, v6

    .line 441
    int-to-float v6, v5

    rsub-int v5, v5, 0xff

    int-to-float v5, v5

    mul-float/2addr v5, v10

    add-float/2addr v5, v6

    float-to-int v6, v5

    .line 442
    int-to-float v5, v11

    rsub-int v11, v11, 0xff

    int-to-float v11, v11

    mul-float/2addr v11, v10

    add-float/2addr v5, v11

    float-to-int v5, v5

    .line 443
    int-to-float v11, v4

    rsub-int v4, v4, 0xff

    int-to-float v4, v4

    mul-float/2addr v4, v10

    add-float/2addr v4, v11

    float-to-int v4, v4

    goto :goto_85

    .line 448
    :cond_be
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->over:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->over:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p1, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->over:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v4, p1, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->over:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto/16 :goto_a
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16

    .prologue
    const/high16 v13, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 453
    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->dirty:Z

    if-eqz v2, :cond_1b

    .line 454
    iput-boolean v3, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->dirty:Z

    .line 455
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->figs:[Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->repaint(Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;)V

    .line 456
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->figs:[Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->repaint(Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;)V

    .line 459
    :cond_1b
    const/high16 v2, 0x41b00000    # 22.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v4

    .line 460
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float v5, v2, v0

    .line 462
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->figs:[Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;

    array-length v7, v6

    move v2, v3

    :goto_2c
    if-ge v2, v7, :cond_4b

    aget-object v8, v6, v2

    .line 463
    if-eqz v8, :cond_48

    iget-object v9, v8, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->art:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_48

    .line 464
    iget-object v9, v8, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->art:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v5

    iget-object v8, v8, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->art:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v9, v8

    add-float/2addr v0, v8

    .line 462
    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 468
    :cond_4b
    add-float v2, v0, v4

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->getWidth()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v2, v2, v6

    if-lez v2, :cond_62

    .line 469
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float v1, v2, v1

    .line 471
    :cond_62
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    sub-float v0, v2, v0

    div-float/2addr v0, v13

    move v2, v3

    .line 472
    :goto_6d
    const/4 v6, 0x2

    if-ge v2, v6, :cond_c9

    .line 473
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->figs:[Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;

    aget-object v6, v6, v2

    .line 474
    if-eqz v6, :cond_7a

    iget-object v7, v6, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->art:Landroid/graphics/Bitmap;

    if-nez v7, :cond_7d

    .line 472
    :cond_7a
    :goto_7a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6d

    .line 477
    :cond_7d
    mul-float v7, v5, v1

    .line 478
    iget-object v8, v6, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->art:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v7

    iget-object v9, v6, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->art:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 479
    sub-float v9, v5, v7

    div-float/2addr v9, v13

    .line 480
    iget-object v10, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->src:Landroid/graphics/Rect;

    iget-object v11, v6, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->art:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    iget-object v12, v6, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->art:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-virtual {v10, v3, v3, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 481
    iget-object v10, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->dst:Landroid/graphics/RectF;

    add-float v11, v0, v8

    add-float/2addr v7, v9

    invoke-virtual {v10, v0, v9, v11, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 482
    iget-object v7, v6, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->art:Landroid/graphics/Bitmap;

    iget-object v9, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->src:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->dst:Landroid/graphics/RectF;

    iget-object v11, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 483
    iget-object v7, v6, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->over:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_c5

    .line 484
    iget-object v6, v6, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->over:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->src:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->dst:Landroid/graphics/RectF;

    iget-object v10, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 486
    :cond_c5
    add-float v6, v8, v4

    add-float/2addr v0, v6

    goto :goto_7a

    .line 488
    :cond_c9
    return-void
.end method

.method public set(Lcom/isaigu/gymapp/ai/AiModel$Sex;[D[D[Z)V
    .registers 13

    .prologue
    .line 327
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne p1, v0, :cond_4a

    const-string v0, "female"

    .line 328
    :goto_6
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->sexKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 329
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->sexKey:Ljava/lang/String;

    .line 330
    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne p1, v1, :cond_4d

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    :goto_16
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->colorFor(Lcom/isaigu/gymapp/ai/AiModel$Sex;)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->sexCol:I

    .line 331
    const/4 v1, 0x0

    :goto_1d
    const/4 v2, 0x2

    if-ge v1, v2, :cond_50

    .line 332
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->figs:[Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->SIDES:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;

    move-result-object v3

    aput-object v3, v2, v1

    .line 331
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 327
    :cond_4a
    const-string v0, "male"

    goto :goto_6

    .line 330
    :cond_4d
    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    goto :goto_16

    .line 334
    :cond_50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->dirty:Z

    .line 336
    :cond_53
    const/4 v0, 0x0

    :goto_54
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->load:[D

    array-length v1, v1

    if-ge v0, v1, :cond_c5

    .line 338
    if-eqz p2, :cond_bc

    array-length v1, p2

    if-ge v0, v1, :cond_bc

    aget-wide v2, p2, v0

    const-wide/high16 v4, 0x4054000000000000L    # 80.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4054000000000000L    # 80.0

    div-double/2addr v2, v4

    move-wide v4, v2

    .line 339
    :goto_6c
    if-eqz p3, :cond_c0

    array-length v1, p3

    if-ge v0, v1, :cond_c0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aget-wide v6, p3, v0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    mul-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double/2addr v2, v6

    .line 340
    :goto_84
    if-eqz p4, :cond_8d

    array-length v1, p4

    if-ge v0, v1, :cond_8d

    aget-boolean v1, p4, v0

    if-nez v1, :cond_93

    :cond_8d
    const-wide/16 v6, 0x0

    cmpg-double v1, v4, v6

    if-gez v1, :cond_c3

    :cond_93
    const/4 v1, 0x1

    .line 341
    :goto_94
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->load:[D

    aget-wide v6, v6, v0

    cmpl-double v6, v4, v6

    if-nez v6, :cond_aa

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->live:[D

    aget-wide v6, v6, v0

    cmpl-double v6, v2, v6

    if-nez v6, :cond_aa

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->off:[Z

    aget-boolean v6, v6, v0

    if-eq v1, v6, :cond_b9

    .line 342
    :cond_aa
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->load:[D

    aput-wide v4, v6, v0

    .line 343
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->live:[D

    aput-wide v2, v4, v0

    .line 344
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->off:[Z

    aput-boolean v1, v2, v0

    .line 345
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->dirty:Z

    .line 336
    :cond_b9
    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    .line 338
    :cond_bc
    const-wide/16 v2, 0x0

    move-wide v4, v2

    goto :goto_6c

    .line 339
    :cond_c0
    const-wide/16 v2, 0x0

    goto :goto_84

    .line 340
    :cond_c3
    const/4 v1, 0x0

    goto :goto_94

    .line 348
    :cond_c5
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->dirty:Z

    if-eqz v0, :cond_cc

    .line 349
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->invalidate()V

    .line 351
    :cond_cc
    return-void
.end method
