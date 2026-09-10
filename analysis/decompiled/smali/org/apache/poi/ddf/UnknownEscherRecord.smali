.class public final Lorg/apache/poi/ddf/UnknownEscherRecord;
.super Lorg/apache/poi/ddf/EscherRecord;
.source "UnknownEscherRecord.java"


# static fields
.field private static final NO_BYTES:[B


# instance fields
.field private _childRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;"
        }
    .end annotation
.end field

.field private thedata:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/poi/ddf/UnknownEscherRecord;->NO_BYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherRecord;-><init>()V

    .line 38
    sget-object v0, Lorg/apache/poi/ddf/UnknownEscherRecord;->NO_BYTES:[B

    iput-object v0, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->thedata:[B

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->_childRecords:Ljava/util/List;

    .line 43
    return-void
.end method


# virtual methods
.method public addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V
    .locals 1
    .param p1, "childRecord"    # Lorg/apache/poi/ddf/EscherRecord;

    .prologue
    .line 166
    invoke-virtual {p0}, Lorg/apache/poi/ddf/UnknownEscherRecord;->getChildRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Lorg/apache/poi/ddf/EscherRecord;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 8
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "recordFactory"    # Lorg/apache/poi/ddf/EscherRecordFactory;

    .prologue
    const/4 v7, 0x0

    .line 46
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/UnknownEscherRecord;->readHeader([BI)I

    move-result v1

    .line 53
    .local v1, "bytesRemaining":I
    array-length v5, p1

    add-int/lit8 v6, p2, 0x8

    sub-int v0, v5, v6

    .line 54
    .local v0, "avaliable":I
    if-le v1, v0, :cond_0

    .line 55
    move v1, v0

    .line 58
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/UnknownEscherRecord;->isContainerRecord()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 59
    const/4 v2, 0x0

    .line 60
    .local v2, "bytesWritten":I
    new-array v5, v7, [B

    iput-object v5, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->thedata:[B

    .line 61
    add-int/lit8 p2, p2, 0x8

    .line 62
    add-int/lit8 v2, v2, 0x8

    .line 63
    :goto_0
    if-lez v1, :cond_2

    .line 65
    invoke-interface {p3, p1, p2}, Lorg/apache/poi/ddf/EscherRecordFactory;->createRecord([BI)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v3

    .line 66
    .local v3, "child":Lorg/apache/poi/ddf/EscherRecord;
    invoke-virtual {v3, p1, p2, p3}, Lorg/apache/poi/ddf/EscherRecord;->fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I

    move-result v4

    .line 67
    .local v4, "childBytesWritten":I
    add-int/2addr v2, v4

    .line 68
    add-int/2addr p2, v4

    .line 69
    sub-int/2addr v1, v4

    .line 70
    invoke-virtual {p0}, Lorg/apache/poi/ddf/UnknownEscherRecord;->getChildRecords()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    .end local v2    # "bytesWritten":I
    .end local v3    # "child":Lorg/apache/poi/ddf/EscherRecord;
    .end local v4    # "childBytesWritten":I
    :cond_1
    new-array v5, v1, [B

    iput-object v5, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->thedata:[B

    .line 76
    add-int/lit8 v5, p2, 0x8

    iget-object v6, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->thedata:[B

    invoke-static {p1, v5, v6, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    add-int/lit8 v2, v1, 0x8

    :cond_2
    return v2
.end method

.method public getChildRecords()Ljava/util/List;
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
    .line 109
    iget-object v0, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->_childRecords:Ljava/util/List;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->thedata:[B

    return-object v0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/ddf/UnknownEscherRecord;->getRecordId()S

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecordSize()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->thedata:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 8
    .param p1, "offset"    # I
    .param p2, "data"    # [B
    .param p3, "listener"    # Lorg/apache/poi/ddf/EscherSerializationListener;

    .prologue
    .line 81
    invoke-virtual {p0}, Lorg/apache/poi/ddf/UnknownEscherRecord;->getRecordId()S

    move-result v4

    invoke-interface {p3, p1, v4, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    .line 83
    invoke-virtual {p0}, Lorg/apache/poi/ddf/UnknownEscherRecord;->getOptions()S

    move-result v4

    invoke-static {p2, p1, v4}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 84
    add-int/lit8 v4, p1, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/UnknownEscherRecord;->getRecordId()S

    move-result v5

    invoke-static {p2, v4, v5}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 85
    iget-object v4, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->thedata:[B

    array-length v3, v4

    .line 86
    .local v3, "remainingBytes":I
    iget-object v4, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->_childRecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherRecord;

    .line 87
    .local v2, "r":Lorg/apache/poi/ddf/EscherRecord;
    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherRecord;->getRecordSize()I

    move-result v4

    add-int/2addr v3, v4

    .line 88
    goto :goto_0

    .line 89
    .end local v2    # "r":Lorg/apache/poi/ddf/EscherRecord;
    :cond_0
    add-int/lit8 v4, p1, 0x4

    invoke-static {p2, v4, v3}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 90
    iget-object v4, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->thedata:[B

    const/4 v5, 0x0

    add-int/lit8 v6, p1, 0x8

    iget-object v7, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->thedata:[B

    array-length v7, v7

    invoke-static {v4, v5, p2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    add-int/lit8 v4, p1, 0x8

    iget-object v5, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->thedata:[B

    array-length v5, v5

    add-int v1, v4, v5

    .line 92
    .local v1, "pos":I
    iget-object v4, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->_childRecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherRecord;

    .line 93
    .restart local v2    # "r":Lorg/apache/poi/ddf/EscherRecord;
    invoke-virtual {v2, v1, p2, p3}, Lorg/apache/poi/ddf/EscherRecord;->serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I

    move-result v4

    add-int/2addr v1, v4

    .line 94
    goto :goto_1

    .line 96
    .end local v2    # "r":Lorg/apache/poi/ddf/EscherRecord;
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/ddf/UnknownEscherRecord;->getRecordId()S

    move-result v4

    sub-int v5, v1, p1

    invoke-interface {p3, v1, v4, v5, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    .line 97
    sub-int v4, v1, p1

    return v4
.end method

.method public setChildRecords(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "childRecords":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ddf/EscherRecord;>;"
    iput-object p1, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->_childRecords:Ljava/util/List;

    .line 114
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0xa

    .line 126
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 127
    .local v0, "children":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/apache/poi/ddf/UnknownEscherRecord;->getChildRecords()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 128
    const-string v4, "  children: \n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    iget-object v4, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->_childRecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherRecord;

    .line 130
    .local v2, "record":Lorg/apache/poi/ddf/EscherRecord;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 135
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "record":Lorg/apache/poi/ddf/EscherRecord;
    :cond_0
    iget-object v4, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->thedata:[B

    const/16 v5, 0x20

    invoke-static {v4, v5}, Lorg/apache/poi/util/HexDump;->toHex([BI)Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "theDumpHex":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  isContainer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/poi/ddf/UnknownEscherRecord;->isContainerRecord()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  version: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/poi/ddf/UnknownEscherRecord;->getVersion()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  instance: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/poi/ddf/UnknownEscherRecord;->getInstance()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  recordId: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/poi/ddf/UnknownEscherRecord;->getRecordId()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  numchildren: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/poi/ddf/UnknownEscherRecord;->getChildRecords()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public toXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "tab"    # Ljava/lang/String;

    .prologue
    .line 149
    iget-object v4, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->thedata:[B

    const/16 v5, 0x20

    invoke-static {v4, v5}, Lorg/apache/poi/util/HexDump;->toHex([BI)Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, "theDumpHex":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/poi/ddf/UnknownEscherRecord;->getRecordId()S

    move-result v6

    invoke-static {v6}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/poi/ddf/UnknownEscherRecord;->getVersion()S

    move-result v7

    invoke-static {v7}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lorg/apache/poi/ddf/UnknownEscherRecord;->getInstance()S

    move-result v8

    invoke-static {v8}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v5, v6, v7, v8}, Lorg/apache/poi/ddf/UnknownEscherRecord;->formatXmlRecordHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<IsContainer>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/poi/ddf/UnknownEscherRecord;->isContainerRecord()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</IsContainer>\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<Numchildren>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->_childRecords:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</Numchildren>\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget-object v4, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->_childRecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 155
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherRecord;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 157
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherRecord;

    .line 158
    .local v2, "record":Lorg/apache/poi/ddf/EscherRecord;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/poi/ddf/EscherRecord;->toXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 160
    .end local v2    # "record":Lorg/apache/poi/ddf/EscherRecord;
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
