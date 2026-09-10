.class Lorg/apache/poi/hssf/usermodel/HSSFSheet$1;
.super Ljava/lang/Object;
.source "HSSFSheet.java"

# interfaces
.implements Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDataValidations()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private book:Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;

.field final synthetic this$0:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

.field final synthetic val$hssfValidations:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 412
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet$1;->this$0:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet$1;->val$hssfValidations:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet$1;->this$0:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->create(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet$1;->book:Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;

    return-void
.end method


# virtual methods
.method public visitRecord(Lorg/apache/poi/hssf/record/Record;)V
    .locals 6
    .param p1, "r"    # Lorg/apache/poi/hssf/record/Record;

    .prologue
    .line 417
    instance-of v4, p1, Lorg/apache/poi/hssf/record/DVRecord;

    if-nez v4, :cond_0

    .line 432
    :goto_0
    return-void

    :cond_0
    move-object v1, p1

    .line 420
    check-cast v1, Lorg/apache/poi/hssf/record/DVRecord;

    .line 421
    .local v1, "dvRecord":Lorg/apache/poi/hssf/record/DVRecord;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/DVRecord;->getCellRangeAddress()Lorg/apache/poi/ss/util/CellRangeAddressList;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellRangeAddressList;->copy()Lorg/apache/poi/ss/util/CellRangeAddressList;

    move-result-object v3

    .line 422
    .local v3, "regions":Lorg/apache/poi/ss/util/CellRangeAddressList;
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet$1;->book:Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;

    invoke-static {v1, v4}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->createDVConstraint(Lorg/apache/poi/hssf/record/DVRecord;Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;)Lorg/apache/poi/hssf/usermodel/DVConstraint;

    move-result-object v0

    .line 423
    .local v0, "constraint":Lorg/apache/poi/hssf/usermodel/DVConstraint;
    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;

    invoke-direct {v2, v3, v0}, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;-><init>(Lorg/apache/poi/ss/util/CellRangeAddressList;Lorg/apache/poi/ss/usermodel/DataValidationConstraint;)V

    .line 424
    .local v2, "hssfDataValidation":Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/DVRecord;->getErrorStyle()I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->setErrorStyle(I)V

    .line 425
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/DVRecord;->getEmptyCellAllowed()Z

    move-result v4

    invoke-virtual {v2, v4}, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->setEmptyCellAllowed(Z)V

    .line 426
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/DVRecord;->getSuppressDropdownArrow()Z

    move-result v4

    invoke-virtual {v2, v4}, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->setSuppressDropDownArrow(Z)V

    .line 427
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/DVRecord;->getPromptTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/DVRecord;->getPromptText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->createPromptBox(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/DVRecord;->getShowPromptOnCellSelected()Z

    move-result v4

    invoke-virtual {v2, v4}, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->setShowPromptBox(Z)V

    .line 429
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/DVRecord;->getErrorTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/DVRecord;->getErrorText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->createErrorBox(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/DVRecord;->getShowErrorOnInvalidValue()Z

    move-result v4

    invoke-virtual {v2, v4}, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->setShowErrorBox(Z)V

    .line 431
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet$1;->val$hssfValidations:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
