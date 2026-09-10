.class public final Lorg/apache/poi/hssf/record/TableRecord;
.super Lorg/apache/poi/hssf/record/SharedValueRecordBase;
.source "TableRecord.java"


# static fields
.field private static final alwaysCalc:Lorg/apache/poi/util/BitField;

.field private static final calcOnOpen:Lorg/apache/poi/util/BitField;

.field private static final colDeleted:Lorg/apache/poi/util/BitField;

.field private static final oneOrTwoVar:Lorg/apache/poi/util/BitField;

.field private static final rowDeleted:Lorg/apache/poi/util/BitField;

.field private static final rowOrColInpCell:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x236s


# instance fields
.field private field_10_colInputCol:I

.field private field_5_flags:I

.field private field_6_res:I

.field private field_7_rowInputRow:I

.field private field_8_colInputRow:I

.field private field_9_rowInputCol:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/TableRecord;->alwaysCalc:Lorg/apache/poi/util/BitField;

    .line 41
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/TableRecord;->calcOnOpen:Lorg/apache/poi/util/BitField;

    .line 42
    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/TableRecord;->rowOrColInpCell:Lorg/apache/poi/util/BitField;

    .line 43
    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/TableRecord;->oneOrTwoVar:Lorg/apache/poi/util/BitField;

    .line 44
    const/16 v0, 0x10

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/TableRecord;->rowDeleted:Lorg/apache/poi/util/BitField;

    .line 45
    const/16 v0, 0x20

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/TableRecord;->colDeleted:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 55
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/SharedValueRecordBase;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    .line 56
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/TableRecord;->field_5_flags:I

    .line 57
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/TableRecord;->field_6_res:I

    .line 58
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/TableRecord;->field_7_rowInputRow:I

    .line 59
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/TableRecord;->field_8_colInputRow:I

    .line 60
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/TableRecord;->field_9_rowInputCol:I

    .line 61
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/TableRecord;->field_10_colInputCol:I

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;)V
    .locals 1
    .param p1, "range"    # Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    .line 65
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/SharedValueRecordBase;-><init>(Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;)V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/record/TableRecord;->field_6_res:I

    .line 67
    return-void
.end method

.method private static cr(II)Lorg/apache/poi/hssf/util/CellReference;
    .locals 5
    .param p0, "rowIx"    # I
    .param p1, "colIxAndFlags"    # I

    .line 174
    and-int/lit16 v0, p1, 0xff

    .line 175
    .local v0, "colIx":I
    const v1, 0x8000

    and-int/2addr v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 176
    .local v1, "isRowAbs":Z
    :goto_0
    and-int/lit16 v4, p1, 0x4000

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 177
    .local v2, "isColAbs":Z
    :goto_1
    new-instance v3, Lorg/apache/poi/hssf/util/CellReference;

    invoke-direct {v3, p0, v0, v1, v2}, Lorg/apache/poi/hssf/util/CellReference;-><init>(IIZZ)V

    return-object v3
.end method


# virtual methods
.method public getColInputCol()I
    .locals 1

    .line 98
    iget v0, p0, Lorg/apache/poi/hssf/record/TableRecord;->field_10_colInputCol:I

    return v0
.end method

.method public getColInputRow()I
    .locals 1

    .line 84
    iget v0, p0, Lorg/apache/poi/hssf/record/TableRecord;->field_8_colInputRow:I

    return v0
.end method

.method protected getExtraDataSize()I
    .locals 1

    .line 145
    const/16 v0, 0xa

    return v0
.end method

.method public getFlags()I
    .locals 1

    .line 70
    iget v0, p0, Lorg/apache/poi/hssf/record/TableRecord;->field_5_flags:I

    return v0
.end method

.method public getRowInputCol()I
    .locals 1

    .line 91
    iget v0, p0, Lorg/apache/poi/hssf/record/TableRecord;->field_9_rowInputCol:I

    return v0
.end method

.method public getRowInputRow()I
    .locals 1

    .line 77
    iget v0, p0, Lorg/apache/poi/hssf/record/TableRecord;->field_7_rowInputRow:I

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 142
    const/16 v0, 0x236

    return v0
.end method

