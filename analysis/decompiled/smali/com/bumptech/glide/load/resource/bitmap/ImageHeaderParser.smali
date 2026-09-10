.class public Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;
.super Ljava/lang/Object;
.source "ImageHeaderParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;,
        Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;,
        Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
    }
.end annotation


# static fields
.field private static final BYTES_PER_FORMAT:[I

.field private static final EXIF_MAGIC_NUMBER:I = 0xffd8

.field private static final EXIF_SEGMENT_TYPE:I = 0xe1

.field private static final GIF_HEADER:I = 0x474946

.field private static final INTEL_TIFF_MAGIC_NUMBER:I = 0x4949

.field private static final JPEG_EXIF_SEGMENT_PREAMBLE:Ljava/lang/String; = "Exif\u0000\u0000"

.field private static final JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

.field private static final MARKER_EOI:I = 0xd9

.field private static final MOTOROLA_TIFF_MAGIC_NUMBER:I = 0x4d4d

.field private static final ORIENTATION_TAG_TYPE:I = 0x112

.field private static final PNG_HEADER:I = -0x76afb1b9

.field private static final SEGMENT_SOS:I = 0xda

.field private static final SEGMENT_START_ID:I = 0xff

.field private static final TAG:Ljava/lang/String; = "ImageHeaderParser"


# instance fields
.field private final streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    const/16 v1, 0xd

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->BYTES_PER_FORMAT:[I

    .line 67
    const/4 v1, 0x0

    new-array v0, v1, [B

    .line 69
    .local v0, "bytes":[B
    :try_start_0
    const-string v1, "Exif\u0000\u0000"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 73
    :goto_0
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

    .line 74
    return-void

    .line 70
    :catch_0
    move-exception v1

    goto :goto_0

    .line 62
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    .line 78
    return-void
.end method

.method private static calcTagOffset(II)I
    .locals 2
    .param p0, "ifdOffset"    # I
    .param p1, "tagIndex"    # I

    .prologue
    .line 285
    add-int/lit8 v0, p0, 0x2

    mul-int/lit8 v1, p1, 0xc

    add-int/2addr v0, v1

    return v0
.end method

.method private getExifSegment()[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v4, 0x0

    .line 151
    :cond_0
    iget-object v5, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v5}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getUInt8()S

    move-result v1

    .line 153
    .local v1, "segmentId":S
    const/16 v5, 0xff

    if-eq v1, v5, :cond_3

    .line 154
    const-string v5, "ImageHeaderParser"

    invoke-static {v5, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 155
    const-string v5, "ImageHeaderParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown segmentId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v0, v4

    .line 190
    :cond_2
    :goto_0
    return-object v0

    .line 160
    :cond_3
    iget-object v5, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v5}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getUInt8()S

    move-result v3

    .line 162
    .local v3, "segmentType":S
    const/16 v5, 0xda

    if-ne v3, v5, :cond_4

    move-object v0, v4

    .line 163
    goto :goto_0

    .line 164
    :cond_4
    const/16 v5, 0xd9

    if-ne v3, v5, :cond_6

    .line 165
    const-string v5, "ImageHeaderParser"

    invoke-static {v5, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 166
    const-string v5, "ImageHeaderParser"

    const-string v6, "Found MARKER_EOI in exif segment"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object v0, v4

    .line 168
    goto :goto_0

    .line 172
    :cond_6
    iget-object v5, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v5}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getUInt16()I

    move-result v5

    add-int/lit8 v2, v5, -0x2

    .line 174
    .local v2, "segmentLength":I
    const/16 v5, 0xe1

    if-eq v3, v5, :cond_8

    .line 175
    int-to-long v6, v2

    iget-object v5, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    int-to-long v8, v2

    invoke-virtual {v5, v8, v9}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->skip(J)J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    .line 176
    const-string v5, "ImageHeaderParser"

    invoke-static {v5, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 177
    const-string v5, "ImageHeaderParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to skip enough data for type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object v0, v4

    .line 179
    goto :goto_0

    .line 182
    :cond_8
    new-array v0, v2, [B

    .line 184
    .local v0, "segmentData":[B
    iget-object v5, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v5, v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->read([B)I

    move-result v5

    if-eq v2, v5, :cond_2

    .line 185
    const-string v5, "ImageHeaderParser"

    invoke-static {v5, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 186
    const-string v5, "ImageHeaderParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to read segment data for type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " length="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object v0, v4

    .line 188
    goto/16 :goto_0
.end method

.method private static handles(I)Z
    .locals 2
    .param p0, "imageMagicNumber"    # I

    .prologue
    const v1, 0xffd8

    .line 289
    and-int v0, p0, v1

    if-eq v0, v1, :cond_0

    const/16 v0, 0x4d4d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x4949

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parseExifSegment(Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;)I
    .locals 15
    .param p0, "segmentData"    # Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;

    .prologue
    .line 197
    const-string v12, "Exif\u0000\u0000"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v6

    .line 199
    .local v6, "headerOffsetSize":I
    invoke-virtual {p0, v6}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v2

    .line 201
    .local v2, "byteOrderIdentifier":S
    const/16 v12, 0x4d4d

    if-ne v2, v12, :cond_1

    .line 202
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 212
    .local v1, "byteOrder":Ljava/nio/ByteOrder;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->order(Ljava/nio/ByteOrder;)V

    .line 214
    add-int/lit8 v12, v6, 0x4

    invoke-virtual {p0, v12}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt32(I)I

    move-result v12

    add-int v4, v12, v6

    .line 215
    .local v4, "firstIfdOffset":I
    invoke-virtual {p0, v4}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v8

    .line 218
    .local v8, "tagCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v8, :cond_e

    .line 219
    invoke-static {v4, v7}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->calcTagOffset(II)I

    move-result v9

    .line 221
    .local v9, "tagOffset":I
    invoke-virtual {p0, v9}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v10

    .line 224
    .local v10, "tagType":I
    const/16 v12, 0x112

    if-eq v10, v12, :cond_4

    .line 218
    :cond_0
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 203
    .end local v1    # "byteOrder":Ljava/nio/ByteOrder;
    .end local v4    # "firstIfdOffset":I
    .end local v7    # "i":I
    .end local v8    # "tagCount":I
    .end local v9    # "tagOffset":I
    .end local v10    # "tagType":I
    :cond_1
    const/16 v12, 0x4949

    if-ne v2, v12, :cond_2

    .line 204
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .restart local v1    # "byteOrder":Ljava/nio/ByteOrder;
    goto :goto_0

    .line 206
    .end local v1    # "byteOrder":Ljava/nio/ByteOrder;
    :cond_2
    const-string v12, "ImageHeaderParser"

    const/4 v13, 0x3

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 207
    const-string v12, "ImageHeaderParser"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown endianness = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_3
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .restart local v1    # "byteOrder":Ljava/nio/ByteOrder;
    goto :goto_0

    .line 228
    .restart local v4    # "firstIfdOffset":I
    .restart local v7    # "i":I
    .restart local v8    # "tagCount":I
    .restart local v9    # "tagOffset":I
    .restart local v10    # "tagType":I
    :cond_4
    add-int/lit8 v12, v9, 0x2

    invoke-virtual {p0, v12}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v5

    .line 231
    .local v5, "formatCode":I
    const/4 v12, 0x1

    if-lt v5, v12, :cond_5

    const/16 v12, 0xc

    if-le v5, v12, :cond_6

    .line 232
    :cond_5
    const-string v12, "ImageHeaderParser"

    const/4 v13, 0x3

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 233
    const-string v12, "ImageHeaderParser"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Got invalid format code = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 238
    :cond_6
    add-int/lit8 v12, v9, 0x4

    invoke-virtual {p0, v12}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt32(I)I

    move-result v3

    .line 240
    .local v3, "componentCount":I
    if-gez v3, :cond_7

    .line 241
    const-string v12, "ImageHeaderParser"

    const/4 v13, 0x3

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 242
    const-string v12, "ImageHeaderParser"

    const-string v13, "Negative tiff component count"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 247
    :cond_7
    const-string v12, "ImageHeaderParser"

    const/4 v13, 0x3

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 248
    const-string v12, "ImageHeaderParser"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Got tagIndex="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " tagType="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " formatCode ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " componentCount="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_8
    sget-object v12, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->BYTES_PER_FORMAT:[I

    aget v12, v12, v5

    add-int v0, v3, v12

    .line 254
    .local v0, "byteCount":I
    const/4 v12, 0x4

    if-le v0, v12, :cond_9

    .line 255
    const-string v12, "ImageHeaderParser"

    const/4 v13, 0x3

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 256
    const-string v12, "ImageHeaderParser"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Got byte count > 4, not orientation, continuing, formatCode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 261
    :cond_9
    add-int/lit8 v11, v9, 0x8

    .line 263
    .local v11, "tagValueOffset":I
    if-ltz v11, :cond_a

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->length()I

    move-result v12

    if-le v11, v12, :cond_b

    .line 264
    :cond_a
    const-string v12, "ImageHeaderParser"

    const/4 v13, 0x3

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 265
    const-string v12, "ImageHeaderParser"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Illegal tagValueOffset="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " tagType="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 270
    :cond_b
    if-ltz v0, :cond_c

    add-int v12, v11, v0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->length()I

    move-result v13

    if-le v12, v13, :cond_d

    .line 271
    :cond_c
    const-string v12, "ImageHeaderParser"

    const/4 v13, 0x3

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 272
    const-string v12, "ImageHeaderParser"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Illegal number of bytes for TI tag data tagType="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 278
    :cond_d
    invoke-virtual {p0, v11}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v12

    .line 281
    .end local v0    # "byteCount":I
    .end local v3    # "componentCount":I
    .end local v5    # "formatCode":I
    .end local v9    # "tagOffset":I
    .end local v10    # "tagType":I
    .end local v11    # "tagValueOffset":I
    :goto_3
    return v12

    :cond_e
    const/4 v12, -0x1

    goto :goto_3
.end method


# virtual methods
.method public getOrientation()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 121
    iget-object v5, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v5}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getUInt16()I

    move-result v3

    .line 123
    .local v3, "magicNumber":I
    invoke-static {v3}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->handles(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 142
    :cond_0
    :goto_0
    return v4

    .line 126
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->getExifSegment()[B

    move-result-object v0

    .line 127
    .local v0, "exifData":[B
    if-eqz v0, :cond_3

    array-length v5, v0

    sget-object v6, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

    array-length v6, v6

    if-le v5, v6, :cond_3

    const/4 v1, 0x1

    .line 130
    .local v1, "hasJpegExifPreamble":Z
    :goto_1
    if-eqz v1, :cond_2

    .line 131
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    sget-object v5, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

    array-length v5, v5

    if-ge v2, v5, :cond_2

    .line 132
    aget-byte v5, v0, v2

    sget-object v6, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

    aget-byte v6, v6, v2

    if-eq v5, v6, :cond_4

    .line 133
    const/4 v1, 0x0

    .line 139
    .end local v2    # "i":I
    :cond_2
    if-eqz v1, :cond_0

    .line 140
    new-instance v4, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;

    invoke-direct {v4, v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;-><init>([B)V

    invoke-static {v4}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->parseExifSegment(Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;)I

    move-result v4

    goto :goto_0

    .line 127
    .end local v1    # "hasJpegExifPreamble":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 131
    .restart local v1    # "hasJpegExifPreamble":Z
    .restart local v2    # "i":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public getType()Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v4, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getUInt8()S

    move-result v1

    .line 90
    .local v1, "firstByte":I
    const/16 v4, 0xff

    if-ne v1, v4, :cond_0

    .line 91
    sget-object v4, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    .line 110
    :goto_0
    return-object v4

    .line 94
    :cond_0
    shl-int/lit8 v4, v1, 0x8

    const v5, 0xff00

    and-int/2addr v4, v5

    iget-object v5, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v5}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getUInt8()S

    move-result v5

    and-int/lit16 v5, v5, 0xff

    or-int v3, v4, v5

    .line 95
    .local v3, "firstTwoBytes":I
    shl-int/lit8 v4, v3, 0x10

    const/high16 v5, -0x10000

    and-int/2addr v4, v5

    iget-object v5, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v5}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getUInt16()I

    move-result v5

    const v6, 0xffff

    and-int/2addr v5, v6

    or-int v2, v4, v5

    .line 97
    .local v2, "firstFourBytes":I
    const v4, -0x76afb1b9

    if-ne v2, v4, :cond_2

    .line 99
    iget-object v4, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    const-wide/16 v6, 0x15

    invoke-virtual {v4, v6, v7}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->skip(J)J

    .line 100
    iget-object v4, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getByte()I

    move-result v0

    .line 102
    .local v0, "alpha":I
    const/4 v4, 0x3

    if-lt v0, v4, :cond_1

    sget-object v4, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    goto :goto_0

    .line 106
    .end local v0    # "alpha":I
    :cond_2
    shr-int/lit8 v4, v2, 0x8

    const v5, 0x474946

    if-ne v4, v5, :cond_3

    .line 107
    sget-object v4, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    goto :goto_0

    .line 110
    :cond_3
    sget-object v4, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    goto :goto_0
.end method

.method public hasAlpha()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->getType()Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->hasAlpha()Z

    move-result v0

    return v0
.end method
