.class public abstract Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;
.super Lorg/apache/poi/ss/formula/ptg/OperandPtg;
.source "AreaPtgBase.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/ptg/AreaI;


# static fields
.field private static final colRelative:Lorg/apache/poi/util/BitField;

.field private static final columnMask:Lorg/apache/poi/util/BitField;

.field private static final rowRelative:Lorg/apache/poi/util/BitField;


# instance fields
.field private field_1_first_row:I

.field private field_2_last_row:I

.field private field_3_first_column:I

.field private field_4_last_column:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const v0, 0x8000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->rowRelative:Lorg/apache/poi/util/BitField;

    .line 51
    const/16 v0, 0x4000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->colRelative:Lorg/apache/poi/util/BitField;

    .line 52
    const/16 v0, 0x3fff

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->columnMask:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;-><init>()V

    .line 56
    return-void
.end method

.method protected constructor <init>(IIIIZZZZ)V
    .locals 0
    .param p1, "firstRow"    # I
    .param p2, "lastRow"    # I
    .param p3, "firstColumn"    # I
    .param p4, "lastColumn"    # I
    .param p5, "firstRowRelative"    # Z
    .param p6, "lastRowRelative"    # Z
    .param p7, "firstColRelative"    # Z
    .param p8, "lastColRelative"    # Z

    .line 72
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;-><init>()V

    .line 74
    if-lt p2, p1, :cond_0

    .line 75
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRow(I)V

    .line 76
    invoke-virtual {p0, p2}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRow(I)V

    .line 77
    invoke-virtual {p0, p5}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRowRelative(Z)V

    .line 78
    invoke-virtual {p0, p6}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRowRelative(Z)V

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p0, p2}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRow(I)V

    .line 81
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRow(I)V

    .line 82
    invoke-virtual {p0, p6}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRowRelative(Z)V

    .line 83
    invoke-virtual {p0, p5}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRowRelative(Z)V

    .line 86
    :goto_0
    if-lt p4, p3, :cond_1

    .line 87
    invoke-virtual {p0, p3}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstColumn(I)V

    .line 88
    invoke-virtual {p0, p4}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastColumn(I)V

    .line 89
    invoke-virtual {p0, p7}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstColRelative(Z)V

    .line 90
    invoke-virtual {p0, p8}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastColRelative(Z)V

    goto :goto_1

    .line 92
    :cond_1
    invoke-virtual {p0, p4}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstColumn(I)V

    .line 93
    invoke-virtual {p0, p3}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastColumn(I)V

    .line 94
    invoke-virtual {p0, p8}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstColRelative(Z)V

    .line 95
    invoke-virtual {p0, p7}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastColRelative(Z)V

    .line 97
    :goto_1
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/ss/util/AreaReference;)V
    .locals 4
    .param p1, "ar"    # Lorg/apache/poi/ss/util/AreaReference;

    .line 58
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;-><init>()V

    .line 59
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/AreaReference;->getFirstCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    .line 60
    .local v0, "firstCell":Lorg/apache/poi/ss/util/CellReference;
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/AreaReference;->getLastCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v1

    .line 61
    .local v1, "lastCell":Lorg/apache/poi/ss/util/CellReference;
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRow(I)V

    .line 62
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v2

    :goto_0
    invoke-virtual {p0, v2}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstColumn(I)V

    .line 63
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRow(I)V

    .line 64
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v2

    if-ne v2, v3, :cond_1

    const/16 v2, 0xff

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v2

    :goto_1
    invoke-virtual {p0, v2}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastColumn(I)V

    .line 65
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->isColAbsolute()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstColRelative(Z)V

    .line 66
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->isColAbsolute()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastColRelative(Z)V

    .line 67
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->isRowAbsolute()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRowRelative(Z)V

    .line 68
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->isRowAbsolute()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRowRelative(Z)V

    .line 69
    return-void
.end method


