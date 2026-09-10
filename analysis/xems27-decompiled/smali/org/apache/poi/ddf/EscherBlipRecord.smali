.class public Lorg/apache/poi/ddf/EscherBlipRecord;
.super Lorg/apache/poi/ddf/EscherRecord;
.source "EscherBlipRecord.java"


# static fields
.field private static final HEADER_SIZE:I = 0x8

.field public static final RECORD_DESCRIPTION:Ljava/lang/String; = "msofbtBlip"

.field public static final RECORD_ID_END:S = -0xee9s

.field public static final RECORD_ID_START:S = -0xfe8s


# instance fields
.field protected field_pictureData:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherRecord;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 4
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "recordFactory"    # Lorg/apache/poi/ddf/EscherRecordFactory;

    .line 39
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherBlipRecord;->readHeader([BI)I

    move-result v0

    .line 40
    .local v0, "bytesAfterHeader":I
    add-int/lit8 v1, p2, 0x8

    .line 42
    .local v1, "pos":I
    new-array v2, v0, [B

    iput-object v2, p0, Lorg/apache/poi/ddf/EscherBlipRecord;->field_pictureData:[B

    .line 43
    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    add-int/lit8 v2, v0, 0x8

    return v2
.end method

.method public getPicturedata()[B
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherBlipRecord;->field_pictureData:[B

    return-object v0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 1

    .line 65
    const-string v0, "Blip"

    return-object v0
.end method

.method public getRecordSize()I
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherBlipRecord;->field_pictureData:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 4
    .param p1, "offset"    # I
    .param p2, "data"    # [B
    .param p3, "listener"    # Lorg/apache/poi/ddf/EscherSerializationListener;

    .line 49
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBlipRecord;->getRecordId()S

    move-result v0

    invoke-interface {p3, p1, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    .line 51
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBlipRecord;->getOptions()S

    move-result v0

    invoke-static {p2, p1, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 52
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBlipRecord;->getRecordId()S

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 54
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherBlipRecord;->field_pictureData:[B

    add-int/lit8 v1, p1, 0x4

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    add-int/lit8 v0, p1, 0x4

    iget-object v1, p0, Lorg/apache/poi/ddf/EscherBlipRecord;->field_pictureData:[B

    array-length v1, v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBlipRecord;->getRecordId()S

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/ddf/EscherBlipRecord;->field_pictureData:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x4

    invoke-interface {p3, v0, v1, v2, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    .line 57
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherBlipRecord;->field_pictureData:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public setPictureData([B)V
    .locals 0
    .param p1, "pictureData"    # [B

    .line 73
    iput-object p1, p0, Lorg/apache/poi/ddf/EscherBlipRecord;->field_pictureData:[B

    .line 74
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 77
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherBlipRecord;->field_pictureData:[B

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lorg/apache/poi/util/HexDump;->toHex([BI)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "extraData":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "  RecordId: 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBlipRecord;->getRecordId()S

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "  Version: 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBlipRecord;->getVersion()S

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "  Instance: 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBlipRecord;->getInstance()S

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "  Extra Data:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "tab"    # Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherBlipRecord;->field_pictureData:[B

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lorg/apache/poi/util/HexDump;->toHex([BI)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "extraData":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBlipRecord;->getRecordId()S

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBlipRecord;->getVersion()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBlipRecord;->getInstance()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/poi/ddf/EscherBlipRecord;->formatXmlRecordHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<ExtraData>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</ExtraData>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
