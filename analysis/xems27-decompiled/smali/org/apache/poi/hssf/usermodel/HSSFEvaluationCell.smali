.class final Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;
.super Ljava/lang/Object;
.source "HSSFEvaluationCell.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/EvaluationCell;


# instance fields
.field private final _cell:Lorg/apache/poi/hssf/usermodel/HSSFCell;

.field private final _evalSheet:Lorg/apache/poi/ss/formula/EvaluationSheet;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFCell;)V
    .locals 2
    .param p1, "cell"    # Lorg/apache/poi/hssf/usermodel/HSSFCell;

    .line 35
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationSheet;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationSheet;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFCell;Lorg/apache/poi/ss/formula/EvaluationSheet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFCell;Lorg/apache/poi/ss/formula/EvaluationSheet;)V
    .locals 0
    .param p1, "cell"    # Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .param p2, "evalSheet"    # Lorg/apache/poi/ss/formula/EvaluationSheet;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;->_cell:Lorg/apache/poi/hssf/usermodel/HSSFCell;

    .line 32
    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;->_evalSheet:Lorg/apache/poi/ss/formula/EvaluationSheet;

    .line 33
    return-void
.end method


# virtual methods
.method public getBooleanCellValue()Z
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;->_cell:Lorg/apache/poi/hssf/usermodel/HSSFCell;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getBooleanCellValue()Z

    move-result v0

    return v0
.end method

.method public getCachedFormulaResultType()I
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;->_cell:Lorg/apache/poi/hssf/usermodel/HSSFCell;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCachedFormulaResultType()I

    move-result v0

    return v0
.end method

.method public getCellType()I
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;->_cell:Lorg/apache/poi/hssf/usermodel/HSSFCell;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellType()I

    move-result v0

    return v0
.end method

.method public getColumnIndex()I
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;->_cell:Lorg/apache/poi/hssf/usermodel/HSSFCell;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getColumnIndex()I

    move-result v0

    return v0
.end method

.method public getErrorCellValue()I
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;->_cell:Lorg/apache/poi/hssf/usermodel/HSSFCell;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getErrorCellValue()B

    move-result v0

    return v0
.end method

.method public getHSSFCell()Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;->_cell:Lorg/apache/poi/hssf/usermodel/HSSFCell;

    return-object v0
.end method

.method public getIdentityKey()Ljava/lang/Object;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;->_cell:Lorg/apache/poi/hssf/usermodel/HSSFCell;

    return-object v0
.end method

.method public getNumericCellValue()D
    .locals 2

    .line 59
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;->_cell:Lorg/apache/poi/hssf/usermodel/HSSFCell;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getNumericCellValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getRowIndex()I
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;->_cell:Lorg/apache/poi/hssf/usermodel/HSSFCell;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getRowIndex()I

    move-result v0

    return v0
.end method

.method public getSheet()Lorg/apache/poi/ss/formula/EvaluationSheet;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;->_evalSheet:Lorg/apache/poi/ss/formula/EvaluationSheet;

    return-object v0
.end method

.method public getStringCellValue()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;->_cell:Lorg/apache/poi/hssf/usermodel/HSSFCell;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getRichStringCellValue()Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
