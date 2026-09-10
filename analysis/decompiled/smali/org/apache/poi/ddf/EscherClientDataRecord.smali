.class public Lorg/apache/poi/ddf/EscherClientDataRecord;
.super Lorg/apache/poi/ddf/EscherRecord;
.source "EscherClientDataRecord.java"


# static fields
.field public static final RECORD_DESCRIPTION:Ljava/lang/String; = "MsofbtClientData"

.field public static final RECORD_ID:S = -0xfefs


# instance fields
.field private remainingData:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherRecord;-><init>()V

    return-void
.end method


# virtual methods
.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 4
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "recordFactory"    # Lorg/apache/poi/ddf/EscherRecordFactory;

    .prologue
    .line 41
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherClientDataRecord;->readHeader([BI)I

    move-result v0

    .line 42
    .local v0, "bytesRemaining":I
    add-int/lit8 v1, p2, 0x8

    .line 43
    .local v1, "pos":I
    new-array v2, v0, [B

    iput-object v2, p0, Lorg/apache/poi/ddf/EscherClientDataRecord;->remainingData:[B

    .line 44
    iget-object v2, p0, Lorg/apache/poi/ddf/EscherClientDataRecord;->remainingData:[B

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    add-int/lit8 v2, v0, 0x8

    return v2
.end method

.method public getRecordId()S
    .locals 1

    .prologue
    .line 68
    const/16 v0, -0xfef

    return v0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "ClientData"

    return-object v0
.end method

.method public getRecordSize()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherClientDataRecord;->remainingData:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x8

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherClientDataRecord;->remainingData:[B

    array-length v0, v0

    goto :goto_0
.end method

.method public getRemainingData()[B
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherClientDataRecord;->remainingData:[B

    return-object v0
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 5
    .param p1, "offset"    # I
    .param p2, "data"    # [B
    .param p3, "listener"    # Lorg/apache/poi/ddf/EscherSerializationListener;

    .prologue
    const/4 v4, 0x0

    .line 49
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherClientDataRecord;->getRecordId()S

    move-result v1

    invoke-interface {p3, p1, v1, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    .line 51
    iget-object v1, p0, Lorg/apache/poi/ddf/EscherClientDataRecord;->remainingData:[B

    if-nez v1, :cond_0

    new-array v1, v4, [B

    iput-object v1, p0, Lorg/apache/poi/ddf/EscherClientDataRecord;->remainingData:[B

    .line 52
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherClientDataRecord;->getOptions()S

    move-result v1

    invoke-static {p2, p1, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 53
    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherClientDataRecord;->getRecordId()S

    move-result v2

    invoke-static {p2, v1, v2}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 54
    add-int/lit8 v1, p1, 0x4

    iget-object v2, p0, Lorg/apache/poi/ddf/EscherClientDataRecord;->remainingData:[B

    array-length v2, v2

    invoke-static {p2, v1, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 55
    iget-object v1, p0, Lorg/apache/poi/ddf/EscherClientDataRecord;->remainingData:[B

    add-int/lit8 v2, p1, 0x8

    iget-object v3, p0, Lorg/apache/poi/ddf/EscherClientDataRecord;->remainingData:[B

    array-length v3, v3

    invoke-static {v1, v4, p2, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    add-int/lit8 v1, p1, 0x8

    iget-object v2, p0, Lorg/apache/poi/ddf/EscherClientDataRecord;->remainingData:[B

    array-length v2, v2

    add-int v0, v1, v2

    .line 58
    .local v0, "pos":I
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherClientDataRecord;->getRecordId()S

    move-result v1

    sub-int v2, v0, p1

    invoke-interface {p3, v0, v1, v2, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    .line 59
    sub-int v1, v0, p1

    return v1
.end method

.method public setRemainingData([B)V
    .locals 0
    .param p1, "remainingData"    # [B

    .prologue
    .line 139
    iput-object p1, p0, Lorg/apache/poi/ddf/EscherClientDataRecord;->remainingData:[B

    .line 140
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 80
    const-string v4, "line.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, "nl":Ljava/lang/String;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 86
    .local v0, "b":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    iget-object v4, p0, Lorg/apache/poi/ddf/EscherClientDataRecord;->remainingData:[B

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    invoke-static {v4, v6, v7, v0, v5}, Lorg/apache/poi/util/HexDump;->dump([BJLjava/io/OutputStream;I)V

    .line 87
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 93
    .local v2, "extraData":Ljava/lang/String;
    :goto_0
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

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  RecordId: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, -0xfef

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  Version: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherClientDataRecord;->getVersion()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  Instance: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherClientDataRecord;->getInstance()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  Extra Data:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 89
    .end local v2    # "extraData":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "error\n"

    .restart local v2    # "extraData":Ljava/lang/String;
    goto :goto_0
.end method

.method public toXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "tab"    # Ljava/lang/String;

    .prologue
    .line 105
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 108
    .local v0, "b":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    iget-object v4, p0, Lorg/apache/poi/ddf/EscherClientDataRecord;->remainingData:[B

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    invoke-static {v4, v6, v7, v0, v5}, Lorg/apache/poi/util/HexDump;->dump([BJLjava/io/OutputStream;I)V

    .line 109
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 115
    .local v3, "extraData":Ljava/lang/String;
    :goto_0
    const-string v4, "No Data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 116
    const-string v3, "No Data"

    .line 118
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherClientDataRecord;->getRecordId()S

    move-result v6

    invoke-static {v6}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherClientDataRecord;->getVersion()S

    move-result v7

    invoke-static {v7}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherClientDataRecord;->getInstance()S

    move-result v8

    invoke-static {v8}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v5, v6, v7, v8}, Lorg/apache/poi/ddf/EscherClientDataRecord;->formatXmlRecordHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<ExtraData>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</ExtraData>\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 111
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "extraData":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 113
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "error"

    .restart local v3    # "extraData":Ljava/lang/String;
    goto :goto_0
.end method
