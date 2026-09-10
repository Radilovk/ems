.class final Lorg/apache/poi/ss/formula/ptg/ExternSheetNameResolver;
.super Ljava/lang/Object;
.source "ExternSheetNameResolver.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static prependSheetName(Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;ILjava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "book"    # Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;
    .param p1, "field_1_index_extern_sheet"    # I
    .param p2, "cellRefText"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x3a

    .line 34
    invoke-interface {p0, p1}, Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;->getExternalSheet(I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;

    move-result-object v0

    .line 36
    .local v0, "externalSheet":Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    if-eqz v0, :cond_2

    .line 37
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->getWorkbookName()Ljava/lang/String;

    move-result-object v6

    .line 38
    .local v6, "wbName":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->getSheetName()Ljava/lang/String;

    move-result-object v5

    .line 39
    .local v5, "sheetName":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 40
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x4

    invoke-direct {v4, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 41
    .local v4, "sb":Ljava/lang/StringBuffer;
    invoke-static {v4, v6, v5}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendFormat(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :goto_0
    instance-of v7, v0, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;

    if-eqz v7, :cond_0

    move-object v3, v0

    .line 47
    check-cast v3, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;

    .line 48
    .local v3, "r":Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;
    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;->getFirstSheetName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;->getLastSheetName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 49
    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 50
    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;->getLastSheetName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendFormat(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 68
    .end local v3    # "r":Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;
    .end local v5    # "sheetName":Ljava/lang/String;
    .end local v6    # "wbName":Ljava/lang/String;
    :cond_0
    :goto_1
    const/16 v7, 0x21

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 69
    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 43
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    .restart local v5    # "sheetName":Ljava/lang/String;
    .restart local v6    # "wbName":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x4

    invoke-direct {v4, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 44
    .restart local v4    # "sb":Ljava/lang/StringBuffer;
    invoke-static {v4, v5}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendFormat(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    .end local v5    # "sheetName":Ljava/lang/String;
    .end local v6    # "wbName":Ljava/lang/String;
    :cond_2
    invoke-interface {p0, p1}, Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;->getSheetFirstNameByExternSheet(I)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "firstSheetName":Ljava/lang/String;
    invoke-interface {p0, p1}, Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;->getSheetLastNameByExternSheet(I)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "lastSheetName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x4

    invoke-direct {v4, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 57
    .restart local v4    # "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_3

    .line 59
    const-string v7, "#REF"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 61
    :cond_3
    invoke-static {v4, v1}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendFormat(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 63
    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 64
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method
