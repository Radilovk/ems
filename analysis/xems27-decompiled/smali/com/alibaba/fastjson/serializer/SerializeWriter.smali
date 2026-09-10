.class public final Lcom/alibaba/fastjson/serializer/SerializeWriter;
.super Ljava/io/Writer;
.source "SerializeWriter.java"


# static fields
.field private static final bufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[C>;"
        }
    .end annotation
.end field

.field private static final bytesBufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[B>;"
        }
    .end annotation
.end field

.field static final nonDirectFeatures:I


# instance fields
.field protected beanToArray:Z

.field protected browserSecure:Z

.field protected buf:[C

.field protected count:I

.field protected disableCircularReferenceDetect:Z

.field protected features:I

.field protected keySeperator:C

.field protected maxBufSize:I

.field protected notWriteDefaultValue:Z

.field protected quoteFieldNames:Z

.field protected sepcialBits:J

.field protected sortField:Z

.field protected useSingleQuotes:Z

.field protected writeDirect:Z

.field protected writeEnumUsingName:Z

.field protected writeEnumUsingToString:Z

.field protected writeNonStringValueAsString:Z

.field private final writer:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    .line 37
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bytesBufLocal:Ljava/lang/ThreadLocal;

    .line 157
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/lit8 v0, v0, 0x0

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->IgnoreErrorGetter:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sput v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->nonDirectFeatures:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 69
    const/4 v0, 0x0

    check-cast v0, Ljava/io/Writer;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;)V

    .line 70
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialSize"    # I

    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I)V

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;

    .line 73
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->EMPTY:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I)V
    .locals 3
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "initialSize"    # I

    .line 130
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->maxBufSize:I

    .line 131
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    .line 133
    if-lez p2, :cond_0

    .line 136
    new-array v0, p2, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 138
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->computeFeatures()V

    .line 139
    return-void

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative initial size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs constructor <init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 5
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "defaultFeatures"    # I
    .param p3, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 90
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->maxBufSize:I

    .line 91
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    .line 93
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 95
    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 98
    :cond_0
    const/16 v0, 0x800

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 101
    :goto_0
    move v0, p2

    .line 102
    .local v0, "featuresValue":I
    array-length v1, p3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, p3, v2

    .line 103
    .local v3, "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    invoke-virtual {v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v4

    or-int/2addr v0, v4

    .line 102
    .end local v3    # "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 105
    :cond_1
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 107
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->computeFeatures()V

    .line 108
    return-void
.end method

