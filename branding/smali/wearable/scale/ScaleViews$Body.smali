.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;
.super Landroid/view/View;
.source "ScaleViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Body"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;
    }
.end annotation


# static fields
.field static final SIDES:[Ljava/lang/String;


# instance fields
.field byChannel:Z

.field final chCol:[I

.field dirty:Z

.field final dst:[Landroid/graphics/RectF;

.field final figs:[Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;

.field key:Ljava/lang/String;

.field final label:Landroid/graphics/Paint;

.field onSegment:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;

.field final paint:Landroid/graphics/Paint;

.field reveal:F

.field final segCol:[I

.field selected:I

.field final src:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 148
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "front"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "back"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->SIDES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 177
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 149
    new-array v0, v2, [Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->figs:[Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;

    .line 150
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->paint:Landroid/graphics/Paint;

    .line 151
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->label:Landroid/graphics/Paint;

    .line 152
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->src:Landroid/graphics/Rect;

    .line 153
    new-array v0, v2, [Landroid/graphics/RectF;

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v0, v1

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    .line 155
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->segCol:[I

    .line 156
    const/16 v0, 0xb

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->chCol:[I

    .line 158
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->key:Ljava/lang/String;

    .line 159
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->selected:I

    .line 160
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dirty:Z

    .line 161
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->reveal:F

    .line 178
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->label:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 179
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->label:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 180
    return-void
.end method

.method static decode(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 279
    :try_start_8
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 280
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 281
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 282
    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    .line 283
    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    move-result-object v0

    .line 285
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 283
    return-object v0

    .line 285
    :catchall_1f
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 286
    throw v0
.end method

.method static load(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;
    .registers 16

    .prologue
    const/4 v13, 0x5

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 229
    new-instance v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;

    invoke-direct {v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;-><init>()V

    .line 231
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xems/body/scale/"

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

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->decode(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->art:Landroid/graphics/Bitmap;

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xems/body/scale/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-map.webp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->decode(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 233
    iget-object v1, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->art:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4c

    if-nez v0, :cond_4e

    :cond_4c
    move-object v0, v10

    .line 273
    :goto_4d
    return-object v0

    .line 236
    :cond_4e
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    .line 237
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->h:I

    .line 238
    iget v1, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    iget v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->h:I

    mul-int/2addr v1, v2

    new-array v1, v1, [I

    .line 239
    const/4 v2, 0x0

    iget v3, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    iget v7, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->h:I

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 240
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 241
    iget v0, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    iget v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->h:I

    mul-int/2addr v0, v2

    new-array v3, v0, [I

    .line 242
    iget-object v0, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->art:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    if-ne v0, v2, :cond_ad

    iget-object v0, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->art:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->h:I

    if-ne v0, v2, :cond_ad

    iget-object v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->art:Landroid/graphics/Bitmap;

    .line 244
    :goto_8d
    const/4 v4, 0x0

    iget v5, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    iget v9, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->h:I

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 246
    array-length v4, v1

    move v2, v11

    move v0, v11

    :goto_9c
    if-ge v2, v4, :cond_b9

    aget v5, v1, v2

    .line 247
    shr-int/lit8 v5, v5, 0x10

    and-int/lit16 v5, v5, 0xff

    .line 248
    if-lt v5, v12, :cond_aa

    if-gt v5, v13, :cond_aa

    .line 249
    add-int/lit8 v0, v0, 0x1

    .line 246
    :cond_aa
    add-int/lit8 v2, v2, 0x1

    goto :goto_9c

    .line 243
    :cond_ad
    iget-object v0, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->art:Landroid/graphics/Bitmap;

    iget v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    iget v4, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->h:I

    const/4 v5, 0x1

    invoke-static {v0, v2, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_8d

    .line 252
    :cond_b9
    new-array v2, v0, [I

    iput-object v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->idx:[I

    .line 253
    new-array v2, v0, [B

    iput-object v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->seg:[B

    .line 254
    new-array v2, v0, [B

    iput-object v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->ch:[B

    .line 255
    new-array v0, v0, [B

    iput-object v0, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->lum:[B

    move v4, v11

    move v0, v11

    .line 257
    :goto_cb
    array-length v2, v1

    if-ge v4, v2, :cond_101

    .line 258
    aget v2, v1, v4

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    .line 259
    if-lt v2, v12, :cond_fb

    if-gt v2, v13, :cond_fb

    .line 260
    iget-object v5, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->idx:[I

    aput v4, v5, v0

    .line 261
    iget-object v5, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->seg:[B

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    .line 262
    aget v2, v1, v4

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 263
    iget-object v5, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->ch:[B

    const/16 v6, 0xa

    if-gt v2, v6, :cond_ff

    :goto_ed
    int-to-byte v2, v2

    aput-byte v2, v5, v0

    .line 264
    iget-object v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->lum:[B

    aget v5, v3, v4

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v0

    .line 265
    add-int/lit8 v0, v0, 0x1

    .line 257
    :cond_fb
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_cb

    :cond_ff
    move v2, v11

    .line 263
    goto :goto_ed

    .line 268
    :cond_101
    iget v0, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    iget v1, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->h:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->px:[I

    .line 269
    iget v0, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    iget v1, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->h:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->over:Landroid/graphics/Bitmap;
    :try_end_116
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_116} :catch_119

    :goto_116
    move-object v0, v10

    .line 273
    goto/16 :goto_4d

    .line 270
    :catch_119
    move-exception v0

    .line 271
    const-string v1, "ScaleViews.body"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_116
.end method

.method static segAt(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;II)I
    .registers 13

    .prologue
    const/4 v3, 0x0

    .line 391
    move v6, v3

    move v2, v3

    .line 392
    :goto_3
    const/16 v0, 0xe

    if-gt v6, v0, :cond_5b

    if-nez v2, :cond_5b

    .line 393
    neg-int v0, v6

    move v5, v0

    :goto_b
    if-gt v5, v6, :cond_57

    if-nez v2, :cond_57

    .line 394
    neg-int v0, v6

    move v4, v0

    :goto_11
    if-gt v4, v6, :cond_53

    if-nez v2, :cond_53

    .line 395
    add-int v0, p1, v4

    add-int v1, p2, v5

    .line 396
    if-ltz v0, :cond_5c

    if-ltz v1, :cond_5c

    iget v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    if-ge v0, v7, :cond_5c

    iget v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->h:I

    if-lt v1, v7, :cond_2b

    move v0, v2

    .line 394
    :goto_26
    add-int/lit8 v1, v4, 0x2

    move v4, v1

    move v2, v0

    goto :goto_11

    .line 399
    :cond_2b
    iget v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    mul-int/2addr v1, v7

    add-int v7, v1, v0

    .line 400
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->idx:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    move v1, v3

    .line 401
    :goto_36
    if-gt v1, v0, :cond_5c

    .line 402
    add-int v8, v1, v0

    ushr-int/lit8 v8, v8, 0x1

    .line 403
    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->idx:[I

    aget v9, v9, v8

    if-ge v9, v7, :cond_45

    .line 404
    add-int/lit8 v1, v8, 0x1

    goto :goto_36

    .line 405
    :cond_45
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->idx:[I

    aget v0, v0, v8

    if-le v0, v7, :cond_4e

    .line 406
    add-int/lit8 v0, v8, -0x1

    goto :goto_36

    .line 408
    :cond_4e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->seg:[B

    aget-byte v0, v0, v8

    goto :goto_26

    .line 393
    :cond_53
    add-int/lit8 v0, v5, 0x2

    move v5, v0

    goto :goto_b

    .line 392
    :cond_57
    add-int/lit8 v0, v6, 0x2

    move v6, v0

    goto :goto_3

    .line 415
    :cond_5b
    return v2

    :cond_5c
    move v0, v2

    goto :goto_26
.end method


# virtual methods
.method public animateIn()V
    .registers 5

    .prologue
    .line 221
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_26

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 222
    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 223
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v2, 0x3fcccccd    # 1.6f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 224
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Reveal;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Reveal;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 225
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 226
    return-void

    .line 221
    :array_26
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 18

    .prologue
    .line 315
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dirty:Z

    if-eqz v1, :cond_23

    .line 316
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dirty:Z

    .line 317
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->figs:[Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->repaint(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->figs:[Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->repaint(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;)V

    .line 320
    :cond_23
    const/high16 v1, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v13

    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->getHeight()I

    move-result v1

    int-to-float v14, v1

    .line 322
    const/4 v1, 0x0

    .line 323
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->figs:[Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_37
    if-ge v2, v4, :cond_56

    aget-object v5, v3, v2

    .line 324
    if-eqz v5, :cond_53

    iget-object v6, v5, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->art:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_53

    .line 325
    iget-object v6, v5, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->art:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v14

    iget-object v5, v5, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->art:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v6, v5

    add-float/2addr v1, v5

    .line 323
    :cond_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 328
    :cond_56
    add-float v2, v1, v13

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_93

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v13

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float/2addr v2, v3

    move v8, v2

    .line 329
    :goto_6f
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v8

    add-float/2addr v1, v13

    sub-float v1, v2, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v11, v1, v2

    .line 330
    const/4 v1, 0x0

    move v12, v1

    :goto_7e
    const/4 v1, 0x2

    if-ge v12, v1, :cond_1db

    .line 331
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->figs:[Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;

    aget-object v1, v1, v12

    .line 332
    if-eqz v1, :cond_1dc

    iget-object v2, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->art:Landroid/graphics/Bitmap;

    if-nez v2, :cond_97

    move v1, v11

    .line 330
    :goto_8e
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    move v11, v1

    goto :goto_7e

    .line 328
    :cond_93
    const/high16 v2, 0x3f800000    # 1.0f

    move v8, v2

    goto :goto_6f

    .line 335
    :cond_97
    mul-float v2, v14, v8

    .line 336
    iget-object v3, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->art:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    iget-object v4, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->art:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v15, v3, v4

    .line 337
    sub-float v3, v14, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 338
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->src:Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->art:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v9, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->art:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v4, v5, v6, v7, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 339
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v4, v4, v12

    add-float v5, v11, v15

    add-float/2addr v2, v3

    invoke-virtual {v4, v11, v3, v5, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->paint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 341
    iget-object v2, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->art:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->src:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v4, v4, v12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 342
    iget-object v2, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->over:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_14f

    .line 344
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v2, v2, v12

    iget v2, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v3, v3, v12

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v4, v4, v12

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->reveal:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v4, v4, v12

    iget v4, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v5, v5, v12

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->src:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    iget v6, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->h:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 347
    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->over:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->src:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v3, v3, v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 348
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 351
    :cond_14f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->label:Landroid/graphics/Paint;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 352
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->label:Landroid/graphics/Paint;

    const/high16 v2, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->sp(Landroid/view/View;F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 353
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v1, v1, v12

    iget v1, v1, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v2, v2, v12

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const v3, 0x3d8f5c29    # 0.07f

    mul-float/2addr v2, v3

    add-float v5, v1, v2

    .line 354
    const-string v1, "\u041b"

    const-string v2, "L"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v1, "\u0414"

    const-string v2, "R"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->label:Landroid/graphics/Paint;

    if-nez v12, :cond_1d7

    move-object v3, v9

    :goto_196
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v1, v1, v12

    iget v1, v1, Landroid/graphics/RectF;->left:F

    const/high16 v4, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v4

    add-float/2addr v4, v1

    const/high16 v6, -0x40800000    # -1.0f

    move-object/from16 v1, p1

    move-object/from16 v7, p0

    invoke-static/range {v1 .. v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->drawFit(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FFFLandroid/view/View;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->label:Landroid/graphics/Paint;

    if-nez v12, :cond_1d9

    move-object v3, v10

    :goto_1b7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v1, v1, v12

    iget v1, v1, Landroid/graphics/RectF;->right:F

    const/high16 v4, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v4

    sub-float v4, v1, v4

    const/high16 v6, -0x40800000    # -1.0f

    move-object/from16 v1, p1

    move-object/from16 v7, p0

    invoke-static/range {v1 .. v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->drawFit(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FFFLandroid/view/View;)V

    .line 357
    add-float v1, v15, v13

    add-float/2addr v1, v11

    goto/16 :goto_8e

    :cond_1d7
    move-object v3, v10

    .line 355
    goto :goto_196

    :cond_1d9
    move-object v3, v9

    .line 356
    goto :goto_1b7

    .line 359
    :cond_1db
    return-void

    :cond_1dc
    move v1, v11

    goto/16 :goto_8e
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .prologue
    const/4 v0, -0x1

    const/4 v6, 0x1

    .line 363
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v6, :cond_9

    .line 381
    :cond_8
    :goto_8
    return v6

    .line 366
    :cond_9
    const/4 v1, 0x0

    :goto_a
    const/4 v2, 0x2

    if-ge v1, v2, :cond_8

    .line 367
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->figs:[Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;

    aget-object v2, v2, v1

    .line 368
    if-eqz v2, :cond_29

    iget-object v3, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->over:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_29

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v3, v3, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 366
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 371
    :cond_2c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v4, v4, v1

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v3, v4

    iget v4, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 372
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v5, v5, v1

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v1, v5, v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float v1, v4, v1

    iget v4, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->h:I

    int-to-float v4, v4

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 373
    invoke-static {v2, v3, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->segAt(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;II)I

    move-result v1

    .line 374
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->onSegment:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;

    if-eqz v2, :cond_8

    .line 375
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->performClick()Z

    .line 376
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 377
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->onSegment:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;

    if-lt v1, v6, :cond_77

    add-int/lit8 v3, v1, -0x1

    iget v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->selected:I

    if-ne v3, v4, :cond_7b

    :cond_77
    :goto_77
    invoke-interface {v2, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;->onSegment(I)V

    goto :goto_8

    :cond_7b
    add-int/lit8 v0, v1, -0x1

    goto :goto_77
.end method

.method public performClick()Z
    .registers 2

    .prologue
    .line 386
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0
.end method

.method repaint(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;)V
    .registers 11

    .prologue
    const/16 v8, 0xff

    const/4 v2, 0x0

    .line 290
    if-eqz p1, :cond_9

    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->over:Landroid/graphics/Bitmap;

    if-nez v0, :cond_a

    .line 311
    :cond_9
    :goto_9
    return-void

    .line 293
    :cond_a
    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->px:[I

    .line 294
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    move v0, v2

    .line 295
    :goto_10
    iget-object v3, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->idx:[I

    array-length v3, v3

    if-ge v0, v3, :cond_7f

    .line 296
    iget-object v3, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->seg:[B

    aget-byte v4, v3, v0

    .line 297
    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->byChannel:Z

    if-eqz v3, :cond_2a

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->chCol:[I

    iget-object v5, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->ch:[B

    aget-byte v5, v5, v0

    aget v3, v3, v5

    .line 298
    :goto_25
    if-nez v3, :cond_2f

    .line 295
    :goto_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 297
    :cond_2a
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->segCol:[I

    aget v3, v3, v4

    goto :goto_25

    .line 302
    :cond_2f
    iget-object v5, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->lum:[B

    aget-byte v5, v5, v0

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    .line 303
    const v6, 0x3df5c28f    # 0.12f

    const v7, 0x3fb9999a    # 1.45f

    mul-float/2addr v5, v7

    add-float/2addr v5, v6

    .line 304
    shr-int/lit8 v6, v3, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    mul-float/2addr v6, v5

    float-to-int v6, v6

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 305
    shr-int/lit8 v7, v3, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-int v7, v7

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 306
    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 307
    iget v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->selected:I

    if-ltz v3, :cond_6a

    iget v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->selected:I

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_7c

    :cond_6a
    const/16 v3, 0xee

    .line 308
    :goto_6c
    iget-object v4, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->idx:[I

    aget v4, v4, v0

    shl-int/lit8 v3, v3, 0x18

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v3, v6

    shl-int/lit8 v6, v7, 0x8

    or-int/2addr v3, v6

    or-int/2addr v3, v5

    aput v3, v1, v4

    goto :goto_27

    .line 307
    :cond_7c
    const/16 v3, 0x6e

    goto :goto_6c

    .line 310
    :cond_7f
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->over:Landroid/graphics/Bitmap;

    iget v3, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    iget v6, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    iget v7, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->h:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto/16 :goto_9
.end method

.method public setChannels(Z[I)V
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 210
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->sex(Z)V

    .line 211
    iput-boolean v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->byChannel:Z

    move v2, v1

    .line 212
    :goto_8
    const/16 v0, 0xa

    if-ge v2, v0, :cond_1f

    .line 213
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->chCol:[I

    add-int/lit8 v4, v2, 0x1

    if-eqz p2, :cond_1d

    array-length v0, p2

    if-ge v2, v0, :cond_1d

    aget v0, p2, v2

    :goto_17
    aput v0, v3, v4

    .line 212
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    :cond_1d
    move v0, v1

    .line 213
    goto :goto_17

    .line 215
    :cond_1f
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->selected:I

    .line 216
    iput-boolean v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dirty:Z

    .line 217
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->invalidate()V

    .line 218
    return-void
.end method

.method public setOnSegment(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;)V
    .registers 2

    .prologue
    .line 183
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->onSegment:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;

    .line 184
    return-void
.end method

.method public setSegments(Z[II)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 198
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->sex(Z)V

    .line 199
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->byChannel:Z

    move v2, v1

    .line 200
    :goto_7
    const/4 v0, 0x5

    if-ge v2, v0, :cond_1d

    .line 201
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->segCol:[I

    add-int/lit8 v4, v2, 0x1

    if-eqz p2, :cond_1b

    array-length v0, p2

    if-ge v2, v0, :cond_1b

    aget v0, p2, v2

    :goto_15
    aput v0, v3, v4

    .line 200
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    :cond_1b
    move v0, v1

    .line 201
    goto :goto_15

    .line 203
    :cond_1d
    iput p3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->selected:I

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dirty:Z

    .line 205
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->invalidate()V

    .line 206
    return-void
.end method

.method sex(Z)V
    .registers 8

    .prologue
    .line 187
    if-eqz p1, :cond_3c

    const-string v0, "female"

    .line 188
    :goto_4
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 189
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->key:Ljava/lang/String;

    .line 190
    const/4 v1, 0x0

    :goto_f
    const/4 v2, 0x2

    if-ge v1, v2, :cond_3f

    .line 191
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->figs:[Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->SIDES:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;

    move-result-object v3

    aput-object v3, v2, v1

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 187
    :cond_3c
    const-string v0, "male"

    goto :goto_4

    .line 194
    :cond_3f
    return-void
.end method
