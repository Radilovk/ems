.class public Lorg/apache/poi/ddf/EscherDgRecord;
.super Lorg/apache/poi/ddf/EscherRecord;
.source "EscherDgRecord.java"


# static fields
.field public static final RECORD_DESCRIPTION:Ljava/lang/String; = "MsofbtDg"

.field public static final RECORD_ID:S = -0xff8s


# instance fields
.field private field_1_numShapes:I

.field private field_2_lastMSOSPID:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherRecord;-><init>()V

    return-void
.end method


# virtual methods
.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 3
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "recordFactory"    # Lorg/apache/poi/ddf/EscherRecordFactory;

    .line 40
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherDgRecord;->readHeader([BI)I

    .line 41
    add-int/lit8 v0, p2, 0x8

    .line 42
    .local v0, "pos":I
    const/4 v1, 0x0

    .line 43
    .local v1, "size":I
    add-int v2, v0, v1

    invoke-static {p1, v2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v2

    iput v2, p0, Lorg/apache/poi/ddf/EscherDgRecord;->field_1_numShapes:I

    add-int/lit8 v1, v1, 0x4

    .line 44
    add-int v2, v0, v1

    invoke-static {p1, v2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v2

    iput v2, p0, Lorg/apache/poi/ddf/EscherDgRecord;->field_2_lastMSOSPID:I

    add-int/lit8 v1, v1, 0x4

    .line 48
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDgRecord;->getRecordSize()I

    move-result v2

    return v2
.end method

.method public getDrawingGroupId()S
    .locals 1

    .line 147
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDgRecord;->getOptions()S

    move-result v0

    shr-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    return v0
.end method

.method public getLastMSOSPID()I
    .locals 1

    .line 128
    iget v0, p0, Lorg/apache/poi/ddf/EscherDgRecord;->field_2_lastMSOSPID:I

    return v0
.end method

.method public getNumShapes()I
    .locals 1

    .line 112
    iget v0, p0, Lorg/apache/poi/ddf/EscherDgRecord;->field_1_numShapes:I

    return v0
.end method

.method public getRecordId()S
    .locals 1

    .line 78
    const/16 v0, -0xff8

    return v0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 1

    .line 82
    const-string v0, "Dg"

    return-object v0
.end method

.method public getRecordSize()I
    .locals 1

    .line 74
    const/16 v0, 0x10

    return v0
.end method

.method public incrementShapeCount()V
    .locals 1

    .line 152
    iget v0, p0, Lorg/apache/poi/ddf/EscherDgRecord;->field_1_numShapes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/ddf/EscherDgRecord;->field_1_numShapes:I

    .line 153
    return-void
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 3
    .param p1, "offset"    # I
    .param p2, "data"    # [B
    .param p3, "listener"    # Lorg/apache/poi/ddf/EscherSerializationListener;

    .line 53
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDgRecord;->getRecordId()S

    move-result v0

    invoke-interface {p3, p1, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    .line 55
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDgRecord;->getOptions()S

    move-result v0

    invoke-static {p2, p1, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 56
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDgRecord;->getRecordId()S

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 57
    add-int/lit8 v0, p1, 0x4

    const/16 v1, 0x8

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 58
    add-int/lit8 v0, p1, 0x8

    iget v1, p0, Lorg/apache/poi/ddf/EscherDgRecord;->field_1_numShapes:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 59
    add-int/lit8 v0, p1, 0xc

    iget v1, p0, Lorg/apache/poi/ddf/EscherDgRecord;->field_2_lastMSOSPID:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 63
    add-int/lit8 v0, p1, 0x10

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDgRecord;->getRecordId()S

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDgRecord;->getRecordSize()I

    move-result v2

    invoke-interface {p3, v0, v1, v2, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    .line 64
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDgRecord;->getRecordSize()I

    move-result v0

    return v0
.end method

.method public setLastMSOSPID(I)V
    .locals 0
    .param p1, "field_2_lastMSOSPID"    # I

    .line 136
    iput p1, p0, Lorg/apache/poi/ddf/EscherDgRecord;->field_2_lastMSOSPID:I

    .line 137
    return-void
.end method

.method public setNumShapes(I)V
    .locals 0
    .param p1, "field_1_numShapes"    # I

    .line 120
    iput p1, p0, Lorg/apache/poi/ddf/EscherDgRecord;->field_1_numShapes:I

    .line 121
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "  RecordId: 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, -0xff8

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "  Version: 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDgRecord;->getVersion()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "  Instance: 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDgRecord;->getInstance()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "  NumShapes: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/ddf/EscherDgRecord;->field_1_numShapes:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "  LastMSOSPID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/ddf/EscherDgRecord;->field_2_lastMSOSPID:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "tab"    # Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDgRecord;->getRecordId()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDgRecord;->getVersion()S

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDgRecord;->getInstance()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/poi/ddf/EscherDgRecord;->formatXmlRecordHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<NumShapes>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/ddf/EscherDgRecord;->field_1_numShapes:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "</NumShapes>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<LastMSOSPID>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/ddf/EscherDgRecord;->field_2_lastMSOSPID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "</LastMSOSPID>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
