.class public final Lorg/apache/poi/hssf/record/SelectionRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SelectionRecord.java"


# static fields
.field public static final sid:S = 0x1ds


# instance fields
.field private field_1_pane:B

.field private field_2_row_active_cell:I

.field private field_3_col_active_cell:I

.field private field_4_active_cell_ref_index:I

.field private field_6_refs:[Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "activeCellRow"    # I
    .param p2, "activeCellCol"    # I

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 46
    const/4 v0, 0x3

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_1_pane:B

    .line 47
    iput p1, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_2_row_active_cell:I

    .line 48
    iput p2, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_3_col_active_cell:I

    .line 49
    iput v2, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_4_active_cell_ref_index:I

    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    new-instance v1, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    invoke-direct {v1, p1, p1, p2, p2}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;-><init>(IIII)V

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_6_refs:[Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 4
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 56
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v2

    iput-byte v2, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_1_pane:B

    .line 57
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v2

    iput v2, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_2_row_active_cell:I

    .line 58
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v2

    iput v2, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_3_col_active_cell:I

    .line 59
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v2

    iput v2, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_4_active_cell_ref_index:I

    .line 60
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    .line 62
    .local v0, "field_5_num_refs":I
    new-array v2, v0, [Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    iput-object v2, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_6_refs:[Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    .line 63
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_6_refs:[Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 64
    iget-object v2, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_6_refs:[Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    new-instance v3, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    invoke-direct {v3, p1}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    aput-object v3, v2, v1

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 163
    new-instance v0, Lorg/apache/poi/hssf/record/SelectionRecord;

    iget v1, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_2_row_active_cell:I

    iget v2, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_3_col_active_cell:I

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hssf/record/SelectionRecord;-><init>(II)V

    .line 164
    .local v0, "rec":Lorg/apache/poi/hssf/record/SelectionRecord;
    iget-byte v1, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_1_pane:B

    iput-byte v1, v0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_1_pane:B

    .line 165
    iget v1, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_4_active_cell_ref_index:I

    iput v1, v0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_4_active_cell_ref_index:I

    .line 166
    iget-object v1, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_6_refs:[Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_6_refs:[Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    .line 167
    return-object v0
.end method

.method public getActiveCellCol()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_3_col_active_cell:I

    return v0
.end method

.method public getActiveCellRef()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_4_active_cell_ref_index:I

    return v0
.end method

.method public getActiveCellRow()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_2_row_active_cell:I

    return v0
.end method

.method protected getDataSize()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_6_refs:[Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    array-length v0, v0

    invoke-static {v0}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;->getEncodedSize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x9

    return v0
.end method

.method public getPane()B
    .locals 1

    .prologue
    .line 103
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_1_pane:B

    return v0
.end method

.method public getSid()S
    .locals 1

    .prologue
    .line 159
    const/16 v0, 0x1d

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 3
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .prologue
    .line 147
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SelectionRecord;->getPane()B

    move-result v2

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 148
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SelectionRecord;->getActiveCellRow()I

    move-result v2

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 149
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SelectionRecord;->getActiveCellCol()I

    move-result v2

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 150
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SelectionRecord;->getActiveCellRef()I

    move-result v2

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 151
    iget-object v2, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_6_refs:[Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    array-length v1, v2

    .line 152
    .local v1, "nRefs":I
    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 153
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_6_refs:[Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 154
    iget-object v2, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_6_refs:[Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_0
    return-void
.end method

.method public setActiveCellCol(S)V
    .locals 0
    .param p1, "col"    # S

    .prologue
    .line 88
    iput p1, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_3_col_active_cell:I

    .line 89
    return-void
.end method

.method public setActiveCellRef(S)V
    .locals 0
    .param p1, "ref"    # S

    .prologue
    .line 96
    iput p1, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_4_active_cell_ref_index:I

    .line 97
    return-void
.end method

.method public setActiveCellRow(I)V
    .locals 0
    .param p1, "row"    # I

    .prologue
    .line 80
    iput p1, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_2_row_active_cell:I

    .line 81
    return-void
.end method

.method public setPane(B)V
    .locals 0
    .param p1, "pane"    # B

    .prologue
    .line 72
    iput-byte p1, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_1_pane:B

    .line 73
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 133
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "[SELECTION]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    const-string v1, "    .pane            = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SelectionRecord;->getPane()B

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->byteToHex(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    const-string v1, "    .activecellrow   = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SelectionRecord;->getActiveCellRow()I

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    const-string v1, "    .activecellcol   = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SelectionRecord;->getActiveCellCol()I

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    const-string v1, "    .activecellref   = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SelectionRecord;->getActiveCellRef()I

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    const-string v1, "    .numrefs         = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_6_refs:[Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    array-length v2, v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    const-string v1, "[/SELECTION]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
