.class public Lorg/apache/poi/ddf/EscherTextboxRecord;
.super Lorg/apache/poi/ddf/EscherRecord;
.source "EscherTextboxRecord.java"


# static fields
.field private static final NO_BYTES:[B

.field public static final RECORD_DESCRIPTION:Ljava/lang/String; = "msofbtClientTextbox"

.field public static final RECORD_ID:S = -0xff3s


# instance fields
.field private thedata:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/poi/ddf/EscherTextboxRecord;->NO_BYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherRecord;-><init>()V

    .line 41
    sget-object v0, Lorg/apache/poi/ddf/EscherTextboxRecord;->NO_BYTES:[B

    iput-object v0, p0, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

    .line 45
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Lorg/apache/poi/ddf/EscherRecord;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 4
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "recordFactory"    # Lorg/apache/poi/ddf/EscherRecordFactory;

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherTextboxRecord;->readHeader([BI)I

    move-result v0

    .line 52
    .local v0, "bytesRemaining":I
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

    .line 53
    add-int/lit8 v1, p2, 0x8

    iget-object v2, p0, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    add-int/lit8 v1, v0, 0x8

    return v1
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

    return-object v0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const-string v0, "ClientTextbox"

    return-object v0
.end method

.method public getRecordSize()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 7
    .param p1, "offset"    # I
    .param p2, "data"    # [B
    .param p3, "listener"    # Lorg/apache/poi/ddf/EscherSerializationListener;

    .prologue
    .line 59
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherTextboxRecord;->getRecordId()S

    move-result v3

    invoke-interface {p3, p1, v3, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    .line 61
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherTextboxRecord;->getOptions()S

    move-result v3

    invoke-static {p2, p1, v3}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 62
    add-int/lit8 v3, p1, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherTextboxRecord;->getRecordId()S

    move-result v4

    invoke-static {p2, v3, v4}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 63
    iget-object v3, p0, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

    array-length v1, v3

    .line 64
    .local v1, "remainingBytes":I
    add-int/lit8 v3, p1, 0x4

    invoke-static {p2, v3, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 65
    iget-object v3, p0, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

    const/4 v4, 0x0

    add-int/lit8 v5, p1, 0x8

    iget-object v6, p0, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

    array-length v6, v6

    invoke-static {v3, v4, p2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    add-int/lit8 v3, p1, 0x8

    iget-object v4, p0, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

    array-length v4, v4

    add-int v0, v3, v4

    .line 68
    .local v0, "pos":I
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherTextboxRecord;->getRecordId()S

    move-result v3

    sub-int v4, v0, p1

    invoke-interface {p3, v0, v3, v4, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    .line 69
    sub-int v2, v0, p1

    .line 70
    .local v2, "size":I
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherTextboxRecord;->getRecordSize()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 71
    new-instance v3, Lorg/apache/poi/util/RecordFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes written but getRecordSize() reports "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherTextboxRecord;->getRecordSize()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 72
    :cond_0
    return v2
.end method

.method public setData([B)V
    .locals 2
    .param p1, "b"    # [B

    .prologue
    .line 97
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/poi/ddf/EscherTextboxRecord;->setData([BII)V

    .line 98
    return-void
.end method

.method public setData([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 93
    new-array v0, p3, [B

    iput-object v0, p0, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

    .line 94
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 117
    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "nl":Ljava/lang/String;
    const-string v2, ""

    .line 122
    .local v2, "theDumpHex":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

    array-length v3, v3

    if-eqz v3, :cond_0

    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Extra Data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    invoke-static {v4, v6, v7, v5}, Lorg/apache/poi/util/HexDump;->dump([BJI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 133
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  isContainer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherTextboxRecord;->isContainerRecord()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  version: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherTextboxRecord;->getVersion()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  instance: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherTextboxRecord;->getInstance()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  recordId: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherTextboxRecord;->getRecordId()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  numchildren: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherTextboxRecord;->getChildRecords()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 128
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Error!!"

    goto/16 :goto_0
.end method

.method public toXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "tab"    # Ljava/lang/String;

    .prologue
    .line 144
    const-string v2, ""

    .line 147
    .local v2, "theDumpHex":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

    array-length v3, v3

    if-eqz v3, :cond_0

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    invoke-static {v4, v6, v7, v5}, Lorg/apache/poi/util/HexDump;->dump([BJI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 156
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherTextboxRecord;->getRecordId()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherTextboxRecord;->getVersion()S

    move-result v6

    invoke-static {v6}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherTextboxRecord;->getInstance()S

    move-result v7

    invoke-static {v7}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v4, v5, v6, v7}, Lorg/apache/poi/ddf/EscherTextboxRecord;->formatXmlRecordHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<ExtraData>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</ExtraData>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 152
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    .line 154
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Error!!"

    goto :goto_0
.end method
