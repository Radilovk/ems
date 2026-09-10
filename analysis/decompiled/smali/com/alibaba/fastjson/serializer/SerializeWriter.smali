.class public final Lcom/alibaba/fastjson/serializer/SerializeWriter;
.super Ljava/io/Writer;
.source "SerializeWriter.java"


# static fields
.field private static final bufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[C>;"
        }
    .end annotation
.end field

.field private static final bytesBufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[B>;"
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

    .prologue
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

    .prologue
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

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I)V

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;

    .prologue
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

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->maxBufSize:I

    .line 131
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    .line 133
    if-gtz p2, :cond_0

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative initial size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    new-array v0, p2, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 138
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->computeFeatures()V

    .line 139
    return-void
.end method

.method public varargs constructor <init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 5
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "defaultFeatures"    # I
    .param p3, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 63
    const/4 v2, -0x1

    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->maxBufSize:I

    .line 91
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    .line 93
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    iput-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 95
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    if-eqz v2, :cond_0

    .line 96
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 101
    :goto_0
    move v1, p2

    .line 102
    .local v1, "featuresValue":I
    array-length v3, p3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v0, p3, v2

    .line 103
    .local v0, "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v4

    or-int/2addr v1, v4

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 98
    .end local v0    # "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .end local v1    # "featuresValue":I
    :cond_0
    const/16 v2, 0x800

    new-array v2, v2, [C

    iput-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    goto :goto_0

    .line 105
    .restart local v1    # "featuresValue":I
    :cond_1
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 107
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->computeFeatures()V

    .line 108
    return-void
.end method

.method public varargs constructor <init>(Ljava/io/Writer;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 82
    return-void
.end method

.method public varargs constructor <init>([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 1
    .param p1, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 78
    return-void
.end method

.method private encodeToUTF8(Ljava/io/OutputStream;)I
    .locals 9
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 424
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    int-to-double v4, v3

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double/2addr v4, v6

    double-to-int v1, v4

    .line 425
    .local v1, "bytesLength":I
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bytesBufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 427
    .local v0, "bytes":[B
    if-nez v0, :cond_0

    .line 428
    const/16 v3, 0x2000

    new-array v0, v3, [B

    .line 429
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bytesBufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 432
    :cond_0
    array-length v3, v0

    if-ge v3, v1, :cond_1

    .line 433
    new-array v0, v1, [B

    .line 436
    :cond_1
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {v3, v8, v4, v0}, Lcom/alibaba/fastjson/util/IOUtils;->encodeUTF8([CII[B)I

    move-result v2

    .line 437
    .local v2, "position":I
    invoke-virtual {p1, v0, v8, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 438
    return v2
.end method

.method private encodeToUTF8Bytes()[B
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 442
    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double/2addr v4, v6

    double-to-int v1, v4

    .line 443
    .local v1, "bytesLength":I
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bytesBufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 445
    .local v0, "bytes":[B
    if-nez v0, :cond_0

    .line 446
    const/16 v4, 0x2000

    new-array v0, v4, [B

    .line 447
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bytesBufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 450
    :cond_0
    array-length v4, v0

    if-ge v4, v1, :cond_1

    .line 451
    new-array v0, v1, [B

    .line 454
    :cond_1
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {v4, v8, v5, v0}, Lcom/alibaba/fastjson/util/IOUtils;->encodeUTF8([CII[B)I

    move-result v3

    .line 455
    .local v3, "position":I
    new-array v2, v3, [B

    .line 456
    .local v2, "copy":[B
    invoke-static {v0, v8, v2, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 457
    return-object v2
.end method

.method private writeEnumFieldValue(CLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 2083
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v0, :cond_0

    .line 2084
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    .line 2088
    :goto_0
    return-void

    .line 2086
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValueStringWithDoubleQuote(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private writeKeyWithSingleQuoteIfHasSpecial(Ljava/lang/String;)V
    .locals 14
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 2334
    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    .line 2336
    .local v7, "specicalFlags_singleQuotes":[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 2337
    .local v4, "len":I
    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v9, v4

    add-int/lit8 v6, v9, 0x1

    .line 2338
    .local v6, "newcount":I
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v9, v9

    if-le v6, v9, :cond_8

    .line 2339
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v9, :cond_7

    .line 2340
    if-nez v4, :cond_0

    .line 2341
    const/16 v9, 0x27

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2342
    const/16 v9, 0x27

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2343
    const/16 v9, 0x3a

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2432
    :goto_0
    return-void

    .line 2347
    :cond_0
    const/4 v2, 0x0

    .line 2348
    .local v2, "hasSpecial":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 2349
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2350
    .local v0, "ch":C
    array-length v9, v7

    if-ge v0, v9, :cond_3

    aget-byte v9, v7, v0

    if-eqz v9, :cond_3

    .line 2351
    const/4 v2, 0x1

    .line 2356
    .end local v0    # "ch":C
    :cond_1
    if-eqz v2, :cond_2

    .line 2357
    const/16 v9, 0x27

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2359
    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_5

    .line 2360
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2361
    .restart local v0    # "ch":C
    array-length v9, v7

    if-ge v0, v9, :cond_4

    aget-byte v9, v7, v0

    if-eqz v9, :cond_4

    .line 2362
    const/16 v9, 0x5c

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2363
    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v9, v9, v0

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2359
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2348
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2365
    :cond_4
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_3

    .line 2368
    .end local v0    # "ch":C
    :cond_5
    if-eqz v2, :cond_6

    .line 2369
    const/16 v9, 0x27

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2371
    :cond_6
    const/16 v9, 0x3a

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0

    .line 2375
    .end local v2    # "hasSpecial":Z
    .end local v3    # "i":I
    :cond_7
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 2378
    :cond_8
    if-nez v4, :cond_a

    .line 2379
    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v5, v9, 0x3

    .line 2380
    .local v5, "newCount":I
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v9, v9

    if-le v5, v9, :cond_9

    .line 2381
    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v9, v9, 0x3

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 2383
    :cond_9
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v11, 0x27

    aput-char v11, v9, v10

    .line 2384
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v11, 0x27

    aput-char v11, v9, v10

    .line 2385
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v11, 0x3a

    aput-char v11, v9, v10

    goto/16 :goto_0

    .line 2389
    .end local v5    # "newCount":I
    :cond_a
    iget v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2390
    .local v8, "start":I
    add-int v1, v8, v4

    .line 2392
    .local v1, "end":I
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p1, v9, v4, v10, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 2393
    iput v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2395
    const/4 v2, 0x0

    .line 2397
    .restart local v2    # "hasSpecial":Z
    move v3, v8

    .restart local v3    # "i":I
    :goto_4
    if-ge v3, v1, :cond_f

    .line 2398
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v0, v9, v3

    .line 2399
    .restart local v0    # "ch":C
    array-length v9, v7

    if-ge v0, v9, :cond_c

    aget-byte v9, v7, v0

    if-eqz v9, :cond_c

    .line 2400
    if-nez v2, :cond_d

    .line 2401
    add-int/lit8 v6, v6, 0x3

    .line 2402
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v9, v9

    if-le v6, v9, :cond_b

    .line 2403
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 2405
    :cond_b
    iput v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2407
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v3, 0x1

    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v3, 0x3

    sub-int v13, v1, v3

    add-int/lit8 v13, v13, -0x1

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2408
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v12, 0x1

    invoke-static {v9, v10, v11, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2409
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v10, 0x27

    aput-char v10, v9, v8

    .line 2410
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    const/16 v10, 0x5c

    aput-char v10, v9, v3

    .line 2411
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v10, v10, v0

    aput-char v10, v9, v3

    .line 2412
    add-int/lit8 v1, v1, 0x2

    .line 2413
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v10, v10, -0x2

    const/16 v11, 0x27

    aput-char v11, v9, v10

    .line 2415
    const/4 v2, 0x1

    .line 2397
    :cond_c
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 2417
    :cond_d
    add-int/lit8 v6, v6, 0x1

    .line 2418
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v9, v9

    if-le v6, v9, :cond_e

    .line 2419
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 2421
    :cond_e
    iput v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2423
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v3, 0x1

    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v3, 0x2

    sub-int v13, v1, v3

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2424
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v10, 0x5c

    aput-char v10, v9, v3

    .line 2425
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v10, v10, v0

    aput-char v10, v9, v3

    .line 2426
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2431
    .end local v0    # "ch":C
    :cond_f
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v6, -0x1

    const/16 v11, 0x3a

    aput-char v11, v9, v10

    goto/16 :goto_0
.end method


# virtual methods
.method public append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .locals 0
    .param p1, "c"    # C

    .prologue
    .line 308
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 309
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .locals 3
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .prologue
    .line 296
    if-nez p1, :cond_0

    const-string v0, "null"

    .line 297
    .local v0, "s":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    .line 298
    return-object p0

    .line 296
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .locals 3
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 302
    if-nez p1, :cond_0

    const-string p1, "null"

    .end local p1    # "csq":Ljava/lang/CharSequence;
    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2

    .prologue
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

    array-length v0, v0

    const/high16 v1, 0x20000

    if-gt v0, v1, :cond_1

    .line 477
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 480
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 481
    return-void
.end method

.method protected computeFeatures()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 169
    iget v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v9, v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v6, v9

    if-eqz v6, :cond_1

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    .line 170
    iget v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v9, v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v6, v9

    if-eqz v6, :cond_2

    move v6, v7

    :goto_1
    iput-boolean v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    .line 171
    iget v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v9, v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v6, v9

    if-eqz v6, :cond_3

    move v6, v7

    :goto_2
    iput-boolean v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sortField:Z

    .line 172
    iget v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v9, v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v6, v9

    if-eqz v6, :cond_4

    move v6, v7

    :goto_3
    iput-boolean v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->disableCircularReferenceDetect:Z

    .line 173
    iget v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v9, v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v6, v9

    if-eqz v6, :cond_5

    move v6, v7

    :goto_4
    iput-boolean v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->beanToArray:Z

    .line 174
    iget v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v9, v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v6, v9

    if-eqz v6, :cond_6

    move v6, v7

    :goto_5
    iput-boolean v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNonStringValueAsString:Z

    .line 175
    iget v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v9, v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v6, v9

    if-eqz v6, :cond_7

    move v6, v7

    :goto_6
    iput-boolean v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->notWriteDefaultValue:Z

    .line 176
    iget v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v9, v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v6, v9

    if-eqz v6, :cond_8

    move v6, v7

    :goto_7
    iput-boolean v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingName:Z

    .line 177
    iget v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v9, v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v6, v9

    if-eqz v6, :cond_9

    move v6, v7

    :goto_8
    iput-boolean v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingToString:Z

    .line 179
    iget-boolean v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-eqz v6, :cond_a

    iget v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget v9, Lcom/alibaba/fastjson/serializer/SerializeWriter;->nonDirectFeatures:I

    and-int/2addr v6, v9

    if-nez v6, :cond_a

    iget-boolean v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->beanToArray:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingName:Z

    if-eqz v6, :cond_a

    :cond_0
    move v6, v7

    :goto_9
    iput-boolean v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeDirect:Z

    .line 184
    iget-boolean v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v6, :cond_b

    const/16 v6, 0x27

    :goto_a
    iput-char v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    .line 186
    iget v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v9, v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v6, v9

    if-eqz v6, :cond_c

    :goto_b
    iput-boolean v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->browserSecure:Z

    .line 188
    const-wide v0, 0x4ffffffffL

    .local v0, "S0":J
    const-wide v2, 0x8004ffffffffL

    .local v2, "S1":J
    const-wide v4, 0x50000304ffffffffL    # 2.3175490007226655E77

    .line 203
    .local v4, "S2":J
    iget-boolean v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->browserSecure:Z

    if-eqz v6, :cond_d

    const-wide v6, 0x50000304ffffffffL    # 2.3175490007226655E77

    :goto_c
    iput-wide v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sepcialBits:J

    .line 206
    return-void

    .end local v0    # "S0":J
    .end local v2    # "S1":J
    .end local v4    # "S2":J
    :cond_1
    move v6, v8

    .line 169
    goto/16 :goto_0

    :cond_2
    move v6, v8

    .line 170
    goto/16 :goto_1

    :cond_3
    move v6, v8

    .line 171
    goto/16 :goto_2

    :cond_4
    move v6, v8

    .line 172
    goto/16 :goto_3

    :cond_5
    move v6, v8

    .line 173
    goto/16 :goto_4

    :cond_6
    move v6, v8

    .line 174
    goto :goto_5

    :cond_7
    move v6, v8

    .line 175
    goto :goto_6

    :cond_8
    move v6, v8

    .line 176
    goto :goto_7

    :cond_9
    move v6, v8

    .line 177
    goto :goto_8

    :cond_a
    move v6, v8

    .line 179
    goto :goto_9

    .line 184
    :cond_b
    const/16 v6, 0x22

    goto :goto_a

    :cond_c
    move v7, v8

    .line 186
    goto :goto_b

    .line 203
    .restart local v0    # "S0":J
    .restart local v2    # "S1":J
    .restart local v4    # "S2":J
    :cond_d
    iget v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_e

    const-wide v6, 0x8004ffffffffL

    goto :goto_c

    :cond_e
    const-wide v6, 0x4ffffffffL

    goto :goto_c
.end method

.method public config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    .locals 2
    .param p1, "feature"    # Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .param p2, "state"    # Z

    .prologue
    .line 142
    if-eqz p2, :cond_2

    .line 143
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 145
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne p1, v0, :cond_1

    .line 146
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 154
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->computeFeatures()V

    .line 155
    return-void

    .line 147
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne p1, v0, :cond_0

    .line 148
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    goto :goto_0

    .line 151
    :cond_2
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    goto :goto_0
.end method

.method public expandCapacity(I)V
    .locals 5
    .param p1, "minimumCapacity"    # I

    .prologue
    const/4 v4, 0x0

    .line 281
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->maxBufSize:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->maxBufSize:I

    if-lt p1, v2, :cond_0

    .line 282
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "serialize exceeded MAX_OUTPUT_LENGTH="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->maxBufSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", minimumCapacity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 285
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    add-int/lit8 v0, v2, 0x1

    .line 287
    .local v0, "newCapacity":I
    if-ge v0, p1, :cond_1

    .line 288
    move v0, p1

    .line 290
    :cond_1
    new-array v1, v0, [C

    .line 291
    .local v1, "newValue":[C
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    iput-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 293
    return-void
.end method

.method public flush()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2435
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_0

    .line 2446
    :goto_0
    return-void

    .line 2440
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v3, 0x0

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/Writer;->write([CII)V

    .line 2441
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2445
    iput v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    goto :goto_0

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

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    return v0
.end method

.method public getMaxBufSize()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->maxBufSize:I

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "feature"    # I

    .prologue
    .line 221
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
    .locals 2
    .param p1, "feature"    # Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 217
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    iget v1, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotWriteDefaultValue()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->notWriteDefaultValue:Z

    return v0
.end method

.method public isSortField()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sortField:Z

    return v0
.end method

.method public setMaxBufSize(I)V
    .locals 3
    .param p1, "maxBufSize"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 116
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "must > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    iput p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->maxBufSize:I

    .line 120
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return v0
.end method

.method public toBytes(Ljava/lang/String;)[B
    .locals 1
    .param p1, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 405
    if-eqz p1, :cond_0

    const-string v0, "UTF-8"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0

    .line 407
    :cond_1
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_0
.end method

.method public toBytes(Ljava/nio/charset/Charset;)[B
    .locals 4
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 411
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 412
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "writer not null"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    if-ne p1, v0, :cond_1

    .line 416
    invoke-direct {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->encodeToUTF8Bytes()[B

    move-result-object v0

    .line 418
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public toCharArray()[C
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 381
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v1, :cond_0

    .line 382
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "writer not null"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 385
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    new-array v0, v1, [C

    .line 386
    .local v0, "newValue":[C
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    return-object v0
.end method

.method public toCharArrayForSpringWebSocket()[C
    .locals 5

    .prologue
    .line 395
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v1, :cond_0

    .line 396
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "writer not null"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 399
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v1, -0x2

    new-array v0, v1, [C

    .line 400
    .local v0, "newValue":[C
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v4, v4, -0x2

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 401
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 465
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public write(I)V
    .locals 4
    .param p1, "c"    # I

    .prologue
    .line 228
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, v1, 0x1

    .line 229
    .local v0, "newcount":I
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_1

    .line 231
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 237
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    int-to-char v3, p1

    aput-char v3, v1, v2

    .line 238
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 239
    return-void

    .line 233
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 234
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public write(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 484
    if-nez p1, :cond_0

    .line 485
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 490
    :goto_0
    return-void

    .line 489
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public write(Ljava/lang/String;II)V
    .locals 5
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 320
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int v0, v2, p3

    .line 321
    .local v0, "newcount":I
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v0, v2, :cond_0

    .line 322
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v2, :cond_1

    .line 323
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 336
    :cond_0
    :goto_0
    add-int v2, p2, p3

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {p1, p2, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 337
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 338
    return-void

    .line 326
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int v1, v2, v3

    .line 327
    .local v1, "rest":I
    add-int v2, p2, v1

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {p1, p2, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 328
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 329
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 330
    sub-int/2addr p3, v1

    .line 331
    add-int/2addr p2, v1

    .line 332
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-gt p3, v2, :cond_1

    .line 333
    move v0, p3

    goto :goto_0
.end method

.method public write(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1552
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1553
    const-string v11, "[]"

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 1617
    :goto_0
    return-void

    .line 1557
    :cond_0
    iget v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1558
    .local v8, "offset":I
    move v3, v8

    .line 1559
    .local v3, "initOffset":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "list_size":I
    move v9, v8

    .end local v8    # "offset":I
    .local v9, "offset":I
    :goto_1
    if-ge v2, v6, :cond_c

    .line 1560
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1562
    .local v10, "text":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1563
    .local v1, "hasSpecial":Z
    if-nez v10, :cond_3

    .line 1564
    const/4 v1, 0x1

    .line 1577
    :cond_1
    if-eqz v1, :cond_8

    .line 1578
    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1579
    const/16 v11, 0x5b

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1580
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_7

    .line 1581
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "text":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 1582
    .restart local v10    # "text":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 1583
    const/16 v11, 0x2c

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1586
    :cond_2
    if-nez v10, :cond_6

    .line 1587
    const-string v11, "null"

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 1580
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1566
    .end local v4    # "j":I
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "j":I
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, "len":I
    :goto_4
    if-ge v4, v5, :cond_1

    .line 1567
    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1568
    .local v0, "ch":C
    const/16 v11, 0x20

    if-lt v0, v11, :cond_4

    const/16 v11, 0x7e

    if-gt v0, v11, :cond_4

    const/16 v11, 0x22

    if-eq v0, v11, :cond_4

    const/16 v11, 0x5c

    if-ne v0, v11, :cond_5

    :cond_4
    const/4 v1, 0x1

    :goto_5
    if-nez v1, :cond_1

    .line 1566
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1568
    :cond_5
    const/4 v1, 0x0

    goto :goto_5

    .line 1589
    .end local v0    # "ch":C
    .end local v5    # "len":I
    :cond_6
    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_3

    .line 1592
    :cond_7
    const/16 v11, 0x5d

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0

    .line 1596
    .end local v4    # "j":I
    :cond_8
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v9

    add-int/lit8 v7, v11, 0x3

    .line 1597
    .local v7, "newcount":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ne v2, v11, :cond_9

    .line 1598
    add-int/lit8 v7, v7, 0x1

    .line 1600
    :cond_9
    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v11, v11

    if-le v7, v11, :cond_a

    .line 1601
    iput v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1602
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1605
    :cond_a
    if-nez v2, :cond_b

    .line 1606
    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    const/16 v12, 0x5b

    aput-char v12, v11, v9

    .line 1610
    :goto_6
    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    const/16 v12, 0x22

    aput-char v12, v11, v8

    .line 1611
    const/4 v11, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    iget-object v13, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {v10, v11, v12, v13, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 1612
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    add-int v8, v9, v11

    .line 1613
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    const/16 v12, 0x22

    aput-char v12, v11, v8

    .line 1559
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1608
    :cond_b
    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    const/16 v12, 0x2c

    aput-char v12, v11, v9

    goto :goto_6

    .line 1615
    .end local v1    # "hasSpecial":Z
    .end local v7    # "newcount":I
    .end local v8    # "offset":I
    .end local v10    # "text":Ljava/lang/String;
    .restart local v9    # "offset":I
    :cond_c
    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    const/16 v12, 0x5d

    aput-char v12, v11, v9

    .line 1616
    iput v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    goto/16 :goto_0
.end method

.method public write(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1673
    if-eqz p1, :cond_0

    .line 1674
    const-string/jumbo v0, "true"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 1678
    :goto_0
    return-void

    .line 1676
    :cond_0
    const-string v0, "false"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public write([CII)V
    .locals 4
    .param p1, "c"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 249
    if-ltz p2, :cond_0

    array-length v2, p1

    if-gt p2, v2, :cond_0

    if-ltz p3, :cond_0

    add-int v2, p2, p3

    array-length v3, p1

    if-gt v2, v3, :cond_0

    add-int v2, p2, p3

    if-gez v2, :cond_1

    .line 254
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 255
    :cond_1
    if-nez p3, :cond_2

    .line 278
    :goto_0
    return-void

    .line 259
    :cond_2
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int v0, v2, p3

    .line 260
    .local v0, "newcount":I
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v0, v2, :cond_3

    .line 261
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v2, :cond_4

    .line 262
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 275
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    goto :goto_0

    .line 265
    :cond_4
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int v1, v2, v3

    .line 266
    .local v1, "rest":I
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 268
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 269
    sub-int/2addr p3, v1

    .line 270
    add-int/2addr p2, v1

    .line 271
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-gt p3, v2, :cond_4

    .line 272
    move v0, p3

    goto :goto_1
.end method

.method public writeByteArray([B)V
    .locals 20
    .param p1, "bytes"    # [B

    .prologue
    .line 518
    sget-object v17, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 519
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeHex([B)V

    .line 599
    :goto_0
    return-void

    .line 523
    :cond_0
    move-object/from16 v0, p1

    array-length v3, v0

    .line 524
    .local v3, "bytesLen":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    const/16 v14, 0x27

    .line 525
    .local v14, "quote":C
    :goto_1
    if-nez v3, :cond_3

    .line 526
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    const-string v8, "\'\'"

    .line 527
    .local v8, "emptyString":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 524
    .end local v8    # "emptyString":Ljava/lang/String;
    .end local v14    # "quote":C
    :cond_1
    const/16 v14, 0x22

    goto :goto_1

    .line 526
    .restart local v14    # "quote":C
    :cond_2
    const-string v8, "\"\""

    goto :goto_2

    .line 531
    :cond_3
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->CA:[C

    .line 533
    .local v2, "CA":[C
    div-int/lit8 v17, v3, 0x3

    mul-int/lit8 v7, v17, 0x3

    .line 534
    .local v7, "eLen":I
    add-int/lit8 v17, v3, -0x1

    div-int/lit8 v17, v17, 0x3

    add-int/lit8 v17, v17, 0x1

    shl-int/lit8 v4, v17, 0x2

    .line 536
    .local v4, "charsLen":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 537
    .local v12, "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v17, v0

    add-int v17, v17, v4

    add-int/lit8 v11, v17, 0x2

    .line 538
    .local v11, "newcount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v11, v0, :cond_9

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 540
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 542
    const/4 v15, 0x0

    .local v15, "s":I
    move/from16 v16, v15

    .end local v15    # "s":I
    .local v16, "s":I
    :goto_3
    move/from16 v0, v16

    if-ge v0, v7, :cond_4

    .line 544
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "s":I
    .restart local v15    # "s":I
    aget-byte v17, p1, v16

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x10

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "s":I
    .restart local v16    # "s":I
    aget-byte v18, p1, v15

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x8

    or-int v17, v17, v18

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "s":I
    .restart local v15    # "s":I
    aget-byte v18, p1, v16

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    or-int v9, v17, v18

    .line 547
    .local v9, "i":I
    ushr-int/lit8 v17, v9, 0x12

    and-int/lit8 v17, v17, 0x3f

    aget-char v17, v2, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 548
    ushr-int/lit8 v17, v9, 0xc

    and-int/lit8 v17, v17, 0x3f

    aget-char v17, v2, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 549
    ushr-int/lit8 v17, v9, 0x6

    and-int/lit8 v17, v17, 0x3f

    aget-char v17, v2, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 550
    and-int/lit8 v17, v9, 0x3f

    aget-char v17, v2, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    move/from16 v16, v15

    .line 551
    .end local v15    # "s":I
    .restart local v16    # "s":I
    goto :goto_3

    .line 554
    .end local v9    # "i":I
    :cond_4
    sub-int v10, v3, v7

    .line 555
    .local v10, "left":I
    if-lez v10, :cond_5

    .line 557
    aget-byte v17, p1, v7

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v18, v17, 0xa

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v10, v0, :cond_6

    add-int/lit8 v17, v3, -0x1

    aget-byte v17, p1, v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x2

    :goto_4
    or-int v9, v18, v17

    .line 560
    .restart local v9    # "i":I
    shr-int/lit8 v17, v9, 0xc

    aget-char v17, v2, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 561
    ushr-int/lit8 v17, v9, 0x6

    and-int/lit8 v17, v17, 0x3f

    aget-char v17, v2, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 562
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v10, v0, :cond_7

    and-int/lit8 v17, v9, 0x3f

    aget-char v17, v2, v17

    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 563
    const/16 v17, 0x3d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 566
    .end local v9    # "i":I
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_0

    .line 557
    :cond_6
    const/16 v17, 0x0

    goto :goto_4

    .line 562
    .restart local v9    # "i":I
    :cond_7
    const/16 v17, 0x3d

    goto :goto_5

    .line 569
    .end local v9    # "i":I
    .end local v10    # "left":I
    .end local v16    # "s":I
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 571
    :cond_9
    move-object/from16 v0, p0

    iput v11, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v17, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .local v13, "offset":I
    aput-char v14, v17, v12

    .line 575
    const/4 v15, 0x0

    .restart local v15    # "s":I
    move v5, v13

    .local v5, "d":I
    move v6, v5

    .end local v5    # "d":I
    .local v6, "d":I
    move/from16 v16, v15

    .end local v15    # "s":I
    .restart local v16    # "s":I
    :goto_6
    move/from16 v0, v16

    if-ge v0, v7, :cond_a

    .line 577
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "s":I
    .restart local v15    # "s":I
    aget-byte v17, p1, v16

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x10

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "s":I
    .restart local v16    # "s":I
    aget-byte v18, p1, v15

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x8

    or-int v17, v17, v18

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "s":I
    .restart local v15    # "s":I
    aget-byte v18, p1, v16

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    or-int v9, v17, v18

    .line 580
    .restart local v9    # "i":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v17, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "d":I
    .restart local v5    # "d":I
    ushr-int/lit8 v18, v9, 0x12

    and-int/lit8 v18, v18, 0x3f

    aget-char v18, v2, v18

    aput-char v18, v17, v6

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v17, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "d":I
    .restart local v6    # "d":I
    ushr-int/lit8 v18, v9, 0xc

    and-int/lit8 v18, v18, 0x3f

    aget-char v18, v2, v18

    aput-char v18, v17, v5

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v17, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "d":I
    .restart local v5    # "d":I
    ushr-int/lit8 v18, v9, 0x6

    and-int/lit8 v18, v18, 0x3f

    aget-char v18, v2, v18

    aput-char v18, v17, v6

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v17, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "d":I
    .restart local v6    # "d":I
    and-int/lit8 v18, v9, 0x3f

    aget-char v18, v2, v18

    aput-char v18, v17, v5

    move/from16 v16, v15

    .line 584
    .end local v15    # "s":I
    .restart local v16    # "s":I
    goto :goto_6

    .line 587
    .end local v9    # "i":I
    :cond_a
    sub-int v10, v3, v7

    .line 588
    .restart local v10    # "left":I
    if-lez v10, :cond_b

    .line 590
    aget-byte v17, p1, v7

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v18, v17, 0xa

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v10, v0, :cond_c

    add-int/lit8 v17, v3, -0x1

    aget-byte v17, p1, v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x2

    :goto_7
    or-int v9, v18, v17

    .line 593
    .restart local v9    # "i":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v17, v0

    add-int/lit8 v18, v11, -0x5

    shr-int/lit8 v19, v9, 0xc

    aget-char v19, v2, v19

    aput-char v19, v17, v18

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v17, v0

    add-int/lit8 v18, v11, -0x4

    ushr-int/lit8 v19, v9, 0x6

    and-int/lit8 v19, v19, 0x3f

    aget-char v19, v2, v19

    aput-char v19, v17, v18

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v18, v0

    add-int/lit8 v19, v11, -0x3

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v10, v0, :cond_d

    and-int/lit8 v17, v9, 0x3f

    aget-char v17, v2, v17

    :goto_8
    aput-char v17, v18, v19

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v17, v0

    add-int/lit8 v18, v11, -0x2

    const/16 v19, 0x3d

    aput-char v19, v17, v18

    .line 598
    .end local v9    # "i":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v17, v0

    add-int/lit8 v18, v11, -0x1

    aput-char v14, v17, v18

    goto/16 :goto_0

    .line 590
    :cond_c
    const/16 v17, 0x0

    goto :goto_7

    .line 595
    .restart local v9    # "i":I
    :cond_d
    const/16 v17, 0x3d

    goto :goto_8
.end method

.method public writeDouble(DZ)V
    .locals 3
    .param p1, "doubleValue"    # D
    .param p3, "checkWriteClassName"    # Z

    .prologue
    .line 665
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_0

    .line 666
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 667
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 680
    :cond_1
    :goto_0
    return-void

    .line 669
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    .line 670
    .local v0, "doubleText":Ljava/lang/String;
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 671
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 674
    :cond_3
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 676
    if-eqz p3, :cond_1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 677
    const/16 v1, 0x44

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0
.end method

.method public writeEnum(Ljava/lang/Enum;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 683
    .local p1, "value":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    if-nez p1, :cond_0

    .line 684
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 703
    :goto_0
    return-void

    .line 688
    :cond_0
    const/4 v1, 0x0

    .line 689
    .local v1, "strVal":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingName:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingToString:Z

    if-nez v2, :cond_2

    .line 690
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 695
    :cond_1
    :goto_1
    if-eqz v1, :cond_4

    .line 696
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v0, 0x27

    .line 697
    .local v0, "quote":C
    :goto_2
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 698
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 699
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0

    .line 691
    .end local v0    # "quote":C
    :cond_2
    iget-boolean v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingToString:Z

    if-eqz v2, :cond_1

    .line 692
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 696
    :cond_3
    const/16 v0, 0x22

    goto :goto_2

    .line 701
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    goto :goto_0
.end method

.method public writeFieldName(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
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

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v10, 0x3a

    .line 2298
    if-nez p1, :cond_0

    .line 2299
    const-string v4, "null:"

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 2331
    :goto_0
    return-void

    .line 2303
    :cond_0
    iget-boolean v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v6, :cond_2

    .line 2304
    iget-boolean v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-eqz v4, :cond_1

    .line 2305
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    .line 2306
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0

    .line 2308
    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeKeyWithSingleQuoteIfHasSpecial(Ljava/lang/String;)V

    goto :goto_0

    .line 2311
    :cond_2
    iget-boolean v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-eqz v6, :cond_3

    .line 2312
    invoke-virtual {p0, p1, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_0

    .line 2314
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_7

    move v1, v4

    .line 2315
    .local v1, "hashSpecial":Z
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_6

    .line 2316
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2317
    .local v0, "ch":C
    const/16 v6, 0x40

    if-ge v0, v6, :cond_4

    iget-wide v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sepcialBits:J

    const-wide/16 v8, 0x1

    shl-long/2addr v8, v0

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    :cond_4
    const/16 v6, 0x5c

    if-ne v0, v6, :cond_8

    :cond_5
    move v3, v4

    .line 2318
    .local v3, "special":Z
    :goto_3
    if-eqz v3, :cond_9

    .line 2319
    const/4 v1, 0x1

    .line 2323
    .end local v0    # "ch":C
    .end local v3    # "special":Z
    :cond_6
    if-eqz v1, :cond_a

    .line 2324
    invoke-virtual {p0, p1, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_0

    .end local v1    # "hashSpecial":Z
    .end local v2    # "i":I
    :cond_7
    move v1, v5

    .line 2314
    goto :goto_1

    .restart local v0    # "ch":C
    .restart local v1    # "hashSpecial":Z
    .restart local v2    # "i":I
    :cond_8
    move v3, v5

    .line 2317
    goto :goto_3

    .line 2315
    .restart local v3    # "special":Z
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2326
    .end local v0    # "ch":C
    .end local v3    # "special":Z
    :cond_a
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 2327
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0
.end method

.method public writeFieldNameDirect(Ljava/lang/String;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x22

    .line 1534
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1535
    .local v0, "len":I
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v3, v0

    add-int/lit8 v1, v3, 0x3

    .line 1537
    .local v1, "newcount":I
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-le v1, v3, :cond_0

    .line 1538
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1541
    :cond_0
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v2, v3, 0x1

    .line 1543
    .local v2, "start":I
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v5, v3, v4

    .line 1544
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p1, v3, v0, v4, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 1546
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1547
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v4, v4, -0x2

    aput-char v5, v3, v4

    .line 1548
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v4, v4, -0x1

    const/16 v5, 0x3a

    aput-char v5, v3, v4

    .line 1549
    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;C)V
    .locals 1
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # C

    .prologue
    .line 1621
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1622
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1623
    if-nez p3, :cond_0

    .line 1624
    const-string v0, "\u0000"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 1628
    :goto_0
    return-void

    .line 1626
    :cond_0
    invoke-static {p3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeFieldValue(CLjava/lang/String;D)V
    .locals 1
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # D

    .prologue
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

    .prologue
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

    .prologue
    .line 1681
    const/high16 v5, -0x80000000

    if-eq p3, v5, :cond_0

    iget-boolean v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-nez v5, :cond_1

    .line 1682
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1683
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1684
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 1717
    :goto_0
    return-void

    .line 1688
    :cond_1
    if-gez p3, :cond_2

    neg-int v5, p3

    invoke-static {v5}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v5

    add-int/lit8 v0, v5, 0x1

    .line 1690
    .local v0, "intSize":I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 1691
    .local v2, "nameLen":I
    iget v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, 0x4

    add-int v3, v5, v0

    .line 1692
    .local v3, "newcount":I
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v5, v5

    if-le v3, v5, :cond_4

    .line 1693
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v5, :cond_3

    .line 1694
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1695
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1696
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    goto :goto_0

    .line 1688
    .end local v0    # "intSize":I
    .end local v2    # "nameLen":I
    .end local v3    # "newcount":I
    :cond_2
    invoke-static {p3}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v0

    goto :goto_1

    .line 1699
    .restart local v0    # "intSize":I
    .restart local v2    # "nameLen":I
    .restart local v3    # "newcount":I
    :cond_3
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1702
    :cond_4
    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1703
    .local v4, "start":I
    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1705
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char p1, v5, v4

    .line 1707
    add-int v5, v4, v2

    add-int/lit8 v1, v5, 0x1

    .line 1709
    .local v1, "nameEnd":I
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v4, 0x1

    iget-char v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    aput-char v7, v5, v6

    .line 1711
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v4, 0x2

    invoke-virtual {p2, v5, v2, v6, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 1713
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v1, 0x1

    iget-char v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    aput-char v7, v5, v6

    .line 1714
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v1, 0x2

    const/16 v7, 0x3a

    aput-char v7, v5, v6

    .line 1716
    iget v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p3, v5, v6}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    goto :goto_0
.end method

.method public writeFieldValue(CLjava/lang/String;J)V
    .locals 9
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 1720
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v5, p3, v6

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-nez v5, :cond_1

    .line 1721
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1722
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1723
    invoke-virtual {p0, p3, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 1756
    :goto_0
    return-void

    .line 1727
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v5, p3, v6

    if-gez v5, :cond_2

    neg-long v6, p3

    invoke-static {v6, v7}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v5

    add-int/lit8 v0, v5, 0x1

    .line 1729
    .local v0, "intSize":I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 1730
    .local v2, "nameLen":I
    iget v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, 0x4

    add-int v3, v5, v0

    .line 1731
    .local v3, "newcount":I
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v5, v5

    if-le v3, v5, :cond_4

    .line 1732
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v5, :cond_3

    .line 1733
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1734
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1735
    invoke-virtual {p0, p3, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    goto :goto_0

    .line 1727
    .end local v0    # "intSize":I
    .end local v2    # "nameLen":I
    .end local v3    # "newcount":I
    :cond_2
    invoke-static {p3, p4}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v0

    goto :goto_1

    .line 1738
    .restart local v0    # "intSize":I
    .restart local v2    # "nameLen":I
    .restart local v3    # "newcount":I
    :cond_3
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1741
    :cond_4
    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1742
    .local v4, "start":I
    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1744
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char p1, v5, v4

    .line 1746
    add-int v5, v4, v2

    add-int/lit8 v1, v5, 0x1

    .line 1748
    .local v1, "nameEnd":I
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v4, 0x1

    iget-char v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    aput-char v7, v5, v6

    .line 1750
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v4, 0x2

    invoke-virtual {p2, v5, v2, v6, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 1752
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v1, 0x1

    iget-char v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    aput-char v7, v5, v6

    .line 1753
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v1, 0x2

    const/16 v7, 0x3a

    aput-char v7, v5, v6

    .line 1755
    iget v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p3, p4, v5, v6}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    goto :goto_0
.end method

.method public writeFieldValue(CLjava/lang/String;Ljava/lang/Enum;)V
    .locals 1
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/lang/String;",
            "Ljava/lang/Enum",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2066
    .local p3, "value":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    if-nez p3, :cond_0

    .line 2067
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2068
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 2069
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 2080
    :goto_0
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

    goto :goto_0
.end method

.method public writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
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

    .line 1798
    :goto_0
    return-void

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

    goto :goto_0
.end method

.method public writeFieldValue(CLjava/lang/String;Ljava/math/BigDecimal;)V
    .locals 1
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/math/BigDecimal;

    .prologue
    .line 2091
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2092
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 2093
    if-nez p3, :cond_0

    .line 2094
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 2098
    :goto_0
    return-void

    .line 2096
    :cond_0
    invoke-virtual {p3}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeFieldValue(CLjava/lang/String;Z)V
    .locals 10
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .prologue
    const/4 v5, 0x5

    const/4 v9, 0x0

    .line 1631
    iget-boolean v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-nez v6, :cond_0

    .line 1632
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1633
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1634
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Z)V

    .line 1670
    :goto_0
    return-void

    .line 1637
    :cond_0
    if-eqz p3, :cond_1

    const/4 v0, 0x4

    .line 1639
    .local v0, "intSize":I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 1640
    .local v2, "nameLen":I
    iget v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v6, v2

    add-int/lit8 v6, v6, 0x4

    add-int v3, v6, v0

    .line 1641
    .local v3, "newcount":I
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v6, v6

    if-le v3, v6, :cond_3

    .line 1642
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v6, :cond_2

    .line 1643
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1644
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 1645
    const/16 v5, 0x3a

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1646
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Z)V

    goto :goto_0

    .end local v0    # "intSize":I
    .end local v2    # "nameLen":I
    .end local v3    # "newcount":I
    :cond_1
    move v0, v5

    .line 1637
    goto :goto_1

    .line 1649
    .restart local v0    # "intSize":I
    .restart local v2    # "nameLen":I
    .restart local v3    # "newcount":I
    :cond_2
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1652
    :cond_3
    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1653
    .local v4, "start":I
    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1655
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char p1, v6, v4

    .line 1657
    add-int v6, v4, v2

    add-int/lit8 v1, v6, 0x1

    .line 1659
    .local v1, "nameEnd":I
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v4, 0x1

    iget-char v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    aput-char v8, v6, v7

    .line 1661
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v4, 0x2

    invoke-virtual {p2, v9, v2, v6, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 1663
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v1, 0x1

    iget-char v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    aput-char v8, v6, v7

    .line 1665
    if-eqz p3, :cond_4

    .line 1666
    const-string v6, ":true"

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v1, 0x2

    invoke-static {v6, v9, v7, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 1668
    :cond_4
    const-string v5, ":false"

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v1, 0x2

    const/4 v8, 0x6

    invoke-static {v5, v9, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public writeFieldValueStringWithDoubleQuote(CLjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 2024
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 2027
    .local v3, "nameLen":I
    iget v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2029
    .local v5, "newcount":I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    .line 2030
    .local v6, "valueLen":I
    add-int v8, v3, v6

    add-int/lit8 v8, v8, 0x6

    add-int/2addr v5, v8

    .line 2032
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v8, v8

    if-le v5, v8, :cond_1

    .line 2033
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v8, :cond_0

    .line 2034
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2035
    const/16 v8, 0x3a

    invoke-virtual {p0, p2, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 2036
    const/4 v8, 0x0

    invoke-virtual {p0, p3, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 2061
    :goto_0
    return-void

    .line 2039
    :cond_0
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 2042
    :cond_1
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char p1, v8, v9

    .line 2044
    iget v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v4, v8, 0x2

    .line 2045
    .local v4, "nameStart":I
    add-int v2, v4, v3

    .line 2047
    .local v2, "nameEnd":I
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v9, v9, 0x1

    const/16 v10, 0x22

    aput-char v10, v8, v9

    .line 2048
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p2, v8, v3, v9, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 2050
    iput v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2052
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v9, 0x22

    aput-char v9, v8, v2

    .line 2054
    add-int/lit8 v0, v2, 0x1

    .line 2055
    .local v0, "index":I
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    const/16 v9, 0x3a

    aput-char v9, v8, v0

    .line 2056
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    const/16 v9, 0x22

    aput-char v9, v8, v1

    .line 2058
    move v7, v0

    .line 2059
    .local v7, "valueStart":I
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p3, v8, v6, v9, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 2060
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v9, v9, -0x1

    const/16 v10, 0x22

    aput-char v10, v8, v9

    goto :goto_0
.end method

.method public writeFieldValueStringWithDoubleQuoteCheck(CLjava/lang/String;Ljava/lang/String;)V
    .locals 32
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1801
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v18

    .line 1804
    .local v18, "nameLen":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v20, v0

    .line 1806
    .local v20, "newcount":I
    if-nez p3, :cond_0

    .line 1807
    const/16 v26, 0x4

    .line 1808
    .local v26, "valueLen":I
    add-int/lit8 v28, v18, 0x8

    add-int v20, v20, v28

    .line 1814
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v20

    move/from16 v1, v28

    if-le v0, v1, :cond_2

    .line 1815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1

    .line 1816
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1817
    const/16 v28, 0x3a

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 1818
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 2021
    :goto_1
    return-void

    .line 1810
    .end local v26    # "valueLen":I
    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v26

    .line 1811
    .restart local v26    # "valueLen":I
    add-int v28, v18, v26

    add-int/lit8 v28, v28, 0x6

    add-int v20, v20, v28

    goto :goto_0

    .line 1821
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1824
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v29, v0

    aput-char p1, v28, v29

    .line 1826
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v28, v0

    add-int/lit8 v19, v28, 0x2

    .line 1827
    .local v19, "nameStart":I
    add-int v17, v19, v18

    .line 1829
    .local v17, "nameEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x1

    const/16 v30, 0x22

    aput-char v30, v28, v29

    .line 1830
    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v29, v0

    move-object/from16 v0, p2

    move/from16 v1, v28

    move/from16 v2, v18

    move-object/from16 v3, v29

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1832
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    const/16 v29, 0x22

    aput-char v29, v28, v17

    .line 1836
    add-int/lit8 v13, v17, 0x1

    .line 1837
    .local v13, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "index":I
    .local v14, "index":I
    const/16 v29, 0x3a

    aput-char v29, v28, v13

    .line 1839
    if-nez p3, :cond_3

    .line 1840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "index":I
    .restart local v13    # "index":I
    const/16 v29, 0x6e

    aput-char v29, v28, v14

    .line 1841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "index":I
    .restart local v14    # "index":I
    const/16 v29, 0x75

    aput-char v29, v28, v13

    .line 1842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "index":I
    .restart local v13    # "index":I
    const/16 v29, 0x6c

    aput-char v29, v28, v14

    .line 1843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "index":I
    .restart local v14    # "index":I
    const/16 v29, 0x6c

    aput-char v29, v28, v13

    goto/16 :goto_1

    .line 1847
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "index":I
    .restart local v13    # "index":I
    const/16 v29, 0x22

    aput-char v29, v28, v14

    .line 1849
    move/from16 v27, v13

    .line 1850
    .local v27, "valueStart":I
    add-int v25, v27, v26

    .line 1852
    .local v25, "valueEnd":I
    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v29, v0

    move-object/from16 v0, p3

    move/from16 v1, v28

    move/from16 v2, v26

    move-object/from16 v3, v29

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1854
    const/16 v22, 0x0

    .line 1855
    .local v22, "specialCount":I
    const/16 v16, -0x1

    .line 1856
    .local v16, "lastSpecialIndex":I
    const/4 v11, -0x1

    .line 1857
    .local v11, "firstSpecialIndex":I
    const/4 v15, 0x0

    .line 1859
    .local v15, "lastSpecial":C
    move/from16 v12, v27

    .local v12, "i":I
    :goto_2
    move/from16 v0, v25

    if-ge v12, v0, :cond_d

    .line 1860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    aget-char v9, v28, v12

    .line 1862
    .local v9, "ch":C
    const/16 v28, 0x5d

    move/from16 v0, v28

    if-lt v9, v0, :cond_7

    .line 1863
    const/16 v28, 0x7f

    move/from16 v0, v28

    if-lt v9, v0, :cond_6

    const/16 v28, 0x2028

    move/from16 v0, v28

    if-eq v9, v0, :cond_4

    const/16 v28, 0x2029

    move/from16 v0, v28

    if-eq v9, v0, :cond_4

    const/16 v28, 0xa0

    move/from16 v0, v28

    if-ge v9, v0, :cond_6

    .line 1867
    :cond_4
    const/16 v28, -0x1

    move/from16 v0, v28

    if-ne v11, v0, :cond_5

    .line 1868
    move v11, v12

    .line 1871
    :cond_5
    add-int/lit8 v22, v22, 0x1

    .line 1872
    move/from16 v16, v12

    .line 1873
    move v15, v9

    .line 1874
    add-int/lit8 v20, v20, 0x4

    .line 1859
    :cond_6
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1879
    :cond_7
    const/16 v28, 0x40

    move/from16 v0, v28

    if-ge v9, v0, :cond_8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sepcialBits:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x1

    shl-long v30, v30, v9

    and-long v28, v28, v30

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-nez v28, :cond_9

    :cond_8
    const/16 v28, 0x5c

    move/from16 v0, v28

    if-ne v9, v0, :cond_c

    :cond_9
    const/16 v21, 0x1

    .line 1880
    .local v21, "special":Z
    :goto_4
    if-eqz v21, :cond_6

    .line 1881
    add-int/lit8 v22, v22, 0x1

    .line 1882
    move/from16 v16, v12

    .line 1883
    move v15, v9

    .line 1885
    const/16 v28, 0x28

    move/from16 v0, v28

    if-eq v9, v0, :cond_a

    const/16 v28, 0x29

    move/from16 v0, v28

    if-eq v9, v0, :cond_a

    const/16 v28, 0x3c

    move/from16 v0, v28

    if-eq v9, v0, :cond_a

    const/16 v28, 0x3e

    move/from16 v0, v28

    if-eq v9, v0, :cond_a

    sget-object v28, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v9, v0, :cond_b

    sget-object v28, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v28, v28, v9

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_b

    .line 1892
    :cond_a
    add-int/lit8 v20, v20, 0x4

    .line 1895
    :cond_b
    const/16 v28, -0x1

    move/from16 v0, v28

    if-ne v11, v0, :cond_6

    .line 1896
    move v11, v12

    goto :goto_3

    .line 1879
    .end local v21    # "special":Z
    :cond_c
    const/16 v21, 0x0

    goto :goto_4

    .line 1901
    .end local v9    # "ch":C
    :cond_d
    if-lez v22, :cond_f

    .line 1902
    add-int v20, v20, v22

    .line 1903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v20

    move/from16 v1, v28

    if-le v0, v1, :cond_e

    .line 1904
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1906
    :cond_e
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1908
    const/16 v28, 0x1

    move/from16 v0, v22

    move/from16 v1, v28

    if-ne v0, v1, :cond_15

    .line 1909
    const/16 v28, 0x2028

    move/from16 v0, v28

    if-ne v15, v0, :cond_10

    .line 1910
    add-int/lit8 v23, v16, 0x1

    .line 1911
    .local v23, "srcPos":I
    add-int/lit8 v10, v16, 0x6

    .line 1912
    .local v10, "destPos":I
    sub-int v28, v25, v16

    add-int/lit8 v6, v28, -0x1

    .line 1913
    .local v6, "LengthOfCopy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move/from16 v1, v23

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    const/16 v29, 0x5c

    aput-char v29, v28, v16

    .line 1915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v16, v16, 0x1

    const/16 v29, 0x75

    aput-char v29, v28, v16

    .line 1916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v16, v16, 0x1

    const/16 v29, 0x32

    aput-char v29, v28, v16

    .line 1917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v16, v16, 0x1

    const/16 v29, 0x30

    aput-char v29, v28, v16

    .line 1918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v16, v16, 0x1

    const/16 v29, 0x32

    aput-char v29, v28, v16

    .line 1919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v16, v16, 0x1

    const/16 v29, 0x38

    aput-char v29, v28, v16

    .line 2020
    .end local v6    # "LengthOfCopy":I
    .end local v10    # "destPos":I
    .end local v23    # "srcPos":I
    :cond_f
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, -0x1

    const/16 v30, 0x22

    aput-char v30, v28, v29

    goto/16 :goto_1

    .line 1920
    :cond_10
    const/16 v28, 0x2029

    move/from16 v0, v28

    if-ne v15, v0, :cond_11

    .line 1921
    add-int/lit8 v23, v16, 0x1

    .line 1922
    .restart local v23    # "srcPos":I
    add-int/lit8 v10, v16, 0x6

    .line 1923
    .restart local v10    # "destPos":I
    sub-int v28, v25, v16

    add-int/lit8 v6, v28, -0x1

    .line 1924
    .restart local v6    # "LengthOfCopy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move/from16 v1, v23

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    const/16 v29, 0x5c

    aput-char v29, v28, v16

    .line 1926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v16, v16, 0x1

    const/16 v29, 0x75

    aput-char v29, v28, v16

    .line 1927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v16, v16, 0x1

    const/16 v29, 0x32

    aput-char v29, v28, v16

    .line 1928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v16, v16, 0x1

    const/16 v29, 0x30

    aput-char v29, v28, v16

    .line 1929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v16, v16, 0x1

    const/16 v29, 0x32

    aput-char v29, v28, v16

    .line 1930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v16, v16, 0x1

    const/16 v29, 0x39

    aput-char v29, v28, v16

    goto :goto_5

    .line 1931
    .end local v6    # "LengthOfCopy":I
    .end local v10    # "destPos":I
    .end local v23    # "srcPos":I
    :cond_11
    const/16 v28, 0x28

    move/from16 v0, v28

    if-eq v15, v0, :cond_12

    const/16 v28, 0x29

    move/from16 v0, v28

    if-eq v15, v0, :cond_12

    const/16 v28, 0x3c

    move/from16 v0, v28

    if-eq v15, v0, :cond_12

    const/16 v28, 0x3e

    move/from16 v0, v28

    if-ne v15, v0, :cond_13

    .line 1932
    :cond_12
    move v9, v15

    .line 1933
    .restart local v9    # "ch":C
    add-int/lit8 v23, v16, 0x1

    .line 1934
    .restart local v23    # "srcPos":I
    add-int/lit8 v10, v16, 0x6

    .line 1935
    .restart local v10    # "destPos":I
    sub-int v28, v25, v16

    add-int/lit8 v6, v28, -0x1

    .line 1936
    .restart local v6    # "LengthOfCopy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move/from16 v1, v23

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1938
    move/from16 v7, v16

    .line 1939
    .local v7, "bufIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "bufIndex":I
    .local v8, "bufIndex":I
    const/16 v29, 0x5c

    aput-char v29, v28, v7

    .line 1940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    const/16 v29, 0x75

    aput-char v29, v28, v8

    .line 1941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "bufIndex":I
    .restart local v8    # "bufIndex":I
    sget-object v29, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v30, v9, 0xc

    and-int/lit8 v30, v30, 0xf

    aget-char v29, v29, v30

    aput-char v29, v28, v7

    .line 1942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    sget-object v29, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v30, v9, 0x8

    and-int/lit8 v30, v30, 0xf

    aget-char v29, v29, v30

    aput-char v29, v28, v8

    .line 1943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "bufIndex":I
    .restart local v8    # "bufIndex":I
    sget-object v29, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v30, v9, 0x4

    and-int/lit8 v30, v30, 0xf

    aget-char v29, v29, v30

    aput-char v29, v28, v7

    .line 1944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    sget-object v29, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v30, v9, 0xf

    aget-char v29, v29, v30

    aput-char v29, v28, v8

    goto/16 :goto_5

    .line 1946
    .end local v6    # "LengthOfCopy":I
    .end local v7    # "bufIndex":I
    .end local v9    # "ch":C
    .end local v10    # "destPos":I
    .end local v23    # "srcPos":I
    :cond_13
    move v9, v15

    .line 1947
    .restart local v9    # "ch":C
    sget-object v28, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v9, v0, :cond_14

    sget-object v28, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v28, v28, v9

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_14

    .line 1949
    add-int/lit8 v23, v16, 0x1

    .line 1950
    .restart local v23    # "srcPos":I
    add-int/lit8 v10, v16, 0x6

    .line 1951
    .restart local v10    # "destPos":I
    sub-int v28, v25, v16

    add-int/lit8 v6, v28, -0x1

    .line 1952
    .restart local v6    # "LengthOfCopy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move/from16 v1, v23

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1954
    move/from16 v7, v16

    .line 1955
    .restart local v7    # "bufIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "bufIndex":I
    .restart local v8    # "bufIndex":I
    const/16 v29, 0x5c

    aput-char v29, v28, v7

    .line 1956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    const/16 v29, 0x75

    aput-char v29, v28, v8

    .line 1957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "bufIndex":I
    .restart local v8    # "bufIndex":I
    sget-object v29, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v30, v9, 0xc

    and-int/lit8 v30, v30, 0xf

    aget-char v29, v29, v30

    aput-char v29, v28, v7

    .line 1958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    sget-object v29, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v30, v9, 0x8

    and-int/lit8 v30, v30, 0xf

    aget-char v29, v29, v30

    aput-char v29, v28, v8

    .line 1959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "bufIndex":I
    .restart local v8    # "bufIndex":I
    sget-object v29, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v30, v9, 0x4

    and-int/lit8 v30, v30, 0xf

    aget-char v29, v29, v30

    aput-char v29, v28, v7

    .line 1960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    sget-object v29, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v30, v9, 0xf

    aget-char v29, v29, v30

    aput-char v29, v28, v8

    goto/16 :goto_5

    .line 1962
    .end local v6    # "LengthOfCopy":I
    .end local v7    # "bufIndex":I
    .end local v10    # "destPos":I
    .end local v23    # "srcPos":I
    :cond_14
    add-int/lit8 v23, v16, 0x1

    .line 1963
    .restart local v23    # "srcPos":I
    add-int/lit8 v10, v16, 0x2

    .line 1964
    .restart local v10    # "destPos":I
    sub-int v28, v25, v16

    add-int/lit8 v6, v28, -0x1

    .line 1965
    .restart local v6    # "LengthOfCopy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move/from16 v1, v23

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    const/16 v29, 0x5c

    aput-char v29, v28, v16

    .line 1967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v16, v16, 0x1

    sget-object v29, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v29, v29, v9

    aput-char v29, v28, v16

    goto/16 :goto_5

    .line 1970
    .end local v6    # "LengthOfCopy":I
    .end local v9    # "ch":C
    .end local v10    # "destPos":I
    .end local v23    # "srcPos":I
    :cond_15
    const/16 v28, 0x1

    move/from16 v0, v22

    move/from16 v1, v28

    if-le v0, v1, :cond_f

    .line 1971
    sub-int v24, v11, v27

    .line 1972
    .local v24, "textIndex":I
    move v7, v11

    .line 1973
    .restart local v7    # "bufIndex":I
    move/from16 v12, v24

    :goto_6
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v28

    move/from16 v0, v28

    if-ge v12, v0, :cond_f

    .line 1974
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 1976
    .restart local v9    # "ch":C
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->browserSecure:Z

    move/from16 v28, v0

    if-eqz v28, :cond_17

    const/16 v28, 0x28

    move/from16 v0, v28

    if-eq v9, v0, :cond_16

    const/16 v28, 0x29

    move/from16 v0, v28

    if-eq v9, v0, :cond_16

    const/16 v28, 0x3c

    move/from16 v0, v28

    if-eq v9, v0, :cond_16

    const/16 v28, 0x3e

    move/from16 v0, v28

    if-ne v9, v0, :cond_17

    .line 1980
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "bufIndex":I
    .restart local v8    # "bufIndex":I
    const/16 v29, 0x5c

    aput-char v29, v28, v7

    .line 1981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    const/16 v29, 0x75

    aput-char v29, v28, v8

    .line 1982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "bufIndex":I
    .restart local v8    # "bufIndex":I
    sget-object v29, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v30, v9, 0xc

    and-int/lit8 v30, v30, 0xf

    aget-char v29, v29, v30

    aput-char v29, v28, v7

    .line 1983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    sget-object v29, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v30, v9, 0x8

    and-int/lit8 v30, v30, 0xf

    aget-char v29, v29, v30

    aput-char v29, v28, v8

    .line 1984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "bufIndex":I
    .restart local v8    # "bufIndex":I
    sget-object v29, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v30, v9, 0x4

    and-int/lit8 v30, v30, 0xf

    aget-char v29, v29, v30

    aput-char v29, v28, v7

    .line 1985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    sget-object v29, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v30, v9, 0xf

    aget-char v29, v29, v30

    aput-char v29, v28, v8

    .line 1986
    add-int/lit8 v25, v25, 0x5

    .line 1973
    :goto_7
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_6

    .line 1987
    :cond_17
    sget-object v28, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v9, v0, :cond_18

    sget-object v28, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v28, v28, v9

    if-nez v28, :cond_19

    :cond_18
    const/16 v28, 0x2f

    move/from16 v0, v28

    if-ne v9, v0, :cond_1b

    sget-object v28, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 1989
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v28

    if-eqz v28, :cond_1b

    .line 1990
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "bufIndex":I
    .restart local v8    # "bufIndex":I
    const/16 v29, 0x5c

    aput-char v29, v28, v7

    .line 1991
    sget-object v28, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v28, v28, v9

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1a

    .line 1992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    const/16 v29, 0x75

    aput-char v29, v28, v8

    .line 1993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "bufIndex":I
    .restart local v8    # "bufIndex":I
    sget-object v29, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v30, v9, 0xc

    and-int/lit8 v30, v30, 0xf

    aget-char v29, v29, v30

    aput-char v29, v28, v7

    .line 1994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    sget-object v29, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v30, v9, 0x8

    and-int/lit8 v30, v30, 0xf

    aget-char v29, v29, v30

    aput-char v29, v28, v8

    .line 1995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "bufIndex":I
    .restart local v8    # "bufIndex":I
    sget-object v29, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v30, v9, 0x4

    and-int/lit8 v30, v30, 0xf

    aget-char v29, v29, v30

    aput-char v29, v28, v7

    .line 1996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    sget-object v29, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v30, v9, 0xf

    aget-char v29, v29, v30

    aput-char v29, v28, v8

    .line 1997
    add-int/lit8 v25, v25, 0x5

    goto/16 :goto_7

    .line 1999
    .end local v7    # "bufIndex":I
    .restart local v8    # "bufIndex":I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    sget-object v29, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v29, v29, v9

    aput-char v29, v28, v8

    .line 2000
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_7

    .line 2003
    :cond_1b
    const/16 v28, 0x2028

    move/from16 v0, v28

    if-eq v9, v0, :cond_1c

    const/16 v28, 0x2029

    move/from16 v0, v28

    if-ne v9, v0, :cond_1d

    .line 2004
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "bufIndex":I
    .restart local v8    # "bufIndex":I
    const/16 v29, 0x5c

    aput-char v29, v28, v7

    .line 2005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    const/16 v29, 0x75

    aput-char v29, v28, v8

    .line 2006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "bufIndex":I
    .restart local v8    # "bufIndex":I
    sget-object v29, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v30, v9, 0xc

    and-int/lit8 v30, v30, 0xf

    aget-char v29, v29, v30

    aput-char v29, v28, v7

    .line 2007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    sget-object v29, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v30, v9, 0x8

    and-int/lit8 v30, v30, 0xf

    aget-char v29, v29, v30

    aput-char v29, v28, v8

    .line 2008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "bufIndex":I
    .restart local v8    # "bufIndex":I
    sget-object v29, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v30, v9, 0x4

    and-int/lit8 v30, v30, 0xf

    aget-char v29, v29, v30

    aput-char v29, v28, v7

    .line 2009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    sget-object v29, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v30, v9, 0xf

    aget-char v29, v29, v30

    aput-char v29, v28, v8

    .line 2010
    add-int/lit8 v25, v25, 0x5

    goto/16 :goto_7

    .line 2012
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v28, v0

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "bufIndex":I
    .restart local v8    # "bufIndex":I
    aput-char v9, v28, v7

    move v7, v8

    .end local v8    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    goto/16 :goto_7
.end method

.method public writeFloat(FZ)V
    .locals 3
    .param p1, "value"    # F
    .param p2, "checkWriteClassName"    # Z

    .prologue
    .line 648
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 649
    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 650
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 662
    :cond_1
    :goto_0
    return-void

    .line 652
    :cond_2
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    .line 653
    .local v0, "floatText":Ljava/lang/String;
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 654
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 656
    :cond_3
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 658
    if-eqz p2, :cond_1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 659
    const/16 v1, 0x46

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0
.end method

.method public writeHex([B)V
    .locals 13
    .param p1, "bytes"    # [B

    .prologue
    .line 602
    iget v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    array-length v11, p1

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    add-int/lit8 v7, v10, 0x3

    .line 603
    .local v7, "newcount":I
    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v10, v10

    if-le v7, v10, :cond_4

    .line 604
    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v10, :cond_3

    .line 605
    array-length v10, p1

    add-int/lit8 v10, v10, 0x3

    new-array v4, v10, [C

    .line 606
    .local v4, "chars":[C
    const/4 v8, 0x0

    .line 607
    .local v8, "pos":I
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "pos":I
    .local v9, "pos":I
    const/16 v10, 0x78

    aput-char v10, v4, v8

    .line 608
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "pos":I
    .restart local v8    # "pos":I
    const/16 v10, 0x27

    aput-char v10, v4, v9

    .line 610
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v10, p1

    if-ge v6, v10, :cond_2

    .line 611
    aget-byte v1, p1, v6

    .line 613
    .local v1, "b":B
    and-int/lit16 v0, v1, 0xff

    .line 614
    .local v0, "a":I
    shr-int/lit8 v2, v0, 0x4

    .line 615
    .local v2, "b0":I
    and-int/lit8 v3, v0, 0xf

    .line 617
    .local v3, "b1":I
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "pos":I
    .restart local v9    # "pos":I
    const/16 v10, 0xa

    if-ge v2, v10, :cond_0

    const/16 v10, 0x30

    :goto_1
    add-int/2addr v10, v2

    int-to-char v10, v10

    aput-char v10, v4, v8

    .line 618
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "pos":I
    .restart local v8    # "pos":I
    const/16 v10, 0xa

    if-ge v3, v10, :cond_1

    const/16 v10, 0x30

    :goto_2
    add-int/2addr v10, v3

    int-to-char v10, v10

    aput-char v10, v4, v9

    .line 610
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 617
    .end local v8    # "pos":I
    .restart local v9    # "pos":I
    :cond_0
    const/16 v10, 0x37

    goto :goto_1

    .line 618
    .end local v9    # "pos":I
    .restart local v8    # "pos":I
    :cond_1
    const/16 v10, 0x37

    goto :goto_2

    .line 620
    .end local v0    # "a":I
    .end local v1    # "b":B
    .end local v2    # "b0":I
    .end local v3    # "b1":I
    :cond_2
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "pos":I
    .restart local v9    # "pos":I
    const/16 v10, 0x27

    aput-char v10, v4, v8

    .line 622
    :try_start_0
    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v10, v4}, Ljava/io/Writer;->write([C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    .end local v4    # "chars":[C
    .end local v9    # "pos":I
    :goto_3
    return-void

    .line 623
    .restart local v4    # "chars":[C
    .restart local v9    # "pos":I
    :catch_0
    move-exception v5

    .line 624
    .local v5, "ex":Ljava/io/IOException;
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v11, "writeBytes error."

    invoke-direct {v10, v11, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 628
    .end local v4    # "chars":[C
    .end local v5    # "ex":Ljava/io/IOException;
    .end local v6    # "i":I
    .end local v9    # "pos":I
    :cond_3
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 631
    :cond_4
    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v12, 0x78

    aput-char v12, v10, v11

    .line 632
    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v12, 0x27

    aput-char v12, v10, v11

    .line 634
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    array-length v10, p1

    if-ge v6, v10, :cond_7

    .line 635
    aget-byte v1, p1, v6

    .line 637
    .restart local v1    # "b":B
    and-int/lit16 v0, v1, 0xff

    .line 638
    .restart local v0    # "a":I
    shr-int/lit8 v2, v0, 0x4

    .line 639
    .restart local v2    # "b0":I
    and-int/lit8 v3, v0, 0xf

    .line 641
    .restart local v3    # "b1":I
    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v12, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v10, v12, 0x1

    iput v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v10, 0xa

    if-ge v2, v10, :cond_5

    const/16 v10, 0x30

    :goto_5
    add-int/2addr v10, v2

    int-to-char v10, v10

    aput-char v10, v11, v12

    .line 642
    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v12, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v10, v12, 0x1

    iput v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v10, 0xa

    if-ge v3, v10, :cond_6

    const/16 v10, 0x30

    :goto_6
    add-int/2addr v10, v3

    int-to-char v10, v10

    aput-char v10, v11, v12

    .line 634
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 641
    :cond_5
    const/16 v10, 0x37

    goto :goto_5

    .line 642
    :cond_6
    const/16 v10, 0x37

    goto :goto_6

    .line 644
    .end local v0    # "a":I
    .end local v1    # "b":B
    .end local v2    # "b0":I
    .end local v3    # "b1":I
    :cond_7
    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v12, 0x27

    aput-char v12, v10, v11

    goto :goto_3
.end method

.method public writeInt(I)V
    .locals 5
    .param p1, "i"    # I

    .prologue
    .line 493
    const/high16 v3, -0x80000000

    if-ne p1, v3, :cond_0

    .line 494
    const-string v3, "-2147483648"

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 515
    :goto_0
    return-void

    .line 498
    :cond_0
    if-gez p1, :cond_2

    neg-int v3, p1

    invoke-static {v3}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 500
    .local v2, "size":I
    :goto_1
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int v1, v3, v2

    .line 501
    .local v1, "newcount":I
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-le v1, v3, :cond_1

    .line 502
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v3, :cond_3

    .line 503
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 512
    :cond_1
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p1, v1, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 514
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    goto :goto_0

    .line 498
    .end local v1    # "newcount":I
    .end local v2    # "size":I
    :cond_2
    invoke-static {p1}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v2

    goto :goto_1

    .line 505
    .restart local v1    # "newcount":I
    .restart local v2    # "size":I
    :cond_3
    new-array v0, v2, [C

    .line 506
    .local v0, "chars":[C
    invoke-static {p1, v2, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 507
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {p0, v0, v3, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    goto :goto_0
.end method

.method public writeLong(J)V
    .locals 9
    .param p1, "i"    # J

    .prologue
    const/4 v4, 0x0

    const/16 v8, 0x22

    .line 706
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 707
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v5

    if-nez v5, :cond_1

    const-wide v6, 0x1fffffffffffffL

    cmp-long v5, p1, v6

    if-gtz v5, :cond_0

    const-wide v6, -0x1fffffffffffffL

    cmp-long v5, p1, v6

    if-gez v5, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 710
    .local v1, "needQuotationMark":Z
    :goto_0
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v5, p1, v6

    if-nez v5, :cond_3

    .line 711
    if-eqz v1, :cond_2

    const-string v4, "\"-9223372036854775808\""

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 746
    :goto_1
    return-void

    .end local v1    # "needQuotationMark":Z
    :cond_1
    move v1, v4

    .line 707
    goto :goto_0

    .line 712
    .restart local v1    # "needQuotationMark":Z
    :cond_2
    const-string v4, "-9223372036854775808"

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 716
    :cond_3
    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-gez v5, :cond_6

    neg-long v6, p1

    invoke-static {v6, v7}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    .line 718
    .local v3, "size":I
    :goto_2
    iget v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int v2, v5, v3

    .line 719
    .local v2, "newcount":I
    if-eqz v1, :cond_4

    add-int/lit8 v2, v2, 0x2

    .line 720
    :cond_4
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v5, v5

    if-le v2, v5, :cond_5

    .line 721
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v5, :cond_7

    .line 722
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 737
    :cond_5
    if-eqz v1, :cond_9

    .line 738
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v8, v4, v5

    .line 739
    add-int/lit8 v4, v2, -0x1

    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p1, p2, v4, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    .line 740
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v2, -0x1

    aput-char v8, v4, v5

    .line 745
    :goto_3
    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    goto :goto_1

    .line 716
    .end local v2    # "newcount":I
    .end local v3    # "size":I
    :cond_6
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v3

    goto :goto_2

    .line 724
    .restart local v2    # "newcount":I
    .restart local v3    # "size":I
    :cond_7
    new-array v0, v3, [C

    .line 725
    .local v0, "chars":[C
    invoke-static {p1, p2, v3, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    .line 726
    if-eqz v1, :cond_8

    .line 727
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 728
    array-length v5, v0

    invoke-virtual {p0, v0, v4, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    .line 729
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_1

    .line 731
    :cond_8
    array-length v5, v0

    invoke-virtual {p0, v0, v4, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    goto :goto_1

    .line 742
    .end local v0    # "chars":[C
    :cond_9
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p1, p2, v2, v4}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    goto :goto_3
.end method

.method public writeNull()V
    .locals 1

    .prologue
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

    .prologue
    .line 757
    and-int v0, p1, p2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    .line 759
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 774
    :goto_0
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

    goto :goto_0
.end method

.method public writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 2
    .param p1, "feature"    # Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 753
    const/4 v0, 0x0

    iget v1, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(II)V

    .line 754
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 2110
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v0, :cond_0

    .line 2111
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    .line 2115
    :goto_0
    return-void

    .line 2113
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_0
.end method

.method public writeString(Ljava/lang/String;C)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "seperator"    # C

    .prologue
    .line 2101
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v0, :cond_0

    .line 2102
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    .line 2103
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2107
    :goto_0
    return-void

    .line 2105
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_0
.end method

.method public writeString([C)V
    .locals 2
    .param p1, "chars"    # [C

    .prologue
    .line 2118
    iget-boolean v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v1, :cond_0

    .line 2119
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote([C)V

    .line 2124
    :goto_0
    return-void

    .line 2121
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    .line 2122
    .local v0, "text":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_0
.end method

.method public writeStringWithDoubleQuote(Ljava/lang/String;C)V
    .locals 26
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "seperator"    # C

    .prologue
    .line 777
    if-nez p1, :cond_1

    .line 778
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 779
    if-eqz p2, :cond_0

    .line 780
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1152
    :cond_0
    :goto_0
    return-void

    .line 785
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    .line 786
    .local v14, "len":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v21, v0

    add-int v21, v21, v14

    add-int/lit8 v15, v21, 0x2

    .line 787
    .local v15, "newcount":I
    if-eqz p2, :cond_2

    .line 788
    add-int/lit8 v15, v15, 0x1

    .line 791
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-le v15, v0, :cond_f

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    move-object/from16 v21, v0

    if-eqz v21, :cond_e

    .line 793
    const/16 v21, 0x22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 795
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    if-ge v11, v0, :cond_d

    .line 796
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 798
    .local v7, "ch":C
    sget-object v21, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 799
    const/16 v21, 0x28

    move/from16 v0, v21

    if-eq v7, v0, :cond_3

    const/16 v21, 0x29

    move/from16 v0, v21

    if-eq v7, v0, :cond_3

    const/16 v21, 0x3c

    move/from16 v0, v21

    if-eq v7, v0, :cond_3

    const/16 v21, 0x3e

    move/from16 v0, v21

    if-ne v7, v0, :cond_4

    .line 800
    :cond_3
    const/16 v21, 0x5c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 801
    const/16 v21, 0x75

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 802
    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v22, v7, 0xc

    and-int/lit8 v22, v22, 0xf

    aget-char v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 803
    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v22, v7, 0x8

    and-int/lit8 v22, v22, 0xf

    aget-char v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 804
    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v22, v7, 0x4

    and-int/lit8 v22, v22, 0xf

    aget-char v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 805
    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v22, v7, 0xf

    aget-char v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 795
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 810
    :cond_4
    sget-object v21, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 811
    const/16 v21, 0x8

    move/from16 v0, v21

    if-eq v7, v0, :cond_5

    const/16 v21, 0xc

    move/from16 v0, v21

    if-eq v7, v0, :cond_5

    const/16 v21, 0xa

    move/from16 v0, v21

    if-eq v7, v0, :cond_5

    const/16 v21, 0xd

    move/from16 v0, v21

    if-eq v7, v0, :cond_5

    const/16 v21, 0x9

    move/from16 v0, v21

    if-eq v7, v0, :cond_5

    const/16 v21, 0x22

    move/from16 v0, v21

    if-eq v7, v0, :cond_5

    const/16 v21, 0x2f

    move/from16 v0, v21

    if-eq v7, v0, :cond_5

    const/16 v21, 0x5c

    move/from16 v0, v21

    if-ne v7, v0, :cond_6

    .line 819
    :cond_5
    const/16 v21, 0x5c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 820
    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v21, v21, v7

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_2

    .line 824
    :cond_6
    const/16 v21, 0x20

    move/from16 v0, v21

    if-ge v7, v0, :cond_7

    .line 825
    const/16 v21, 0x5c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 826
    const/16 v21, 0x75

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 827
    const/16 v21, 0x30

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 828
    const/16 v21, 0x30

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 829
    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v22, v7, 0x2

    aget-char v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 830
    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v22, v7, 0x2

    add-int/lit8 v22, v22, 0x1

    aget-char v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_2

    .line 834
    :cond_7
    const/16 v21, 0x7f

    move/from16 v0, v21

    if-lt v7, v0, :cond_c

    .line 835
    const/16 v21, 0x5c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 836
    const/16 v21, 0x75

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 837
    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v22, v7, 0xc

    and-int/lit8 v22, v22, 0xf

    aget-char v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 838
    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v22, v7, 0x8

    and-int/lit8 v22, v22, 0xf

    aget-char v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 839
    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v22, v7, 0x4

    and-int/lit8 v22, v22, 0xf

    aget-char v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 840
    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v22, v7, 0xf

    aget-char v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_2

    .line 844
    :cond_8
    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v7, v0, :cond_9

    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v21, v21, v7

    if-nez v21, :cond_a

    :cond_9
    const/16 v21, 0x2f

    move/from16 v0, v21

    if-ne v7, v0, :cond_c

    sget-object v21, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 846
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 847
    :cond_a
    const/16 v21, 0x5c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 848
    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v21, v21, v7

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    .line 849
    const/16 v21, 0x75

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 850
    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v22, v7, 0xc

    and-int/lit8 v22, v22, 0xf

    aget-char v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 851
    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v22, v7, 0x8

    and-int/lit8 v22, v22, 0xf

    aget-char v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 852
    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v22, v7, 0x4

    and-int/lit8 v22, v22, 0xf

    aget-char v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 853
    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v22, v7, 0xf

    aget-char v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_2

    .line 855
    :cond_b
    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v21, v21, v7

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_2

    .line 861
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_2

    .line 864
    .end local v7    # "ch":C
    :cond_d
    const/16 v21, 0x22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 865
    if-eqz p2, :cond_0

    .line 866
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_0

    .line 870
    .end local v11    # "i":I
    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 873
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v21, v0

    add-int/lit8 v19, v21, 0x1

    .line 874
    .local v19, "start":I
    add-int v9, v19, v14

    .line 876
    .local v9, "end":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v22, v0

    const/16 v23, 0x22

    aput-char v23, v21, v22

    .line 877
    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v19

    invoke-virtual {v0, v1, v14, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 879
    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 881
    sget-object v21, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v21

    if-eqz v21, :cond_20

    .line 882
    const/4 v13, -0x1

    .line 884
    .local v13, "lastSpecialIndex":I
    move/from16 v11, v19

    .restart local v11    # "i":I
    :goto_3
    if-ge v11, v9, :cond_16

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    aget-char v7, v21, v11

    .line 887
    .restart local v7    # "ch":C
    const/16 v21, 0x22

    move/from16 v0, v21

    if-eq v7, v0, :cond_10

    const/16 v21, 0x2f

    move/from16 v0, v21

    if-eq v7, v0, :cond_10

    const/16 v21, 0x5c

    move/from16 v0, v21

    if-ne v7, v0, :cond_12

    .line 890
    :cond_10
    move v13, v11

    .line 891
    add-int/lit8 v15, v15, 0x1

    .line 884
    :cond_11
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 895
    :cond_12
    const/16 v21, 0x8

    move/from16 v0, v21

    if-eq v7, v0, :cond_13

    const/16 v21, 0xc

    move/from16 v0, v21

    if-eq v7, v0, :cond_13

    const/16 v21, 0xa

    move/from16 v0, v21

    if-eq v7, v0, :cond_13

    const/16 v21, 0xd

    move/from16 v0, v21

    if-eq v7, v0, :cond_13

    const/16 v21, 0x9

    move/from16 v0, v21

    if-ne v7, v0, :cond_14

    .line 900
    :cond_13
    move v13, v11

    .line 901
    add-int/lit8 v15, v15, 0x1

    .line 902
    goto :goto_4

    .line 905
    :cond_14
    const/16 v21, 0x20

    move/from16 v0, v21

    if-ge v7, v0, :cond_15

    .line 906
    move v13, v11

    .line 907
    add-int/lit8 v15, v15, 0x5

    .line 908
    goto :goto_4

    .line 911
    :cond_15
    const/16 v21, 0x7f

    move/from16 v0, v21

    if-lt v7, v0, :cond_11

    .line 912
    move v13, v11

    .line 913
    add-int/lit8 v15, v15, 0x5

    .line 914
    goto :goto_4

    .line 918
    .end local v7    # "ch":C
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-le v15, v0, :cond_17

    .line 919
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 921
    :cond_17
    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 923
    move v11, v13

    :goto_5
    move/from16 v0, v19

    if-lt v11, v0, :cond_1e

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    aget-char v7, v21, v11

    .line 926
    .restart local v7    # "ch":C
    const/16 v21, 0x8

    move/from16 v0, v21

    if-eq v7, v0, :cond_18

    const/16 v21, 0xc

    move/from16 v0, v21

    if-eq v7, v0, :cond_18

    const/16 v21, 0xa

    move/from16 v0, v21

    if-eq v7, v0, :cond_18

    const/16 v21, 0xd

    move/from16 v0, v21

    if-eq v7, v0, :cond_18

    const/16 v21, 0x9

    move/from16 v0, v21

    if-ne v7, v0, :cond_1a

    .line 931
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v22, v11, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v24, v11, 0x2

    sub-int v25, v9, v11

    add-int/lit8 v25, v25, -0x1

    invoke-static/range {v21 .. v25}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    const/16 v22, 0x5c

    aput-char v22, v21, v11

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v22, v11, 0x1

    sget-object v23, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v23, v23, v7

    aput-char v23, v21, v22

    .line 934
    add-int/lit8 v9, v9, 0x1

    .line 923
    :cond_19
    :goto_6
    add-int/lit8 v11, v11, -0x1

    goto :goto_5

    .line 938
    :cond_1a
    const/16 v21, 0x22

    move/from16 v0, v21

    if-eq v7, v0, :cond_1b

    const/16 v21, 0x2f

    move/from16 v0, v21

    if-eq v7, v0, :cond_1b

    const/16 v21, 0x5c

    move/from16 v0, v21

    if-ne v7, v0, :cond_1c

    .line 941
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v22, v11, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v24, v11, 0x2

    sub-int v25, v9, v11

    add-int/lit8 v25, v25, -0x1

    invoke-static/range {v21 .. v25}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    const/16 v22, 0x5c

    aput-char v22, v21, v11

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v22, v11, 0x1

    aput-char v7, v21, v22

    .line 944
    add-int/lit8 v9, v9, 0x1

    .line 945
    goto :goto_6

    .line 948
    :cond_1c
    const/16 v21, 0x20

    move/from16 v0, v21

    if-ge v7, v0, :cond_1d

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v22, v11, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v24, v11, 0x6

    sub-int v25, v9, v11

    add-int/lit8 v25, v25, -0x1

    invoke-static/range {v21 .. v25}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    const/16 v22, 0x5c

    aput-char v22, v21, v11

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v22, v11, 0x1

    const/16 v23, 0x75

    aput-char v23, v21, v22

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v22, v11, 0x2

    const/16 v23, 0x30

    aput-char v23, v21, v22

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v22, v11, 0x3

    const/16 v23, 0x30

    aput-char v23, v21, v22

    .line 954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v22, v11, 0x4

    sget-object v23, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v24, v7, 0x2

    aget-char v23, v23, v24

    aput-char v23, v21, v22

    .line 955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v22, v11, 0x5

    sget-object v23, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v24, v7, 0x2

    add-int/lit8 v24, v24, 0x1

    aget-char v23, v23, v24

    aput-char v23, v21, v22

    .line 956
    add-int/lit8 v9, v9, 0x5

    .line 957
    goto/16 :goto_6

    .line 960
    :cond_1d
    const/16 v21, 0x7f

    move/from16 v0, v21

    if-lt v7, v0, :cond_19

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v22, v11, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v24, v11, 0x6

    sub-int v25, v9, v11

    add-int/lit8 v25, v25, -0x1

    invoke-static/range {v21 .. v25}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    const/16 v22, 0x5c

    aput-char v22, v21, v11

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v22, v11, 0x1

    const/16 v23, 0x75

    aput-char v23, v21, v22

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v22, v11, 0x2

    sget-object v23, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v24, v7, 0xc

    and-int/lit8 v24, v24, 0xf

    aget-char v23, v23, v24

    aput-char v23, v21, v22

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v22, v11, 0x3

    sget-object v23, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v24, v7, 0x8

    and-int/lit8 v24, v24, 0xf

    aget-char v23, v23, v24

    aput-char v23, v21, v22

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v22, v11, 0x4

    sget-object v23, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v24, v7, 0x4

    and-int/lit8 v24, v24, 0xf

    aget-char v23, v23, v24

    aput-char v23, v21, v22

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v22, v11, 0x5

    sget-object v23, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v24, v7, 0xf

    aget-char v23, v23, v24

    aput-char v23, v21, v22

    .line 968
    add-int/lit8 v9, v9, 0x5

    goto/16 :goto_6

    .line 972
    .end local v7    # "ch":C
    :cond_1e
    if-eqz p2, :cond_1f

    .line 973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x2

    const/16 v23, 0x22

    aput-char v23, v21, v22

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    aput-char p2, v21, v22

    goto/16 :goto_0

    .line 976
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    const/16 v23, 0x22

    aput-char v23, v21, v22

    goto/16 :goto_0

    .line 982
    .end local v11    # "i":I
    .end local v13    # "lastSpecialIndex":I
    :cond_20
    const/16 v17, 0x0

    .line 983
    .local v17, "specialCount":I
    const/4 v13, -0x1

    .line 984
    .restart local v13    # "lastSpecialIndex":I
    const/4 v10, -0x1

    .line 985
    .local v10, "firstSpecialIndex":I
    const/4 v12, 0x0

    .line 987
    .local v12, "lastSpecial":C
    move/from16 v11, v19

    .restart local v11    # "i":I
    :goto_7
    if-ge v11, v9, :cond_2a

    .line 988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    aget-char v7, v21, v11

    .line 990
    .restart local v7    # "ch":C
    const/16 v21, 0x5d

    move/from16 v0, v21

    if-lt v7, v0, :cond_24

    .line 991
    const/16 v21, 0x7f

    move/from16 v0, v21

    if-lt v7, v0, :cond_23

    const/16 v21, 0x2028

    move/from16 v0, v21

    if-eq v7, v0, :cond_21

    const/16 v21, 0x2029

    move/from16 v0, v21

    if-eq v7, v0, :cond_21

    const/16 v21, 0xa0

    move/from16 v0, v21

    if-ge v7, v0, :cond_23

    .line 995
    :cond_21
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v10, v0, :cond_22

    .line 996
    move v10, v11

    .line 999
    :cond_22
    add-int/lit8 v17, v17, 0x1

    .line 1000
    move v13, v11

    .line 1001
    move v12, v7

    .line 1002
    add-int/lit8 v15, v15, 0x4

    .line 987
    :cond_23
    :goto_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 1007
    :cond_24
    const/16 v21, 0x40

    move/from16 v0, v21

    if-ge v7, v0, :cond_25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sepcialBits:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x1

    shl-long v24, v24, v7

    and-long v22, v22, v24

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-nez v21, :cond_26

    :cond_25
    const/16 v21, 0x5c

    move/from16 v0, v21

    if-ne v7, v0, :cond_29

    :cond_26
    const/16 v16, 0x1

    .line 1008
    .local v16, "special":Z
    :goto_9
    if-eqz v16, :cond_23

    .line 1009
    add-int/lit8 v17, v17, 0x1

    .line 1010
    move v13, v11

    .line 1011
    move v12, v7

    .line 1013
    const/16 v21, 0x28

    move/from16 v0, v21

    if-eq v7, v0, :cond_27

    const/16 v21, 0x29

    move/from16 v0, v21

    if-eq v7, v0, :cond_27

    const/16 v21, 0x3c

    move/from16 v0, v21

    if-eq v7, v0, :cond_27

    const/16 v21, 0x3e

    move/from16 v0, v21

    if-eq v7, v0, :cond_27

    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v7, v0, :cond_28

    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v21, v21, v7

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_28

    .line 1020
    :cond_27
    add-int/lit8 v15, v15, 0x4

    .line 1023
    :cond_28
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v10, v0, :cond_23

    .line 1024
    move v10, v11

    goto :goto_8

    .line 1007
    .end local v16    # "special":Z
    :cond_29
    const/16 v16, 0x0

    goto :goto_9

    .line 1029
    .end local v7    # "ch":C
    :cond_2a
    if-lez v17, :cond_2c

    .line 1030
    add-int v15, v15, v17

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-le v15, v0, :cond_2b

    .line 1032
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1034
    :cond_2b
    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1036
    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_32

    .line 1037
    const/16 v21, 0x2028

    move/from16 v0, v21

    if-ne v12, v0, :cond_2d

    .line 1038
    add-int/lit8 v18, v13, 0x1

    .line 1039
    .local v18, "srcPos":I
    add-int/lit8 v8, v13, 0x6

    .line 1040
    .local v8, "destPos":I
    sub-int v21, v9, v13

    add-int/lit8 v4, v21, -0x1

    .line 1041
    .local v4, "LengthOfCopy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    const/16 v22, 0x5c

    aput-char v22, v21, v13

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v13, v13, 0x1

    const/16 v22, 0x75

    aput-char v22, v21, v13

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v13, v13, 0x1

    const/16 v22, 0x32

    aput-char v22, v21, v13

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v13, v13, 0x1

    const/16 v22, 0x30

    aput-char v22, v21, v13

    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v13, v13, 0x1

    const/16 v22, 0x32

    aput-char v22, v21, v13

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v13, v13, 0x1

    const/16 v22, 0x38

    aput-char v22, v21, v13

    .line 1146
    .end local v4    # "LengthOfCopy":I
    .end local v8    # "destPos":I
    .end local v18    # "srcPos":I
    :cond_2c
    :goto_a
    if-eqz p2, :cond_3b

    .line 1147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x2

    const/16 v23, 0x22

    aput-char v23, v21, v22

    .line 1148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    aput-char p2, v21, v22

    goto/16 :goto_0

    .line 1048
    :cond_2d
    const/16 v21, 0x2029

    move/from16 v0, v21

    if-ne v12, v0, :cond_2e

    .line 1049
    add-int/lit8 v18, v13, 0x1

    .line 1050
    .restart local v18    # "srcPos":I
    add-int/lit8 v8, v13, 0x6

    .line 1051
    .restart local v8    # "destPos":I
    sub-int v21, v9, v13

    add-int/lit8 v4, v21, -0x1

    .line 1052
    .restart local v4    # "LengthOfCopy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    const/16 v22, 0x5c

    aput-char v22, v21, v13

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v13, v13, 0x1

    const/16 v22, 0x75

    aput-char v22, v21, v13

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v13, v13, 0x1

    const/16 v22, 0x32

    aput-char v22, v21, v13

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v13, v13, 0x1

    const/16 v22, 0x30

    aput-char v22, v21, v13

    .line 1057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v13, v13, 0x1

    const/16 v22, 0x32

    aput-char v22, v21, v13

    .line 1058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v13, v13, 0x1

    const/16 v22, 0x39

    aput-char v22, v21, v13

    goto/16 :goto_a

    .line 1059
    .end local v4    # "LengthOfCopy":I
    .end local v8    # "destPos":I
    .end local v18    # "srcPos":I
    :cond_2e
    const/16 v21, 0x28

    move/from16 v0, v21

    if-eq v12, v0, :cond_2f

    const/16 v21, 0x29

    move/from16 v0, v21

    if-eq v12, v0, :cond_2f

    const/16 v21, 0x3c

    move/from16 v0, v21

    if-eq v12, v0, :cond_2f

    const/16 v21, 0x3e

    move/from16 v0, v21

    if-ne v12, v0, :cond_30

    .line 1060
    :cond_2f
    add-int/lit8 v18, v13, 0x1

    .line 1061
    .restart local v18    # "srcPos":I
    add-int/lit8 v8, v13, 0x6

    .line 1062
    .restart local v8    # "destPos":I
    sub-int v21, v9, v13

    add-int/lit8 v4, v21, -0x1

    .line 1063
    .restart local v4    # "LengthOfCopy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    const/16 v22, 0x5c

    aput-char v22, v21, v13

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v13, v13, 0x1

    const/16 v22, 0x75

    aput-char v22, v21, v13

    .line 1067
    move v7, v12

    .line 1068
    .restart local v7    # "ch":C
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v13, v13, 0x1

    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v23, v7, 0xc

    and-int/lit8 v23, v23, 0xf

    aget-char v22, v22, v23

    aput-char v22, v21, v13

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v13, v13, 0x1

    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v23, v7, 0x8

    and-int/lit8 v23, v23, 0xf

    aget-char v22, v22, v23

    aput-char v22, v21, v13

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v13, v13, 0x1

    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v23, v7, 0x4

    and-int/lit8 v23, v23, 0xf

    aget-char v22, v22, v23

    aput-char v22, v21, v13

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v13, v13, 0x1

    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v23, v7, 0xf

    aget-char v22, v22, v23

    aput-char v22, v21, v13

    goto/16 :goto_a

    .line 1073
    .end local v4    # "LengthOfCopy":I
    .end local v7    # "ch":C
    .end local v8    # "destPos":I
    .end local v18    # "srcPos":I
    :cond_30
    move v7, v12

    .line 1074
    .restart local v7    # "ch":C
    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v7, v0, :cond_31

    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v21, v21, v7

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_31

    .line 1076
    add-int/lit8 v18, v13, 0x1

    .line 1077
    .restart local v18    # "srcPos":I
    add-int/lit8 v8, v13, 0x6

    .line 1078
    .restart local v8    # "destPos":I
    sub-int v21, v9, v13

    add-int/lit8 v4, v21, -0x1

    .line 1079
    .restart local v4    # "LengthOfCopy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1081
    move v5, v13

    .line 1082
    .local v5, "bufIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufIndex":I
    .local v6, "bufIndex":I
    const/16 v22, 0x5c

    aput-char v22, v21, v5

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    const/16 v22, 0x75

    aput-char v22, v21, v6

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v23, v7, 0xc

    and-int/lit8 v23, v23, 0xf

    aget-char v22, v22, v23

    aput-char v22, v21, v5

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v23, v7, 0x8

    and-int/lit8 v23, v23, 0xf

    aget-char v22, v22, v23

    aput-char v22, v21, v6

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v23, v7, 0x4

    and-int/lit8 v23, v23, 0xf

    aget-char v22, v22, v23

    aput-char v22, v21, v5

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v23, v7, 0xf

    aget-char v22, v22, v23

    aput-char v22, v21, v6

    goto/16 :goto_a

    .line 1089
    .end local v4    # "LengthOfCopy":I
    .end local v5    # "bufIndex":I
    .end local v8    # "destPos":I
    .end local v18    # "srcPos":I
    :cond_31
    add-int/lit8 v18, v13, 0x1

    .line 1090
    .restart local v18    # "srcPos":I
    add-int/lit8 v8, v13, 0x2

    .line 1091
    .restart local v8    # "destPos":I
    sub-int v21, v9, v13

    add-int/lit8 v4, v21, -0x1

    .line 1092
    .restart local v4    # "LengthOfCopy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    const/16 v22, 0x5c

    aput-char v22, v21, v13

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v13, v13, 0x1

    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v22, v22, v7

    aput-char v22, v21, v13

    goto/16 :goto_a

    .line 1097
    .end local v4    # "LengthOfCopy":I
    .end local v7    # "ch":C
    .end local v8    # "destPos":I
    .end local v18    # "srcPos":I
    :cond_32
    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-le v0, v1, :cond_2c

    .line 1098
    sub-int v20, v10, v19

    .line 1099
    .local v20, "textIndex":I
    move v5, v10

    .line 1100
    .restart local v5    # "bufIndex":I
    move/from16 v11, v20

    :goto_b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    if-ge v11, v0, :cond_2c

    .line 1101
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1103
    .restart local v7    # "ch":C
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->browserSecure:Z

    move/from16 v21, v0

    if-eqz v21, :cond_34

    const/16 v21, 0x28

    move/from16 v0, v21

    if-eq v7, v0, :cond_33

    const/16 v21, 0x29

    move/from16 v0, v21

    if-eq v7, v0, :cond_33

    const/16 v21, 0x3c

    move/from16 v0, v21

    if-eq v7, v0, :cond_33

    const/16 v21, 0x3e

    move/from16 v0, v21

    if-ne v7, v0, :cond_34

    .line 1107
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    const/16 v22, 0x5c

    aput-char v22, v21, v5

    .line 1108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    const/16 v22, 0x75

    aput-char v22, v21, v6

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v23, v7, 0xc

    and-int/lit8 v23, v23, 0xf

    aget-char v22, v22, v23

    aput-char v22, v21, v5

    .line 1110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v23, v7, 0x8

    and-int/lit8 v23, v23, 0xf

    aget-char v22, v22, v23

    aput-char v22, v21, v6

    .line 1111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v23, v7, 0x4

    and-int/lit8 v23, v23, 0xf

    aget-char v22, v22, v23

    aput-char v22, v21, v5

    .line 1112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v23, v7, 0xf

    aget-char v22, v22, v23

    aput-char v22, v21, v6

    .line 1113
    add-int/lit8 v9, v9, 0x5

    .line 1100
    :goto_c
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_b

    .line 1114
    :cond_34
    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v7, v0, :cond_35

    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v21, v21, v7

    if-nez v21, :cond_36

    :cond_35
    const/16 v21, 0x2f

    move/from16 v0, v21

    if-ne v7, v0, :cond_38

    sget-object v21, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 1116
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v21

    if-eqz v21, :cond_38

    .line 1117
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    const/16 v22, 0x5c

    aput-char v22, v21, v5

    .line 1118
    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v21, v21, v7

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_37

    .line 1119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    const/16 v22, 0x75

    aput-char v22, v21, v6

    .line 1120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v23, v7, 0xc

    and-int/lit8 v23, v23, 0xf

    aget-char v22, v22, v23

    aput-char v22, v21, v5

    .line 1121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v23, v7, 0x8

    and-int/lit8 v23, v23, 0xf

    aget-char v22, v22, v23

    aput-char v22, v21, v6

    .line 1122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v23, v7, 0x4

    and-int/lit8 v23, v23, 0xf

    aget-char v22, v22, v23

    aput-char v22, v21, v5

    .line 1123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v23, v7, 0xf

    aget-char v22, v22, v23

    aput-char v22, v21, v6

    .line 1124
    add-int/lit8 v9, v9, 0x5

    goto/16 :goto_c

    .line 1126
    .end local v5    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v22, v22, v7

    aput-char v22, v21, v6

    .line 1127
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_c

    .line 1130
    :cond_38
    const/16 v21, 0x2028

    move/from16 v0, v21

    if-eq v7, v0, :cond_39

    const/16 v21, 0x2029

    move/from16 v0, v21

    if-ne v7, v0, :cond_3a

    .line 1131
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    const/16 v22, 0x5c

    aput-char v22, v21, v5

    .line 1132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    const/16 v22, 0x75

    aput-char v22, v21, v6

    .line 1133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v23, v7, 0xc

    and-int/lit8 v23, v23, 0xf

    aget-char v22, v22, v23

    aput-char v22, v21, v5

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v23, v7, 0x8

    and-int/lit8 v23, v23, 0xf

    aget-char v22, v22, v23

    aput-char v22, v21, v6

    .line 1135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v23, v7, 0x4

    and-int/lit8 v23, v23, 0xf

    aget-char v22, v22, v23

    aput-char v22, v21, v5

    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v23, v7, 0xf

    aget-char v22, v22, v23

    aput-char v22, v21, v6

    .line 1137
    add-int/lit8 v9, v9, 0x5

    goto/16 :goto_c

    .line 1139
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    aput-char v7, v21, v5

    move v5, v6

    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    goto/16 :goto_c

    .line 1150
    .end local v5    # "bufIndex":I
    .end local v7    # "ch":C
    .end local v20    # "textIndex":I
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    const/16 v23, 0x22

    aput-char v23, v21, v22

    goto/16 :goto_0
.end method

.method public writeStringWithDoubleQuote([CC)V
    .locals 28
    .param p1, "text"    # [C
    .param p2, "seperator"    # C

    .prologue
    .line 1155
    if-nez p1, :cond_1

    .line 1156
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 1157
    if-eqz p2, :cond_0

    .line 1158
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1531
    :cond_0
    :goto_0
    return-void

    .line 1163
    :cond_1
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    .line 1164
    .local v16, "len":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v23, v0

    add-int v23, v23, v16

    add-int/lit8 v17, v23, 0x2

    .line 1165
    .local v17, "newcount":I
    if-eqz p2, :cond_2

    .line 1166
    add-int/lit8 v17, v17, 0x1

    .line 1169
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v17

    move/from16 v1, v23

    if-le v0, v1, :cond_f

    .line 1170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    move-object/from16 v23, v0

    if-eqz v23, :cond_e

    .line 1171
    const/16 v23, 0x22

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1173
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v13, v0, :cond_d

    .line 1174
    aget-char v9, p1, v13

    .line 1176
    .local v9, "ch":C
    sget-object v23, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 1177
    const/16 v23, 0x28

    move/from16 v0, v23

    if-eq v9, v0, :cond_3

    const/16 v23, 0x29

    move/from16 v0, v23

    if-eq v9, v0, :cond_3

    const/16 v23, 0x3c

    move/from16 v0, v23

    if-eq v9, v0, :cond_3

    const/16 v23, 0x3e

    move/from16 v0, v23

    if-ne v9, v0, :cond_4

    .line 1178
    :cond_3
    const/16 v23, 0x5c

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1179
    const/16 v23, 0x75

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1180
    sget-object v23, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v24, v9, 0xc

    and-int/lit8 v24, v24, 0xf

    aget-char v23, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1181
    sget-object v23, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v24, v9, 0x8

    and-int/lit8 v24, v24, 0xf

    aget-char v23, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1182
    sget-object v23, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v24, v9, 0x4

    and-int/lit8 v24, v24, 0xf

    aget-char v23, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1183
    sget-object v23, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v24, v9, 0xf

    aget-char v23, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1173
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1188
    :cond_4
    sget-object v23, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 1189
    const/16 v23, 0x8

    move/from16 v0, v23

    if-eq v9, v0, :cond_5

    const/16 v23, 0xc

    move/from16 v0, v23

    if-eq v9, v0, :cond_5

    const/16 v23, 0xa

    move/from16 v0, v23

    if-eq v9, v0, :cond_5

    const/16 v23, 0xd

    move/from16 v0, v23

    if-eq v9, v0, :cond_5

    const/16 v23, 0x9

    move/from16 v0, v23

    if-eq v9, v0, :cond_5

    const/16 v23, 0x22

    move/from16 v0, v23

    if-eq v9, v0, :cond_5

    const/16 v23, 0x2f

    move/from16 v0, v23

    if-eq v9, v0, :cond_5

    const/16 v23, 0x5c

    move/from16 v0, v23

    if-ne v9, v0, :cond_6

    .line 1197
    :cond_5
    const/16 v23, 0x5c

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1198
    sget-object v23, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v23, v23, v9

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_2

    .line 1202
    :cond_6
    const/16 v23, 0x20

    move/from16 v0, v23

    if-ge v9, v0, :cond_7

    .line 1203
    const/16 v23, 0x5c

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1204
    const/16 v23, 0x75

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1205
    const/16 v23, 0x30

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1206
    const/16 v23, 0x30

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1207
    sget-object v23, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v24, v9, 0x2

    aget-char v23, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1208
    sget-object v23, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v24, v9, 0x2

    add-int/lit8 v24, v24, 0x1

    aget-char v23, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_2

    .line 1212
    :cond_7
    const/16 v23, 0x7f

    move/from16 v0, v23

    if-lt v9, v0, :cond_c

    .line 1213
    const/16 v23, 0x5c

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1214
    const/16 v23, 0x75

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1215
    sget-object v23, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v24, v9, 0xc

    and-int/lit8 v24, v24, 0xf

    aget-char v23, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1216
    sget-object v23, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v24, v9, 0x8

    and-int/lit8 v24, v24, 0xf

    aget-char v23, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1217
    sget-object v23, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v24, v9, 0x4

    and-int/lit8 v24, v24, 0xf

    aget-char v23, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1218
    sget-object v23, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v24, v9, 0xf

    aget-char v23, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_2

    .line 1222
    :cond_8
    sget-object v23, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v9, v0, :cond_9

    sget-object v23, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v23, v23, v9

    if-nez v23, :cond_a

    :cond_9
    const/16 v23, 0x2f

    move/from16 v0, v23

    if-ne v9, v0, :cond_c

    sget-object v23, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 1224
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 1225
    :cond_a
    const/16 v23, 0x5c

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1226
    sget-object v23, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v23, v23, v9

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    .line 1227
    const/16 v23, 0x75

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1228
    sget-object v23, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v24, v9, 0xc

    and-int/lit8 v24, v24, 0xf

    aget-char v23, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1229
    sget-object v23, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v24, v9, 0x8

    and-int/lit8 v24, v24, 0xf

    aget-char v23, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1230
    sget-object v23, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v24, v9, 0x4

    and-int/lit8 v24, v24, 0xf

    aget-char v23, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1231
    sget-object v23, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v24, v9, 0xf

    aget-char v23, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_2

    .line 1233
    :cond_b
    sget-object v23, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v23, v23, v9

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_2

    .line 1239
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_2

    .line 1242
    .end local v9    # "ch":C
    :cond_d
    const/16 v23, 0x22

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1243
    if-eqz p2, :cond_0

    .line 1244
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_0

    .line 1248
    .end local v13    # "i":I
    :cond_e
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1251
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v23, v0

    add-int/lit8 v21, v23, 0x1

    .line 1252
    .local v21, "start":I
    add-int v11, v21, v16

    .line 1254
    .local v11, "end":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v24, v0

    const/16 v25, 0x22

    aput-char v25, v23, v24

    .line 1256
    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v21

    move/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1258
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1260
    sget-object v23, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v23

    if-eqz v23, :cond_20

    .line 1261
    const/4 v15, -0x1

    .line 1263
    .local v15, "lastSpecialIndex":I
    move/from16 v13, v21

    .restart local v13    # "i":I
    :goto_3
    if-ge v13, v11, :cond_16

    .line 1264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    aget-char v9, v23, v13

    .line 1266
    .restart local v9    # "ch":C
    const/16 v23, 0x22

    move/from16 v0, v23

    if-eq v9, v0, :cond_10

    const/16 v23, 0x2f

    move/from16 v0, v23

    if-eq v9, v0, :cond_10

    const/16 v23, 0x5c

    move/from16 v0, v23

    if-ne v9, v0, :cond_12

    .line 1269
    :cond_10
    move v15, v13

    .line 1270
    add-int/lit8 v17, v17, 0x1

    .line 1263
    :cond_11
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 1274
    :cond_12
    const/16 v23, 0x8

    move/from16 v0, v23

    if-eq v9, v0, :cond_13

    const/16 v23, 0xc

    move/from16 v0, v23

    if-eq v9, v0, :cond_13

    const/16 v23, 0xa

    move/from16 v0, v23

    if-eq v9, v0, :cond_13

    const/16 v23, 0xd

    move/from16 v0, v23

    if-eq v9, v0, :cond_13

    const/16 v23, 0x9

    move/from16 v0, v23

    if-ne v9, v0, :cond_14

    .line 1279
    :cond_13
    move v15, v13

    .line 1280
    add-int/lit8 v17, v17, 0x1

    .line 1281
    goto :goto_4

    .line 1284
    :cond_14
    const/16 v23, 0x20

    move/from16 v0, v23

    if-ge v9, v0, :cond_15

    .line 1285
    move v15, v13

    .line 1286
    add-int/lit8 v17, v17, 0x5

    .line 1287
    goto :goto_4

    .line 1290
    :cond_15
    const/16 v23, 0x7f

    move/from16 v0, v23

    if-lt v9, v0, :cond_11

    .line 1291
    move v15, v13

    .line 1292
    add-int/lit8 v17, v17, 0x5

    .line 1293
    goto :goto_4

    .line 1297
    .end local v9    # "ch":C
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v17

    move/from16 v1, v23

    if-le v0, v1, :cond_17

    .line 1298
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1300
    :cond_17
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1302
    move v13, v15

    :goto_5
    move/from16 v0, v21

    if-lt v13, v0, :cond_1e

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    aget-char v9, v23, v13

    .line 1305
    .restart local v9    # "ch":C
    const/16 v23, 0x8

    move/from16 v0, v23

    if-eq v9, v0, :cond_18

    const/16 v23, 0xc

    move/from16 v0, v23

    if-eq v9, v0, :cond_18

    const/16 v23, 0xa

    move/from16 v0, v23

    if-eq v9, v0, :cond_18

    const/16 v23, 0xd

    move/from16 v0, v23

    if-eq v9, v0, :cond_18

    const/16 v23, 0x9

    move/from16 v0, v23

    if-ne v9, v0, :cond_1a

    .line 1310
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v24, v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v25, v0

    add-int/lit8 v26, v13, 0x2

    sub-int v27, v11, v13

    add-int/lit8 v27, v27, -0x1

    invoke-static/range {v23 .. v27}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    const/16 v24, 0x5c

    aput-char v24, v23, v13

    .line 1312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v24, v13, 0x1

    sget-object v25, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v25, v25, v9

    aput-char v25, v23, v24

    .line 1313
    add-int/lit8 v11, v11, 0x1

    .line 1302
    :cond_19
    :goto_6
    add-int/lit8 v13, v13, -0x1

    goto :goto_5

    .line 1317
    :cond_1a
    const/16 v23, 0x22

    move/from16 v0, v23

    if-eq v9, v0, :cond_1b

    const/16 v23, 0x2f

    move/from16 v0, v23

    if-eq v9, v0, :cond_1b

    const/16 v23, 0x5c

    move/from16 v0, v23

    if-ne v9, v0, :cond_1c

    .line 1320
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v24, v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v25, v0

    add-int/lit8 v26, v13, 0x2

    sub-int v27, v11, v13

    add-int/lit8 v27, v27, -0x1

    invoke-static/range {v23 .. v27}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    const/16 v24, 0x5c

    aput-char v24, v23, v13

    .line 1322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v24, v13, 0x1

    aput-char v9, v23, v24

    .line 1323
    add-int/lit8 v11, v11, 0x1

    .line 1324
    goto :goto_6

    .line 1327
    :cond_1c
    const/16 v23, 0x20

    move/from16 v0, v23

    if-ge v9, v0, :cond_1d

    .line 1328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v24, v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v25, v0

    add-int/lit8 v26, v13, 0x6

    sub-int v27, v11, v13

    add-int/lit8 v27, v27, -0x1

    invoke-static/range {v23 .. v27}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    const/16 v24, 0x5c

    aput-char v24, v23, v13

    .line 1330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v24, v13, 0x1

    const/16 v25, 0x75

    aput-char v25, v23, v24

    .line 1331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v24, v13, 0x2

    const/16 v25, 0x30

    aput-char v25, v23, v24

    .line 1332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v24, v13, 0x3

    const/16 v25, 0x30

    aput-char v25, v23, v24

    .line 1333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v24, v13, 0x4

    sget-object v25, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v26, v9, 0x2

    aget-char v25, v25, v26

    aput-char v25, v23, v24

    .line 1334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v24, v13, 0x5

    sget-object v25, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v26, v9, 0x2

    add-int/lit8 v26, v26, 0x1

    aget-char v25, v25, v26

    aput-char v25, v23, v24

    .line 1335
    add-int/lit8 v11, v11, 0x5

    .line 1336
    goto/16 :goto_6

    .line 1339
    :cond_1d
    const/16 v23, 0x7f

    move/from16 v0, v23

    if-lt v9, v0, :cond_19

    .line 1340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v24, v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v25, v0

    add-int/lit8 v26, v13, 0x6

    sub-int v27, v11, v13

    add-int/lit8 v27, v27, -0x1

    invoke-static/range {v23 .. v27}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    const/16 v24, 0x5c

    aput-char v24, v23, v13

    .line 1342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v24, v13, 0x1

    const/16 v25, 0x75

    aput-char v25, v23, v24

    .line 1343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v24, v13, 0x2

    sget-object v25, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v26, v9, 0xc

    and-int/lit8 v26, v26, 0xf

    aget-char v25, v25, v26

    aput-char v25, v23, v24

    .line 1344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v24, v13, 0x3

    sget-object v25, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v26, v9, 0x8

    and-int/lit8 v26, v26, 0xf

    aget-char v25, v25, v26

    aput-char v25, v23, v24

    .line 1345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v24, v13, 0x4

    sget-object v25, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v26, v9, 0x4

    and-int/lit8 v26, v26, 0xf

    aget-char v25, v25, v26

    aput-char v25, v23, v24

    .line 1346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v24, v13, 0x5

    sget-object v25, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v26, v9, 0xf

    aget-char v25, v25, v26

    aput-char v25, v23, v24

    .line 1347
    add-int/lit8 v11, v11, 0x5

    goto/16 :goto_6

    .line 1351
    .end local v9    # "ch":C
    :cond_1e
    if-eqz p2, :cond_1f

    .line 1352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x2

    const/16 v25, 0x22

    aput-char v25, v23, v24

    .line 1353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    aput-char p2, v23, v24

    goto/16 :goto_0

    .line 1355
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    const/16 v25, 0x22

    aput-char v25, v23, v24

    goto/16 :goto_0

    .line 1361
    .end local v13    # "i":I
    .end local v15    # "lastSpecialIndex":I
    :cond_20
    const/16 v19, 0x0

    .line 1362
    .local v19, "specialCount":I
    const/4 v15, -0x1

    .line 1363
    .restart local v15    # "lastSpecialIndex":I
    const/4 v12, -0x1

    .line 1364
    .local v12, "firstSpecialIndex":I
    const/4 v14, 0x0

    .line 1366
    .local v14, "lastSpecial":C
    move/from16 v13, v21

    .restart local v13    # "i":I
    :goto_7
    if-ge v13, v11, :cond_2a

    .line 1367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    aget-char v9, v23, v13

    .line 1369
    .restart local v9    # "ch":C
    const/16 v23, 0x5d

    move/from16 v0, v23

    if-lt v9, v0, :cond_24

    .line 1370
    const/16 v23, 0x7f

    move/from16 v0, v23

    if-lt v9, v0, :cond_23

    const/16 v23, 0x2028

    move/from16 v0, v23

    if-eq v9, v0, :cond_21

    const/16 v23, 0x2029

    move/from16 v0, v23

    if-eq v9, v0, :cond_21

    const/16 v23, 0xa0

    move/from16 v0, v23

    if-ge v9, v0, :cond_23

    .line 1374
    :cond_21
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v12, v0, :cond_22

    .line 1375
    move v12, v13

    .line 1378
    :cond_22
    add-int/lit8 v19, v19, 0x1

    .line 1379
    move v15, v13

    .line 1380
    move v14, v9

    .line 1381
    add-int/lit8 v17, v17, 0x4

    .line 1366
    :cond_23
    :goto_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 1386
    :cond_24
    const/16 v23, 0x40

    move/from16 v0, v23

    if-ge v9, v0, :cond_25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sepcialBits:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x1

    shl-long v26, v26, v9

    and-long v24, v24, v26

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-nez v23, :cond_26

    :cond_25
    const/16 v23, 0x5c

    move/from16 v0, v23

    if-ne v9, v0, :cond_29

    :cond_26
    const/16 v18, 0x1

    .line 1387
    .local v18, "special":Z
    :goto_9
    if-eqz v18, :cond_23

    .line 1388
    add-int/lit8 v19, v19, 0x1

    .line 1389
    move v15, v13

    .line 1390
    move v14, v9

    .line 1392
    const/16 v23, 0x28

    move/from16 v0, v23

    if-eq v9, v0, :cond_27

    const/16 v23, 0x29

    move/from16 v0, v23

    if-eq v9, v0, :cond_27

    const/16 v23, 0x3c

    move/from16 v0, v23

    if-eq v9, v0, :cond_27

    const/16 v23, 0x3e

    move/from16 v0, v23

    if-eq v9, v0, :cond_27

    sget-object v23, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v9, v0, :cond_28

    sget-object v23, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v23, v23, v9

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_28

    .line 1399
    :cond_27
    add-int/lit8 v17, v17, 0x4

    .line 1402
    :cond_28
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v12, v0, :cond_23

    .line 1403
    move v12, v13

    goto :goto_8

    .line 1386
    .end local v18    # "special":Z
    :cond_29
    const/16 v18, 0x0

    goto :goto_9

    .line 1408
    .end local v9    # "ch":C
    :cond_2a
    if-lez v19, :cond_2c

    .line 1409
    add-int v17, v17, v19

    .line 1410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v17

    move/from16 v1, v23

    if-le v0, v1, :cond_2b

    .line 1411
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1413
    :cond_2b
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1415
    const/16 v23, 0x1

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_32

    .line 1416
    const/16 v23, 0x2028

    move/from16 v0, v23

    if-ne v14, v0, :cond_2d

    .line 1417
    add-int/lit8 v20, v15, 0x1

    .line 1418
    .local v20, "srcPos":I
    add-int/lit8 v10, v15, 0x6

    .line 1419
    .local v10, "destPos":I
    sub-int v23, v11, v15

    add-int/lit8 v6, v23, -0x1

    .line 1420
    .local v6, "LengthOfCopy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v20

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    const/16 v24, 0x5c

    aput-char v24, v23, v15

    .line 1422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v15, v15, 0x1

    const/16 v24, 0x75

    aput-char v24, v23, v15

    .line 1423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v15, v15, 0x1

    const/16 v24, 0x32

    aput-char v24, v23, v15

    .line 1424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v15, v15, 0x1

    const/16 v24, 0x30

    aput-char v24, v23, v15

    .line 1425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v15, v15, 0x1

    const/16 v24, 0x32

    aput-char v24, v23, v15

    .line 1426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v15, v15, 0x1

    const/16 v24, 0x38

    aput-char v24, v23, v15

    .line 1525
    .end local v6    # "LengthOfCopy":I
    .end local v10    # "destPos":I
    .end local v20    # "srcPos":I
    :cond_2c
    :goto_a
    if-eqz p2, :cond_3b

    .line 1526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x2

    const/16 v25, 0x22

    aput-char v25, v23, v24

    .line 1527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    aput-char p2, v23, v24

    goto/16 :goto_0

    .line 1427
    :cond_2d
    const/16 v23, 0x2029

    move/from16 v0, v23

    if-ne v14, v0, :cond_2e

    .line 1428
    add-int/lit8 v20, v15, 0x1

    .line 1429
    .restart local v20    # "srcPos":I
    add-int/lit8 v10, v15, 0x6

    .line 1430
    .restart local v10    # "destPos":I
    sub-int v23, v11, v15

    add-int/lit8 v6, v23, -0x1

    .line 1431
    .restart local v6    # "LengthOfCopy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v20

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    const/16 v24, 0x5c

    aput-char v24, v23, v15

    .line 1433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v15, v15, 0x1

    const/16 v24, 0x75

    aput-char v24, v23, v15

    .line 1434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v15, v15, 0x1

    const/16 v24, 0x32

    aput-char v24, v23, v15

    .line 1435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v15, v15, 0x1

    const/16 v24, 0x30

    aput-char v24, v23, v15

    .line 1436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v15, v15, 0x1

    const/16 v24, 0x32

    aput-char v24, v23, v15

    .line 1437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v15, v15, 0x1

    const/16 v24, 0x39

    aput-char v24, v23, v15

    goto/16 :goto_a

    .line 1438
    .end local v6    # "LengthOfCopy":I
    .end local v10    # "destPos":I
    .end local v20    # "srcPos":I
    :cond_2e
    const/16 v23, 0x28

    move/from16 v0, v23

    if-eq v14, v0, :cond_2f

    const/16 v23, 0x29

    move/from16 v0, v23

    if-eq v14, v0, :cond_2f

    const/16 v23, 0x3c

    move/from16 v0, v23

    if-eq v14, v0, :cond_2f

    const/16 v23, 0x3e

    move/from16 v0, v23

    if-ne v14, v0, :cond_30

    .line 1439
    :cond_2f
    add-int/lit8 v20, v15, 0x1

    .line 1440
    .restart local v20    # "srcPos":I
    add-int/lit8 v10, v15, 0x6

    .line 1441
    .restart local v10    # "destPos":I
    sub-int v23, v11, v15

    add-int/lit8 v6, v23, -0x1

    .line 1442
    .restart local v6    # "LengthOfCopy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v20

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    const/16 v24, 0x5c

    aput-char v24, v23, v15

    .line 1444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v15, v15, 0x1

    const/16 v24, 0x75

    aput-char v24, v23, v15

    .line 1446
    move v9, v14

    .line 1447
    .restart local v9    # "ch":C
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v15, v15, 0x1

    sget-object v24, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v25, v9, 0xc

    and-int/lit8 v25, v25, 0xf

    aget-char v24, v24, v25

    aput-char v24, v23, v15

    .line 1448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v15, v15, 0x1

    sget-object v24, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v25, v9, 0x8

    and-int/lit8 v25, v25, 0xf

    aget-char v24, v24, v25

    aput-char v24, v23, v15

    .line 1449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v15, v15, 0x1

    sget-object v24, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v25, v9, 0x4

    and-int/lit8 v25, v25, 0xf

    aget-char v24, v24, v25

    aput-char v24, v23, v15

    .line 1450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v15, v15, 0x1

    sget-object v24, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v25, v9, 0xf

    aget-char v24, v24, v25

    aput-char v24, v23, v15

    goto/16 :goto_a

    .line 1452
    .end local v6    # "LengthOfCopy":I
    .end local v9    # "ch":C
    .end local v10    # "destPos":I
    .end local v20    # "srcPos":I
    :cond_30
    move v9, v14

    .line 1453
    .restart local v9    # "ch":C
    sget-object v23, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v9, v0, :cond_31

    sget-object v23, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v23, v23, v9

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_31

    .line 1455
    add-int/lit8 v20, v15, 0x1

    .line 1456
    .restart local v20    # "srcPos":I
    add-int/lit8 v10, v15, 0x6

    .line 1457
    .restart local v10    # "destPos":I
    sub-int v23, v11, v15

    add-int/lit8 v6, v23, -0x1

    .line 1458
    .restart local v6    # "LengthOfCopy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v20

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1460
    move v7, v15

    .line 1461
    .local v7, "bufIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "bufIndex":I
    .local v8, "bufIndex":I
    const/16 v24, 0x5c

    aput-char v24, v23, v7

    .line 1462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    const/16 v24, 0x75

    aput-char v24, v23, v8

    .line 1463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "bufIndex":I
    .restart local v8    # "bufIndex":I
    sget-object v24, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v25, v9, 0xc

    and-int/lit8 v25, v25, 0xf

    aget-char v24, v24, v25

    aput-char v24, v23, v7

    .line 1464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    sget-object v24, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v25, v9, 0x8

    and-int/lit8 v25, v25, 0xf

    aget-char v24, v24, v25

    aput-char v24, v23, v8

    .line 1465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "bufIndex":I
    .restart local v8    # "bufIndex":I
    sget-object v24, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v25, v9, 0x4

    and-int/lit8 v25, v25, 0xf

    aget-char v24, v24, v25

    aput-char v24, v23, v7

    .line 1466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    sget-object v24, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v25, v9, 0xf

    aget-char v24, v24, v25

    aput-char v24, v23, v8

    goto/16 :goto_a

    .line 1468
    .end local v6    # "LengthOfCopy":I
    .end local v7    # "bufIndex":I
    .end local v10    # "destPos":I
    .end local v20    # "srcPos":I
    :cond_31
    add-int/lit8 v20, v15, 0x1

    .line 1469
    .restart local v20    # "srcPos":I
    add-int/lit8 v10, v15, 0x2

    .line 1470
    .restart local v10    # "destPos":I
    sub-int v23, v11, v15

    add-int/lit8 v6, v23, -0x1

    .line 1471
    .restart local v6    # "LengthOfCopy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v20

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    const/16 v24, 0x5c

    aput-char v24, v23, v15

    .line 1473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v15, v15, 0x1

    sget-object v24, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v24, v24, v9

    aput-char v24, v23, v15

    goto/16 :goto_a

    .line 1476
    .end local v6    # "LengthOfCopy":I
    .end local v9    # "ch":C
    .end local v10    # "destPos":I
    .end local v20    # "srcPos":I
    :cond_32
    const/16 v23, 0x1

    move/from16 v0, v19

    move/from16 v1, v23

    if-le v0, v1, :cond_2c

    .line 1477
    sub-int v22, v12, v21

    .line 1478
    .local v22, "textIndex":I
    move v7, v12

    .line 1479
    .restart local v7    # "bufIndex":I
    move/from16 v13, v22

    :goto_b
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v13, v0, :cond_2c

    .line 1480
    aget-char v9, p1, v13

    .line 1482
    .restart local v9    # "ch":C
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->browserSecure:Z

    move/from16 v23, v0

    if-eqz v23, :cond_34

    const/16 v23, 0x28

    move/from16 v0, v23

    if-eq v9, v0, :cond_33

    const/16 v23, 0x29

    move/from16 v0, v23

    if-eq v9, v0, :cond_33

    const/16 v23, 0x3c

    move/from16 v0, v23

    if-eq v9, v0, :cond_33

    const/16 v23, 0x3e

    move/from16 v0, v23

    if-ne v9, v0, :cond_34

    .line 1486
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "bufIndex":I
    .restart local v8    # "bufIndex":I
    const/16 v24, 0x5c

    aput-char v24, v23, v7

    .line 1487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    const/16 v24, 0x75

    aput-char v24, v23, v8

    .line 1488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "bufIndex":I
    .restart local v8    # "bufIndex":I
    sget-object v24, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v25, v9, 0xc

    and-int/lit8 v25, v25, 0xf

    aget-char v24, v24, v25

    aput-char v24, v23, v7

    .line 1489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    sget-object v24, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v25, v9, 0x8

    and-int/lit8 v25, v25, 0xf

    aget-char v24, v24, v25

    aput-char v24, v23, v8

    .line 1490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "bufIndex":I
    .restart local v8    # "bufIndex":I
    sget-object v24, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v25, v9, 0x4

    and-int/lit8 v25, v25, 0xf

    aget-char v24, v24, v25

    aput-char v24, v23, v7

    .line 1491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    sget-object v24, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v25, v9, 0xf

    aget-char v24, v24, v25

    aput-char v24, v23, v8

    .line 1492
    add-int/lit8 v11, v11, 0x5

    .line 1479
    :goto_c
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_b

    .line 1493
    :cond_34
    sget-object v23, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v9, v0, :cond_35

    sget-object v23, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v23, v23, v9

    if-nez v23, :cond_36

    :cond_35
    const/16 v23, 0x2f

    move/from16 v0, v23

    if-ne v9, v0, :cond_38

    sget-object v23, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 1495
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v23

    if-eqz v23, :cond_38

    .line 1496
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "bufIndex":I
    .restart local v8    # "bufIndex":I
    const/16 v24, 0x5c

    aput-char v24, v23, v7

    .line 1497
    sget-object v23, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v23, v23, v9

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_37

    .line 1498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    const/16 v24, 0x75

    aput-char v24, v23, v8

    .line 1499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "bufIndex":I
    .restart local v8    # "bufIndex":I
    sget-object v24, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v25, v9, 0xc

    and-int/lit8 v25, v25, 0xf

    aget-char v24, v24, v25

    aput-char v24, v23, v7

    .line 1500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    sget-object v24, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v25, v9, 0x8

    and-int/lit8 v25, v25, 0xf

    aget-char v24, v24, v25

    aput-char v24, v23, v8

    .line 1501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "bufIndex":I
    .restart local v8    # "bufIndex":I
    sget-object v24, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v25, v9, 0x4

    and-int/lit8 v25, v25, 0xf

    aget-char v24, v24, v25

    aput-char v24, v23, v7

    .line 1502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    sget-object v24, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v25, v9, 0xf

    aget-char v24, v24, v25

    aput-char v24, v23, v8

    .line 1503
    add-int/lit8 v11, v11, 0x5

    goto/16 :goto_c

    .line 1505
    .end local v7    # "bufIndex":I
    .restart local v8    # "bufIndex":I
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    sget-object v24, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v24, v24, v9

    aput-char v24, v23, v8

    .line 1506
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_c

    .line 1509
    :cond_38
    const/16 v23, 0x2028

    move/from16 v0, v23

    if-eq v9, v0, :cond_39

    const/16 v23, 0x2029

    move/from16 v0, v23

    if-ne v9, v0, :cond_3a

    .line 1510
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "bufIndex":I
    .restart local v8    # "bufIndex":I
    const/16 v24, 0x5c

    aput-char v24, v23, v7

    .line 1511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    const/16 v24, 0x75

    aput-char v24, v23, v8

    .line 1512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "bufIndex":I
    .restart local v8    # "bufIndex":I
    sget-object v24, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v25, v9, 0xc

    and-int/lit8 v25, v25, 0xf

    aget-char v24, v24, v25

    aput-char v24, v23, v7

    .line 1513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    sget-object v24, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v25, v9, 0x8

    and-int/lit8 v25, v25, 0xf

    aget-char v24, v24, v25

    aput-char v24, v23, v8

    .line 1514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "bufIndex":I
    .restart local v8    # "bufIndex":I
    sget-object v24, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v25, v9, 0x4

    and-int/lit8 v25, v25, 0xf

    aget-char v24, v24, v25

    aput-char v24, v23, v7

    .line 1515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    sget-object v24, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v25, v9, 0xf

    aget-char v24, v24, v25

    aput-char v24, v23, v8

    .line 1516
    add-int/lit8 v11, v11, 0x5

    goto/16 :goto_c

    .line 1518
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "bufIndex":I
    .restart local v8    # "bufIndex":I
    aput-char v9, v23, v7

    move v7, v8

    .end local v8    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    goto/16 :goto_c

    .line 1529
    .end local v7    # "bufIndex":I
    .end local v9    # "ch":C
    .end local v22    # "textIndex":I
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    const/16 v25, 0x22

    aput-char v25, v23, v24

    goto/16 :goto_0
.end method

.method protected writeStringWithSingleQuote(Ljava/lang/String;)V
    .locals 14
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 2127
    if-nez p1, :cond_1

    .line 2128
    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v6, v9, 0x4

    .line 2129
    .local v6, "newcount":I
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v9, v9

    if-le v6, v9, :cond_0

    .line 2130
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 2132
    :cond_0
    const-string v9, "null"

    const/4 v10, 0x0

    const/4 v11, 0x4

    iget-object v12, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v13, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {v9, v10, v11, v12, v13}, Ljava/lang/String;->getChars(II[CI)V

    .line 2133
    iput v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2207
    :goto_0
    return-void

    .line 2137
    .end local v6    # "newcount":I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 2138
    .local v5, "len":I
    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v9, v5

    add-int/lit8 v6, v9, 0x2

    .line 2139
    .restart local v6    # "newcount":I
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v9, v9

    if-le v6, v9, :cond_6

    .line 2140
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v9, :cond_5

    .line 2141
    const/16 v9, 0x27

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2142
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v2, v9, :cond_4

    .line 2143
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2144
    .local v0, "ch":C
    const/16 v9, 0xd

    if-le v0, v9, :cond_2

    const/16 v9, 0x5c

    if-eq v0, v9, :cond_2

    const/16 v9, 0x27

    if-eq v0, v9, :cond_2

    const/16 v9, 0x2f

    if-ne v0, v9, :cond_3

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 2145
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2146
    :cond_2
    const/16 v9, 0x5c

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2147
    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v9, v9, v0

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2142
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2149
    :cond_3
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_2

    .line 2152
    .end local v0    # "ch":C
    :cond_4
    const/16 v9, 0x27

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0

    .line 2155
    .end local v2    # "i":I
    :cond_5
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 2158
    :cond_6
    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v8, v9, 0x1

    .line 2159
    .local v8, "start":I
    add-int v1, v8, v5

    .line 2161
    .local v1, "end":I
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v11, 0x27

    aput-char v11, v9, v10

    .line 2162
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p1, v9, v5, v10, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 2163
    iput v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2165
    const/4 v7, 0x0

    .line 2166
    .local v7, "specialCount":I
    const/4 v4, -0x1

    .line 2167
    .local v4, "lastSpecialIndex":I
    const/4 v3, 0x0

    .line 2168
    .local v3, "lastSpecial":C
    move v2, v8

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v1, :cond_9

    .line 2169
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v0, v9, v2

    .line 2170
    .restart local v0    # "ch":C
    const/16 v9, 0xd

    if-le v0, v9, :cond_7

    const/16 v9, 0x5c

    if-eq v0, v9, :cond_7

    const/16 v9, 0x27

    if-eq v0, v9, :cond_7

    const/16 v9, 0x2f

    if-ne v0, v9, :cond_8

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 2171
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 2172
    :cond_7
    add-int/lit8 v7, v7, 0x1

    .line 2173
    move v4, v2

    .line 2174
    move v3, v0

    .line 2168
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2178
    .end local v0    # "ch":C
    :cond_9
    add-int/2addr v6, v7

    .line 2179
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v9, v9

    if-le v6, v9, :cond_a

    .line 2180
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 2182
    :cond_a
    iput v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2184
    const/4 v9, 0x1

    if-ne v7, v9, :cond_c

    .line 2185
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v4, 0x1

    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v4, 0x2

    sub-int v13, v1, v4

    add-int/lit8 v13, v13, -0x1

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2186
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v10, 0x5c

    aput-char v10, v9, v4

    .line 2187
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v4, 0x1

    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v10, v10, v3

    aput-char v10, v9, v4

    .line 2206
    :cond_b
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v10, v10, -0x1

    const/16 v11, 0x27

    aput-char v11, v9, v10

    goto/16 :goto_0

    .line 2188
    :cond_c
    const/4 v9, 0x1

    if-le v7, v9, :cond_b

    .line 2189
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v4, 0x1

    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v4, 0x2

    sub-int v13, v1, v4

    add-int/lit8 v13, v13, -0x1

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2190
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v10, 0x5c

    aput-char v10, v9, v4

    .line 2191
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v4, 0x1

    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v10, v10, v3

    aput-char v10, v9, v4

    .line 2192
    add-int/lit8 v1, v1, 0x1

    .line 2193
    add-int/lit8 v2, v4, -0x2

    :goto_4
    if-lt v2, v8, :cond_b

    .line 2194
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v0, v9, v2

    .line 2196
    .restart local v0    # "ch":C
    const/16 v9, 0xd

    if-le v0, v9, :cond_d

    const/16 v9, 0x5c

    if-eq v0, v9, :cond_d

    const/16 v9, 0x27

    if-eq v0, v9, :cond_d

    const/16 v9, 0x2f

    if-ne v0, v9, :cond_e

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 2197
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 2198
    :cond_d
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v2, 0x1

    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v2, 0x2

    sub-int v13, v1, v2

    add-int/lit8 v13, v13, -0x1

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2199
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v10, 0x5c

    aput-char v10, v9, v2

    .line 2200
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v2, 0x1

    sget-object v11, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v11, v11, v0

    aput-char v11, v9, v10

    .line 2201
    add-int/lit8 v1, v1, 0x1

    .line 2193
    :cond_e
    add-int/lit8 v2, v2, -0x1

    goto :goto_4
.end method

.method protected writeStringWithSingleQuote([C)V
    .locals 14
    .param p1, "chars"    # [C

    .prologue
    .line 2210
    if-nez p1, :cond_1

    .line 2211
    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v6, v9, 0x4

    .line 2212
    .local v6, "newcount":I
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v9, v9

    if-le v6, v9, :cond_0

    .line 2213
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 2215
    :cond_0
    const-string v9, "null"

    const/4 v10, 0x0

    const/4 v11, 0x4

    iget-object v12, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v13, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {v9, v10, v11, v12, v13}, Ljava/lang/String;->getChars(II[CI)V

    .line 2216
    iput v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2291
    :goto_0
    return-void

    .line 2220
    .end local v6    # "newcount":I
    :cond_1
    array-length v5, p1

    .line 2221
    .local v5, "len":I
    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v9, v5

    add-int/lit8 v6, v9, 0x2

    .line 2222
    .restart local v6    # "newcount":I
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v9, v9

    if-le v6, v9, :cond_6

    .line 2223
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v9, :cond_5

    .line 2224
    const/16 v9, 0x27

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2225
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v9, p1

    if-ge v2, v9, :cond_4

    .line 2226
    aget-char v0, p1, v2

    .line 2227
    .local v0, "ch":C
    const/16 v9, 0xd

    if-le v0, v9, :cond_2

    const/16 v9, 0x5c

    if-eq v0, v9, :cond_2

    const/16 v9, 0x27

    if-eq v0, v9, :cond_2

    const/16 v9, 0x2f

    if-ne v0, v9, :cond_3

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 2228
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2229
    :cond_2
    const/16 v9, 0x5c

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2230
    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v9, v9, v0

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2225
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2232
    :cond_3
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_2

    .line 2235
    .end local v0    # "ch":C
    :cond_4
    const/16 v9, 0x27

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0

    .line 2238
    .end local v2    # "i":I
    :cond_5
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 2241
    :cond_6
    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v8, v9, 0x1

    .line 2242
    .local v8, "start":I
    add-int v1, v8, v5

    .line 2244
    .local v1, "end":I
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v11, 0x27

    aput-char v11, v9, v10

    .line 2246
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v11, p1

    invoke-static {p1, v9, v10, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2247
    iput v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2249
    const/4 v7, 0x0

    .line 2250
    .local v7, "specialCount":I
    const/4 v4, -0x1

    .line 2251
    .local v4, "lastSpecialIndex":I
    const/4 v3, 0x0

    .line 2252
    .local v3, "lastSpecial":C
    move v2, v8

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v1, :cond_9

    .line 2253
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v0, v9, v2

    .line 2254
    .restart local v0    # "ch":C
    const/16 v9, 0xd

    if-le v0, v9, :cond_7

    const/16 v9, 0x5c

    if-eq v0, v9, :cond_7

    const/16 v9, 0x27

    if-eq v0, v9, :cond_7

    const/16 v9, 0x2f

    if-ne v0, v9, :cond_8

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 2255
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 2256
    :cond_7
    add-int/lit8 v7, v7, 0x1

    .line 2257
    move v4, v2

    .line 2258
    move v3, v0

    .line 2252
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2262
    .end local v0    # "ch":C
    :cond_9
    add-int/2addr v6, v7

    .line 2263
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v9, v9

    if-le v6, v9, :cond_a

    .line 2264
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 2266
    :cond_a
    iput v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2268
    const/4 v9, 0x1

    if-ne v7, v9, :cond_c

    .line 2269
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v4, 0x1

    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v4, 0x2

    sub-int v13, v1, v4

    add-int/lit8 v13, v13, -0x1

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2270
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v10, 0x5c

    aput-char v10, v9, v4

    .line 2271
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v4, 0x1

    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v10, v10, v3

    aput-char v10, v9, v4

    .line 2290
    :cond_b
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v10, v10, -0x1

    const/16 v11, 0x27

    aput-char v11, v9, v10

    goto/16 :goto_0

    .line 2272
    :cond_c
    const/4 v9, 0x1

    if-le v7, v9, :cond_b

    .line 2273
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v4, 0x1

    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v4, 0x2

    sub-int v13, v1, v4

    add-int/lit8 v13, v13, -0x1

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2274
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v10, 0x5c

    aput-char v10, v9, v4

    .line 2275
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v4, 0x1

    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v10, v10, v3

    aput-char v10, v9, v4

    .line 2276
    add-int/lit8 v1, v1, 0x1

    .line 2277
    add-int/lit8 v2, v4, -0x2

    :goto_4
    if-lt v2, v8, :cond_b

    .line 2278
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v0, v9, v2

    .line 2280
    .restart local v0    # "ch":C
    const/16 v9, 0xd

    if-le v0, v9, :cond_d

    const/16 v9, 0x5c

    if-eq v0, v9, :cond_d

    const/16 v9, 0x27

    if-eq v0, v9, :cond_d

    const/16 v9, 0x2f

    if-ne v0, v9, :cond_e

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 2281
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 2282
    :cond_d
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v2, 0x1

    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v2, 0x2

    sub-int v13, v1, v2

    add-int/lit8 v13, v13, -0x1

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2283
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v10, 0x5c

    aput-char v10, v9, v2

    .line 2284
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v2, 0x1

    sget-object v11, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v11, v11, v0

    aput-char v11, v9, v10

    .line 2285
    add-int/lit8 v1, v1, 0x1

    .line 2277
    :cond_e
    add-int/lit8 v2, v2, -0x1

    goto :goto_4
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

    .prologue
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

    .prologue
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

    .prologue
    .line 347
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 348
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "writer not null"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v1, 0x0

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/Writer;->write([CII)V

    .line 351
    return-void
.end method

.method public writeToEx(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)I
    .locals 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 362
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v1, :cond_0

    .line 363
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "writer not null"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 366
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    if-ne p2, v1, :cond_1

    .line 367
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->encodeToUTF8(Ljava/io/OutputStream;)I

    move-result v1

    .line 371
    :goto_0
    return v1

    .line 369
    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v3, 0x0

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 370
    .local v0, "bytes":[B
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 371
    array-length v1, v0

    goto :goto_0
.end method
