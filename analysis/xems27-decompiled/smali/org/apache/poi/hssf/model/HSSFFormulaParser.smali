.class public final Lorg/apache/poi/hssf/model/HSSFFormulaParser;
.super Ljava/lang/Object;
.source "HSSFFormulaParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method private static createParsingWorkbook(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;
    .locals 1
    .param p0, "book"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 35
    invoke-static {p0}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->create(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1
    .param p0, "formula"    # Ljava/lang/String;
    .param p1, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/FormulaParseException;
        }
    .end annotation

    .line 46
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/poi/hssf/model/HSSFFormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;I)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;I)[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1
    .param p0, "formula"    # Ljava/lang/String;
    .param p1, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .param p2, "formulaType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/FormulaParseException;
        }
    .end annotation

    .line 55
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/poi/hssf/model/HSSFFormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1
    .param p0, "formula"    # Ljava/lang/String;
    .param p1, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .param p2, "formulaType"    # I
    .param p3, "sheetIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/FormulaParseException;
        }
    .end annotation

    .line 70
    invoke-static {p1}, Lorg/apache/poi/hssf/model/HSSFFormulaParser;->createParsingWorkbook(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lorg/apache/poi/ss/formula/FormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    return-object v0
.end method

.method public static toFormulaString(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;
    .locals 1
    .param p0, "book"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .param p1, "ptgs"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 81
    invoke-static {p0}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->create(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/poi/ss/formula/FormulaRenderer;->toFormulaString(Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