.method public isAlwaysCalc()Z
    .locals 2

    .line 106
    sget-object v0, Lorg/apache/poi/hssf/record/TableRecord;->alwaysCalc:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/TableRecord;->field_5_flags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isColDeleted()Z
    .locals 2

    .line 127
    sget-object v0, Lorg/apache/poi/hssf/record/TableRecord;->colDeleted:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/TableRecord;->field_5_flags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isOneNotTwoVar()Z
    .locals 2

    .line 120
    sget-object v0, Lorg/apache/poi/hssf/record/TableRecord;->oneOrTwoVar:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/TableRecord;->field_5_flags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isRowDeleted()Z
    .locals 2

    .line 134
    sget-object v0, Lorg/apache/poi/hssf/record/TableRecord;->rowDeleted:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/TableRecord;->field_5_flags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isRowOrColInpCell()Z
    .locals 2

    .line 113
    sget-object v0, Lorg/apache/poi/hssf/record/TableRecord;->rowOrColInpCell:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/TableRecord;->field_5_flags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method protected serializeExtraData(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 150
    iget v0, p0, Lorg/apache/poi/hssf/record/TableRecord;->field_5_flags:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 151
    iget v0, p0, Lorg/apache/poi/hssf/record/TableRecord;->field_6_res:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 152
    iget v0, p0, Lorg/apache/poi/hssf/record/TableRecord;->field_7_rowInputRow:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 153
    iget v0, p0, Lorg/apache/poi/hssf/record/TableRecord;->field_8_colInputRow:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 154
    iget v0, p0, Lorg/apache/poi/hssf/record/TableRecord;->field_9_rowInputCol:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 155
    iget v0, p0, Lorg/apache/poi/hssf/record/TableRecord;->field_10_colInputCol:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 156
    return-void
.end method

.method public setAlwaysCalc(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .line 109
    sget-object v0, Lorg/apache/poi/hssf/record/TableRecord;->alwaysCalc:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/TableRecord;->field_5_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/TableRecord;->field_5_flags:I

    .line 110
    return-void
.end method

.method public setColDeleted(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .line 130
    sget-object v0, Lorg/apache/poi/hssf/record/TableRecord;->colDeleted:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/TableRecord;->field_5_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/TableRecord;->field_5_flags:I

    .line 131
    return-void
.end method

.method public setColInputCol(I)V
    .locals 0
    .param p1, "colInputCol"    # I

    .line 101
    iput p1, p0, Lorg/apache/poi/hssf/record/TableRecord;->field_10_colInputCol:I

    .line 102
    return-void
.end method

.method public setColInputRow(I)V
    .locals 0
    .param p1, "colInputRow"    # I

    .line 87
    iput p1, p0, Lorg/apache/poi/hssf/record/TableRecord;->field_8_colInputRow:I

    .line 88
    return-void
.end method

.method public setFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .line 73
    iput p1, p0, Lorg/apache/poi/hssf/record/TableRecord;->field_5_flags:I

    .line 74
    return-void
.end method

.method public setOneNotTwoVar(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .line 123
    sget-object v0, Lorg/apache/poi/hssf/record/TableRecord;->oneOrTwoVar:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/TableRecord;->field_5_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/TableRecord;->field_5_flags:I

    .line 124
    return-void
.end method

.method public setRowDeleted(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .line 137
    sget-object v0, Lorg/apache/poi/hssf/record/TableRecord;->rowDeleted:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/TableRecord;->field_5_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/TableRecord;->field_5_flags:I

    .line 138
    return-void
.end method

.method public setRowInputCol(I)V
    .locals 0
    .param p1, "rowInputCol"    # I

    .line 94
    iput p1, p0, Lorg/apache/poi/hssf/record/TableRecord;->field_9_rowInputCol:I

    .line 95
    return-void
.end method

.method public setRowInputRow(I)V
    .locals 0
    .param p1, "rowInputRow"    # I

    .line 80
    iput p1, p0, Lorg/apache/poi/hssf/record/TableRecord;->field_7_rowInputRow:I

    .line 81
    return-void
.end method

.method public setRowOrColInpCell(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .line 116
    sget-object v0, Lorg/apache/poi/hssf/record/TableRecord;->rowOrColInpCell:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/TableRecord;->field_5_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/TableRecord;->field_5_flags:I

    .line 117
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 159
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 160
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[TABLE]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    const-string v1, "    .range    = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/TableRecord;->getRange()Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    const-string v2, "    .flags    = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/poi/hssf/record/TableRecord;->field_5_flags:I

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->byteToHex(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    const-string v2, "    .alwaysClc= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/TableRecord;->isAlwaysCalc()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    const-string v2, "    .reserved = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/poi/hssf/record/TableRecord;->field_6_res:I

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->intToHex(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    iget v2, p0, Lorg/apache/poi/hssf/record/TableRecord;->field_7_rowInputRow:I

    iget v3, p0, Lorg/apache/poi/hssf/record/TableRecord;->field_8_colInputRow:I

    invoke-static {v2, v3}, Lorg/apache/poi/hssf/record/TableRecord;->cr(II)Lorg/apache/poi/hssf/util/CellReference;

    move-result-object v2

    .line 166
    .local v2, "crRowInput":Lorg/apache/poi/hssf/util/CellReference;
    iget v3, p0, Lorg/apache/poi/hssf/record/TableRecord;->field_9_rowInputCol:I

    iget v4, p0, Lorg/apache/poi/hssf/record/TableRecord;->field_10_colInputCol:I

    invoke-static {v3, v4}, Lorg/apache/poi/hssf/record/TableRecord;->cr(II)Lorg/apache/poi/hssf/util/CellReference;

    move-result-object v3

    .line 167
    .local v3, "crColInput":Lorg/apache/poi/hssf/util/CellReference;
    const-string v4, "    .rowInput = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    const-string v4, "    .colInput = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    const-string v1, "[/TABLE]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
