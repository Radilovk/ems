.class public Lorg/apache/poi/hpsf/MutableSection;
.super Lorg/apache/poi/hpsf/Section;
.source "MutableSection.java"


# instance fields
.field private dirty:Z

.field private preprops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hpsf/Property;",
            ">;"
        }
    .end annotation
.end field

.field private sectionBytes:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 74
    invoke-direct {p0}, Lorg/apache/poi/hpsf/Section;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/hpsf/MutableSection;->dirty:Z

    .line 75
    iput-boolean v0, p0, Lorg/apache/poi/hpsf/MutableSection;->dirty:Z

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hpsf/MutableSection;->formatID:Lorg/apache/poi/hpsf/ClassID;

    .line 77
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/poi/hpsf/MutableSection;->offset:J

    .line 78
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/MutableSection;->preprops:Ljava/util/List;

    .line 79
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hpsf/Section;)V
    .locals 5
    .param p1, "s"    # Lorg/apache/poi/hpsf/Section;

    .line 92
    invoke-direct {p0}, Lorg/apache/poi/hpsf/Section;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/hpsf/MutableSection;->dirty:Z

    .line 93
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/Section;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/MutableSection;->setFormatID(Lorg/apache/poi/hpsf/ClassID;)V

    .line 94
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/Section;->getProperties()[Lorg/apache/poi/hpsf/Property;

    move-result-object v0

    .line 95
    .local v0, "pa":[Lorg/apache/poi/hpsf/Property;
    array-length v1, v0

    new-array v1, v1, [Lorg/apache/poi/hpsf/MutableProperty;

    .line 96
    .local v1, "mpa":[Lorg/apache/poi/hpsf/MutableProperty;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 97
    new-instance v3, Lorg/apache/poi/hpsf/MutableProperty;

    aget-object v4, v0, v2

    invoke-direct {v3, v4}, Lorg/apache/poi/hpsf/MutableProperty;-><init>(Lorg/apache/poi/hpsf/Property;)V

    aput-object v3, v1, v2

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/poi/hpsf/MutableSection;->setProperties([Lorg/apache/poi/hpsf/Property;)V

    .line 99
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/Section;->getDictionary()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/poi/hpsf/MutableSection;->setDictionary(Ljava/util/Map;)V

    .line 100
    return-void
.end method

.method private calcSize()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/WritingNotSupportedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 348
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 349
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/MutableSection;->write(Ljava/io/OutputStream;)I

    .line 350
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 353
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/hpsf/Util;->pad4([B)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hpsf/MutableSection;->sectionBytes:[B

    .line 354
    array-length v1, v1

    return v1
.end method

.method private static writeDictionary(Ljava/io/OutputStream;Ljava/util/Map;I)I
    .locals 9
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p2, "codepage"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 507
    .local p1, "dictionary":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p0, v0, v1}, Lorg/apache/poi/hpsf/TypeWriter;->writeUIntToStream(Ljava/io/OutputStream;J)I

    move-result v0

    .line 508
    .local v0, "length":I
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 510
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 511
    .local v2, "key":Ljava/lang/Long;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 513
    .local v3, "value":Ljava/lang/String;
    const/16 v4, 0x4b0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne p2, v4, :cond_3

    .line 516
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v6

    .line 517
    .local v4, "sLength":I
    rem-int/lit8 v7, v4, 0x2

    if-ne v7, v6, :cond_0

    .line 518
    add-int/lit8 v4, v4, 0x1

    .line 519
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Lorg/apache/poi/hpsf/TypeWriter;->writeUIntToStream(Ljava/io/OutputStream;J)I

    move-result v6

    add-int/2addr v0, v6

    .line 520
    int-to-long v6, v4

    invoke-static {p0, v6, v7}, Lorg/apache/poi/hpsf/TypeWriter;->writeUIntToStream(Ljava/io/OutputStream;J)I

    move-result v6

    add-int/2addr v0, v6

    .line 521
    invoke-static {v3, p2}, Lorg/apache/poi/util/CodePageUtil;->getBytesInCodePage(Ljava/lang/String;I)[B

    move-result-object v6

    .line 522
    .local v6, "ca":[B
    const/4 v7, 0x2

    .local v7, "j":I
    :goto_1
    array-length v8, v6

    if-ge v7, v8, :cond_1

    .line 524
    add-int/lit8 v8, v7, 0x1

    aget-byte v8, v6, v8

    invoke-virtual {p0, v8}, Ljava/io/OutputStream;->write(I)V

    .line 525
    aget-byte v8, v6, v7

    invoke-virtual {p0, v8}, Ljava/io/OutputStream;->write(I)V

    .line 526
    add-int/lit8 v0, v0, 0x2

    .line 522
    add-int/lit8 v7, v7, 0x2

    goto :goto_1

    .line 528
    .end local v7    # "j":I
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v4, v7

    .line 529
    :goto_2
    if-lez v4, :cond_2

    .line 531
    invoke-virtual {p0, v5}, Ljava/io/OutputStream;->write(I)V

    .line 532
    invoke-virtual {p0, v5}, Ljava/io/OutputStream;->write(I)V

    .line 533
    add-int/lit8 v0, v0, 0x2

    .line 534
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 536
    .end local v4    # "sLength":I
    .end local v6    # "ca":[B
    :cond_2
    goto :goto_4

    .line 541
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {p0, v7, v8}, Lorg/apache/poi/hpsf/TypeWriter;->writeUIntToStream(Ljava/io/OutputStream;J)I

    move-result v4

    add-int/2addr v0, v4

    .line 542
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v6

    int-to-long v6, v4

    invoke-static {p0, v6, v7}, Lorg/apache/poi/hpsf/TypeWriter;->writeUIntToStream(Ljava/io/OutputStream;J)I

    move-result v4

    add-int/2addr v0, v4

    .line 543
    invoke-static {v3, p2}, Lorg/apache/poi/util/CodePageUtil;->getBytesInCodePage(Ljava/lang/String;I)[B

    move-result-object v4

    .line 544
    .local v4, "ba":[B
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_3
    array-length v7, v4

    if-ge v6, v7, :cond_4

    .line 546
    aget-byte v7, v4, v6

    invoke-virtual {p0, v7}, Ljava/io/OutputStream;->write(I)V

    .line 547
    add-int/lit8 v0, v0, 0x1

    .line 544
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 549
    .end local v6    # "j":I
    :cond_4
    invoke-virtual {p0, v5}, Ljava/io/OutputStream;->write(I)V

    .line 550
    add-int/lit8 v0, v0, 0x1

    .line 552
    .end local v2    # "key":Ljava/lang/Long;
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "ba":[B
    :goto_4
    goto/16 :goto_0

    .line 553
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_5
    return v0
.end method


# virtual methods
.method public clear()V
    .locals 5

    .line 681
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/MutableSection;->getProperties()[Lorg/apache/poi/hpsf/Property;

    move-result-object v0

    .line 682
    .local v0, "properties":[Lorg/apache/poi/hpsf/Property;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 684
    aget-object v2, v0, v1

    .line 685
    .local v2, "p":Lorg/apache/poi/hpsf/Property;
    invoke-virtual {v2}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lorg/apache/poi/hpsf/MutableSection;->removeProperty(J)V

    .line 682
    .end local v2    # "p":Lorg/apache/poi/hpsf/Property;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 687
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public getProperties()[Lorg/apache/poi/hpsf/Property;
    .locals 2

    .line 579
    iget-object v0, p0, Lorg/apache/poi/hpsf/MutableSection;->preprops:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/poi/hpsf/Property;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hpsf/Property;

    iput-object v0, p0, Lorg/apache/poi/hpsf/MutableSection;->properties:[Lorg/apache/poi/hpsf/Property;

    .line 580
    iget-object v0, p0, Lorg/apache/poi/hpsf/MutableSection;->properties:[Lorg/apache/poi/hpsf/Property;

    return-object v0
.end method

.method public getProperty(J)Ljava/lang/Object;
    .locals 1
    .param p1, "id"    # J

    .line 595
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/MutableSection;->getProperties()[Lorg/apache/poi/hpsf/Property;

    .line 596
    invoke-super {p0, p1, p2}, Lorg/apache/poi/hpsf/Section;->getProperty(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyCount()I
    .locals 1

    .line 567
    iget-object v0, p0, Lorg/apache/poi/hpsf/MutableSection;->preprops:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSize()I
    .locals 2

    .line 316
    iget-boolean v0, p0, Lorg/apache/poi/hpsf/MutableSection;->dirty:Z

    if-eqz v0, :cond_0

    .line 320
    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/hpsf/MutableSection;->calcSize()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hpsf/MutableSection;->size:I

    .line 321
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/hpsf/MutableSection;->dirty:Z
    :try_end_0
    .catch Lorg/apache/poi/hpsf/HPSFRuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    .line 329
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lorg/apache/poi/hpsf/HPSFRuntimeException;

    invoke-direct {v1, v0}, Lorg/apache/poi/hpsf/HPSFRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 323
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 325
    .local v0, "ex":Lorg/apache/poi/hpsf/HPSFRuntimeException;
    throw v0

    .line 332
    .end local v0    # "ex":Lorg/apache/poi/hpsf/HPSFRuntimeException;
    :cond_0
    :goto_0
    iget v0, p0, Lorg/apache/poi/hpsf/MutableSection;->size:I

    return v0
.end method

.method public removeProperty(J)V
    .locals 4
    .param p1, "id"    # J

    .line 280
    iget-object v0, p0, Lorg/apache/poi/hpsf/MutableSection;->preprops:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hpsf/Property;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hpsf/Property;

    invoke-virtual {v1}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    .line 283
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 286
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hpsf/Property;>;"
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/hpsf/MutableSection;->dirty:Z

    .line 287
    return-void
.end method

.method public setCodepage(I)V
    .locals 4
    .param p1, "codepage"    # I

    .line 696
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x2

    invoke-virtual {p0, v1, v2, v3, v0}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(IJLjava/lang/Object;)V

    .line 698
    return-void
.end method

.method public setDictionary(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/IllegalPropertySetDataException;
        }
    .end annotation

    .line 620
    .local p1, "dictionary":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 622
    iput-object p1, p0, Lorg/apache/poi/hpsf/MutableSection;->dictionary:Ljava/util/Map;

    .line 627
    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2, p1}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(IJLjava/lang/Object;)V

    .line 632
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/MutableSection;->getProperty(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 634
    .local v0, "codepage":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 635
    const/4 v1, 0x1

    const-wide/16 v2, 0x2

    const/16 v4, 0x4b0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(IJLjava/lang/Object;)V

    .line 637
    .end local v0    # "codepage":Ljava/lang/Integer;
    :cond_0
    goto :goto_0

    .line 641
    :cond_1
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/MutableSection;->removeProperty(J)V

    .line 642
    :goto_0
    return-void
.end method

.method public setFormatID(Lorg/apache/poi/hpsf/ClassID;)V
    .locals 0
    .param p1, "formatID"    # Lorg/apache/poi/hpsf/ClassID;

    .line 114
    iput-object p1, p0, Lorg/apache/poi/hpsf/MutableSection;->formatID:Lorg/apache/poi/hpsf/ClassID;

    .line 115
    return-void
.end method

.method public setFormatID([B)V
    .locals 2
    .param p1, "formatID"    # [B

    .line 130
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/MutableSection;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v0

    .line 131
    .local v0, "fid":Lorg/apache/poi/hpsf/ClassID;
    if-nez v0, :cond_0

    .line 133
    new-instance v1, Lorg/apache/poi/hpsf/ClassID;

    invoke-direct {v1}, Lorg/apache/poi/hpsf/ClassID;-><init>()V

    move-object v0, v1

    .line 134
    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/MutableSection;->setFormatID(Lorg/apache/poi/hpsf/ClassID;)V

    .line 136
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/poi/hpsf/ClassID;->setBytes([B)V

    .line 137
    return-void
.end method

.method public setProperties([Lorg/apache/poi/hpsf/Property;)V
    .locals 3
    .param p1, "properties"    # [Lorg/apache/poi/hpsf/Property;

    .line 148
    iput-object p1, p0, Lorg/apache/poi/hpsf/MutableSection;->properties:[Lorg/apache/poi/hpsf/Property;

    .line 149
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/MutableSection;->preprops:Ljava/util/List;

    .line 150
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 151
    iget-object v1, p0, Lorg/apache/poi/hpsf/MutableSection;->preprops:Ljava/util/List;

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/hpsf/MutableSection;->dirty:Z

    .line 153
    return-void
.end method

.method public setProperty(II)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "value"    # I

    .line 186
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-wide/16 v1, 0x3

    invoke-virtual {p0, p1, v1, v2, v0}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(IJLjava/lang/Object;)V

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/hpsf/MutableSection;->dirty:Z

    .line 188
    return-void
.end method

.method public setProperty(IJ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "value"    # J

    .line 203
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-wide/16 v1, 0x14

    invoke-virtual {p0, p1, v1, v2, v0}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(IJLjava/lang/Object;)V

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/hpsf/MutableSection;->dirty:Z

    .line 205
    return-void
.end method

.method public setProperty(IJLjava/lang/Object;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "variantType"    # J
    .param p4, "value"    # Ljava/lang/Object;

    .line 244
    new-instance v0, Lorg/apache/poi/hpsf/MutableProperty;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/MutableProperty;-><init>()V

    .line 245
    .local v0, "p":Lorg/apache/poi/hpsf/MutableProperty;
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableProperty;->setID(J)V

    .line 246
    invoke-virtual {v0, p2, p3}, Lorg/apache/poi/hpsf/MutableProperty;->setType(J)V

    .line 247
    invoke-virtual {v0, p4}, Lorg/apache/poi/hpsf/MutableProperty;->setValue(Ljava/lang/Object;)V

    .line 248
    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(Lorg/apache/poi/hpsf/Property;)V

    .line 249
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/poi/hpsf/MutableSection;->dirty:Z

    .line 250
    return-void
.end method

.method public setProperty(ILjava/lang/Object;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 655
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 656
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(ILjava/lang/String;)V

    goto :goto_0

    .line 657
    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 658
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(IJ)V

    goto :goto_0

    .line 659
    :cond_1
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 660
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(II)V

    goto :goto_0

    .line 661
    :cond_2
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_3

    .line 662
    move-object v0, p2

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(II)V

    goto :goto_0

    .line 663
    :cond_3
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 664
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(IZ)V

    goto :goto_0

    .line 665
    :cond_4
    instance-of v0, p2, Ljava/util/Date;

    if-eqz v0, :cond_5

    .line 666
    const-wide/16 v0, 0x40

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(IJLjava/lang/Object;)V

    .line 671
    :goto_0
    return-void

    .line 668
    :cond_5
    new-instance v0, Lorg/apache/poi/hpsf/HPSFRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HPSF does not support properties of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/HPSFRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProperty(ILjava/lang/String;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 169
    const-wide/16 v0, 0x1f

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(IJLjava/lang/Object;)V

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/hpsf/MutableSection;->dirty:Z

    .line 171
    return-void
.end method

.method public setProperty(IZ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "value"    # Z

    .line 220
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-wide/16 v1, 0xb

    invoke-virtual {p0, p1, v1, v2, v0}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(IJLjava/lang/Object;)V

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/hpsf/MutableSection;->dirty:Z

    .line 222
    return-void
.end method

.method public setProperty(Lorg/apache/poi/hpsf/Property;)V
    .locals 3
    .param p1, "p"    # Lorg/apache/poi/hpsf/Property;

    .line 265
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v0

    .line 266
    .local v0, "id":J
    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/MutableSection;->removeProperty(J)V

    .line 267
    iget-object v2, p0, Lorg/apache/poi/hpsf/MutableSection;->preprops:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/poi/hpsf/MutableSection;->dirty:Z

    .line 269
    return-void
.end method

.method protected setPropertyBooleanValue(IZ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "value"    # Z

    .line 304
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-wide/16 v1, 0xb

    invoke-virtual {p0, p1, v1, v2, v0}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(IJLjava/lang/Object;)V

    .line 305
    return-void
.end method

.method public write(Ljava/io/OutputStream;)I
    .locals 12
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/WritingNotSupportedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    iget-boolean v0, p0, Lorg/apache/poi/hpsf/MutableSection;->dirty:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hpsf/MutableSection;->sectionBytes:[B

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 382
    iget-object v0, p0, Lorg/apache/poi/hpsf/MutableSection;->sectionBytes:[B

    array-length v0, v0

    return v0

    .line 386
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 392
    .local v0, "propertyStream":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 396
    .local v1, "propertyListStream":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 401
    .local v2, "position":I
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/MutableSection;->getPropertyCount()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    .line 406
    const/4 v3, -0x1

    .line 407
    .local v3, "codepage":I
    const-wide/16 v4, 0x0

    invoke-virtual {p0, v4, v5}, Lorg/apache/poi/hpsf/MutableSection;->getProperty(J)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 409
    const-wide/16 v6, 0x1

    invoke-virtual {p0, v6, v7}, Lorg/apache/poi/hpsf/MutableSection;->getProperty(J)Ljava/lang/Object;

    move-result-object v6

    .line 410
    .local v6, "p1":Ljava/lang/Object;
    if-eqz v6, :cond_2

    .line 412
    instance-of v7, v6, Ljava/lang/Integer;

    if-eqz v7, :cond_1

    goto :goto_0

    .line 413
    :cond_1
    new-instance v4, Lorg/apache/poi/hpsf/IllegalPropertySetDataException;

    const-string v5, "The codepage property (ID = 1) must be an Integer object."

    invoke-direct {v4, v5}, Lorg/apache/poi/hpsf/IllegalPropertySetDataException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 421
    :cond_2
    const/4 v7, 0x1

    const-wide/16 v8, 0x2

    const/16 v10, 0x4b0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(IJLjava/lang/Object;)V

    .line 423
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/MutableSection;->getCodepage()I

    move-result v3

    .line 427
    .end local v6    # "p1":Ljava/lang/Object;
    :cond_3
    iget-object v6, p0, Lorg/apache/poi/hpsf/MutableSection;->preprops:Ljava/util/List;

    new-instance v7, Lorg/apache/poi/hpsf/MutableSection$1;

    invoke-direct {v7, p0}, Lorg/apache/poi/hpsf/MutableSection$1;-><init>(Lorg/apache/poi/hpsf/MutableSection;)V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 442
    iget-object v6, p0, Lorg/apache/poi/hpsf/MutableSection;->preprops:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v6

    .local v6, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/hpsf/Property;>;"
    :goto_1
    invoke-interface {v6}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 444
    invoke-interface {v6}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/hpsf/MutableProperty;

    .line 445
    .local v7, "p":Lorg/apache/poi/hpsf/MutableProperty;
    invoke-virtual {v7}, Lorg/apache/poi/hpsf/MutableProperty;->getID()J

    move-result-wide v8

    .line 448
    .local v8, "id":J
    invoke-virtual {v7}, Lorg/apache/poi/hpsf/MutableProperty;->getID()J

    move-result-wide v10

    invoke-static {v1, v10, v11}, Lorg/apache/poi/hpsf/TypeWriter;->writeUIntToStream(Ljava/io/OutputStream;J)I

    .line 449
    int-to-long v10, v2

    invoke-static {v1, v10, v11}, Lorg/apache/poi/hpsf/TypeWriter;->writeUIntToStream(Ljava/io/OutputStream;J)I

    .line 455
    cmp-long v10, v8, v4

    if-eqz v10, :cond_4

    .line 458
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/MutableSection;->getCodepage()I

    move-result v10

    invoke-virtual {v7, v0, v10}, Lorg/apache/poi/hpsf/MutableProperty;->write(Ljava/io/OutputStream;I)I

    move-result v10

    add-int/2addr v2, v10

    goto :goto_2

    .line 461
    :cond_4
    const/4 v10, -0x1

    if-eq v3, v10, :cond_5

    .line 464
    iget-object v10, p0, Lorg/apache/poi/hpsf/MutableSection;->dictionary:Ljava/util/Map;

    invoke-static {v0, v10, v3}, Lorg/apache/poi/hpsf/MutableSection;->writeDictionary(Ljava/io/OutputStream;Ljava/util/Map;I)I

    move-result v10

    add-int/2addr v2, v10

    .line 467
    .end local v7    # "p":Lorg/apache/poi/hpsf/MutableProperty;
    .end local v8    # "id":J
    :goto_2
    goto :goto_1

    .line 462
    .restart local v7    # "p":Lorg/apache/poi/hpsf/MutableProperty;
    .restart local v8    # "id":J
    :cond_5
    new-instance v4, Lorg/apache/poi/hpsf/IllegalPropertySetDataException;

    const-string v5, "Codepage (property 1) is undefined."

    invoke-direct {v4, v5}, Lorg/apache/poi/hpsf/IllegalPropertySetDataException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 468
    .end local v6    # "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/hpsf/Property;>;"
    .end local v7    # "p":Lorg/apache/poi/hpsf/MutableProperty;
    .end local v8    # "id":J
    :cond_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 469
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 472
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 473
    .local v4, "pb1":[B
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 476
    .local v5, "pb2":[B
    array-length v6, v4

    add-int/lit8 v6, v6, 0x8

    array-length v7, v5

    add-int/2addr v6, v7

    invoke-static {p1, v6}, Lorg/apache/poi/hpsf/TypeWriter;->writeToStream(Ljava/io/OutputStream;I)I

    .line 480
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/MutableSection;->getPropertyCount()I

    move-result v6

    invoke-static {p1, v6}, Lorg/apache/poi/hpsf/TypeWriter;->writeToStream(Ljava/io/OutputStream;I)I

    .line 483
    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 486
    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 488
    array-length v6, v4

    add-int/lit8 v6, v6, 0x8

    array-length v7, v5

    add-int/2addr v6, v7

    .line 489
    .local v6, "streamLength":I
    return v6
.end method
