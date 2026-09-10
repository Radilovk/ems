.class public Lorg/apache/poi/hpsf/PropertySet;
.super Ljava/lang/Object;
.source "PropertySet.java"


# static fields
.field static final BYTE_ORDER_ASSERTION:[B

.field static final FORMAT_ASSERTION:[B

.field public static final OS_MACINTOSH:I = 0x1

.field public static final OS_WIN16:I = 0x0

.field public static final OS_WIN32:I = 0x2


# instance fields
.field protected byteOrder:I

.field protected classID:Lorg/apache/poi/hpsf/ClassID;

.field protected format:I

.field protected osVersion:I

.field protected sections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/hpsf/Section;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 67
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/poi/hpsf/PropertySet;->BYTE_ORDER_ASSERTION:[B

    .line 92
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/poi/hpsf/PropertySet;->FORMAT_ASSERTION:[B

    return-void

    .line 67
    :array_0
    .array-data 1
        -0x2t
        -0x1t
    .end array-data

    .line 92
    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/NoPropertySetStreamException;,
            Lorg/apache/poi/hpsf/MarkUnsupportedException;,
            Ljava/io/IOException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    invoke-static {p1}, Lorg/apache/poi/hpsf/PropertySet;->isPropertySetStream(Ljava/io/InputStream;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 244
    .local v0, "avail":I
    new-array v1, v0, [B

    .line 245
    .local v1, "buffer":[B
    array-length v2, v1

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    .line 246
    array-length v2, v1

    invoke-direct {p0, v1, v3, v2}, Lorg/apache/poi/hpsf/PropertySet;->init([BII)V

    .line 250
    return-void

    .line 249
    .end local v0    # "avail":I
    .end local v1    # "buffer":[B
    :cond_0
    new-instance v2, Lorg/apache/poi/hpsf/NoPropertySetStreamException;

    invoke-direct {v2}, Lorg/apache/poi/hpsf/NoPropertySetStreamException;-><init>()V

    throw v2
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "stream"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/NoPropertySetStreamException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 295
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/hpsf/PropertySet;-><init>([BII)V

    .line 296
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1
    .param p1, "stream"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/NoPropertySetStreamException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    invoke-static {p1, p2, p3}, Lorg/apache/poi/hpsf/PropertySet;->isPropertySetStream([BII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/hpsf/PropertySet;->init([BII)V

    .line 276
    return-void

    .line 275
    :cond_0
    new-instance v0, Lorg/apache/poi/hpsf/NoPropertySetStreamException;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/NoPropertySetStreamException;-><init>()V

    throw v0
.end method

.method private init([BII)V
    .locals 7
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 415
    move v1, p2

    .line 416
    .local v1, "o":I
    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v4

    iput v4, p0, Lorg/apache/poi/hpsf/PropertySet;->byteOrder:I

    .line 417
    add-int/lit8 v1, v1, 0x2

    .line 418
    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v4

    iput v4, p0, Lorg/apache/poi/hpsf/PropertySet;->format:I

    .line 419
    add-int/lit8 v1, v1, 0x2

    .line 420
    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, p0, Lorg/apache/poi/hpsf/PropertySet;->osVersion:I

    .line 421
    add-int/lit8 v1, v1, 0x4

    .line 422
    new-instance v4, Lorg/apache/poi/hpsf/ClassID;

    invoke-direct {v4, p1, v1}, Lorg/apache/poi/hpsf/ClassID;-><init>([BI)V

    iput-object v4, p0, Lorg/apache/poi/hpsf/PropertySet;->classID:Lorg/apache/poi/hpsf/ClassID;

    .line 423
    add-int/lit8 v1, v1, 0x10

    .line 424
    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v3

    .line 425
    .local v3, "sectionCount":I
    add-int/lit8 v1, v1, 0x4

    .line 426
    if-gez v3, :cond_0

    .line 427
    new-instance v4, Lorg/apache/poi/hpsf/HPSFRuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Section count "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is negative."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/poi/hpsf/HPSFRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 442
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    .line 449
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 451
    new-instance v2, Lorg/apache/poi/hpsf/Section;

    invoke-direct {v2, p1, v1}, Lorg/apache/poi/hpsf/Section;-><init>([BI)V

    .line 452
    .local v2, "s":Lorg/apache/poi/hpsf/Section;
    add-int/lit8 v1, v1, 0x14

    .line 453
    iget-object v4, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 455
    .end local v2    # "s":Lorg/apache/poi/hpsf/Section;
    :cond_1
    return-void
.end method

.method public static isPropertySetStream(Ljava/io/InputStream;)Z
    .locals 7
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/MarkUnsupportedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x32

    const/4 v6, 0x0

    .line 321
    const/16 v0, 0x32

    .line 328
    .local v0, "BUFFER_SIZE":I
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v4

    if-nez v4, :cond_0

    .line 329
    new-instance v4, Lorg/apache/poi/hpsf/MarkUnsupportedException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/poi/hpsf/MarkUnsupportedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 330
    :cond_0
    invoke-virtual {p0, v5}, Ljava/io/InputStream;->mark(I)V

    .line 335
    new-array v1, v5, [B

    .line 336
    .local v1, "buffer":[B
    array-length v4, v1

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p0, v1, v6, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 339
    .local v2, "bytes":I
    invoke-static {v1, v6, v2}, Lorg/apache/poi/hpsf/PropertySet;->isPropertySetStream([BII)Z

    move-result v3

    .line 341
    .local v3, "isPropertySetStream":Z
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 342
    return v3
.end method

.method public static isPropertySetStream([BII)Z
    .locals 10
    .param p0, "src"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x0

    .line 368
    move v2, p1

    .line 369
    .local v2, "o":I
    invoke-static {p0, v2}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v0

    .line 370
    .local v0, "byteOrder":I
    add-int/lit8 v2, v2, 0x2

    .line 371
    new-array v3, v8, [B

    .line 372
    .local v3, "temp":[B
    int-to-short v7, v0

    invoke-static {v3, v6, v7}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 373
    sget-object v7, Lorg/apache/poi/hpsf/PropertySet;->BYTE_ORDER_ASSERTION:[B

    invoke-static {v3, v7}, Lorg/apache/poi/hpsf/Util;->equal([B[B)Z

    move-result v7

    if-nez v7, :cond_1

    .line 389
    :cond_0
    :goto_0
    return v6

    .line 375
    :cond_1
    invoke-static {p0, v2}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v1

    .line 376
    .local v1, "format":I
    add-int/lit8 v2, v2, 0x2

    .line 377
    new-array v3, v8, [B

    .line 378
    int-to-short v7, v1

    invoke-static {v3, v6, v7}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 379
    sget-object v7, Lorg/apache/poi/hpsf/PropertySet;->FORMAT_ASSERTION:[B

    invoke-static {v3, v7}, Lorg/apache/poi/hpsf/Util;->equal([B[B)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 382
    add-int/lit8 v2, v2, 0x4

    .line 384
    add-int/lit8 v2, v2, 0x10

    .line 385
    invoke-static {p0, v2}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v4

    .line 386
    .local v4, "sectionCount":J
    add-int/lit8 v2, v2, 0x4

    .line 387
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-ltz v7, :cond_0

    .line 389
    const/4 v6, 0x1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 13
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v11, 0x0

    .line 636
    if-eqz p1, :cond_0

    instance-of v12, p1, Lorg/apache/poi/hpsf/PropertySet;

    if-nez v12, :cond_1

    .line 657
    :cond_0
    :goto_0
    return v11

    :cond_1
    move-object v8, p1

    .line 638
    check-cast v8, Lorg/apache/poi/hpsf/PropertySet;

    .line 639
    .local v8, "ps":Lorg/apache/poi/hpsf/PropertySet;
    invoke-virtual {v8}, Lorg/apache/poi/hpsf/PropertySet;->getByteOrder()I

    move-result v0

    .line 640
    .local v0, "byteOrder1":I
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getByteOrder()I

    move-result v1

    .line 641
    .local v1, "byteOrder2":I
    invoke-virtual {v8}, Lorg/apache/poi/hpsf/PropertySet;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v2

    .line 642
    .local v2, "classID1":Lorg/apache/poi/hpsf/ClassID;
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v3

    .line 643
    .local v3, "classID2":Lorg/apache/poi/hpsf/ClassID;
    invoke-virtual {v8}, Lorg/apache/poi/hpsf/PropertySet;->getFormat()I

    move-result v4

    .line 644
    .local v4, "format1":I
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFormat()I

    move-result v5

    .line 645
    .local v5, "format2":I
    invoke-virtual {v8}, Lorg/apache/poi/hpsf/PropertySet;->getOSVersion()I

    move-result v6

    .line 646
    .local v6, "osVersion1":I
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getOSVersion()I

    move-result v7

    .line 647
    .local v7, "osVersion2":I
    invoke-virtual {v8}, Lorg/apache/poi/hpsf/PropertySet;->getSectionCount()I

    move-result v9

    .line 648
    .local v9, "sectionCount1":I
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSectionCount()I

    move-result v10

    .line 649
    .local v10, "sectionCount2":I
    if-ne v0, v1, :cond_0

    invoke-virtual {v2, v3}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    if-ne v4, v5, :cond_0

    if-ne v6, v7, :cond_0

    if-ne v9, v10, :cond_0

    .line 657
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSections()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v8}, Lorg/apache/poi/hpsf/PropertySet;->getSections()Ljava/util/List;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/apache/poi/hpsf/Util;->equals(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v11

    goto :goto_0
.end method

.method public getByteOrder()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lorg/apache/poi/hpsf/PropertySet;->byteOrder:I

    return v0
.end method

.method public getClassID()Lorg/apache/poi/hpsf/ClassID;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->classID:Lorg/apache/poi/hpsf/ClassID;

    return-object v0
.end method

.method public getFirstSection()Lorg/apache/poi/hpsf/Section;
    .locals 2

    .prologue
    .line 601
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSectionCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 602
    new-instance v0, Lorg/apache/poi/hpsf/MissingSectionException;

    const-string v1, "Property set does not contain any sections."

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/MissingSectionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 603
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/Section;

    return-object v0
.end method

.method public getFormat()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lorg/apache/poi/hpsf/PropertySet;->format:I

    return v0
.end method

.method public getOSVersion()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lorg/apache/poi/hpsf/PropertySet;->osVersion:I

    return v0
.end method

.method public getProperties()[Lorg/apache/poi/hpsf/Property;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/NoSingleSectionException;
        }
    .end annotation

    .prologue
    .line 508
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/Section;->getProperties()[Lorg/apache/poi/hpsf/Property;

    move-result-object v0

    return-object v0
.end method

.method protected getProperty(I)Ljava/lang/Object;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/NoSingleSectionException;
        }
    .end annotation

    .prologue
    .line 526
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/apache/poi/hpsf/Section;->getProperty(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getPropertyBooleanValue(I)Z
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/NoSingleSectionException;
        }
    .end annotation

    .prologue
    .line 547
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hpsf/Section;->getPropertyBooleanValue(I)Z

    move-result v0

    return v0
.end method

.method protected getPropertyIntValue(I)I
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/NoSingleSectionException;
        }
    .end annotation

    .prologue
    .line 567
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/apache/poi/hpsf/Section;->getPropertyIntValue(J)I

    move-result v0

    return v0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/hpsf/Section;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    return-object v0
.end method

.method public getSingleSection()Lorg/apache/poi/hpsf/Section;
    .locals 4

    .prologue
    .line 616
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSectionCount()I

    move-result v0

    .line 617
    .local v0, "sectionCount":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 618
    new-instance v1, Lorg/apache/poi/hpsf/NoSingleSectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Property set contains "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sections."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/hpsf/NoSingleSectionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 620
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hpsf/Section;

    return-object v1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 667
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "FIXME: Not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isDocumentSummaryInformation()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 485
    iget-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    move v0, v1

    .line 487
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/Section;

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/Section;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/ClassID;->getBytes()[B

    move-result-object v0

    sget-object v2, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->DOCUMENT_SUMMARY_INFORMATION_ID:[[B

    aget-object v1, v2, v1

    invoke-static {v0, v1}, Lorg/apache/poi/hpsf/Util;->equal([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public isSummaryInformation()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 468
    iget-object v1, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 470
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/Section;

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/Section;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/ClassID;->getBytes()[B

    move-result-object v0

    sget-object v1, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->SUMMARY_INFORMATION_ID:[B

    invoke-static {v0, v1}, Lorg/apache/poi/hpsf/Util;->equal([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x5d

    .line 677
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 678
    .local v0, "b":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSectionCount()I

    move-result v3

    .line 679
    .local v3, "sectionCount":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 680
    const/16 v4, 0x5b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 681
    const-string v4, "byteOrder: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 682
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getByteOrder()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 683
    const-string v4, ", classID: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 684
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 685
    const-string v4, ", format: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 686
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFormat()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 687
    const-string v4, ", OSVersion: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 688
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getOSVersion()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 689
    const-string v4, ", sectionCount: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 690
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 691
    const-string v4, ", sections: [\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 692
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hpsf/Section;

    .line 693
    .local v2, "section":Lorg/apache/poi/hpsf/Section;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 694
    .end local v2    # "section":Lorg/apache/poi/hpsf/Section;
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 695
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 696
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public wasNull()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/NoSingleSectionException;
        }
    .end annotation

    .prologue
    .line 589
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/Section;->wasNull()Z

    move-result v0

    return v0
.end method
