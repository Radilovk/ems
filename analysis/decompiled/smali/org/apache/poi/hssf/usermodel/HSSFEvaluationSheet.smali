.class final Lorg/apache/poi/hssf/usermodel/HSSFEvaluationSheet;
.super Ljava/lang/Object;
.source "HSSFEvaluationSheet.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/EvaluationSheet;


# instance fields
.field private final _hs:Lorg/apache/poi/hssf/usermodel/HSSFSheet;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V
    .locals 0
    .param p1, "hs"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationSheet;->_hs:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 32
    return-void
.end method


# virtual methods
.method public getCell(II)Lorg/apache/poi/ss/formula/EvaluationCell;
    .locals 4
    .param p1, "rowIndex"    # I
    .param p2, "columnIndex"    # I

    .prologue
    const/4 v2, 0x0

    .line 38
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationSheet;->_hs:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v3, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v1

    .line 39
    .local v1, "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    if-nez v1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-object v2

    .line 42
    :cond_1
    invoke-virtual {v1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v0

    .line 43
    .local v0, "cell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    if-eqz v0, :cond_0

    .line 46
    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;

    invoke-direct {v2, v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFCell;Lorg/apache/poi/ss/formula/EvaluationSheet;)V

    goto :goto_0
.end method

.method public getHSSFSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationSheet;->_hs:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    return-object v0
.end method
