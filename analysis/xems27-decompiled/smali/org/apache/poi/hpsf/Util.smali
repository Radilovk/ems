.class public Lorg/apache/poi/hpsf/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final EPOCH_DIFF:J = 0xa9730b66800L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cat([[B)[B
    .locals 7
    .param p0, "byteArrays"    # [[B

    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "capacity":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 97
    aget-object v2, p0, v1

    array-length v2, v2

    add-int/2addr v0, v2

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    .end local v1    # "i":I
    :cond_0
    new-array v1, v0, [B

    .line 99
    .local v1, "result":[B
    const/4 v2, 0x0

    .line 100
    .local v2, "r":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, p0

    if-ge v3, v4, :cond_2

    .line 101
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    aget-object v5, p0, v3

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 102
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "r":I
    .local v5, "r":I
    aget-object v6, p0, v3

    aget-byte v6, v6, v4

    aput-byte v6, v1, v2

    .line 101
    add-int/lit8 v4, v4, 0x1

    move v2, v5

    goto :goto_2

    .line 100
    .end local v4    # "j":I
    .end local v5    # "r":I
    .restart local v2    # "r":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 103
    .end local v3    # "i":I
    :cond_2
    return-object v1
.end method

.method public static copy([BII[BI)V
    .locals 3
    .param p0, "src"    # [B
    .param p1, "srcOffset"    # I
    .param p2, "length"    # I
    .param p3, "dst"    # [B
    .param p4, "dstOffset"    # I

    .line 79
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 80
    add-int v1, p4, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    aput-byte v2, p3, v1

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static copy([BII)[B
    .locals 2
    .param p0, "src"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 120
    new-array v0, p2, [B

    .line 121
    .local v0, "result":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/poi/hpsf/Util;->copy([BII[BI)V

    .line 122
    return-object v0
.end method

.method public static dateToFileTime(Ljava/util/Date;)J
    .locals 6
    .param p0, "date"    # Ljava/util/Date;

    .line 186
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 187
    .local v0, "ms_since_19700101":J
    const-wide v2, 0xa9730b66800L

    add-long/2addr v2, v0

    .line 188
    .local v2, "ms_since_16010101":J
    const-wide/16 v4, 0x2710

    mul-long v4, v4, v2

    return-wide v4
.end method

.method public static equal([B[B)Z
    .locals 4
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .line 56
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 57
    return v2

    .line 58
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 59
    aget-byte v1, p0, v0

    aget-byte v3, p1, v0

    if-eq v1, v3, :cond_1

    .line 60
    return v2

    .line 58
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static equals(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 216
    .local p0, "c1":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .local p1, "c2":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 217
    .local v0, "o1":[Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 218
    .local v1, "o2":[Ljava/lang/Object;
    invoke-static {v0, v1}, Lorg/apache/poi/hpsf/Util;->internalEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 3
    .param p0, "c1"    # [Ljava/lang/Object;
    .param p1, "c2"    # [Ljava/lang/Object;

    .line 234
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 235
    .local v0, "o1":[Ljava/lang/Object;
    invoke-virtual {p1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 236
    .local v1, "o2":[Ljava/lang/Object;
    invoke-static {v0, v1}, Lorg/apache/poi/hpsf/Util;->internalEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static filetimeToDate(II)Ljava/util/Date;
    .locals 6
    .param p0, "high"    # I
    .param p1, "low"    # I

    .line 152
    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 153
    .local v0, "filetime":J
    invoke-static {v0, v1}, Lorg/apache/poi/hpsf/Util;->filetimeToDate(J)Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public static filetimeToDate(J)Ljava/util/Date;
    .locals 5
    .param p0, "filetime"    # J

    .line 168
    const-wide/16 v0, 0x2710

    div-long v0, p0, v0

    .line 169
    .local v0, "ms_since_16010101":J
    const-wide v2, 0xa9730b66800L

    sub-long v2, v0, v2

    .line 170
    .local v2, "ms_since_19700101":J
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v4
.end method

.method private static internalEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 6
    .param p0, "o1"    # [Ljava/lang/Object;
    .param p1, "o2"    # [Ljava/lang/Object;

    .line 241
    const/4 v0, 0x0

    .local v0, "i1":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 243
    aget-object v1, p0, v0

    .line 244
    .local v1, "obj1":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 245
    .local v2, "matchFound":Z
    const/4 v3, 0x0

    .local v3, "i2":I
    :goto_1
    if-nez v2, :cond_1

    array-length v4, p0

    if-ge v3, v4, :cond_1

    .line 247
    aget-object v4, p1, v3

    .line 248
    .local v4, "obj2":Ljava/lang/Object;
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 250
    const/4 v2, 0x1

    .line 251
    const/4 v5, 0x0

    aput-object v5, p1, v3

    .line 245
    .end local v4    # "obj2":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 254
    .end local v3    # "i2":I
    :cond_1
    if-nez v2, :cond_2

    .line 255
    const/4 v3, 0x0

    return v3

    .line 241
    .end local v1    # "obj1":Ljava/lang/Object;
    .end local v2    # "matchFound":Z
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    .end local v0    # "i1":I
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public static pad4([B)[B
    .locals 5
    .param p0, "ba"    # [B

    .line 271
    const/4 v0, 0x4

    .line 273
    .local v0, "PAD":I
    array-length v1, p0

    rem-int/lit8 v1, v1, 0x4

    .line 274
    .local v1, "l":I
    if-nez v1, :cond_0

    .line 275
    move-object v2, p0

    .local v2, "result":[B
    goto :goto_0

    .line 278
    .end local v2    # "result":[B
    :cond_0
    rsub-int/lit8 v1, v1, 0x4

    .line 279
    array-length v2, p0

    add-int/2addr v2, v1

    new-array v2, v2, [B

    .line 280
    .restart local v2    # "result":[B
    array-length v3, p0

    const/4 v4, 0x0

    invoke-static {p0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 282
    :goto_0
    return-object v2
.end method

.method public static pad4(Ljava/lang/String;)[C
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 321
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/hpsf/Util;->pad4([C)[C

    move-result-object v0

    return-object v0
.end method

.method public static pad4([C)[C
    .locals 5
    .param p0, "ca"    # [C

    .line 296
    const/4 v0, 0x4

    .line 298
    .local v0, "PAD":I
    array-length v1, p0

    rem-int/lit8 v1, v1, 0x4

    .line 299
    .local v1, "l":I
    if-nez v1, :cond_0

    .line 300
    move-object v2, p0

    .local v2, "result":[C
    goto :goto_0

    .line 303
    .end local v2    # "result":[C
    :cond_0
    rsub-int/lit8 v1, v1, 0x4

    .line 304
    array-length v2, p0

    add-int/2addr v2, v1

    new-array v2, v2, [C

    .line 305
    .restart local v2    # "result":[C
    array-length v3, p0

    const/4 v4, 0x0

    invoke-static {p0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 307
    :goto_0
    return-object v2
.end method

.method public static toString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 337
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 338
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 339
    .local v1, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 340
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 343
    :try_start_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->close()V

    .line 344
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 346
    :catch_0
    move-exception v2

    .line 348
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 349
    .local v3, "b":Ljava/lang/StringBuffer;
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 350
    const-string v4, "Could not create a stacktrace. Reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 351
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 352
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
