.class public Lorg/apache/poi/hssf/usermodel/DVConstraint;
.super Ljava/lang/Object;
.source "DVConstraint.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/DataValidationConstraint;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;,
        Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaPair;
    }
.end annotation


# static fields
.field private static final VT:Lorg/apache/poi/ss/usermodel/DataValidationConstraint$ValidationType;


# instance fields
.field private _explicitListValues:[Ljava/lang/String;

.field private _formula1:Ljava/lang/String;

.field private _formula2:Ljava/lang/String;

.field private _operator:I

.field private final _validationType:I

.field private _value1:Ljava/lang/Double;

.field private _value2:Ljava/lang/Double;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->VT:Lorg/apache/poi/ss/usermodel/DataValidationConstraint$ValidationType;

    return-void
.end method

.method private constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;[Ljava/lang/String;)V
    .locals 0
    .param p1, "validationType"    # I
    .param p2, "comparisonOperator"    # I
    .param p3, "formulaA"    # Ljava/lang/String;
    .param p4, "formulaB"    # Ljava/lang/String;
    .param p5, "value1"    # Ljava/lang/Double;
    .param p6, "value2"    # Ljava/lang/Double;
    .param p7, "excplicitListValues"    # [Ljava/lang/String;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_validationType:I

    .line 75
    iput p2, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_operator:I

    .line 76
    iput-object p3, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_formula1:Ljava/lang/String;

    .line 77
    iput-object p4, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_formula2:Ljava/lang/String;

    .line 78
    iput-object p5, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_value1:Ljava/lang/Double;

    .line 79
    iput-object p6, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_value2:Ljava/lang/Double;

    .line 80
    iput-object p7, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_explicitListValues:[Ljava/lang/String;

    .line 81
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p1, "listFormula"    # Ljava/lang/String;
    .param p2, "excplicitListValues"    # [Ljava/lang/String;

    .line 88
    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lorg/apache/poi/hssf/usermodel/DVConstraint;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;[Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method private static convertDate(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Ljava/lang/Double;
    .locals 5
    .param p0, "dateStr"    # Ljava/lang/String;
    .param p1, "dateFormat"    # Ljava/text/SimpleDateFormat;

    .line 252
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 253
    return-object v0

    .line 256
    :cond_0
    if-nez p1, :cond_1

    .line 257
    invoke-static {p0}, Lorg/apache/poi/hssf/usermodel/HSSFDateUtil;->parseYYYYMMDDDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .local v0, "dateVal":Ljava/util/Date;
    goto :goto_0

    .line 260
    .end local v0    # "dateVal":Ljava/util/Date;
    :cond_1
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .restart local v0    # "dateVal":Ljava/util/Date;
    nop

    .line 266
    :goto_0
    new-instance v1, Ljava/lang/Double;

    invoke-static {v0}, Lorg/apache/poi/hssf/usermodel/HSSFDateUtil;->getExcelDate(Ljava/util/Date;)D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    return-object v1

    .line 261
    .end local v0    # "dateVal":Ljava/util/Date;
    :catch_0
    move-exception v1

    .line 262
    .restart local v0    # "dateVal":Ljava/util/Date;
    .local v1, "e":Ljava/text/ParseException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse date \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' using specified format \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static convertDoubleFormula(Ljava/lang/String;Ljava/lang/Double;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 5
    .param p0, "formula"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Double;
    .param p2, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 425
    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 426
    if-nez p1, :cond_0

    .line 427
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/Ptg;->EMPTY_PTG_ARRAY:[Lorg/apache/poi/ss/formula/ptg/Ptg;

    return-object v0

    .line 429
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/poi/ss/formula/ptg/Ptg;

    new-instance v2, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;-><init>(D)V

    aput-object v2, v1, v0

    return-object v1

    .line 431
    :cond_1
    if-nez p1, :cond_2

    .line 434
    invoke-virtual {p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v1

    .line 435
    .local v1, "wb":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    invoke-virtual {v1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v2

    invoke-static {p0, v1, v0, v2}, Lorg/apache/poi/hssf/model/HSSFFormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    return-object v0

    .line 432
    .end local v1    # "wb":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Both formula and value cannot be present"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static convertNumber(Ljava/lang/String;)Ljava/lang/Double;
    .locals 4
    .param p0, "numberStr"    # Ljava/lang/String;

    .line 227
    if-nez p0, :cond_0

    .line 228
    const/4 v0, 0x0

    return-object v0

    .line 231
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p0}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The supplied text \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' could not be parsed as a number"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static convertTime(Ljava/lang/String;)Ljava/lang/Double;
    .locals 3
    .param p0, "timeStr"    # Ljava/lang/String;

    .line 242
    if-nez p0, :cond_0

    .line 243
    const/4 v0, 0x0

    return-object v0

    .line 245
    :cond_0
    new-instance v0, Ljava/lang/Double;

    invoke-static {p0}, Lorg/apache/poi/hssf/usermodel/HSSFDateUtil;->convertTime(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    return-object v0
.end method

.method public static createCustomFormulaConstraint(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/DVConstraint;
    .locals 9
    .param p0, "formula"    # Ljava/lang/String;

    .line 270
    if-eqz p0, :cond_0

    .line 273
    new-instance v8, Lorg/apache/poi/hssf/usermodel/DVConstraint;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lorg/apache/poi/hssf/usermodel/DVConstraint;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;[Ljava/lang/String;)V

    return-object v8

    .line 271
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "formula must be supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static createDVConstraint(Lorg/apache/poi/hssf/record/DVRecord;Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;)Lorg/apache/poi/hssf/usermodel/DVConstraint;
    .locals 20
    .param p0, "dvRecord"    # Lorg/apache/poi/hssf/record/DVRecord;
    .param p1, "book"    # Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;

    .line 439
    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/record/DVRecord;->getDataType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    move-object v1, v3

    .line 469
    .local v1, "pair1":Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;
    .local v3, "pair2":Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/record/DVRecord;->getDataType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v2

    const-string v2, "validationType={0}"

    invoke-static {v2, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 439
    .end local v1    # "pair1":Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;
    .end local v3    # "pair2":Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;
    :pswitch_0
    move-object v1, v3

    .restart local v1    # "pair1":Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;
    move-object v2, v3

    .line 467
    .local v2, "pair2":Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/record/DVRecord;->getFormula1()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->toFormulaString([Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;)Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;->string()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->createCustomFormulaConstraint(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/DVConstraint;

    move-result-object v3

    return-object v3

    .line 439
    .end local v1    # "pair1":Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;
    .end local v2    # "pair2":Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;
    :pswitch_1
    move-object v1, v3

    .line 452
    .restart local v1    # "pair1":Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;
    .restart local v3    # "pair2":Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/record/DVRecord;->getListExplicitFormula()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 453
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/record/DVRecord;->getFormula1()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v5

    invoke-static {v5, v0}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->toFormulaString([Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;)Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;->string()Ljava/lang/String;

    move-result-object v5

    .line 454
    .local v5, "values":Ljava/lang/String;
    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 455
    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 457
    :cond_0
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 458
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 460
    :cond_1
    const-string v2, "\u0000"

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 461
    .local v2, "explicitListValues":[Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->createExplicitListConstraint([Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/DVConstraint;

    move-result-object v4

    return-object v4

    .line 463
    .end local v2    # "explicitListValues":[Ljava/lang/String;
    .end local v5    # "values":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/record/DVRecord;->getFormula1()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->toFormulaString([Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;)Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;->string()Ljava/lang/String;

    move-result-object v2

    .line 464
    .local v2, "listFormula":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->createFormulaListConstraint(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/DVConstraint;

    move-result-object v4

    return-object v4

    .line 447
    .end local v1    # "pair1":Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;
    .end local v2    # "listFormula":Ljava/lang/String;
    .end local v3    # "pair2":Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/record/DVRecord;->getFormula1()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->toFormulaString([Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;)Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;

    move-result-object v1

    .line 448
    .restart local v1    # "pair1":Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/record/DVRecord;->getFormula2()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->toFormulaString([Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;)Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;

    move-result-object v2

    .line 449
    .local v2, "pair2":Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;
    new-instance v11, Lorg/apache/poi/hssf/usermodel/DVConstraint;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/record/DVRecord;->getDataType()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/record/DVRecord;->getConditionOperator()I

    move-result v5

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;->formula()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;->formula()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;->value()Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;->value()Ljava/lang/Double;

    move-result-object v9

    const/4 v10, 0x0

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lorg/apache/poi/hssf/usermodel/DVConstraint;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;[Ljava/lang/String;)V

    return-object v11

    .line 441
    .end local v1    # "pair1":Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;
    .end local v2    # "pair2":Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;
    :pswitch_3
    new-instance v1, Lorg/apache/poi/hssf/usermodel/DVConstraint;

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/record/DVRecord;->getConditionOperator()I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v12, v1

    invoke-direct/range {v12 .. v19}, Lorg/apache/poi/hssf/usermodel/DVConstraint;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;[Ljava/lang/String;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static createDateConstraint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/DVConstraint;
    .locals 12
    .param p0, "comparisonOperator"    # I
    .param p1, "expr1"    # Ljava/lang/String;
    .param p2, "expr2"    # Ljava/lang/String;
    .param p3, "dateFormat"    # Ljava/lang/String;

    .line 183
    if-eqz p1, :cond_3

    .line 186
    invoke-static {p0, p2}, Lorg/apache/poi/ss/usermodel/DataValidationConstraint$OperatorType;->validateSecondArg(ILjava/lang/String;)V

    .line 187
    const/4 v0, 0x0

    if-nez p3, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 190
    .local v1, "df":Ljava/text/SimpleDateFormat;
    :goto_0
    invoke-static {p1}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->getFormulaFromTextExpression(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 191
    .local v10, "formula1":Ljava/lang/String;
    if-nez v10, :cond_1

    invoke-static {p1, v1}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->convertDate(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Ljava/lang/Double;

    move-result-object v2

    move-object v7, v2

    goto :goto_1

    :cond_1
    move-object v7, v0

    .line 193
    .local v7, "value1":Ljava/lang/Double;
    :goto_1
    invoke-static {p2}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->getFormulaFromTextExpression(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 194
    .local v11, "formula2":Ljava/lang/String;
    if-nez v11, :cond_2

    invoke-static {p2, v1}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->convertDate(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Ljava/lang/Double;

    move-result-object v0

    :cond_2
    move-object v8, v0

    .line 195
    .local v8, "value2":Ljava/lang/Double;
    new-instance v0, Lorg/apache/poi/hssf/usermodel/DVConstraint;

    const/4 v3, 0x4

    const/4 v9, 0x0

    move-object v2, v0

    move v4, p0

    move-object v5, v10

    move-object v6, v11

    invoke-direct/range {v2 .. v9}, Lorg/apache/poi/hssf/usermodel/DVConstraint;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;[Ljava/lang/String;)V

    return-object v0

    .line 184
    .end local v1    # "df":Ljava/text/SimpleDateFormat;
    .end local v7    # "value1":Ljava/lang/Double;
    .end local v8    # "value2":Ljava/lang/Double;
    .end local v10    # "formula1":Ljava/lang/String;
    .end local v11    # "formula2":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "expr1 must be supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createExplicitListConstraint([Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/DVConstraint;
    .locals 2
    .param p0, "explicitListValues"    # [Ljava/lang/String;

    .line 138
    new-instance v0, Lorg/apache/poi/hssf/usermodel/DVConstraint;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/hssf/usermodel/DVConstraint;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static createFormulaListConstraint(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/DVConstraint;
    .locals 2
    .param p0, "listFormula"    # Ljava/lang/String;

    .line 135
    new-instance v0, Lorg/apache/poi/hssf/usermodel/DVConstraint;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/hssf/usermodel/DVConstraint;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method private createListFormula(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 5
    .param p1, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 401
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_explicitListValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 402
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v0

    .line 404
    .local v0, "wb":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_formula1:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lorg/apache/poi/hssf/model/HSSFFormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    return-object v1

    .line 409
    .end local v0    # "wb":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x10

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v0, v1

    .line 410
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_explicitListValues:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2

    .line 411
    if-lez v1, :cond_1

    .line 412
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 414
    :cond_1
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_explicitListValues:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 410
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 417
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/poi/ss/formula/ptg/Ptg;

    new-instance v2, Lorg/apache/poi/ss/formula/ptg/StringPtg;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/apache/poi/ss/formula/ptg/StringPtg;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v3

    return-object v1
.end method

.method public static createNumericConstraint(IILjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/DVConstraint;
    .locals 11
    .param p0, "validationType"    # I
    .param p1, "comparisonOperator"    # I
    .param p2, "expr1"    # Ljava/lang/String;
    .param p3, "expr2"    # Ljava/lang/String;

    .line 107
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Validation Type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") not supported with this method"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 119
    invoke-static {p1, p3}, Lorg/apache/poi/ss/usermodel/DataValidationConstraint$OperatorType;->validateSecondArg(ILjava/lang/String;)V

    .line 120
    goto :goto_1

    .line 117
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "expr1 must be supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_3
    if-nez p2, :cond_6

    if-nez p3, :cond_6

    .line 126
    :goto_1
    invoke-static {p2}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->getFormulaFromTextExpression(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "formula1":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-static {p2}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->convertNumber(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    move-object v7, v2

    goto :goto_2

    :cond_4
    move-object v7, v1

    .line 129
    .local v7, "value1":Ljava/lang/Double;
    :goto_2
    invoke-static {p3}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->getFormulaFromTextExpression(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 130
    .local v10, "formula2":Ljava/lang/String;
    if-nez v10, :cond_5

    invoke-static {p3}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->convertNumber(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    :cond_5
    move-object v8, v1

    .line 131
    .local v8, "value2":Ljava/lang/Double;
    new-instance v1, Lorg/apache/poi/hssf/usermodel/DVConstraint;

    const/4 v9, 0x0

    move-object v2, v1

    move v3, p0

    move v4, p1

    move-object v5, v0

    move-object v6, v10

    invoke-direct/range {v2 .. v9}, Lorg/apache/poi/hssf/usermodel/DVConstraint;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;[Ljava/lang/String;)V

    return-object v1

    .line 110
    .end local v0    # "formula1":Ljava/lang/String;
    .end local v7    # "value1":Ljava/lang/Double;
    .end local v8    # "value2":Ljava/lang/Double;
    .end local v10    # "formula2":Ljava/lang/String;
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "expr1 and expr2 must be null for validation type \'any\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createTimeConstraint(ILjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/DVConstraint;
    .locals 11
    .param p0, "comparisonOperator"    # I
    .param p1, "expr1"    # Ljava/lang/String;
    .param p2, "expr2"    # Ljava/lang/String;

    .line 154
    if-eqz p1, :cond_2

    .line 157
    invoke-static {p0, p1}, Lorg/apache/poi/ss/usermodel/DataValidationConstraint$OperatorType;->validateSecondArg(ILjava/lang/String;)V

    .line 160
    invoke-static {p1}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->getFormulaFromTextExpression(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 161
    .local v8, "formula1":Ljava/lang/String;
    const/4 v0, 0x0

    if-nez v8, :cond_0

    invoke-static {p1}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->convertTime(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v0

    .line 163
    .local v5, "value1":Ljava/lang/Double;
    :goto_0
    invoke-static {p2}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->getFormulaFromTextExpression(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 164
    .local v9, "formula2":Ljava/lang/String;
    if-nez v9, :cond_1

    invoke-static {p2}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->convertTime(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    :cond_1
    move-object v6, v0

    .line 165
    .local v6, "value2":Ljava/lang/Double;
    new-instance v10, Lorg/apache/poi/hssf/usermodel/DVConstraint;

    const/4 v1, 0x5

    const/4 v7, 0x0

    move-object v0, v10

    move v2, p0

    move-object v3, v8

    move-object v4, v9

    invoke-direct/range {v0 .. v7}, Lorg/apache/poi/hssf/usermodel/DVConstraint;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;[Ljava/lang/String;)V

    return-object v10

    .line 155
    .end local v5    # "value1":Ljava/lang/Double;
    .end local v6    # "value2":Ljava/lang/Double;
    .end local v8    # "formula1":Ljava/lang/String;
    .end local v9    # "formula2":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "expr1 must be supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getFormulaFromTextExpression(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "textExpr"    # Ljava/lang/String;

    .line 210
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 211
    return-object v0

    .line 213
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_2

    .line 216
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x3d

    if-ne v1, v3, :cond_1

    .line 217
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 219
    :cond_1
    return-object v0

    .line 214
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty string is not a valid formula/value expression"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toFormulaString([Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;)Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;
    .locals 4
    .param p0, "ptgs"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p1, "book"    # Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;

    .line 500
    new-instance v0, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;-><init>(Lorg/apache/poi/hssf/usermodel/DVConstraint$1;)V

    .line 501
    .local v0, "pair":Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;
    if-eqz p0, :cond_1

    array-length v1, p0

    if-lez v1, :cond_1

    .line 502
    invoke-static {p1, p0}, Lorg/apache/poi/ss/formula/FormulaRenderer;->toFormulaString(Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;

    move-result-object v1

    .line 503
    .local v1, "string":Ljava/lang/String;
    array-length v2, p0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    if-ne v2, v3, :cond_0

    .line 504
    invoke-static {v0, v1}, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;->access$102(Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 506
    :cond_0
    invoke-static {v0, v1}, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;->access$202(Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;Ljava/lang/String;)Ljava/lang/String;

    .line 509
    .end local v1    # "string":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method createFormulas(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaPair;
    .locals 3
    .param p1, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 389
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->isListValidationType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->createListFormula(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    .line 391
    .local v0, "formula1":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    sget-object v1, Lorg/apache/poi/ss/formula/ptg/Ptg;->EMPTY_PTG_ARRAY:[Lorg/apache/poi/ss/formula/ptg/Ptg;

    .local v1, "formula2":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    goto :goto_0

    .line 393
    .end local v0    # "formula1":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .end local v1    # "formula2":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_formula1:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_value1:Ljava/lang/Double;

    invoke-static {v0, v1, p1}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->convertDoubleFormula(Ljava/lang/String;Ljava/lang/Double;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    .line 394
    .restart local v0    # "formula1":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_formula2:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_value2:Ljava/lang/Double;

    invoke-static {v1, v2, p1}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->convertDoubleFormula(Ljava/lang/String;Ljava/lang/Double;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    .line 396
    .restart local v1    # "formula2":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    :goto_0
    new-instance v2, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaPair;

    invoke-direct {v2, v0, v1}, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaPair;-><init>([Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v2
.end method

.method public getExplicitListValues()[Ljava/lang/String;
    .locals 1

    .line 313
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_explicitListValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getFormula1()Ljava/lang/String;
    .locals 1

    .line 330
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_formula1:Ljava/lang/String;

    return-object v0
.end method

.method public getFormula2()Ljava/lang/String;
    .locals 1

    .line 345
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_formula2:Ljava/lang/String;

    return-object v0
.end method

.method public getOperator()I
    .locals 1

    .line 300
    iget v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_operator:I

    return v0
.end method

.method public getValidationType()I
    .locals 1

    .line 280
    iget v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_validationType:I

    return v0
.end method

.method public getValue1()Ljava/lang/Double;
    .locals 1

    .line 359
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_value1:Ljava/lang/Double;

    return-object v0
.end method

.method public getValue2()Ljava/lang/Double;
    .locals 1

    .line 373
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_value2:Ljava/lang/Double;

    return-object v0
.end method

.method public isExplicitList()Z
    .locals 2

    .line 294
    iget v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_validationType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_explicitListValues:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isListValidationType()Z
    .locals 2

    .line 287
    iget v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_validationType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setExplicitListValues([Ljava/lang/String;)V
    .locals 2
    .param p1, "explicitListValues"    # [Ljava/lang/String;

    .line 319
    iget v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_validationType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_formula1:Ljava/lang/String;

    .line 323
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_explicitListValues:[Ljava/lang/String;

    .line 324
    return-void

    .line 320
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot setExplicitListValues on non-list constraint"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFormula1(Ljava/lang/String;)V
    .locals 1
    .param p1, "formula1"    # Ljava/lang/String;

    .line 336
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_value1:Ljava/lang/Double;

    .line 337
    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_explicitListValues:[Ljava/lang/String;

    .line 338
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_formula1:Ljava/lang/String;

    .line 339
    return-void
.end method

.method public setFormula2(Ljava/lang/String;)V
    .locals 1
    .param p1, "formula2"    # Ljava/lang/String;

    .line 351
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_value2:Ljava/lang/Double;

    .line 352
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_formula2:Ljava/lang/String;

    .line 353
    return-void
.end method

.method public setOperator(I)V
    .locals 0
    .param p1, "operator"    # I

    .line 306
    iput p1, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_operator:I

    .line 307
    return-void
.end method

.method public setValue1(D)V
    .locals 1
    .param p1, "value1"    # D

    .line 365
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_formula1:Ljava/lang/String;

    .line 366
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_value1:Ljava/lang/Double;

    .line 367
    return-void
.end method

.method public setValue2(D)V
    .locals 1
    .param p1, "value2"    # D

    .line 379
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_formula2:Ljava/lang/String;

    .line 380
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_value2:Ljava/lang/Double;

    .line 381
    return-void
.end method
