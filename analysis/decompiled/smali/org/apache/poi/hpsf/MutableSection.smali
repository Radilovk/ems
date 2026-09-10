.class public Lorg/apache/poi/hpsf/MutableSection;
.super Lorg/apache/poi/hpsf/Section;
.source "MutableSection.java"


# instance fields
.field private dirty:Z

.field private preprops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/hpsf/Property;",
            ">;"
        }
    .end annotation
.end field

.field private sectionBytes:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 74
    invoke-direct {p0}, Lorg/apache/poi/hpsf/Section;-><init>()V

    .line 48
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

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/apache/poi/hpsf/Section;-><init>()V

    .line 48
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/poi/hpsf/MutableSection;->dirty:Z

    .line 93
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/Section;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/poi/hpsf/MutableSection;->setFormatID(Lorg/apache/poi/hpsf/ClassID;)V

    .line 94
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/Section;->getProperties()[Lorg/apache/poi/hpsf/Property;

    move-result-object v2

    .line 95
    .local v2, "pa":[Lorg/apache/poi/hpsf/Property;
    array-length v3, v2

    new-array v1, v3, [Lorg/apache/poi/hpsf/MutableProperty;

    .line 96
    .local v1, "mpa":[Lorg/apache/poi/hpsf/MutableProperty;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 97
    new-instance v3, Lorg/apache/poi/hpsf/MutableProperty;

    aget-object v4, v2, v0

    invoke-direct {v3, v4}, Lorg/apache/poi/hpsf/MutableProperty;-><init>(Lorg/apache/poi/hpsf/Property;)V

    aput-object v3, v1, v0

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/poi/hpsf/MutableSection;->setProperties([Lorg/apache/poi/hpsf/Property;)V

    .line 99
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/Section;->getDictionary()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/poi/hpsf/MutableSection;->setDictionary(Ljava/util/Map;)V

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

    .prologue
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
    iget-object v1, p0, Lorg/apache/poi/hpsf/MutableSection;->sectionBytes:[B

    array-length v1, v1

    return v1
.end method

.method private static writeDictionary(Ljava/io/OutputStream;Ljava/util/Map;I)I
    .locals 11
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p2, "codepage"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/Map",
            "<",
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

    .prologue
    .local p1, "dictionary":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 507
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v8

    int-to-long v8, v8

    invoke-static {p0, v8, v9}, Lorg/apache/poi/hpsf/TypeWriter;->writeUIntToStream(Ljava/io/OutputStream;J)I

    move-result v5

    .line 508
    .local v5, "length":I
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 510
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 511
    .local v4, "key":Ljava/lang/Long;
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 513
    .local v7, "value":Ljava/lang/String;
    const/16 v8, 0x4b0

    if-ne p2, v8, :cond_3

    .line 516
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v6, v8, 0x1

    .line 517
    .local v6, "sLength":I
    rem-int/lit8 v8, v6, 0x2

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 518
    add-int/lit8 v6, v6, 0x1

    .line 519
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {p0, v8, v9}, Lorg/apache/poi/hpsf/TypeWriter;->writeUIntToStream(Ljava/io/OutputStream;J)I

    move-result v8

    add-int/2addr v5, v8

    .line 520
    int-to-long v8, v6

    invoke-static {p0, v8, v9}, Lorg/apache/poi/hpsf/TypeWriter;->writeUIntToStream(Ljava/io/OutputStream;J)I

    move-result v8

    add-int/2addr v5, v8

    .line 521
    invoke-static {v7, p2}, Lorg/apache/poi/util/CodePageUtil;->getBytesInCodePage(Ljava/lang/String;I)[B

    move-result-object v1

    .line 522
    .local v1, "ca":[B
    const/4 v3, 0x2

    .local v3, "j":I
    :goto_1
    array-length v8, v1

    if-ge v3, v8, :cond_2

    .line 524
    add-int/lit8 v8, v3, 0x1

    aget-byte v8, v1, v8

    invoke-virtual {p0, v8}, Ljava/io/OutputStream;->write(I)V

    .line 525
    aget-byte v8, v1, v3

    invoke-virtual {p0, v8}, Ljava/io/OutputStream;->write(I)V

    .line 526
    add-int/lit8 v5, v5, 0x2

    .line 522
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 528
    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v6, v8

    .line 529
    :goto_2
    if-lez v6, :cond_0

    .line 531
    invoke-virtual {p0, v10}, Ljava/io/OutputStream;->write(I)V

    .line 532
    invoke-virtual {p0, v10}, Ljava/io/OutputStream;->write(I)V

    .line 533
    add-int/lit8 v5, v5, 0x2

    .line 534
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 541
    .end local v1    # "ca":[B
    .end local v3    # "j":I
    .end local v6    # "sLength":I
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {p0, v8, v9}, Lorg/apache/poi/hpsf/TypeWriter;->writeUIntToStream(Ljava/io/OutputStream;J)I

    move-result v8

    add-int/2addr v5, v8

    .line 542
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    int-to-long v8, v8

    invoke-static {p0, v8, v9}, Lorg/apache/poi/hpsf/TypeWriter;->writeUIntToStream(Ljava/io/OutputStream;J)I

    move-result v8

    add-int/2addr v5, v8

    .line 543
    invoke-static {v7, p2}, Lorg/apache/poi/util/CodePageUtil;->getBytesInCodePage(Ljava/lang/String;I)[B

    move-result-object v0

    .line 544
    .local v0, "ba":[B
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_3
    array-length v8, v0

    if-ge v3, v8, :cond_4

    .line 546
    aget-byte v8, v0, v3

    invoke-virtual {p0, v8}, Ljava/io/OutputStream;->write(I)V

    .line 547
    add-int/lit8 v5, v5, 0x1

    .line 544
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 549
    :cond_4
    invoke-virtual {p0, v10}, Ljava/io/OutputStream;->write(I)V

    .line 550
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 553
    .end local v0    # "ba":[B
    .end local v3    # "j":I
    .end local v4    # "key":Ljava/lang/Long;
    .end local v7    # "value":Ljava/lang/String;
    :cond_5
    return v5
.end method


# virtual methods
.method public clear()V
    .locals 6

    .prologue
    .line 681
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/MutableSection;->getProperties()[Lorg/apache/poi/hpsf/Property;

    move-result-object v2

    .line 682
    .local v2, "properties":[Lorg/apache/poi/hpsf/Property;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 684
    aget-object v1, v2, v0

    .line 685
    .local v1, "p":Lorg/apache/poi/hpsf/Property;
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lorg/apache/poi/hpsf/MutableSection;->removeProperty(J)V

    .line 682
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 687
    .end local v1    # "p":Lorg/apache/poi/hpsf/Property;
    :cond_0
    return-void
.end method

.method public getProperties()[Lorg/apache/poi/hpsf/Property;
    .locals 2

    .prologue
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

    .prologue
    .line 595
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/MutableSection;->getProperties()[Lorg/apache/poi/hpsf/Property;

    .line 596
    invoke-super {p0, p1, p2}, Lorg/apache/poi/hpsf/Section;->getProperty(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyCount()I
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lorg/apache/poi/hpsf/MutableSection;->preprops:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 316
    iget-boolean v1, p0, Lorg/apache/poi/hpsf/MutableSection;->dirty:Z

    if-eqz v1, :cond_0

    .line 320
    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/hpsf/MutableSection;->calcSize()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hpsf/MutableSection;->size:I

    .line 321
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/poi/hpsf/MutableSection;->dirty:Z
    :try_end_0
    .catch Lorg/apache/poi/hpsf/HPSFRuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 332
    :cond_0
    iget v1, p0, Lorg/apache/poi/hpsf/MutableSection;->size:I

    return v1

    .line 323
    :catch_0
    move-exception v0

    .line 325
    .local v0, "ex":Lorg/apache/poi/hpsf/HPSFRuntimeException;
    throw v0

    .line 327
    .end local v0    # "ex":Lorg/apache/poi/hpsf/HPSFRuntimeException;
    :catch_1
    move-exception v0

    .line 329
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lorg/apache/poi/hpsf/HPSFRuntimeException;

    invoke-direct {v1, v0}, Lorg/apache/poi/hpsf/HPSFRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public removeProperty(J)V
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 280
    iget-object v1, p0, Lorg/apache/poi/hpsf/MutableSection;->preprops:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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

    move-result-wide v2

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 283
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 286
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/poi/hpsf/MutableSection;->dirty:Z

    .line 287
    return-void
.end method

.method public setCodepage(I)V
    .locals 4
    .param p1, "codepage"    # I

    .prologue
    .line 696
    const/4 v0, 0x1

    const-wide/16 v2, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v3, v1}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(IJLjava/lang/Object;)V

    .line 698
    return-void
.end method

.method public setDictionary(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
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

    .prologue
    .line 620
    .local p1, "dictionary":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 622
    iput-object p1, p0, Lorg/apache/poi/hpsf/MutableSection;->dictionary:Ljava/util/Map;

    .line 627
    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v1, v2, v3, p1}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(IJLjava/lang/Object;)V

    .line 632
    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/apache/poi/hpsf/MutableSection;->getProperty(J)Ljava/lang/Object;

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

    .line 642
    .end local v0    # "codepage":Ljava/lang/Integer;
    :cond_0
    :goto_0
    return-void

    .line 641
    :cond_1
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/apache/poi/hpsf/MutableSection;->removeProperty(J)V

    goto :goto_0
.end method

.method public setFormatID(Lorg/apache/poi/hpsf/ClassID;)V
    .locals 0
    .param p1, "formatID"    # Lorg/apache/poi/hpsf/ClassID;

    .prologue
    .line 114
    iput-object p1, p0, Lorg/apache/poi/hpsf/MutableSection;->formatID:Lorg/apache/poi/hpsf/ClassID;

    .line 115
    return-void
.end method

.method public setFormatID([B)V
    .locals 1
    .param p1, "formatID"    # [B

    .prologue
    .line 130
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/MutableSection;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v0

    .line 131
    .local v0, "fid":Lorg/apache/poi/hpsf/ClassID;
    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    .end local v0    # "fid":Lorg/apache/poi/hpsf/ClassID;
    invoke-direct {v0}, Lorg/apache/poi/hpsf/ClassID;-><init>()V

    .line 134
    .restart local v0    # "fid":Lorg/apache/poi/hpsf/ClassID;
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

    .prologue
    .line 148
    iput-object p1, p0, Lorg/apache/poi/hpsf/MutableSection;->properties:[Lorg/apache/poi/hpsf/Property;

    .line 149
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/hpsf/MutableSection;->preprops:Ljava/util/List;

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
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/poi/hpsf/MutableSection;->dirty:Z

    .line 153
    return-void
.end method

.method public setProperty(II)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "value"    # I

    .prologue
    .line 186
    const-wide/16 v0, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(IJLjava/lang/Object;)V

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/hpsf/MutableSection;->dirty:Z

    .line 188
    return-void
.end method

.method public setProperty(IJ)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "value"    # J

    .prologue
    .line 203
    const-wide/16 v0, 0x14

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(IJLjava/lang/Object;)V

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/hpsf/MutableSection;->dirty:Z

    .line 205
    return-void
.end method

.method public setProperty(IJLjava/lang/Object;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "variantType"    # J
    .param p4, "value"    # Ljava/lang/Object;

    .prologue
    .line 244
    new-instance v0, Lorg/apache/poi/hpsf/MutableProperty;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/MutableProperty;-><init>()V

    .line 245
    .local v0, "p":Lorg/apache/poi/hpsf/MutableProperty;
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/apache/poi/hpsf/MutableProperty;->setID(J)V

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

    .prologue
    .line 655
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 656
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(ILjava/lang/String;)V

    .line 671
    :goto_0
    return-void

    .line 657
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 658
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(IJ)V

    goto :goto_0

    .line 659
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 660
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(II)V

    goto :goto_0

    .line 661
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_3

    .line 662
    check-cast p2, Ljava/lang/Short;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Short;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(II)V

    goto :goto_0

    .line 663
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 664
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(IZ)V

    goto :goto_0

    .line 665
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v0, p2, Ljava/util/Date;

    if-eqz v0, :cond_5

    .line 666
    const-wide/16 v0, 0x40

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(IJLjava/lang/Object;)V

    goto :goto_0

    .line 668
    :cond_5
    new-instance v0, Lorg/apache/poi/hpsf/HPSFRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HPSF does not support properties of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/HPSFRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProperty(ILjava/lang/String;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
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

    .prologue
    .line 220
    const-wide/16 v0, 0xb

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(IJLjava/lang/Object;)V

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/hpsf/MutableSection;->dirty:Z

    .line 222
    return-void
.end method

.method public setProperty(Lorg/apache/poi/hpsf/Property;)V
    .locals 3
    .param p1, "p"    # Lorg/apache/poi/hpsf/Property;

    .prologue
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

    .prologue
    .line 304
    const-wide/16 v0, 0xb

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(IJLjava/lang/Object;)V

    .line 305
    return-void
.end method

.method public write(Ljava/io/OutputStream;)I
    .locals 22
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/WritingNotSupportedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/poi/hpsf/MutableSection;->dirty:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/hpsf/MutableSection;->sectionBytes:[B

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/hpsf/MutableSection;->sectionBytes:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/hpsf/MutableSection;->sectionBytes:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v17, v0

    .line 489
    :goto_0
    return v17

    .line 386
    :cond_0
    new-instance v16, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 392
    .local v16, "propertyStream":Ljava/io/ByteArrayOutputStream;
    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 396
    .local v15, "propertyListStream":Ljava/io/ByteArrayOutputStream;
    const/4 v14, 0x0

    .line 401
    .local v14, "position":I
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hpsf/MutableSection;->getPropertyCount()I

    move-result v18

    mul-int/lit8 v18, v18, 0x2

    mul-int/lit8 v18, v18, 0x4

    add-int/lit8 v18, v18, 0x8

    add-int v14, v14, v18

    .line 406
    const/4 v6, -0x1

    .line 407
    .local v6, "codepage":I
    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableSection;->getProperty(J)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_3

    .line 409
    const-wide/16 v18, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableSection;->getProperty(J)Ljava/lang/Object;

    move-result-object v11

    .line 410
    .local v11, "p1":Ljava/lang/Object;
    if-eqz v11, :cond_1

    .line 412
    instance-of v0, v11, Ljava/lang/Integer;

    move/from16 v18, v0

    if-nez v18, :cond_2

    .line 413
    new-instance v18, Lorg/apache/poi/hpsf/IllegalPropertySetDataException;

    const-string v19, "The codepage property (ID = 1) must be an Integer object."

    invoke-direct/range {v18 .. v19}, Lorg/apache/poi/hpsf/IllegalPropertySetDataException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 421
    :cond_1
    const/16 v18, 0x1

    const-wide/16 v20, 0x2

    const/16 v19, 0x4b0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-wide/from16 v2, v20

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(IJLjava/lang/Object;)V

    .line 423
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hpsf/MutableSection;->getCodepage()I

    move-result v6

    .line 427
    .end local v11    # "p1":Ljava/lang/Object;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/hpsf/MutableSection;->preprops:Ljava/util/List;

    move-object/from16 v18, v0

    new-instance v19, Lorg/apache/poi/hpsf/MutableSection$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/MutableSection$1;-><init>(Lorg/apache/poi/hpsf/MutableSection;)V

    invoke-static/range {v18 .. v19}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/hpsf/MutableSection;->preprops:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v7

    .local v7, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/hpsf/Property;>;"
    :goto_1
    invoke-interface {v7}, Ljava/util/ListIterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 444
    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/poi/hpsf/MutableProperty;

    .line 445
    .local v10, "p":Lorg/apache/poi/hpsf/MutableProperty;
    invoke-virtual {v10}, Lorg/apache/poi/hpsf/MutableProperty;->getID()J

    move-result-wide v8

    .line 448
    .local v8, "id":J
    invoke-virtual {v10}, Lorg/apache/poi/hpsf/MutableProperty;->getID()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-static {v15, v0, v1}, Lorg/apache/poi/hpsf/TypeWriter;->writeUIntToStream(Ljava/io/OutputStream;J)I

    .line 449
    int-to-long v0, v14

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-static {v15, v0, v1}, Lorg/apache/poi/hpsf/TypeWriter;->writeUIntToStream(Ljava/io/OutputStream;J)I

    .line 455
    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-eqz v18, :cond_4

    .line 458
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hpsf/MutableSection;->getCodepage()I

    move-result v18

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lorg/apache/poi/hpsf/MutableProperty;->write(Ljava/io/OutputStream;I)I

    move-result v18

    add-int v14, v14, v18

    goto :goto_1

    .line 461
    :cond_4
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_5

    .line 462
    new-instance v18, Lorg/apache/poi/hpsf/IllegalPropertySetDataException;

    const-string v19, "Codepage (property 1) is undefined."

    invoke-direct/range {v18 .. v19}, Lorg/apache/poi/hpsf/IllegalPropertySetDataException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 464
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/hpsf/MutableSection;->dictionary:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Lorg/apache/poi/hpsf/MutableSection;->writeDictionary(Ljava/io/OutputStream;Ljava/util/Map;I)I

    move-result v18

    add-int v14, v14, v18

    goto :goto_1

    .line 468
    .end local v8    # "id":J
    .end local v10    # "p":Lorg/apache/poi/hpsf/MutableProperty;
    :cond_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 469
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 472
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    .line 473
    .local v12, "pb1":[B
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    .line 476
    .local v13, "pb2":[B
    array-length v0, v12

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x8

    array-length v0, v13

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lorg/apache/poi/hpsf/TypeWriter;->writeToStream(Ljava/io/OutputStream;I)I

    .line 480
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hpsf/MutableSection;->getPropertyCount()I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lorg/apache/poi/hpsf/TypeWriter;->writeToStream(Ljava/io/OutputStream;I)I

    .line 483
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write([B)V

    .line 486
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/OutputStream;->write([B)V

    .line 488
    array-length v0, v12

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x8

    array-length v0, v13

    move/from16 v19, v0

    add-int v17, v18, v19

    .line 489
    .local v17, "streamLength":I
    goto/16 :goto_0
.end method
