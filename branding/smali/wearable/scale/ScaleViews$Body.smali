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

.field frontOnly:Z

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

    .line 182
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

    .line 160
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->key:Ljava/lang/String;

    .line 161
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->selected:I

    .line 162
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dirty:Z

    .line 163
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->reveal:F

    .line 183
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->label:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 184
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->label:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 185
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
    .line 290
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 292
    :try_start_8
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 293
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 294
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 295
    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    .line 296
    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    move-result-object v0

    .line 298
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 296
    return-object v0

    .line 298
    :catchall_1f
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 299
    throw v0
.end method

.method static load(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;
    .registers 16

    .prologue
    .line 234
    new-instance v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;

    invoke-direct {v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;-><init>()V

    .line 236
    :try_start_5
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

    .line 237
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

    .line 238
    iget-object v1, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->art:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_49

    if-nez v0, :cond_4b

    :cond_49
    move-object v0, v10

    .line 286
    :goto_4a
    return-object v0

    .line 241
    :cond_4b
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    .line 242
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->h:I

    .line 243
    iget v1, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    iget v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->h:I

    mul-int/2addr v1, v2

    new-array v1, v1, [I

    .line 244
    const/4 v2, 0x0

    iget v3, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    iget v7, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->h:I

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 245
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 246
    iget v0, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    iget v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->h:I

    mul-int/2addr v0, v2

    new-array v3, v0, [I

    .line 247
    iget-object v0, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->art:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    if-ne v0, v2, :cond_ac

    iget-object v0, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->art:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->h:I

    if-ne v0, v2, :cond_ac

    iget-object v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->art:Landroid/graphics/Bitmap;

    .line 249
    :goto_8a
    const/4 v4, 0x0

    iget v5, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    iget v9, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->h:I

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 250
    const/4 v0, 0x0

    .line 251
    array-length v4, v1

    const/4 v2, 0x0

    :goto_99
    if-ge v2, v4, :cond_b8

    aget v5, v1, v2

    .line 252
    shr-int/lit8 v5, v5, 0x10

    and-int/lit16 v5, v5, 0xff

    .line 253
    const/4 v6, 0x1

    if-lt v5, v6, :cond_a9

    const/4 v6, 0x5

    if-gt v5, v6, :cond_a9

    .line 254
    add-int/lit8 v0, v0, 0x1

    .line 251
    :cond_a9
    add-int/lit8 v2, v2, 0x1

    goto :goto_99

    .line 248
    :cond_ac
    iget-object v0, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->art:Landroid/graphics/Bitmap;

    iget v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    iget v4, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->h:I

    const/4 v5, 0x1

    invoke-static {v0, v2, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_8a

    .line 257
    :cond_b8
    new-array v2, v0, [I

    iput-object v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->idx:[I

    .line 258
    new-array v2, v0, [B

    iput-object v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->seg:[B

    .line 259
    new-array v2, v0, [B

    iput-object v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->ch:[B

    .line 260
    new-array v0, v0, [B

    iput-object v0, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->lum:[B

    .line 261
    const/4 v0, 0x0

    .line 262
    const/4 v2, 0x6

    new-array v5, v2, [J

    const/4 v2, 0x6

    new-array v6, v2, [J

    const/4 v2, 0x6

    new-array v7, v2, [J

    .line 263
    const/4 v2, 0x0

    move v4, v2

    :goto_d4
    array-length v2, v1

    if-ge v4, v2, :cond_127

    .line 264
    aget v2, v1, v4

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    .line 265
    const/4 v8, 0x1

    if-lt v2, v8, :cond_121

    const/4 v8, 0x5

    if-gt v2, v8, :cond_121

    .line 266
    aget-wide v8, v5, v2

    iget v11, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    rem-int v11, v4, v11

    int-to-long v12, v11

    add-long/2addr v8, v12

    aput-wide v8, v5, v2

    .line 267
    aget-wide v8, v6, v2

    iget v11, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    div-int v11, v4, v11

    int-to-long v12, v11

    add-long/2addr v8, v12

    aput-wide v8, v6, v2

    .line 268
    aget-wide v8, v7, v2

    const-wide/16 v12, 0x1

    add-long/2addr v8, v12

    aput-wide v8, v7, v2

    .line 269
    iget-object v8, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->idx:[I

    aput v4, v8, v0

    .line 270
    iget-object v8, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->seg:[B

    int-to-byte v2, v2

    aput-byte v2, v8, v0

    .line 271
    aget v2, v1, v4

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 272
    iget-object v8, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->ch:[B

    const/16 v9, 0xa

    if-gt v2, v9, :cond_125

    :goto_113
    int-to-byte v2, v2

    aput-byte v2, v8, v0

    .line 273
    iget-object v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->lum:[B

    aget v8, v3, v4

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v2, v0

    .line 274
    add-int/lit8 v0, v0, 0x1

    .line 263
    :cond_121
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_d4

    .line 272
    :cond_125
    const/4 v2, 0x0

    goto :goto_113

    .line 277
    :cond_127
    const/4 v0, 0x1

    move v1, v0

    :goto_129
    const/4 v0, 0x5

    if-gt v1, v0, :cond_15c

    .line 278
    iget-object v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->cx:[F

    aget-wide v8, v7, v1

    const-wide/16 v12, 0x0

    cmp-long v0, v8, v12

    if-lez v0, :cond_156

    aget-wide v8, v5, v1

    long-to-float v0, v8

    aget-wide v8, v7, v1

    long-to-float v3, v8

    div-float/2addr v0, v3

    :goto_13d
    aput v0, v2, v1

    .line 279
    iget-object v2, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->cy:[F

    aget-wide v8, v7, v1

    const-wide/16 v12, 0x0

    cmp-long v0, v8, v12

    if-lez v0, :cond_159

    aget-wide v8, v6, v1

    long-to-float v0, v8

    aget-wide v8, v7, v1

    long-to-float v3, v8

    div-float/2addr v0, v3

    :goto_150
    aput v0, v2, v1

    .line 277
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_129

    .line 278
    :cond_156
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_13d

    .line 279
    :cond_159
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_150

    .line 281
    :cond_15c
    iget v0, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    iget v1, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->h:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->px:[I

    .line 282
    iget v0, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    iget v1, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->h:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v10, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->over:Landroid/graphics/Bitmap;
    :try_end_171
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_171} :catch_174

    :goto_171
    move-object v0, v10

    .line 286
    goto/16 :goto_4a

    .line 283
    :catch_174
    move-exception v0

    .line 284
    const-string v1, "ScaleViews.body"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_171
.end method

.method static segAt(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;II)I
    .registers 13

    .prologue
    const/4 v3, 0x0

    .line 436
    move v6, v3

    move v2, v3

    .line 437
    :goto_3
    const/16 v0, 0xe

    if-gt v6, v0, :cond_5b

    if-nez v2, :cond_5b

    .line 438
    neg-int v0, v6

    move v5, v0

    :goto_b
    if-gt v5, v6, :cond_57

    if-nez v2, :cond_57

    .line 439
    neg-int v0, v6

    move v4, v0

    :goto_11
    if-gt v4, v6, :cond_53

    if-nez v2, :cond_53

    .line 440
    add-int v0, p1, v4

    add-int v1, p2, v5

    .line 441
    if-ltz v0, :cond_5c

    if-ltz v1, :cond_5c

    iget v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    if-ge v0, v7, :cond_5c

    iget v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->h:I

    if-lt v1, v7, :cond_2b

    move v0, v2

    .line 439
    :goto_26
    add-int/lit8 v1, v4, 0x2

    move v4, v1

    move v2, v0

    goto :goto_11

    .line 444
    :cond_2b
    iget v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    mul-int/2addr v1, v7

    add-int v7, v1, v0

    .line 445
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->idx:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    move v1, v3

    .line 446
    :goto_36
    if-gt v1, v0, :cond_5c

    .line 447
    add-int v8, v1, v0

    ushr-int/lit8 v8, v8, 0x1

    .line 448
    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->idx:[I

    aget v9, v9, v8

    if-ge v9, v7, :cond_45

    .line 449
    add-int/lit8 v1, v8, 0x1

    goto :goto_36

    .line 450
    :cond_45
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->idx:[I

    aget v0, v0, v8

    if-le v0, v7, :cond_4e

    .line 451
    add-int/lit8 v0, v8, -0x1

    goto :goto_36

    .line 453
    :cond_4e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->seg:[B

    aget-byte v0, v0, v8

    goto :goto_26

    .line 438
    :cond_53
    add-int/lit8 v0, v5, 0x2

    move v5, v0

    goto :goto_b

    .line 437
    :cond_57
    add-int/lit8 v0, v6, 0x2

    move v6, v0

    goto :goto_3

    .line 460
    :cond_5b
    return v2

    :cond_5c
    move v0, v2

    goto :goto_26
.end method


# virtual methods
.method public anchor(I[F)Z
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 393
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->figs:[Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;

    aget-object v2, v2, v0

    .line 394
    if-eqz v2, :cond_1c

    iget v3, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    if-lez v3, :cond_1c

    if-ltz p1, :cond_1c

    const/4 v3, 0x4

    if-gt p1, v3, :cond_1c

    iget-object v3, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->cx:[F

    add-int/lit8 v4, p1, 0x1

    aget v3, v3, v4

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1d

    .line 403
    :cond_1c
    :goto_1c
    return v0

    .line 397
    :cond_1d
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->place()V

    .line 398
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 401
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->cx:[F

    add-int/lit8 v5, p1, 0x1

    aget v4, v4, v5

    iget v5, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, p2, v0

    .line 402
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->cy:[F

    add-int/lit8 v5, p1, 0x1

    aget v4, v4, v5

    iget v2, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->h:I

    int-to-float v2, v2

    div-float v2, v4, v2

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v0, v4, v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v3

    aput v0, p2, v1

    move v0, v1

    .line 403
    goto :goto_1c
.end method

.method public animateIn()V
    .registers 5

    .prologue
    .line 226
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_26

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 227
    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 228
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v2, 0x3fcccccd    # 1.6f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 229
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Reveal;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Reveal;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 230
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 231
    return-void

    .line 226
    :array_26
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 14

    .prologue
    const/high16 v11, 0x40c00000    # 6.0f

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v8, 0x0

    .line 328
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dirty:Z

    if-eqz v0, :cond_1a

    .line 329
    iput-boolean v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dirty:Z

    .line 330
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->figs:[Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;

    aget-object v0, v0, v8

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->repaint(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;)V

    .line 331
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->figs:[Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->repaint(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;)V

    .line 333
    :cond_1a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->place()V

    move v7, v8

    .line 334
    :goto_1e
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->sides()I

    move-result v0

    if-ge v7, v0, :cond_105

    .line 335
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->figs:[Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;

    aget-object v0, v0, v7

    .line 336
    if-eqz v0, :cond_2e

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->art:Landroid/graphics/Bitmap;

    if-nez v1, :cond_32

    .line 334
    :cond_2e
    :goto_2e
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1e

    .line 339
    :cond_32
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->src:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->art:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->art:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1, v8, v8, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 340
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->paint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 341
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->art:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->src:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 342
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->over:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_9e

    .line 344
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 345
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v1, v1, v7

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v2, v2, v7

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->reveal:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v3, v3, v7

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v4, v4, v7

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 346
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->src:Landroid/graphics/Rect;

    iget v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    iget v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->h:I

    invoke-virtual {v1, v8, v8, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 347
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->over:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->src:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v2, v2, v7

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 348
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 351
    :cond_9e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->label:Landroid/graphics/Paint;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 352
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->label:Landroid/graphics/Paint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->sp(Landroid/view/View;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 353
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v0, v0, v7

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    const v2, 0x3d8f5c29    # 0.07f

    mul-float/2addr v1, v2

    add-float v4, v0, v1

    .line 354
    const-string v0, "\u041b"

    const-string v1, "L"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v0, "\u0414"

    const-string v1, "R"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 355
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->label:Landroid/graphics/Paint;

    if-nez v7, :cond_101

    move-object v2, v9

    :goto_d9
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v0, v0, v7

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v3

    add-float/2addr v3, v0

    move-object v0, p1

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->drawFit(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FFFLandroid/view/View;)V

    .line 356
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->label:Landroid/graphics/Paint;

    if-nez v7, :cond_103

    move-object v2, v10

    :goto_ee
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v0, v0, v7

    iget v0, v0, Landroid/graphics/RectF;->right:F

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v3

    sub-float v3, v0, v3

    move-object v0, p1

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->drawFit(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FFFLandroid/view/View;)V

    goto/16 :goto_2e

    :cond_101
    move-object v2, v10

    .line 355
    goto :goto_d9

    :cond_103
    move-object v2, v9

    .line 356
    goto :goto_ee

    .line 358
    :cond_105
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .prologue
    const/4 v1, -0x1

    const/4 v6, 0x1

    .line 408
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v6, :cond_9

    .line 426
    :cond_8
    :goto_8
    return v6

    .line 411
    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->sides()I

    move-result v2

    if-ge v0, v2, :cond_8

    .line 412
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->figs:[Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;

    aget-object v2, v2, v0

    .line 413
    if-eqz v2, :cond_2c

    iget-object v3, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->over:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2c

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v3, v3, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 411
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 416
    :cond_2f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v4, v4, v0

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v3, v4

    iget v4, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->w:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 417
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v5, v5, v0

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v0, v5, v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float v0, v4, v0

    iget v4, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->h:I

    int-to-float v4, v4

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 418
    invoke-static {v2, v3, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->segAt(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;II)I

    move-result v0

    .line 419
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->onSegment:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;

    if-eqz v2, :cond_8

    .line 420
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->performClick()Z

    .line 421
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 422
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->onSegment:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;

    if-lt v0, v6, :cond_82

    add-int/lit8 v3, v0, -0x1

    iget v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->selected:I

    if-ne v3, v4, :cond_7f

    move v0, v1

    :goto_7b
    invoke-interface {v2, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;->onSegment(I)V

    goto :goto_8

    :cond_7f
    add-int/lit8 v0, v0, -0x1

    goto :goto_7b

    :cond_82
    move v0, v1

    goto :goto_7b
.end method

.method public performClick()Z
    .registers 2

    .prologue
    .line 431
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0
.end method

.method place()V
    .registers 12

    .prologue
    const/4 v3, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 366
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->sides()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_40

    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v0

    .line 367
    :goto_13
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->getHeight()I

    move-result v2

    int-to-float v6, v2

    move v2, v3

    move v4, v1

    .line 369
    :goto_1a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->sides()I

    move-result v1

    if-ge v2, v1, :cond_42

    .line 370
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->figs:[Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;

    aget-object v1, v1, v2

    .line 371
    if-eqz v1, :cond_3c

    iget-object v7, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->art:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_3c

    .line 372
    iget-object v7, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->art:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->art:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v7, v1

    add-float/2addr v4, v1

    .line 369
    :cond_3c
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1a

    :cond_40
    move v0, v1

    .line 366
    goto :goto_13

    .line 375
    :cond_42
    add-float v1, v4, v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7e

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    div-float/2addr v1, v2

    .line 376
    :goto_58
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v4, v1

    add-float/2addr v4, v0

    sub-float/2addr v2, v4

    div-float/2addr v2, v10

    .line 377
    :goto_61
    const/4 v4, 0x2

    if-ge v3, v4, :cond_a3

    .line 378
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->figs:[Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;

    aget-object v4, v4, v3

    .line 379
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->sides()I

    move-result v5

    if-ge v3, v5, :cond_74

    if-eqz v4, :cond_74

    iget-object v5, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->art:Landroid/graphics/Bitmap;

    if-nez v5, :cond_80

    .line 380
    :cond_74
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/graphics/RectF;->setEmpty()V

    .line 377
    :goto_7b
    add-int/lit8 v3, v3, 0x1

    goto :goto_61

    :cond_7e
    move v1, v5

    .line 375
    goto :goto_58

    .line 383
    :cond_80
    mul-float v5, v6, v1

    .line 384
    iget-object v7, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->art:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    iget-object v4, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->art:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v7, v4

    .line 385
    sub-float v7, v6, v5

    div-float/2addr v7, v10

    .line 386
    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dst:[Landroid/graphics/RectF;

    aget-object v8, v8, v3

    add-float v9, v2, v4

    add-float/2addr v5, v7

    invoke-virtual {v8, v2, v7, v9, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 387
    add-float/2addr v4, v0

    add-float/2addr v2, v4

    goto :goto_7b

    .line 389
    :cond_a3
    return-void
.end method

.method repaint(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;)V
    .registers 11

    .prologue
    const/16 v8, 0xff

    const/4 v2, 0x0

    .line 303
    if-eqz p1, :cond_9

    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->over:Landroid/graphics/Bitmap;

    if-nez v0, :cond_a

    .line 324
    :cond_9
    :goto_9
    return-void

    .line 306
    :cond_a
    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->px:[I

    .line 307
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    move v0, v2

    .line 308
    :goto_10
    iget-object v3, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->idx:[I

    array-length v3, v3

    if-ge v0, v3, :cond_7f

    .line 309
    iget-object v3, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->seg:[B

    aget-byte v4, v3, v0

    .line 310
    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->byChannel:Z

    if-eqz v3, :cond_2a

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->chCol:[I

    iget-object v5, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->ch:[B

    aget-byte v5, v5, v0

    aget v3, v3, v5

    .line 311
    :goto_25
    if-nez v3, :cond_2f

    .line 308
    :goto_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 310
    :cond_2a
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->segCol:[I

    aget v3, v3, v4

    goto :goto_25

    .line 315
    :cond_2f
    iget-object v5, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->lum:[B

    aget-byte v5, v5, v0

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    .line 316
    const v6, 0x3df5c28f    # 0.12f

    const v7, 0x3fb9999a    # 1.45f

    mul-float/2addr v5, v7

    add-float/2addr v5, v6

    .line 317
    shr-int/lit8 v6, v3, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    mul-float/2addr v6, v5

    float-to-int v6, v6

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 318
    shr-int/lit8 v7, v3, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-int v7, v7

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 319
    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 320
    iget v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->selected:I

    if-ltz v3, :cond_6a

    iget v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->selected:I

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_7c

    :cond_6a
    const/16 v3, 0xee

    .line 321
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

    .line 320
    :cond_7c
    const/16 v3, 0x6e

    goto :goto_6c

    .line 323
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

    .line 215
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->sex(Z)V

    .line 216
    iput-boolean v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->byChannel:Z

    move v2, v1

    .line 217
    :goto_8
    const/16 v0, 0xa

    if-ge v2, v0, :cond_1f

    .line 218
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->chCol:[I

    add-int/lit8 v4, v2, 0x1

    if-eqz p2, :cond_1d

    array-length v0, p2

    if-ge v2, v0, :cond_1d

    aget v0, p2, v2

    :goto_17
    aput v0, v3, v4

    .line 217
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    :cond_1d
    move v0, v1

    .line 218
    goto :goto_17

    .line 220
    :cond_1f
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->selected:I

    .line 221
    iput-boolean v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dirty:Z

    .line 222
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->invalidate()V

    .line 223
    return-void
.end method

.method public setOnSegment(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;)V
    .registers 2

    .prologue
    .line 188
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->onSegment:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;

    .line 189
    return-void
.end method

.method public setSegments(Z[II)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 203
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->sex(Z)V

    .line 204
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->byChannel:Z

    move v2, v1

    .line 205
    :goto_7
    const/4 v0, 0x5

    if-ge v2, v0, :cond_1d

    .line 206
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->segCol:[I

    add-int/lit8 v4, v2, 0x1

    if-eqz p2, :cond_1b

    array-length v0, p2

    if-ge v2, v0, :cond_1b

    aget v0, p2, v2

    :goto_15
    aput v0, v3, v4

    .line 205
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    :cond_1b
    move v0, v1

    .line 206
    goto :goto_15

    .line 208
    :cond_1d
    iput p3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->selected:I

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->dirty:Z

    .line 210
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->invalidate()V

    .line 211
    return-void
.end method

.method sex(Z)V
    .registers 8

    .prologue
    .line 192
    if-eqz p1, :cond_3c

    const-string v0, "female"

    .line 193
    :goto_4
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 194
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->key:Ljava/lang/String;

    .line 195
    const/4 v1, 0x0

    :goto_f
    const/4 v2, 0x2

    if-ge v1, v2, :cond_3f

    .line 196
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

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 192
    :cond_3c
    const-string v0, "male"

    goto :goto_4

    .line 199
    :cond_3f
    return-void
.end method

.method sides()I
    .registers 2

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;->frontOnly:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x2

    goto :goto_5
.end method
