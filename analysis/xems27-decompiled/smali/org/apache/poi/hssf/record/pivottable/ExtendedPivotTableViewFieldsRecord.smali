.class public final Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "ExtendedPivotTableViewFieldsRecord.java"


# static fields
.field private static final STRING_NOT_PRESENT_LEN:I = 0xffff

.field public static final sid:S = 0x100s


# instance fields
.field private _citmShow:I

.field private _grbit1:I

.field private _grbit2:I

.field private _isxdiShow:I

.field private _isxdiSort:I

.field private _reserved1:I

.field private _reserved2:I

.field private _subtotalName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 48
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 50
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_grbit1:I

    .line 51
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_grbit2:I

    .line 52
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_citmShow:I

    .line 53
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_isxdiSort:I

    .line 54
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_isxdiShow:I

    .line 56
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 66
    nop

    .line 70
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    .line 71
    .local v0, "cchSubName":I
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_reserved1:I

    .line 72
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_reserved2:I

    .line 73
    const v1, 0xffff

    if-eq v0, v1, :cond_0

    .line 74
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUnicodeLEString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_subtotalName:Ljava/lang/String;

    .line 76
    :cond_0
    return-void

    .line 68
    .end local v0    # "cchSubName":I
    :cond_1
    new-instance v0, Lorg/apache/poi/hssf/record/RecordFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected remaining size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_reserved1:I

    .line 61
    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_reserved2:I

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_subtotalName:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method protected getDataSize()I
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_subtotalName:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    :goto_0
    add-int/lit8 v0, v0, 0x14

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 109
    const/16 v0, 0x100

    return v0
.end method

.method protected serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 81
    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_grbit1:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 82
    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_grbit2:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 83
    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_citmShow:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 84
    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_isxdiSort:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 85
    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_isxdiShow:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 87
    iget-object v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_subtotalName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 88
    const v0, 0xffff

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 93
    :goto_0
    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_reserved1:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 94
    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_reserved2:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 95
    iget-object v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_subtotalName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 96
    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 98
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 114
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 116
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[SXVDEX]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    const-string v1, "    .grbit1 ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_grbit1:I

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->intToHex(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    const-string v2, "    .grbit2 ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_grbit2:I

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->byteToHex(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    const-string v2, "    .citmShow ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_citmShow:I

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->byteToHex(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    const-string v2, "    .isxdiSort ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_isxdiSort:I

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    const-string v2, "    .isxdiShow ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_isxdiShow:I

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    const-string v2, "    .subtotalName ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_subtotalName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    const-string v1, "[/SXVDEX]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
