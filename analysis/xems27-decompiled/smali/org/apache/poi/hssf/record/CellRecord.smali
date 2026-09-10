.class public abstract Lorg/apache/poi/hssf/record/CellRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "CellRecord.java"

# interfaces
.implements Lorg/apache/poi/hssf/record/CellValueRecordInterface;


# instance fields
.field private _columnIndex:I

.field private _formatIndex:I

.field private _rowIndex:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 36
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 38
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 39
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CellRecord;->_rowIndex:I

    .line 40
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CellRecord;->_columnIndex:I

    .line 41
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CellRecord;->_formatIndex:I

    .line 42
    return-void
.end method


# virtual methods
.method protected abstract appendValueText(Ljava/lang/StringBuilder;)V
.end method

.method protected final copyBaseFields(Lorg/apache/poi/hssf/record/CellRecord;)V
    .locals 1
    .param p1, "rec"    # Lorg/apache/poi/hssf/record/CellRecord;

    .line 131
    iget v0, p0, Lorg/apache/poi/hssf/record/CellRecord;->_rowIndex:I

    iput v0, p1, Lorg/apache/poi/hssf/record/CellRecord;->_rowIndex:I

    .line 132
    iget v0, p0, Lorg/apache/poi/hssf/record/CellRecord;->_columnIndex:I

    iput v0, p1, Lorg/apache/poi/hssf/record/CellRecord;->_columnIndex:I

    .line 133
    iget v0, p0, Lorg/apache/poi/hssf/record/CellRecord;->_formatIndex:I

    iput v0, p1, Lorg/apache/poi/hssf/record/CellRecord;->_formatIndex:I

    .line 134
    return-void
.end method

.method public final getColumn()S
    .locals 1

    .line 67
    iget v0, p0, Lorg/apache/poi/hssf/record/CellRecord;->_columnIndex:I

    int-to-short v0, v0

    return v0
.end method

.method protected final getDataSize()I
    .locals 1

    .line 127
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CellRecord;->getValueDataSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    return v0
.end method

.method protected abstract getRecordName()Ljava/lang/String;
.end method

.method public final getRow()I
    .locals 1

    .line 63
    iget v0, p0, Lorg/apache/poi/hssf/record/CellRecord;->_rowIndex:I

    return v0
.end method

.method protected abstract getValueDataSize()I
.end method

.method public final getXFIndex()S
    .locals 1

    .line 77
    iget v0, p0, Lorg/apache/poi/hssf/record/CellRecord;->_formatIndex:I

    int-to-short v0, v0

    return v0
.end method

.method public final serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 119
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CellRecord;->getRow()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 120
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CellRecord;->getColumn()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 121
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CellRecord;->getXFIndex()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 122
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/CellRecord;->serializeValue(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 123
    return-void
.end method

.method protected abstract serializeValue(Lorg/apache/poi/util/LittleEndianOutput;)V
.end method

.method public final setColumn(S)V
    .locals 0
    .param p1, "col"    # S

    .line 49
    iput p1, p0, Lorg/apache/poi/hssf/record/CellRecord;->_columnIndex:I

    .line 50
    return-void
.end method

.method public final setRow(I)V
    .locals 0
    .param p1, "row"    # I

    .line 45
    iput p1, p0, Lorg/apache/poi/hssf/record/CellRecord;->_rowIndex:I

    .line 46
    return-void
.end method

.method public final setXFIndex(S)V
    .locals 0
    .param p1, "xf"    # S

    .line 59
    iput p1, p0, Lorg/apache/poi/hssf/record/CellRecord;->_formatIndex:I

    .line 60
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CellRecord;->getRecordName()Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "recordName":Ljava/lang/String;
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v3, "    .row    = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CellRecord;->getRow()I

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string v4, "    .col    = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CellRecord;->getColumn()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v4, "    .xfindex= "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CellRecord;->getXFIndex()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/CellRecord;->appendValueText(Ljava/lang/StringBuilder;)V

    .line 90
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string v3, "[/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
