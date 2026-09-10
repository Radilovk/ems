.class public Lorg/apache/poi/hpsf/VariantSupport;
.super Lorg/apache/poi/hpsf/Variant;
.source "VariantSupport.java"


# static fields
.field public static final SUPPORTED_TYPES:[I

.field private static logUnsupportedTypes:Z

.field private static final logger:Lorg/apache/poi/util/POILogger;

.field protected static unsupportedMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lorg/apache/poi/hpsf/VariantSupport;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hpsf/VariantSupport;->logger:Lorg/apache/poi/util/POILogger;

    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lorg/apache/poi/hpsf/VariantSupport;->logUnsupportedTypes:Z

    .line 114
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/poi/hpsf/VariantSupport;->SUPPORTED_TYPES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x2
        0x3
        0x14
        0x5
        0x40
        0x1e
        0x1f
        0x47
        0xb
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lorg/apache/poi/hpsf/Variant;-><init>()V

    return-void
.end method

.method public static codepageToEncoding(I)Ljava/lang/String;
    .locals 1
    .param p0, "codepage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 279
    invoke-static {p0}, Lorg/apache/poi/util/CodePageUtil;->codepageToEncoding(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isLogUnsupportedTypes()Z
    .locals 1

    .line 76
    sget-boolean v0, Lorg/apache/poi/hpsf/VariantSupport;->logUnsupportedTypes:Z

    return v0
.end method

.method public static read([BIIJI)Ljava/lang/Object;
    .locals 7
    .param p0, "src"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "type"    # J
    .param p5, "codepage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/ReadingNotSupportedException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 162
    new-instance v0, Lorg/apache/poi/hpsf/TypedPropertyValue;

    long-to-int v1, p3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hpsf/TypedPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 167
    .local v0, "typedPropertyValue":Lorg/apache/poi/hpsf/TypedPropertyValue;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p0, p1}, Lorg/apache/poi/hpsf/TypedPropertyValue;->readValue([BI)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .local v2, "unpadded":I
    nop

    .line 177
    long-to-int v3, p3

    if-eqz v3, :cond_6

    const/4 v4, 0x5

    if-eq v3, v4, :cond_6

    const/16 v4, 0xb

    if-eq v3, v4, :cond_5

    const/16 v4, 0x14

    if-eq v3, v4, :cond_6

    const/16 v4, 0x40

    if-eq v3, v4, :cond_4

    const/16 v4, 0x47

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_6

    const/16 v4, 0x1e

    if-eq v3, v4, :cond_1

    const/16 v4, 0x1f

    if-ne v3, v4, :cond_0

    .line 214
    invoke-virtual {v0}, Lorg/apache/poi/hpsf/TypedPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hpsf/UnicodeString;

    .line 216
    .local v1, "string":Lorg/apache/poi/hpsf/UnicodeString;
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/UnicodeString;->toJavaString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 255
    .end local v1    # "string":Lorg/apache/poi/hpsf/UnicodeString;
    :cond_0
    new-array v3, v2, [B

    .line 256
    .local v3, "v":[B
    invoke-static {p0, p1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    new-instance v1, Lorg/apache/poi/hpsf/ReadingNotSupportedException;

    invoke-direct {v1, p3, p4, v3}, Lorg/apache/poi/hpsf/ReadingNotSupportedException;-><init>(JLjava/lang/Object;)V

    throw v1

    .line 208
    .end local v3    # "v":[B
    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/hpsf/TypedPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hpsf/CodePageString;

    .line 210
    .local v1, "string":Lorg/apache/poi/hpsf/CodePageString;
    invoke-virtual {v1, p5}, Lorg/apache/poi/hpsf/CodePageString;->getJavaValue(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 197
    .end local v1    # "string":Lorg/apache/poi/hpsf/CodePageString;
    :cond_2
    invoke-virtual {v0}, Lorg/apache/poi/hpsf/TypedPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 238
    :cond_3
    invoke-virtual {v0}, Lorg/apache/poi/hpsf/TypedPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hpsf/ClipboardData;

    .line 240
    .local v1, "clipboardData":Lorg/apache/poi/hpsf/ClipboardData;
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/ClipboardData;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 202
    .end local v1    # "clipboardData":Lorg/apache/poi/hpsf/ClipboardData;
    :cond_4
    invoke-virtual {v0}, Lorg/apache/poi/hpsf/TypedPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hpsf/Filetime;

    .line 203
    .local v1, "filetime":Lorg/apache/poi/hpsf/Filetime;
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/Filetime;->getHigh()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-virtual {v1}, Lorg/apache/poi/hpsf/Filetime;->getLow()J

    move-result-wide v5

    long-to-int v3, v5

    invoke-static {v4, v3}, Lorg/apache/poi/hpsf/Util;->filetimeToDate(II)Ljava/util/Date;

    move-result-object v3

    return-object v3

    .line 245
    .end local v1    # "filetime":Lorg/apache/poi/hpsf/Filetime;
    :cond_5
    invoke-virtual {v0}, Lorg/apache/poi/hpsf/TypedPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hpsf/VariantBool;

    .line 246
    .local v1, "bool":Lorg/apache/poi/hpsf/VariantBool;
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/VariantBool;->getValue()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    .line 189
    .end local v1    # "bool":Lorg/apache/poi/hpsf/VariantBool;
    :cond_6
    invoke-virtual {v0}, Lorg/apache/poi/hpsf/TypedPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 169
    .end local v2    # "unpadded":I
    :catch_0
    move-exception v2

    move v3, v1

    .line 171
    .local v2, "exc":Ljava/lang/UnsupportedOperationException;
    .local v3, "unpadded":I
    array-length v4, p0

    sub-int/2addr v4, p1

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 172
    .local v4, "propLength":I
    new-array v5, v4, [B

    .line 173
    .local v5, "v":[B
    invoke-static {p0, p1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    new-instance v1, Lorg/apache/poi/hpsf/ReadingNotSupportedException;

    invoke-direct {v1, p3, p4, v5}, Lorg/apache/poi/hpsf/ReadingNotSupportedException;-><init>(JLjava/lang/Object;)V

    throw v1
.end method

.method public static setLogUnsupportedTypes(Z)V
    .locals 0
    .param p0, "logUnsupportedTypes"    # Z

    .line 64
    sput-boolean p0, Lorg/apache/poi/hpsf/VariantSupport;->logUnsupportedTypes:Z

    .line 65
    return-void
.end method

.method public static write(Ljava/io/OutputStream;JLjava/lang/Object;I)I
    .locals 11
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "type"    # J
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "codepage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/hpsf/WritingNotSupportedException;
        }
    .end annotation

    .line 306
    const/4 v0, 0x0

    .line 307
    .local v0, "length":I
    long-to-int v1, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    const/4 v3, 0x5

    if-eq v1, v3, :cond_c

    const/16 v3, 0xb

    const/16 v4, 0xff

    const/4 v5, 0x2

    if-eq v1, v3, :cond_a

    const/16 v3, 0x14

    if-eq v1, v3, :cond_9

    const/16 v3, 0x40

    if-eq v1, v3, :cond_8

    const/16 v3, 0x47

    if-eq v1, v3, :cond_7

    if-eq v1, v5, :cond_6

    const/4 v3, 0x3

    if-eq v1, v3, :cond_4

    const/16 v3, 0x1e

    if-eq v1, v3, :cond_3

    const/16 v3, 0x1f

    if-eq v1, v3, :cond_1

    .line 407
    instance-of v1, p3, [B

    if-eqz v1, :cond_0

    .line 409
    move-object v1, p3

    check-cast v1, [B

    check-cast v1, [B

    .line 410
    .local v1, "b":[B
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 411
    array-length v0, v1

    .line 412
    new-instance v3, Lorg/apache/poi/hpsf/WritingNotSupportedException;

    invoke-direct {v3, p1, p2, p3}, Lorg/apache/poi/hpsf/WritingNotSupportedException;-><init>(JLjava/lang/Object;)V

    invoke-static {v3}, Lorg/apache/poi/hpsf/VariantSupport;->writeUnsupportedTypeMessage(Lorg/apache/poi/hpsf/UnsupportedVariantTypeException;)V

    .line 414
    .end local v1    # "b":[B
    goto/16 :goto_2

    .line 416
    :cond_0
    new-instance v1, Lorg/apache/poi/hpsf/WritingNotSupportedException;

    invoke-direct {v1, p1, p2, p3}, Lorg/apache/poi/hpsf/WritingNotSupportedException;-><init>(JLjava/lang/Object;)V

    throw v1

    .line 333
    :cond_1
    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 334
    .local v1, "nrOfChars":I
    int-to-long v6, v1

    invoke-static {p0, v6, v7}, Lorg/apache/poi/hpsf/TypeWriter;->writeUIntToStream(Ljava/io/OutputStream;J)I

    move-result v3

    add-int/2addr v0, v3

    .line 335
    move-object v3, p3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 336
    .local v3, "s":[C
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v3

    if-ge v6, v7, :cond_2

    .line 338
    aget-char v7, v3, v6

    const v8, 0xff00

    and-int/2addr v7, v8

    shr-int/lit8 v7, v7, 0x8

    .line 339
    .local v7, "high":I
    aget-char v8, v3, v6

    and-int/2addr v8, v4

    .line 340
    .local v8, "low":I
    int-to-byte v9, v7

    .line 341
    .local v9, "highb":B
    int-to-byte v10, v8

    .line 342
    .local v10, "lowb":B
    invoke-virtual {p0, v10}, Ljava/io/OutputStream;->write(I)V

    .line 343
    invoke-virtual {p0, v9}, Ljava/io/OutputStream;->write(I)V

    .line 344
    nop

    .end local v7    # "high":I
    .end local v8    # "low":I
    .end local v9    # "highb":B
    .end local v10    # "lowb":B
    add-int/lit8 v0, v0, 0x2

    .line 336
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 347
    .end local v6    # "i":I
    :cond_2
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 348
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 349
    add-int/2addr v0, v5

    .line 350
    goto/16 :goto_2

    .line 326
    .end local v1    # "nrOfChars":I
    .end local v3    # "s":[C
    :cond_3
    new-instance v1, Lorg/apache/poi/hpsf/CodePageString;

    move-object v3, p3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v1, v3, p4}, Lorg/apache/poi/hpsf/CodePageString;-><init>(Ljava/lang/String;I)V

    .line 328
    .local v1, "codePageString":Lorg/apache/poi/hpsf/CodePageString;
    invoke-virtual {v1, p0}, Lorg/apache/poi/hpsf/CodePageString;->write(Ljava/io/OutputStream;)I

    move-result v3

    add-int/2addr v0, v3

    .line 329
    goto/16 :goto_2

    .line 372
    .end local v1    # "codePageString":Lorg/apache/poi/hpsf/CodePageString;
    :cond_4
    instance-of v1, p3, Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 379
    move-object v1, p3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v1}, Lorg/apache/poi/hpsf/TypeWriter;->writeToStream(Ljava/io/OutputStream;I)I

    move-result v1

    add-int/2addr v0, v1

    .line 381
    goto/16 :goto_2

    .line 374
    :cond_5
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not cast an object to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 366
    :cond_6
    move-object v1, p3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->shortValue()S

    move-result v1

    invoke-static {p0, v1}, Lorg/apache/poi/hpsf/TypeWriter;->writeToStream(Ljava/io/OutputStream;S)I

    move-result v1

    add-int/2addr v0, v1

    .line 368
    goto :goto_2

    .line 354
    :cond_7
    move-object v1, p3

    check-cast v1, [B

    check-cast v1, [B

    .line 355
    .local v1, "b":[B
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 356
    array-length v0, v1

    .line 357
    goto :goto_2

    .line 396
    .end local v1    # "b":[B
    :cond_8
    move-object v1, p3

    check-cast v1, Ljava/util/Date;

    invoke-static {v1}, Lorg/apache/poi/hpsf/Util;->dateToFileTime(Ljava/util/Date;)J

    move-result-wide v3

    .line 397
    .local v3, "filetime":J
    const/16 v1, 0x20

    shr-long v5, v3, v1

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    long-to-int v1, v5

    .line 398
    .local v1, "high":I
    and-long v5, v3, v7

    long-to-int v6, v5

    .line 399
    .local v6, "low":I
    new-instance v5, Lorg/apache/poi/hpsf/Filetime;

    invoke-direct {v5, v6, v1}, Lorg/apache/poi/hpsf/Filetime;-><init>(II)V

    .line 400
    .local v5, "filetimeValue":Lorg/apache/poi/hpsf/Filetime;
    invoke-virtual {v5, p0}, Lorg/apache/poi/hpsf/Filetime;->write(Ljava/io/OutputStream;)I

    move-result v7

    add-int/2addr v0, v7

    .line 401
    goto :goto_2

    .line 385
    .end local v1    # "high":I
    .end local v3    # "filetime":J
    .end local v5    # "filetimeValue":Lorg/apache/poi/hpsf/Filetime;
    .end local v6    # "low":I
    :cond_9
    move-object v1, p3

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {p0, v3, v4}, Lorg/apache/poi/hpsf/TypeWriter;->writeToStream(Ljava/io/OutputStream;J)I

    move-result v1

    add-int/2addr v0, v1

    .line 386
    goto :goto_2

    .line 311
    :cond_a
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 313
    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write(I)V

    .line 314
    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 318
    :cond_b
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 319
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 321
    :goto_1
    add-int/2addr v0, v5

    .line 322
    goto :goto_2

    .line 390
    :cond_c
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {p0, v3, v4}, Lorg/apache/poi/hpsf/TypeWriter;->writeToStream(Ljava/io/OutputStream;D)I

    move-result v1

    add-int/2addr v0, v1

    .line 392
    goto :goto_2

    .line 361
    :cond_d
    const-wide/16 v3, 0x0

    invoke-static {p0, v3, v4}, Lorg/apache/poi/hpsf/TypeWriter;->writeUIntToStream(Ljava/io/OutputStream;J)I

    move-result v1

    add-int/2addr v0, v1

    .line 362
    nop

    .line 422
    :goto_2
    and-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_e

    .line 424
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 425
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 428
    :cond_e
    return v0
.end method

.method protected static writeUnsupportedTypeMessage(Lorg/apache/poi/hpsf/UnsupportedVariantTypeException;)V
    .locals 4
    .param p0, "ex"    # Lorg/apache/poi/hpsf/UnsupportedVariantTypeException;

    .line 97
    invoke-static {}, Lorg/apache/poi/hpsf/VariantSupport;->isLogUnsupportedTypes()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    sget-object v0, Lorg/apache/poi/hpsf/VariantSupport;->unsupportedMessage:Ljava/util/List;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lorg/apache/poi/hpsf/VariantSupport;->unsupportedMessage:Ljava/util/List;

    .line 101
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/UnsupportedVariantTypeException;->getVariantType()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 102
    .local v0, "vt":Ljava/lang/Long;
    sget-object v1, Lorg/apache/poi/hpsf/VariantSupport;->unsupportedMessage:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 104
    sget-object v1, Lorg/apache/poi/hpsf/VariantSupport;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x7

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/UnsupportedVariantTypeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 105
    sget-object v1, Lorg/apache/poi/hpsf/VariantSupport;->unsupportedMessage:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    .end local v0    # "vt":Ljava/lang/Long;
    :cond_1
    return-void
.end method


# virtual methods
.method public isSupportedType(I)Z
    .locals 3
    .param p1, "variantType"    # I

    .line 133
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lorg/apache/poi/hpsf/VariantSupport;->SUPPORTED_TYPES:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 134
    aget v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 135
    const/4 v1, 0x1

    return v1

    .line 133
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
