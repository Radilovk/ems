.class public abstract Lorg/apache/poi/ss/formula/ptg/RefPtgBase;
.super Lorg/apache/poi/ss/formula/ptg/OperandPtg;
.source "RefPtgBase.java"


# static fields
.field private static final colRelative:Lorg/apache/poi/util/BitField;

.field private static final column:Lorg/apache/poi/util/BitField;

.field private static final rowRelative:Lorg/apache/poi/util/BitField;


# instance fields
.field private field_1_row:I

.field private field_2_col:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const v0, 0x8000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->rowRelative:Lorg/apache/poi/util/BitField;

    .line 42
    const/16 v0, 0x4000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->colRelative:Lorg/apache/poi/util/BitField;

    .line 50
    const/16 v0, 0x3fff

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->column:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;-><init>()V

    .line 54
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/ss/util/CellReference;)V
    .locals 1
    .param p1, "c"    # Lorg/apache/poi/ss/util/CellReference;

    .line 56
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;-><init>()V

    .line 57
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->setRow(I)V

    .line 58
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->setColumn(I)V

    .line 59
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->isColAbsolute()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->setColRelative(Z)V

    .line 60
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->isRowAbsolute()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->setRowRelative(Z)V

    .line 61
    return-void
.end method


# virtual methods
.method protected final formatReferenceAsString()Ljava/lang/String;
    .locals 5

    .line 110
    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->getRow()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->getColumn()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->isRowRelative()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->isColRelative()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    .line 111
    .local v0, "cr":Lorg/apache/poi/ss/util/CellReference;
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final getColumn()I
    .locals 2

    .line 105
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->column:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->field_2_col:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    return v0
.end method

.method public final getDefaultOperandClass()B
    .locals 1

    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public final getRow()I
    .locals 1

    .line 81
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->field_1_row:I

    return v0
.end method

.method public final isColRelative()Z
    .locals 2

    .line 93
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->colRelative:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->field_2_col:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public final isRowRelative()Z
    .locals 2

    .line 85
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->rowRelative:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->field_2_col:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method protected final readCoordinates(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 64
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->field_1_row:I

    .line 65
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->field_2_col:I

    .line 66
    return-void
.end method

.method public final setColRelative(Z)V
    .locals 2
    .param p1, "rel"    # Z

    .line 97
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->colRelative:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->field_2_col:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->field_2_col:I

    .line 98
    return-void
.end method

.method public final setColumn(I)V
    .locals 2
    .param p1, "col"    # I

    .line 101
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->column:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->field_2_col:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->field_2_col:I

    .line 102
    return-void
.end method

.method public final setRow(I)V
    .locals 0
    .param p1, "rowIndex"    # I

    .line 74
    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->field_1_row:I

    .line 75
    return-void
.end method

.method public final setRowRelative(Z)V
    .locals 2
    .param p1, "rel"    # Z

    .line 89
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->rowRelative:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->field_2_col:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->field_2_col:I

    .line 90
    return-void
.end method

.method protected final writeCoordinates(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 69
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->field_1_row:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 70
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->field_2_col:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 71
    return-void
.end method
