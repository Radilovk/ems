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
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
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

    .prologue
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

    .prologue
    .line 279
    invoke-static {p0}, Lorg/apache/poi/util/CodePageUtil;->codepageToEncoding(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isLogUnsupportedTypes()Z
    .locals 1

    .prologue
    .line 76
    sget-boolean v0, Lorg/apache/poi/hpsf/VariantSupport;->logUnsupportedTypes:Z

    return v0
.end method

.method public static read([BIIJI)Ljava/lang/Object;
    .locals 15
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

    .prologue
    .line 162
    new-instance v8, Lorg/apache/poi/hpsf/TypedPropertyValue;

    move-wide/from16 v0, p3

    long-to-int v11, v0

    const/4 v12, 0x0

    invoke-direct {v8, v11, v12}, Lorg/apache/poi/hpsf/TypedPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 167
    .local v8, "typedPropertyValue":Lorg/apache/poi/hpsf/TypedPropertyValue;
    :try_start_0
    move/from16 v0, p1

    invoke-virtual {v8, p0, v0}, Lorg/apache/poi/hpsf/TypedPropertyValue;->readValue([BI)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 177
    .local v9, "unpadded":I
    move-wide/from16 v0, p3

    long-to-int v11, v0

    sparse-switch v11, :sswitch_data_0

    .line 255
    new-array v10, v9, [B

    .line 256
    .local v10, "v":[B
    const/4 v11, 0x0

    move/from16 v0, p1

    invoke-static {p0, v0, v10, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    new-instance v11, Lorg/apache/poi/hpsf/ReadingNotSupportedException;

    move-wide/from16 v0, p3

    invoke-direct {v11, v0, v1, v10}, Lorg/apache/poi/hpsf/ReadingNotSupportedException;-><init>(JLjava/lang/Object;)V

    throw v11

    .line 169
    .end local v9    # "unpadded":I
    .end local v10    # "v":[B
    :catch_0
    move-exception v4

    .line 171
    .local v4, "exc":Ljava/lang/UnsupportedOperationException;
    array-length v11, p0

    sub-int v11, v11, p1

    move/from16 v0, p2

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 172
    .local v6, "propLength":I
    new-array v10, v6, [B

    .line 173
    .restart local v10    # "v":[B
    const/4 v11, 0x0

    move/from16 v0, p1

    invoke-static {p0, v0, v10, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    new-instance v11, Lorg/apache/poi/hpsf/ReadingNotSupportedException;

    move-wide/from16 v0, p3

    invoke-direct {v11, v0, v1, v10}, Lorg/apache/poi/hpsf/ReadingNotSupportedException;-><init>(JLjava/lang/Object;)V

    throw v11

    .line 189
    .end local v4    # "exc":Ljava/lang/UnsupportedOperationException;
    .end local v6    # "propLength":I
    .end local v10    # "v":[B
    .restart local v9    # "unpadded":I
    :sswitch_0
    invoke-virtual {v8}, Lorg/apache/poi/hpsf/TypedPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v11

    .line 246
    :goto_0
    return-object v11

    .line 197
    :sswitch_1
    invoke-virtual {v8}, Lorg/apache/poi/hpsf/TypedPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Short;

    invoke-virtual {v11}, Ljava/lang/Short;->intValue()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_0

    .line 202
    :sswitch_2
    invoke-virtual {v8}, Lorg/apache/poi/hpsf/TypedPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/hpsf/Filetime;

    .line 203
    .local v5, "filetime":Lorg/apache/poi/hpsf/Filetime;
    invoke-virtual {v5}, Lorg/apache/poi/hpsf/Filetime;->getHigh()J

    move-result-wide v12

    long-to-int v11, v12

    invoke-virtual {v5}, Lorg/apache/poi/hpsf/Filetime;->getLow()J

    move-result-wide v12

    long-to-int v12, v12

    invoke-static {v11, v12}, Lorg/apache/poi/hpsf/Util;->filetimeToDate(II)Ljava/util/Date;

    move-result-object v11

    goto :goto_0

    .line 208
    .end local v5    # "filetime":Lorg/apache/poi/hpsf/Filetime;
    :sswitch_3
    invoke-virtual {v8}, Lorg/apache/poi/hpsf/TypedPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/hpsf/CodePageString;

    .line 210
    .local v7, "string":Lorg/apache/poi/hpsf/CodePageString;
    move/from16 v0, p5

    invoke-virtual {v7, v0}, Lorg/apache/poi/hpsf/CodePageString;->getJavaValue(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 214
    .end local v7    # "string":Lorg/apache/poi/hpsf/CodePageString;
    :sswitch_4
    invoke-virtual {v8}, Lorg/apache/poi/hpsf/TypedPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/hpsf/UnicodeString;

    .line 216
    .local v7, "string":Lorg/apache/poi/hpsf/UnicodeString;
    invoke-virtual {v7}, Lorg/apache/poi/hpsf/UnicodeString;->toJavaString()Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 238
    .end local v7    # "string":Lorg/apache/poi/hpsf/UnicodeString;
    :sswitch_5
    invoke-virtual {v8}, Lorg/apache/poi/hpsf/TypedPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hpsf/ClipboardData;

    .line 240
    .local v3, "clipboardData":Lorg/apache/poi/hpsf/ClipboardData;
    invoke-virtual {v3}, Lorg/apache/poi/hpsf/ClipboardData;->toByteArray()[B

    move-result-object v11

    goto :goto_0

    .line 245
    .end local v3    # "clipboardData":Lorg/apache/poi/hpsf/ClipboardData;
    :sswitch_6
    invoke-virtual {v8}, Lorg/apache/poi/hpsf/TypedPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hpsf/VariantBool;

    .line 246
    .local v2, "bool":Lorg/apache/poi/hpsf/VariantBool;
    invoke-virtual {v2}, Lorg/apache/poi/hpsf/VariantBool;->getValue()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    goto :goto_0

    .line 177
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0x5 -> :sswitch_0
        0xb -> :sswitch_6
        0x14 -> :sswitch_0
        0x1e -> :sswitch_3
        0x1f -> :sswitch_4
        0x40 -> :sswitch_2
        0x47 -> :sswitch_5
    .end sparse-switch
.end method

.method public static setLogUnsupportedTypes(Z)V
    .locals 0
    .param p0, "logUnsupportedTypes"    # Z

    .prologue
    .line 64
    sput-boolean p0, Lorg/apache/poi/hpsf/VariantSupport;->logUnsupportedTypes:Z

    .line 65
    return-void
.end method

.method public static write(Ljava/io/OutputStream;JLjava/lang/Object;I)I
    .locals 23
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

    .prologue
    .line 306
    const/4 v12, 0x0

    .line 307
    .local v12, "length":I
    move-wide/from16 v0, p1

    long-to-int v0, v0

    move/from16 v17, v0

    sparse-switch v17, :sswitch_data_0

    .line 407
    move-object/from16 v0, p3

    instance-of v0, v0, [B

    move/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v17, p3

    .line 409
    check-cast v17, [B

    move-object/from16 v4, v17

    check-cast v4, [B

    .line 410
    .local v4, "b":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 411
    array-length v12, v4

    .line 412
    new-instance v17, Lorg/apache/poi/hpsf/WritingNotSupportedException;

    move-object/from16 v0, v17

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/hpsf/WritingNotSupportedException;-><init>(JLjava/lang/Object;)V

    invoke-static/range {v17 .. v17}, Lorg/apache/poi/hpsf/VariantSupport;->writeUnsupportedTypeMessage(Lorg/apache/poi/hpsf/UnsupportedVariantTypeException;)V

    .line 422
    .end local v4    # "b":[B
    .end local p3    # "value":Ljava/lang/Object;
    :goto_0
    and-int/lit8 v17, v12, 0x3

    if-eqz v17, :cond_4

    .line 424
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 425
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 311
    .restart local p3    # "value":Ljava/lang/Object;
    :sswitch_0
    check-cast p3, Ljava/lang/Boolean;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 313
    const/16 v17, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 314
    const/16 v17, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 321
    :goto_1
    add-int/lit8 v12, v12, 0x2

    .line 322
    goto :goto_0

    .line 318
    :cond_0
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 319
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 326
    .restart local p3    # "value":Ljava/lang/Object;
    :sswitch_1
    new-instance v5, Lorg/apache/poi/hpsf/CodePageString;

    check-cast p3, Ljava/lang/String;

    .end local p3    # "value":Ljava/lang/Object;
    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {v5, v0, v1}, Lorg/apache/poi/hpsf/CodePageString;-><init>(Ljava/lang/String;I)V

    .line 328
    .local v5, "codePageString":Lorg/apache/poi/hpsf/CodePageString;
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lorg/apache/poi/hpsf/CodePageString;->write(Ljava/io/OutputStream;)I

    move-result v17

    add-int v12, v12, v17

    .line 329
    goto :goto_0

    .end local v5    # "codePageString":Lorg/apache/poi/hpsf/CodePageString;
    .restart local p3    # "value":Ljava/lang/Object;
    :sswitch_2
    move-object/from16 v17, p3

    .line 333
    check-cast v17, Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v15, v17, 0x1

    .line 334
    .local v15, "nrOfChars":I
    int-to-long v0, v15

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lorg/apache/poi/hpsf/TypeWriter;->writeUIntToStream(Ljava/io/OutputStream;J)I

    move-result v17

    add-int v12, v12, v17

    .line 335
    check-cast p3, Ljava/lang/String;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v16

    .line 336
    .local v16, "s":[C
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v11, v0, :cond_1

    .line 338
    aget-char v17, v16, v11

    const v18, 0xff00

    and-int v17, v17, v18

    shr-int/lit8 v9, v17, 0x8

    .line 339
    .local v9, "high":I
    aget-char v17, v16, v11

    move/from16 v0, v17

    and-int/lit16 v13, v0, 0xff

    .line 340
    .local v13, "low":I
    int-to-byte v10, v9

    .line 341
    .local v10, "highb":B
    int-to-byte v14, v13

    .line 342
    .local v14, "lowb":B
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/io/OutputStream;->write(I)V

    .line 343
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljava/io/OutputStream;->write(I)V

    .line 344
    add-int/lit8 v12, v12, 0x2

    .line 336
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 347
    .end local v9    # "high":I
    .end local v10    # "highb":B
    .end local v13    # "low":I
    .end local v14    # "lowb":B
    :cond_1
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 348
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 349
    add-int/lit8 v12, v12, 0x2

    .line 350
    goto/16 :goto_0

    .line 354
    .end local v11    # "i":I
    .end local v15    # "nrOfChars":I
    .end local v16    # "s":[C
    .restart local p3    # "value":Ljava/lang/Object;
    :sswitch_3
    check-cast p3, [B

    .end local p3    # "value":Ljava/lang/Object;
    move-object/from16 v4, p3

    check-cast v4, [B

    .line 355
    .restart local v4    # "b":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 356
    array-length v12, v4

    .line 357
    goto/16 :goto_0

    .line 361
    .end local v4    # "b":[B
    .restart local p3    # "value":Ljava/lang/Object;
    :sswitch_4
    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lorg/apache/poi/hpsf/TypeWriter;->writeUIntToStream(Ljava/io/OutputStream;J)I

    move-result v17

    add-int v12, v12, v17

    .line 362
    goto/16 :goto_0

    .line 366
    :sswitch_5
    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->shortValue()S

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/apache/poi/hpsf/TypeWriter;->writeToStream(Ljava/io/OutputStream;S)I

    move-result v17

    add-int v12, v12, v17

    .line 368
    goto/16 :goto_0

    .line 372
    .restart local p3    # "value":Ljava/lang/Object;
    :sswitch_6
    move-object/from16 v0, p3

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v17, v0

    if-nez v17, :cond_2

    .line 374
    new-instance v17, Ljava/lang/ClassCastException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Could not cast an object to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-class v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 379
    :cond_2
    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/apache/poi/hpsf/TypeWriter;->writeToStream(Ljava/io/OutputStream;I)I

    move-result v17

    add-int v12, v12, v17

    .line 381
    goto/16 :goto_0

    .line 385
    .restart local p3    # "value":Ljava/lang/Object;
    :sswitch_7
    check-cast p3, Ljava/lang/Long;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lorg/apache/poi/hpsf/TypeWriter;->writeToStream(Ljava/io/OutputStream;J)I

    move-result v17

    add-int v12, v12, v17

    .line 386
    goto/16 :goto_0

    .line 390
    .restart local p3    # "value":Ljava/lang/Object;
    :sswitch_8
    check-cast p3, Ljava/lang/Double;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lorg/apache/poi/hpsf/TypeWriter;->writeToStream(Ljava/io/OutputStream;D)I

    move-result v17

    add-int v12, v12, v17

    .line 392
    goto/16 :goto_0

    .line 396
    .restart local p3    # "value":Ljava/lang/Object;
    :sswitch_9
    check-cast p3, Ljava/util/Date;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-static/range {p3 .. p3}, Lorg/apache/poi/hpsf/Util;->dateToFileTime(Ljava/util/Date;)J

    move-result-wide v6

    .line 397
    .local v6, "filetime":J
    const/16 v17, 0x20

    shr-long v18, v6, v17

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v9, v0

    .line 398
    .restart local v9    # "high":I
    const-wide v18, 0xffffffffL

    and-long v18, v18, v6

    move-wide/from16 v0, v18

    long-to-int v13, v0

    .line 399
    .restart local v13    # "low":I
    new-instance v8, Lorg/apache/poi/hpsf/Filetime;

    invoke-direct {v8, v13, v9}, Lorg/apache/poi/hpsf/Filetime;-><init>(II)V

    .line 400
    .local v8, "filetimeValue":Lorg/apache/poi/hpsf/Filetime;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Lorg/apache/poi/hpsf/Filetime;->write(Ljava/io/OutputStream;)I

    move-result v17

    add-int v12, v12, v17

    .line 401
    goto/16 :goto_0

    .line 416
    .end local v6    # "filetime":J
    .end local v8    # "filetimeValue":Lorg/apache/poi/hpsf/Filetime;
    .end local v9    # "high":I
    .end local v13    # "low":I
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_3
    new-instance v17, Lorg/apache/poi/hpsf/WritingNotSupportedException;

    move-object/from16 v0, v17

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/hpsf/WritingNotSupportedException;-><init>(JLjava/lang/Object;)V

    throw v17

    .line 428
    .end local p3    # "value":Ljava/lang/Object;
    :cond_4
    return v12

    .line 307
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x2 -> :sswitch_5
        0x3 -> :sswitch_6
        0x5 -> :sswitch_8
        0xb -> :sswitch_0
        0x14 -> :sswitch_7
        0x1e -> :sswitch_1
        0x1f -> :sswitch_2
        0x40 -> :sswitch_9
        0x47 -> :sswitch_3
    .end sparse-switch
.end method

.method protected static writeUnsupportedTypeMessage(Lorg/apache/poi/hpsf/UnsupportedVariantTypeException;)V
    .locals 4
    .param p0, "ex"    # Lorg/apache/poi/hpsf/UnsupportedVariantTypeException;

    .prologue
    .line 97
    invoke-static {}, Lorg/apache/poi/hpsf/VariantSupport;->isLogUnsupportedTypes()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    sget-object v1, Lorg/apache/poi/hpsf/VariantSupport;->unsupportedMessage:Ljava/util/List;

    if-nez v1, :cond_0

    .line 100
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sput-object v1, Lorg/apache/poi/hpsf/VariantSupport;->unsupportedMessage:Ljava/util/List;

    .line 101
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/UnsupportedVariantTypeException;->getVariantType()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

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
    .locals 2
    .param p1, "variantType"    # I

    .prologue
    .line 133
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lorg/apache/poi/hpsf/VariantSupport;->SUPPORTED_TYPES:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 134
    sget-object v1, Lorg/apache/poi/hpsf/VariantSupport;->SUPPORTED_TYPES:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 135
    const/4 v1, 0x1

    .line 136
    :goto_1
    return v1

    .line 133
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
