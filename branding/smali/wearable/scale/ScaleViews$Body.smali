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
    .line 112
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

    .line 141
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 113
    new-array v0, v2, [Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->figs:[Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;

    .line 114
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->paint:Landroid/graphics/Paint;

    .line 115
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->label:Landroid/graphics/Paint;

    .line 116
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->src:Landroid/graphics/Rect;

    .line 117
    new-array v0, v2, [Landroid/graphics/RectF;

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v0, v1

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    .line 119
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->segCol:[I

    .line 120
    const/16 v0, 0xb

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->chCol:[I

    .line 122
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->key:Ljava/lang/String;

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->selected:I

    .line 124
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dirty:Z

    .line 125
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->reveal:F

    .line 142
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->label:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 143
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->label:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 144
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
    .line 241
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 243
    :try_start_8
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 244
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 245
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 246
    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    .line 247
    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    move-result-object v0

    .line 249
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 247
    return-object v0

    .line 249
    :catchall_1f
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 250
    throw v0
.end method

.method static load(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;
    .registers 16

    .prologue
    const/4 v13, 0x5

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 193
    new-instance v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;

    invoke-direct {v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;-><init>()V

    .line 195
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

    .line 196
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

    .line 197
    iget-object v1, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->art:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4c

    if-nez v0, :cond_4e

    :cond_4c
    move-object v0, v10

    .line 237
    :goto_4d
    return-object v0

    .line 200
    :cond_4e
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    .line 201
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->h:I

    .line 202
    iget v1, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    iget v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->h:I

    mul-int/2addr v1, v2

    new-array v1, v1, [I

    .line 203
    const/4 v2, 0x0

    iget v3, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    iget v7, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->h:I

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 204
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 205
    iget v0, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    iget v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->h:I

    mul-int/2addr v0, v2

    new-array v3, v0, [I

    .line 206
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

    .line 208
    :goto_8d
    const/4 v4, 0x0

    iget v5, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    iget v9, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->h:I

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 210
    array-length v4, v1

    move v2, v11

    move v0, v11

    :goto_9c
    if-ge v2, v4, :cond_b9

    aget v5, v1, v2

    .line 211
    shr-int/lit8 v5, v5, 0x10

    and-int/lit16 v5, v5, 0xff

    .line 212
    if-lt v5, v12, :cond_aa

    if-gt v5, v13, :cond_aa

    .line 213
    add-int/lit8 v0, v0, 0x1

    .line 210
    :cond_aa
    add-int/lit8 v2, v2, 0x1

    goto :goto_9c

    .line 207
    :cond_ad
    iget-object v0, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->art:Landroid/graphics/Bitmap;

    iget v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    iget v4, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->h:I

    const/4 v5, 0x1

    invoke-static {v0, v2, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_8d

    .line 216
    :cond_b9
    new-array v2, v0, [I

    iput-object v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->idx:[I

    .line 217
    new-array v2, v0, [B

    iput-object v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->seg:[B

    .line 218
    new-array v2, v0, [B

    iput-object v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->ch:[B

    .line 219
    new-array v0, v0, [B

    iput-object v0, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->lum:[B

    move v4, v11

    move v0, v11

    .line 221
    :goto_cb
    array-length v2, v1

    if-ge v4, v2, :cond_101

    .line 222
    aget v2, v1, v4

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    .line 223
    if-lt v2, v12, :cond_fb

    if-gt v2, v13, :cond_fb

    .line 224
    iget-object v5, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->idx:[I

    aput v4, v5, v0

    .line 225
    iget-object v5, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->seg:[B

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    .line 226
    aget v2, v1, v4

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 227
    iget-object v5, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->ch:[B

    const/16 v6, 0xa

    if-gt v2, v6, :cond_ff

    :goto_ed
    int-to-byte v2, v2

    aput-byte v2, v5, v0

    .line 228
    iget-object v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->lum:[B

    aget v5, v3, v4

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v0

    .line 229
    add-int/lit8 v0, v0, 0x1

    .line 221
    :cond_fb
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_cb

    :cond_ff
    move v2, v11

    .line 227
    goto :goto_ed

    .line 232
    :cond_101
    iget v0, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    iget v1, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->h:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->px:[I

    .line 233
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

    .line 237
    goto/16 :goto_4d

    .line 234
    :catch_119
    move-exception v0

    .line 235
    const-string v1, "ScaleViews.body"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_116
.end method

.method static segAt(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;II)I
    .registers 13

    .prologue
    const/4 v3, 0x0

    .line 355
    move v6, v3

    move v2, v3

    .line 356
    :goto_3
    const/16 v0, 0xe

    if-gt v6, v0, :cond_5b

    if-nez v2, :cond_5b

    .line 357
    neg-int v0, v6

    move v5, v0

    :goto_b
    if-gt v5, v6, :cond_57

    if-nez v2, :cond_57

    .line 358
    neg-int v0, v6

    move v4, v0

    :goto_11
    if-gt v4, v6, :cond_53

    if-nez v2, :cond_53

    .line 359
    add-int v0, p1, v4

    add-int v1, p2, v5

    .line 360
    if-ltz v0, :cond_5c

    if-ltz v1, :cond_5c

    iget v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    if-ge v0, v7, :cond_5c

    iget v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->h:I

    if-lt v1, v7, :cond_2b

    move v0, v2

    .line 358
    :goto_26
    add-int/lit8 v1, v4, 0x2

    move v4, v1

    move v2, v0

    goto :goto_11

    .line 363
    :cond_2b
    iget v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    mul-int/2addr v1, v7

    add-int v7, v1, v0

    .line 364
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->idx:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    move v1, v3

    .line 365
    :goto_36
    if-gt v1, v0, :cond_5c

    .line 366
    add-int v8, v1, v0

    ushr-int/lit8 v8, v8, 0x1

    .line 367
    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->idx:[I

    aget v9, v9, v8

    if-ge v9, v7, :cond_45

    .line 368
    add-int/lit8 v1, v8, 0x1

    goto :goto_36

    .line 369
    :cond_45
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->idx:[I

    aget v0, v0, v8

    if-le v0, v7, :cond_4e

    .line 370
    add-int/lit8 v0, v8, -0x1

    goto :goto_36

    .line 372
    :cond_4e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->seg:[B

    aget-byte v0, v0, v8

    goto :goto_26

    .line 357
    :cond_53
    add-int/lit8 v0, v5, 0x2

    move v5, v0

    goto :goto_b

    .line 356
    :cond_57
    add-int/lit8 v0, v6, 0x2

    move v6, v0

    goto :goto_3

    .line 379
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
    .line 185
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_26

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 186
    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 187
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v2, 0x3fcccccd    # 1.6f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 188
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Reveal;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Reveal;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 189
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 190
    return-void

    .line 185
    :array_26
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dirty:Z

    if-eqz v0, :cond_17

    .line 280
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dirty:Z

    .line 281
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->figs:[Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->repaint(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;)V

    .line 282
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->figs:[Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->repaint(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;)V

    .line 284
    :cond_17
    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v6

    .line 285
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->getHeight()I

    move-result v0

    int-to-float v7, v0

    .line 286
    const/4 v0, 0x0

    .line 287
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->figs:[Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_27
    if-ge v1, v3, :cond_46

    aget-object v4, v2, v1

    .line 288
    if-eqz v4, :cond_43

    iget-object v5, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->art:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_43

    .line 289
    iget-object v5, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->art:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v7

    iget-object v4, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->art:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v5, v4

    add-float/2addr v0, v4

    .line 287
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 292
    :cond_46
    add-float v1, v0, v6

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_80

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v6

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    div-float/2addr v1, v2

    .line 293
    :goto_5e
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v6

    sub-float v0, v2, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v4, v0, v2

    .line 294
    const/4 v0, 0x0

    move v5, v0

    :goto_6d
    const/4 v0, 0x2

    if-ge v5, v0, :cond_17d

    .line 295
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->figs:[Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;

    aget-object v0, v0, v5

    .line 296
    if-eqz v0, :cond_17e

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->art:Landroid/graphics/Bitmap;

    if-nez v2, :cond_83

    move v0, v4

    .line 294
    :goto_7b
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v4, v0

    goto :goto_6d

    .line 292
    :cond_80
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_5e

    .line 299
    :cond_83
    mul-float v2, v7, v1

    .line 300
    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->art:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->art:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v3, v8

    .line 301
    sub-float v3, v7, v2

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v3, v9

    .line 302
    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->src:Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->art:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    iget-object v13, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->art:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 303
    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v9, v9, v5

    add-float v10, v4, v8

    add-float/2addr v2, v3

    invoke-virtual {v9, v4, v3, v10, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 304
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->paint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 305
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->art:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->src:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v9, v9, v5

    iget-object v10, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 306
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->over:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_115

    .line 308
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 309
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v2, v2, v5

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v3, v3, v5

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v9, v9, v5

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    iget v10, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->reveal:F

    mul-float/2addr v9, v10

    sub-float/2addr v3, v9

    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v9, v9, v5

    iget v9, v9, Landroid/graphics/RectF;->right:F

    iget-object v10, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v10, v10, v5

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v2, v3, v9, v10}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 310
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->src:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v9, 0x0

    iget v10, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    iget v11, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->h:I

    invoke-virtual {v2, v3, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 311
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->over:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->src:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v3, v3, v5

    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 312
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 315
    :cond_115
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->label:Landroid/graphics/Paint;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 316
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->label:Landroid/graphics/Paint;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 317
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v0, v0, v5

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const v3, 0x3d8f5c29    # 0.07f

    mul-float/2addr v2, v3

    add-float v9, v0, v2

    .line 318
    const-string v0, "\u041b"

    const-string v2, "L"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "\u0414"

    const-string v2, "R"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 319
    if-nez v5, :cond_179

    move-object v0, v2

    :goto_14e
    iget-object v10, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v10, v10, v5

    iget v10, v10, Landroid/graphics/RectF;->left:F

    const/high16 v11, 0x40c00000    # 6.0f

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v11

    add-float/2addr v10, v11

    iget-object v11, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->label:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v10, v9, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 320
    if-nez v5, :cond_17b

    :goto_162
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v0, v0, v5

    iget v0, v0, Landroid/graphics/RectF;->right:F

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->label:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v9, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 321
    add-float v0, v8, v6

    add-float/2addr v0, v4

    goto/16 :goto_7b

    :cond_179
    move-object v0, v3

    .line 319
    goto :goto_14e

    :cond_17b
    move-object v3, v2

    .line 320
    goto :goto_162

    .line 323
    :cond_17d
    return-void

    :cond_17e
    move v0, v4

    goto/16 :goto_7b
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .prologue
    const/4 v0, -0x1

    const/4 v6, 0x1

    .line 327
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v6, :cond_9

    .line 345
    :cond_8
    :goto_8
    return v6

    .line 330
    :cond_9
    const/4 v1, 0x0

    :goto_a
    const/4 v2, 0x2

    if-ge v1, v2, :cond_8

    .line 331
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->figs:[Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;

    aget-object v2, v2, v1

    .line 332
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

    .line 330
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 335
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

    .line 336
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

    .line 337
    invoke-static {v2, v3, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->segAt(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;II)I

    move-result v1

    .line 338
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->onSegment:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;

    if-eqz v2, :cond_8

    .line 339
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->performClick()Z

    .line 340
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 341
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
    .line 350
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0
.end method

.method repaint(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;)V
    .registers 11

    .prologue
    const/16 v8, 0xff

    const/4 v2, 0x0

    .line 254
    if-eqz p1, :cond_9

    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->over:Landroid/graphics/Bitmap;

    if-nez v0, :cond_a

    .line 275
    :cond_9
    :goto_9
    return-void

    .line 257
    :cond_a
    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->px:[I

    .line 258
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    move v0, v2

    .line 259
    :goto_10
    iget-object v3, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->idx:[I

    array-length v3, v3

    if-ge v0, v3, :cond_7f

    .line 260
    iget-object v3, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->seg:[B

    aget-byte v4, v3, v0

    .line 261
    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->byChannel:Z

    if-eqz v3, :cond_2a

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->chCol:[I

    iget-object v5, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->ch:[B

    aget-byte v5, v5, v0

    aget v3, v3, v5

    .line 262
    :goto_25
    if-nez v3, :cond_2f

    .line 259
    :goto_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 261
    :cond_2a
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->segCol:[I

    aget v3, v3, v4

    goto :goto_25

    .line 266
    :cond_2f
    iget-object v5, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->lum:[B

    aget-byte v5, v5, v0

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    .line 267
    const v6, 0x3df5c28f    # 0.12f

    const v7, 0x3fb9999a    # 1.45f

    mul-float/2addr v5, v7

    add-float/2addr v5, v6

    .line 268
    shr-int/lit8 v6, v3, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    mul-float/2addr v6, v5

    float-to-int v6, v6

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 269
    shr-int/lit8 v7, v3, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-int v7, v7

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 270
    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 271
    iget v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->selected:I

    if-ltz v3, :cond_6a

    iget v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->selected:I

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_7c

    :cond_6a
    const/16 v3, 0xee

    .line 272
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

    .line 271
    :cond_7c
    const/16 v3, 0x6e

    goto :goto_6c

    .line 274
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

    .line 174
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->sex(Z)V

    .line 175
    iput-boolean v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->byChannel:Z

    move v2, v1

    .line 176
    :goto_8
    const/16 v0, 0xa

    if-ge v2, v0, :cond_1f

    .line 177
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->chCol:[I

    add-int/lit8 v4, v2, 0x1

    if-eqz p2, :cond_1d

    array-length v0, p2

    if-ge v2, v0, :cond_1d

    aget v0, p2, v2

    :goto_17
    aput v0, v3, v4

    .line 176
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    :cond_1d
    move v0, v1

    .line 177
    goto :goto_17

    .line 179
    :cond_1f
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->selected:I

    .line 180
    iput-boolean v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dirty:Z

    .line 181
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->invalidate()V

    .line 182
    return-void
.end method

.method public setOnSegment(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;)V
    .registers 2

    .prologue
    .line 147
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->onSegment:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;

    .line 148
    return-void
.end method

.method public setSegments(Z[II)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->sex(Z)V

    .line 163
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->byChannel:Z

    move v2, v1

    .line 164
    :goto_7
    const/4 v0, 0x5

    if-ge v2, v0, :cond_1d

    .line 165
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->segCol:[I

    add-int/lit8 v4, v2, 0x1

    if-eqz p2, :cond_1b

    array-length v0, p2

    if-ge v2, v0, :cond_1b

    aget v0, p2, v2

    :goto_15
    aput v0, v3, v4

    .line 164
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    :cond_1b
    move v0, v1

    .line 165
    goto :goto_15

    .line 167
    :cond_1d
    iput p3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->selected:I

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dirty:Z

    .line 169
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->invalidate()V

    .line 170
    return-void
.end method

.method sex(Z)V
    .registers 8

    .prologue
    .line 151
    if-eqz p1, :cond_3c

    const-string v0, "female"

    .line 152
    :goto_4
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 153
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->key:Ljava/lang/String;

    .line 154
    const/4 v1, 0x0

    :goto_f
    const/4 v2, 0x2

    if-ge v1, v2, :cond_3f

    .line 155
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

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 151
    :cond_3c
    const-string v0, "male"

    goto :goto_4

    .line 158
    :cond_3f
    return-void
.end method
