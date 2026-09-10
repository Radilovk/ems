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
            "Ljava/util/Map<",
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

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 25
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 155
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 156
    move/from16 v1, p2

    .line 161
    .local v1, "o1":I
    new-instance v2, Lorg/apache/poi/hpsf/ClassID;

    invoke-direct {v2, v9, v1}, Lorg/apache/poi/hpsf/ClassID;-><init>([BI)V

    iput-object v2, v0, Lorg/apache/poi/hpsf/Section;->formatID:Lorg/apache/poi/hpsf/ClassID;

    .line 162
    add-int/lit8 v1, v1, 0x10

    .line 168
    invoke-static {v9, v1}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/poi/hpsf/Section;->offset:J

    .line 169
    long-to-int v1, v2

    .line 174
    invoke-static {v9, v1}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v2

    long-to-int v3, v2

    iput v3, v0, Lorg/apache/poi/hpsf/Section;->size:I

    .line 175
    add-int/lit8 v1, v1, 0x4

    .line 180
    invoke-static {v9, v1}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v2

    long-to-int v10, v2

    .line 181
    .local v10, "propertyCount":I
    add-int/lit8 v11, v1, 0x4

    .line 207
    .end local v1    # "o1":I
    .local v11, "o1":I
    new-array v1, v10, [Lorg/apache/poi/hpsf/Property;

    iput-object v1, v0, Lorg/apache/poi/hpsf/Section;->properties:[Lorg/apache/poi/hpsf/Property;

    .line 210
    move v1, v11

    .line 211
    .local v1, "pass1Offset":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v10}, Ljava/util/ArrayList;-><init>(I)V

    move-object v12, v2

    .line 213
    .local v12, "propertyList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hpsf/Section$PropertyListEntry;>;"
    const/4 v2, 0x0

    move v13, v1

    .end local v1    # "pass1Offset":I
    .local v2, "i":I
    .local v13, "pass1Offset":I
    :goto_0
    iget-object v1, v0, Lorg/apache/poi/hpsf/Section;->properties:[Lorg/apache/poi/hpsf/Property;

    array-length v1, v1

    if-ge v2, v1, :cond_0

    .line 215
    new-instance v1, Lorg/apache/poi/hpsf/Section$PropertyListEntry;

    invoke-direct {v1}, Lorg/apache/poi/hpsf/Section$PropertyListEntry;-><init>()V

    .line 218
    .local v1, "ple":Lorg/apache/poi/hpsf/Section$PropertyListEntry;
    invoke-static {v9, v13}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v3

    long-to-int v4, v3

    iput v4, v1, Lorg/apache/poi/hpsf/Section$PropertyListEntry;->id:I

    .line 219
    add-int/lit8 v13, v13, 0x4

    .line 222
    invoke-static {v9, v13}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v3

    long-to-int v4, v3

    iput v4, v1, Lorg/apache/poi/hpsf/Section$PropertyListEntry;->offset:I

    .line 223
    add-int/lit8 v13, v13, 0x4

    .line 226
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 230
    .end local v1    # "ple":Lorg/apache/poi/hpsf/Section$PropertyListEntry;
    .end local v2    # "i":I
    :cond_0
    invoke-static {v12}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 233
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    add-int/lit8 v2, v10, -0x1

    if-ge v1, v2, :cond_1

    .line 235
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hpsf/Section$PropertyListEntry;

    .line 236
    .local v2, "ple1":Lorg/apache/poi/hpsf/Section$PropertyListEntry;
    add-int/lit8 v3, v1, 0x1

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hpsf/Section$PropertyListEntry;

    .line 237
    .local v3, "ple2":Lorg/apache/poi/hpsf/Section$PropertyListEntry;
    iget v4, v3, Lorg/apache/poi/hpsf/Section$PropertyListEntry;->offset:I

    iget v5, v2, Lorg/apache/poi/hpsf/Section$PropertyListEntry;->offset:I

    sub-int/2addr v4, v5

    iput v4, v2, Lorg/apache/poi/hpsf/Section$PropertyListEntry;->length:I

    .line 233
    .end local v2    # "ple1":Lorg/apache/poi/hpsf/Section$PropertyListEntry;
    .end local v3    # "ple2":Lorg/apache/poi/hpsf/Section$PropertyListEntry;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 239
    .end local v1    # "i":I
    :cond_1
    if-lez v10, :cond_2

    .line 241
    add-int/lit8 v1, v10, -0x1

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hpsf/Section$PropertyListEntry;

    .line 242
    .local v1, "ple":Lorg/apache/poi/hpsf/Section$PropertyListEntry;
    iget v2, v0, Lorg/apache/poi/hpsf/Section;->size:I

    iget v3, v1, Lorg/apache/poi/hpsf/Section$PropertyListEntry;->offset:I

    sub-int/2addr v2, v3

    iput v2, v1, Lorg/apache/poi/hpsf/Section$PropertyListEntry;->length:I

    .line 246
    .end local v1    # "ple":Lorg/apache/poi/hpsf/Section$PropertyListEntry;
    :cond_2
    const/4 v1, -0x1

    .line 247
    .local v1, "codepage":I
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v14, v1

    .line 248
    .end local v1    # "codepage":I
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hpsf/Section$PropertyListEntry;>;"
    .local v14, "codepage":I
    :cond_3
    :goto_2
    const/4 v1, -0x1

    if-ne v14, v1, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 250
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hpsf/Section$PropertyListEntry;

    .line 253
    .local v1, "ple":Lorg/apache/poi/hpsf/Section$PropertyListEntry;
    iget v3, v1, Lorg/apache/poi/hpsf/Section$PropertyListEntry;->id:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 257
    iget-wide v3, v0, Lorg/apache/poi/hpsf/Section;->offset:J

    iget v5, v1, Lorg/apache/poi/hpsf/Section$PropertyListEntry;->offset:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    long-to-int v4, v3

    .line 258
    .local v4, "o":I
    invoke-static {v9, v4}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v5

    .line 259
    .local v5, "type":J
    add-int/lit8 v4, v4, 0x4

    .line 261
    const-wide/16 v7, 0x2

    cmp-long v3, v5, v7

    if-nez v3, :cond_4

    .line 267
    invoke-static {v9, v4}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v14

    .line 268
    .end local v4    # "o":I
    .end local v5    # "type":J
    goto :goto_2

    .line 262
    .restart local v4    # "o":I
    .restart local v5    # "type":J
    :cond_4
    new-instance v3, Lorg/apache/poi/hpsf/HPSFRuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Value type of property ID 1 is not VT_I2 but "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Lorg/apache/poi/hpsf/HPSFRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 273
    .end local v1    # "ple":Lorg/apache/poi/hpsf/Section$PropertyListEntry;
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hpsf/Section$PropertyListEntry;>;"
    .end local v4    # "o":I
    .end local v5    # "type":J
    :cond_5
    const/4 v1, 0x0

    .line 274
    .local v1, "i1":I
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move/from16 v16, v1

    .end local v1    # "i1":I
    .local v15, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hpsf/Section$PropertyListEntry;>;"
    .local v16, "i1":I
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 276
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lorg/apache/poi/hpsf/Section$PropertyListEntry;

    .line 277
    .local v8, "ple":Lorg/apache/poi/hpsf/Section$PropertyListEntry;
    new-instance v17, Lorg/apache/poi/hpsf/Property;

    iget v1, v8, Lorg/apache/poi/hpsf/Section$PropertyListEntry;->id:I

    int-to-long v2, v1

    iget-wide v4, v0, Lorg/apache/poi/hpsf/Section;->offset:J

    iget v1, v8, Lorg/apache/poi/hpsf/Section$PropertyListEntry;->offset:I

    int-to-long v6, v1

    add-long v5, v4, v6

    iget v7, v8, Lorg/apache/poi/hpsf/Section$PropertyListEntry;->length:I

    move-object/from16 v1, v17

    move-object/from16 v4, p1

    move-object/from16 v18, v8

    .end local v8    # "ple":Lorg/apache/poi/hpsf/Section$PropertyListEntry;
    .local v18, "ple":Lorg/apache/poi/hpsf/Section$PropertyListEntry;
    move v8, v14

    invoke-direct/range {v1 .. v8}, Lorg/apache/poi/hpsf/Property;-><init>(J[BJII)V

    .line 280
    .local v1, "p":Lorg/apache/poi/hpsf/Property;
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_6

    .line 281
    new-instance v2, Lorg/apache/poi/hpsf/Property;

    invoke-virtual {v1}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v20

    invoke-virtual {v1}, Lorg/apache/poi/hpsf/Property;->getType()J

    move-result-wide v22

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v24}, Lorg/apache/poi/hpsf/Property;-><init>(JJLjava/lang/Object;)V

    move-object v1, v2

    .line 282
    :cond_6
    iget-object v2, v0, Lorg/apache/poi/hpsf/Section;->properties:[Lorg/apache/poi/hpsf/Property;

    add-int/lit8 v3, v16, 0x1

    .end local v16    # "i1":I
    .local v3, "i1":I
    aput-object v1, v2, v16

    .line 283
    .end local v1    # "p":Lorg/apache/poi/hpsf/Property;
    move/from16 v16, v3

    goto :goto_3

    .line 288
    .end local v3    # "i1":I
    .end local v15    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hpsf/Section$PropertyListEntry;>;"
    .end local v18    # "ple":Lorg/apache/poi/hpsf/Section$PropertyListEntry;
    .restart local v16    # "i1":I
    :cond_7
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/Section;->getProperty(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, v0, Lorg/apache/poi/hpsf/Section;->dictionary:Ljava/util/Map;

    .line 289
    return-void
.end method

.method private remove([Lorg/apache/poi/hpsf/Property;I)[Lorg/apache/poi/hpsf/Property;
    .locals 3
    .param p1, "pa"    # [Lorg/apache/poi/hpsf/Property;
    .param p2, "i"    # I

    .line 566
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [Lorg/apache/poi/hpsf/Property;

    .line 567
    .local v0, "h":[Lorg/apache/poi/hpsf/Property;
    if-lez p2, :cond_0

    .line 568
    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

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
    .locals 14
    .param p1, "o"    # Ljava/lang/Object;

    .line 487
    const/4 v0, 0x0

    if-eqz p1, :cond_d

    instance-of v1, p1, Lorg/apache/poi/hpsf/Section;

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 489
    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/apache/poi/hpsf/Section;

    .line 490
    .local v1, "s":Lorg/apache/poi/hpsf/Section;
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/Section;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 491
    return v0

    .line 495
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getProperties()[Lorg/apache/poi/hpsf/Property;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [Lorg/apache/poi/hpsf/Property;

    .line 496
    .local v2, "pa1":[Lorg/apache/poi/hpsf/Property;
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/Section;->getProperties()[Lorg/apache/poi/hpsf/Property;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [Lorg/apache/poi/hpsf/Property;

    .line 497
    .local v3, "pa2":[Lorg/apache/poi/hpsf/Property;
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getProperties()[Lorg/apache/poi/hpsf/Property;

    move-result-object v4

    array-length v5, v2

    invoke-static {v4, v0, v2, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 498
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/Section;->getProperties()[Lorg/apache/poi/hpsf/Property;

    move-result-object v4

    array-length v5, v3

    invoke-static {v4, v0, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 502
    const/4 v4, 0x0

    .line 503
    .local v4, "p10":Lorg/apache/poi/hpsf/Property;
    const/4 v5, 0x0

    .line 504
    .local v5, "p20":Lorg/apache/poi/hpsf/Property;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v2

    const-wide/16 v8, 0x1

    const-wide/16 v10, 0x0

    if-ge v6, v7, :cond_4

    .line 506
    aget-object v7, v2, v6

    invoke-virtual {v7}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v12

    .line 507
    .local v12, "id":J
    cmp-long v7, v12, v10

    if-nez v7, :cond_2

    .line 509
    aget-object v4, v2, v6

    .line 510
    invoke-direct {p0, v2, v6}, Lorg/apache/poi/hpsf/Section;->remove([Lorg/apache/poi/hpsf/Property;I)[Lorg/apache/poi/hpsf/Property;

    move-result-object v2

    .line 511
    add-int/lit8 v6, v6, -0x1

    .line 513
    :cond_2
    cmp-long v7, v12, v8

    if-nez v7, :cond_3

    .line 516
    invoke-direct {p0, v2, v6}, Lorg/apache/poi/hpsf/Section;->remove([Lorg/apache/poi/hpsf/Property;I)[Lorg/apache/poi/hpsf/Property;

    move-result-object v2

    .line 517
    add-int/lit8 v6, v6, -0x1

    .line 504
    .end local v12    # "id":J
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 520
    .end local v6    # "i":I
    :cond_4
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_1
    array-length v7, v3

    if-ge v6, v7, :cond_7

    .line 522
    aget-object v7, v3, v6

    invoke-virtual {v7}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v12

    .line 523
    .restart local v12    # "id":J
    cmp-long v7, v12, v10

    if-nez v7, :cond_5

    .line 525
    aget-object v5, v3, v6

    .line 526
    invoke-direct {p0, v3, v6}, Lorg/apache/poi/hpsf/Section;->remove([Lorg/apache/poi/hpsf/Property;I)[Lorg/apache/poi/hpsf/Property;

    move-result-object v3

    .line 527
    add-int/lit8 v6, v6, -0x1

    .line 529
    :cond_5
    cmp-long v7, v12, v8

    if-nez v7, :cond_6

    .line 532
    invoke-direct {p0, v3, v6}, Lorg/apache/poi/hpsf/Section;->remove([Lorg/apache/poi/hpsf/Property;I)[Lorg/apache/poi/hpsf/Property;

    move-result-object v3

    .line 533
    add-int/lit8 v6, v6, -0x1

    .line 520
    .end local v12    # "id":J
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 539
    .end local v6    # "i":I
    :cond_7
    array-length v6, v2

    array-length v7, v3

    if-eq v6, v7, :cond_8

    .line 540
    return v0

    .line 543
    :cond_8
    const/4 v6, 0x1

    .line 544
    .local v6, "dictionaryEqual":Z
    if-eqz v4, :cond_9

    if-eqz v5, :cond_9

    .line 545
    invoke-virtual {v4}, Lorg/apache/poi/hpsf/Property;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5}, Lorg/apache/poi/hpsf/Property;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_2

    .line 546
    :cond_9
    if-nez v4, :cond_a

    if-eqz v5, :cond_b

    .line 547
    :cond_a
    const/4 v6, 0x0

    .line 548
    :cond_b
    :goto_2
    if-eqz v6, :cond_c

    .line 549
    invoke-static {v2, v3}, Lorg/apache/poi/hpsf/Util;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 551
    :cond_c
    return v0

    .line 488
    .end local v1    # "s":Lorg/apache/poi/hpsf/Section;
    .end local v2    # "pa1":[Lorg/apache/poi/hpsf/Property;
    .end local v3    # "pa2":[Lorg/apache/poi/hpsf/Property;
    .end local v4    # "p10":Lorg/apache/poi/hpsf/Property;
    .end local v5    # "p20":Lorg/apache/poi/hpsf/Property;
    .end local v6    # "dictionaryEqual":Z
    :cond_d
    :goto_3
    return v0
.end method

.method public getCodepage()I
    .locals 2

    .line 645
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/Section;->getProperty(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 647
    .local v0, "codepage":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 648
    const/4 v1, -0x1

    return v1

    .line 649
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 650
    .local v1, "cp":I
    return v1
.end method

.method public getDictionary()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 633
    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->dictionary:Ljava/util/Map;

    return-object v0
.end method

.method public getFormatID()Lorg/apache/poi/hpsf/ClassID;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->formatID:Lorg/apache/poi/hpsf/ClassID;

    return-object v0
.end method

.method public getOffset()J
    .locals 2

    .line 82
    iget-wide v0, p0, Lorg/apache/poi/hpsf/Section;->offset:J

    return-wide v0
.end method

.method public getPIDString(J)Ljava/lang/String;
    .locals 3
    .param p1, "pid"    # J

    .line 449
    const/4 v0, 0x0

    .line 450
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/poi/hpsf/Section;->dictionary:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 451
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 452
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

    .line 130
    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->properties:[Lorg/apache/poi/hpsf/Property;

    return-object v0
.end method

.method public getProperty(J)Ljava/lang/Object;
    .locals 4
    .param p1, "id"    # J

    .line 350
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/hpsf/Section;->wasNull:Z

    .line 351
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hpsf/Section;->properties:[Lorg/apache/poi/hpsf/Property;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 352
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v1

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 353
    iget-object v1, p0, Lorg/apache/poi/hpsf/Section;->properties:[Lorg/apache/poi/hpsf/Property;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/apache/poi/hpsf/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 351
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 354
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/hpsf/Section;->wasNull:Z

    .line 355
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPropertyBooleanValue(I)Z
    .locals 2
    .param p1, "id"    # I

    .line 400
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/Section;->getProperty(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 401
    .local v0, "b":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 402
    const/4 v1, 0x0

    return v1

    .line 404
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public getPropertyCount()I
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->properties:[Lorg/apache/poi/hpsf/Property;

    array-length v0, v0

    return v0
.end method

.method protected getPropertyIntValue(J)I
    .locals 4
    .param p1, "id"    # J

    .line 374
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hpsf/Section;->getProperty(J)Ljava/lang/Object;

    move-result-object v0

    .line 375
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 376
    const/4 v1, 0x0

    return v1

    .line 377
    :cond_0
    instance-of v1, v0, Ljava/lang/Long;

    if-nez v1, :cond_2

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 378
    :cond_1
    new-instance v1, Lorg/apache/poi/hpsf/HPSFRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This property is not an integer type, but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/hpsf/HPSFRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 381
    :cond_2
    :goto_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    .line 382
    .local v1, "i":Ljava/lang/Number;
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v2

    return v2
.end method

.method public getSize()I
    .locals 1

    .line 100
    iget v0, p0, Lorg/apache/poi/hpsf/Section;->size:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 580
    const-wide/16 v0, 0x0

    .line 581
    .local v0, "hashCode":J
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hpsf/ClassID;->hashCode()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 582
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getProperties()[Lorg/apache/poi/hpsf/Property;

    move-result-object v2

    .line 583
    .local v2, "pa":[Lorg/apache/poi/hpsf/Property;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 584
    aget-object v4, v2, v3

    invoke-virtual {v4}, Lorg/apache/poi/hpsf/Property;->hashCode()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 583
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 585
    .end local v3    # "i":I
    :cond_0
    const-wide v3, 0xffffffffL

    and-long/2addr v3, v0

    long-to-int v4, v3

    .line 586
    .local v4, "returnHashCode":I
    return v4
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 596
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 597
    .local v0, "b":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getProperties()[Lorg/apache/poi/hpsf/Property;

    move-result-object v1

    .line 598
    .local v1, "pa":[Lorg/apache/poi/hpsf/Property;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 599
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 600
    const-string v2, "formatID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 601
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 602
    const-string v2, ", offset: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 603
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getOffset()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 604
    const-string v2, ", propertyCount: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 605
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getPropertyCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 606
    const-string v2, ", size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 607
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getSize()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 608
    const-string v2, ", properties: [\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 609
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 611
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/apache/poi/hpsf/Property;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 612
    const-string v3, ",\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 609
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 614
    .end local v2    # "i":I
    :cond_0
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 615
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 616
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public wasNull()Z
    .locals 1

    .line 432
    iget-boolean v0, p0, Lorg/apache/poi/hpsf/Section;->wasNull:Z

    return v0
.end method