.method public varargs constructor <init>(Ljava/io/Writer;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 82
    return-void
.end method

.method public varargs constructor <init>([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 1
    .param p1, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 78
    return-void
.end method

.method private encodeToUTF8(Ljava/io/OutputStream;)I
    .locals 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 424
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 425
    .local v0, "bytesLength":I
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bytesBufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 427
    .local v1, "bytes":[B
    if-nez v1, :cond_0

    .line 428
    const/16 v2, 0x2000

    new-array v1, v2, [B

    .line 429
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bytesBufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 432
    :cond_0
    array-length v2, v1

    if-ge v2, v0, :cond_1

    .line 433
    new-array v1, v0, [B

    .line 436
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v1}, Lcom/alibaba/fastjson/util/IOUtils;->encodeUTF8([CII[B)I

    move-result v2

    .line 437
    .local v2, "position":I
    invoke-virtual {p1, v1, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 438
    return v2
.end method

.method private encodeToUTF8Bytes()[B
    .locals 5

    .line 442
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 443
    .local v0, "bytesLength":I
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bytesBufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 445
    .local v1, "bytes":[B
    if-nez v1, :cond_0

    .line 446
    const/16 v2, 0x2000

    new-array v1, v2, [B

    .line 447
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bytesBufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 450
    :cond_0
    array-length v2, v1

    if-ge v2, v0, :cond_1

    .line 451
    new-array v1, v0, [B

    .line 454
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v1}, Lcom/alibaba/fastjson/util/IOUtils;->encodeUTF8([CII[B)I

    move-result v2

    .line 455
    .local v2, "position":I
    new-array v3, v2, [B

    .line 456
    .local v3, "copy":[B
    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 457
    return-object v3
.end method

.method private writeEnumFieldValue(CLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 2083
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v0, :cond_0

    .line 2084
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2086
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValueStringWithDoubleQuote(CLjava/lang/String;Ljava/lang/String;)V

    .line 2088
    :goto_0
    return-void
.end method

.method private writeKeyWithSingleQuoteIfHasSpecial(Ljava/lang/String;)V
    .locals 17
    .param p1, "text"    # Ljava/lang/String;

    .line 2334
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    .line 2336
    .local v2, "specicalFlags_singleQuotes":[B
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 2337
    .local v3, "len":I
    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v4, v3

    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 2338
    .local v4, "newcount":I
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v6, v6

    const/16 v7, 0x5c

    const/16 v8, 0x3a

    const/16 v9, 0x27

    if-le v4, v6, :cond_8

    .line 2339
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v6, :cond_7

    .line 2340
    if-nez v3, :cond_0

    .line 2341
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2342
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2343
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2344
    return-void

    .line 2347
    :cond_0
    const/4 v5, 0x0

    .line 2348
    .local v5, "hasSpecial":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_2

    .line 2349
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 2350
    .local v10, "ch":C
    array-length v11, v2

    if-ge v10, v11, :cond_1

    aget-byte v11, v2, v10

    if-eqz v11, :cond_1

    .line 2351
    const/4 v5, 0x1

    .line 2352
    goto :goto_1

    .line 2348
    .end local v10    # "ch":C
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2356
    .end local v6    # "i":I
    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    .line 2357
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2359
    :cond_3
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    if-ge v6, v3, :cond_5

    .line 2360
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 2361
    .restart local v10    # "ch":C
    array-length v11, v2

    if-ge v10, v11, :cond_4

    aget-byte v11, v2, v10

    if-eqz v11, :cond_4

    .line 2362
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2363
    sget-object v11, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v11, v11, v10

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_3

    .line 2365
    :cond_4
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2359
    .end local v10    # "ch":C
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2368
    .end local v6    # "i":I
    :cond_5
    if-eqz v5, :cond_6

    .line 2369
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2371
    :cond_6
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2372
    return-void

    .line 2375
    .end local v5    # "hasSpecial":Z
    :cond_7
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 2378
    :cond_8
    if-nez v3, :cond_a

    .line 2379
    iget v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v6, v5, 0x3

    .line 2380
    .local v6, "newCount":I
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v7, v7

    if-le v6, v7, :cond_9

    .line 2381
    add-int/lit8 v5, v5, 0x3

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 2383
    :cond_9
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v10, v7, 0x1

    iput v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v9, v5, v7

    .line 2384
    add-int/lit8 v7, v10, 0x1

    iput v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v9, v5, v10

    .line 2385
    add-int/lit8 v9, v7, 0x1

    iput v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v8, v5, v7

    .line 2386
    return-void

    .line 2389
    .end local v6    # "newCount":I
    :cond_a
    iget v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2390
    .local v6, "start":I
    add-int v10, v6, v3

    .line 2392
    .local v10, "end":I
    iget-object v11, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v12, 0x0

    invoke-virtual {v1, v12, v3, v11, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 2393
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2395
    const/4 v11, 0x0

    .line 2397
    .local v11, "hasSpecial":Z
    move v13, v6

    .local v13, "i":I
    :goto_4
    if-ge v13, v10, :cond_f

    .line 2398
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v15, v14, v13

    .line 2399
    .local v15, "ch":C
    array-length v8, v2

    if-ge v15, v8, :cond_e

    aget-byte v8, v2, v15

    if-eqz v8, :cond_e

    .line 2400
    if-nez v11, :cond_c

    .line 2401
    add-int/lit8 v4, v4, 0x3

    .line 2402
    array-length v8, v14

    if-le v4, v8, :cond_b

    .line 2403
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 2405
    :cond_b
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2407
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v14, v13, 0x1

    add-int/lit8 v7, v13, 0x3

    sub-int v16, v10, v13

    add-int/lit8 v9, v16, -0x1

    invoke-static {v8, v14, v8, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2408
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v7, v12, v7, v5, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2409
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v8, 0x27

    aput-char v8, v7, v6

    .line 2410
    add-int/lit8 v13, v13, 0x1

    const/16 v8, 0x5c

    aput-char v8, v7, v13

    .line 2411
    add-int/2addr v13, v5

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v8, v8, v15

    aput-char v8, v7, v13

    .line 2412
    add-int/lit8 v10, v10, 0x2

    .line 2413
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v8, v8, -0x2

    const/16 v9, 0x27

    aput-char v9, v7, v8

    .line 2415
    const/4 v7, 0x1

    move v11, v7

    const/16 v8, 0x5c

    .end local v11    # "hasSpecial":Z
    .local v7, "hasSpecial":Z
    goto :goto_5

    .line 2417
    .end local v7    # "hasSpecial":Z
    .restart local v11    # "hasSpecial":Z
    :cond_c
    add-int/lit8 v4, v4, 0x1

    .line 2418
    array-length v7, v14

    if-le v4, v7, :cond_d

    .line 2419
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 2421
    :cond_d
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2423
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v13, 0x1

    add-int/lit8 v14, v13, 0x2

    sub-int v9, v10, v13

    invoke-static {v7, v8, v7, v14, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2424
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v8, 0x5c

    aput-char v8, v7, v13

    .line 2425
    add-int/lit8 v13, v13, 0x1

    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v9, v9, v15

    aput-char v9, v7, v13

    .line 2426
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 2399
    :cond_e
    const/16 v8, 0x5c

    .line 2397
    .end local v15    # "ch":C
    :goto_5
    add-int/2addr v13, v5

    const/16 v7, 0x5c

    const/16 v8, 0x3a

    const/16 v9, 0x27

    goto :goto_4

    .line 2431
    .end local v13    # "i":I
    :cond_f
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v4, -0x1

    const/16 v8, 0x3a

    aput-char v8, v5, v7

    .line 2432
    return-void
.end method


# virtual methods
.method public append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .locals 0
    .param p1, "c"    # C

    .line 308
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 309
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .locals 3
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .line 296
    if-nez p1, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "s":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    .line 298
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .locals 3
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 302
    if-nez p1, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-interface {v0, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    .line 304
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/io/Writer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 3

    .line 473
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    if-lez v0, :cond_0

    .line 474
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v0

    const/high16 v2, 0x20000

    if-gt v1, v2, :cond_1

    .line 477
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 480
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 481
    return-void
.end method

.method protected computeFeatures()V
    .locals 8

    .line 169
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    .line 170
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    .line 171
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sortField:Z

    .line 172
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->disableCircularReferenceDetect:Z

    .line 173
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->beanToArray:Z

    .line 174
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNonStringValueAsString:Z

    .line 175
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->notWriteDefaultValue:Z

    .line 176
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    :goto_7
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingName:Z

    .line 177
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingToString:Z

    .line 179
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget v3, Lcom/alibaba/fastjson/serializer/SerializeWriter;->nonDirectFeatures:I

    and-int/2addr v0, v3

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->beanToArray:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingName:Z

    if-eqz v0, :cond_a

    :cond_9
    const/4 v0, 0x1

    goto :goto_9

    :cond_a
    const/4 v0, 0x0

    :goto_9
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeDirect:Z

    .line 184
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v0, :cond_b

    const/16 v0, 0x27

    goto :goto_a

    :cond_b
    const/16 v0, 0x22

    :goto_a
    iput-char v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    .line 186
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_c

    goto :goto_b

    :cond_c
    const/4 v1, 0x0

    :goto_b
    iput-boolean v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->browserSecure:Z

    .line 188
    const-wide v2, 0x4ffffffffL

    .local v2, "S0":J
    const-wide v4, 0x8004ffffffffL

    .local v4, "S1":J
    const-wide v6, 0x50000304ffffffffL    # 2.3175490007226655E77

    .line 203
    .local v6, "S2":J
    if-eqz v1, :cond_d

    const-wide v0, 0x50000304ffffffffL    # 2.3175490007226655E77

    goto :goto_c

    :cond_d
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_e

    const-wide v0, 0x8004ffffffffL

    goto :goto_c

    :cond_e
    const-wide v0, 0x4ffffffffL

    :goto_c
    iput-wide v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sepcialBits:J

    .line 206
    return-void
.end method

.method public config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    .locals 2
    .param p1, "feature"    # Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .param p2, "state"    # Z

    .line 142
    if-eqz p2, :cond_1

    .line 143
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 145
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne p1, v0, :cond_0

    .line 146
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    goto :goto_0

    .line 147
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne p1, v0, :cond_2

    .line 148
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    goto :goto_0

    .line 151
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 154
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->computeFeatures()V

    .line 155
    return-void
.end method

.method public expandCapacity(I)V
    .locals 5
    .param p1, "minimumCapacity"    # I

    .line 281
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->maxBufSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serialize exceeded MAX_OUTPUT_LENGTH="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->maxBufSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", minimumCapacity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v0

    array-length v0, v0

    shr-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    .line 287
    .local v1, "newCapacity":I
    if-ge v1, p1, :cond_2

    .line 288
    move v1, p1

    .line 290
    :cond_2
    new-array v0, v1, [C

    .line 291
    .local v0, "newValue":[C
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 293
    return-void
.end method

.method public flush()V
    .locals 4

    .line 2435
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 2436
    return-void

    .line 2440
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    .line 2441
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2444
    nop

    .line 2445
    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2446
    return-void

    .line 2442
    :catch_0
    move-exception v0

    .line 2443
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getBufferLength()I
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    return v0
.end method

.method public getMaxBufSize()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->maxBufSize:I

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "feature"    # I

    .line 221
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
    .locals 2
    .param p1, "feature"    # Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 217
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    iget v1, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNotWriteDefaultValue()Z
    .locals 1

    .line 213
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->notWriteDefaultValue:Z

    return v0
.end method

.method public isSortField()Z
    .locals 1

    .line 209
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sortField:Z

    return v0
.end method

.method public setMaxBufSize(I)V
    .locals 3
    .param p1, "maxBufSize"    # I

    .line 115
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 119
    iput p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->maxBufSize:I

    .line 120
    return-void

    .line 116
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "must > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 461
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return v0
.end method

.method public toBytes(Ljava/lang/String;)[B
    .locals 1
    .param p1, "charsetName"    # Ljava/lang/String;

    .line 405
    if-eqz p1, :cond_1

    const-string v0, "UTF-8"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 407
    :cond_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_1

    .line 405
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public toBytes(Ljava/nio/charset/Charset;)[B
    .locals 4
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 411
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_1

    .line 415
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    if-ne p1, v0, :cond_0

    .line 416
    invoke-direct {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->encodeToUTF8Bytes()[B

    move-result-object v0

    return-object v0

    .line 418
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0

    .line 412
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "writer not null"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toCharArray()[C
    .locals 4

    .line 381
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 385
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    new-array v1, v0, [C

    .line 386
    .local v1, "newValue":[C
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    return-object v1

    .line 382
    .end local v1    # "newValue":[C
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "writer not null"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toCharArrayForSpringWebSocket()[C
    .locals 5

    .line 395
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 399
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v0, -0x2

    new-array v1, v1, [C

    .line 400
    .local v1, "newValue":[C
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v3, 0x1

    const/4 v4, 0x0

    add-int/lit8 v0, v0, -0x2

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 401
    return-object v1

    .line 396
    .end local v1    # "newValue":[C
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "writer not null"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 465
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public write(I)V
    .locals 4
    .param p1, "c"    # I

    .line 228
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, v0, 0x1

    .line 229
    .local v0, "newcount":I
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 230
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_0

    .line 231
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 234
    const/4 v0, 0x1

    .line 237
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    int-to-char v3, p1

    aput-char v3, v1, v2

    .line 238
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 239
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 484
    if-nez p1, :cond_0

    .line 485
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 486
    return-void

    .line 489
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    .line 490
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 5
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 320
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, p3

    .line 321
    .local v0, "newcount":I
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 322
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_0

    .line 323
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_0

    .line 326
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v1

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v2, v3

    .line 327
    .local v2, "rest":I
    add-int v4, p2, v2

    invoke-virtual {p1, p2, v4, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 328
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 329
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 330
    sub-int/2addr p3, v2

    .line 331
    add-int/2addr p2, v2

    .line 332
    .end local v2    # "rest":I
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-gt p3, v1, :cond_0

    .line 333
    move v0, p3

    .line 336
    :cond_1
    :goto_0
    add-int v1, p2, p3

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {p1, p2, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 337
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 338
    return-void
.end method

.method public write(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1552
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1553
    const-string v0, "[]"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 1554
    return-void

    .line 1557
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1558
    .local v0, "offset":I
    move v1, v0

    .line 1559
    .local v1, "initOffset":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "list_size":I
    :goto_0
    const/16 v4, 0x5d

    if-ge v2, v3, :cond_d

    .line 1560
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1562
    .local v5, "text":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1563
    .local v6, "hasSpecial":Z
    const/4 v7, 0x0

    const/16 v8, 0x22

    const/4 v9, 0x1

    if-nez v5, :cond_1

    .line 1564
    const/4 v6, 0x1

    goto :goto_4

    .line 1566
    :cond_1
    const/4 v10, 0x0

    .local v10, "j":I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    .local v11, "len":I
    :goto_1
    if-ge v10, v11, :cond_5

    .line 1567
    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 1568
    .local v12, "ch":C
    const/16 v13, 0x20

    if-lt v12, v13, :cond_3

    const/16 v13, 0x7e

    if-gt v12, v13, :cond_3

    if-eq v12, v8, :cond_3

    const/16 v13, 0x5c

    if-ne v12, v13, :cond_2

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v13, 0x1

    :goto_3
    move v6, v13

    if-eqz v13, :cond_4

    .line 1572
    goto :goto_4

    .line 1566
    .end local v12    # "ch":C
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1577
    .end local v10    # "j":I
    .end local v11    # "len":I
    :cond_5
    :goto_4
    const/16 v10, 0x2c

    const/16 v11, 0x5b

    if-eqz v6, :cond_9

    .line 1578
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1579
    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1580
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_8

    .line 1581
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v5, v9

    check-cast v5, Ljava/lang/String;

    .line 1582
    if-eqz v8, :cond_6

    .line 1583
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1586
    :cond_6
    if-nez v5, :cond_7

    .line 1587
    const-string v9, "null"

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_6

    .line 1589
    :cond_7
    invoke-virtual {p0, v5, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 1580
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 1592
    .end local v8    # "j":I
    :cond_8
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1593
    return-void

    .line 1596
    :cond_9
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x3

    .line 1597
    .local v4, "newcount":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v9

    if-ne v2, v12, :cond_a

    .line 1598
    add-int/lit8 v4, v4, 0x1

    .line 1600
    :cond_a
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v9, v9

    if-le v4, v9, :cond_b

    .line 1601
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1602
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1605
    :cond_b
    if-nez v2, :cond_c

    .line 1606
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v0, 0x1

    .end local v0    # "offset":I
    .local v10, "offset":I
    aput-char v11, v9, v0

    goto :goto_7

    .line 1608
    .end local v10    # "offset":I
    .restart local v0    # "offset":I
    :cond_c
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, v0, 0x1

    .end local v0    # "offset":I
    .local v11, "offset":I
    aput-char v10, v9, v0

    move v10, v11

    .line 1610
    .end local v11    # "offset":I
    .restart local v10    # "offset":I
    :goto_7
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "offset":I
    .local v9, "offset":I
    aput-char v8, v0, v10

    .line 1611
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {v5, v7, v0, v10, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 1612
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v9, v0

    .line 1613
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v9, 0x1

    .end local v9    # "offset":I
    .local v7, "offset":I
    aput-char v8, v0, v9

    .line 1559
    .end local v4    # "newcount":I
    .end local v5    # "text":Ljava/lang/String;
    .end local v6    # "hasSpecial":Z
    add-int/lit8 v2, v2, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 1615
    .end local v2    # "i":I
    .end local v3    # "list_size":I
    .end local v7    # "offset":I
    .restart local v0    # "offset":I
    :cond_d
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "offset":I
    .local v3, "offset":I
    aput-char v4, v2, v0

    .line 1616
    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1617
    return-void
.end method

.method public write(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 1673
    if-eqz p1, :cond_0

    .line 1674
    const-string v0, "true"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 1676
    :cond_0
    const-string v0, "false"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 1678
    :goto_0
    return-void
.end method

.method public write([CII)V
    .locals 4
    .param p1, "c"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 249
    if-ltz p2, :cond_3

    array-length v0, p1

    if-gt p2, v0, :cond_3

    if-ltz p3, :cond_3

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_3

    add-int v0, p2, p3

    if-ltz v0, :cond_3

    .line 255
    if-nez p3, :cond_0

    .line 256
    return-void

    .line 259
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, p3

    .line 260
    .local v0, "newcount":I
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_2

    .line 261
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_1

    .line 262
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_0

    .line 265
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v1

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v2, v3

    .line 266
    .local v2, "rest":I
    invoke-static {p1, p2, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 268
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 269
    sub-int/2addr p3, v2

    .line 270
    add-int/2addr p2, v2

    .line 271
    .end local v2    # "rest":I
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-gt p3, v1, :cond_1

    .line 272
    move v0, p3

    .line 275
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 278
    return-void

    .line 254
    .end local v0    # "newcount":I
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public writeByteArray([B)V
    .locals 18
    .param p1, "bytes"    # [B

    .line 518
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v2, v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 519
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeHex([B)V

    .line 520
    return-void

    .line 523
    :cond_0
    array-length v2, v1

    .line 524
    .local v2, "bytesLen":I
    iget-boolean v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x27

    goto :goto_0

    :cond_1
    const/16 v3, 0x22

    .line 525
    .local v3, "quote":C
    :goto_0
    if-nez v2, :cond_3

    .line 526
    iget-boolean v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v4, :cond_2

    const-string v4, "\'\'"

    goto :goto_1

    :cond_2
    const-string v4, "\"\""

    .line 527
    .local v4, "emptyString":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 528
    return-void

    .line 531
    .end local v4    # "emptyString":Ljava/lang/String;
    :cond_3
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->CA:[C

    .line 533
    .local v4, "CA":[C
    div-int/lit8 v5, v2, 0x3

    mul-int/lit8 v5, v5, 0x3

    .line 534
    .local v5, "eLen":I
    add-int/lit8 v6, v2, -0x1

    div-int/lit8 v6, v6, 0x3

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x2

    shl-int/2addr v6, v7

    .line 536
    .local v6, "charsLen":I
    iget v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 537
    .local v8, "offset":I
    iget v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v9, v6

    add-int/2addr v9, v7

    .line 538
    .local v9, "newcount":I
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v10, v10

    const/4 v11, 0x0

    const/16 v12, 0x3d

    if-le v9, v10, :cond_9

    .line 539
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v10, :cond_8

    .line 540
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 542
    const/4 v10, 0x0

    .local v10, "s":I
    :goto_2
    if-ge v10, v5, :cond_4

    .line 544
    add-int/lit8 v13, v10, 0x1

    .end local v10    # "s":I
    .local v13, "s":I
    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "s":I
    .local v14, "s":I
    aget-byte v13, v1, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v10, v13

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "s":I
    .restart local v13    # "s":I
    aget-byte v14, v1, v14

    and-int/lit16 v14, v14, 0xff

    or-int/2addr v10, v14

    .line 547
    .local v10, "i":I
    ushr-int/lit8 v14, v10, 0x12

    and-int/lit8 v14, v14, 0x3f

    aget-char v14, v4, v14

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 548
    ushr-int/lit8 v14, v10, 0xc

    and-int/lit8 v14, v14, 0x3f

    aget-char v14, v4, v14

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 549
    ushr-int/lit8 v14, v10, 0x6

    and-int/lit8 v14, v14, 0x3f

    aget-char v14, v4, v14

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 550
    and-int/lit8 v14, v10, 0x3f

    aget-char v14, v4, v14

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 551
    .end local v10    # "i":I
    move v10, v13

    goto :goto_2

    .line 554
    .end local v13    # "s":I
    :cond_4
    sub-int v10, v2, v5

    .line 555
    .local v10, "left":I
    if-lez v10, :cond_7

    .line 557
    aget-byte v13, v1, v5

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0xa

    if-ne v10, v7, :cond_5

    add-int/lit8 v11, v2, -0x1

    aget-byte v11, v1, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/2addr v11, v7

    :cond_5
    or-int/2addr v11, v13

    .line 560
    .local v11, "i":I
    shr-int/lit8 v13, v11, 0xc

    aget-char v13, v4, v13

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 561
    ushr-int/lit8 v13, v11, 0x6

    and-int/lit8 v13, v13, 0x3f

    aget-char v13, v4, v13

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 562
    if-ne v10, v7, :cond_6

    and-int/lit8 v7, v11, 0x3f

    aget-char v7, v4, v7

    goto :goto_3

    :cond_6
    const/16 v7, 0x3d

    :goto_3
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 563
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 566
    .end local v11    # "i":I
    :cond_7
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 567
    return-void

    .line 569
    .end local v10    # "left":I
    :cond_8
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 571
    :cond_9
    iput v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 572
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v13, v8, 0x1

    .end local v8    # "offset":I
    .local v13, "offset":I
    aput-char v3, v10, v8

    .line 575
    const/4 v8, 0x0

    .local v8, "s":I
    move v10, v13

    .local v10, "d":I
    :goto_4
    if-ge v8, v5, :cond_a

    .line 577
    add-int/lit8 v14, v8, 0x1

    .end local v8    # "s":I
    .restart local v14    # "s":I
    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "s":I
    .local v15, "s":I
    aget-byte v14, v1, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    or-int/2addr v8, v14

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "s":I
    .restart local v14    # "s":I
    aget-byte v15, v1, v15

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v8, v15

    .line 580
    .local v8, "i":I
    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v10, 0x1

    .end local v10    # "d":I
    .local v16, "d":I
    ushr-int/lit8 v17, v8, 0x12

    and-int/lit8 v17, v17, 0x3f

    aget-char v17, v4, v17

    aput-char v17, v15, v10

    .line 581
    add-int/lit8 v10, v16, 0x1

    .end local v16    # "d":I
    .restart local v10    # "d":I
    ushr-int/lit8 v17, v8, 0xc

    and-int/lit8 v17, v17, 0x3f

    aget-char v17, v4, v17

    aput-char v17, v15, v16

    .line 582
    add-int/lit8 v16, v10, 0x1

    .end local v10    # "d":I
    .restart local v16    # "d":I
    ushr-int/lit8 v17, v8, 0x6

    and-int/lit8 v17, v17, 0x3f

    aget-char v17, v4, v17

    aput-char v17, v15, v10

    .line 583
    add-int/lit8 v10, v16, 0x1

    .end local v16    # "d":I
    .restart local v10    # "d":I
    and-int/lit8 v17, v8, 0x3f

    aget-char v17, v4, v17

    aput-char v17, v15, v16

    .line 584
    .end local v8    # "i":I
    move v8, v14

    goto :goto_4

    .line 587
    .end local v10    # "d":I
    .end local v14    # "s":I
    :cond_a
    sub-int v8, v2, v5

    .line 588
    .local v8, "left":I
    if-lez v8, :cond_d

    .line 590
    aget-byte v10, v1, v5

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0xa

    if-ne v8, v7, :cond_b

    add-int/lit8 v11, v2, -0x1

    aget-byte v11, v1, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/2addr v11, v7

    :cond_b
    or-int/2addr v10, v11

    .line 593
    .local v10, "i":I
    iget-object v11, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v14, v9, -0x5

    shr-int/lit8 v15, v10, 0xc

    aget-char v15, v4, v15

    aput-char v15, v11, v14

    .line 594
    add-int/lit8 v14, v9, -0x4

    ushr-int/lit8 v15, v10, 0x6

    and-int/lit8 v15, v15, 0x3f

    aget-char v15, v4, v15

    aput-char v15, v11, v14

    .line 595
    add-int/lit8 v14, v9, -0x3

    if-ne v8, v7, :cond_c

    and-int/lit8 v7, v10, 0x3f

    aget-char v7, v4, v7

    goto :goto_5

    :cond_c
    const/16 v7, 0x3d

    :goto_5
    aput-char v7, v11, v14

    .line 596
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, v9, -0x2

    aput-char v12, v7, v11

    .line 598
    .end local v10    # "i":I
    :cond_d
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v9, -0x1

    aput-char v3, v7, v10

    .line 599
    return-void
.end method

.method public writeDouble(DZ)V
    .locals 3
    .param p1, "doubleValue"    # D
    .param p3, "checkWriteClassName"    # Z

    .line 665
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    .line 666
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 669
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    .line 670
    .local v0, "doubleText":Ljava/lang/String;
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 671
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 674
    :cond_1
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 676
    if-eqz p3, :cond_3

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 677
    const/16 v1, 0x44

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_1

    .line 667
    .end local v0    # "doubleText":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 680
    :cond_3
    :goto_1
    return-void
.end method

.method public writeEnum(Ljava/lang/Enum;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    .line 683
    .local p1, "value":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    if-nez p1, :cond_0

    .line 684
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 685
    return-void

    .line 688
    :cond_0
    const/4 v0, 0x0

    .line 689
    .local v0, "strVal":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingName:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingToString:Z

    if-nez v1, :cond_1

    .line 690
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 691
    :cond_1
    iget-boolean v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingToString:Z

    if-eqz v1, :cond_2

    .line 692
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    .line 695
    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    .line 696
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x27

    goto :goto_1

    :cond_3
    const/16 v1, 0x22

    .line 697
    .local v1, "quote":C
    :goto_1
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 698
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 699
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 700
    .end local v1    # "quote":C
    goto :goto_2

    .line 701
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 703
    :goto_2
    return-void
.end method

.method public writeFieldName(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 2294
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 2295
    return-void
.end method

.method public writeFieldName(Ljava/lang/String;Z)V
    .locals 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "checkSpecial"    # Z

    .line 2298
    if-nez p1, :cond_0

    .line 2299
    const-string v0, "null:"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 2300
    return-void

    .line 2303
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    const/16 v1, 0x3a

    if-eqz v0, :cond_2

    .line 2304
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-eqz v0, :cond_1

    .line 2305
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    .line 2306
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_4

    .line 2308
    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeKeyWithSingleQuoteIfHasSpecial(Ljava/lang/String;)V

    goto :goto_4

    .line 2311
    :cond_2
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-eqz v0, :cond_3

    .line 2312
    invoke-virtual {p0, p1, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_4

    .line 2314
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 2315
    .local v0, "hashSpecial":Z
    :goto_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_9

    .line 2316
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 2317
    .local v5, "ch":C
    const/16 v6, 0x40

    if-ge v5, v6, :cond_5

    iget-wide v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sepcialBits:J

    const-wide/16 v8, 0x1

    shl-long/2addr v8, v5

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-nez v10, :cond_6

    :cond_5
    const/16 v6, 0x5c

    if-ne v5, v6, :cond_7

    :cond_6
    const/4 v6, 0x1

    goto :goto_2

    :cond_7
    const/4 v6, 0x0

    .line 2318
    .local v6, "special":Z
    :goto_2
    if-eqz v6, :cond_8

    .line 2319
    const/4 v0, 0x1

    .line 2320
    goto :goto_3

    .line 2315
    .end local v5    # "ch":C
    .end local v6    # "special":Z
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2323
    .end local v4    # "i":I
    :cond_9
    :goto_3
    if-eqz v0, :cond_a

    .line 2324
    invoke-virtual {p0, p1, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_4

    .line 2326
    :cond_a
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 2327
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2331
    .end local v0    # "hashSpecial":Z
    :goto_4
    return-void
.end method

.method public writeFieldNameDirect(Ljava/lang/String;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .line 1534
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1535
    .local v0, "len":I
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x3

    .line 1537
    .local v1, "newcount":I
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 1538
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1541
    :cond_0
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v3, v2, 0x1

    .line 1543
    .local v3, "start":I
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v5, 0x22

    aput-char v5, v4, v2

    .line 1544
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v4, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 1546
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1547
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, -0x2

    aput-char v5, v2, v4

    .line 1548
    add-int/lit8 v4, v1, -0x1

    const/16 v5, 0x3a

    aput-char v5, v2, v4

    .line 1549
    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;C)V
    .locals 1
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # C

    .line 1621
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1622
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1623
    if-nez p3, :cond_0

    .line 1624
    const-string v0, "\u0000"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 1626
    :cond_0
    invoke-static {p3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 1628
    :goto_0
    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;D)V
    .locals 1
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # D

    .line 1765
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1766
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1767
    const/4 v0, 0x0

    invoke-virtual {p0, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeDouble(DZ)V

    .line 1768
    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;F)V
    .locals 1
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # F

    .line 1759
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1760
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1761
    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFloat(FZ)V

    .line 1762
    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;I)V
    .locals 8
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 1681
    const/high16 v0, -0x80000000

    if-eq p3, v0, :cond_4

    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1688
    :cond_0
    if-gez p3, :cond_1

    neg-int v0, p3

    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p3}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v0

    .line 1690
    .local v0, "intSize":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 1691
    .local v1, "nameLen":I
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v0

    .line 1692
    .local v2, "newcount":I
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-le v2, v3, :cond_3

    .line 1693
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v3, :cond_2

    .line 1694
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1695
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1696
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 1697
    return-void

    .line 1699
    :cond_2
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1702
    :cond_3
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1703
    .local v3, "start":I
    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1705
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char p1, v4, v3

    .line 1707
    add-int v5, v3, v1

    add-int/lit8 v5, v5, 0x1

    .line 1709
    .local v5, "nameEnd":I
    add-int/lit8 v6, v3, 0x1

    iget-char v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    aput-char v7, v4, v6

    .line 1711
    const/4 v6, 0x0

    add-int/lit8 v7, v3, 0x2

    invoke-virtual {p2, v6, v1, v4, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 1713
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v5, 0x1

    iget-char v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    aput-char v7, v4, v6

    .line 1714
    add-int/lit8 v6, v5, 0x2

    const/16 v7, 0x3a

    aput-char v7, v4, v6

    .line 1716
    iget v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {p3, v6, v4}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 1717
    return-void

    .line 1682
    .end local v0    # "intSize":I
    .end local v1    # "nameLen":I
    .end local v2    # "newcount":I
    .end local v3    # "start":I
    .end local v5    # "nameEnd":I
    :cond_4
    :goto_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1683
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1684
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 1685
    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;J)V
    .locals 8
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # J

    .line 1720
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p3, v0

    if-eqz v2, :cond_4

    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1727
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-gez v2, :cond_1

    neg-long v0, p3

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p3, p4}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v0

    .line 1729
    .local v0, "intSize":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 1730
    .local v1, "nameLen":I
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v0

    .line 1731
    .local v2, "newcount":I
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-le v2, v3, :cond_3

    .line 1732
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v3, :cond_2

    .line 1733
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1734
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1735
    invoke-virtual {p0, p3, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 1736
    return-void

    .line 1738
    :cond_2
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1741
    :cond_3
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1742
    .local v3, "start":I
    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1744
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char p1, v4, v3

    .line 1746
    add-int v5, v3, v1

    add-int/lit8 v5, v5, 0x1

    .line 1748
    .local v5, "nameEnd":I
    add-int/lit8 v6, v3, 0x1

    iget-char v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    aput-char v7, v4, v6

    .line 1750
    const/4 v6, 0x0

    add-int/lit8 v7, v3, 0x2

    invoke-virtual {p2, v6, v1, v4, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 1752
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v5, 0x1

    iget-char v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    aput-char v7, v4, v6

    .line 1753
    add-int/lit8 v6, v5, 0x2

    const/16 v7, 0x3a

    aput-char v7, v4, v6

    .line 1755
    iget v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {p3, p4, v6, v4}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    .line 1756
    return-void

    .line 1721
    .end local v0    # "intSize":I
    .end local v1    # "nameLen":I
    .end local v2    # "newcount":I
    .end local v3    # "start":I
    .end local v5    # "nameEnd":I
    :cond_4
    :goto_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1722
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1723
    invoke-virtual {p0, p3, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 1724
    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;Ljava/lang/Enum;)V
    .locals 1
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/lang/String;",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    .line 2066
    .local p3, "value":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    if-nez p3, :cond_0

    .line 2067
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2068
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 2069
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 2070
    return-void

    .line 2073
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingName:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingToString:Z

    if-nez v0, :cond_1

    .line 2074
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2075
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingToString:Z

    if-eqz v0, :cond_2

    .line 2076
    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2078
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    .line 2080
    :goto_0
    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 1771
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-eqz v0, :cond_3

    .line 1772
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v0, :cond_1

    .line 1773
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1774
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1775
    if-nez p3, :cond_0

    .line 1776
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    .line 1778
    :cond_0
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 1781
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1782
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1783
    const/16 v0, 0x3a

    invoke-virtual {p0, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 1784
    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_0

    .line 1786
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValueStringWithDoubleQuoteCheck(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1790
    :cond_3
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1791
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1792
    if-nez p3, :cond_4

    .line 1793
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    .line 1795
    :cond_4
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 1798
    :goto_0
    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;Ljava/math/BigDecimal;)V
    .locals 1
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/math/BigDecimal;

    .line 2091
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2092
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 2093
    if-nez p3, :cond_0

    .line 2094
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    .line 2096
    :cond_0
    invoke-virtual {p3}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 2098
    :goto_0
    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;Z)V
    .locals 10
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .line 1631
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-nez v0, :cond_0

    .line 1632
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1633
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1634
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Z)V

    .line 1635
    return-void

    .line 1637
    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x5

    if-eqz p3, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    .line 1639
    .local v2, "intSize":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 1640
    .local v3, "nameLen":I
    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v4, v3

    add-int/2addr v4, v0

    add-int/2addr v4, v2

    .line 1641
    .local v4, "newcount":I
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    if-le v4, v0, :cond_3

    .line 1642
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_2

    .line 1643
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1644
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 1645
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1646
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Z)V

    .line 1647
    return-void

    .line 1649
    :cond_2
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1652
    :cond_3
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1653
    .local v0, "start":I
    iput v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1655
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char p1, v5, v0

    .line 1657
    add-int v6, v0, v3

    add-int/lit8 v6, v6, 0x1

    .line 1659
    .local v6, "nameEnd":I
    add-int/lit8 v7, v0, 0x1

    iget-char v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    aput-char v8, v5, v7

    .line 1661
    add-int/lit8 v7, v0, 0x2

    const/4 v8, 0x0

    invoke-virtual {p2, v8, v3, v5, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 1663
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v6, 0x1

    iget-char v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    aput-char v9, v5, v7

    .line 1665
    if-eqz p3, :cond_4

    .line 1666
    const-string v5, ":true"

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v9, v6, 0x2

    invoke-static {v5, v8, v7, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 1668
    :cond_4
    const-string v1, ":false"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v6, 0x2

    const/4 v9, 0x6

    invoke-static {v1, v8, v5, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1670
    :goto_1
    return-void
.end method

.method public writeFieldValueStringWithDoubleQuote(CLjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 2024
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 2027
    .local v0, "nameLen":I
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2029
    .local v1, "newcount":I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    .line 2030
    .local v2, "valueLen":I
    add-int v3, v0, v2

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v1, v3

    .line 2032
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    const/16 v4, 0x3a

    const/4 v5, 0x0

    if-le v1, v3, :cond_1

    .line 2033
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v3, :cond_0

    .line 2034
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2035
    invoke-virtual {p0, p2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 2036
    invoke-virtual {p0, p3, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 2037
    return-void

    .line 2039
    :cond_0
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 2042
    :cond_1
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char p1, v3, v6

    .line 2044
    add-int/lit8 v7, v6, 0x2

    .line 2045
    .local v7, "nameStart":I
    add-int v8, v7, v0

    .line 2047
    .local v8, "nameEnd":I
    add-int/lit8 v6, v6, 0x1

    const/16 v9, 0x22

    aput-char v9, v3, v6

    .line 2048
    invoke-virtual {p2, v5, v0, v3, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 2050
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2052
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v9, v3, v8

    .line 2054
    add-int/lit8 v6, v8, 0x1

    .line 2055
    .local v6, "index":I
    add-int/lit8 v10, v6, 0x1

    .end local v6    # "index":I
    .local v10, "index":I
    aput-char v4, v3, v6

    .line 2056
    add-int/lit8 v4, v10, 0x1

    .end local v10    # "index":I
    .local v4, "index":I
    aput-char v9, v3, v10

    .line 2058
    move v6, v4

    .line 2059
    .local v6, "valueStart":I
    invoke-virtual {p3, v5, v2, v3, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 2060
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v5, v5, -0x1

    aput-char v9, v3, v5

    .line 2061
    return-void
.end method

.method public writeFieldValueStringWithDoubleQuoteCheck(CLjava/lang/String;Ljava/lang/String;)V
    .locals 32
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 1801
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 1804
    .local v3, "nameLen":I
    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1806
    .local v4, "newcount":I
    if-nez v2, :cond_0

    .line 1807
    const/4 v5, 0x4

    .line 1808
    .local v5, "valueLen":I
    add-int/lit8 v6, v3, 0x8

    add-int/2addr v4, v6

    goto :goto_0

    .line 1810
    .end local v5    # "valueLen":I
    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v5

    .line 1811
    .restart local v5    # "valueLen":I
    add-int v6, v3, v5

    add-int/lit8 v6, v6, 0x6

    add-int/2addr v4, v6

    .line 1814
    :goto_0
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v6, v6

    const/16 v7, 0x3a

    const/4 v8, 0x0

    if-le v4, v6, :cond_2

    .line 1815
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v6, :cond_1

    .line 1816
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1817
    invoke-virtual {v0, v1, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 1818
    invoke-virtual {v0, v2, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 1819
    return-void

    .line 1821
    :cond_1
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1824
    :cond_2
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char p1, v6, v9

    .line 1826
    add-int/lit8 v10, v9, 0x2

    .line 1827
    .local v10, "nameStart":I
    add-int v11, v10, v3

    .line 1829
    .local v11, "nameEnd":I
    const/4 v12, 0x1

    add-int/2addr v9, v12

    const/16 v13, 0x22

    aput-char v13, v6, v9

    .line 1830
    invoke-virtual {v1, v8, v3, v6, v10}, Ljava/lang/String;->getChars(II[CI)V

    .line 1832
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1834
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v13, v6, v11

    .line 1836
    add-int/lit8 v9, v11, 0x1

    .line 1837
    .local v9, "index":I
    add-int/lit8 v14, v9, 0x1

    .end local v9    # "index":I
    .local v14, "index":I
    aput-char v7, v6, v9

    .line 1839
    const/16 v7, 0x75

    if-nez v2, :cond_3

    .line 1840
    add-int/lit8 v8, v14, 0x1

    .end local v14    # "index":I
    .local v8, "index":I
    const/16 v9, 0x6e

    aput-char v9, v6, v14

    .line 1841
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "index":I
    .restart local v9    # "index":I
    aput-char v7, v6, v8

    .line 1842
    add-int/lit8 v7, v9, 0x1

    .end local v9    # "index":I
    .local v7, "index":I
    const/16 v8, 0x6c

    aput-char v8, v6, v9

    .line 1843
    add-int/lit8 v9, v7, 0x1

    .end local v7    # "index":I
    .restart local v9    # "index":I
    aput-char v8, v6, v7

    .line 1844
    return-void

    .line 1847
    .end local v9    # "index":I
    .restart local v14    # "index":I
    :cond_3
    add-int/lit8 v9, v14, 0x1

    .end local v14    # "index":I
    .restart local v9    # "index":I
    aput-char v13, v6, v14

    .line 1849
    move v14, v9

    .line 1850
    .local v14, "valueStart":I
    add-int v15, v14, v5

    .line 1852
    .local v15, "valueEnd":I
    invoke-virtual {v2, v8, v5, v6, v14}, Ljava/lang/String;->getChars(II[CI)V

    .line 1854
    const/4 v6, 0x0

    .line 1855
    .local v6, "specialCount":I
    const/16 v16, -0x1

    .line 1856
    .local v16, "lastSpecialIndex":I
    const/16 v17, -0x1

    .line 1857
    .local v17, "firstSpecialIndex":I
    const/16 v18, 0x0

    .line 1859
    .local v18, "lastSpecial":C
    move/from16 v19, v14

    move/from16 v8, v17

    move/from16 v13, v18

    move/from16 v7, v19

    .end local v17    # "firstSpecialIndex":I
    .end local v18    # "lastSpecial":C
    .local v7, "i":I
    .local v8, "firstSpecialIndex":I
    .local v13, "lastSpecial":C
    :goto_1
    if-ge v7, v15, :cond_10

    .line 1860
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v12, v12, v7

    .line 1862
    .local v12, "ch":C
    const/16 v1, 0x5d

    move/from16 v28, v3

    .end local v3    # "nameLen":I
    .local v28, "nameLen":I
    const/4 v3, -0x1

    if-lt v12, v1, :cond_7

    .line 1863
    const/16 v1, 0x7f

    if-lt v12, v1, :cond_6

    const/16 v1, 0x2028

    if-eq v12, v1, :cond_4

    const/16 v1, 0x2029

    if-eq v12, v1, :cond_4

    const/16 v1, 0xa0

    if-ge v12, v1, :cond_6

    .line 1867
    :cond_4
    if-ne v8, v3, :cond_5

    .line 1868
    move v8, v7

    .line 1871
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 1872
    move v1, v7

    .line 1873
    .end local v16    # "lastSpecialIndex":I
    .local v1, "lastSpecialIndex":I
    move v3, v12

    .line 1874
    .end local v13    # "lastSpecial":C
    .local v3, "lastSpecial":C
    add-int/lit8 v4, v4, 0x4

    move/from16 v16, v1

    move v13, v3

    goto/16 :goto_7

    .line 1863
    .end local v1    # "lastSpecialIndex":I
    .end local v3    # "lastSpecial":C
    .restart local v13    # "lastSpecial":C
    .restart local v16    # "lastSpecialIndex":I
    :cond_6
    move/from16 v29, v4

    goto/16 :goto_6

    .line 1879
    :cond_7
    const/16 v1, 0x40

    if-ge v12, v1, :cond_8

    move/from16 v29, v4

    .end local v4    # "newcount":I
    .local v29, "newcount":I
    iget-wide v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sepcialBits:J

    const-wide/16 v24, 0x1

    shl-long v24, v24, v12

    and-long v3, v3, v24

    const-wide/16 v24, 0x0

    cmp-long v30, v3, v24

    if-nez v30, :cond_9

    goto :goto_2

    .end local v29    # "newcount":I
    .restart local v4    # "newcount":I
    :cond_8
    move/from16 v29, v4

    .end local v4    # "newcount":I
    .restart local v29    # "newcount":I
    :goto_2
    const/16 v3, 0x5c

    if-ne v12, v3, :cond_a

    :cond_9
    const/4 v3, 0x1

    goto :goto_3

    :cond_a
    const/4 v3, 0x0

    .line 1880
    .local v3, "special":Z
    :goto_3
    if-eqz v3, :cond_f

    .line 1881
    add-int/lit8 v6, v6, 0x1

    .line 1882
    move v4, v7

    .line 1883
    .end local v16    # "lastSpecialIndex":I
    .local v4, "lastSpecialIndex":I
    move v13, v12

    .line 1885
    const/16 v1, 0x28

    if-eq v12, v1, :cond_c

    const/16 v1, 0x29

    if-eq v12, v1, :cond_c

    const/16 v1, 0x3c

    if-eq v12, v1, :cond_c

    const/16 v1, 0x3e

    if-eq v12, v1, :cond_c

    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v1, v1

    if-ge v12, v1, :cond_b

    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v1, v1, v12

    move/from16 v21, v3

    const/4 v3, 0x4

    .end local v3    # "special":Z
    .local v21, "special":Z
    if-ne v1, v3, :cond_d

    goto :goto_4

    .end local v21    # "special":Z
    .restart local v3    # "special":Z
    :cond_b
    move/from16 v21, v3

    .end local v3    # "special":Z
    .restart local v21    # "special":Z
    goto :goto_5

    .end local v21    # "special":Z
    .restart local v3    # "special":Z
    :cond_c
    move/from16 v21, v3

    .line 1892
    .end local v3    # "special":Z
    .restart local v21    # "special":Z
    :goto_4
    add-int/lit8 v1, v29, 0x4

    move/from16 v29, v1

    .line 1895
    :cond_d
    :goto_5
    const/4 v1, -0x1

    if-ne v8, v1, :cond_e

    .line 1896
    move v1, v7

    move v8, v1

    move/from16 v16, v4

    move/from16 v4, v29

    .end local v8    # "firstSpecialIndex":I
    .local v1, "firstSpecialIndex":I
    goto :goto_7

    .line 1895
    .end local v1    # "firstSpecialIndex":I
    .restart local v8    # "firstSpecialIndex":I
    :cond_e
    move/from16 v16, v4

    move/from16 v4, v29

    goto :goto_7

    .line 1880
    .end local v4    # "lastSpecialIndex":I
    .end local v21    # "special":Z
    .restart local v3    # "special":Z
    .restart local v16    # "lastSpecialIndex":I
    :cond_f
    move/from16 v21, v3

    .line 1859
    .end local v3    # "special":Z
    .end local v12    # "ch":C
    .end local v29    # "newcount":I
    .local v4, "newcount":I
    :goto_6
    move/from16 v4, v29

    :goto_7
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p2

    move/from16 v3, v28

    const/4 v12, 0x1

    goto/16 :goto_1

    .end local v28    # "nameLen":I
    .local v3, "nameLen":I
    :cond_10
    move/from16 v28, v3

    move/from16 v29, v4

    .line 1901
    .end local v3    # "nameLen":I
    .end local v4    # "newcount":I
    .end local v7    # "i":I
    .restart local v28    # "nameLen":I
    .restart local v29    # "newcount":I
    if-lez v6, :cond_23

    .line 1902
    add-int v4, v29, v6

    .line 1903
    .end local v29    # "newcount":I
    .restart local v4    # "newcount":I
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v4, v1, :cond_11

    .line 1904
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1906
    :cond_11
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1908
    const/4 v1, 0x1

    if-ne v6, v1, :cond_17

    .line 1909
    const/16 v3, 0x2028

    if-ne v13, v3, :cond_12

    .line 1910
    add-int/lit8 v3, v16, 0x1

    .line 1911
    .local v3, "srcPos":I
    add-int/lit8 v7, v16, 0x6

    .line 1912
    .local v7, "destPos":I
    sub-int v12, v15, v16

    const/16 v17, 0x1

    add-int/lit8 v12, v12, -0x1

    .line 1913
    .local v12, "LengthOfCopy":I
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v1, v3, v1, v7, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1914
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v21, 0x5c

    aput-char v21, v1, v16

    .line 1915
    add-int/lit8 v16, v16, 0x1

    const/16 v19, 0x75

    aput-char v19, v1, v16

    .line 1916
    const/16 v19, 0x1

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x32

    aput-char v17, v1, v16

    .line 1917
    add-int/lit8 v16, v16, 0x1

    const/16 v20, 0x30

    aput-char v20, v1, v16

    .line 1918
    add-int/lit8 v16, v16, 0x1

    aput-char v17, v1, v16

    .line 1919
    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x38

    aput-char v17, v1, v16

    .line 1920
    .end local v3    # "srcPos":I
    .end local v7    # "destPos":I
    .end local v12    # "LengthOfCopy":I
    goto/16 :goto_10

    :cond_12
    const/16 v1, 0x2029

    if-ne v13, v1, :cond_13

    .line 1921
    add-int/lit8 v1, v16, 0x1

    .line 1922
    .local v1, "srcPos":I
    add-int/lit8 v3, v16, 0x6

    .line 1923
    .local v3, "destPos":I
    sub-int v7, v15, v16

    const/4 v12, 0x1

    sub-int/2addr v7, v12

    .line 1924
    .local v7, "LengthOfCopy":I
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v12, v1, v12, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1925
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v21, 0x5c

    aput-char v21, v12, v16

    .line 1926
    add-int/lit8 v16, v16, 0x1

    const/16 v19, 0x75

    aput-char v19, v12, v16

    .line 1927
    const/16 v19, 0x1

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x32

    aput-char v17, v12, v16

    .line 1928
    add-int/lit8 v16, v16, 0x1

    const/16 v20, 0x30

    aput-char v20, v12, v16

    .line 1929
    add-int/lit8 v16, v16, 0x1

    aput-char v17, v12, v16

    .line 1930
    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x39

    aput-char v17, v12, v16

    .line 1931
    .end local v1    # "srcPos":I
    .end local v3    # "destPos":I
    .end local v7    # "LengthOfCopy":I
    goto/16 :goto_10

    :cond_13
    const/16 v1, 0x28

    if-eq v13, v1, :cond_16

    const/16 v1, 0x29

    if-eq v13, v1, :cond_16

    const/16 v1, 0x3c

    if-eq v13, v1, :cond_16

    const/16 v1, 0x3e

    if-ne v13, v1, :cond_14

    move/from16 v17, v4

    goto/16 :goto_9

    .line 1946
    :cond_14
    move v1, v13

    .line 1947
    .local v1, "ch":C
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v3, v3

    if-ge v1, v3, :cond_15

    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v3, v3, v1

    const/4 v7, 0x4

    if-ne v3, v7, :cond_15

    .line 1949
    add-int/lit8 v3, v16, 0x1

    .line 1950
    .local v3, "srcPos":I
    add-int/lit8 v7, v16, 0x6

    .line 1951
    .local v7, "destPos":I
    sub-int v12, v15, v16

    const/16 v17, 0x1

    add-int/lit8 v12, v12, -0x1

    .line 1952
    .restart local v12    # "LengthOfCopy":I
    move/from16 v17, v4

    .end local v4    # "newcount":I
    .local v17, "newcount":I
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v4, v3, v4, v7, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1954
    move/from16 v4, v16

    .line 1955
    .local v4, "bufIndex":I
    move/from16 v21, v3

    .end local v3    # "srcPos":I
    .local v21, "srcPos":I
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v22, v4, 0x1

    const/16 v23, 0x5c

    .end local v4    # "bufIndex":I
    .local v22, "bufIndex":I
    aput-char v23, v3, v4

    .line 1956
    add-int/lit8 v4, v22, 0x1

    const/16 v19, 0x75

    .end local v22    # "bufIndex":I
    .restart local v4    # "bufIndex":I
    aput-char v19, v3, v22

    .line 1957
    add-int/lit8 v19, v4, 0x1

    .end local v4    # "bufIndex":I
    .local v19, "bufIndex":I
    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v23, v1, 0xc

    and-int/lit8 v23, v23, 0xf

    aget-char v22, v22, v23

    aput-char v22, v3, v4

    .line 1958
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v19, 0x1

    .end local v19    # "bufIndex":I
    .restart local v4    # "bufIndex":I
    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v23, v1, 0x8

    and-int/lit8 v23, v23, 0xf

    aget-char v22, v22, v23

    aput-char v22, v3, v19

    .line 1959
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v19, v4, 0x1

    .end local v4    # "bufIndex":I
    .restart local v19    # "bufIndex":I
    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v23, v1, 0x4

    and-int/lit8 v23, v23, 0xf

    aget-char v22, v22, v23

    aput-char v22, v3, v4

    .line 1960
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v19, 0x1

    .end local v19    # "bufIndex":I
    .restart local v4    # "bufIndex":I
    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v23, v1, 0xf

    aget-char v22, v22, v23

    aput-char v22, v3, v19

    .line 1961
    .end local v4    # "bufIndex":I
    .end local v7    # "destPos":I
    .end local v12    # "LengthOfCopy":I
    .end local v21    # "srcPos":I
    goto :goto_8

    .line 1947
    .end local v17    # "newcount":I
    .local v4, "newcount":I
    :cond_15
    move/from16 v17, v4

    .line 1962
    .end local v4    # "newcount":I
    .restart local v17    # "newcount":I
    add-int/lit8 v3, v16, 0x1

    .line 1963
    .restart local v3    # "srcPos":I
    add-int/lit8 v4, v16, 0x2

    .line 1964
    .local v4, "destPos":I
    sub-int v7, v15, v16

    const/4 v12, 0x1

    sub-int/2addr v7, v12

    .line 1965
    .local v7, "LengthOfCopy":I
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v12, v3, v12, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1966
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v19, 0x5c

    aput-char v19, v12, v16

    .line 1967
    add-int/lit8 v16, v16, 0x1

    sget-object v19, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v19, v19, v1

    aput-char v19, v12, v16

    .line 1969
    .end local v1    # "ch":C
    .end local v3    # "srcPos":I
    .end local v4    # "destPos":I
    .end local v7    # "LengthOfCopy":I
    :goto_8
    move/from16 v4, v17

    goto/16 :goto_10

    .line 1931
    .end local v17    # "newcount":I
    .local v4, "newcount":I
    :cond_16
    move/from16 v17, v4

    .line 1932
    .end local v4    # "newcount":I
    .restart local v17    # "newcount":I
    :goto_9
    move v1, v13

    .line 1933
    .restart local v1    # "ch":C
    add-int/lit8 v3, v16, 0x1

    .line 1934
    .restart local v3    # "srcPos":I
    add-int/lit8 v4, v16, 0x6

    .line 1935
    .local v4, "destPos":I
    sub-int v7, v15, v16

    const/4 v12, 0x1

    sub-int/2addr v7, v12

    .line 1936
    .restart local v7    # "LengthOfCopy":I
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v12, v3, v12, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1938
    move/from16 v12, v16

    .line 1939
    .local v12, "bufIndex":I
    move/from16 v21, v3

    .end local v3    # "srcPos":I
    .restart local v21    # "srcPos":I
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v22, v12, 0x1

    const/16 v23, 0x5c

    .end local v12    # "bufIndex":I
    .restart local v22    # "bufIndex":I
    aput-char v23, v3, v12

    .line 1940
    add-int/lit8 v12, v22, 0x1

    const/16 v19, 0x75

    .end local v22    # "bufIndex":I
    .restart local v12    # "bufIndex":I
    aput-char v19, v3, v22

    .line 1941
    add-int/lit8 v19, v12, 0x1

    .end local v12    # "bufIndex":I
    .restart local v19    # "bufIndex":I
    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v23, v1, 0xc

    and-int/lit8 v23, v23, 0xf

    aget-char v22, v22, v23

    aput-char v22, v3, v12

    .line 1942
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v19, 0x1

    .end local v19    # "bufIndex":I
    .restart local v12    # "bufIndex":I
    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v23, v1, 0x8

    and-int/lit8 v23, v23, 0xf

    aget-char v22, v22, v23

    aput-char v22, v3, v19

    .line 1943
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v19, v12, 0x1

    .end local v12    # "bufIndex":I
    .restart local v19    # "bufIndex":I
    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v23, v1, 0x4

    and-int/lit8 v23, v23, 0xf

    aget-char v22, v22, v23

    aput-char v22, v3, v12

    .line 1944
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v19, 0x1

    .end local v19    # "bufIndex":I
    .restart local v12    # "bufIndex":I
    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v23, v1, 0xf

    aget-char v22, v22, v23

    aput-char v22, v3, v19

    .line 1945
    .end local v1    # "ch":C
    .end local v4    # "destPos":I
    .end local v7    # "LengthOfCopy":I
    .end local v12    # "bufIndex":I
    .end local v21    # "srcPos":I
    goto/16 :goto_f

    .line 1970
    .end local v17    # "newcount":I
    .local v4, "newcount":I
    :cond_17
    move/from16 v17, v4

    .end local v4    # "newcount":I
    .restart local v17    # "newcount":I
    const/4 v1, 0x1

    if-le v6, v1, :cond_22

    .line 1971
    sub-int v1, v8, v14

    .line 1972
    .local v1, "textIndex":I
    move v3, v8

    .line 1973
    .local v3, "bufIndex":I
    move v4, v1

    .local v4, "i":I
    :goto_a
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_21

    .line 1974
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1976
    .local v7, "ch":C
    iget-boolean v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->browserSecure:Z

    if-eqz v12, :cond_19

    const/16 v12, 0x28

    if-eq v7, v12, :cond_18

    const/16 v12, 0x29

    if-eq v7, v12, :cond_18

    const/16 v12, 0x3c

    if-eq v7, v12, :cond_18

    const/16 v12, 0x3e

    if-ne v7, v12, :cond_19

    goto :goto_b

    :cond_18
    const/16 v12, 0x3e

    .line 1980
    :goto_b
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v29, v3, 0x1

    const/16 v26, 0x5c

    .end local v3    # "bufIndex":I
    .local v29, "bufIndex":I
    aput-char v26, v12, v3

    .line 1981
    add-int/lit8 v3, v29, 0x1

    const/16 v19, 0x75

    .end local v29    # "bufIndex":I
    .restart local v3    # "bufIndex":I
    aput-char v19, v12, v29

    .line 1982
    add-int/lit8 v29, v3, 0x1

    .end local v3    # "bufIndex":I
    .restart local v29    # "bufIndex":I
    sget-object v30, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v31, v7, 0xc

    and-int/lit8 v31, v31, 0xf

    aget-char v30, v30, v31

    aput-char v30, v12, v3

    .line 1983
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v29, 0x1

    .end local v29    # "bufIndex":I
    .restart local v12    # "bufIndex":I
    sget-object v30, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v31, v7, 0x8

    and-int/lit8 v31, v31, 0xf

    aget-char v30, v30, v31

    aput-char v30, v3, v29

    .line 1984
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v29, v12, 0x1

    .end local v12    # "bufIndex":I
    .restart local v29    # "bufIndex":I
    sget-object v30, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v31, v7, 0x4

    and-int/lit8 v31, v31, 0xf

    aget-char v30, v30, v31

    aput-char v30, v3, v12

    .line 1985
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v29, 0x1

    .end local v29    # "bufIndex":I
    .restart local v12    # "bufIndex":I
    sget-object v30, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v31, v7, 0xf

    aget-char v30, v30, v31

    aput-char v30, v3, v29

    .line 1986
    add-int/lit8 v15, v15, 0x5

    move v3, v12

    const/16 v19, 0x75

    const/16 v26, 0x5c

    goto/16 :goto_e

    .line 1987
    .end local v12    # "bufIndex":I
    .restart local v3    # "bufIndex":I
    :cond_19
    sget-object v12, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v12, v12

    if-ge v7, v12, :cond_1a

    sget-object v12, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v12, v12, v7

    if-nez v12, :cond_1b

    :cond_1a
    const/16 v12, 0x2f

    if-ne v7, v12, :cond_1e

    sget-object v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 1989
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v12

    if-eqz v12, :cond_1d

    .line 1990
    :cond_1b
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v29, v3, 0x1

    const/16 v26, 0x5c

    .end local v3    # "bufIndex":I
    .restart local v29    # "bufIndex":I
    aput-char v26, v12, v3

    .line 1991
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v3, v3, v7

    const/4 v12, 0x4

    if-ne v3, v12, :cond_1c

    .line 1992
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v27, v29, 0x1

    const/16 v19, 0x75

    .end local v29    # "bufIndex":I
    .local v27, "bufIndex":I
    aput-char v19, v3, v29

    .line 1993
    add-int/lit8 v29, v27, 0x1

    .end local v27    # "bufIndex":I
    .restart local v29    # "bufIndex":I
    sget-object v30, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v31, v7, 0xc

    and-int/lit8 v31, v31, 0xf

    aget-char v30, v30, v31

    aput-char v30, v3, v27

    .line 1994
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v27, v29, 0x1

    .end local v29    # "bufIndex":I
    .restart local v27    # "bufIndex":I
    sget-object v30, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v31, v7, 0x8

    and-int/lit8 v31, v31, 0xf

    aget-char v30, v30, v31

    aput-char v30, v3, v29

    .line 1995
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v29, v27, 0x1

    .end local v27    # "bufIndex":I
    .restart local v29    # "bufIndex":I
    sget-object v30, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v31, v7, 0x4

    and-int/lit8 v31, v31, 0xf

    aget-char v30, v30, v31

    aput-char v30, v3, v27

    .line 1996
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v27, v29, 0x1

    .end local v29    # "bufIndex":I
    .restart local v27    # "bufIndex":I
    sget-object v30, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v31, v7, 0xf

    aget-char v30, v30, v31

    aput-char v30, v3, v29

    .line 1997
    add-int/lit8 v15, v15, 0x5

    move/from16 v3, v27

    const/16 v19, 0x75

    const/16 v26, 0x5c

    goto/16 :goto_e

    .line 1999
    .end local v27    # "bufIndex":I
    .restart local v29    # "bufIndex":I
    :cond_1c
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v27, v29, 0x1

    .end local v29    # "bufIndex":I
    .restart local v27    # "bufIndex":I
    sget-object v30, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v30, v30, v7

    aput-char v30, v3, v29

    .line 2000
    add-int/lit8 v15, v15, 0x1

    move/from16 v3, v27

    const/16 v19, 0x75

    const/16 v26, 0x5c

    goto :goto_e

    .line 1989
    .end local v27    # "bufIndex":I
    .restart local v3    # "bufIndex":I
    :cond_1d
    const/4 v12, 0x4

    goto :goto_c

    .line 1987
    :cond_1e
    const/4 v12, 0x4

    .line 2003
    :goto_c
    const/16 v12, 0x2028

    if-eq v7, v12, :cond_20

    const/16 v12, 0x2029

    if-ne v7, v12, :cond_1f

    goto :goto_d

    .line 2012
    :cond_1f
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v29, v3, 0x1

    .end local v3    # "bufIndex":I
    .restart local v29    # "bufIndex":I
    aput-char v7, v12, v3

    move/from16 v3, v29

    const/16 v19, 0x75

    const/16 v26, 0x5c

    goto :goto_e

    .line 2004
    .end local v29    # "bufIndex":I
    .restart local v3    # "bufIndex":I
    :cond_20
    :goto_d
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v29, v3, 0x1

    const/16 v26, 0x5c

    .end local v3    # "bufIndex":I
    .restart local v29    # "bufIndex":I
    aput-char v26, v12, v3

    .line 2005
    add-int/lit8 v3, v29, 0x1

    const/16 v19, 0x75

    .end local v29    # "bufIndex":I
    .restart local v3    # "bufIndex":I
    aput-char v19, v12, v29

    .line 2006
    add-int/lit8 v29, v3, 0x1

    .end local v3    # "bufIndex":I
    .restart local v29    # "bufIndex":I
    sget-object v30, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v31, v7, 0xc

    and-int/lit8 v31, v31, 0xf

    aget-char v30, v30, v31

    aput-char v30, v12, v3

    .line 2007
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v29, 0x1

    .end local v29    # "bufIndex":I
    .restart local v12    # "bufIndex":I
    sget-object v30, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v31, v7, 0x8

    and-int/lit8 v31, v31, 0xf

    aget-char v30, v30, v31

    aput-char v30, v3, v29

    .line 2008
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v29, v12, 0x1

    .end local v12    # "bufIndex":I
    .restart local v29    # "bufIndex":I
    sget-object v30, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v31, v7, 0x4

    and-int/lit8 v31, v31, 0xf

    aget-char v30, v30, v31

    aput-char v30, v3, v12

    .line 2009
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v29, 0x1

    .end local v29    # "bufIndex":I
    .restart local v12    # "bufIndex":I
    sget-object v30, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v31, v7, 0xf

    aget-char v30, v30, v31

    aput-char v30, v3, v29

    .line 2010
    add-int/lit8 v15, v15, 0x5

    move v3, v12

    .line 1973
    .end local v7    # "ch":C
    .end local v12    # "bufIndex":I
    .restart local v3    # "bufIndex":I
    :goto_e
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_a

    :cond_21
    move/from16 v4, v17

    goto :goto_10

    .line 2020
    .end local v1    # "textIndex":I
    .end local v3    # "bufIndex":I
    .end local v4    # "i":I
    :cond_22
    :goto_f
    move/from16 v4, v17

    goto :goto_10

    .line 1901
    .end local v17    # "newcount":I
    .local v29, "newcount":I
    :cond_23
    move/from16 v4, v29

    .line 2020
    .end local v29    # "newcount":I
    .local v4, "newcount":I
    :goto_10
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    const/16 v7, 0x22

    aput-char v7, v1, v3

    .line 2021
    return-void
.end method

.method public writeFloat(FZ)V
    .locals 3
    .param p1, "value"    # F
    .param p2, "checkWriteClassName"    # Z

    .line 648
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    .line 649
    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 652
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    .line 653
    .local v0, "floatText":Ljava/lang/String;
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 654
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 656
    :cond_1
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 658
    if-eqz p2, :cond_3

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 659
    const/16 v1, 0x46

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_1

    .line 650
    .end local v0    # "floatText":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 662
    :cond_3
    :goto_1
    return-void
.end method

.method public writeHex([B)V
    .locals 14
    .param p1, "bytes"    # [B

    .line 602
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x3

    .line 603
    .local v0, "newcount":I
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    const/16 v2, 0x78

    const/16 v3, 0x30

    const/16 v4, 0x37

    const/16 v5, 0xa

    const/16 v6, 0x27

    if-le v0, v1, :cond_4

    .line 604
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v1, :cond_3

    .line 605
    array-length v1, p1

    add-int/lit8 v1, v1, 0x3

    new-array v1, v1, [C

    .line 606
    .local v1, "chars":[C
    const/4 v7, 0x0

    .line 607
    .local v7, "pos":I
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "pos":I
    .local v8, "pos":I
    aput-char v2, v1, v7

    .line 608
    add-int/lit8 v2, v8, 0x1

    .end local v8    # "pos":I
    .local v2, "pos":I
    aput-char v6, v1, v8

    .line 610
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v8, p1

    if-ge v7, v8, :cond_2

    .line 611
    aget-byte v8, p1, v7

    .line 613
    .local v8, "b":B
    and-int/lit16 v9, v8, 0xff

    .line 614
    .local v9, "a":I
    shr-int/lit8 v10, v9, 0x4

    .line 615
    .local v10, "b0":I
    and-int/lit8 v11, v9, 0xf

    .line 617
    .local v11, "b1":I
    add-int/lit8 v12, v2, 0x1

    .end local v2    # "pos":I
    .local v12, "pos":I
    if-ge v10, v5, :cond_0

    const/16 v13, 0x30

    goto :goto_1

    :cond_0
    const/16 v13, 0x37

    :goto_1
    add-int/2addr v13, v10

    int-to-char v13, v13

    aput-char v13, v1, v2

    .line 618
    add-int/lit8 v2, v12, 0x1

    .end local v12    # "pos":I
    .restart local v2    # "pos":I
    if-ge v11, v5, :cond_1

    const/16 v13, 0x30

    goto :goto_2

    :cond_1
    const/16 v13, 0x37

    :goto_2
    add-int/2addr v13, v11

    int-to-char v13, v13

    aput-char v13, v1, v12

    .line 610
    .end local v8    # "b":B
    .end local v9    # "a":I
    .end local v10    # "b0":I
    .end local v11    # "b1":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 620
    .end local v7    # "i":I
    :cond_2
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pos":I
    .local v3, "pos":I
    aput-char v6, v1, v2

    .line 622
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v2, v1}, Ljava/io/Writer;->write([C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    nop

    .line 626
    return-void

    .line 623
    :catch_0
    move-exception v2

    .line 624
    .local v2, "ex":Ljava/io/IOException;
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "writeBytes error."

    invoke-direct {v4, v5, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 628
    .end local v1    # "chars":[C
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v3    # "pos":I
    :cond_3
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 631
    :cond_4
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v2, v1, v7

    .line 632
    add-int/lit8 v2, v8, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v6, v1, v8

    .line 634
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    array-length v2, p1

    if-ge v1, v2, :cond_7

    .line 635
    aget-byte v2, p1, v1

    .line 637
    .local v2, "b":B
    and-int/lit16 v7, v2, 0xff

    .line 638
    .local v7, "a":I
    shr-int/lit8 v8, v7, 0x4

    .line 639
    .local v8, "b0":I
    and-int/lit8 v9, v7, 0xf

    .line 641
    .local v9, "b1":I
    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    if-ge v8, v5, :cond_5

    const/16 v12, 0x30

    goto :goto_4

    :cond_5
    const/16 v12, 0x37

    :goto_4
    add-int/2addr v12, v8

    int-to-char v12, v12

    aput-char v12, v10, v11

    .line 642
    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    if-ge v9, v5, :cond_6

    const/16 v12, 0x30

    goto :goto_5

    :cond_6
    const/16 v12, 0x37

    :goto_5
    add-int/2addr v12, v9

    int-to-char v12, v12

    aput-char v12, v10, v11

    .line 634
    .end local v2    # "b":B
    .end local v7    # "a":I
    .end local v8    # "b0":I
    .end local v9    # "b1":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 644
    .end local v1    # "i":I
    :cond_7
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v6, v1, v2

    .line 645
    return-void
.end method

.method public writeInt(I)V
    .locals 5
    .param p1, "i"    # I

    .line 493
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    .line 494
    const-string v0, "-2147483648"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 495
    return-void

    .line 498
    :cond_0
    if-gez p1, :cond_1

    neg-int v0, p1

    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v0

    .line 500
    .local v0, "size":I
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v1, v0

    .line 501
    .local v1, "newcount":I
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v1, v2, :cond_3

    .line 502
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v2, :cond_2

    .line 503
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_1

    .line 505
    :cond_2
    new-array v2, v0, [C

    .line 506
    .local v2, "chars":[C
    invoke-static {p1, v0, v2}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 507
    const/4 v3, 0x0

    array-length v4, v2

    invoke-virtual {p0, v2, v3, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    .line 508
    return-void

    .line 512
    .end local v2    # "chars":[C
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p1, v1, v2}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 514
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 515
    return-void
.end method

.method public writeLong(J)V
    .locals 7
    .param p1, "i"    # J

    .line 706
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 707
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-nez v0, :cond_1

    const-wide v3, 0x1fffffffffffffL

    cmp-long v0, p1, v3

    if-gtz v0, :cond_0

    const-wide v3, -0x1fffffffffffffL

    cmp-long v0, p1, v3

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 710
    .local v0, "needQuotationMark":Z
    :goto_0
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, p1, v3

    if-nez v5, :cond_3

    .line 711
    if-eqz v0, :cond_2

    const-string v1, "\"-9223372036854775808\""

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 712
    :cond_2
    const-string v1, "-9223372036854775808"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 713
    :goto_1
    return-void

    .line 716
    :cond_3
    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-gez v5, :cond_4

    neg-long v3, p1

    invoke-static {v3, v4}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v3

    add-int/2addr v3, v2

    goto :goto_2

    :cond_4
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v3

    :goto_2
    move v2, v3

    .line 718
    .local v2, "size":I
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v3, v2

    .line 719
    .local v3, "newcount":I
    if-eqz v0, :cond_5

    add-int/lit8 v3, v3, 0x2

    .line 720
    :cond_5
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v4, v4

    const/16 v5, 0x22

    if-le v3, v4, :cond_8

    .line 721
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v4, :cond_6

    .line 722
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_4

    .line 724
    :cond_6
    new-array v4, v2, [C

    .line 725
    .local v4, "chars":[C
    invoke-static {p1, p2, v2, v4}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    .line 726
    if-eqz v0, :cond_7

    .line 727
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 728
    array-length v6, v4

    invoke-virtual {p0, v4, v1, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    .line 729
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_3

    .line 731
    :cond_7
    array-length v5, v4

    invoke-virtual {p0, v4, v1, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    .line 733
    :goto_3
    return-void

    .line 737
    .end local v4    # "chars":[C
    :cond_8
    :goto_4
    if-eqz v0, :cond_9

    .line 738
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v5, v1, v4

    .line 739
    add-int/lit8 v4, v3, -0x1

    invoke-static {p1, p2, v4, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    .line 740
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v3, -0x1

    aput-char v5, v1, v4

    goto :goto_5

    .line 742
    :cond_9
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p1, p2, v3, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    .line 745
    :goto_5
    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 746
    return-void
.end method

.method public writeNull()V
    .locals 1

    .line 749
    const-string v0, "null"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 750
    return-void
.end method

.method public writeNull(II)V
    .locals 1
    .param p1, "beanFeatures"    # I
    .param p2, "feature"    # I

    .line 757
    and-int v0, p1, p2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    .line 759
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 760
    return-void

    .line 763
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    if-ne p2, v0, :cond_1

    .line 764
    const-string v0, "[]"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 765
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    if-ne p2, v0, :cond_2

    .line 766
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 767
    :cond_2
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    if-ne p2, v0, :cond_3

    .line 768
    const-string v0, "false"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 769
    :cond_3
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    if-ne p2, v0, :cond_4

    .line 770
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0

    .line 772
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 774
    :goto_0
    return-void
.end method

.method public writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 2
    .param p1, "feature"    # Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 753
    iget v0, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(II)V

    .line 754
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 2110
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v0, :cond_0

    .line 2111
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    goto :goto_0

    .line 2113
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 2115
    :goto_0
    return-void
.end method

.method public writeString(Ljava/lang/String;C)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "seperator"    # C

    .line 2101
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v0, :cond_0

    .line 2102
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    .line 2103
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0

    .line 2105
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 2107
    :goto_0
    return-void
.end method

.method public writeString([C)V
    .locals 2
    .param p1, "chars"    # [C

    .line 2118
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v0, :cond_0

    .line 2119
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote([C)V

    goto :goto_0

    .line 2121
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    .line 2122
    .local v0, "text":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 2124
    .end local v0    # "text":Ljava/lang/String;
    :goto_0
    return-void
.end method

.method public writeStringWithDoubleQuote(Ljava/lang/String;C)V
    .locals 27
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "seperator"    # C

    .line 777
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    if-nez v1, :cond_1

    .line 778
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 779
    if-eqz v2, :cond_0

    .line 780
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 782
    :cond_0
    return-void

    .line 785
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 786
    .local v3, "len":I
    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x2

    .line 787
    .local v4, "newcount":I
    if-eqz v2, :cond_2

    .line 788
    add-int/lit8 v4, v4, 0x1

    .line 791
    :cond_2
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v5, v5

    const/16 v6, 0x3e

    const/16 v7, 0x3c

    const/16 v8, 0x29

    const/16 v9, 0x28

    const/16 v13, 0x22

    const/16 v14, 0xc

    const/16 v15, 0x8

    const/16 v10, 0x75

    const/16 v12, 0x5c

    if-le v4, v5, :cond_10

    .line 792
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v5, :cond_f

    .line 793
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 795
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v5, v11, :cond_d

    .line 796
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 798
    .local v11, "ch":C
    sget-object v13, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 799
    if-eq v11, v9, :cond_3

    if-eq v11, v8, :cond_3

    if-eq v11, v7, :cond_3

    if-ne v11, v6, :cond_4

    .line 800
    :cond_3
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 801
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 802
    sget-object v13, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v21, v11, 0xc

    and-int/lit8 v21, v21, 0xf

    aget-char v13, v13, v21

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 803
    sget-object v13, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v21, v11, 0x8

    and-int/lit8 v21, v21, 0xf

    aget-char v13, v13, v21

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 804
    sget-object v13, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v21, v11, 0x4

    and-int/lit8 v21, v21, 0xf

    aget-char v13, v13, v21

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 805
    sget-object v13, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v21, v11, 0xf

    aget-char v13, v13, v21

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 806
    goto/16 :goto_2

    .line 810
    :cond_4
    sget-object v13, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 811
    if-eq v11, v15, :cond_7

    if-eq v11, v14, :cond_7

    const/16 v13, 0xa

    if-eq v11, v13, :cond_7

    const/16 v13, 0xd

    if-eq v11, v13, :cond_7

    const/16 v13, 0x9

    if-eq v11, v13, :cond_7

    const/16 v13, 0x22

    if-eq v11, v13, :cond_7

    const/16 v13, 0x2f

    if-eq v11, v13, :cond_7

    if-ne v11, v12, :cond_5

    goto :goto_1

    .line 824
    :cond_5
    const/16 v13, 0x20

    if-ge v11, v13, :cond_6

    .line 825
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 826
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 827
    const/16 v13, 0x30

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 828
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 829
    sget-object v13, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v21, v11, 0x2

    aget-char v13, v13, v21

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 830
    sget-object v13, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v21, v11, 0x2

    const/16 v19, 0x1

    add-int/lit8 v21, v21, 0x1

    aget-char v13, v13, v21

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 831
    goto/16 :goto_2

    .line 834
    :cond_6
    const/16 v13, 0x7f

    if-lt v11, v13, :cond_c

    .line 835
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 836
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 837
    sget-object v13, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v21, v11, 0xc

    and-int/lit8 v21, v21, 0xf

    aget-char v13, v13, v21

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 838
    sget-object v13, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v21, v11, 0x8

    and-int/lit8 v21, v21, 0xf

    aget-char v13, v13, v21

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 839
    sget-object v13, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v21, v11, 0x4

    and-int/lit8 v21, v21, 0xf

    aget-char v13, v13, v21

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 840
    sget-object v13, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v21, v11, 0xf

    aget-char v13, v13, v21

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 841
    goto :goto_2

    .line 819
    :cond_7
    :goto_1
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 820
    sget-object v13, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v13, v13, v11

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 821
    goto :goto_2

    .line 844
    :cond_8
    sget-object v13, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v13, v13

    if-ge v11, v13, :cond_9

    sget-object v13, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v13, v13, v11

    if-nez v13, :cond_a

    :cond_9
    const/16 v13, 0x2f

    if-ne v11, v13, :cond_c

    sget-object v13, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 846
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 847
    :cond_a
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 848
    sget-object v13, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v13, v13, v11

    const/4 v6, 0x4

    if-ne v13, v6, :cond_b

    .line 849
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 850
    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v13, v11, 0xc

    and-int/lit8 v13, v13, 0xf

    aget-char v6, v6, v13

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 851
    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v13, v11, 0x8

    and-int/lit8 v13, v13, 0xf

    aget-char v6, v6, v13

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 852
    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v13, v11, 0x4

    and-int/lit8 v13, v13, 0xf

    aget-char v6, v6, v13

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 853
    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v13, v11, 0xf

    aget-char v6, v6, v13

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_2

    .line 855
    :cond_b
    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v6, v6, v11

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 857
    goto :goto_2

    .line 861
    :cond_c
    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 795
    .end local v11    # "ch":C
    :goto_2
    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x3e

    const/16 v13, 0x22

    goto/16 :goto_0

    .line 864
    .end local v5    # "i":I
    :cond_d
    const/16 v5, 0x22

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 865
    if-eqz v2, :cond_e

    .line 866
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 868
    :cond_e
    return-void

    .line 870
    :cond_f
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 873
    :cond_10
    iget v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v6, v5, 0x1

    .line 874
    .local v6, "start":I
    add-int v11, v6, v3

    .line 876
    .local v11, "end":I
    iget-object v13, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v20, 0x22

    aput-char v20, v13, v5

    .line 877
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3, v13, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 879
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 881
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 882
    const/4 v5, -0x1

    .line 884
    .local v5, "lastSpecialIndex":I
    move v7, v6

    .local v7, "i":I
    :goto_3
    if-ge v7, v11, :cond_17

    .line 885
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v8, v8, v7

    .line 887
    .local v8, "ch":C
    const/16 v9, 0x22

    if-eq v8, v9, :cond_15

    const/16 v9, 0x2f

    if-eq v8, v9, :cond_15

    if-ne v8, v12, :cond_11

    goto :goto_5

    .line 895
    :cond_11
    if-eq v8, v15, :cond_14

    if-eq v8, v14, :cond_14

    const/16 v9, 0xa

    if-eq v8, v9, :cond_14

    const/16 v9, 0xd

    if-eq v8, v9, :cond_14

    const/16 v9, 0x9

    if-ne v8, v9, :cond_12

    goto :goto_4

    .line 905
    :cond_12
    const/16 v9, 0x20

    if-ge v8, v9, :cond_13

    .line 906
    move v5, v7

    .line 907
    add-int/lit8 v4, v4, 0x5

    .line 908
    goto :goto_6

    .line 911
    :cond_13
    const/16 v9, 0x7f

    if-lt v8, v9, :cond_16

    .line 912
    move v5, v7

    .line 913
    add-int/lit8 v4, v4, 0x5

    .line 914
    goto :goto_6

    .line 900
    :cond_14
    :goto_4
    move v5, v7

    .line 901
    add-int/lit8 v4, v4, 0x1

    .line 902
    goto :goto_6

    .line 890
    :cond_15
    :goto_5
    move v5, v7

    .line 891
    add-int/lit8 v4, v4, 0x1

    .line 892
    nop

    .line 884
    .end local v8    # "ch":C
    :cond_16
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 918
    .end local v7    # "i":I
    :cond_17
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v7, v7

    if-le v4, v7, :cond_18

    .line 919
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 921
    :cond_18
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 923
    move v7, v5

    .restart local v7    # "i":I
    :goto_7
    if-lt v7, v6, :cond_1f

    .line 924
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v9, v8, v7

    .line 926
    .local v9, "ch":C
    if-eq v9, v15, :cond_1d

    if-eq v9, v14, :cond_1d

    const/16 v13, 0xa

    if-eq v9, v13, :cond_1d

    const/16 v13, 0xd

    if-eq v9, v13, :cond_1d

    const/16 v13, 0x9

    if-ne v9, v13, :cond_19

    goto/16 :goto_9

    .line 938
    :cond_19
    const/16 v13, 0x22

    if-eq v9, v13, :cond_1c

    const/16 v13, 0x2f

    if-eq v9, v13, :cond_1c

    if-ne v9, v12, :cond_1a

    goto/16 :goto_8

    .line 948
    :cond_1a
    const/16 v13, 0x20

    if-ge v9, v13, :cond_1b

    .line 949
    add-int/lit8 v13, v7, 0x1

    add-int/lit8 v14, v7, 0x6

    sub-int v18, v11, v7

    const/16 v19, 0x1

    add-int/lit8 v15, v18, -0x1

    invoke-static {v8, v13, v8, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 950
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v12, v8, v7

    .line 951
    add-int/lit8 v13, v7, 0x1

    aput-char v10, v8, v13

    .line 952
    add-int/lit8 v13, v7, 0x2

    const/16 v14, 0x30

    aput-char v14, v8, v13

    .line 953
    add-int/lit8 v13, v7, 0x3

    aput-char v14, v8, v13

    .line 954
    add-int/lit8 v13, v7, 0x4

    sget-object v14, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v15, v9, 0x2

    aget-char v14, v14, v15

    aput-char v14, v8, v13

    .line 955
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v13, v7, 0x5

    sget-object v14, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v15, v9, 0x2

    const/16 v18, 0x1

    add-int/lit8 v15, v15, 0x1

    aget-char v14, v14, v15

    aput-char v14, v8, v13

    .line 956
    add-int/lit8 v11, v11, 0x5

    .line 957
    goto/16 :goto_a

    .line 960
    :cond_1b
    const/16 v13, 0x7f

    if-lt v9, v13, :cond_1e

    .line 961
    add-int/lit8 v13, v7, 0x1

    add-int/lit8 v14, v7, 0x6

    sub-int v15, v11, v7

    const/16 v18, 0x1

    add-int/lit8 v15, v15, -0x1

    invoke-static {v8, v13, v8, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 962
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v12, v8, v7

    .line 963
    add-int/lit8 v13, v7, 0x1

    aput-char v10, v8, v13

    .line 964
    add-int/lit8 v13, v7, 0x2

    sget-object v14, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v15, v9, 0xc

    and-int/lit8 v15, v15, 0xf

    aget-char v14, v14, v15

    aput-char v14, v8, v13

    .line 965
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v13, v7, 0x3

    sget-object v14, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v15, v9, 0x8

    and-int/lit8 v15, v15, 0xf

    aget-char v14, v14, v15

    aput-char v14, v8, v13

    .line 966
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v13, v7, 0x4

    sget-object v14, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v15, v9, 0x4

    and-int/lit8 v15, v15, 0xf

    aget-char v14, v14, v15

    aput-char v14, v8, v13

    .line 967
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v13, v7, 0x5

    sget-object v14, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v15, v9, 0xf

    aget-char v14, v14, v15

    aput-char v14, v8, v13

    .line 968
    add-int/lit8 v11, v11, 0x5

    goto :goto_a

    .line 941
    :cond_1c
    :goto_8
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v13, v7, 0x1

    add-int/lit8 v14, v7, 0x2

    sub-int v15, v11, v7

    const/16 v18, 0x1

    add-int/lit8 v15, v15, -0x1

    invoke-static {v8, v13, v8, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 942
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v12, v8, v7

    .line 943
    add-int/lit8 v13, v7, 0x1

    aput-char v9, v8, v13

    .line 944
    add-int/lit8 v11, v11, 0x1

    .line 945
    goto :goto_a

    .line 931
    :cond_1d
    :goto_9
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v13, v7, 0x1

    add-int/lit8 v14, v7, 0x2

    sub-int v15, v11, v7

    const/16 v18, 0x1

    add-int/lit8 v15, v15, -0x1

    invoke-static {v8, v13, v8, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 932
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v12, v8, v7

    .line 933
    add-int/lit8 v13, v7, 0x1

    sget-object v14, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v14, v14, v9

    aput-char v14, v8, v13

    .line 934
    add-int/lit8 v11, v11, 0x1

    .line 935
    nop

    .line 923
    .end local v9    # "ch":C
    :cond_1e
    :goto_a
    add-int/lit8 v7, v7, -0x1

    const/16 v14, 0xc

    const/16 v15, 0x8

    goto/16 :goto_7

    .line 972
    .end local v7    # "i":I
    :cond_1f
    if-eqz v2, :cond_20

    .line 973
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v9, v8, -0x2

    const/16 v10, 0x22

    aput-char v10, v7, v9

    .line 974
    const/4 v9, 0x1

    sub-int/2addr v8, v9

    aput-char v2, v7, v8

    goto :goto_b

    .line 976
    :cond_20
    const/4 v9, 0x1

    const/16 v10, 0x22

    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v8, v9

    aput-char v10, v7, v8

    .line 979
    :goto_b
    return-void

    .line 982
    .end local v5    # "lastSpecialIndex":I
    :cond_21
    const/4 v5, 0x0

    .line 983
    .local v5, "specialCount":I
    const/4 v13, -0x1

    .line 984
    .local v13, "lastSpecialIndex":I
    const/4 v14, -0x1

    .line 985
    .local v14, "firstSpecialIndex":I
    const/4 v15, 0x0

    .line 987
    .local v15, "lastSpecial":C
    move/from16 v22, v6

    move/from16 v10, v22

    .local v10, "i":I
    :goto_c
    const/16 v8, 0x2028

    if-ge v10, v11, :cond_2d

    .line 988
    iget-object v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v9, v9, v10

    .line 990
    .restart local v9    # "ch":C
    const/16 v12, 0x5d

    const/4 v7, -0x1

    if-lt v9, v12, :cond_25

    .line 991
    const/16 v12, 0x7f

    if-lt v9, v12, :cond_24

    if-eq v9, v8, :cond_22

    const/16 v8, 0x2029

    if-eq v9, v8, :cond_22

    const/16 v8, 0xa0

    if-ge v9, v8, :cond_24

    .line 995
    :cond_22
    if-ne v14, v7, :cond_23

    .line 996
    move v14, v10

    .line 999
    :cond_23
    add-int/lit8 v5, v5, 0x1

    .line 1000
    move v7, v10

    .line 1001
    .end local v13    # "lastSpecialIndex":I
    .local v7, "lastSpecialIndex":I
    move v8, v9

    .line 1002
    .end local v15    # "lastSpecial":C
    .local v8, "lastSpecial":C
    add-int/lit8 v4, v4, 0x4

    move v13, v7

    move v15, v8

    goto/16 :goto_10

    .line 991
    .end local v7    # "lastSpecialIndex":I
    .end local v8    # "lastSpecial":C
    .restart local v13    # "lastSpecialIndex":I
    .restart local v15    # "lastSpecial":C
    :cond_24
    move/from16 v24, v13

    goto :goto_f

    .line 1007
    :cond_25
    const/16 v12, 0x7f

    const/16 v8, 0x40

    if-ge v9, v8, :cond_26

    move/from16 v24, v13

    .end local v13    # "lastSpecialIndex":I
    .local v24, "lastSpecialIndex":I
    iget-wide v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sepcialBits:J

    const-wide/16 v25, 0x1

    shl-long v25, v25, v9

    and-long v12, v12, v25

    const-wide/16 v25, 0x0

    cmp-long v8, v12, v25

    if-nez v8, :cond_27

    goto :goto_d

    .end local v24    # "lastSpecialIndex":I
    .restart local v13    # "lastSpecialIndex":I
    :cond_26
    move/from16 v24, v13

    .end local v13    # "lastSpecialIndex":I
    .restart local v24    # "lastSpecialIndex":I
    :goto_d
    const/16 v8, 0x5c

    if-ne v9, v8, :cond_28

    :cond_27
    const/4 v8, 0x1

    goto :goto_e

    :cond_28
    const/4 v8, 0x0

    .line 1008
    .local v8, "special":Z
    :goto_e
    if-eqz v8, :cond_2c

    .line 1009
    add-int/lit8 v5, v5, 0x1

    .line 1010
    move v12, v10

    .line 1011
    .end local v24    # "lastSpecialIndex":I
    .local v12, "lastSpecialIndex":I
    move v13, v9

    .line 1013
    .end local v15    # "lastSpecial":C
    .local v13, "lastSpecial":C
    const/16 v15, 0x28

    if-eq v9, v15, :cond_29

    const/16 v15, 0x29

    if-eq v9, v15, :cond_29

    const/16 v15, 0x3c

    if-eq v9, v15, :cond_29

    const/16 v15, 0x3e

    if-eq v9, v15, :cond_29

    sget-object v15, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v15, v15

    if-ge v9, v15, :cond_2a

    sget-object v15, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v15, v15, v9

    const/4 v7, 0x4

    if-ne v15, v7, :cond_2a

    .line 1020
    :cond_29
    add-int/lit8 v4, v4, 0x4

    .line 1023
    :cond_2a
    const/4 v7, -0x1

    if-ne v14, v7, :cond_2b

    .line 1024
    move v7, v10

    move v14, v7

    move v15, v13

    move v13, v12

    .end local v14    # "firstSpecialIndex":I
    .local v7, "firstSpecialIndex":I
    goto :goto_10

    .line 1023
    .end local v7    # "firstSpecialIndex":I
    .restart local v14    # "firstSpecialIndex":I
    :cond_2b
    move v15, v13

    move v13, v12

    goto :goto_10

    .line 987
    .end local v8    # "special":Z
    .end local v9    # "ch":C
    .end local v12    # "lastSpecialIndex":I
    .local v13, "lastSpecialIndex":I
    .restart local v15    # "lastSpecial":C
    :cond_2c
    :goto_f
    move/from16 v13, v24

    :goto_10
    add-int/lit8 v10, v10, 0x1

    const/16 v7, 0x3c

    const/16 v8, 0x29

    const/16 v9, 0x28

    const/16 v12, 0x5c

    goto/16 :goto_c

    :cond_2d
    move/from16 v24, v13

    .line 1029
    .end local v10    # "i":I
    .end local v13    # "lastSpecialIndex":I
    .restart local v24    # "lastSpecialIndex":I
    if-lez v5, :cond_40

    .line 1030
    add-int/2addr v4, v5

    .line 1031
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v7, v7

    if-le v4, v7, :cond_2e

    .line 1032
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1034
    :cond_2e
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1036
    const/4 v7, 0x1

    if-ne v5, v7, :cond_34

    .line 1037
    const/16 v7, 0x32

    if-ne v15, v8, :cond_2f

    .line 1038
    add-int/lit8 v13, v24, 0x1

    .line 1039
    .local v13, "srcPos":I
    add-int/lit8 v8, v24, 0x6

    .line 1040
    .local v8, "destPos":I
    sub-int v9, v11, v24

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    .line 1041
    .local v9, "LengthOfCopy":I
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v10, v13, v10, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1042
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v12, 0x5c

    aput-char v12, v10, v24

    .line 1043
    add-int/lit8 v12, v24, 0x1

    const/16 v16, 0x75

    .end local v24    # "lastSpecialIndex":I
    .restart local v12    # "lastSpecialIndex":I
    aput-char v16, v10, v12

    .line 1044
    const/16 v16, 0x1

    add-int/lit8 v12, v12, 0x1

    aput-char v7, v10, v12

    .line 1045
    add-int/lit8 v12, v12, 0x1

    const/16 v17, 0x30

    aput-char v17, v10, v12

    .line 1046
    add-int/lit8 v12, v12, 0x1

    aput-char v7, v10, v12

    .line 1047
    add-int/lit8 v7, v12, 0x1

    .end local v12    # "lastSpecialIndex":I
    .local v7, "lastSpecialIndex":I
    const/16 v12, 0x38

    aput-char v12, v10, v7

    .line 1048
    .end local v8    # "destPos":I
    .end local v9    # "LengthOfCopy":I
    .end local v13    # "srcPos":I
    move v13, v7

    goto/16 :goto_18

    .end local v7    # "lastSpecialIndex":I
    .restart local v24    # "lastSpecialIndex":I
    :cond_2f
    const/16 v8, 0x2029

    if-ne v15, v8, :cond_30

    .line 1049
    add-int/lit8 v13, v24, 0x1

    .line 1050
    .restart local v13    # "srcPos":I
    add-int/lit8 v8, v24, 0x6

    .line 1051
    .restart local v8    # "destPos":I
    sub-int v9, v11, v24

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    .line 1052
    .restart local v9    # "LengthOfCopy":I
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v10, v13, v10, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1053
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v12, 0x5c

    aput-char v12, v10, v24

    .line 1054
    add-int/lit8 v12, v24, 0x1

    const/16 v16, 0x75

    .end local v24    # "lastSpecialIndex":I
    .restart local v12    # "lastSpecialIndex":I
    aput-char v16, v10, v12

    .line 1055
    const/16 v16, 0x1

    add-int/lit8 v12, v12, 0x1

    aput-char v7, v10, v12

    .line 1056
    add-int/lit8 v12, v12, 0x1

    const/16 v17, 0x30

    aput-char v17, v10, v12

    .line 1057
    add-int/lit8 v12, v12, 0x1

    aput-char v7, v10, v12

    .line 1058
    add-int/lit8 v7, v12, 0x1

    .end local v12    # "lastSpecialIndex":I
    .restart local v7    # "lastSpecialIndex":I
    const/16 v12, 0x39

    aput-char v12, v10, v7

    .line 1059
    .end local v8    # "destPos":I
    .end local v9    # "LengthOfCopy":I
    .end local v13    # "srcPos":I
    move v13, v7

    goto/16 :goto_18

    .end local v7    # "lastSpecialIndex":I
    .restart local v24    # "lastSpecialIndex":I
    :cond_30
    const/16 v7, 0x28

    if-eq v15, v7, :cond_33

    const/16 v7, 0x29

    if-eq v15, v7, :cond_33

    const/16 v7, 0x3c

    if-eq v15, v7, :cond_33

    const/16 v7, 0x3e

    if-ne v15, v7, :cond_31

    goto/16 :goto_12

    .line 1073
    :cond_31
    move v7, v15

    .line 1074
    .local v7, "ch":C
    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v8, v8

    if-ge v7, v8, :cond_32

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v8, v8, v7

    const/4 v9, 0x4

    if-ne v8, v9, :cond_32

    .line 1076
    add-int/lit8 v13, v24, 0x1

    .line 1077
    .restart local v13    # "srcPos":I
    add-int/lit8 v8, v24, 0x6

    .line 1078
    .restart local v8    # "destPos":I
    sub-int v9, v11, v24

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    .line 1079
    .restart local v9    # "LengthOfCopy":I
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v10, v13, v10, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1081
    move/from16 v10, v24

    .line 1082
    .local v10, "bufIndex":I
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v10, 0x1

    const/16 v17, 0x5c

    .end local v10    # "bufIndex":I
    .local v16, "bufIndex":I
    aput-char v17, v12, v10

    .line 1083
    add-int/lit8 v10, v16, 0x1

    const/16 v17, 0x75

    .end local v16    # "bufIndex":I
    .restart local v10    # "bufIndex":I
    aput-char v17, v12, v16

    .line 1084
    add-int/lit8 v16, v10, 0x1

    .end local v10    # "bufIndex":I
    .restart local v16    # "bufIndex":I
    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v18, v7, 0xc

    and-int/lit8 v18, v18, 0xf

    aget-char v17, v17, v18

    aput-char v17, v12, v10

    .line 1085
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v16, 0x1

    .end local v16    # "bufIndex":I
    .local v12, "bufIndex":I
    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v18, v7, 0x8

    and-int/lit8 v18, v18, 0xf

    aget-char v17, v17, v18

    aput-char v17, v10, v16

    .line 1086
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v12, 0x1

    .end local v12    # "bufIndex":I
    .restart local v16    # "bufIndex":I
    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v18, v7, 0x4

    and-int/lit8 v18, v18, 0xf

    aget-char v17, v17, v18

    aput-char v17, v10, v12

    .line 1087
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v16, 0x1

    .end local v16    # "bufIndex":I
    .restart local v12    # "bufIndex":I
    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v18, v7, 0xf

    aget-char v17, v17, v18

    aput-char v17, v10, v16

    .line 1088
    .end local v8    # "destPos":I
    .end local v9    # "LengthOfCopy":I
    .end local v12    # "bufIndex":I
    .end local v13    # "srcPos":I
    move/from16 v13, v24

    goto :goto_11

    .line 1089
    :cond_32
    add-int/lit8 v13, v24, 0x1

    .line 1090
    .restart local v13    # "srcPos":I
    add-int/lit8 v8, v24, 0x2

    .line 1091
    .restart local v8    # "destPos":I
    sub-int v9, v11, v24

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    .line 1092
    .restart local v9    # "LengthOfCopy":I
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v10, v13, v10, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1093
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v12, 0x5c

    aput-char v12, v10, v24

    .line 1094
    add-int/lit8 v12, v24, 0x1

    .end local v24    # "lastSpecialIndex":I
    .local v12, "lastSpecialIndex":I
    sget-object v16, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v16, v16, v7

    aput-char v16, v10, v12

    move v13, v12

    .line 1096
    .end local v7    # "ch":C
    .end local v8    # "destPos":I
    .end local v9    # "LengthOfCopy":I
    .end local v12    # "lastSpecialIndex":I
    .local v13, "lastSpecialIndex":I
    :goto_11
    goto/16 :goto_18

    .line 1060
    .end local v13    # "lastSpecialIndex":I
    .restart local v24    # "lastSpecialIndex":I
    :cond_33
    :goto_12
    add-int/lit8 v13, v24, 0x1

    .line 1061
    .local v13, "srcPos":I
    add-int/lit8 v7, v24, 0x6

    .line 1062
    .local v7, "destPos":I
    sub-int v8, v11, v24

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    .line 1063
    .local v8, "LengthOfCopy":I
    iget-object v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v9, v13, v9, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1064
    iget-object v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v10, 0x5c

    aput-char v10, v9, v24

    .line 1065
    add-int/lit8 v10, v24, 0x1

    const/16 v12, 0x75

    .end local v24    # "lastSpecialIndex":I
    .local v10, "lastSpecialIndex":I
    aput-char v12, v9, v10

    .line 1067
    move v12, v15

    .line 1068
    .local v12, "ch":C
    move/from16 v16, v8

    const/4 v8, 0x1

    .end local v8    # "LengthOfCopy":I
    .local v16, "LengthOfCopy":I
    add-int/2addr v10, v8

    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v18, v12, 0xc

    and-int/lit8 v18, v18, 0xf

    aget-char v17, v17, v18

    aput-char v17, v9, v10

    .line 1069
    iget-object v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/2addr v10, v8

    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v18, v12, 0x8

    and-int/lit8 v18, v18, 0xf

    aget-char v17, v17, v18

    aput-char v17, v9, v10

    .line 1070
    iget-object v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/2addr v10, v8

    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v18, v12, 0x4

    and-int/lit8 v18, v18, 0xf

    aget-char v17, v17, v18

    aput-char v17, v9, v10

    .line 1071
    iget-object v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/2addr v10, v8

    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v18, v12, 0xf

    aget-char v17, v17, v18

    aput-char v17, v9, v10

    .line 1072
    .end local v7    # "destPos":I
    .end local v12    # "ch":C
    .end local v13    # "srcPos":I
    .end local v16    # "LengthOfCopy":I
    move v13, v10

    goto/16 :goto_18

    .line 1097
    .end local v10    # "lastSpecialIndex":I
    .restart local v24    # "lastSpecialIndex":I
    :cond_34
    const/16 v7, 0x2028

    const/4 v8, 0x1

    if-le v5, v8, :cond_3f

    .line 1098
    sub-int v8, v14, v6

    .line 1099
    .local v8, "textIndex":I
    move v9, v14

    .line 1100
    .local v9, "bufIndex":I
    move v10, v8

    .local v10, "i":I
    :goto_13
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v10, v12, :cond_3e

    .line 1101
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 1103
    .restart local v12    # "ch":C
    iget-boolean v13, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->browserSecure:Z

    if-eqz v13, :cond_36

    const/16 v13, 0x28

    if-eq v12, v13, :cond_35

    const/16 v13, 0x29

    if-eq v12, v13, :cond_35

    const/16 v13, 0x3c

    if-eq v12, v13, :cond_35

    const/16 v13, 0x3e

    if-ne v12, v13, :cond_36

    goto :goto_14

    :cond_35
    const/16 v13, 0x3e

    .line 1107
    :goto_14
    iget-object v13, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v9, 0x1

    const/16 v17, 0x5c

    .end local v9    # "bufIndex":I
    .local v16, "bufIndex":I
    aput-char v17, v13, v9

    .line 1108
    add-int/lit8 v9, v16, 0x1

    const/16 v17, 0x75

    .end local v16    # "bufIndex":I
    .restart local v9    # "bufIndex":I
    aput-char v17, v13, v16

    .line 1109
    add-int/lit8 v16, v9, 0x1

    .end local v9    # "bufIndex":I
    .restart local v16    # "bufIndex":I
    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v25, v12, 0xc

    and-int/lit8 v25, v25, 0xf

    aget-char v17, v17, v25

    aput-char v17, v13, v9

    .line 1110
    iget-object v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v13, v16, 0x1

    .end local v16    # "bufIndex":I
    .local v13, "bufIndex":I
    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v25, v12, 0x8

    and-int/lit8 v25, v25, 0xf

    aget-char v17, v17, v25

    aput-char v17, v9, v16

    .line 1111
    iget-object v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v13, 0x1

    .end local v13    # "bufIndex":I
    .restart local v16    # "bufIndex":I
    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v25, v12, 0x4

    and-int/lit8 v25, v25, 0xf

    aget-char v17, v17, v25

    aput-char v17, v9, v13

    .line 1112
    iget-object v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v13, v16, 0x1

    .end local v16    # "bufIndex":I
    .restart local v13    # "bufIndex":I
    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v25, v12, 0xf

    aget-char v17, v17, v25

    aput-char v17, v9, v16

    .line 1113
    add-int/lit8 v11, v11, 0x5

    move v9, v13

    const/4 v13, 0x4

    const/16 v18, 0x5c

    const/16 v22, 0x75

    goto/16 :goto_17

    .line 1114
    .end local v13    # "bufIndex":I
    .restart local v9    # "bufIndex":I
    :cond_36
    sget-object v13, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v13, v13

    if-ge v12, v13, :cond_37

    sget-object v13, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v13, v13, v12

    if-nez v13, :cond_38

    :cond_37
    const/16 v13, 0x2f

    if-ne v12, v13, :cond_3b

    sget-object v13, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 1116
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v13

    if-eqz v13, :cond_3a

    .line 1117
    :cond_38
    iget-object v13, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v9, 0x1

    const/16 v17, 0x5c

    .end local v9    # "bufIndex":I
    .restart local v16    # "bufIndex":I
    aput-char v17, v13, v9

    .line 1118
    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v9, v9, v12

    const/4 v13, 0x4

    if-ne v9, v13, :cond_39

    .line 1119
    iget-object v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v17, v16, 0x1

    const/16 v18, 0x75

    .end local v16    # "bufIndex":I
    .local v17, "bufIndex":I
    aput-char v18, v9, v16

    .line 1120
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "bufIndex":I
    .restart local v16    # "bufIndex":I
    sget-object v18, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v25, v12, 0xc

    and-int/lit8 v25, v25, 0xf

    aget-char v18, v18, v25

    aput-char v18, v9, v17

    .line 1121
    iget-object v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "bufIndex":I
    .restart local v17    # "bufIndex":I
    sget-object v18, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v25, v12, 0x8

    and-int/lit8 v25, v25, 0xf

    aget-char v18, v18, v25

    aput-char v18, v9, v16

    .line 1122
    iget-object v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v17, 0x1

    .end local v17    # "bufIndex":I
    .restart local v16    # "bufIndex":I
    sget-object v18, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v25, v12, 0x4

    and-int/lit8 v25, v25, 0xf

    aget-char v18, v18, v25

    aput-char v18, v9, v17

    .line 1123
    iget-object v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "bufIndex":I
    .restart local v17    # "bufIndex":I
    sget-object v18, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v25, v12, 0xf

    aget-char v18, v18, v25

    aput-char v18, v9, v16

    .line 1124
    add-int/lit8 v11, v11, 0x5

    move/from16 v9, v17

    const/16 v18, 0x5c

    const/16 v22, 0x75

    goto :goto_17

    .line 1126
    .end local v17    # "bufIndex":I
    .restart local v16    # "bufIndex":I
    :cond_39
    iget-object v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "bufIndex":I
    .restart local v17    # "bufIndex":I
    sget-object v18, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v18, v18, v12

    aput-char v18, v9, v16

    .line 1127
    add-int/lit8 v11, v11, 0x1

    move/from16 v9, v17

    const/16 v18, 0x5c

    const/16 v22, 0x75

    goto :goto_17

    .line 1116
    .end local v17    # "bufIndex":I
    .restart local v9    # "bufIndex":I
    :cond_3a
    const/4 v13, 0x4

    goto :goto_15

    .line 1114
    :cond_3b
    const/4 v13, 0x4

    .line 1130
    :goto_15
    if-eq v12, v7, :cond_3d

    const/16 v7, 0x2029

    if-ne v12, v7, :cond_3c

    goto :goto_16

    .line 1139
    :cond_3c
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v17, v9, 0x1

    .end local v9    # "bufIndex":I
    .restart local v17    # "bufIndex":I
    aput-char v12, v7, v9

    move/from16 v9, v17

    const/16 v18, 0x5c

    const/16 v22, 0x75

    goto :goto_17

    .line 1131
    .end local v17    # "bufIndex":I
    .restart local v9    # "bufIndex":I
    :cond_3d
    :goto_16
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v17, v9, 0x1

    const/16 v18, 0x5c

    .end local v9    # "bufIndex":I
    .restart local v17    # "bufIndex":I
    aput-char v18, v7, v9

    .line 1132
    add-int/lit8 v9, v17, 0x1

    const/16 v22, 0x75

    .end local v17    # "bufIndex":I
    .restart local v9    # "bufIndex":I
    aput-char v22, v7, v17

    .line 1133
    add-int/lit8 v17, v9, 0x1

    .end local v9    # "bufIndex":I
    .restart local v17    # "bufIndex":I
    sget-object v23, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v25, v12, 0xc

    and-int/lit8 v25, v25, 0xf

    aget-char v23, v23, v25

    aput-char v23, v7, v9

    .line 1134
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v9, v17, 0x1

    .end local v17    # "bufIndex":I
    .restart local v9    # "bufIndex":I
    sget-object v23, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v25, v12, 0x8

    and-int/lit8 v25, v25, 0xf

    aget-char v23, v23, v25

    aput-char v23, v7, v17

    .line 1135
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v17, v9, 0x1

    .end local v9    # "bufIndex":I
    .restart local v17    # "bufIndex":I
    sget-object v23, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v25, v12, 0x4

    and-int/lit8 v25, v25, 0xf

    aget-char v23, v23, v25

    aput-char v23, v7, v9

    .line 1136
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v9, v17, 0x1

    .end local v17    # "bufIndex":I
    .restart local v9    # "bufIndex":I
    sget-object v23, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v25, v12, 0xf

    aget-char v23, v23, v25

    aput-char v23, v7, v17

    .line 1137
    add-int/lit8 v11, v11, 0x5

    .line 1100
    .end local v12    # "ch":C
    :goto_17
    add-int/lit8 v10, v10, 0x1

    const/16 v7, 0x2028

    goto/16 :goto_13

    :cond_3e
    move/from16 v13, v24

    goto :goto_18

    .line 1097
    .end local v8    # "textIndex":I
    .end local v9    # "bufIndex":I
    .end local v10    # "i":I
    :cond_3f
    move/from16 v13, v24

    goto :goto_18

    .line 1029
    :cond_40
    move/from16 v13, v24

    .line 1146
    .end local v24    # "lastSpecialIndex":I
    .local v13, "lastSpecialIndex":I
    :goto_18
    if-eqz v2, :cond_41

    .line 1147
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v9, v8, -0x2

    const/16 v10, 0x22

    aput-char v10, v7, v9

    .line 1148
    const/4 v9, 0x1

    sub-int/2addr v8, v9

    aput-char v2, v7, v8

    goto :goto_19

    .line 1150
    :cond_41
    const/4 v9, 0x1

    const/16 v10, 0x22

    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v8, v9

    aput-char v10, v7, v8

    .line 1152
    :goto_19
    return-void
.end method

.method public writeStringWithDoubleQuote([CC)V
    .locals 27
    .param p1, "text"    # [C
    .param p2, "seperator"    # C

    .line 1155
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    if-nez v1, :cond_1

    .line 1156
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 1157
    if-eqz v2, :cond_0

    .line 1158
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1160
    :cond_0
    return-void

    .line 1163
    :cond_1
    array-length v3, v1

    .line 1164
    .local v3, "len":I
    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x2

    .line 1165
    .local v4, "newcount":I
    if-eqz v2, :cond_2

    .line 1166
    add-int/lit8 v4, v4, 0x1

    .line 1169
    :cond_2
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v5, v5

    const/16 v6, 0x3e

    const/16 v7, 0x3c

    const/16 v8, 0x29

    const/16 v9, 0x28

    const/16 v13, 0x22

    const/16 v14, 0xc

    const/16 v15, 0x8

    const/16 v10, 0x75

    const/16 v12, 0x5c

    if-le v4, v5, :cond_10

    .line 1170
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v5, :cond_f

    .line 1171
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1173
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v11, v1

    if-ge v5, v11, :cond_d

    .line 1174
    aget-char v11, v1, v5

    .line 1176
    .local v11, "ch":C
    sget-object v13, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1177
    if-eq v11, v9, :cond_3

    if-eq v11, v8, :cond_3

    if-eq v11, v7, :cond_3

    if-ne v11, v6, :cond_4

    .line 1178
    :cond_3
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1179
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1180
    sget-object v13, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v22, v11, 0xc

    and-int/lit8 v22, v22, 0xf

    aget-char v13, v13, v22

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1181
    sget-object v13, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v22, v11, 0x8

    and-int/lit8 v22, v22, 0xf

    aget-char v13, v13, v22

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1182
    sget-object v13, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v22, v11, 0x4

    and-int/lit8 v22, v22, 0xf

    aget-char v13, v13, v22

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1183
    sget-object v13, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v22, v11, 0xf

    aget-char v13, v13, v22

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1184
    goto/16 :goto_2

    .line 1188
    :cond_4
    sget-object v13, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1189
    if-eq v11, v15, :cond_7

    if-eq v11, v14, :cond_7

    const/16 v13, 0xa

    if-eq v11, v13, :cond_7

    const/16 v13, 0xd

    if-eq v11, v13, :cond_7

    const/16 v13, 0x9

    if-eq v11, v13, :cond_7

    const/16 v13, 0x22

    if-eq v11, v13, :cond_7

    const/16 v13, 0x2f

    if-eq v11, v13, :cond_7

    if-ne v11, v12, :cond_5

    goto :goto_1

    .line 1202
    :cond_5
    const/16 v13, 0x20

    if-ge v11, v13, :cond_6

    .line 1203
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1204
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1205
    const/16 v13, 0x30

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1206
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1207
    sget-object v13, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v22, v11, 0x2

    aget-char v13, v13, v22

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1208
    sget-object v13, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v22, v11, 0x2

    const/16 v20, 0x1

    add-int/lit8 v22, v22, 0x1

    aget-char v13, v13, v22

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1209
    goto/16 :goto_2

    .line 1212
    :cond_6
    const/16 v13, 0x7f

    if-lt v11, v13, :cond_c

    .line 1213
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1214
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1215
    sget-object v13, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v22, v11, 0xc

    and-int/lit8 v22, v22, 0xf

    aget-char v13, v13, v22

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1216
    sget-object v13, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v22, v11, 0x8

    and-int/lit8 v22, v22, 0xf

    aget-char v13, v13, v22

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1217
    sget-object v13, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v22, v11, 0x4

    and-int/lit8 v22, v22, 0xf

    aget-char v13, v13, v22

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1218
    sget-object v13, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v22, v11, 0xf

    aget-char v13, v13, v22

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1219
    goto :goto_2

    .line 1197
    :cond_7
    :goto_1
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1198
    sget-object v13, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v13, v13, v11

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1199
    goto :goto_2

    .line 1222
    :cond_8
    sget-object v13, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v13, v13

    if-ge v11, v13, :cond_9

    sget-object v13, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v13, v13, v11

    if-nez v13, :cond_a

    :cond_9
    const/16 v13, 0x2f

    if-ne v11, v13, :cond_c

    sget-object v13, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 1224
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 1225
    :cond_a
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1226
    sget-object v13, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v13, v13, v11

    const/4 v6, 0x4

    if-ne v13, v6, :cond_b

    .line 1227
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1228
    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v13, v11, 0xc

    and-int/lit8 v13, v13, 0xf

    aget-char v6, v6, v13

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1229
    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v13, v11, 0x8

    and-int/lit8 v13, v13, 0xf

    aget-char v6, v6, v13

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1230
    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v13, v11, 0x4

    and-int/lit8 v13, v13, 0xf

    aget-char v6, v6, v13

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1231
    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v13, v11, 0xf

    aget-char v6, v6, v13

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_2

    .line 1233
    :cond_b
    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v6, v6, v11

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1235
    goto :goto_2

    .line 1239
    :cond_c
    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1173
    .end local v11    # "ch":C
    :goto_2
    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x3e

    const/16 v13, 0x22

    goto/16 :goto_0

    .line 1242
    .end local v5    # "i":I
    :cond_d
    const/16 v5, 0x22

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1243
    if-eqz v2, :cond_e

    .line 1244
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1246
    :cond_e
    return-void

    .line 1248
    :cond_f
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1251
    :cond_10
    iget v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v6, v5, 0x1

    .line 1252
    .local v6, "start":I
    add-int v11, v6, v3

    .line 1254
    .local v11, "end":I
    iget-object v13, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v21, 0x22

    aput-char v21, v13, v5

    .line 1256
    const/4 v5, 0x0

    array-length v7, v1

    invoke-static {v1, v5, v13, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1258
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1260
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 1261
    const/4 v5, -0x1

    .line 1263
    .local v5, "lastSpecialIndex":I
    move v7, v6

    .local v7, "i":I
    :goto_3
    if-ge v7, v11, :cond_17

    .line 1264
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v8, v8, v7

    .line 1266
    .local v8, "ch":C
    const/16 v9, 0x22

    if-eq v8, v9, :cond_15

    const/16 v9, 0x2f

    if-eq v8, v9, :cond_15

    if-ne v8, v12, :cond_11

    goto :goto_5

    .line 1274
    :cond_11
    if-eq v8, v15, :cond_14

    if-eq v8, v14, :cond_14

    const/16 v9, 0xa

    if-eq v8, v9, :cond_14

    const/16 v9, 0xd

    if-eq v8, v9, :cond_14

    const/16 v9, 0x9

    if-ne v8, v9, :cond_12

    goto :goto_4

    .line 1284
    :cond_12
    const/16 v9, 0x20

    if-ge v8, v9, :cond_13

    .line 1285
    move v5, v7

    .line 1286
    add-int/lit8 v4, v4, 0x5

    .line 1287
    goto :goto_6

    .line 1290
    :cond_13
    const/16 v9, 0x7f

    if-lt v8, v9, :cond_16

    .line 1291
    move v5, v7

    .line 1292
    add-int/lit8 v4, v4, 0x5

    .line 1293
    goto :goto_6

    .line 1279
    :cond_14
    :goto_4
    move v5, v7

    .line 1280
    add-int/lit8 v4, v4, 0x1

    .line 1281
    goto :goto_6

    .line 1269
    :cond_15
    :goto_5
    move v5, v7

    .line 1270
    add-int/lit8 v4, v4, 0x1

    .line 1271
    nop

    .line 1263
    .end local v8    # "ch":C
    :cond_16
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1297
    .end local v7    # "i":I
    :cond_17
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v7, v7

    if-le v4, v7, :cond_18

    .line 1298
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1300
    :cond_18
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1302
    move v7, v5

    .restart local v7    # "i":I
    :goto_7
    if-lt v7, v6, :cond_1f

    .line 1303
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v9, v8, v7

    .line 1305
    .local v9, "ch":C
    if-eq v9, v15, :cond_1d

    if-eq v9, v14, :cond_1d

    const/16 v13, 0xa

    if-eq v9, v13, :cond_1d

    const/16 v13, 0xd

    if-eq v9, v13, :cond_1d

    const/16 v13, 0x9

    if-ne v9, v13, :cond_19

    goto/16 :goto_9

    .line 1317
    :cond_19
    const/16 v13, 0x22

    if-eq v9, v13, :cond_1c

    const/16 v13, 0x2f

    if-eq v9, v13, :cond_1c

    if-ne v9, v12, :cond_1a

    goto/16 :goto_8

    .line 1327
    :cond_1a
    const/16 v13, 0x20

    if-ge v9, v13, :cond_1b

    .line 1328
    add-int/lit8 v13, v7, 0x1

    add-int/lit8 v14, v7, 0x6

    sub-int v18, v11, v7

    const/16 v20, 0x1

    add-int/lit8 v15, v18, -0x1

    invoke-static {v8, v13, v8, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1329
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v12, v8, v7

    .line 1330
    add-int/lit8 v13, v7, 0x1

    aput-char v10, v8, v13

    .line 1331
    add-int/lit8 v13, v7, 0x2

    const/16 v14, 0x30

    aput-char v14, v8, v13

    .line 1332
    add-int/lit8 v13, v7, 0x3

    aput-char v14, v8, v13

    .line 1333
    add-int/lit8 v13, v7, 0x4

    sget-object v14, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v15, v9, 0x2

    aget-char v14, v14, v15

    aput-char v14, v8, v13

    .line 1334
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v13, v7, 0x5

    sget-object v14, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v15, v9, 0x2

    const/16 v18, 0x1

    add-int/lit8 v15, v15, 0x1

    aget-char v14, v14, v15

    aput-char v14, v8, v13

    .line 1335
    add-int/lit8 v11, v11, 0x5

    .line 1336
    goto/16 :goto_a

    .line 1339
    :cond_1b
    const/16 v13, 0x7f

    if-lt v9, v13, :cond_1e

    .line 1340
    add-int/lit8 v13, v7, 0x1

    add-int/lit8 v14, v7, 0x6

    sub-int v15, v11, v7

    const/16 v18, 0x1

    add-int/lit8 v15, v15, -0x1

    invoke-static {v8, v13, v8, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1341
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v12, v8, v7

    .line 1342
    add-int/lit8 v13, v7, 0x1

    aput-char v10, v8, v13

    .line 1343
    add-int/lit8 v13, v7, 0x2

    sget-object v14, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v15, v9, 0xc

    and-int/lit8 v15, v15, 0xf

    aget-char v14, v14, v15

    aput-char v14, v8, v13

    .line 1344
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v13, v7, 0x3

    sget-object v14, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v15, v9, 0x8

    and-int/lit8 v15, v15, 0xf

    aget-char v14, v14, v15

    aput-char v14, v8, v13

    .line 1345
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v13, v7, 0x4

    sget-object v14, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v15, v9, 0x4

    and-int/lit8 v15, v15, 0xf

    aget-char v14, v14, v15

    aput-char v14, v8, v13

    .line 1346
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v13, v7, 0x5

    sget-object v14, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v15, v9, 0xf

    aget-char v14, v14, v15

    aput-char v14, v8, v13

    .line 1347
    add-int/lit8 v11, v11, 0x5

    goto :goto_a

    .line 1320
    :cond_1c
    :goto_8
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v13, v7, 0x1

    add-int/lit8 v14, v7, 0x2

    sub-int v15, v11, v7

    const/16 v18, 0x1

    add-int/lit8 v15, v15, -0x1

    invoke-static {v8, v13, v8, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1321
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v12, v8, v7

    .line 1322
    add-int/lit8 v13, v7, 0x1

    aput-char v9, v8, v13

    .line 1323
    add-int/lit8 v11, v11, 0x1

    .line 1324
    goto :goto_a

    .line 1310
    :cond_1d
    :goto_9
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v13, v7, 0x1

    add-int/lit8 v14, v7, 0x2

    sub-int v15, v11, v7

    const/16 v18, 0x1

    add-int/lit8 v15, v15, -0x1

    invoke-static {v8, v13, v8, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1311
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v12, v8, v7

    .line 1312
    add-int/lit8 v13, v7, 0x1

    sget-object v14, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v14, v14, v9

    aput-char v14, v8, v13

    .line 1313
    add-int/lit8 v11, v11, 0x1

    .line 1314
    nop

    .line 1302
    .end local v9    # "ch":C
    :cond_1e
    :goto_a
    add-int/lit8 v7, v7, -0x1

    const/16 v14, 0xc

    const/16 v15, 0x8

    goto/16 :goto_7

    .line 1351
    .end local v7    # "i":I
    :cond_1f
    if-eqz v2, :cond_20

    .line 1352
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v9, v8, -0x2

    const/16 v10, 0x22

    aput-char v10, v7, v9

    .line 1353
    const/4 v9, 0x1

    sub-int/2addr v8, v9

    aput-char v2, v7, v8

    goto :goto_b

    .line 1355
    :cond_20
    const/4 v9, 0x1

    const/16 v10, 0x22

    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v8, v9

    aput-char v10, v7, v8

    .line 1358
    :goto_b
    return-void

    .line 1361
    .end local v5    # "lastSpecialIndex":I
    :cond_21
    const/4 v5, 0x0

    .line 1362
    .local v5, "specialCount":I
    const/4 v7, -0x1

    .line 1363
    .local v7, "lastSpecialIndex":I
    const/4 v13, -0x1

    .line 1364
    .local v13, "firstSpecialIndex":I
    const/4 v14, 0x0

    .line 1366
    .local v14, "lastSpecial":C
    move v15, v6

    .local v15, "i":I
    :goto_c
    const/16 v8, 0x2028

    if-ge v15, v11, :cond_2d

    .line 1367
    iget-object v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v9, v9, v15

    .line 1369
    .restart local v9    # "ch":C
    const/16 v12, 0x5d

    const/4 v10, -0x1

    if-lt v9, v12, :cond_25

    .line 1370
    const/16 v12, 0x7f

    if-lt v9, v12, :cond_24

    if-eq v9, v8, :cond_22

    const/16 v8, 0x2029

    if-eq v9, v8, :cond_22

    const/16 v8, 0xa0

    if-ge v9, v8, :cond_24

    .line 1374
    :cond_22
    if-ne v13, v10, :cond_23

    .line 1375
    move v13, v15

    .line 1378
    :cond_23
    add-int/lit8 v5, v5, 0x1

    .line 1379
    move v7, v15

    .line 1380
    move v8, v9

    .line 1381
    .end local v14    # "lastSpecial":C
    .local v8, "lastSpecial":C
    add-int/lit8 v4, v4, 0x4

    move v14, v8

    move/from16 v16, v11

    goto :goto_f

    .line 1370
    .end local v8    # "lastSpecial":C
    .restart local v14    # "lastSpecial":C
    :cond_24
    move/from16 v16, v11

    goto :goto_f

    .line 1386
    :cond_25
    const/16 v12, 0x7f

    const/16 v8, 0x40

    if-ge v9, v8, :cond_26

    move/from16 v16, v11

    .end local v11    # "end":I
    .local v16, "end":I
    iget-wide v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sepcialBits:J

    const-wide/16 v25, 0x1

    shl-long v25, v25, v9

    and-long v10, v10, v25

    const-wide/16 v25, 0x0

    cmp-long v8, v10, v25

    if-nez v8, :cond_27

    goto :goto_d

    .end local v16    # "end":I
    .restart local v11    # "end":I
    :cond_26
    move/from16 v16, v11

    .end local v11    # "end":I
    .restart local v16    # "end":I
    :goto_d
    const/16 v8, 0x5c

    if-ne v9, v8, :cond_28

    :cond_27
    const/4 v8, 0x1

    goto :goto_e

    :cond_28
    const/4 v8, 0x0

    .line 1387
    .local v8, "special":Z
    :goto_e
    if-eqz v8, :cond_2c

    .line 1388
    add-int/lit8 v5, v5, 0x1

    .line 1389
    move v7, v15

    .line 1390
    move v10, v9

    .line 1392
    .end local v14    # "lastSpecial":C
    .local v10, "lastSpecial":C
    const/16 v11, 0x28

    if-eq v9, v11, :cond_29

    const/16 v11, 0x29

    if-eq v9, v11, :cond_29

    const/16 v11, 0x3c

    if-eq v9, v11, :cond_29

    const/16 v11, 0x3e

    if-eq v9, v11, :cond_29

    sget-object v11, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v11, v11

    if-ge v9, v11, :cond_2a

    sget-object v11, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v11, v11, v9

    const/4 v14, 0x4

    if-ne v11, v14, :cond_2a

    .line 1399
    :cond_29
    add-int/lit8 v4, v4, 0x4

    .line 1402
    :cond_2a
    const/4 v11, -0x1

    if-ne v13, v11, :cond_2b

    .line 1403
    move v11, v15

    move v14, v10

    move v13, v11

    .end local v13    # "firstSpecialIndex":I
    .local v11, "firstSpecialIndex":I
    goto :goto_f

    .line 1402
    .end local v11    # "firstSpecialIndex":I
    .restart local v13    # "firstSpecialIndex":I
    :cond_2b
    move v14, v10

    .line 1366
    .end local v8    # "special":Z
    .end local v9    # "ch":C
    .end local v10    # "lastSpecial":C
    .restart local v14    # "lastSpecial":C
    :cond_2c
    :goto_f
    add-int/lit8 v15, v15, 0x1

    move/from16 v11, v16

    const/16 v8, 0x29

    const/16 v9, 0x28

    const/16 v10, 0x75

    const/16 v12, 0x5c

    goto/16 :goto_c

    .end local v16    # "end":I
    .local v11, "end":I
    :cond_2d
    move/from16 v16, v11

    .line 1408
    .end local v11    # "end":I
    .end local v15    # "i":I
    .restart local v16    # "end":I
    if-lez v5, :cond_40

    .line 1409
    add-int/2addr v4, v5

    .line 1410
    iget-object v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v9, v9

    if-le v4, v9, :cond_2e

    .line 1411
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1413
    :cond_2e
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1415
    const/4 v9, 0x1

    if-ne v5, v9, :cond_34

    .line 1416
    const/16 v9, 0x32

    if-ne v14, v8, :cond_2f

    .line 1417
    add-int/lit8 v8, v7, 0x1

    .line 1418
    .local v8, "srcPos":I
    add-int/lit8 v10, v7, 0x6

    .line 1419
    .local v10, "destPos":I
    sub-int v11, v16, v7

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    .line 1420
    .local v11, "LengthOfCopy":I
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v12, v8, v12, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1421
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v15, 0x5c

    aput-char v15, v12, v7

    .line 1422
    add-int/lit8 v7, v7, 0x1

    const/16 v15, 0x75

    aput-char v15, v12, v7

    .line 1423
    const/4 v15, 0x1

    add-int/2addr v7, v15

    aput-char v9, v12, v7

    .line 1424
    add-int/2addr v7, v15

    const/16 v17, 0x30

    aput-char v17, v12, v7

    .line 1425
    add-int/2addr v7, v15

    aput-char v9, v12, v7

    .line 1426
    add-int/2addr v7, v15

    const/16 v9, 0x38

    aput-char v9, v12, v7

    .line 1427
    .end local v8    # "srcPos":I
    .end local v10    # "destPos":I
    .end local v11    # "LengthOfCopy":I
    move/from16 v11, v16

    goto/16 :goto_17

    :cond_2f
    const/16 v8, 0x2029

    if-ne v14, v8, :cond_30

    .line 1428
    add-int/lit8 v8, v7, 0x1

    .line 1429
    .restart local v8    # "srcPos":I
    add-int/lit8 v10, v7, 0x6

    .line 1430
    .restart local v10    # "destPos":I
    sub-int v11, v16, v7

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    .line 1431
    .restart local v11    # "LengthOfCopy":I
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v12, v8, v12, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1432
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v15, 0x5c

    aput-char v15, v12, v7

    .line 1433
    add-int/lit8 v7, v7, 0x1

    const/16 v15, 0x75

    aput-char v15, v12, v7

    .line 1434
    const/4 v15, 0x1

    add-int/2addr v7, v15

    aput-char v9, v12, v7

    .line 1435
    add-int/2addr v7, v15

    const/16 v17, 0x30

    aput-char v17, v12, v7

    .line 1436
    add-int/2addr v7, v15

    aput-char v9, v12, v7

    .line 1437
    add-int/2addr v7, v15

    const/16 v9, 0x39

    aput-char v9, v12, v7

    .line 1438
    .end local v8    # "srcPos":I
    .end local v10    # "destPos":I
    .end local v11    # "LengthOfCopy":I
    move/from16 v11, v16

    goto/16 :goto_17

    :cond_30
    const/16 v8, 0x28

    if-eq v14, v8, :cond_33

    const/16 v8, 0x29

    if-eq v14, v8, :cond_33

    const/16 v8, 0x3c

    if-eq v14, v8, :cond_33

    const/16 v8, 0x3e

    if-ne v14, v8, :cond_31

    goto/16 :goto_11

    .line 1452
    :cond_31
    move v8, v14

    .line 1453
    .local v8, "ch":C
    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v9, v9

    if-ge v8, v9, :cond_32

    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v9, v9, v8

    const/4 v10, 0x4

    if-ne v9, v10, :cond_32

    .line 1455
    add-int/lit8 v9, v7, 0x1

    .line 1456
    .local v9, "srcPos":I
    add-int/lit8 v10, v7, 0x6

    .line 1457
    .restart local v10    # "destPos":I
    sub-int v11, v16, v7

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    .line 1458
    .restart local v11    # "LengthOfCopy":I
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v12, v9, v12, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1460
    move v12, v7

    .line 1461
    .local v12, "bufIndex":I
    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v17, v12, 0x1

    const/16 v18, 0x5c

    .end local v12    # "bufIndex":I
    .local v17, "bufIndex":I
    aput-char v18, v15, v12

    .line 1462
    add-int/lit8 v12, v17, 0x1

    const/16 v18, 0x75

    .end local v17    # "bufIndex":I
    .restart local v12    # "bufIndex":I
    aput-char v18, v15, v17

    .line 1463
    add-int/lit8 v17, v12, 0x1

    .end local v12    # "bufIndex":I
    .restart local v17    # "bufIndex":I
    sget-object v18, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v19, v8, 0xc

    and-int/lit8 v19, v19, 0xf

    aget-char v18, v18, v19

    aput-char v18, v15, v12

    .line 1464
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v17, 0x1

    .end local v17    # "bufIndex":I
    .local v15, "bufIndex":I
    sget-object v18, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v19, v8, 0x8

    and-int/lit8 v19, v19, 0xf

    aget-char v18, v18, v19

    aput-char v18, v12, v17

    .line 1465
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v17, v15, 0x1

    .end local v15    # "bufIndex":I
    .restart local v17    # "bufIndex":I
    sget-object v18, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v19, v8, 0x4

    and-int/lit8 v19, v19, 0xf

    aget-char v18, v18, v19

    aput-char v18, v12, v15

    .line 1466
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v17, 0x1

    .end local v17    # "bufIndex":I
    .restart local v15    # "bufIndex":I
    sget-object v18, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v19, v8, 0xf

    aget-char v18, v18, v19

    aput-char v18, v12, v17

    .line 1467
    .end local v9    # "srcPos":I
    .end local v10    # "destPos":I
    .end local v11    # "LengthOfCopy":I
    .end local v15    # "bufIndex":I
    goto :goto_10

    .line 1468
    :cond_32
    add-int/lit8 v9, v7, 0x1

    .line 1469
    .restart local v9    # "srcPos":I
    add-int/lit8 v10, v7, 0x2

    .line 1470
    .restart local v10    # "destPos":I
    sub-int v11, v16, v7

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    .line 1471
    .restart local v11    # "LengthOfCopy":I
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v12, v9, v12, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1472
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v15, 0x5c

    aput-char v15, v12, v7

    .line 1473
    add-int/lit8 v7, v7, 0x1

    sget-object v15, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v15, v15, v8

    aput-char v15, v12, v7

    .line 1475
    .end local v8    # "ch":C
    .end local v9    # "srcPos":I
    .end local v10    # "destPos":I
    .end local v11    # "LengthOfCopy":I
    :goto_10
    move/from16 v11, v16

    goto/16 :goto_17

    .line 1439
    :cond_33
    :goto_11
    add-int/lit8 v8, v7, 0x1

    .line 1440
    .local v8, "srcPos":I
    add-int/lit8 v9, v7, 0x6

    .line 1441
    .local v9, "destPos":I
    sub-int v11, v16, v7

    const/4 v10, 0x1

    sub-int/2addr v11, v10

    .line 1442
    .restart local v11    # "LengthOfCopy":I
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v10, v8, v10, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1443
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v12, 0x5c

    aput-char v12, v10, v7

    .line 1444
    add-int/lit8 v7, v7, 0x1

    const/16 v12, 0x75

    aput-char v12, v10, v7

    .line 1446
    move v12, v14

    .line 1447
    .local v12, "ch":C
    const/4 v15, 0x1

    add-int/2addr v7, v15

    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v18, v12, 0xc

    and-int/lit8 v18, v18, 0xf

    aget-char v17, v17, v18

    aput-char v17, v10, v7

    .line 1448
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/2addr v7, v15

    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v18, v12, 0x8

    and-int/lit8 v18, v18, 0xf

    aget-char v17, v17, v18

    aput-char v17, v10, v7

    .line 1449
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/2addr v7, v15

    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v18, v12, 0x4

    and-int/lit8 v18, v18, 0xf

    aget-char v17, v17, v18

    aput-char v17, v10, v7

    .line 1450
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/2addr v7, v15

    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v18, v12, 0xf

    aget-char v17, v17, v18

    aput-char v17, v10, v7

    .line 1451
    .end local v8    # "srcPos":I
    .end local v9    # "destPos":I
    .end local v11    # "LengthOfCopy":I
    .end local v12    # "ch":C
    move/from16 v11, v16

    goto/16 :goto_17

    .line 1476
    :cond_34
    const/4 v15, 0x1

    if-le v5, v15, :cond_3f

    .line 1477
    sub-int v9, v13, v6

    .line 1478
    .local v9, "textIndex":I
    move v10, v13

    .line 1479
    .local v10, "bufIndex":I
    move v11, v9

    .local v11, "i":I
    :goto_12
    array-length v12, v1

    if-ge v11, v12, :cond_3e

    .line 1480
    aget-char v12, v1, v11

    .line 1482
    .restart local v12    # "ch":C
    iget-boolean v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->browserSecure:Z

    if-eqz v15, :cond_36

    const/16 v15, 0x28

    if-eq v12, v15, :cond_35

    const/16 v15, 0x29

    if-eq v12, v15, :cond_35

    const/16 v15, 0x3c

    if-eq v12, v15, :cond_35

    const/16 v15, 0x3e

    if-ne v12, v15, :cond_36

    goto :goto_13

    :cond_35
    const/16 v15, 0x3e

    .line 1486
    :goto_13
    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v17, v10, 0x1

    const/16 v24, 0x5c

    .end local v10    # "bufIndex":I
    .restart local v17    # "bufIndex":I
    aput-char v24, v15, v10

    .line 1487
    add-int/lit8 v10, v17, 0x1

    const/16 v23, 0x75

    .end local v17    # "bufIndex":I
    .restart local v10    # "bufIndex":I
    aput-char v23, v15, v17

    .line 1488
    add-int/lit8 v17, v10, 0x1

    .end local v10    # "bufIndex":I
    .restart local v17    # "bufIndex":I
    sget-object v25, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v26, v12, 0xc

    and-int/lit8 v26, v26, 0xf

    aget-char v25, v25, v26

    aput-char v25, v15, v10

    .line 1489
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v17, 0x1

    .end local v17    # "bufIndex":I
    .restart local v15    # "bufIndex":I
    sget-object v25, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v26, v12, 0x8

    and-int/lit8 v26, v26, 0xf

    aget-char v25, v25, v26

    aput-char v25, v10, v17

    .line 1490
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v17, v15, 0x1

    .end local v15    # "bufIndex":I
    .restart local v17    # "bufIndex":I
    sget-object v25, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v26, v12, 0x4

    and-int/lit8 v26, v26, 0xf

    aget-char v25, v25, v26

    aput-char v25, v10, v15

    .line 1491
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v17, 0x1

    .end local v17    # "bufIndex":I
    .restart local v15    # "bufIndex":I
    sget-object v25, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v26, v12, 0xf

    aget-char v25, v25, v26

    aput-char v25, v10, v17

    .line 1492
    add-int/lit8 v16, v16, 0x5

    move v10, v15

    const/4 v15, 0x4

    const/16 v23, 0x75

    const/16 v24, 0x5c

    goto/16 :goto_16

    .line 1493
    .end local v15    # "bufIndex":I
    .restart local v10    # "bufIndex":I
    :cond_36
    sget-object v15, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v15, v15

    if-ge v12, v15, :cond_37

    sget-object v15, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v15, v15, v12

    if-nez v15, :cond_38

    :cond_37
    const/16 v15, 0x2f

    if-ne v12, v15, :cond_3b

    sget-object v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 1495
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v15

    if-eqz v15, :cond_3a

    .line 1496
    :cond_38
    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v17, v10, 0x1

    const/16 v24, 0x5c

    .end local v10    # "bufIndex":I
    .restart local v17    # "bufIndex":I
    aput-char v24, v15, v10

    .line 1497
    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v10, v10, v12

    const/4 v15, 0x4

    if-ne v10, v15, :cond_39

    .line 1498
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v18, v17, 0x1

    const/16 v23, 0x75

    .end local v17    # "bufIndex":I
    .local v18, "bufIndex":I
    aput-char v23, v10, v17

    .line 1499
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "bufIndex":I
    .restart local v17    # "bufIndex":I
    sget-object v25, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v26, v12, 0xc

    and-int/lit8 v26, v26, 0xf

    aget-char v25, v25, v26

    aput-char v25, v10, v18

    .line 1500
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v18, v17, 0x1

    .end local v17    # "bufIndex":I
    .restart local v18    # "bufIndex":I
    sget-object v25, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v26, v12, 0x8

    and-int/lit8 v26, v26, 0xf

    aget-char v25, v25, v26

    aput-char v25, v10, v17

    .line 1501
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v17, v18, 0x1

    .end local v18    # "bufIndex":I
    .restart local v17    # "bufIndex":I
    sget-object v25, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v26, v12, 0x4

    and-int/lit8 v26, v26, 0xf

    aget-char v25, v25, v26

    aput-char v25, v10, v18

    .line 1502
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v18, v17, 0x1

    .end local v17    # "bufIndex":I
    .restart local v18    # "bufIndex":I
    sget-object v25, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v26, v12, 0xf

    aget-char v25, v25, v26

    aput-char v25, v10, v17

    .line 1503
    add-int/lit8 v16, v16, 0x5

    move/from16 v10, v18

    const/16 v23, 0x75

    const/16 v24, 0x5c

    goto :goto_16

    .line 1505
    .end local v18    # "bufIndex":I
    .restart local v17    # "bufIndex":I
    :cond_39
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v18, v17, 0x1

    .end local v17    # "bufIndex":I
    .restart local v18    # "bufIndex":I
    sget-object v25, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v25, v25, v12

    aput-char v25, v10, v17

    .line 1506
    add-int/lit8 v16, v16, 0x1

    move/from16 v10, v18

    const/16 v23, 0x75

    const/16 v24, 0x5c

    goto :goto_16

    .line 1495
    .end local v18    # "bufIndex":I
    .restart local v10    # "bufIndex":I
    :cond_3a
    const/4 v15, 0x4

    goto :goto_14

    .line 1493
    :cond_3b
    const/4 v15, 0x4

    .line 1509
    :goto_14
    if-eq v12, v8, :cond_3d

    const/16 v8, 0x2029

    if-ne v12, v8, :cond_3c

    goto :goto_15

    .line 1518
    :cond_3c
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v18, v10, 0x1

    .end local v10    # "bufIndex":I
    .restart local v18    # "bufIndex":I
    aput-char v12, v8, v10

    move/from16 v10, v18

    const/16 v23, 0x75

    const/16 v24, 0x5c

    goto :goto_16

    .line 1510
    .end local v18    # "bufIndex":I
    .restart local v10    # "bufIndex":I
    :cond_3d
    :goto_15
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v18, v10, 0x1

    const/16 v24, 0x5c

    .end local v10    # "bufIndex":I
    .restart local v18    # "bufIndex":I
    aput-char v24, v8, v10

    .line 1511
    add-int/lit8 v10, v18, 0x1

    const/16 v23, 0x75

    .end local v18    # "bufIndex":I
    .restart local v10    # "bufIndex":I
    aput-char v23, v8, v18

    .line 1512
    add-int/lit8 v18, v10, 0x1

    .end local v10    # "bufIndex":I
    .restart local v18    # "bufIndex":I
    sget-object v25, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v26, v12, 0xc

    and-int/lit8 v26, v26, 0xf

    aget-char v25, v25, v26

    aput-char v25, v8, v10

    .line 1513
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v18, 0x1

    .end local v18    # "bufIndex":I
    .restart local v10    # "bufIndex":I
    sget-object v25, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v26, v12, 0x8

    and-int/lit8 v26, v26, 0xf

    aget-char v25, v25, v26

    aput-char v25, v8, v18

    .line 1514
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v18, v10, 0x1

    .end local v10    # "bufIndex":I
    .restart local v18    # "bufIndex":I
    sget-object v25, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v26, v12, 0x4

    and-int/lit8 v26, v26, 0xf

    aget-char v25, v25, v26

    aput-char v25, v8, v10

    .line 1515
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v18, 0x1

    .end local v18    # "bufIndex":I
    .restart local v10    # "bufIndex":I
    sget-object v25, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v26, v12, 0xf

    aget-char v25, v25, v26

    aput-char v25, v8, v18

    .line 1516
    add-int/lit8 v16, v16, 0x5

    .line 1479
    .end local v12    # "ch":C
    :goto_16
    add-int/lit8 v11, v11, 0x1

    const/16 v8, 0x2028

    goto/16 :goto_12

    :cond_3e
    move/from16 v11, v16

    goto :goto_17

    .line 1476
    .end local v9    # "textIndex":I
    .end local v10    # "bufIndex":I
    .end local v11    # "i":I
    :cond_3f
    move/from16 v11, v16

    goto :goto_17

    .line 1408
    :cond_40
    move/from16 v11, v16

    .line 1525
    .end local v16    # "end":I
    .local v11, "end":I
    :goto_17
    if-eqz v2, :cond_41

    .line 1526
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v10, v9, -0x2

    const/16 v12, 0x22

    aput-char v12, v8, v10

    .line 1527
    const/4 v10, 0x1

    sub-int/2addr v9, v10

    aput-char v2, v8, v9

    goto :goto_18

    .line 1529
    :cond_41
    const/4 v10, 0x1

    const/16 v12, 0x22

    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v9, v10

    aput-char v12, v8, v9

    .line 1531
    :goto_18
    return-void
.end method

.method protected writeStringWithSingleQuote(Ljava/lang/String;)V
    .locals 18
    .param p1, "text"    # Ljava/lang/String;

    .line 2127
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 2128
    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v4, 0x4

    add-int/2addr v3, v4

    .line 2129
    .local v3, "newcount":I
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v5, v5

    if-le v3, v5, :cond_0

    .line 2130
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 2132
    :cond_0
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const-string v7, "null"

    invoke-virtual {v7, v2, v4, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 2133
    iput v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2134
    return-void

    .line 2137
    .end local v3    # "newcount":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 2138
    .local v3, "len":I
    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x2

    .line 2139
    .local v4, "newcount":I
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v5, v5

    const/16 v6, 0x2f

    const/16 v7, 0xd

    const/16 v8, 0x5c

    const/16 v9, 0x27

    if-le v4, v5, :cond_6

    .line 2140
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v5, :cond_5

    .line 2141
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2142
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 2143
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 2144
    .local v5, "ch":C
    if-le v5, v7, :cond_3

    if-eq v5, v8, :cond_3

    if-eq v5, v9, :cond_3

    if-ne v5, v6, :cond_2

    sget-object v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 2145
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_1

    .line 2149
    :cond_2
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_2

    .line 2146
    :cond_3
    :goto_1
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2147
    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v10, v10, v5

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2142
    .end local v5    # "ch":C
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2152
    .end local v2    # "i":I
    :cond_4
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2153
    return-void

    .line 2155
    :cond_5
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 2158
    :cond_6
    iget v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v10, v5, 0x1

    .line 2159
    .local v10, "start":I
    add-int v11, v10, v3

    .line 2161
    .local v11, "end":I
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v9, v12, v5

    .line 2162
    invoke-virtual {v1, v2, v3, v12, v10}, Ljava/lang/String;->getChars(II[CI)V

    .line 2163
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2165
    const/4 v2, 0x0

    .line 2166
    .local v2, "specialCount":I
    const/4 v5, -0x1

    .line 2167
    .local v5, "lastSpecialIndex":I
    const/4 v12, 0x0

    .line 2168
    .local v12, "lastSpecial":C
    move v13, v10

    .local v13, "i":I
    :goto_3
    if-ge v13, v11, :cond_9

    .line 2169
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v14, v14, v13

    .line 2170
    .local v14, "ch":C
    if-le v14, v7, :cond_7

    if-eq v14, v8, :cond_7

    if-eq v14, v9, :cond_7

    if-ne v14, v6, :cond_8

    sget-object v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 2171
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 2172
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 2173
    move v5, v13

    .line 2174
    move v12, v14

    .line 2168
    .end local v14    # "ch":C
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 2178
    .end local v13    # "i":I
    :cond_9
    add-int/2addr v4, v2

    .line 2179
    iget-object v13, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v13, v13

    if-le v4, v13, :cond_a

    .line 2180
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 2182
    :cond_a
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2184
    const/4 v13, 0x1

    if-ne v2, v13, :cond_b

    .line 2185
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v5, 0x1

    add-int/lit8 v14, v5, 0x2

    sub-int v15, v11, v5

    sub-int/2addr v15, v13

    invoke-static {v6, v7, v6, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2186
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v8, v6, v5

    .line 2187
    add-int/lit8 v5, v5, 0x1

    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v7, v7, v12

    aput-char v7, v6, v5

    goto :goto_6

    .line 2188
    :cond_b
    if-le v2, v13, :cond_e

    .line 2189
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v5, 0x1

    add-int/lit8 v6, v5, 0x2

    sub-int v16, v11, v5

    add-int/lit8 v9, v16, -0x1

    invoke-static {v14, v15, v14, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2190
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v8, v6, v5

    .line 2191
    add-int/lit8 v5, v5, 0x1

    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v9, v9, v12

    aput-char v9, v6, v5

    .line 2192
    add-int/lit8 v11, v11, 0x1

    .line 2193
    add-int/lit8 v6, v5, -0x2

    .local v6, "i":I
    :goto_4
    if-lt v6, v10, :cond_e

    .line 2194
    iget-object v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v9, v9, v6

    .line 2196
    .local v9, "ch":C
    if-le v9, v7, :cond_c

    if-eq v9, v8, :cond_c

    const/16 v14, 0x27

    if-eq v9, v14, :cond_c

    const/16 v14, 0x2f

    if-ne v9, v14, :cond_d

    sget-object v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 2197
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v15

    if-eqz v15, :cond_d

    goto :goto_5

    .line 2196
    :cond_c
    const/16 v14, 0x2f

    .line 2198
    :goto_5
    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v6, 0x1

    add-int/lit8 v14, v6, 0x2

    sub-int v17, v11, v6

    add-int/lit8 v8, v17, -0x1

    invoke-static {v15, v7, v15, v14, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2199
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v8, 0x5c

    aput-char v8, v7, v6

    .line 2200
    add-int/lit8 v14, v6, 0x1

    sget-object v15, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v15, v15, v9

    aput-char v15, v7, v14

    .line 2201
    add-int/lit8 v11, v11, 0x1

    .line 2193
    .end local v9    # "ch":C
    :cond_d
    add-int/lit8 v6, v6, -0x1

    const/16 v7, 0xd

    goto :goto_4

    .line 2206
    .end local v6    # "i":I
    :cond_e
    :goto_6
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v7, v13

    const/16 v8, 0x27

    aput-char v8, v6, v7

    .line 2207
    return-void
.end method

.method protected writeStringWithSingleQuote([C)V
    .locals 18
    .param p1, "chars"    # [C

    .line 2210
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 2211
    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v4, 0x4

    add-int/2addr v3, v4

    .line 2212
    .local v3, "newcount":I
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v5, v5

    if-le v3, v5, :cond_0

    .line 2213
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 2215
    :cond_0
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const-string v7, "null"

    invoke-virtual {v7, v2, v4, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 2216
    iput v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2217
    return-void

    .line 2220
    .end local v3    # "newcount":I
    :cond_1
    array-length v3, v1

    .line 2221
    .local v3, "len":I
    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x2

    .line 2222
    .local v4, "newcount":I
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v5, v5

    const/16 v6, 0x2f

    const/16 v7, 0xd

    const/16 v8, 0x5c

    const/16 v9, 0x27

    if-le v4, v5, :cond_6

    .line 2223
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v5, :cond_5

    .line 2224
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2225
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_4

    .line 2226
    aget-char v5, v1, v2

    .line 2227
    .local v5, "ch":C
    if-le v5, v7, :cond_3

    if-eq v5, v8, :cond_3

    if-eq v5, v9, :cond_3

    if-ne v5, v6, :cond_2

    sget-object v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 2228
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_1

    .line 2232
    :cond_2
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_2

    .line 2229
    :cond_3
    :goto_1
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2230
    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v10, v10, v5

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2225
    .end local v5    # "ch":C
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2235
    .end local v2    # "i":I
    :cond_4
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2236
    return-void

    .line 2238
    :cond_5
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 2241
    :cond_6
    iget v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v10, v5, 0x1

    .line 2242
    .local v10, "start":I
    add-int v11, v10, v3

    .line 2244
    .local v11, "end":I
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v9, v12, v5

    .line 2246
    array-length v5, v1

    invoke-static {v1, v2, v12, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2247
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2249
    const/4 v2, 0x0

    .line 2250
    .local v2, "specialCount":I
    const/4 v5, -0x1

    .line 2251
    .local v5, "lastSpecialIndex":I
    const/4 v12, 0x0

    .line 2252
    .local v12, "lastSpecial":C
    move v13, v10

    .local v13, "i":I
    :goto_3
    if-ge v13, v11, :cond_9

    .line 2253
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v14, v14, v13

    .line 2254
    .local v14, "ch":C
    if-le v14, v7, :cond_7

    if-eq v14, v8, :cond_7

    if-eq v14, v9, :cond_7

    if-ne v14, v6, :cond_8

    sget-object v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 2255
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 2256
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 2257
    move v5, v13

    .line 2258
    move v12, v14

    .line 2252
    .end local v14    # "ch":C
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 2262
    .end local v13    # "i":I
    :cond_9
    add-int/2addr v4, v2

    .line 2263
    iget-object v13, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v13, v13

    if-le v4, v13, :cond_a

    .line 2264
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 2266
    :cond_a
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2268
    const/4 v13, 0x1

    if-ne v2, v13, :cond_b

    .line 2269
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v5, 0x1

    add-int/lit8 v14, v5, 0x2

    sub-int v15, v11, v5

    sub-int/2addr v15, v13

    invoke-static {v6, v7, v6, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2270
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v8, v6, v5

    .line 2271
    add-int/lit8 v5, v5, 0x1

    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v7, v7, v12

    aput-char v7, v6, v5

    goto :goto_6

    .line 2272
    :cond_b
    if-le v2, v13, :cond_e

    .line 2273
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v5, 0x1

    add-int/lit8 v6, v5, 0x2

    sub-int v16, v11, v5

    add-int/lit8 v9, v16, -0x1

    invoke-static {v14, v15, v14, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2274
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v8, v6, v5

    .line 2275
    add-int/lit8 v5, v5, 0x1

    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v9, v9, v12

    aput-char v9, v6, v5

    .line 2276
    add-int/lit8 v11, v11, 0x1

    .line 2277
    add-int/lit8 v6, v5, -0x2

    .local v6, "i":I
    :goto_4
    if-lt v6, v10, :cond_e

    .line 2278
    iget-object v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v9, v9, v6

    .line 2280
    .local v9, "ch":C
    if-le v9, v7, :cond_c

    if-eq v9, v8, :cond_c

    const/16 v14, 0x27

    if-eq v9, v14, :cond_c

    const/16 v14, 0x2f

    if-ne v9, v14, :cond_d

    sget-object v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 2281
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v15

    if-eqz v15, :cond_d

    goto :goto_5

    .line 2280
    :cond_c
    const/16 v14, 0x2f

    .line 2282
    :goto_5
    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v6, 0x1

    add-int/lit8 v14, v6, 0x2

    sub-int v17, v11, v6

    add-int/lit8 v8, v17, -0x1

    invoke-static {v15, v7, v15, v14, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2283
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v8, 0x5c

    aput-char v8, v7, v6

    .line 2284
    add-int/lit8 v14, v6, 0x1

    sget-object v15, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v15, v15, v9

    aput-char v15, v7, v14

    .line 2285
    add-int/lit8 v11, v11, 0x1

    .line 2277
    .end local v9    # "ch":C
    :cond_d
    add-int/lit8 v6, v6, -0x1

    const/16 v7, 0xd

    goto :goto_4

    .line 2290
    .end local v6    # "i":I
    :cond_e
    :goto_6
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v7, v13

    const/16 v8, 0x27

    aput-char v8, v6, v7

    .line 2291
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeTo(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 355
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeToEx(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)I

    .line 359
    return-void
.end method

.method public writeTo(Ljava/io/Writer;)V
    .locals 3
    .param p1, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v1, 0x0

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/Writer;->write([CII)V

    .line 351
    return-void

    .line 348
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "writer not null"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToEx(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)I
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_1

    .line 366
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    if-ne p2, v0, :cond_0

    .line 367
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->encodeToUTF8(Ljava/io/OutputStream;)I

    move-result v0

    return v0

    .line 369
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 370
    .local v0, "bytes":[B
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 371
    array-length v1, v0

    return v1

    .line 363
    .end local v0    # "bytes":[B
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "writer not null"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
