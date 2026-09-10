.class public final Lorg/apache/poi/ss/formula/ptg/NameXPtg;
.super Lorg/apache/poi/ss/formula/ptg/OperandPtg;
.source "NameXPtg.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/WorkbookDependentFormula;


# static fields
.field private static final SIZE:I = 0x7

.field public static final sid:S = 0x39s


# instance fields
.field private final _nameNumber:I

.field private final _reserved:I

.field private final _sheetRefIndex:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "sheetRefIndex"    # I
    .param p2, "nameIndex"    # I

    .line 55
    add-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/ss/formula/ptg/NameXPtg;-><init>(III)V

    .line 56
    return-void
.end method

.method private constructor <init>(III)V
    .locals 0
    .param p1, "sheetRefIndex"    # I
    .param p2, "nameNumber"    # I
    .param p3, "reserved"    # I

    .line 44
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;-><init>()V

    .line 45
    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->_sheetRefIndex:I

    .line 46
    iput p2, p0, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->_nameNumber:I

    .line 47
    iput p3, p0, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->_reserved:I

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 3
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 59
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v1

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/poi/ss/formula/ptg/NameXPtg;-><init>(III)V

    .line 60
    return-void
.end method


# virtual methods
.method public getDefaultOperandClass()B
    .locals 1

    .line 88
    const/16 v0, 0x20

    return v0
.end method

.method public getNameIndex()I
    .locals 1

    .line 95
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->_nameNumber:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getSheetRefIndex()I
    .locals 1

    .line 92
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->_sheetRefIndex:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 70
    const/4 v0, 0x7

    return v0
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "3D references need a workbook to determine formula text"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toFormulaString(Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;)Ljava/lang/String;
    .locals 1
    .param p1, "book"    # Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;

    .line 75
    invoke-interface {p1, p0}, Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;->resolveNameXText(Lorg/apache/poi/ss/formula/ptg/NameXPtg;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NameXPtg:[sheetRefIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->_sheetRefIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , nameNumber:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->_nameNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "retValue":Ljava/lang/String;
    return-object v0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 63
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->getPtgClass()B

    move-result v0

    add-int/lit8 v0, v0, 0x39

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 64
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->_sheetRefIndex:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 65
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->_nameNumber:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 66
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->_reserved:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 67
    return-void
.end method
