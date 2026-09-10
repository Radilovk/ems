.class public Lorg/apache/poi/util/LittleEndian;
.super Ljava/lang/Object;
.source "LittleEndian.java"

# interfaces
.implements Lorg/apache/poi/util/LittleEndianConsts;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/util/LittleEndian$BufferUnderrunException;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 823
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 825
    return-void
.end method

.method public static getByteArray([BII)[B
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "size"    # I

    .line 71
    new-array v0, p2, [B

    .line 72
    .local v0, "copy":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    return-object v0
.end method

.method public static getDouble([B)D
    .locals 2
    .param p0, "data"    # [B

    .line 88
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getLong([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getDouble([BI)D
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 104
    invoke-static {p0, p1}, Lorg/apache/poi/util/LittleEndian;->getLong([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getFloat([B)F
    .locals 1
    .param p0, "data"    # [B

    .line 118
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getFloat([BI)F

    move-result v0

    return v0
.end method

.method public static getFloat([BI)F
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 134
    invoke-static {p0, p1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static getInt([B)I
    .locals 1
    .param p0, "data"    # [B

    .line 146
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    return v0
.end method

.method public static getInt([BI)I
    .locals 7
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 160
    move v0, p1

    .line 161
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 162
    .local v0, "b0":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 163
    .local v1, "b1":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 164
    .local v2, "b2":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 165
    .local v3, "b3":I
    shl-int/lit8 v5, v3, 0x18

    shl-int/lit8 v6, v2, 0x10

    add-int/2addr v5, v6

    shl-int/lit8 v6, v1, 0x8

    add-int/2addr v5, v6

    shl-int/lit8 v6, v0, 0x0

    add-int/2addr v5, v6

    return v5
.end method

.method public static getLong([B)J
    .locals 2
    .param p0, "data"    # [B

    .line 177
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getLong([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLong([BI)J
    .locals 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 191
    add-int/lit8 v0, p1, 0x7

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    .line 193
    .local v0, "result":J
    add-int/lit8 v2, p1, 0x8

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_0
    if-lt v2, p1, :cond_0

    .line 195
    const/16 v3, 0x8

    shl-long/2addr v0, v3

    .line 196
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v0, v3

    .line 193
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 198
    .end local v2    # "j":I
    :cond_0
    return-wide v0
.end method

.method public static getShort([B)S
    .locals 1
    .param p0, "data"    # [B

    .line 210
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    return v0
.end method

.method public static getShort([BI)S
    .locals 4
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 224
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    .line 225
    .local v0, "b0":I
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 226
    .local v1, "b1":I
    shl-int/lit8 v2, v1, 0x8

    shl-int/lit8 v3, v0, 0x0

    add-int/2addr v2, v3

    int-to-short v2, v2

    return v2
.end method

.method public static getShortArray([BII)[S
    .locals 3
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "size"    # I

    .line 243
    div-int/lit8 v0, p2, 0x2

    new-array v0, v0, [S

    .line 244
    .local v0, "result":[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 246
    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p1

    invoke-static {p0, v2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v2

    aput-short v2, v0, v1

    .line 244
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static getUByte([B)S
    .locals 1
    .param p0, "data"    # [B

    .line 260
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public static getUByte([BI)S
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 274
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public static getUInt([B)J
    .locals 2
    .param p0, "data"    # [B

    .line 286
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUInt([BI)J
    .locals 4
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 300
    invoke-static {p0, p1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    int-to-long v0, v0

    .line 301
    .local v0, "retNum":J
    const-wide v2, 0xffffffffL

    and-long/2addr v2, v0

    return-wide v2
.end method

.method public static getUShort([B)I
    .locals 1
    .param p0, "data"    # [B

    .line 329
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v0

    return v0
.end method

.method public static getUShort([BI)I
    .locals 4
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 343
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    .line 344
    .local v0, "b0":I
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 345
    .local v1, "b1":I
    shl-int/lit8 v2, v1, 0x8

    shl-int/lit8 v3, v0, 0x0

    add-int/2addr v2, v3

    return v2
.end method

.method public static getUnsignedByte([BI)I
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 317
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static putByte([BII)V
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # I

    .line 359
    int-to-byte v0, p2

    aput-byte v0, p0, p1

    .line 360
    return-void
.end method

.method public static putDouble(DLjava/io/OutputStream;)V
    .locals 2
    .param p0, "value"    # D
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 390
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lorg/apache/poi/util/LittleEndian;->putLong(JLjava/io/OutputStream;)V

    .line 391
    return-void
.end method

.method public static putDouble([BID)V
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # D

    .line 374
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putLong([BIJ)V

    .line 375
    return-void
.end method

.method public static putFloat(FLjava/io/OutputStream;)V
    .locals 1
    .param p0, "value"    # F
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 421
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v0, p1}, Lorg/apache/poi/util/LittleEndian;->putInt(ILjava/io/OutputStream;)V

    .line 422
    return-void
.end method

.method public static putFloat([BIF)V
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # F

    .line 405
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 406
    return-void
.end method

.method public static putInt(ILjava/io/OutputStream;)V
    .locals 1
    .param p0, "value"    # I
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 471
    ushr-int/lit8 v0, p0, 0x0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 472
    ushr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 473
    ushr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 474
    ushr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 475
    return-void
.end method

.method public static putInt([BI)V
    .locals 1
    .param p0, "data"    # [B
    .param p1, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 436
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 437
    return-void
.end method

.method public static putInt([BII)V
    .locals 3
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # I

    .line 451
    move v0, p1

    .line 452
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    ushr-int/lit8 v2, p2, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 453
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    ushr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 454
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    ushr-int/lit8 v2, p2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 455
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    ushr-int/lit8 v2, p2, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 456
    return-void
.end method

.method public static putLong(JLjava/io/OutputStream;)V
    .locals 4
    .param p0, "value"    # J
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 512
    const/4 v0, 0x0

    ushr-long v0, p0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 513
    const/16 v0, 0x8

    ushr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 514
    const/16 v0, 0x10

    ushr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 515
    const/16 v0, 0x18

    ushr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 516
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 517
    const/16 v0, 0x28

    ushr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 518
    const/16 v0, 0x30

    ushr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 519
    const/16 v0, 0x38

    ushr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 520
    return-void
.end method

.method public static putLong([BIJ)V
    .locals 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # J

    .line 489
    add-int/lit8 v0, p1, 0x0

    const/4 v1, 0x0

    ushr-long v1, p2, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p0, v0

    .line 490
    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x8

    ushr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p0, v0

    .line 491
    add-int/lit8 v0, p1, 0x2

    const/16 v1, 0x10

    ushr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p0, v0

    .line 492
    add-int/lit8 v0, p1, 0x3

    const/16 v1, 0x18

    ushr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p0, v0

    .line 493
    add-int/lit8 v0, p1, 0x4

    const/16 v1, 0x20

    ushr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p0, v0

    .line 494
    add-int/lit8 v0, p1, 0x5

    const/16 v1, 0x28

    ushr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p0, v0

    .line 495
    add-int/lit8 v0, p1, 0x6

    const/16 v1, 0x30

    ushr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p0, v0

    .line 496
    add-int/lit8 v0, p1, 0x7

    const/16 v1, 0x38

    ushr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p0, v0

    .line 497
    return-void
.end method

.method public static putShort(Ljava/io/OutputStream;S)V
    .locals 1
    .param p0, "outputStream"    # Ljava/io/OutputStream;
    .param p1, "value"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 567
    ushr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 568
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 569
    return-void
.end method

.method public static putShort([BIS)V
    .locals 3
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # S

    .line 534
    move v0, p1

    .line 535
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    ushr-int/lit8 v2, p2, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 536
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    ushr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 537
    return-void
.end method

.method public static putShort([BS)V
    .locals 1
    .param p0, "data"    # [B
    .param p1, "value"    # S
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 551
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 552
    return-void
.end method

.method public static putShortArray([BI[S)V
    .locals 5
    .param p0, "data"    # [B
    .param p1, "startOffset"    # I
    .param p2, "value"    # [S

    .line 584
    move v0, p1

    .line 585
    .local v0, "offset":I
    move-object v1, p2

    .local v1, "arr$":[S
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-short v4, v1, v3

    .line 587
    .local v4, "s":S
    invoke-static {p0, v0, v4}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 588
    nop

    .end local v4    # "s":S
    add-int/lit8 v0, v0, 0x2

    .line 585
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 590
    .end local v1    # "arr$":[S
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    return-void
.end method

.method public static putUByte([BIS)V
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # S

    .line 607
    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 608
    return-void
.end method

.method public static putUInt(JLjava/io/OutputStream;)V
    .locals 4
    .param p0, "value"    # J
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 660
    const/4 v0, 0x0

    ushr-long v0, p0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 661
    const/16 v0, 0x8

    ushr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 662
    const/16 v0, 0x10

    ushr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 663
    const/16 v0, 0x18

    ushr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 664
    return-void
.end method

.method public static putUInt([BIJ)V
    .locals 6
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # J

    .line 625
    move v0, p1

    .line 626
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/4 v2, 0x0

    ushr-long v2, p2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, p0, v0

    .line 627
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v2, 0x8

    ushr-long v2, p2, v2

    and-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, p0, v1

    .line 628
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    const/16 v2, 0x10

    ushr-long v2, p2, v2

    and-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, p0, v0

    .line 629
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v2, 0x18

    ushr-long v2, p2, v2

    and-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, p0, v1

    .line 630
    return-void
.end method

.method public static putUInt([BJ)V
    .locals 1
    .param p0, "data"    # [B
    .param p1, "value"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 644
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lorg/apache/poi/util/LittleEndian;->putUInt([BIJ)V

    .line 645
    return-void
.end method

.method public static putUShort(ILjava/io/OutputStream;)V
    .locals 1
    .param p0, "value"    # I
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 699
    ushr-int/lit8 v0, p0, 0x0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 700
    ushr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 701
    return-void
.end method

.method public static putUShort([BII)V
    .locals 3
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # I

    .line 681
    move v0, p1

    .line 682
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    ushr-int/lit8 v2, p2, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 683
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    ushr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 684
    return-void
.end method

.method public static readInt(Ljava/io/InputStream;)I
    .locals 6
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/util/LittleEndian$BufferUnderrunException;
        }
    .end annotation

    .line 717
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 718
    .local v0, "ch1":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 719
    .local v1, "ch2":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 720
    .local v2, "ch3":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 721
    .local v3, "ch4":I
    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    if-ltz v4, :cond_0

    .line 725
    shl-int/lit8 v4, v3, 0x18

    shl-int/lit8 v5, v2, 0x10

    add-int/2addr v4, v5

    shl-int/lit8 v5, v1, 0x8

    add-int/2addr v4, v5

    shl-int/lit8 v5, v0, 0x0

    add-int/2addr v4, v5

    return v4

    .line 723
    :cond_0
    new-instance v4, Lorg/apache/poi/util/LittleEndian$BufferUnderrunException;

    invoke-direct {v4}, Lorg/apache/poi/util/LittleEndian$BufferUnderrunException;-><init>()V

    throw v4
.end method

.method public static readLong(Ljava/io/InputStream;)J
    .locals 13
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/util/LittleEndian$BufferUnderrunException;
        }
    .end annotation

    .line 760
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 761
    .local v0, "ch1":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 762
    .local v1, "ch2":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 763
    .local v2, "ch3":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 764
    .local v3, "ch4":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 765
    .local v4, "ch5":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 766
    .local v5, "ch6":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 767
    .local v6, "ch7":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v7

    .line 768
    .local v7, "ch8":I
    or-int v8, v0, v1

    or-int/2addr v8, v2

    or-int/2addr v8, v3

    or-int/2addr v8, v4

    or-int/2addr v8, v5

    or-int/2addr v8, v6

    or-int/2addr v8, v7

    if-ltz v8, :cond_0

    .line 773
    int-to-long v8, v7

    const/16 v10, 0x38

    shl-long/2addr v8, v10

    int-to-long v10, v6

    const/16 v12, 0x30

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v5

    const/16 v12, 0x28

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v4

    const/16 v12, 0x20

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v3

    const/16 v12, 0x18

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    shl-int/lit8 v10, v2, 0x10

    int-to-long v10, v10

    add-long/2addr v8, v10

    shl-int/lit8 v10, v1, 0x8

    int-to-long v10, v10

    add-long/2addr v8, v10

    shl-int/lit8 v10, v0, 0x0

    int-to-long v10, v10

    add-long/2addr v8, v10

    return-wide v8

    .line 770
    :cond_0
    new-instance v8, Lorg/apache/poi/util/LittleEndian$BufferUnderrunException;

    invoke-direct {v8}, Lorg/apache/poi/util/LittleEndian$BufferUnderrunException;-><init>()V

    throw v8
.end method

.method public static readShort(Ljava/io/InputStream;)S
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/util/LittleEndian$BufferUnderrunException;
        }
    .end annotation

    .line 794
    invoke-static {p0}, Lorg/apache/poi/util/LittleEndian;->readUShort(Ljava/io/InputStream;)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public static readUInt(Ljava/io/InputStream;)J
    .locals 4
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/util/LittleEndian$BufferUnderrunException;
        }
    .end annotation

    .line 742
    invoke-static {p0}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v0

    int-to-long v0, v0

    .line 743
    .local v0, "retNum":J
    const-wide v2, 0xffffffffL

    and-long/2addr v2, v0

    return-wide v2
.end method

.method public static readUShort(Ljava/io/InputStream;)I
    .locals 4
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/util/LittleEndian$BufferUnderrunException;
        }
    .end annotation

    .line 800
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 801
    .local v0, "ch1":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 802
    .local v1, "ch2":I
    or-int v2, v0, v1

    if-ltz v2, :cond_0

    .line 806
    shl-int/lit8 v2, v1, 0x8

    shl-int/lit8 v3, v0, 0x0

    add-int/2addr v2, v3

    return v2

    .line 804
    :cond_0
    new-instance v2, Lorg/apache/poi/util/LittleEndian$BufferUnderrunException;

    invoke-direct {v2}, Lorg/apache/poi/util/LittleEndian$BufferUnderrunException;-><init>()V

    throw v2
.end method

.method public static ubyteToInt(B)I
    .locals 1
    .param p0, "b"    # B

    .line 819
    and-int/lit16 v0, p0, 0xff

    return v0
.end method
