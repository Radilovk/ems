.class public Lorg/apache/poi/hpsf/Property;
.super Ljava/lang/Object;
.source "Property.java"


# instance fields
.field protected id:J

.field protected type:J

.field protected value:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JJLjava/lang/Object;)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "type"    # J
    .param p5, "value"    # Ljava/lang/Object;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-wide p1, p0, Lorg/apache/poi/hpsf/Property;->id:J

    .line 123
    iput-wide p3, p0, Lorg/apache/poi/hpsf/Property;->type:J

    .line 124
    iput-object p5, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    .line 125
    return-void
.end method

.method public constructor <init>(J[BJII)V
    .locals 16
    .param p1, "id"    # J
    .param p3, "src"    # [B
    .param p4, "offset"    # J
    .param p6, "length"    # I
    .param p7, "codepage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 146
    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-wide v8, v7, Lorg/apache/poi/hpsf/Property;->id:J

    .line 153
    const-wide/16 v0, 0x0

    cmp-long v2, v8, v0

    if-nez v2, :cond_0

    .line 155
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-wide/from16 v3, p4

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/hpsf/Property;->readDictionary([BJII)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v7, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    .line 156
    return-void

    .line 159
    :cond_0
    move-wide/from16 v1, p4

    long-to-int v0, v1

    .line 160
    .local v0, "o":I
    move-object/from16 v3, p3

    invoke-static {v3, v0}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v4

    iput-wide v4, v7, Lorg/apache/poi/hpsf/Property;->type:J

    .line 161
    add-int/lit8 v6, v0, 0x4

    .line 165
    .end local v0    # "o":I
    .local v6, "o":I
    long-to-int v0, v4

    int-to-long v13, v0

    move-object/from16 v10, p3

    move v11, v6

    move/from16 v12, p6

    move/from16 v15, p7

    :try_start_0
    invoke-static/range {v10 .. v15}, Lorg/apache/poi/hpsf/VariantSupport;->read([BIIJI)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v7, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/poi/hpsf/UnsupportedVariantTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 169
    .local v0, "ex":Lorg/apache/poi/hpsf/UnsupportedVariantTypeException;
    invoke-static {v0}, Lorg/apache/poi/hpsf/VariantSupport;->writeUnsupportedTypeMessage(Lorg/apache/poi/hpsf/UnsupportedVariantTypeException;)V

    .line 170
    invoke-virtual {v0}, Lorg/apache/poi/hpsf/UnsupportedVariantTypeException;->getValue()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v7, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    .line 172
    .end local v0    # "ex":Lorg/apache/poi/hpsf/UnsupportedVariantTypeException;
    :goto_0
    return-void
.end method

.method private typesAreEqual(JJ)Z
    .locals 5
    .param p1, "t1"    # J
    .param p3, "t2"    # J

    .line 377
    cmp-long v0, p1, p3

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x1f

    const-wide/16 v2, 0x1e

    cmp-long v4, p1, v2

    if-nez v4, :cond_0

    cmp-long v4, p3, v0

    if-eqz v4, :cond_2

    :cond_0
    cmp-long v4, p3, v2

    if-nez v4, :cond_1

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    goto :goto_0

    .line 382
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 380
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "o"    # Ljava/lang/Object;

    .line 347
    instance-of v0, p1, Lorg/apache/poi/hpsf/Property;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 348
    return v1

    .line 350
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hpsf/Property;

    .line 351
    .local v0, "p":Lorg/apache/poi/hpsf/Property;
    invoke-virtual {v0}, Lorg/apache/poi/hpsf/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 352
    .local v2, "pValue":Ljava/lang/Object;
    invoke-virtual {v0}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v3

    .line 353
    .local v3, "pId":J
    iget-wide v5, p0, Lorg/apache/poi/hpsf/Property;->id:J

    cmp-long v7, v5, v3

    if-nez v7, :cond_7

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_1

    iget-wide v5, p0, Lorg/apache/poi/hpsf/Property;->type:J

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/Property;->getType()J

    move-result-wide v7

    invoke-direct {p0, v5, v6, v7, v8}, Lorg/apache/poi/hpsf/Property;->typesAreEqual(JJ)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 355
    :cond_1
    iget-object v5, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    if-nez v5, :cond_2

    if-nez v2, :cond_2

    .line 356
    const/4 v1, 0x1

    return v1

    .line 357
    :cond_2
    iget-object v5, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    if-eqz v5, :cond_6

    if-nez v2, :cond_3

    goto :goto_0

    .line 361
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 362
    .local v5, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 363
    .local v6, "pValueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 365
    return v1

    .line 367
    :cond_4
    iget-object v1, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    instance-of v7, v1, [B

    if-eqz v7, :cond_5

    .line 368
    check-cast v1, [B

    check-cast v1, [B

    move-object v7, v2

    check-cast v7, [B

    check-cast v7, [B

    invoke-static {v1, v7}, Lorg/apache/poi/hpsf/Util;->equal([B[B)Z

    move-result v1

    return v1

    .line 370
    :cond_5
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 358
    .end local v5    # "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "pValueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    :goto_0
    return v1

    .line 354
    :cond_7
    :goto_1
    return v1
.end method

.method public getID()J
    .locals 2

    .line 75
    iget-wide v0, p0, Lorg/apache/poi/hpsf/Property;->id:J

    return-wide v0
.end method

.method protected getSize()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/WritingNotSupportedException;
        }
    .end annotation

    .line 307
    iget-wide v0, p0, Lorg/apache/poi/hpsf/Property;->type:J

    invoke-static {v0, v1}, Lorg/apache/poi/hpsf/VariantSupport;->getVariantLength(J)I

    move-result v0

    .line 308
    .local v0, "length":I
    if-ltz v0, :cond_0

    .line 309
    return v0

    .line 310
    :cond_0
    const/4 v1, -0x2

    if-eq v0, v1, :cond_4

    .line 315
    const/4 v1, 0x4

    .line 316
    .local v1, "PADDING":I
    iget-wide v2, p0, Lorg/apache/poi/hpsf/Property;->type:J

    long-to-int v3, v2

    if-eqz v3, :cond_3

    const/16 v2, 0x1e

    if-ne v3, v2, :cond_2

    .line 320
    iget-object v2, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 321
    .local v2, "l":I
    rem-int/lit8 v3, v2, 0x4

    .line 322
    .local v3, "r":I
    if-lez v3, :cond_1

    .line 323
    rsub-int/lit8 v4, v3, 0x4

    add-int/2addr v2, v4

    .line 324
    :cond_1
    add-int/2addr v0, v2

    .line 325
    goto :goto_0

    .line 330
    .end local v2    # "l":I
    .end local v3    # "r":I
    :cond_2
    new-instance v2, Lorg/apache/poi/hpsf/WritingNotSupportedException;

    iget-wide v3, p0, Lorg/apache/poi/hpsf/Property;->type:J

    iget-object v5, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/poi/hpsf/WritingNotSupportedException;-><init>(JLjava/lang/Object;)V

    throw v2

    .line 328
    :cond_3
    nop

    .line 332
    :goto_0
    return v0

    .line 312
    .end local v1    # "PADDING":I
    :cond_4
    new-instance v1, Lorg/apache/poi/hpsf/WritingNotSupportedException;

    iget-wide v2, p0, Lorg/apache/poi/hpsf/Property;->type:J

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/poi/hpsf/WritingNotSupportedException;-><init>(JLjava/lang/Object;)V

    throw v1
.end method

.method public getType()J
    .locals 2

    .line 91
    iget-wide v0, p0, Lorg/apache/poi/hpsf/Property;->type:J

    return-wide v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 392
    const-wide/16 v0, 0x0

    .line 393
    .local v0, "hashCode":J
    iget-wide v2, p0, Lorg/apache/poi/hpsf/Property;->id:J

    add-long/2addr v0, v2

    .line 394
    iget-wide v2, p0, Lorg/apache/poi/hpsf/Property;->type:J

    add-long/2addr v0, v2

    .line 395
    iget-object v2, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 396
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 397
    :cond_0
    const-wide v2, 0xffffffffL

    and-long/2addr v2, v0

    long-to-int v3, v2

    .line 398
    .local v3, "returnHashCode":I
    return v3
.end method

.method protected readDictionary([BJII)Ljava/util/Map;
    .locals 19
    .param p1, "src"    # [B
    .param p2, "offset"    # J
    .param p4, "length"    # I
    .param p5, "codepage"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJII)",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 202
    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p5

    const-wide/16 v5, 0x0

    cmp-long v0, v2, v5

    if-ltz v0, :cond_7

    array-length v0, v1

    int-to-long v5, v0

    cmp-long v0, v2, v5

    if-gtz v0, :cond_7

    .line 206
    long-to-int v0, v2

    .line 211
    .local v0, "o":I
    invoke-static {v1, v0}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v5

    .line 212
    .local v5, "nrEntries":J
    add-int/lit8 v0, v0, 0x4

    .line 214
    new-instance v7, Ljava/util/LinkedHashMap;

    long-to-int v8, v5

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v9}, Ljava/util/LinkedHashMap;-><init>(IF)V

    .line 219
    .local v7, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v8, 0x0

    move/from16 v18, v8

    move v8, v0

    move/from16 v0, v18

    .local v0, "i":I
    .local v8, "o":I
    :goto_0
    int-to-long v9, v0

    cmp-long v11, v9, v5

    if-gez v11, :cond_6

    .line 222
    :try_start_0
    invoke-static {v1, v8}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 223
    .local v9, "id":Ljava/lang/Long;
    add-int/lit8 v8, v8, 0x4

    .line 230
    invoke-static {v1, v8}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v10

    .line 231
    .local v10, "sLength":J
    add-int/lit8 v8, v8, 0x4

    .line 234
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 235
    .local v12, "b":Ljava/lang/StringBuffer;
    const/4 v13, -0x1

    const/16 v14, 0x4b0

    if-eq v4, v13, :cond_2

    if-eq v4, v14, :cond_0

    .line 263
    :try_start_1
    new-instance v13, Ljava/lang/String;

    long-to-int v15, v10

    invoke-static/range {p5 .. p5}, Lorg/apache/poi/hpsf/VariantSupport;->codepageToEncoding(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v1, v8, v15, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-wide/from16 v16, v5

    goto :goto_2

    .line 283
    .end local v0    # "i":I
    .end local v9    # "id":Ljava/lang/Long;
    .end local v10    # "sLength":J
    .end local v12    # "b":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v0

    move-wide/from16 v16, v5

    goto/16 :goto_4

    .line 248
    .restart local v0    # "i":I
    .restart local v9    # "id":Ljava/lang/Long;
    .restart local v10    # "sLength":J
    .restart local v12    # "b":Ljava/lang/StringBuffer;
    :cond_0
    move-wide/from16 v16, v5

    const-wide/16 v13, 0x2

    .end local v5    # "nrEntries":J
    .local v16, "nrEntries":J
    mul-long v5, v10, v13

    long-to-int v6, v5

    .line 249
    .local v6, "nrBytes":I
    :try_start_2
    new-array v5, v6, [B

    .line 250
    .local v5, "h":[B
    const/4 v13, 0x0

    .local v13, "i2":I
    :goto_1
    if-ge v13, v6, :cond_1

    .line 252
    add-int v14, v8, v13

    add-int/lit8 v14, v14, 0x1

    aget-byte v14, v1, v14

    aput-byte v14, v5, v13

    .line 253
    add-int/lit8 v14, v13, 0x1

    add-int v15, v8, v13

    aget-byte v15, v1, v15

    aput-byte v15, v5, v14

    .line 250
    add-int/lit8 v13, v13, 0x2

    goto :goto_1

    .line 255
    .end local v13    # "i2":I
    :cond_1
    new-instance v13, Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static/range {p5 .. p5}, Lorg/apache/poi/util/CodePageUtil;->codepageToEncoding(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v5, v14, v6, v15}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    goto :goto_2

    .line 241
    .end local v6    # "nrBytes":I
    .end local v16    # "nrEntries":J
    .local v5, "nrEntries":J
    :cond_2
    move-wide/from16 v16, v5

    .end local v5    # "nrEntries":J
    .restart local v16    # "nrEntries":J
    new-instance v5, Ljava/lang/String;

    long-to-int v6, v10

    invoke-direct {v5, v1, v8, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    nop

    .line 270
    :goto_2
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v12, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    if-nez v5, :cond_3

    .line 271
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v12, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_2

    .line 272
    :cond_3
    const/16 v5, 0x4b0

    if-ne v4, v5, :cond_5

    .line 274
    const-wide/16 v5, 0x2

    rem-long v5, v10, v5

    const-wide/16 v13, 0x1

    cmp-long v15, v5, v13

    if-nez v15, :cond_4

    .line 275
    add-long/2addr v10, v13

    .line 276
    :cond_4
    int-to-long v5, v8

    add-long v13, v10, v10

    add-long/2addr v5, v13

    long-to-int v6, v5

    move v8, v6

    .end local v8    # "o":I
    .local v6, "o":I
    goto :goto_3

    .line 279
    .end local v6    # "o":I
    .restart local v8    # "o":I
    :cond_5
    int-to-long v5, v8

    add-long/2addr v5, v10

    long-to-int v6, v5

    .end local v8    # "o":I
    .restart local v6    # "o":I
    move v8, v6

    .line 280
    .end local v6    # "o":I
    .restart local v8    # "o":I
    :goto_3
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 219
    nop

    .end local v9    # "id":Ljava/lang/Long;
    .end local v10    # "sLength":J
    .end local v12    # "b":Ljava/lang/StringBuffer;
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v5, v16

    goto/16 :goto_0

    .line 283
    .end local v0    # "i":I
    :catch_1
    move-exception v0

    goto :goto_4

    .end local v16    # "nrEntries":J
    .restart local v5    # "nrEntries":J
    :catch_2
    move-exception v0

    move-wide/from16 v16, v5

    .line 285
    .end local v5    # "nrEntries":J
    .local v0, "ex":Ljava/lang/RuntimeException;
    .restart local v16    # "nrEntries":J
    :goto_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v5

    .line 286
    .local v5, "l":Lorg/apache/poi/util/POILogger;
    const/4 v6, 0x5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The property set\'s dictionary contains bogus data. All dictionary entries starting with the one with ID "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p0

    iget-wide v11, v10, Lorg/apache/poi/hpsf/Property;->id:J

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " will be ignored."

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v9, v0}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 219
    .end local v16    # "nrEntries":J
    .local v0, "i":I
    .local v5, "nrEntries":J
    :cond_6
    move-object/from16 v10, p0

    move-wide/from16 v16, v5

    .line 290
    .end local v0    # "i":I
    .end local v5    # "nrEntries":J
    .restart local v16    # "nrEntries":J
    nop

    .line 291
    :goto_5
    return-object v7

    .line 202
    .end local v7    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v8    # "o":I
    .end local v16    # "nrEntries":J
    :cond_7
    move-object/from16 v10, p0

    .line 203
    new-instance v0, Lorg/apache/poi/hpsf/HPSFRuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal offset "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " while HPSF stream contains "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " bytes."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/apache/poi/hpsf/HPSFRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .line 409
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 410
    .local v0, "b":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 411
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 412
    const-string v1, "id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 413
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 414
    const-string v1, ", type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 415
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Property;->getType()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 416
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 417
    .local v1, "value":Ljava/lang/Object;
    const-string v2, ", value: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 418
    instance-of v2, v1, Ljava/lang/String;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    .line 420
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 421
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 422
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    .line 423
    .local v6, "l":I
    mul-int/lit8 v7, v6, 0x2

    new-array v7, v7, [B

    .line 424
    .local v7, "bytes":[B
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v6, :cond_0

    .line 426
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 427
    .local v9, "c":C
    const v10, 0xff00

    and-int/2addr v10, v9

    shr-int/lit8 v10, v10, 0x8

    int-to-byte v10, v10

    .line 428
    .local v10, "high":B
    and-int/lit16 v11, v9, 0xff

    shr-int/2addr v11, v5

    int-to-byte v11, v11

    .line 429
    .local v11, "low":B
    mul-int/lit8 v12, v8, 0x2

    aput-byte v10, v7, v12

    .line 430
    mul-int/lit8 v12, v8, 0x2

    add-int/lit8 v12, v12, 0x1

    aput-byte v11, v7, v12

    .line 424
    .end local v9    # "c":C
    .end local v10    # "high":B
    .end local v11    # "low":B
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 432
    .end local v8    # "i":I
    :cond_0
    const-string v8, " ["

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 433
    array-length v8, v7

    if-lez v8, :cond_1

    .line 434
    invoke-static {v7, v3, v4, v5}, Lorg/apache/poi/util/HexDump;->dump([BJI)Ljava/lang/String;

    move-result-object v3

    .line 435
    .local v3, "hex":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 437
    .end local v3    # "hex":Ljava/lang/String;
    :cond_1
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 438
    .end local v2    # "s":Ljava/lang/String;
    .end local v6    # "l":I
    .end local v7    # "bytes":[B
    goto :goto_1

    .line 439
    :cond_2
    instance-of v2, v1, [B

    if-eqz v2, :cond_4

    .line 441
    move-object v2, v1

    check-cast v2, [B

    check-cast v2, [B

    .line 442
    .local v2, "bytes":[B
    array-length v6, v2

    if-lez v6, :cond_3

    .line 443
    invoke-static {v2, v3, v4, v5}, Lorg/apache/poi/util/HexDump;->dump([BJI)Ljava/lang/String;

    move-result-object v3

    .line 444
    .restart local v3    # "hex":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 446
    .end local v2    # "bytes":[B
    .end local v3    # "hex":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 449
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 451
    :goto_1
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 452
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