# virtual methods
.method protected final formatReferenceAsString()Ljava/lang/String;
    .locals 6

    .line 256
    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getFirstRow()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getFirstColumn()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->isFirstRowRelative()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->isFirstColRelative()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    .line 257
    .local v0, "topLeft":Lorg/apache/poi/ss/util/CellReference;
    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getLastRow()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getLastColumn()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->isLastRowRelative()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->isLastColRelative()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    .line 259
    .local v1, "botRight":Lorg/apache/poi/ss/util/CellReference;
    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/AreaReference;->isWholeColumnReference(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    new-instance v2, Lorg/apache/poi/ss/util/AreaReference;

    invoke-direct {v2, v0, v1}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;)V

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/AreaReference;->formatAsString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 262
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getDefaultOperandClass()B
    .locals 1

    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public final getFirstColumn()I
    .locals 2

    .line 145
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->columnMask:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_3_first_column:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    return v0
.end method

.method public final getFirstColumnRaw()S
    .locals 1

    .line 152
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_3_first_column:I

    int-to-short v0, v0

    return v0
.end method

.method public final getFirstRow()I
    .locals 1

    .line 116
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_1_first_row:I

    return v0
.end method

.method public final getLastColumn()I
    .locals 2

    .line 202
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->columnMask:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_4_last_column:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    return v0
.end method

.method public final getLastColumnRaw()S
    .locals 1

    .line 209
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_4_last_column:I

    int-to-short v0, v0

    return v0
.end method

.method public final getLastRow()I
    .locals 1

    .line 131
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_2_last_row:I

    return v0
.end method

.method public final isFirstColRelative()Z
    .locals 2

    .line 174
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->colRelative:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_3_first_column:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public final isFirstRowRelative()Z
    .locals 2

    .line 159
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->rowRelative:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_3_first_column:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public final isLastColRelative()Z
    .locals 2

    .line 232
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->colRelative:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_4_last_column:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public final isLastRowRelative()Z
    .locals 2

    .line 216
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->rowRelative:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_4_last_column:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method protected final notImplemented()Ljava/lang/RuntimeException;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Coding Error: This method should never be called. This ptg should be converted"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected final readCoordinates(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 100
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_1_first_row:I

    .line 101
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_2_last_row:I

    .line 102
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_3_first_column:I

    .line 103
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_4_last_column:I

    .line 104
    return-void
.end method

.method public final setFirstColRelative(Z)V
    .locals 2
    .param p1, "rel"    # Z

    .line 181
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->colRelative:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_3_first_column:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_3_first_column:I

    .line 182
    return-void
.end method

.method public final setFirstColumn(I)V
    .locals 2
    .param p1, "colIx"    # I

    .line 188
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->columnMask:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_3_first_column:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_3_first_column:I

    .line 189
    return-void
.end method

.method public final setFirstColumnRaw(I)V
    .locals 0
    .param p1, "column"    # I

    .line 195
    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_3_first_column:I

    .line 196
    return-void
.end method

.method public final setFirstRow(I)V
    .locals 0
    .param p1, "rowIx"    # I

    .line 124
    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_1_first_row:I

    .line 125
    return-void
.end method

.method public final setFirstRowRelative(Z)V
    .locals 2
    .param p1, "rel"    # Z

    .line 167
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->rowRelative:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_3_first_column:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_3_first_column:I

    .line 168
    return-void
.end method

.method public final setLastColRelative(Z)V
    .locals 2
    .param p1, "rel"    # Z

    .line 239
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->colRelative:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_4_last_column:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_4_last_column:I

    .line 240
    return-void
.end method

.method public final setLastColumn(I)V
    .locals 2
    .param p1, "colIx"    # I

    .line 246
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->columnMask:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_4_last_column:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_4_last_column:I

    .line 247
    return-void
.end method

.method public final setLastColumnRaw(S)V
    .locals 0
    .param p1, "column"    # S

    .line 253
    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_4_last_column:I

    .line 254
    return-void
.end method

.method public final setLastRow(I)V
    .locals 0
    .param p1, "rowIx"    # I

    .line 138
    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_2_last_row:I

    .line 139
    return-void
.end method

.method public final setLastRowRelative(Z)V
    .locals 2
    .param p1, "rel"    # Z

    .line 225
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->rowRelative:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_4_last_column:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_4_last_column:I

    .line 226
    return-void
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 1

    .line 266
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->formatReferenceAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final writeCoordinates(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 106
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_1_first_row:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 107
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_2_last_row:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 108
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_3_first_column:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 109
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_4_last_column:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 110
    return-void
.end method
