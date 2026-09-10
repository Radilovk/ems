.class public final Lorg/apache/poi/hssf/record/DrawingGroupRecord;
.super Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;
.source "DrawingGroupRecord.java"


# static fields
.field private static final MAX_DATA_SIZE:I = 0x2020

.field static final MAX_RECORD_SIZE:I = 0x2024

.field public static final sid:S = 0xebs


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 0
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 40
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 41
    return-void
.end method

.method private getRawDataSize()I
    .locals 6

    .line 87
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->getEscherRecords()Ljava/util/List;

    move-result-object v0

    .line 88
    .local v0, "escherRecords":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ddf/EscherRecord;>;"
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->getRawData()[B

    move-result-object v1

    .line 89
    .local v1, "rawData":[B
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 91
    array-length v2, v1

    return v2

    .line 93
    :cond_0
    const/4 v2, 0x0

    .line 94
    .local v2, "size":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherRecord;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 96
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ddf/EscherRecord;

    .line 97
    .local v4, "r":Lorg/apache/poi/ddf/EscherRecord;
    invoke-virtual {v4}, Lorg/apache/poi/ddf/EscherRecord;->getRecordSize()I

    move-result v5

    add-int/2addr v2, v5

    .line 98
    .end local v4    # "r":Lorg/apache/poi/ddf/EscherRecord;
    goto :goto_0

    .line 99
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherRecord;>;"
    :cond_1
    return v2
.end method

.method static grossSizeFromDataSize(I)I
    .locals 1
    .param p0, "dataSize"    # I

    .line 104
    add-int/lit8 v0, p0, -0x1

    div-int/lit16 v0, v0, 0x2020

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p0

    return v0
.end method

.method private writeContinueHeader([BII)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "sizeExcludingHeader"    # I

    .line 136
    add-int/lit8 v0, p2, 0x0

    const/16 v1, 0x3c

    invoke-static {p1, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 137
    add-int/lit8 v0, p2, 0x2

    int-to-short v1, p3

    invoke-static {p1, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 138
    return-void
.end method

.method private writeData(I[B[B)I
    .locals 5
    .param p1, "offset"    # I
    .param p2, "data"    # [B
    .param p3, "rawData"    # [B

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "writtenActualData":I
    const/4 v1, 0x0

    .line 111
    .local v1, "writtenRawData":I
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_1

    .line 113
    array-length v2, p3

    sub-int/2addr v2, v1

    const/16 v3, 0x2020

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 114
    .local v2, "segmentLength":I
    div-int/lit16 v3, v1, 0x2020

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 115
    invoke-direct {p0, p2, p1, v2}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->writeContinueHeader([BII)V

    goto :goto_1

    .line 117
    :cond_0
    invoke-direct {p0, p2, p1, v2}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->writeHeader([BII)V

    .line 118
    :goto_1
    add-int/lit8 v0, v0, 0x4

    .line 119
    add-int/lit8 p1, p1, 0x4

    .line 120
    invoke-static {p3, v1, p2, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    add-int/2addr p1, v2

    .line 122
    add-int/2addr v1, v2

    .line 123
    add-int/2addr v0, v2

    .line 124
    .end local v2    # "segmentLength":I
    goto :goto_0

    .line 125
    :cond_1
    return v0
.end method

.method private writeHeader([BII)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "sizeExcludingHeader"    # I

    .line 130
    add-int/lit8 v0, p2, 0x0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->getSid()S

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 131
    add-int/lit8 v0, p2, 0x2

    int-to-short v1, p3

    invoke-static {p1, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 132
    return-void
.end method


# virtual methods
.method protected getRecordName()Ljava/lang/String;
    .locals 1

    .line 45
    const-string v0, "MSODRAWINGGROUP"

    return-object v0
.end method

.method public getRecordSize()I
    .locals 1

    .line 83
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->getRawDataSize()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->grossSizeFromDataSize(I)I

    move-result v0

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 50
    const/16 v0, 0xeb

    return v0
.end method

.method public processChildRecords()V
    .locals 0

    .line 78
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->convertRawBytesToEscherRecords()V

    .line 79
    return-void
.end method

.method public serialize(I[B)I
    .locals 6
    .param p1, "offset"    # I
    .param p2, "data"    # [B

    .line 55
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->getRawData()[B

    move-result-object v0

    .line 56
    .local v0, "rawData":[B
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->getEscherRecords()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 58
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->writeData(I[B[B)I

    move-result v1

    return v1

    .line 60
    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->getRawDataSize()I

    move-result v1

    new-array v1, v1, [B

    .line 61
    .local v1, "buffer":[B
    const/4 v2, 0x0

    .line 62
    .local v2, "pos":I
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->getEscherRecords()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherRecord;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 64
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ddf/EscherRecord;

    .line 65
    .local v4, "r":Lorg/apache/poi/ddf/EscherRecord;
    new-instance v5, Lorg/apache/poi/ddf/NullEscherSerializationListener;

    invoke-direct {v5}, Lorg/apache/poi/ddf/NullEscherSerializationListener;-><init>()V

    invoke-virtual {v4, v2, v1, v5}, Lorg/apache/poi/ddf/EscherRecord;->serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I

    move-result v5

    add-int/2addr v2, v5

    .line 66
    .end local v4    # "r":Lorg/apache/poi/ddf/EscherRecord;
    goto :goto_0

    .line 68
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherRecord;>;"
    :cond_1
    invoke-direct {p0, p1, p2, v1}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->writeData(I[B[B)I

    move-result v3

    return v3
.end method
