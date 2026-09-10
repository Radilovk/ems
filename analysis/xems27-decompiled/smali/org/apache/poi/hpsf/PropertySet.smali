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
            "Ljava/util/List<",
            "Lorg/apache/poi/hpsf/Section;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 67
    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/poi/hpsf/PropertySet;->BYTE_ORDER_ASSERTION:[B

    .line 92
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/poi/hpsf/PropertySet;->FORMAT_ASSERTION:[B

    return-void

    :array_0
    .array-data 1
        -0x2t
        -0x1t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 0

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

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    invoke-static {p1}, Lorg/apache/poi/hpsf/PropertySet;->isPropertySetStream(Ljava/io/InputStream;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 244
    .local v0, "avail":I
    new-array v1, v0, [B

    .line 245
    .local v1, "buffer":[B
    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    .line 246
    array-length v2, v1

    invoke-direct {p0, v1, v3, v2}, Lorg/apache/poi/hpsf/PropertySet;->init([BII)V

    .line 247
    .end local v0    # "avail":I
    .end local v1    # "buffer":[B
    nop

    .line 250
    return-void

    .line 249
    :cond_0
    new-instance v0, Lorg/apache/poi/hpsf/NoPropertySetStreamException;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/NoPropertySetStreamException;-><init>()V

    throw v0
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

    .line 295
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/poi/hpsf/PropertySet;-><init>([BII)V

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
    .locals 5
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 415
    move v0, p2

    .line 416
    .local v0, "o":I
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hpsf/PropertySet;->byteOrder:I

    .line 417
    add-int/lit8 v0, v0, 0x2

    .line 418
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hpsf/PropertySet;->format:I

    .line 419
    add-int/lit8 v0, v0, 0x2

    .line 420
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v1

    long-to-int v2, v1

    iput v2, p0, Lorg/apache/poi/hpsf/PropertySet;->osVersion:I

    .line 421
    add-int/lit8 v0, v0, 0x4

    .line 422
    new-instance v1, Lorg/apache/poi/hpsf/ClassID;

    invoke-direct {v1, p1, v0}, Lorg/apache/poi/hpsf/ClassID;-><init>([BI)V

    iput-object v1, p0, Lorg/apache/poi/hpsf/PropertySet;->classID:Lorg/apache/poi/hpsf/ClassID;

    .line 423
    add-int/lit8 v0, v0, 0x10

    .line 424
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v1

    .line 425
    .local v1, "sectionCount":I
    add-int/lit8 v0, v0, 0x4

    .line 426
    if-ltz v1, :cond_1

    .line 442
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    .line 449
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 451
    new-instance v3, Lorg/apache/poi/hpsf/Section;

    invoke-direct {v3, p1, v0}, Lorg/apache/poi/hpsf/Section;-><init>([BI)V

    .line 452
    .local v3, "s":Lorg/apache/poi/hpsf/Section;
    add-int/lit8 v0, v0, 0x14

    .line 453
    iget-object v4, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    .end local v3    # "s":Lorg/apache/poi/hpsf/Section;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 455
    .end local v2    # "i":I
    :cond_0
    return-void

    .line 427
    :cond_1
    new-instance v2, Lorg/apache/poi/hpsf/HPSFRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Section count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is negative."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/hpsf/HPSFRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static isPropertySetStream(Ljava/io/InputStream;)Z
    .locals 4
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/MarkUnsupportedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    const/16 v0, 0x32

    .line 328
    .local v0, "BUFFER_SIZE":I
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    const/16 v1, 0x32

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 335
    new-array v1, v1, [B

    .line 336
    .local v1, "buffer":[B
    array-length v2, v1

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 339
    .local v2, "bytes":I
    invoke-static {v1, v3, v2}, Lorg/apache/poi/hpsf/PropertySet;->isPropertySetStream([BII)Z

    move-result v3

    .line 341
    .local v3, "isPropertySetStream":Z
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 342
    return v3

    .line 329
    .end local v1    # "buffer":[B
    .end local v2    # "bytes":I
    .end local v3    # "isPropertySetStream":Z
    :cond_0
    new-instance v1, Lorg/apache/poi/hpsf/MarkUnsupportedException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/hpsf/MarkUnsupportedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static isPropertySetStream([BII)Z
    .locals 10
    .param p0, "src"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 368
    move v0, p1

    .line 369
    .local v0, "o":I
    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v1

    .line 370
    .local v1, "byteOrder":I
    const/4 v2, 0x2

    add-int/2addr v0, v2

    .line 371
    new-array v3, v2, [B

    .line 372
    .local v3, "temp":[B
    int-to-short v4, v1

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 373
    sget-object v4, Lorg/apache/poi/hpsf/PropertySet;->BYTE_ORDER_ASSERTION:[B

    invoke-static {v3, v4}, Lorg/apache/poi/hpsf/Util;->equal([B[B)Z

    move-result v4

    if-nez v4, :cond_0

    .line 374
    return v5

    .line 375
    :cond_0
    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v4

    .line 376
    .local v4, "format":I
    add-int/2addr v0, v2

    .line 377
    new-array v2, v2, [B

    .line 378
    .end local v3    # "temp":[B
    .local v2, "temp":[B
    int-to-short v3, v4

    invoke-static {v2, v5, v3}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 379
    sget-object v3, Lorg/apache/poi/hpsf/PropertySet;->FORMAT_ASSERTION:[B

    invoke-static {v2, v3}, Lorg/apache/poi/hpsf/Util;->equal([B[B)Z

    move-result v3

    if-nez v3, :cond_1

    .line 380
    return v5

    .line 382
    :cond_1
    add-int/lit8 v0, v0, 0x4

    .line 384
    add-int/lit8 v0, v0, 0x10

    .line 385
    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v6

    .line 386
    .local v6, "sectionCount":J
    add-int/lit8 v0, v0, 0x4

    .line 387
    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-gez v3, :cond_2

    .line 388
    return v5

    .line 389
    :cond_2
    const/4 v3, 0x1

    return v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 13
    .param p1, "o"    # Ljava/lang/Object;

    .line 636
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    instance-of v1, p1, Lorg/apache/poi/hpsf/PropertySet;

    if-nez v1, :cond_0

    goto :goto_1

    .line 638
    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/apache/poi/hpsf/PropertySet;

    .line 639
    .local v1, "ps":Lorg/apache/poi/hpsf/PropertySet;
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/PropertySet;->getByteOrder()I

    move-result v2

    .line 640
    .local v2, "byteOrder1":I
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getByteOrder()I

    move-result v3

    .line 641
    .local v3, "byteOrder2":I
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/PropertySet;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v4

    .line 642
    .local v4, "classID1":Lorg/apache/poi/hpsf/ClassID;
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v5

    .line 643
    .local v5, "classID2":Lorg/apache/poi/hpsf/ClassID;
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/PropertySet;->getFormat()I

    move-result v6

    .line 644
    .local v6, "format1":I
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFormat()I

    move-result v7

    .line 645
    .local v7, "format2":I
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/PropertySet;->getOSVersion()I

    move-result v8

    .line 646
    .local v8, "osVersion1":I
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getOSVersion()I

    move-result v9

    .line 647
    .local v9, "osVersion2":I
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/PropertySet;->getSectionCount()I

    move-result v10

    .line 648
    .local v10, "sectionCount1":I
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSectionCount()I

    move-result v11

    .line 649
    .local v11, "sectionCount2":I
    if-ne v2, v3, :cond_2

    invoke-virtual {v4, v5}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    if-ne v6, v7, :cond_2

    if-ne v8, v9, :cond_2

    if-eq v10, v11, :cond_1

    goto :goto_0

    .line 657
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSections()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1}, Lorg/apache/poi/hpsf/PropertySet;->getSections()Ljava/util/List;

    move-result-object v12

    invoke-static {v0, v12}, Lorg/apache/poi/hpsf/Util;->equals(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    return v0

    .line 654
    :cond_2
    :goto_0
    return v0

    .line 637
    .end local v1    # "ps":Lorg/apache/poi/hpsf/PropertySet;
    .end local v2    # "byteOrder1":I
    .end local v3    # "byteOrder2":I
    .end local v4    # "classID1":Lorg/apache/poi/hpsf/ClassID;
    .end local v5    # "classID2":Lorg/apache/poi/hpsf/ClassID;
    .end local v6    # "format1":I
    .end local v7    # "format2":I
    .end local v8    # "osVersion1":I
    .end local v9    # "osVersion2":I
    .end local v10    # "sectionCount1":I
    .end local v11    # "sectionCount2":I
    :cond_3
    :goto_1
    return v0
.end method

.method public getByteOrder()I
    .locals 1

    .line 84
    iget v0, p0, Lorg/apache/poi/hpsf/PropertySet;->byteOrder:I

    return v0
.end method

.method public getClassID()Lorg/apache/poi/hpsf/ClassID;
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->classID:Lorg/apache/poi/hpsf/ClassID;

    return-object v0
.end method

.method public getFirstSection()Lorg/apache/poi/hpsf/Section;
    .locals 2

    .line 601
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSectionCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 603
    iget-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/Section;

    return-object v0

    .line 602
    :cond_0
    new-instance v0, Lorg/apache/poi/hpsf/MissingSectionException;

    const-string v1, "Property set does not contain any sections."

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/MissingSectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFormat()I
    .locals 1

    .line 109
    iget v0, p0, Lorg/apache/poi/hpsf/PropertySet;->format:I

    return v0
.end method

.method public getOSVersion()I
    .locals 1

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

    .line 508
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/Section;->getProperties()[Lorg/apache/poi/hpsf/Property;

    move-result-object v0

    return-object v0
.end method

.method protected getProperty(I)Ljava/lang/Object;
    .locals 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/NoSingleSectionException;
        }
    .end annotation

    .line 526
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/Section;->getProperty(J)Ljava/lang/Object;

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

    .line 547
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hpsf/Section;->getPropertyBooleanValue(I)Z

    move-result v0

    return v0
.end method

.method protected getPropertyIntValue(I)I
    .locals 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/NoSingleSectionException;
        }
    .end annotation

    .line 567
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/Section;->getPropertyIntValue(J)I

    move-result v0

    return v0
.end method

.method public getSectionCount()I
    .locals 1

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
            "Ljava/util/List<",
            "Lorg/apache/poi/hpsf/Section;",
            ">;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    return-object v0
.end method

.method public getSingleSection()Lorg/apache/poi/hpsf/Section;
    .locals 4

    .line 616
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSectionCount()I

    move-result v0

    .line 617
    .local v0, "sectionCount":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 620
    iget-object v1, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hpsf/Section;

    return-object v1

    .line 618
    :cond_0
    new-instance v1, Lorg/apache/poi/hpsf/NoSingleSectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Property set contains "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sections."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/hpsf/NoSingleSectionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hashCode()I
    .locals 2

    .line 667
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "FIXME: Not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isDocumentSummaryInformation()Z
    .locals 3

    .line 485
    iget-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 486
    return v1

    .line 487
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

    return v0
.end method

.method public isSummaryInformation()Z
    .locals 2

    .line 468
    iget-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 469
    return v1

    .line 470
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/Section;

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/Section;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/ClassID;->getBytes()[B

    move-result-object v0

    sget-object v1, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->SUMMARY_INFORMATION_ID:[B

    invoke-static {v0, v1}, Lorg/apache/poi/hpsf/Util;->equal([B[B)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 677
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 678
    .local v0, "b":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSectionCount()I

    move-result v1

    .line 679
    .local v1, "sectionCount":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 680
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 681
    const-string v2, "byteOrder: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 682
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getByteOrder()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 683
    const-string v2, ", classID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 684
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 685
    const-string v2, ", format: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 686
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFormat()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 687
    const-string v2, ", OSVersion: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 688
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getOSVersion()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 689
    const-string v2, ", sectionCount: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 690
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 691
    const-string v2, ", sections: [\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 692
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hpsf/Section;

    .line 693
    .local v3, "section":Lorg/apache/poi/hpsf/Section;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 694
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "section":Lorg/apache/poi/hpsf/Section;
    :cond_0
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 695
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 696
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public wasNull()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/NoSingleSectionException;
        }
    .end annotation

    .line 589
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/Section;->wasNull()Z

    move-result v0

    return v0
.end method
