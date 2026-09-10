.class public Lorg/apache/poi/hssf/usermodel/HSSFCreationHelper;
.super Ljava/lang/Object;
.source "HSSFCreationHelper.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/CreationHelper;


# instance fields
.field private dataFormat:Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;

.field private workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;


# direct methods
.method constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 2
    .param p1, "wb"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCreationHelper;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 30
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCreationHelper;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;-><init>(Lorg/apache/poi/hssf/model/InternalWorkbook;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCreationHelper;->dataFormat:Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;

    .line 31
    return-void
.end method


# virtual methods
.method public createClientAnchor()Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;
    .locals 1

    .line 61
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    invoke-direct {v0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createClientAnchor()Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCreationHelper;->createClientAnchor()Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    move-result-object v0

    return-object v0
.end method

.method public createDataFormat()Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCreationHelper;->dataFormat:Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;

    return-object v0
.end method

.method public bridge synthetic createDataFormat()Lorg/apache/poi/ss/usermodel/DataFormat;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCreationHelper;->createDataFormat()Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;

    move-result-object v0

    return-object v0
.end method

.method public createFormulaEvaluator()Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;
    .locals 2

    .line 51
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCreationHelper;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    return-object v0
.end method

.method public bridge synthetic createFormulaEvaluator()Lorg/apache/poi/ss/usermodel/FormulaEvaluator;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCreationHelper;->createFormulaEvaluator()Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;

    move-result-object v0

    return-object v0
.end method

.method public createHyperlink(I)Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;
    .locals 1
    .param p1, "type"    # I

    .line 42
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic createHyperlink(I)Lorg/apache/poi/ss/usermodel/Hyperlink;
    .locals 1
    .param p1, "x0"    # I

    .line 22
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFCreationHelper;->createHyperlink(I)Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;

    move-result-object v0

    return-object v0
.end method

.method public createRichTextString(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 34
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createRichTextString(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/RichTextString;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .line 22
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFCreationHelper;->createRichTextString(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    move-result-object v0

    return-object v0
.end method
