.class public final Lorg/apache/poi/ss/formula/ptg/Area3DPtg;
.super Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;
.source "Area3DPtg.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/WorkbookDependentFormula;
.implements Lorg/apache/poi/ss/formula/ExternSheetReferenceToken;


# static fields
.field private static final SIZE:I = 0xb

.field public static final sid:B = 0x3bt


# instance fields
.field private field_1_index_extern_sheet:I


# direct methods
.method public constructor <init>(IIIIZZZZI)V
    .locals 0
    .param p1, "firstRow"    # I
    .param p2, "lastRow"    # I
    .param p3, "firstColumn"    # I
    .param p4, "lastColumn"    # I
    .param p5, "firstRowRelative"    # Z
    .param p6, "lastRowRelative"    # Z
    .param p7, "firstColRelative"    # Z
    .param p8, "lastColRelative"    # Z
    .param p9, "externalSheetIndex"    # I

    .line 56
    invoke-direct/range {p0 .. p8}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;-><init>(IIIIZZZZ)V

    .line 57
    invoke-virtual {p0, p9}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->setExternSheetIndex(I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "arearef"    # Ljava/lang/String;
    .param p2, "externIdx"    # I

    .line 44
    new-instance v0, Lorg/apache/poi/ss/util/AreaReference;

    invoke-direct {v0, p1}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;-><init>(Lorg/apache/poi/ss/util/AreaReference;)V

    .line 45
    invoke-virtual {p0, p2}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->setExternSheetIndex(I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/util/AreaReference;I)V
    .locals 0
    .param p1, "arearef"    # Lorg/apache/poi/ss/util/AreaReference;
    .param p2, "externIdx"    # I

    .line 61
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;-><init>(Lorg/apache/poi/ss/util/AreaReference;)V

    .line 62
    invoke-virtual {p0, p2}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->setExternSheetIndex(I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 48
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;-><init>()V

    .line 49
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->field_1_index_extern_sheet:I

    .line 50
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->readCoordinates(Lorg/apache/poi/util/LittleEndianInput;)V

    .line 51
    return-void
.end method


# virtual methods
.method public format2DRefAsString()Ljava/lang/String;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->formatReferenceAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExternSheetIndex()I
    .locals 1

    .line 90
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->field_1_index_extern_sheet:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 86
    const/16 v0, 0xb

    return v0
.end method

.method public setExternSheetIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .line 94
    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->field_1_index_extern_sheet:I

    .line 95
    return-void
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "3D references need a workbook to determine formula text"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toFormulaString(Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;)Ljava/lang/String;
    .locals 2
    .param p1, "book"    # Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;

    .line 104
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->field_1_index_extern_sheet:I

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->formatReferenceAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/apache/poi/ss/formula/ptg/ExternSheetNameResolver;->prependSheetName(Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 68
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    const-string v1, "sheetIx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getExternSheetIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 71
    const-string v1, " ! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->formatReferenceAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 79
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getPtgClass()B

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 80
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->field_1_index_extern_sheet:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 81
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->writeCoordinates(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 82
    return-void
.end method
