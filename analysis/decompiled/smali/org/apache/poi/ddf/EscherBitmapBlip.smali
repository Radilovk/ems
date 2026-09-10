.class public Lorg/apache/poi/ddf/EscherBitmapBlip;
.super Lorg/apache/poi/ddf/EscherBlipRecord;
.source "EscherBitmapBlip.java"


# static fields
.field private static final HEADER_SIZE:I = 0x8

.field public static final RECORD_ID_DIB:S = -0xfe1s

.field public static final RECORD_ID_JPEG:S = -0xfe3s

.field public static final RECORD_ID_PNG:S = -0xfe2s


# instance fields
.field private field_1_UID:[B

.field private field_2_marker:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherBlipRecord;-><init>()V

    .line 36
    const/4 v0, -0x1

    iput-byte v0, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_2_marker:B

    return-void
.end method


# virtual methods
.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 5
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "recordFactory"    # Lorg/apache/poi/ddf/EscherRecordFactory;

    .prologue
    const/16 v3, 0x10

    const/4 v4, 0x0

    .line 39
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherBitmapBlip;->readHeader([BI)I

    move-result v0

    .line 40
    .local v0, "bytesAfterHeader":I
    add-int/lit8 v1, p2, 0x8

    .line 42
    .local v1, "pos":I
    new-array v2, v3, [B

    iput-object v2, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_1_UID:[B

    .line 43
    iget-object v2, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_1_UID:[B

    invoke-static {p1, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x10

    .line 44
    aget-byte v2, p1, v1

    iput-byte v2, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_2_marker:B

    add-int/lit8 v1, v1, 0x1

    .line 46
    add-int/lit8 v2, v0, -0x11

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_pictureData:[B

    .line 47
    iget-object v2, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_pictureData:[B

    iget-object v3, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_pictureData:[B

    array-length v3, v3

    invoke-static {p1, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    add-int/lit8 v2, v0, 0x8

    return v2
.end method

.method public getMarker()B
    .locals 1

    .prologue
    .line 86
    iget-byte v0, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_2_marker:B

    return v0
.end method

.method public getRecordSize()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_pictureData:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x19

    return v0
.end method

.method public getUID()[B
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_1_UID:[B

    return-object v0
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 5
    .param p1, "offset"    # I
    .param p2, "data"    # [B
    .param p3, "listener"    # Lorg/apache/poi/ddf/EscherSerializationListener;

    .prologue
    const/4 v4, 0x0

    .line 54
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBitmapBlip;->getRecordId()S

    move-result v1

    invoke-interface {p3, p1, v1, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    .line 56
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBitmapBlip;->getOptions()S

    move-result v1

    invoke-static {p2, p1, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 57
    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBitmapBlip;->getRecordId()S

    move-result v2

    invoke-static {p2, v1, v2}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 58
    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBitmapBlip;->getRecordSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    invoke-static {p2, v1, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 59
    add-int/lit8 v0, p1, 0x8

    .line 61
    .local v0, "pos":I
    iget-object v1, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_1_UID:[B

    const/16 v2, 0x10

    invoke-static {v1, v4, p2, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    add-int/lit8 v1, v0, 0x10

    iget-byte v2, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_2_marker:B

    aput-byte v2, p2, v1

    .line 63
    iget-object v1, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_pictureData:[B

    add-int/lit8 v2, v0, 0x11

    iget-object v3, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_pictureData:[B

    array-length v3, v3

    invoke-static {v1, v4, p2, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBitmapBlip;->getRecordSize()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBitmapBlip;->getRecordId()S

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBitmapBlip;->getRecordSize()I

    move-result v3

    invoke-interface {p3, v1, v2, v3, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    .line 66
    iget-object v1, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_pictureData:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x19

    return v1
.end method

.method public setMarker(B)V
    .locals 0
    .param p1, "field_2_marker"    # B

    .prologue
    .line 91
    iput-byte p1, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_2_marker:B

    .line 92
    return-void
.end method

.method public setUID([B)V
    .locals 0
    .param p1, "field_1_UID"    # [B

    .prologue
    .line 81
    iput-object p1, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_1_UID:[B

    .line 82
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 96
    const-string v4, "line.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "nl":Ljava/lang/String;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 102
    .local v0, "b":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    iget-object v4, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_pictureData:[B

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    invoke-static {v4, v6, v7, v0, v5}, Lorg/apache/poi/util/HexDump;->dump([BJLjava/io/OutputStream;I)V

    .line 103
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 109
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

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBitmapBlip;->getRecordId()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  Version: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBitmapBlip;->getVersion()S

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

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBitmapBlip;->getInstance()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  UID: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_1_UID:[B

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  Marker: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-byte v5, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_2_marker:B

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

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

    .line 105
    .end local v2    # "extraData":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 107
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "extraData":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public toXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "tab"    # Ljava/lang/String;

    .prologue
    .line 121
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 124
    .local v0, "b":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    iget-object v4, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_pictureData:[B

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    invoke-static {v4, v6, v7, v0, v5}, Lorg/apache/poi/util/HexDump;->dump([BJLjava/io/OutputStream;I)V

    .line 125
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 131
    .local v3, "extraData":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBitmapBlip;->getRecordId()S

    move-result v6

    invoke-static {v6}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBitmapBlip;->getVersion()S

    move-result v7

    invoke-static {v7}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBitmapBlip;->getInstance()S

    move-result v8

    invoke-static {v8}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v5, v6, v7, v8}, Lorg/apache/poi/ddf/EscherBitmapBlip;->formatXmlRecordHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<UID>0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_1_UID:[B

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</UID>\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<Marker>0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-byte v5, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_2_marker:B

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</Marker>\n"

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

    .line 136
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

    .line 137
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 127
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "extraData":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 129
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "extraData":Ljava/lang/String;
    goto/16 :goto_0
.end method
