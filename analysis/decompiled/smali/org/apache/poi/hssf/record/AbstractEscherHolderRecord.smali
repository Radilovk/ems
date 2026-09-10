.class public abstract Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;
.super Lorg/apache/poi/hssf/record/Record;
.source "AbstractEscherHolderRecord.java"


# static fields
.field private static DESERIALISE:Z


# instance fields
.field private escherRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;"
        }
    .end annotation
.end field

.field private rawDataContainer:Lorg/apache/poi/hssf/util/LazilyConcatenatedByteArray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    :try_start_0
    const-string v1, "poi.deserialize.escher"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->DESERIALISE:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .local v0, "e":Ljava/lang/SecurityException;
    :goto_1
    return-void

    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    move v1, v2

    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .restart local v0    # "e":Ljava/lang/SecurityException;
    sput-boolean v2, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->DESERIALISE:Z

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/Record;-><init>()V

    .line 50
    new-instance v0, Lorg/apache/poi/hssf/util/LazilyConcatenatedByteArray;

    invoke-direct {v0}, Lorg/apache/poi/hssf/util/LazilyConcatenatedByteArray;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->rawDataContainer:Lorg/apache/poi/hssf/util/LazilyConcatenatedByteArray;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->escherRecords:Ljava/util/List;

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/Record;-><init>()V

    .line 50
    new-instance v1, Lorg/apache/poi/hssf/util/LazilyConcatenatedByteArray;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/LazilyConcatenatedByteArray;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->rawDataContainer:Lorg/apache/poi/hssf/util/LazilyConcatenatedByteArray;

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->escherRecords:Ljava/util/List;

    .line 60
    sget-boolean v1, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->DESERIALISE:Z

    if-nez v1, :cond_0

    .line 61
    iget-object v1, p0, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->rawDataContainer:Lorg/apache/poi/hssf/util/LazilyConcatenatedByteArray;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/util/LazilyConcatenatedByteArray;->concatenate([B)V

    .line 66
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readAllContinuedRemainder()[B

    move-result-object v0

    .line 64
    .local v0, "data":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-direct {p0, v1, v2, v0}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->convertToEscherRecords(II[B)V

    goto :goto_0
.end method

.method private convertToEscherRecords(II[B)V
    .locals 5
    .param p1, "offset"    # I
    .param p2, "size"    # I
    .param p3, "data"    # [B

    .prologue
    .line 76
    iget-object v4, p0, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->escherRecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 77
    new-instance v3, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;

    invoke-direct {v3}, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;-><init>()V

    .line 78
    .local v3, "recordFactory":Lorg/apache/poi/ddf/EscherRecordFactory;
    move v1, p1

    .line 79
    .local v1, "pos":I
    :goto_0
    add-int v4, p1, p2

    if-ge v1, v4, :cond_0

    .line 81
    invoke-interface {v3, p3, v1}, Lorg/apache/poi/ddf/EscherRecordFactory;->createRecord([BI)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v2

    .line 82
    .local v2, "r":Lorg/apache/poi/ddf/EscherRecord;
    invoke-virtual {v2, p3, v1, v3}, Lorg/apache/poi/ddf/EscherRecord;->fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I

    move-result v0

    .line 83
    .local v0, "bytesRead":I
    iget-object v4, p0, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->escherRecords:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    add-int/2addr v1, v0

    .line 85
    goto :goto_0

    .line 86
    .end local v0    # "bytesRead":I
    .end local v2    # "r":Lorg/apache/poi/ddf/EscherRecord;
    :cond_0
    return-void
.end method

.method private findFirstWithId(SLjava/util/List;)Lorg/apache/poi/ddf/EscherRecord;
    .locals 4
    .param p1, "id"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;)",
            "Lorg/apache/poi/ddf/EscherRecord;"
        }
    .end annotation

    .prologue
    .line 201
    .local p2, "records":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ddf/EscherRecord;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherRecord;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 202
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherRecord;

    .line 203
    .local v2, "r":Lorg/apache/poi/ddf/EscherRecord;
    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v3

    if-ne v3, p1, :cond_0

    .line 220
    .end local v2    # "r":Lorg/apache/poi/ddf/EscherRecord;
    :goto_0
    return-object v2

    .line 209
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 210
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherRecord;

    .line 211
    .restart local v2    # "r":Lorg/apache/poi/ddf/EscherRecord;
    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherRecord;->isContainerRecord()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 212
    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherRecord;->getChildRecords()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->findFirstWithId(SLjava/util/List;)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    .line 213
    .local v0, "found":Lorg/apache/poi/ddf/EscherRecord;
    if-eqz v0, :cond_2

    move-object v2, v0

    .line 214
    goto :goto_0

    .line 220
    .end local v0    # "found":Lorg/apache/poi/ddf/EscherRecord;
    .end local v2    # "r":Lorg/apache/poi/ddf/EscherRecord;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addEscherRecord(ILorg/apache/poi/ddf/EscherRecord;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "element"    # Lorg/apache/poi/ddf/EscherRecord;

    .prologue
    .line 158
    iget-object v0, p0, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->escherRecords:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 159
    return-void
.end method

.method public addEscherRecord(Lorg/apache/poi/ddf/EscherRecord;)Z
    .locals 1
    .param p1, "element"    # Lorg/apache/poi/ddf/EscherRecord;

    .prologue
    .line 163
    iget-object v0, p0, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->escherRecords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public clearEscherRecords()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->escherRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 174
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->cloneViaReserialise()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    return-object v0
.end method

.method protected convertRawBytesToEscherRecords()V
    .locals 3

    .prologue
    .line 69
    sget-boolean v1, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->DESERIALISE:Z

    if-nez v1, :cond_0

    .line 70
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->getRawData()[B

    move-result-object v0

    .line 71
    .local v0, "rawData":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-direct {p0, v1, v2, v0}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->convertToEscherRecords(II[B)V

    .line 73
    .end local v0    # "rawData":[B
    :cond_0
    return-void
.end method

.method public decode()V
    .locals 3

    .prologue
    .line 259
    iget-object v1, p0, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->escherRecords:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->escherRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 260
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->getRawData()[B

    move-result-object v0

    .line 261
    .local v0, "rawData":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-direct {p0, v1, v2, v0}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->convertToEscherRecords(II[B)V

    .line 263
    .end local v0    # "rawData":[B
    :cond_1
    return-void
.end method

.method public findFirstWithId(S)Lorg/apache/poi/ddf/EscherRecord;
    .locals 1
    .param p1, "id"    # S

    .prologue
    .line 197
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->getEscherRecords()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->findFirstWithId(SLjava/util/List;)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    return-object v0
.end method

.method public getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;
    .locals 3

    .prologue
    .line 182
    iget-object v2, p0, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->escherRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherRecord;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 183
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherRecord;

    .line 184
    .local v0, "er":Lorg/apache/poi/ddf/EscherRecord;
    instance-of v2, v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    if-eqz v2, :cond_0

    .line 185
    check-cast v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    .line 188
    .end local v0    # "er":Lorg/apache/poi/ddf/EscherRecord;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEscherRecord(I)Lorg/apache/poi/ddf/EscherRecord;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 226
    iget-object v0, p0, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->escherRecords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherRecord;

    return-object v0
.end method

.method public getEscherRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->escherRecords:Ljava/util/List;

    return-object v0
.end method

.method public getRawData()[B
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->rawDataContainer:Lorg/apache/poi/hssf/util/LazilyConcatenatedByteArray;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/LazilyConcatenatedByteArray;->toArray()[B

    move-result-object v0

    return-object v0
.end method

.method protected abstract getRecordName()Ljava/lang/String;
.end method

.method public getRecordSize()I
    .locals 5

    .prologue
    .line 133
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->getRawData()[B

    move-result-object v2

    .line 134
    .local v2, "rawData":[B
    iget-object v4, p0, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->escherRecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    if-eqz v2, :cond_1

    .line 136
    array-length v3, v2

    .line 144
    :cond_0
    return v3

    .line 138
    :cond_1
    const/4 v3, 0x0

    .line 139
    .local v3, "size":I
    iget-object v4, p0, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->escherRecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherRecord;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 141
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherRecord;

    .line 142
    .local v1, "r":Lorg/apache/poi/ddf/EscherRecord;
    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherRecord;->getRecordSize()I

    move-result v4

    add-int/2addr v3, v4

    .line 143
    goto :goto_0
.end method

.method public abstract getSid()S
.end method

.method public join(Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;)V
    .locals 2
    .param p1, "record"    # Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;

    .prologue
    .line 235
    iget-object v0, p0, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->rawDataContainer:Lorg/apache/poi/hssf/util/LazilyConcatenatedByteArray;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->getRawData()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/util/LazilyConcatenatedByteArray;->concatenate([B)V

    .line 236
    return-void
.end method

.method public processContinueRecord([B)V
    .locals 1
    .param p1, "record"    # [B

    .prologue
    .line 240
    iget-object v0, p0, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->rawDataContainer:Lorg/apache/poi/hssf/util/LazilyConcatenatedByteArray;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/util/LazilyConcatenatedByteArray;->concatenate([B)V

    .line 241
    return-void
.end method

.method public serialize(I[B)I
    .locals 7
    .param p1, "offset"    # I
    .param p2, "data"    # [B

    .prologue
    .line 110
    add-int/lit8 v4, p1, 0x0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->getSid()S

    move-result v5

    invoke-static {p2, v4, v5}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 111
    add-int/lit8 v4, p1, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->getRecordSize()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    int-to-short v5, v5

    invoke-static {p2, v4, v5}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 112
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->getRawData()[B

    move-result-object v3

    .line 113
    .local v3, "rawData":[B
    iget-object v4, p0, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->escherRecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    if-eqz v3, :cond_0

    .line 115
    add-int/lit8 v4, p1, 0x0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->getSid()S

    move-result v5

    invoke-static {p2, v4, v5}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 116
    add-int/lit8 v4, p1, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->getRecordSize()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    int-to-short v5, v5

    invoke-static {p2, v4, v5}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 117
    const/4 v4, 0x0

    add-int/lit8 v5, p1, 0x4

    array-length v6, v3

    invoke-static {v3, v4, p2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    array-length v4, v3

    add-int/lit8 v4, v4, 0x4

    .line 129
    :goto_0
    return v4

    .line 120
    :cond_0
    add-int/lit8 v4, p1, 0x0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->getSid()S

    move-result v5

    invoke-static {p2, v4, v5}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 121
    add-int/lit8 v4, p1, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->getRecordSize()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    int-to-short v5, v5

    invoke-static {p2, v4, v5}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 123
    add-int/lit8 v1, p1, 0x4

    .line 124
    .local v1, "pos":I
    iget-object v4, p0, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->escherRecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherRecord;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 126
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherRecord;

    .line 127
    .local v2, "r":Lorg/apache/poi/ddf/EscherRecord;
    new-instance v4, Lorg/apache/poi/ddf/NullEscherSerializationListener;

    invoke-direct {v4}, Lorg/apache/poi/ddf/NullEscherSerializationListener;-><init>()V

    invoke-virtual {v2, v1, p2, v4}, Lorg/apache/poi/ddf/EscherRecord;->serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I

    move-result v4

    add-int/2addr v1, v4

    .line 128
    goto :goto_1

    .line 129
    .end local v2    # "r":Lorg/apache/poi/ddf/EscherRecord;
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->getRecordSize()I

    move-result v4

    goto :goto_0
.end method

.method public setRawData([B)V
    .locals 1
    .param p1, "rawData"    # [B

    .prologue
    .line 250
    iget-object v0, p0, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->rawDataContainer:Lorg/apache/poi/hssf/util/LazilyConcatenatedByteArray;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/LazilyConcatenatedByteArray;->clear()V

    .line 251
    iget-object v0, p0, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->rawDataContainer:Lorg/apache/poi/hssf/util/LazilyConcatenatedByteArray;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/util/LazilyConcatenatedByteArray;->concatenate([B)V

    .line 252
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x5d

    .line 90
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 92
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v4, "line.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "nl":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x5b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->getRecordName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    iget-object v4, p0, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->escherRecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No Escher Records Decoded"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    :cond_0
    iget-object v4, p0, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->escherRecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherRecord;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 98
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ddf/EscherRecord;

    .line 99
    .local v3, "r":Lorg/apache/poi/ddf/EscherRecord;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 101
    .end local v3    # "r":Lorg/apache/poi/ddf/EscherRecord;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->getRecordName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
