.class public abstract Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
.super Ljava/lang/Object;
.source "Downsampler.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/bitmap/BitmapDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/resource/bitmap/BitmapDecoder",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field public static final AT_LEAST:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

.field public static final AT_MOST:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

.field private static final MARK_POSITION:I = 0x500000

.field public static final NONE:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

.field private static final OPTIONS_QUEUE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/graphics/BitmapFactory$Options;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Downsampler"

.field private static final TYPES_THAT_USE_POOL:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->TYPES_THAT_USE_POOL:Ljava/util/Set;

    .line 32
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->createQueue(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    .line 38
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$1;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$1;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->AT_LEAST:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    .line 55
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$2;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$2;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->AT_MOST:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    .line 70
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$3;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$3;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->NONE:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decodeStream(Lcom/bumptech/glide/util/MarkEnforcingInputStream;Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "is"    # Lcom/bumptech/glide/util/MarkEnforcingInputStream;
    .param p1, "bufferedStream"    # Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 310
    iget-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v2, :cond_1

    .line 316
    const/high16 v2, 0x500000

    invoke-virtual {p0, v2}, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->mark(I)V

    .line 324
    :goto_0
    const/4 v2, 0x0

    invoke-static {p0, v2, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 327
    .local v1, "result":Landroid/graphics/Bitmap;
    :try_start_0
    iget-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v2, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :cond_0
    :goto_1
    return-object v1

    .line 321
    .end local v1    # "result":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->fixMarkLimit()V

    goto :goto_0

    .line 330
    .restart local v1    # "result":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "Downsampler"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 332
    const-string v2, "Downsampler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception loading inDecodeBounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sample="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private downsampleWithSize(Lcom/bumptech/glide/util/MarkEnforcingInputStream;Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IIILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "is"    # Lcom/bumptech/glide/util/MarkEnforcingInputStream;
    .param p2, "bufferedStream"    # Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    .param p3, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p4, "pool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p5, "inWidth"    # I
    .param p6, "inHeight"    # I
    .param p7, "sampleSize"    # I
    .param p8, "decodeFormat"    # Lcom/bumptech/glide/load/DecodeFormat;

    .prologue
    .line 208
    move-object/from16 v0, p8

    invoke-static {p1, v0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getConfig(Ljava/io/InputStream;Lcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap$Config;

    move-result-object v2

    .line 209
    .local v2, "config":Landroid/graphics/Bitmap$Config;
    move/from16 v0, p7

    iput v0, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 210
    iput-object v2, p3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 211
    iget v5, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    const/16 v5, 0x13

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v5, v6, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->shouldUsePool(Ljava/io/InputStream;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 212
    int-to-double v6, p5

    move/from16 v0, p7

    int-to-double v8, v0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 213
    .local v4, "targetWidth":I
    move/from16 v0, p6

    int-to-double v6, v0

    move/from16 v0, p7

    int-to-double v8, v0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v3, v6

    .line 215
    .local v3, "targetHeight":I
    invoke-interface {p4, v4, v3, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {p3, v5}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->setInBitmap(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;)V

    .line 217
    .end local v3    # "targetHeight":I
    .end local v4    # "targetWidth":I
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decodeStream(Lcom/bumptech/glide/util/MarkEnforcingInputStream;Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    return-object v5
.end method

.method private static getConfig(Ljava/io/InputStream;Lcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap$Config;
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "format"    # Lcom/bumptech/glide/load/DecodeFormat;

    .prologue
    const/4 v5, 0x5

    .line 250
    sget-object v2, Lcom/bumptech/glide/load/DecodeFormat;->ALWAYS_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    if-eq p1, v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    .line 251
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 273
    :goto_0
    return-object v2

    .line 254
    :cond_1
    const/4 v1, 0x0

    .line 256
    .local v1, "hasAlpha":Z
    const/16 v2, 0x400

    invoke-virtual {p0, v2}, Ljava/io/InputStream;->mark(I)V

    .line 258
    :try_start_0
    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;

    invoke-direct {v2, p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->hasAlpha()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 265
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 273
    :cond_2
    :goto_1
    if-eqz v1, :cond_5

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "Downsampler"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 268
    const-string v2, "Downsampler"

    const-string v3, "Cannot reset the input stream"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 259
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 260
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_2
    const-string v2, "Downsampler"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 261
    const-string v2, "Downsampler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot determine whether the image has alpha or not from header for format "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 265
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 266
    :catch_2
    move-exception v0

    .line 267
    const-string v2, "Downsampler"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 268
    const-string v2, "Downsampler"

    const-string v3, "Cannot reset the input stream"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 264
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 265
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 270
    :cond_4
    :goto_2
    throw v2

    .line 266
    :catch_3
    move-exception v0

    .line 267
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v3, "Downsampler"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 268
    const-string v3, "Downsampler"

    const-string v4, "Cannot reset the input stream"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 273
    .end local v0    # "e":Ljava/io/IOException;
    :cond_5
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method private static declared-synchronized getDefaultOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 350
    const-class v2, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 351
    :try_start_1
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapFactory$Options;

    .line 352
    .local v0, "decodeBitmapOptions":Landroid/graphics/BitmapFactory$Options;
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 353
    if-nez v0, :cond_0

    .line 354
    :try_start_2
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .end local v0    # "decodeBitmapOptions":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 355
    .restart local v0    # "decodeBitmapOptions":Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->resetOptions(Landroid/graphics/BitmapFactory$Options;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 358
    :cond_0
    monitor-exit v2

    return-object v0

    .line 352
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 350
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getRoundedSampleSize(IIIII)I
    .locals 5
    .param p1, "degreesToRotate"    # I
    .param p2, "inWidth"    # I
    .param p3, "inHeight"    # I
    .param p4, "outWidth"    # I
    .param p5, "outHeight"    # I

    .prologue
    const/high16 v4, -0x80000000

    .line 182
    if-ne p5, v4, :cond_1

    move v2, p3

    .line 183
    .local v2, "targetHeight":I
    :goto_0
    if-ne p4, v4, :cond_2

    move v3, p2

    .line 186
    .local v3, "targetWidth":I
    :goto_1
    const/16 v4, 0x5a

    if-eq p1, v4, :cond_0

    const/16 v4, 0x10e

    if-ne p1, v4, :cond_3

    .line 189
    :cond_0
    invoke-virtual {p0, p3, p2, v3, v2}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getSampleSize(IIII)I

    move-result v0

    .line 198
    .local v0, "exactSampleSize":I
    :goto_2
    if-nez v0, :cond_4

    const/4 v1, 0x0

    .line 201
    .local v1, "powerOfTwoSampleSize":I
    :goto_3
    const/4 v4, 0x1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    return v4

    .end local v0    # "exactSampleSize":I
    .end local v1    # "powerOfTwoSampleSize":I
    .end local v2    # "targetHeight":I
    .end local v3    # "targetWidth":I
    :cond_1
    move v2, p5

    .line 182
    goto :goto_0

    .restart local v2    # "targetHeight":I
    :cond_2
    move v3, p4

    .line 183
    goto :goto_1

    .line 191
    .restart local v3    # "targetWidth":I
    :cond_3
    invoke-virtual {p0, p2, p3, v3, v2}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getSampleSize(IIII)I

    move-result v0

    .restart local v0    # "exactSampleSize":I
    goto :goto_2

    .line 198
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    goto :goto_3
.end method

.method private static releaseOptions(Landroid/graphics/BitmapFactory$Options;)V
    .locals 2
    .param p0, "decodeBitmapOptions"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 362
    invoke-static {p0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->resetOptions(Landroid/graphics/BitmapFactory$Options;)V

    .line 363
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    monitor-enter v1

    .line 364
    :try_start_0
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 365
    monitor-exit v1

    .line 366
    return-void

    .line 365
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static resetOptions(Landroid/graphics/BitmapFactory$Options;)V
    .locals 4
    .param p0, "decodeBitmapOptions"    # Landroid/graphics/BitmapFactory$Options;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 370
    iput-object v2, p0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 371
    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 372
    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 373
    iput v3, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 374
    iput-object v2, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 375
    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 376
    iput v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 377
    iput v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 378
    iput-object v2, p0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 380
    const/16 v0, 0xb

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v1, :cond_0

    .line 381
    iput-object v2, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 382
    iput-boolean v3, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 384
    :cond_0
    return-void
.end method

.method private static setInBitmap(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "recycled"    # Landroid/graphics/Bitmap;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 342
    const/16 v0, 0xb

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v1, :cond_0

    .line 343
    iput-object p1, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 345
    :cond_0
    return-void
.end method

.method private static shouldUsePool(Ljava/io/InputStream;)Z
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v4, 0x5

    .line 222
    const/16 v2, 0x13

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v2, v3, :cond_1

    .line 223
    const/4 v2, 0x1

    .line 245
    :cond_0
    :goto_0
    return v2

    .line 226
    :cond_1
    const/16 v2, 0x400

    invoke-virtual {p0, v2}, Ljava/io/InputStream;->mark(I)V

    .line 228
    :try_start_0
    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;

    invoke-direct {v2, p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->getType()Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    move-result-object v1

    .line 231
    .local v1, "type":Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->TYPES_THAT_USE_POOL:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 238
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "Downsampler"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 241
    const-string v3, "Downsampler"

    const-string v4, "Cannot reset the input stream"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 232
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "type":Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
    :catch_1
    move-exception v0

    .line 233
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_2
    const-string v2, "Downsampler"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 234
    const-string v2, "Downsampler"

    const-string v3, "Cannot determine the image type from header"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 238
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 245
    :cond_3
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 239
    :catch_2
    move-exception v0

    .line 240
    const-string v2, "Downsampler"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 241
    const-string v2, "Downsampler"

    const-string v3, "Cannot reset the input stream"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 237
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 238
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 243
    :cond_4
    :goto_2
    throw v2

    .line 239
    :catch_3
    move-exception v0

    .line 240
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v3, "Downsampler"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 241
    const-string v3, "Downsampler"

    const-string v4, "Cannot reset the input stream"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;
    .locals 27
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "pool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p3, "outWidth"    # I
    .param p4, "outHeight"    # I
    .param p5, "decodeFormat"    # Lcom/bumptech/glide/load/DecodeFormat;

    .prologue
    .line 106
    invoke-static {}, Lcom/bumptech/glide/util/ByteArrayPool;->get()Lcom/bumptech/glide/util/ByteArrayPool;

    move-result-object v16

    .line 107
    .local v16, "byteArrayPool":Lcom/bumptech/glide/util/ByteArrayPool;
    invoke-virtual/range {v16 .. v16}, Lcom/bumptech/glide/util/ByteArrayPool;->getBytes()[B

    move-result-object v17

    .line 108
    .local v17, "bytesForOptions":[B
    invoke-virtual/range {v16 .. v16}, Lcom/bumptech/glide/util/ByteArrayPool;->getBytes()[B

    move-result-object v18

    .line 109
    .local v18, "bytesForStream":[B
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getDefaultOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v10

    .line 112
    .local v10, "options":Landroid/graphics/BitmapFactory$Options;
    new-instance v9, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-direct {v9, v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;-><init>(Ljava/io/InputStream;[B)V

    .line 117
    .local v9, "bufferedStream":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    invoke-static {v9}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->obtain(Ljava/io/InputStream;)Lcom/bumptech/glide/util/ExceptionCatchingInputStream;

    move-result-object v21

    .line 122
    .local v21, "exceptionStream":Lcom/bumptech/glide/util/ExceptionCatchingInputStream;
    new-instance v23, Lcom/bumptech/glide/util/MarkEnforcingInputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/bumptech/glide/util/MarkEnforcingInputStream;-><init>(Ljava/io/InputStream;)V

    .line 124
    .local v23, "invalidatingStream":Lcom/bumptech/glide/util/MarkEnforcingInputStream;
    const/high16 v3, 0x500000

    :try_start_0
    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    const/16 v24, 0x0

    .line 127
    .local v24, "orientation":I
    :try_start_1
    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;

    move-object/from16 v0, v21

    invoke-direct {v3, v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->getOrientation()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v24

    .line 134
    :try_start_2
    invoke-virtual/range {v21 .. v21}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->reset()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    :cond_0
    :goto_0
    :try_start_3
    move-object/from16 v0, v17

    iput-object v0, v10, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 144
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v9, v10}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getDimensions(Lcom/bumptech/glide/util/MarkEnforcingInputStream;Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Landroid/graphics/BitmapFactory$Options;)[I

    move-result-object v22

    .line 145
    .local v22, "inDimens":[I
    const/4 v3, 0x0

    aget v5, v22, v3

    .line 146
    .local v5, "inWidth":I
    const/4 v3, 0x1

    aget v6, v22, v3

    .line 148
    .local v6, "inHeight":I
    invoke-static/range {v24 .. v24}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getExifOrientationDegrees(I)I

    move-result v4

    .local v4, "degreesToRotate":I
    move-object/from16 v3, p0

    move/from16 v7, p3

    move/from16 v8, p4

    .line 149
    invoke-direct/range {v3 .. v8}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getRoundedSampleSize(IIIII)I

    move-result v14

    .local v14, "sampleSize":I
    move-object/from16 v7, p0

    move-object/from16 v8, v23

    move-object/from16 v11, p2

    move v12, v5

    move v13, v6

    move-object/from16 v15, p5

    .line 151
    invoke-direct/range {v7 .. v15}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->downsampleWithSize(Lcom/bumptech/glide/util/MarkEnforcingInputStream;Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IIILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 158
    .local v19, "downsampled":Landroid/graphics/Bitmap;
    invoke-virtual/range {v21 .. v21}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->getException()Ljava/io/IOException;

    move-result-object v26

    .line 159
    .local v26, "streamException":Ljava/lang/Exception;
    if-eqz v26, :cond_3

    .line 160
    new-instance v3, Ljava/lang/RuntimeException;

    move-object/from16 v0, v26

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 174
    .end local v4    # "degreesToRotate":I
    .end local v5    # "inWidth":I
    .end local v6    # "inHeight":I
    .end local v14    # "sampleSize":I
    .end local v19    # "downsampled":Landroid/graphics/Bitmap;
    .end local v22    # "inDimens":[I
    .end local v24    # "orientation":I
    .end local v26    # "streamException":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-virtual/range {v16 .. v17}, Lcom/bumptech/glide/util/ByteArrayPool;->releaseBytes([B)Z

    .line 175
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/util/ByteArrayPool;->releaseBytes([B)Z

    .line 176
    invoke-virtual/range {v21 .. v21}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->release()V

    .line 177
    invoke-static {v10}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->releaseOptions(Landroid/graphics/BitmapFactory$Options;)V

    throw v3

    .line 135
    .restart local v24    # "orientation":I
    :catch_0
    move-exception v20

    .line 136
    .local v20, "e":Ljava/io/IOException;
    :try_start_4
    const-string v3, "Downsampler"

    const/4 v7, 0x5

    invoke-static {v3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    const-string v3, "Downsampler"

    const-string v7, "Cannot reset the input stream"

    move-object/from16 v0, v20

    invoke-static {v3, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 128
    .end local v20    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v20

    .line 129
    .restart local v20    # "e":Ljava/io/IOException;
    :try_start_5
    const-string v3, "Downsampler"

    const/4 v7, 0x5

    invoke-static {v3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    const-string v3, "Downsampler"

    const-string v7, "Cannot determine the image orientation from header"

    move-object/from16 v0, v20

    invoke-static {v3, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 134
    :cond_1
    :try_start_6
    invoke-virtual/range {v21 .. v21}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->reset()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 135
    :catch_2
    move-exception v20

    .line 136
    :try_start_7
    const-string v3, "Downsampler"

    const/4 v7, 0x5

    invoke-static {v3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    const-string v3, "Downsampler"

    const-string v7, "Cannot reset the input stream"

    move-object/from16 v0, v20

    invoke-static {v3, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 133
    .end local v20    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    .line 134
    :try_start_8
    invoke-virtual/range {v21 .. v21}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->reset()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 139
    :cond_2
    :goto_1
    :try_start_9
    throw v3

    .line 135
    :catch_3
    move-exception v20

    .line 136
    .restart local v20    # "e":Ljava/io/IOException;
    const-string v7, "Downsampler"

    const/4 v8, 0x5

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 137
    const-string v7, "Downsampler"

    const-string v8, "Cannot reset the input stream"

    move-object/from16 v0, v20

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 163
    .end local v20    # "e":Ljava/io/IOException;
    .restart local v4    # "degreesToRotate":I
    .restart local v5    # "inWidth":I
    .restart local v6    # "inHeight":I
    .restart local v14    # "sampleSize":I
    .restart local v19    # "downsampled":Landroid/graphics/Bitmap;
    .restart local v22    # "inDimens":[I
    .restart local v26    # "streamException":Ljava/lang/Exception;
    :cond_3
    const/16 v25, 0x0

    .line 164
    .local v25, "rotated":Landroid/graphics/Bitmap;
    if-eqz v19, :cond_4

    .line 165
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->rotateImageExif(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;I)Landroid/graphics/Bitmap;

    move-result-object v25

    .line 167
    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 168
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 174
    :cond_4
    invoke-virtual/range {v16 .. v17}, Lcom/bumptech/glide/util/ByteArrayPool;->releaseBytes([B)Z

    .line 175
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/util/ByteArrayPool;->releaseBytes([B)Z

    .line 176
    invoke-virtual/range {v21 .. v21}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->release()V

    .line 177
    invoke-static {v10}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->releaseOptions(Landroid/graphics/BitmapFactory$Options;)V

    return-object v25
.end method

.method public bridge synthetic decode(Ljava/lang/Object;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Lcom/bumptech/glide/load/DecodeFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 26
    move-object v1, p1

    check-cast v1, Ljava/io/InputStream;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decode(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDimensions(Lcom/bumptech/glide/util/MarkEnforcingInputStream;Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Landroid/graphics/BitmapFactory$Options;)[I
    .locals 4
    .param p1, "is"    # Lcom/bumptech/glide/util/MarkEnforcingInputStream;
    .param p2, "bufferedStream"    # Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    .param p3, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 302
    iput-boolean v3, p3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 303
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decodeStream(Lcom/bumptech/glide/util/MarkEnforcingInputStream;Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 304
    iput-boolean v2, p3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 305
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v1, v0, v2

    iget v1, p3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v1, v0, v3

    return-object v0
.end method

.method protected abstract getSampleSize(IIII)I
.end method
