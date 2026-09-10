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

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JJLjava/lang/Object;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "type"    # J
    .param p5, "value"    # Ljava/lang/Object;

    .prologue
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
    .locals 8
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

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-wide p1, p0, Lorg/apache/poi/hpsf/Property;->id:J

    .line 153
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    move-object v0, p0

    move-object v1, p3

    move-wide v2, p4

    move v4, p6

    move v5, p7

    .line 155
    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/hpsf/Property;->readDictionary([BJII)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    .line 172
    :goto_0
    return-void

    .line 159
    :cond_0
    long-to-int v2, p4

    .line 160
    .local v2, "o":I
    invoke-static {p3, v2}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hpsf/Property;->type:J

    .line 161
    add-int/lit8 v2, v2, 0x4

    .line 165
    :try_start_0
    iget-wide v0, p0, Lorg/apache/poi/hpsf/Property;->type:J

    long-to-int v0, v0

    int-to-long v4, v0

    move-object v1, p3

    move v3, p6

    move v6, p7

    invoke-static/range {v1 .. v6}, Lorg/apache/poi/hpsf/VariantSupport;->read([BIIJI)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/poi/hpsf/UnsupportedVariantTypeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v7

    .line 169
    .local v7, "ex":Lorg/apache/poi/hpsf/UnsupportedVariantTypeException;
    invoke-static {v7}, Lorg/apache/poi/hpsf/VariantSupport;->writeUnsupportedTypeMessage(Lorg/apache/poi/hpsf/UnsupportedVariantTypeException;)V

    .line 170
    invoke-virtual {v7}, Lorg/apache/poi/hpsf/UnsupportedVariantTypeException;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method private typesAreEqual(JJ)Z
    .locals 7
    .param p1, "t1"    # J
    .param p3, "t2"    # J

    .prologue
    const-wide/16 v4, 0x1f

    const-wide/16 v2, 0x1e

    .line 377
    cmp-long v0, p1, p3

    if-eqz v0, :cond_1

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    cmp-long v0, p3, v4

    if-eqz v0, :cond_1

    :cond_0
    cmp-long v0, p3, v2

    if-nez v0, :cond_2

    cmp-long v0, p1, v4

    if-nez v0, :cond_2

    .line 380
    :cond_1
    const/4 v0, 0x1

    .line 382
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 12
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 347
    instance-of v7, p1, Lorg/apache/poi/hpsf/Property;

    if-nez v7, :cond_1

    .line 370
    :cond_0
    :goto_0
    return v6

    :cond_1
    move-object v0, p1

    .line 350
    check-cast v0, Lorg/apache/poi/hpsf/Property;

    .line 351
    .local v0, "p":Lorg/apache/poi/hpsf/Property;
    invoke-virtual {v0}, Lorg/apache/poi/hpsf/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 352
    .local v1, "pValue":Ljava/lang/Object;
    invoke-virtual {v0}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v2

    .line 353
    .local v2, "pId":J
    iget-wide v8, p0, Lorg/apache/poi/hpsf/Property;->id:J

    cmp-long v7, v8, v2

    if-nez v7, :cond_0

    iget-wide v8, p0, Lorg/apache/poi/hpsf/Property;->id:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_2

    iget-wide v8, p0, Lorg/apache/poi/hpsf/Property;->type:J

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/Property;->getType()J

    move-result-wide v10

    invoke-direct {p0, v8, v9, v10, v11}, Lorg/apache/poi/hpsf/Property;->typesAreEqual(JJ)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 355
    :cond_2
    iget-object v7, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    if-nez v7, :cond_3

    if-nez v1, :cond_3

    .line 356
    const/4 v6, 0x1

    goto :goto_0

    .line 357
    :cond_3
    iget-object v7, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    if-eqz v7, :cond_0

    if-eqz v1, :cond_0

    .line 361
    iget-object v7, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 362
    .local v5, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 363
    .local v4, "pValueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 367
    :cond_4
    iget-object v6, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    instance-of v6, v6, [B

    if-eqz v6, :cond_5

    .line 368
    iget-object v6, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    check-cast v6, [B

    check-cast v6, [B

    check-cast v1, [B

    .end local v1    # "pValue":Ljava/lang/Object;
    check-cast v1, [B

    invoke-static {v6, v1}, Lorg/apache/poi/hpsf/Util;->equal([B[B)Z

    move-result v6

    goto :goto_0

    .line 370
    .restart local v1    # "pValue":Ljava/lang/Object;
    :cond_5
    iget-object v6, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_0
.end method

.method public getID()J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lorg/apache/poi/hpsf/Property;->id:J

    return-wide v0
.end method

.method protected getSize()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/WritingNotSupportedException;
        }
    .end annotation

    .prologue
    .line 307
    iget-wide v6, p0, Lorg/apache/poi/hpsf/Property;->type:J

    invoke-static {v6, v7}, Lorg/apache/poi/hpsf/VariantSupport;->getVariantLength(J)I

    move-result v2

    .line 308
    .local v2, "length":I
    if-ltz v2, :cond_0

    move v3, v2

    .end local v2    # "length":I
    .local v3, "length":I
    move v4, v2

    .line 332
    .end local v3    # "length":I
    .local v4, "length":I
    :goto_0
    return v4

    .line 310
    .end local v4    # "length":I
    .restart local v2    # "length":I
    :cond_0
    const/4 v6, -0x2

    if-ne v2, v6, :cond_1

    .line 312
    new-instance v6, Lorg/apache/poi/hpsf/WritingNotSupportedException;

    iget-wide v8, p0, Lorg/apache/poi/hpsf/Property;->type:J

    const/4 v7, 0x0

    invoke-direct {v6, v8, v9, v7}, Lorg/apache/poi/hpsf/WritingNotSupportedException;-><init>(JLjava/lang/Object;)V

    throw v6

    .line 315
    :cond_1
    const/4 v0, 0x4

    .line 316
    .local v0, "PADDING":I
    iget-wide v6, p0, Lorg/apache/poi/hpsf/Property;->type:J

    long-to-int v6, v6

    sparse-switch v6, :sswitch_data_0

    .line 330
    new-instance v6, Lorg/apache/poi/hpsf/WritingNotSupportedException;

    iget-wide v8, p0, Lorg/apache/poi/hpsf/Property;->type:J

    iget-object v7, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    invoke-direct {v6, v8, v9, v7}, Lorg/apache/poi/hpsf/WritingNotSupportedException;-><init>(JLjava/lang/Object;)V

    throw v6

    .line 320
    :sswitch_0
    iget-object v6, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v1, v6, 0x1

    .line 321
    .local v1, "l":I
    rem-int/lit8 v5, v1, 0x4

    .line 322
    .local v5, "r":I
    if-lez v5, :cond_2

    .line 323
    rsub-int/lit8 v6, v5, 0x4

    add-int/2addr v1, v6

    .line 324
    :cond_2
    add-int/2addr v2, v1

    .end local v1    # "l":I
    .end local v5    # "r":I
    :sswitch_1
    move v3, v2

    .end local v2    # "length":I
    .restart local v3    # "length":I
    move v4, v2

    .line 332
    .end local v3    # "length":I
    .restart local v4    # "length":I
    goto :goto_0

    .line 316
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1e -> :sswitch_0
    .end sparse-switch
.end method

.method public getType()J
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lorg/apache/poi/hpsf/Property;->type:J

    return-wide v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 392
    const-wide/16 v0, 0x0

    .line 393
    .local v0, "hashCode":J
    iget-wide v4, p0, Lorg/apache/poi/hpsf/Property;->id:J

    add-long/2addr v0, v4

    .line 394
    iget-wide v4, p0, Lorg/apache/poi/hpsf/Property;->type:J

    add-long/2addr v0, v4

    .line 395
    iget-object v3, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 396
    iget-object v3, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 397
    :cond_0
    const-wide v4, 0xffffffffL

    and-long/2addr v4, v0

    long-to-int v2, v4

    .line 398
    .local v2, "returnHashCode":I
    return v2
.end method

.method protected readDictionary([BJII)Ljava/util/Map;
    .locals 22
    .param p1, "src"    # [B
    .param p2, "offset"    # J
    .param p4, "length"    # I
    .param p5, "codepage"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJII)",
            "Ljava/util/Map",
            "<**>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 202
    const-wide/16 v18, 0x0

    cmp-long v18, p2, v18

    if-ltz v18, :cond_0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v18, p2, v18

    if-lez v18, :cond_1

    .line 203
    :cond_0
    new-instance v18, Lorg/apache/poi/hpsf/HPSFRuntimeException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Illegal offset "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " while HPSF stream contains "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " bytes."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lorg/apache/poi/hpsf/HPSFRuntimeException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 206
    :cond_1
    move-wide/from16 v0, p2

    long-to-int v13, v0

    .line 211
    .local v13, "o":I
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v14

    .line 212
    .local v14, "nrEntries":J
    add-int/lit8 v13, v13, 0x4

    .line 214
    new-instance v11, Ljava/util/LinkedHashMap;

    long-to-int v0, v14

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v11, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IF)V

    .line 219
    .local v11, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    int-to-long v0, v7

    move-wide/from16 v18, v0

    cmp-long v18, v18, v14

    if-gez v18, :cond_2

    .line 222
    :try_start_0
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 223
    .local v9, "id":Ljava/lang/Long;
    add-int/lit8 v13, v13, 0x4

    .line 230
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v16

    .line 231
    .local v16, "sLength":J
    add-int/lit8 v13, v13, 0x4

    .line 234
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 235
    .local v4, "b":Ljava/lang/StringBuffer;
    sparse-switch p5, :sswitch_data_0

    .line 263
    new-instance v18, Ljava/lang/String;

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v19, v0

    invoke-static/range {p5 .. p5}, Lorg/apache/poi/hpsf/VariantSupport;->codepageToEncoding(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v13, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v18

    if-lez v18, :cond_4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v18

    if-nez v18, :cond_4

    .line 271
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->setLength(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 283
    .end local v4    # "b":Ljava/lang/StringBuffer;
    .end local v9    # "id":Ljava/lang/Long;
    .end local v16    # "sLength":J
    :catch_0
    move-exception v5

    .line 285
    .local v5, "ex":Ljava/lang/RuntimeException;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v10

    .line 286
    .local v10, "l":Lorg/apache/poi/util/POILogger;
    const/16 v18, 0x5

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "The property set\'s dictionary contains bogus data. All dictionary entries starting with the one with ID "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/poi/hpsf/Property;->id:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " will be ignored."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1, v5}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 291
    .end local v5    # "ex":Ljava/lang/RuntimeException;
    .end local v10    # "l":Lorg/apache/poi/util/POILogger;
    :cond_2
    return-object v11

    .line 241
    .restart local v4    # "b":Ljava/lang/StringBuffer;
    .restart local v9    # "id":Ljava/lang/Long;
    .restart local v16    # "sLength":J
    :sswitch_0
    :try_start_1
    new-instance v18, Ljava/lang/String;

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v13, v2}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 248
    :sswitch_1
    const-wide/16 v18, 0x2

    mul-long v18, v18, v16

    move-wide/from16 v0, v18

    long-to-int v12, v0

    .line 249
    .local v12, "nrBytes":I
    new-array v6, v12, [B

    .line 250
    .local v6, "h":[B
    const/4 v8, 0x0

    .local v8, "i2":I
    :goto_2
    if-ge v8, v12, :cond_3

    .line 252
    add-int v18, v13, v8

    add-int/lit8 v18, v18, 0x1

    aget-byte v18, p1, v18

    aput-byte v18, v6, v8

    .line 253
    add-int/lit8 v18, v8, 0x1

    add-int v19, v13, v8

    aget-byte v19, p1, v19

    aput-byte v19, v6, v18

    .line 250
    add-int/lit8 v8, v8, 0x2

    goto :goto_2

    .line 255
    :cond_3
    new-instance v18, Ljava/lang/String;

    const/16 v19, 0x0

    invoke-static/range {p5 .. p5}, Lorg/apache/poi/util/CodePageUtil;->codepageToEncoding(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v6, v1, v12, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 272
    .end local v6    # "h":[B
    .end local v8    # "i2":I
    .end local v12    # "nrBytes":I
    :cond_4
    const/16 v18, 0x4b0

    move/from16 v0, p5

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 274
    const-wide/16 v18, 0x2

    rem-long v18, v16, v18

    const-wide/16 v20, 0x1

    cmp-long v18, v18, v20

    if-nez v18, :cond_5

    .line 275
    const-wide/16 v18, 0x1

    add-long v16, v16, v18

    .line 276
    :cond_5
    int-to-long v0, v13

    move-wide/from16 v18, v0

    add-long v20, v16, v16

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v13, v0

    .line 280
    :goto_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v11, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 219
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 279
    :cond_6
    int-to-long v0, v13

    move-wide/from16 v18, v0

    add-long v18, v18, v16

    move-wide/from16 v0, v18

    long-to-int v13, v0

    goto :goto_3

    .line 235
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x4b0 -> :sswitch_1
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .prologue
    .line 409
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 410
    .local v0, "b":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 411
    const/16 v10, 0x5b

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 412
    const-string v10, "id: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 413
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 414
    const-string v10, ", type: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 415
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Property;->getType()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 416
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Property;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 417
    .local v9, "value":Ljava/lang/Object;
    const-string v10, ", value: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 418
    instance-of v10, v9, Ljava/lang/String;

    if-eqz v10, :cond_3

    .line 420
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v8, v9

    .line 421
    check-cast v8, Ljava/lang/String;

    .line 422
    .local v8, "s":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    .line 423
    .local v6, "l":I
    mul-int/lit8 v10, v6, 0x2

    new-array v1, v10, [B

    .line 424
    .local v1, "bytes":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v6, :cond_0

    .line 426
    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 427
    .local v2, "c":C
    const v10, 0xff00

    and-int/2addr v10, v2

    shr-int/lit8 v10, v10, 0x8

    int-to-byte v4, v10

    .line 428
    .local v4, "high":B
    and-int/lit16 v10, v2, 0xff

    shr-int/lit8 v10, v10, 0x0

    int-to-byte v7, v10

    .line 429
    .local v7, "low":B
    mul-int/lit8 v10, v5, 0x2

    aput-byte v4, v1, v10

    .line 430
    mul-int/lit8 v10, v5, 0x2

    add-int/lit8 v10, v10, 0x1

    aput-byte v7, v1, v10

    .line 424
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 432
    .end local v2    # "c":C
    .end local v4    # "high":B
    .end local v7    # "low":B
    :cond_0
    const-string v10, " ["

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 433
    array-length v10, v1

    if-lez v10, :cond_1

    .line 434
    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    invoke-static {v1, v10, v11, v12}, Lorg/apache/poi/util/HexDump;->dump([BJI)Ljava/lang/String;

    move-result-object v3

    .line 435
    .local v3, "hex":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 437
    .end local v3    # "hex":Ljava/lang/String;
    :cond_1
    const-string v10, "]"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 451
    .end local v1    # "bytes":[B
    .end local v5    # "i":I
    .end local v6    # "l":I
    .end local v8    # "s":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/Object;
    :cond_2
    :goto_1
    const/16 v10, 0x5d

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 452
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 439
    .restart local v9    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v10, v9, [B

    if-eqz v10, :cond_4

    .line 441
    check-cast v9, [B

    .end local v9    # "value":Ljava/lang/Object;
    move-object v1, v9

    check-cast v1, [B

    .line 442
    .restart local v1    # "bytes":[B
    array-length v10, v1

    if-lez v10, :cond_2

    .line 443
    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    invoke-static {v1, v10, v11, v12}, Lorg/apache/poi/util/HexDump;->dump([BJI)Ljava/lang/String;

    move-result-object v3

    .line 444
    .restart local v3    # "hex":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 449
    .end local v1    # "bytes":[B
    .end local v3    # "hex":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method
