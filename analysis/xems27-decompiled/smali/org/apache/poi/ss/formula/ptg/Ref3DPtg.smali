.class public final Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;
.super Lorg/apache/poi/ss/formula/ptg/RefPtgBase;
.source "Ref3DPtg.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/WorkbookDependentFormula;
.implements Lorg/apache/poi/ss/formula/ExternSheetReferenceToken;


# static fields
.field private static final SIZE:I = 0x7

.field public static final sid:B = 0x3at


# instance fields
.field private field_1_index_extern_sheet:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "cellref"    # Ljava/lang/String;
    .param p2, "externIdx"    # I

    .line 49
    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v0, p1}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;-><init>(Lorg/apache/poi/ss/util/CellReference;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/util/CellReference;I)V
    .locals 0
    .param p1, "c"    # Lorg/apache/poi/ss/util/CellReference;
    .param p2, "externIdx"    # I

    .line 53
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;-><init>(Lorg/apache/poi/ss/util/CellReference;)V

    .line 54
    invoke-virtual {p0, p2}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->setExternSheetIndex(I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 43
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;-><init>()V

    .line 44
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->field_1_index_extern_sheet:I

    .line 45
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->readCoordinates(Lorg/apache/poi/util/LittleEndianInput;)V

    .line 46
    return-void
.end method


# virtual methods
.method public format2DRefAsString()Ljava/lang/String;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->formatReferenceAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExternSheetIndex()I
    .locals 1

    .line 79
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->field_1_index_extern_sheet:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 75
    const/4 v0, 0x7

    return v0
.end method

.method public setExternSheetIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .line 83
    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->field_1_index_extern_sheet:I

    .line 84
    return-void
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "3D references need a workbook to determine formula text"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toFormulaString(Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;)Ljava/lang/String;
    .locals 2
    .param p1, "book"    # Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;

    .line 93
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->field_1_index_extern_sheet:I

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->formatReferenceAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/apache/poi/ss/formula/ptg/ExternSheetNameResolver;->prependSheetName(Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 59
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    const-string v1, "sheetIx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->getExternSheetIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 62
    const-string v1, " ! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->formatReferenceAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 69
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->getPtgClass()B

    move-result v0

    add-int/lit8 v0, v0, 0x3a

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 70
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->getExternSheetIndex()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 71
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->writeCoordinates(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 72
    return-void
.end method
