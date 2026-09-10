.class public Lcom/isaigu/gymapp/message/ByteUtil;
.super Ljava/lang/Object;
.source "ByteUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bitToByte([B)B
    .locals 3
    .param p0, "bit"    # [B

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "b":B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 78
    aget-byte v2, p0, v1

    shl-int/2addr v2, v1

    add-int/2addr v2, v0

    int-to-byte v0, v2

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public static boolToByte([BZI)V
    .locals 1
    .param p0, "buffer"    # [B
    .param p1, "b"    # Z
    .param p2, "index"    # I

    .line 7
    int-to-byte v0, p1

    aput-byte v0, p0, p2

    .line 8
    return-void
.end method

.method public static byteToBit(B)[B
    .locals 3
    .param p0, "b"    # B

    .line 84
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 85
    .local v0, "bits":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 86
    shr-int v2, p0, v1

    and-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static byteToBool([BI)Z
    .locals 2
    .param p0, "buffer"    # [B
    .param p1, "index"    # I

    .line 12
    aget-byte v0, p0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static bytesToInt([BI)I
    .locals 2
    .param p0, "buffer"    # [B
    .param p1, "index"    # I

    .line 35
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static bytesToLong([BI)J
    .locals 2
    .param p0, "buffer"    # [B
    .param p1, "index"    # I

    .line 43
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x38

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x30

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x28

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x20

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x4

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x5

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x6

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x7

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public static bytesToShort([BI)S
    .locals 2
    .param p0, "buffer"    # [B
    .param p1, "index"    # I

    .line 23
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static bytesToString([BII)Ljava/lang/String;
    .locals 1
    .param p0, "b"    # [B
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 67
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public static intToBytes([BII)V
    .locals 2
    .param p0, "buffer"    # [B
    .param p1, "i"    # I
    .param p2, "index"    # I

    .line 27
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p2

    .line 28
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 29
    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 30
    add-int/lit8 v0, p2, 0x3

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 31
    return-void
.end method

.method public static longToBytes([BJI)V
    .locals 6
    .param p0, "buffer"    # [B
    .param p1, "l"    # J
    .param p3, "index"    # I

    .line 55
    const/16 v0, 0x38

    shr-long v0, p1, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    aput-byte v0, p0, p3

    .line 56
    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x30

    shr-long v4, p1, v1

    and-long/2addr v4, v2

    long-to-int v1, v4

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 57
    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x28

    shr-long v4, p1, v1

    and-long/2addr v4, v2

    long-to-int v1, v4

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 58
    add-int/lit8 v0, p3, 0x3

    const/16 v1, 0x20

    shr-long v4, p1, v1

    and-long/2addr v4, v2

    long-to-int v1, v4

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 59
    add-int/lit8 v0, p3, 0x4

    const/16 v1, 0x18

    shr-long v4, p1, v1

    and-long/2addr v4, v2

    long-to-int v1, v4

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 60
    add-int/lit8 v0, p3, 0x5

    const/16 v1, 0x10

    shr-long v4, p1, v1

    and-long/2addr v4, v2

    long-to-int v1, v4

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 61
    add-int/lit8 v0, p3, 0x6

    const/16 v1, 0x8

    shr-long v4, p1, v1

    and-long/2addr v4, v2

    long-to-int v1, v4

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 62
    add-int/lit8 v0, p3, 0x7

    and-long v1, p1, v2

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p0, v0

    .line 63
    return-void
.end method

.method public static shortToBytes([BSI)V
    .locals 2
    .param p0, "buffer"    # [B
    .param p1, "s"    # S
    .param p2, "index"    # I

    .line 17
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p2

    .line 18
    add-int/lit8 v0, p2, 0x1

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 19
    return-void
.end method

.method public static stringToBytes(Ljava/lang/String;)[B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method
