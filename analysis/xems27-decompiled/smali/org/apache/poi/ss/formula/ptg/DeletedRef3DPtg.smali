.class public final Lorg/apache/poi/ss/formula/ptg/DeletedRef3DPtg;
.super Lorg/apache/poi/ss/formula/ptg/OperandPtg;
.source "DeletedRef3DPtg.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/WorkbookDependentFormula;


# static fields
.field public static final sid:B = 0x3ct


# instance fields
.field private final field_1_index_extern_sheet:I

.field private final unused1:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "externSheetIndex"    # I

    .line 45
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;-><init>()V

    .line 46
    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/DeletedRef3DPtg;->field_1_index_extern_sheet:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/DeletedRef3DPtg;->unused1:I

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 40
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;-><init>()V

    .line 41
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/DeletedRef3DPtg;->field_1_index_extern_sheet:I

    .line 42
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/DeletedRef3DPtg;->unused1:I

    .line 43
    return-void
.end method


# virtual methods
.method public getDefaultOperandClass()B
    .locals 1

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 61
    const/4 v0, 0x7

    return v0
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "3D references need a workbook to determine formula text"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toFormulaString(Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;)Ljava/lang/String;
    .locals 2
    .param p1, "book"    # Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;

    .line 51
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/DeletedRef3DPtg;->field_1_index_extern_sheet:I

    const/16 v1, 0x17

    invoke-static {v1}, Lorg/apache/poi/ss/usermodel/ErrorConstants;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/apache/poi/ss/formula/ptg/ExternSheetNameResolver;->prependSheetName(Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 64
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/DeletedRef3DPtg;->getPtgClass()B

    move-result v0

    add-int/lit8 v0, v0, 0x3c

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 65
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/DeletedRef3DPtg;->field_1_index_extern_sheet:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 66
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/DeletedRef3DPtg;->unused1:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 67
    return-void
.end method
