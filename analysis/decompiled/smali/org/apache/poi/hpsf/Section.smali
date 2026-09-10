.class public Lorg/apache/poi/hpsf/Section;
.super Ljava/lang/Object;
.source "Section.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hpsf/Section$PropertyListEntry;
    }
.end annotation


# instance fields
.field protected dictionary:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected formatID:Lorg/apache/poi/hpsf/ClassID;

.field protected offset:J

.field protected properties:[Lorg/apache/poi/hpsf/Property;

.field protected size:I

.field private wasNull:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 26
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 156
    move/from16 v15, p2

    .line 161
    .local v15, "o1":I
    new-instance v4, Lorg/apache/poi/hpsf/ClassID;

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v15}, Lorg/apache/poi/hpsf/ClassID;-><init>([BI)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/poi/hpsf/Section;->formatID:Lorg/apache/poi/hpsf/ClassID;

    .line 162
    add-int/lit8 v15, v15, 0x10

    .line 168
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/apache/poi/hpsf/Section;->offset:J

    .line 169
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/poi/hpsf/Section;->offset:J

    long-to-int v15, v4

    .line 174
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v4

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lorg/apache/poi/hpsf/Section;->size:I

    .line 175
    add-int/lit8 v15, v15, 0x4

    .line 180
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v4

    long-to-int v0, v4

    move/from16 v20, v0

    .line 181
    .local v20, "propertyCount":I
    add-int/lit8 v15, v15, 0x4

    .line 207
    move/from16 v0, v20

    new-array v4, v0, [Lorg/apache/poi/hpsf/Property;

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/poi/hpsf/Section;->properties:[Lorg/apache/poi/hpsf/Property;

    .line 210
    move/from16 v16, v15

    .line 211
    .local v16, "pass1Offset":I
    new-instance v21, Ljava/util/ArrayList;

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 213
    .local v21, "propertyList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hpsf/Section$PropertyListEntry;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/poi/hpsf/Section;->properties:[Lorg/apache/poi/hpsf/Property;

    array-length v4, v4

    if-ge v10, v4, :cond_0

    .line 215
    new-instance v17, Lorg/apache/poi/hpsf/Section$PropertyListEntry;

    invoke-direct/range {v17 .. v17}, Lorg/apache/poi/hpsf/Section$PropertyListEntry;-><init>()V

    .line 218
    .local v17, "ple":Lorg/apache/poi/hpsf/Section$PropertyListEntry;
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v4

    long-to-int v4, v4

    move-object/from16 v0, v17

    iput v4, v0, Lorg/apache/poi/hpsf/Section$PropertyListEntry;->id:I

    .line 219
    add-int/lit8 v16, v16, 0x4

    .line 222
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v4

    long-to-int v4, v4

    move-object/from16 v0, v17

    iput v4, v0, Lorg/apache/poi/hpsf/Section$PropertyListEntry;->offset:I

    .line 223
    add-int/lit8 v16, v16, 0x4

    .line 226
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 230
    .end local v17    # "ple":Lorg/apache/poi/hpsf/Section$PropertyListEntry;
    :cond_0
    invoke-static/range {v21 .. v21}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 233
    const/4 v10, 0x0

    :goto_1
    add-int/lit8 v4, v20, -0x1

    if-ge v10, v4, :cond_1

    .line 235
    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/poi/hpsf/Section$PropertyListEntry;

    .line 236
    .local v18, "ple1":Lorg/apache/poi/hpsf/Section$PropertyListEntry;
    add-int/lit8 v4, v10, 0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/poi/hpsf/Section$PropertyListEntry;

    .line 237
    .local v19, "ple2":Lorg/apache/poi/hpsf/Section$PropertyListEntry;
    move-object/from16 v0, v19

    iget v4, v0, Lorg/apache/poi/hpsf/Section$PropertyListEntry;->offset:I

    move-object/from16 v0, v18

    iget v5, v0, Lorg/apache/poi/hpsf/Section$PropertyListEntry;->offset:I

    sub-int/2addr v4, v5

    move-object/from16 v0, v18

    iput v4, v0, Lorg/apache/poi/hpsf/Section$PropertyListEntry;->length:I

    .line 233
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 239
    .end local v18    # "ple1":Lorg/apache/poi/hpsf/Section$PropertyListEntry;
    .end local v19    # "ple2":Lorg/apache/poi/hpsf/Section$PropertyListEntry;
    :cond_1
    if-lez v20, :cond_2

    .line 241
    add-int/lit8 v4, v20, -0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/poi/hpsf/Section$PropertyListEntry;

    .line 242
    .restart local v17    # "ple":Lorg/apache/poi/hpsf/Section$PropertyListEntry;
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/poi/hpsf/Section;->size:I

    move-object/from16 v0, v17

    iget v5, v0, Lorg/apache/poi/hpsf/Section$PropertyListEntry;->offset:I

    sub-int/2addr v4, v5

    move-object/from16 v0, v17

    iput v4, v0, Lorg/apache/poi/hpsf/Section$PropertyListEntry;->length:I

    .line 246
    .end local v17    # "ple":Lorg/apache/poi/hpsf/Section$PropertyListEntry;
    :cond_2
    const/4 v9, -0x1

    .line 247
    .local v9, "codepage":I
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 248
    .local v11, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hpsf/Section$PropertyListEntry;>;"
    :cond_3
    :goto_2
    const/4 v4, -0x1

    if-ne v9, v4, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 250
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/poi/hpsf/Section$PropertyListEntry;

    .line 253
    .restart local v17    # "ple":Lorg/apache/poi/hpsf/Section$PropertyListEntry;
    move-object/from16 v0, v17

    iget v4, v0, Lorg/apache/poi/hpsf/Section$PropertyListEntry;->id:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 257
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/poi/hpsf/Section;->offset:J

    move-object/from16 v0, v17

    iget v6, v0, Lorg/apache/poi/hpsf/Section$PropertyListEntry;->offset:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    long-to-int v14, v4

    .line 258
    .local v14, "o":I
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v22

    .line 259
    .local v22, "type":J
    add-int/lit8 v14, v14, 0x4

    .line 261
    const-wide/16 v4, 0x2

    cmp-long v4, v22, v4

    if-eqz v4, :cond_4

    .line 262
    new-instance v4, Lorg/apache/poi/hpsf/HPSFRuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Value type of property ID 1 is not VT_I2 but "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/poi/hpsf/HPSFRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 267
    :cond_4
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v9

    .line 268
    goto :goto_2

    .line 273
    .end local v14    # "o":I
    .end local v17    # "ple":Lorg/apache/poi/hpsf/Section$PropertyListEntry;
    .end local v22    # "type":J
    :cond_5
    const/4 v12, 0x0

    .line 274
    .local v12, "i1":I
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 276
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/poi/hpsf/Section$PropertyListEntry;

    .line 277
    .restart local v17    # "ple":Lorg/apache/poi/hpsf/Section$PropertyListEntry;
    new-instance v2, Lorg/apache/poi/hpsf/Property;

    move-object/from16 v0, v17

    iget v4, v0, Lorg/apache/poi/hpsf/Section$PropertyListEntry;->id:I

    int-to-long v3, v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/poi/hpsf/Section;->offset:J

    move-object/from16 v0, v17

    iget v5, v0, Lorg/apache/poi/hpsf/Section$PropertyListEntry;->offset:I

    int-to-long v0, v5

    move-wide/from16 v24, v0

    add-long v6, v6, v24

    move-object/from16 v0, v17

    iget v8, v0, Lorg/apache/poi/hpsf/Section$PropertyListEntry;->length:I

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v9}, Lorg/apache/poi/hpsf/Property;-><init>(J[BJII)V

    .line 280
    .local v2, "p":Lorg/apache/poi/hpsf/Property;
    invoke-virtual {v2}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_6

    .line 281
    new-instance v3, Lorg/apache/poi/hpsf/Property;

    invoke-virtual {v2}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v4

    invoke-virtual {v2}, Lorg/apache/poi/hpsf/Property;->getType()J

    move-result-wide v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lorg/apache/poi/hpsf/Property;-><init>(JJLjava/lang/Object;)V

    .end local v2    # "p":Lorg/apache/poi/hpsf/Property;
    .local v3, "p":Lorg/apache/poi/hpsf/Property;
    move-object v2, v3

    .line 282
    .end local v3    # "p":Lorg/apache/poi/hpsf/Property;
    .restart local v2    # "p":Lorg/apache/poi/hpsf/Property;
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/poi/hpsf/Section;->properties:[Lorg/apache/poi/hpsf/Property;

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "i1":I
    .local v13, "i1":I
    aput-object v2, v4, v12

    move v12, v13

    .line 283
    .end local v13    # "i1":I
    .restart local v12    # "i1":I
    goto :goto_3

    .line 288
    .end local v2    # "p":Lorg/apache/poi/hpsf/Property;
    .end local v17    # "ple":Lorg/apache/poi/hpsf/Section$PropertyListEntry;
    :cond_7
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lorg/apache/poi/hpsf/Section;->getProperty(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/poi/hpsf/Section;->dictionary:Ljava/util/Map;

    .line 289
    return-void
.end method

.method private remove([Lorg/apache/poi/hpsf/Property;I)[Lorg/apache/poi/hpsf/Property;
    .locals 3
    .param p1, "pa"    # [Lorg/apache/poi/hpsf/Property;
    .param p2, "i"    # I

    .prologue
    const/4 v2, 0x0

    .line 566
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    new-array v0, v1, [Lorg/apache/poi/hpsf/Property;

    .line 567
    .local v0, "h":[Lorg/apache/poi/hpsf/Property;
    if-lez p2, :cond_0

    .line 568
    invoke-static {p1, v2, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 569
    :cond_0
    add-int/lit8 v1, p2, 0x1

    array-length v2, v0

    sub-int/2addr v2, p2

    invoke-static {p1, v1, v0, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 570
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 13
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 487
    if-eqz p1, :cond_0

    instance-of v9, p1, Lorg/apache/poi/hpsf/Section;

    if-nez v9, :cond_1

    .line 488
    :cond_0
    const/4 v9, 0x0

    .line 551
    :goto_0
    return v9

    :cond_1
    move-object v8, p1

    .line 489
    check-cast v8, Lorg/apache/poi/hpsf/Section;

    .line 490
    .local v8, "s":Lorg/apache/poi/hpsf/Section;
    invoke-virtual {v8}, Lorg/apache/poi/hpsf/Section;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v9

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 491
    const/4 v9, 0x0

    goto :goto_0

    .line 495
    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getProperties()[Lorg/apache/poi/hpsf/Property;

    move-result-object v9

    array-length v9, v9

    new-array v6, v9, [Lorg/apache/poi/hpsf/Property;

    .line 496
    .local v6, "pa1":[Lorg/apache/poi/hpsf/Property;
    invoke-virtual {v8}, Lorg/apache/poi/hpsf/Section;->getProperties()[Lorg/apache/poi/hpsf/Property;

    move-result-object v9

    array-length v9, v9

    new-array v7, v9, [Lorg/apache/poi/hpsf/Property;

    .line 497
    .local v7, "pa2":[Lorg/apache/poi/hpsf/Property;
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getProperties()[Lorg/apache/poi/hpsf/Property;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    array-length v12, v6

    invoke-static {v9, v10, v6, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 498
    invoke-virtual {v8}, Lorg/apache/poi/hpsf/Section;->getProperties()[Lorg/apache/poi/hpsf/Property;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    array-length v12, v7

    invoke-static {v9, v10, v7, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 502
    const/4 v4, 0x0

    .line 503
    .local v4, "p10":Lorg/apache/poi/hpsf/Property;
    const/4 v5, 0x0

    .line 504
    .local v5, "p20":Lorg/apache/poi/hpsf/Property;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v9, v6

    if-ge v1, v9, :cond_5

    .line 506
    aget-object v9, v6, v1

    invoke-virtual {v9}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v2

    .line 507
    .local v2, "id":J
    const-wide/16 v10, 0x0

    cmp-long v9, v2, v10

    if-nez v9, :cond_3

    .line 509
    aget-object v4, v6, v1

    .line 510
    invoke-direct {p0, v6, v1}, Lorg/apache/poi/hpsf/Section;->remove([Lorg/apache/poi/hpsf/Property;I)[Lorg/apache/poi/hpsf/Property;

    move-result-object v6

    .line 511
    add-int/lit8 v1, v1, -0x1

    .line 513
    :cond_3
    const-wide/16 v10, 0x1

    cmp-long v9, v2, v10

    if-nez v9, :cond_4

    .line 516
    invoke-direct {p0, v6, v1}, Lorg/apache/poi/hpsf/Section;->remove([Lorg/apache/poi/hpsf/Property;I)[Lorg/apache/poi/hpsf/Property;

    move-result-object v6

    .line 517
    add-int/lit8 v1, v1, -0x1

    .line 504
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 520
    .end local v2    # "id":J
    :cond_5
    const/4 v1, 0x0

    :goto_2
    array-length v9, v7

    if-ge v1, v9, :cond_8

    .line 522
    aget-object v9, v7, v1

    invoke-virtual {v9}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v2

    .line 523
    .restart local v2    # "id":J
    const-wide/16 v10, 0x0

    cmp-long v9, v2, v10

    if-nez v9, :cond_6

    .line 525
    aget-object v5, v7, v1

    .line 526
    invoke-direct {p0, v7, v1}, Lorg/apache/poi/hpsf/Section;->remove([Lorg/apache/poi/hpsf/Property;I)[Lorg/apache/poi/hpsf/Property;

    move-result-object v7

    .line 527
    add-int/lit8 v1, v1, -0x1

    .line 529
    :cond_6
    const-wide/16 v10, 0x1

    cmp-long v9, v2, v10

    if-nez v9, :cond_7

    .line 532
    invoke-direct {p0, v7, v1}, Lorg/apache/poi/hpsf/Section;->remove([Lorg/apache/poi/hpsf/Property;I)[Lorg/apache/poi/hpsf/Property;

    move-result-object v7

    .line 533
    add-int/lit8 v1, v1, -0x1

    .line 520
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 539
    .end local v2    # "id":J
    :cond_8
    array-length v9, v6

    array-length v10, v7

    if-eq v9, v10, :cond_9

    .line 540
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 543
    :cond_9
    const/4 v0, 0x1

    .line 544
    .local v0, "dictionaryEqual":Z
    if-eqz v4, :cond_b

    if-eqz v5, :cond_b

    .line 545
    invoke-virtual {v4}, Lorg/apache/poi/hpsf/Property;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5}, Lorg/apache/poi/hpsf/Property;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 548
    :cond_a
    :goto_3
    if-eqz v0, :cond_d

    .line 549
    invoke-static {v6, v7}, Lorg/apache/poi/hpsf/Util;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v9

    goto/16 :goto_0

    .line 546
    :cond_b
    if-nez v4, :cond_c

    if-eqz v5, :cond_a

    .line 547
    :cond_c
    const/4 v0, 0x0

    goto :goto_3

    .line 551
    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method public getCodepage()I
    .locals 4

    .prologue
    .line 645
    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/apache/poi/hpsf/Section;->getProperty(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 647
    .local v0, "codepage":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 648
    const/4 v1, -0x1

    .line 650
    :goto_0
    return v1

    .line 649
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 650
    .local v1, "cp":I
    goto :goto_0
.end method

.method public getDictionary()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 633
    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->dictionary:Ljava/util/Map;

    return-object v0
.end method

.method public getFormatID()Lorg/apache/poi/hpsf/ClassID;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->formatID:Lorg/apache/poi/hpsf/ClassID;

    return-object v0
.end method

.method public getOffset()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lorg/apache/poi/hpsf/Section;->offset:J

    return-wide v0
.end method

.method public getPIDString(J)Ljava/lang/String;
    .locals 3
    .param p1, "pid"    # J

    .prologue
    .line 449
    const/4 v0, 0x0

    .line 450
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/poi/hpsf/Section;->dictionary:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 451
    iget-object v1, p0, Lorg/apache/poi/hpsf/Section;->dictionary:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "s":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 452
    .restart local v0    # "s":Ljava/lang/String;
    :cond_0
    if-nez v0, :cond_1

    .line 453
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hpsf/ClassID;->getBytes()[B

    move-result-object v1

    invoke-static {v1, p1, p2}, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->getPIDString([BJ)Ljava/lang/String;

    move-result-object v0

    .line 454
    :cond_1
    if-nez v0, :cond_2

    .line 455
    const-string v0, "[undefined]"

    .line 456
    :cond_2
    return-object v0
.end method

.method public getProperties()[Lorg/apache/poi/hpsf/Property;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->properties:[Lorg/apache/poi/hpsf/Property;

    return-object v0
.end method

.method public getProperty(J)Ljava/lang/Object;
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 350
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/poi/hpsf/Section;->wasNull:Z

    .line 351
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hpsf/Section;->properties:[Lorg/apache/poi/hpsf/Property;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 352
    iget-object v1, p0, Lorg/apache/poi/hpsf/Section;->properties:[Lorg/apache/poi/hpsf/Property;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v2

    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    .line 353
    iget-object v1, p0, Lorg/apache/poi/hpsf/Section;->properties:[Lorg/apache/poi/hpsf/Property;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/apache/poi/hpsf/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 355
    :goto_1
    return-object v1

    .line 351
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 354
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/poi/hpsf/Section;->wasNull:Z

    .line 355
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected getPropertyBooleanValue(I)Z
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 400
    int-to-long v2, p1

    invoke-virtual {p0, v2, v3}, Lorg/apache/poi/hpsf/Section;->getProperty(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 401
    .local v0, "b":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 402
    const/4 v1, 0x0

    .line 404
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public getPropertyCount()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->properties:[Lorg/apache/poi/hpsf/Property;

    array-length v0, v0

    return v0
.end method

.method protected getPropertyIntValue(J)I
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 374
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hpsf/Section;->getProperty(J)Ljava/lang/Object;

    move-result-object v1

    .line 375
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 376
    const/4 v2, 0x0

    .line 382
    :goto_0
    return v2

    .line 377
    :cond_0
    instance-of v2, v1, Ljava/lang/Long;

    if-nez v2, :cond_1

    instance-of v2, v1, Ljava/lang/Integer;

    if-nez v2, :cond_1

    .line 378
    new-instance v2, Lorg/apache/poi/hpsf/HPSFRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This property is not an integer type, but "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/hpsf/HPSFRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object v0, v1

    .line 381
    check-cast v0, Ljava/lang/Number;

    .line 382
    .local v0, "i":Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lorg/apache/poi/hpsf/Section;->size:I

    return v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    .line 580
    const-wide/16 v0, 0x0

    .line 581
    .local v0, "hashCode":J
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/hpsf/ClassID;->hashCode()I

    move-result v5

    int-to-long v6, v5

    add-long/2addr v0, v6

    .line 582
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getProperties()[Lorg/apache/poi/hpsf/Property;

    move-result-object v3

    .line 583
    .local v3, "pa":[Lorg/apache/poi/hpsf/Property;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_0

    .line 584
    aget-object v5, v3, v2

    invoke-virtual {v5}, Lorg/apache/poi/hpsf/Property;->hashCode()I

    move-result v5

    int-to-long v6, v5

    add-long/2addr v0, v6

    .line 583
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 585
    :cond_0
    const-wide v6, 0xffffffffL

    and-long/2addr v6, v0

    long-to-int v4, v6

    .line 586
    .local v4, "returnHashCode":I
    return v4
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x5d

    .line 596
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 597
    .local v0, "b":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getProperties()[Lorg/apache/poi/hpsf/Property;

    move-result-object v2

    .line 598
    .local v2, "pa":[Lorg/apache/poi/hpsf/Property;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 599
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 600
    const-string v3, "formatID: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 601
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 602
    const-string v3, ", offset: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 603
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getOffset()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 604
    const-string v3, ", propertyCount: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 605
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getPropertyCount()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 606
    const-string v3, ", size: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 607
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getSize()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 608
    const-string v3, ", properties: [\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 609
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 611
    aget-object v3, v2, v1

    invoke-virtual {v3}, Lorg/apache/poi/hpsf/Property;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 612
    const-string v3, ",\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 609
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 614
    :cond_0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 615
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 616
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public wasNull()Z
    .locals 1

    .prologue
    .line 432
    iget-boolean v0, p0, Lorg/apache/poi/hpsf/Section;->wasNull:Z

    return v0
.end method
