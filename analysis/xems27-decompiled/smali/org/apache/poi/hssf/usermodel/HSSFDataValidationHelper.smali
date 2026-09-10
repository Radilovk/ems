.class public Lorg/apache/poi/hssf/usermodel/HSSFDataValidationHelper;
.super Ljava/lang/Object;
.source "HSSFDataValidationHelper.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/DataValidationHelper;


# instance fields
.field private sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V
    .locals 0
    .param p1, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidationHelper;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 36
    return-void
.end method


# virtual methods
.method public createCustomConstraint(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataValidationConstraint;
    .locals 1
    .param p1, "formula"    # Ljava/lang/String;

    .line 117
    invoke-static {p1}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->createCustomFormulaConstraint(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/DVConstraint;

    move-result-object v0

    return-object v0
.end method

.method public createDateConstraint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataValidationConstraint;
    .locals 1
    .param p1, "operatorType"    # I
    .param p2, "formula1"    # Ljava/lang/String;
    .param p3, "formula2"    # Ljava/lang/String;
    .param p4, "dateFormat"    # Ljava/lang/String;

    .line 46
    invoke-static {p1, p2, p3, p4}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->createDateConstraint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/DVConstraint;

    move-result-object v0

    return-object v0
.end method

.method public createDecimalConstraint(ILjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataValidationConstraint;
    .locals 1
    .param p1, "operatorType"    # I
    .param p2, "formula1"    # Ljava/lang/String;
    .param p3, "formula2"    # Ljava/lang/String;

    .line 89
    const/4 v0, 0x2

    invoke-static {v0, p1, p2, p3}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->createNumericConstraint(IILjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/DVConstraint;

    move-result-object v0

    return-object v0
.end method

.method public createExplicitListConstraint([Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataValidationConstraint;
    .locals 1
    .param p1, "listOfValues"    # [Ljava/lang/String;

    .line 57
    invoke-static {p1}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->createExplicitListConstraint([Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/DVConstraint;

    move-result-object v0

    return-object v0
.end method

.method public createFormulaListConstraint(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataValidationConstraint;
    .locals 1
    .param p1, "listFormula"    # Ljava/lang/String;

    .line 68
    invoke-static {p1}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->createFormulaListConstraint(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/DVConstraint;

    move-result-object v0

    return-object v0
.end method

.method public createIntegerConstraint(ILjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataValidationConstraint;
    .locals 1
    .param p1, "operatorType"    # I
    .param p2, "formula1"    # Ljava/lang/String;
    .param p3, "formula2"    # Ljava/lang/String;

    .line 78
    const/4 v0, 0x1

    invoke-static {v0, p1, p2, p3}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->createNumericConstraint(IILjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/DVConstraint;

    move-result-object v0

    return-object v0
.end method

.method public createNumericConstraint(IILjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataValidationConstraint;
    .locals 1
    .param p1, "validationType"    # I
    .param p2, "operatorType"    # I
    .param p3, "formula1"    # Ljava/lang/String;
    .param p4, "formula2"    # Ljava/lang/String;

    .line 74
    invoke-static {p1, p2, p3, p4}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->createNumericConstraint(IILjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/DVConstraint;

    move-result-object v0

    return-object v0
.end method

.method public createTextLengthConstraint(ILjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataValidationConstraint;
    .locals 1
    .param p1, "operatorType"    # I
    .param p2, "formula1"    # Ljava/lang/String;
    .param p3, "formula2"    # Ljava/lang/String;

    .line 100
    const/4 v0, 0x6

    invoke-static {v0, p1, p2, p3}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->createNumericConstraint(IILjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/DVConstraint;

    move-result-object v0

    return-object v0
.end method

.method public createTimeConstraint(ILjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataValidationConstraint;
    .locals 1
    .param p1, "operatorType"    # I
    .param p2, "formula1"    # Ljava/lang/String;
    .param p3, "formula2"    # Ljava/lang/String;

    .line 111
    invoke-static {p1, p2, p3}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->createTimeConstraint(ILjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/DVConstraint;

    move-result-object v0

    return-object v0
.end method

.method public createValidation(Lorg/apache/poi/ss/usermodel/DataValidationConstraint;Lorg/apache/poi/ss/util/CellRangeAddressList;)Lorg/apache/poi/ss/usermodel/DataValidation;
    .locals 1
    .param p1, "constraint"    # Lorg/apache/poi/ss/usermodel/DataValidationConstraint;
    .param p2, "cellRangeAddressList"    # Lorg/apache/poi/ss/util/CellRangeAddressList;

    .line 129
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;

    invoke-direct {v0, p2, p1}, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;-><init>(Lorg/apache/poi/ss/util/CellRangeAddressList;Lorg/apache/poi/ss/usermodel/DataValidationConstraint;)V

    return-object v0
.end method
