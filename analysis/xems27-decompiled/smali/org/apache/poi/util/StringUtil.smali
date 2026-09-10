.class public Lorg/apache/poi/util/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/util/StringUtil$StringsIterator;
    }
.end annotation


# static fields
.field private static final ISO_8859_1:Ljava/nio/charset/Charset;

.field private static final UTF16LE:Ljava/nio/charset/Charset;

.field private static msCodepointToUnicode:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final symbolMap_f020:[I

.field private static final symbolMap_f0a0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/StringUtil;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 41
    const-string v0, "UTF-16LE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/StringUtil;->UTF16LE:Ljava/nio/charset/Charset;

    .line 449
    const/16 v0, 0x60

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/poi/util/StringUtil;->symbolMap_f020:[I

    .line 548
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/poi/util/StringUtil;->symbolMap_f0a0:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x20
        0x21
        0x2200
        0x23
        0x2203
        0x25
        0x26
        0x220d
        0x28
        0x29
        0x2217
        0x2b
        0x2c
        0x2212
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x2245
        0x391
        0x392
        0x3a7
        0x394
        0x395
        0x3a6
        0x393
        0x397
        0x399
        0x3d1
        0x39a
        0x39b
        0x39c
        0x39d
        0x39f
        0x3a0
        0x398
        0x3a1
        0x3a3
        0x3a4
        0x3a5
        0x3c2
        0x3a9
        0x39e
        0x3a8
        0x396
        0x5b
        0x223d
        0x5d
        0x22a5
        0x5f
        0x20
        0x3b1
        0x3b2
        0x3c7
        0x3b4
        0x3b5
        0x3c6
        0x3b3
        0x3b7
        0x3b9
        0x3d5
        0x3ba
        0x3bb
        0x3bc
        0x3bd
        0x3bf
        0x3c0
        0x3b8
        0x3c1
        0x3c3
        0x3c4
        0x3c5
        0x3d6
        0x3c9
        0x3be
        0x3c8
        0x3b6
        0x7b
        0x7c
        0x7d
        0x223c
        0x20
    .end array-data

    :array_1
    .array-data 4
        0x20ac
        0x3d2
        0x2032
        0x2264
        0x2044
        0x221e
        0x192
        0x2663
        0x2666
        0x2665
        0x2660
        0x2194
        0x218f
        0x2191
        0x2192
        0x2193
        0xb0
        0xb1
        0x2033
        0x2265
        0xd7
        0xb5
        0x2202
        0x2219
        0xf7
        0x2260
        0x2261
        0x2248
        0x2026
        0x23d0
        0x23af
        0x21b5
        0x2135
        0x211b
        0x211c
        0x2118
        0x2297
        0x2295
        0x2205
        0x2229
        0x222a
        0x2283
        0x2287
        0x2284
        0x2282
        0x2286
        0x2208
        0x2209
        0x2220
        0x2207
        0xae
        0xa9
        0x2122
        0x220f
        0x221a
        0x22c5
        0xac
        0x2227
        0x2228
        0x21d4
        0x21d0
        0x21d1
        0x21d2
        0x21d3
        0x25ca
        0x2329
        0xae
        0xa9
        0x2122
        0x2211
        0x239b
        0x239c
        0x239d
        0x23a1
        0x23a2
        0x23a3
        0x23a7
        0x23a8
        0x23a9
        0x23aa
        0x20
        0x232a
        0x222b
        0x2320
        0x23ae
        0x2321
        0x239e
        0x239f
        0x23a0
        0x23a4
        0x23a5
        0x23a6
        0x23ab
        0x23ac
        0x23ad
        0x20
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "params"    # [Ljava/lang/Object;

    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, "currentParamNumber":I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 278
    .local v1, "formattedMessage":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 279
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x25

    if-ne v3, v4, :cond_2

    .line 280
    array-length v3, p1

    if-lt v0, v3, :cond_0

    .line 281
    const-string v3, "?missing data?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 282
    :cond_0
    aget-object v3, p1, v0

    instance-of v3, v3, Ljava/lang/Number;

    if-eqz v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 285
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "currentParamNumber":I
    .local v3, "currentParamNumber":I
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Number;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v1}, Lorg/apache/poi/util/StringUtil;->matchOptionalFormatting(Ljava/lang/Number;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v0

    add-int/2addr v2, v0

    move v0, v3

    goto :goto_1

    .line 291
    .end local v3    # "currentParamNumber":I
    .restart local v0    # "currentParamNumber":I
    :cond_1
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "currentParamNumber":I
    .restart local v3    # "currentParamNumber":I
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v3

    goto :goto_1

    .line 295
    .end local v3    # "currentParamNumber":I
    .restart local v0    # "currentParamNumber":I
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x5c

    if-ne v3, v5, :cond_3

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_3

    .line 298
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 299
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 301
    :cond_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 278
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 305
    .end local v2    # "i":I
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getEncodedSize(Ljava/lang/String;)I
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .line 218
    const/4 v0, 0x3

    .line 219
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    mul-int v1, v1, v2

    add-int/2addr v0, v1

    .line 220
    return v0
.end method

.method public static getFromCompressedUnicode([BII)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .line 122
    array-length v0, p0

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 123
    .local v0, "len_to_use":I
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lorg/apache/poi/util/StringUtil;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, p1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public static getFromUnicodeLE([B)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # [B

    .line 94
    array-length v0, p0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 95
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    div-int/lit8 v1, v1, 0x2

    invoke-static {p0, v0, v1}, Lorg/apache/poi/util/StringUtil;->getFromUnicodeLE([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFromUnicodeLE([BII)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 73
    if-ltz p1, :cond_1

    array-length v0, p0

    if-ge p1, v0, :cond_1

    .line 76
    if-ltz p2, :cond_0

    array-length v0, p0

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    if-lt v0, p2, :cond_0

    .line 80
    new-instance v0, Ljava/lang/String;

    mul-int/lit8 v1, p2, 0x2

    sget-object v2, Lorg/apache/poi/util/StringUtil;->UTF16LE:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, p1, v1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (String data is of length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getPreferredEncoding()Ljava/lang/String;
    .locals 1

    .line 346
    sget-object v0, Lorg/apache/poi/util/StringUtil;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getToUnicodeLE(Ljava/lang/String;)[B
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .line 105
    sget-object v0, Lorg/apache/poi/util/StringUtil;->UTF16LE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public static hasMultibyte(Ljava/lang/String;)Z
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .line 356
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 357
    return v0

    .line 358
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 359
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 360
    .local v2, "c":C
    const/16 v3, 0xff

    if-le v2, v3, :cond_1

    .line 361
    const/4 v0, 0x1

    return v0

    .line 358
    .end local v2    # "c":C
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 364
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method private static declared-synchronized initMsCodepointMap()V
    .locals 9

    const-class v0, Lorg/apache/poi/util/StringUtil;

    monitor-enter v0

    .line 437
    :try_start_0
    sget-object v1, Lorg/apache/poi/util/StringUtil;->msCodepointToUnicode:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 438
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/apache/poi/util/StringUtil;->msCodepointToUnicode:Ljava/util/Map;

    .line 439
    const v1, 0xf020

    .line 440
    .local v1, "i":I
    sget-object v2, Lorg/apache/poi/util/StringUtil;->symbolMap_f020:[I

    .local v2, "arr$":[I
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_1

    aget v5, v2, v4

    .line 441
    .local v5, "ch":I
    sget-object v6, Lorg/apache/poi/util/StringUtil;->msCodepointToUnicode:Ljava/util/Map;

    add-int/lit8 v7, v1, 0x1

    .end local v1    # "i":I
    .local v7, "i":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    nop

    .end local v5    # "ch":I
    add-int/lit8 v4, v4, 0x1

    move v1, v7

    goto :goto_0

    .line 443
    .end local v2    # "arr$":[I
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    .end local v7    # "i":I
    .restart local v1    # "i":I
    :cond_1
    const v1, 0xf0a0

    .line 444
    sget-object v2, Lorg/apache/poi/util/StringUtil;->symbolMap_f0a0:[I

    .restart local v2    # "arr$":[I
    array-length v3, v2

    .restart local v3    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_1
    if-ge v4, v3, :cond_2

    aget v5, v2, v4

    .line 445
    .restart local v5    # "ch":I
    sget-object v6, Lorg/apache/poi/util/StringUtil;->msCodepointToUnicode:Ljava/util/Map;

    add-int/lit8 v7, v1, 0x1

    .end local v1    # "i":I
    .restart local v7    # "i":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 444
    nop

    .end local v5    # "ch":I
    add-int/lit8 v4, v4, 0x1

    move v1, v7

    goto :goto_1

    .line 447
    .end local v2    # "arr$":[I
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    .end local v7    # "i":I
    .restart local v1    # "i":I
    :cond_2
    monitor-exit v0

    return-void

    .line 436
    .end local v1    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isUnicodeString(Ljava/lang/String;)Z
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .line 374
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lorg/apache/poi/util/StringUtil;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sget-object v2, Lorg/apache/poi/util/StringUtil;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static declared-synchronized mapMsCodepoint(II)V
    .locals 4
    .param p0, "msCodepoint"    # I
    .param p1, "unicodeCodepoint"    # I

    const-class v0, Lorg/apache/poi/util/StringUtil;

    monitor-enter v0

    .line 432
    :try_start_0
    invoke-static {}, Lorg/apache/poi/util/StringUtil;->initMsCodepointMap()V

    .line 433
    sget-object v1, Lorg/apache/poi/util/StringUtil;->msCodepointToUnicode:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    monitor-exit v0

    return-void

    .line 431
    .end local p0    # "msCodepoint":I
    .end local p1    # "unicodeCodepoint":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static mapMsCodepointString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "string"    # Ljava/lang/String;

    .line 416
    if-eqz p0, :cond_3

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 417
    :cond_0
    invoke-static {}, Lorg/apache/poi/util/StringUtil;->initMsCodepointMap()V

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 421
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "offset":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 422
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 423
    .local v3, "msCodepoint":Ljava/lang/Integer;
    sget-object v4, Lorg/apache/poi/util/StringUtil;->msCodepointToUnicode:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 424
    .local v4, "uniCodepoint":Ljava/lang/Integer;
    if-nez v4, :cond_1

    move-object v5, v3

    goto :goto_1

    :cond_1
    move-object v5, v4

    :goto_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 425
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v2, v5

    .line 426
    .end local v3    # "msCodepoint":Ljava/lang/Integer;
    .end local v4    # "uniCodepoint":Ljava/lang/Integer;
    goto :goto_0

    .line 428
    .end local v2    # "offset":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 416
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "length":I
    :cond_3
    :goto_2
    return-object p0
.end method

.method private static matchOptionalFormatting(Ljava/lang/Number;Ljava/lang/String;Ljava/lang/StringBuffer;)I
    .locals 8
    .param p0, "number"    # Ljava/lang/Number;
    .param p1, "formatting"    # Ljava/lang/String;
    .param p2, "outputTo"    # Ljava/lang/StringBuffer;

    .line 313
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    .line 314
    .local v0, "numberFormat":Ljava/text/NumberFormat;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x2e

    const-string v3, ""

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v1, :cond_1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 318
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v4, v1, :cond_0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 323
    new-instance v1, Ljava/text/FieldPosition;

    invoke-direct {v1, v6}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {v0, p0, p2, v1}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 324
    const/4 v1, 0x3

    return v1

    .line 326
    :cond_0
    new-instance v1, Ljava/text/FieldPosition;

    invoke-direct {v1, v6}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {v0, p0, p2, v1}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 327
    return v5

    .line 328
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_2

    .line 330
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v5, v1, :cond_2

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 334
    new-instance v1, Ljava/text/FieldPosition;

    invoke-direct {v1, v6}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {v0, p0, p2, v1}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 335
    return v4

    .line 338
    :cond_2
    new-instance v1, Ljava/text/FieldPosition;

    invoke-direct {v1, v6}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {v0, p0, p2, v1}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 339
    return v5
.end method

.method public static putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 239
    sget-object v0, Lorg/apache/poi/util/StringUtil;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 240
    .local v0, "bytes":[B
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    .line 241
    return-void
.end method

.method public static putCompressedUnicode(Ljava/lang/String;[BI)V
    .locals 3
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "output"    # [B
    .param p2, "offset"    # I

    .line 234
    sget-object v0, Lorg/apache/poi/util/StringUtil;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 235
    .local v0, "bytes":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    return-void
.end method

.method public static putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 257
    sget-object v0, Lorg/apache/poi/util/StringUtil;->UTF16LE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 258
    .local v0, "bytes":[B
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    .line 259
    return-void
.end method

.method public static putUnicodeLE(Ljava/lang/String;[BI)V
    .locals 3
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "output"    # [B
    .param p2, "offset"    # I

    .line 253
    sget-object v0, Lorg/apache/poi/util/StringUtil;->UTF16LE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 254
    .local v0, "bytes":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    return-void
.end method

.method public static readCompressedUnicode(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;
    .locals 3
    .param p0, "in"    # Lorg/apache/poi/util/LittleEndianInput;
    .param p1, "nChars"    # I

    .line 127
    new-array v0, p1, [B

    .line 128
    .local v0, "buf":[B
    invoke-interface {p0, v0}, Lorg/apache/poi/util/LittleEndianInput;->readFully([B)V

    .line 129
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lorg/apache/poi/util/StringUtil;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public static readUnicodeLE(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;
    .locals 3
    .param p0, "in"    # Lorg/apache/poi/util/LittleEndianInput;
    .param p1, "nChars"    # I

    .line 262
    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [B

    .line 263
    .local v0, "bytes":[B
    invoke-interface {p0, v0}, Lorg/apache/poi/util/LittleEndianInput;->readFully([B)V

    .line 264
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lorg/apache/poi/util/StringUtil;->UTF16LE:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public static readUnicodeString(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/String;
    .locals 3
    .param p0, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 145
    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    .line 146
    .local v0, "nChars":I
    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v1

    .line 147
    .local v1, "flag":B
    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_0

    .line 148
    invoke-static {p0, v0}, Lorg/apache/poi/util/StringUtil;->readCompressedUnicode(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 150
    :cond_0
    invoke-static {p0, v0}, Lorg/apache/poi/util/StringUtil;->readUnicodeLE(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static readUnicodeString(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;
    .locals 2
    .param p0, "in"    # Lorg/apache/poi/util/LittleEndianInput;
    .param p1, "nChars"    # I

    .line 165
    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v0

    .line 166
    .local v0, "is16Bit":B
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_0

    .line 167
    invoke-static {p0, p1}, Lorg/apache/poi/util/StringUtil;->readCompressedUnicode(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 169
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/poi/util/StringUtil;->readUnicodeLE(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static writeUnicodeString(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/String;)V
    .locals 2
    .param p0, "out"    # Lorg/apache/poi/util/LittleEndianOutput;
    .param p1, "value"    # Ljava/lang/String;

    .line 182
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 183
    .local v0, "nChars":I
    invoke-interface {p0, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 184
    invoke-static {p1}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result v1

    .line 185
    .local v1, "is16Bit":Z
    invoke-interface {p0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 186
    if-eqz v1, :cond_0

    .line 187
    invoke-static {p1, p0}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_0

    .line 189
    :cond_0
    invoke-static {p1, p0}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 191
    :goto_0
    return-void
.end method

.method public static writeUnicodeStringFlagAndData(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/String;)V
    .locals 1
    .param p0, "out"    # Lorg/apache/poi/util/LittleEndianOutput;
    .param p1, "value"    # Ljava/lang/String;

    .line 205
    invoke-static {p1}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result v0

    .line 206
    .local v0, "is16Bit":Z
    invoke-interface {p0, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 207
    if-eqz v0, :cond_0

    .line 208
    invoke-static {p1, p0}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_0

    .line 210
    :cond_0
    invoke-static {p1, p0}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 212
    :goto_0
    return-void
.end method
