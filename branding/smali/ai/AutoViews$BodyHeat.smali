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

.field private final load:[D

.field private final off:[Z

.field private final paint:Landroid/graphics/Paint;

.field private sexKey:Ljava/lang/String;

.field private final src:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 167
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

    .line 188
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 168
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->figs:[Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;

    .line 169
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->paint:Landroid/graphics/Paint;

    .line 170
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->src:Landroid/graphics/Rect;

    .line 171
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->dst:Landroid/graphics/RectF;

    .line 172
    new-array v0, v2, [D

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->load:[D

    .line 173
    new-array v0, v2, [Z

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->off:[Z

    .line 174
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->sexKey:Ljava/lang/String;

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->dirty:Z

    .line 189
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
    .line 261
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 263
    :try_start_8
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 264
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 265
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 266
    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    .line 267
    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    move-result-object v0

    .line 269
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 267
    return-object v0

    .line 269
    :catchall_1f
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 270
    throw v0
.end method

.method static load(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;
    .registers 15

    .prologue
    const/16 v12, 0xa

    const/16 v11, 0x8

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 217
    new-instance v8, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;

    invoke-direct {v8}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;-><init>()V

    .line 219
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

    .line 220
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

    .line 221
    iget-object v1, v8, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->art:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4f

    if-nez v0, :cond_51

    :cond_4f
    move-object v0, v8

    .line 257
    :goto_50
    return-object v0

    .line 224
    :cond_51
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 225
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 226
    mul-int v1, v3, v7

    new-array v1, v1, [I

    .line 227
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 228
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 230
    array-length v4, v1

    move v2, v9

    move v0, v9

    :goto_6a
    if-ge v2, v4, :cond_7f

    aget v5, v1, v2

    .line 231
    shr-int/lit8 v6, v5, 0x10

    and-int/lit16 v6, v6, 0xff

    .line 232
    if-lt v6, v10, :cond_7c

    if-gt v6, v12, :cond_7c

    and-int/lit16 v5, v5, 0xff

    if-le v5, v11, :cond_7c

    .line 233
    add-int/lit8 v0, v0, 0x1

    .line 230
    :cond_7c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6a

    .line 236
    :cond_7f
    new-array v2, v0, [I

    iput-object v2, v8, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->idx:[I

    .line 237
    new-array v2, v0, [B

    iput-object v2, v8, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->zone:[B

    .line 238
    new-array v2, v0, [B

    iput-object v2, v8, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->shade:[B

    .line 239
    new-array v0, v0, [B

    iput-object v0, v8, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->cov:[B

    move v2, v9

    move v0, v9

    .line 241
    :goto_91
    array-length v4, v1

    if-ge v2, v4, :cond_c2

    .line 242
    aget v4, v1, v2

    .line 243
    shr-int/lit8 v5, v4, 0x10

    and-int/lit16 v5, v5, 0xff

    .line 244
    if-lt v5, v10, :cond_bf

    if-gt v5, v12, :cond_bf

    and-int/lit16 v6, v4, 0xff

    if-le v6, v11, :cond_bf

    .line 245
    iget-object v6, v8, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->idx:[I

    aput v2, v6, v0

    .line 246
    iget-object v6, v8, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->zone:[B

    add-int/lit8 v5, v5, -0x1

    int-to-byte v5, v5

    aput-byte v5, v6, v0

    .line 247
    iget-object v5, v8, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->shade:[B

    shr-int/lit8 v6, v4, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v0

    .line 248
    iget-object v5, v8, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->cov:[B

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v5, v0

    .line 249
    add-int/lit8 v0, v0, 0x1

    .line 241
    :cond_bf
    add-int/lit8 v2, v2, 0x1

    goto :goto_91

    .line 252
    :cond_c2
    mul-int v0, v3, v7

    new-array v0, v0, [I

    iput-object v0, v8, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->px:[I

    .line 253
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v8, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->over:Landroid/graphics/Bitmap;
    :try_end_d0
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_d0} :catch_d3

    :goto_d0
    move-object v0, v8

    .line 257
    goto/16 :goto_50

    .line 254
    :catch_d3
    move-exception v0

    .line 255
    const-string v1, "AutoViews.body"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d0
.end method

.method private repaint(Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;)V
    .registers 16

    .prologue
    .line 275
    if-eqz p1, :cond_6

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->over:Landroid/graphics/Bitmap;

    if-nez v0, :cond_7

    .line 311
    :cond_6
    :goto_6
    return-void

    .line 278
    :cond_7
    const/16 v0, 0xa

    new-array v5, v0, [I

    .line 279
    const/16 v0, 0xa

    new-array v6, v0, [F

    .line 280
    const/4 v0, 0x0

    :goto_10
    array-length v1, v5

    if-ge v0, v1, :cond_43

    .line 281
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->load:[D

    aget-wide v2, v1, v0

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoViews;->heat(D)I

    move-result v1

    aput v1, v5, v0

    .line 282
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->off:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_29

    const/4 v1, 0x0

    :goto_24
    aput v1, v6, v0

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 282
    :cond_29
    const v1, 0x3e99999a    # 0.3f

    const v2, 0x3f333333    # 0.7f

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->load:[D

    aget-wide v10, v3, v0

    const-wide v12, 0x3fe3333333333333L    # 0.6

    div-double/2addr v10, v12

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    double-to-float v3, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    goto :goto_24

    .line 284
    :cond_43
    iget-object v1, p1, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->px:[I

    .line 285
    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 286
    const/4 v0, 0x0

    :goto_4a
    iget-object v2, p1, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->idx:[I

    array-length v2, v2

    if-ge v0, v2, :cond_c2

    .line 287
    iget-object v2, p1, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->zone:[B

    aget-byte v2, v2, v0

    .line 288
    aget v7, v6, v2

    .line 289
    const/4 v3, 0x0

    cmpg-float v3, v7, v3

    if-gtz v3, :cond_5d

    .line 286
    :goto_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 292
    :cond_5d
    aget v2, v5, v2

    .line 293
    iget-object v3, p1, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->shade:[B

    aget-byte v3, v3, v0

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float v8, v3, v4

    .line 294
    shr-int/lit8 v3, v2, 0x10

    and-int/lit16 v3, v3, 0xff

    .line 295
    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v9, v4, 0xff

    .line 296
    and-int/lit16 v2, v2, 0xff

    .line 297
    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v4, v8, v4

    if-gez v4, :cond_a2

    .line 298
    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    mul-float/2addr v3, v8

    float-to-int v4, v3

    .line 299
    mul-int/lit8 v3, v9, 0x2

    int-to-float v3, v3

    mul-float/2addr v3, v8

    float-to-int v3, v3

    .line 300
    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    mul-float/2addr v2, v8

    float-to-int v2, v2

    .line 307
    :goto_89
    iget-object v8, p1, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->cov:[B

    aget-byte v8, v8, v0

    and-int/lit16 v8, v8, 0xff

    int-to-float v8, v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    .line 308
    iget-object v8, p1, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->idx:[I

    aget v8, v8, v0

    shl-int/lit8 v7, v7, 0x18

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v4, v7

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v1, v8

    goto :goto_5a

    .line 302
    :cond_a2
    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v8

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v4, v8

    const v8, 0x3f0ccccd    # 0.55f

    mul-float/2addr v8, v4

    .line 303
    int-to-float v4, v3

    rsub-int v3, v3, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, v8

    add-float/2addr v3, v4

    float-to-int v4, v3

    .line 304
    int-to-float v3, v9

    rsub-int v9, v9, 0xff

    int-to-float v9, v9

    mul-float/2addr v9, v8

    add-float/2addr v3, v9

    float-to-int v3, v3

    .line 305
    int-to-float v9, v2

    rsub-int v2, v2, 0xff

    int-to-float v2, v2

    mul-float/2addr v2, v8

    add-float/2addr v2, v9

    float-to-int v2, v2

    goto :goto_89

    .line 310
    :cond_c2
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->over:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->over:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->over:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v7, p1, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->over:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto/16 :goto_6
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16

    .prologue
    const/high16 v13, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 315
    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->dirty:Z

    if-eqz v2, :cond_1b

    .line 316
    iput-boolean v3, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->dirty:Z

    .line 317
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->figs:[Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->repaint(Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;)V

    .line 318
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->figs:[Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->repaint(Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;)V

    .line 321
    :cond_1b
    const/high16 v2, 0x41b00000    # 22.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v4

    .line 322
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float v5, v2, v0

    .line 324
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->figs:[Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;

    array-length v7, v6

    move v2, v3

    :goto_2c
    if-ge v2, v7, :cond_4b

    aget-object v8, v6, v2

    .line 325
    if-eqz v8, :cond_48

    iget-object v9, v8, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->art:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_48

    .line 326
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

    .line 324
    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 330
    :cond_4b
    add-float v2, v0, v4

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->getWidth()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v2, v2, v6

    if-lez v2, :cond_62

    .line 331
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float v1, v2, v1

    .line 333
    :cond_62
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    sub-float v0, v2, v0

    div-float/2addr v0, v13

    move v2, v3

    .line 334
    :goto_6d
    const/4 v6, 0x2

    if-ge v2, v6, :cond_c9

    .line 335
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->figs:[Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;

    aget-object v6, v6, v2

    .line 336
    if-eqz v6, :cond_7a

    iget-object v7, v6, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->art:Landroid/graphics/Bitmap;

    if-nez v7, :cond_7d

    .line 334
    :cond_7a
    :goto_7a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6d

    .line 339
    :cond_7d
    mul-float v7, v5, v1

    .line 340
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

    .line 341
    sub-float v9, v5, v7

    div-float/2addr v9, v13

    .line 342
    iget-object v10, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->src:Landroid/graphics/Rect;

    iget-object v11, v6, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->art:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    iget-object v12, v6, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->art:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-virtual {v10, v3, v3, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 343
    iget-object v10, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->dst:Landroid/graphics/RectF;

    add-float v11, v0, v8

    add-float/2addr v7, v9

    invoke-virtual {v10, v0, v9, v11, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 344
    iget-object v7, v6, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->art:Landroid/graphics/Bitmap;

    iget-object v9, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->src:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->dst:Landroid/graphics/RectF;

    iget-object v11, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 345
    iget-object v7, v6, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->over:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_c5

    .line 346
    iget-object v6, v6, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;->over:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->src:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->dst:Landroid/graphics/RectF;

    iget-object v10, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 348
    :cond_c5
    add-float v6, v8, v4

    add-float/2addr v0, v6

    goto :goto_7a

    .line 350
    :cond_c9
    return-void
.end method

.method public set(Lcom/isaigu/gymapp/ai/AiModel$Sex;[D[Z)V
    .registers 14

    .prologue
    const-wide/high16 v8, 0x4044000000000000L    # 40.0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 193
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne p1, v0, :cond_42

    const-string v0, "female"

    .line 194
    :goto_a
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->sexKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    .line 195
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->sexKey:Ljava/lang/String;

    move v2, v1

    .line 196
    :goto_15
    const/4 v4, 0x2

    if-ge v2, v4, :cond_45

    .line 197
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->figs:[Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->SIDES:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat$Fig;

    move-result-object v5

    aput-object v5, v4, v2

    .line 196
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 193
    :cond_42
    const-string v0, "male"

    goto :goto_a

    .line 199
    :cond_45
    iput-boolean v3, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->dirty:Z

    :cond_47
    move v0, v1

    .line 201
    :goto_48
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->load:[D

    array-length v2, v2

    if-ge v0, v2, :cond_85

    .line 203
    if-eqz p2, :cond_80

    array-length v2, p2

    if-ge v0, v2, :cond_80

    aget-wide v4, p2, v0

    mul-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v4, v8

    .line 204
    :goto_5b
    if-eqz p3, :cond_83

    array-length v2, p3

    if-ge v0, v2, :cond_83

    aget-boolean v2, p3, v0

    if-eqz v2, :cond_83

    move v2, v3

    .line 205
    :goto_65
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->load:[D

    aget-wide v6, v6, v0

    cmpl-double v6, v4, v6

    if-nez v6, :cond_73

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->off:[Z

    aget-boolean v6, v6, v0

    if-eq v2, v6, :cond_7d

    .line 206
    :cond_73
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->load:[D

    aput-wide v4, v6, v0

    .line 207
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->off:[Z

    aput-boolean v2, v4, v0

    .line 208
    iput-boolean v3, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->dirty:Z

    .line 201
    :cond_7d
    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    .line 203
    :cond_80
    const-wide/16 v4, 0x0

    goto :goto_5b

    :cond_83
    move v2, v1

    .line 204
    goto :goto_65

    .line 211
    :cond_85
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->dirty:Z

    if-eqz v0, :cond_8c

    .line 212
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->invalidate()V

    .line 214
    :cond_8c
    return-void
.end method
