.class final Lorg/apache/poi/ss/formula/ptg/ExternSheetNameResolver;
.super Ljava/lang/Object;
.source "ExternSheetNameResolver.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static prependSheetName(Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;ILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "book"    # Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;
    .param p1, "field_1_index_extern_sheet"    # I
    .param p2, "cellRefText"    # Ljava/lang/String;

    .line 34
    invoke-interface {p0, p1}, Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;->getExternalSheet(I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;

    move-result-object v0

    .line 36
    .local v0, "externalSheet":Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    const/16 v1, 0x3a

    if-eqz v0, :cond_2

    .line 37
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->getWorkbookName()Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "wbName":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->getSheetName()Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, "sheetName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 40
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x4

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 41
    .local v4, "sb":Ljava/lang/StringBuffer;
    invoke-static {v4, v2, v3}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendFormat(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x4

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 44
    .restart local v4    # "sb":Ljava/lang/StringBuffer;
    invoke-static {v4, v3}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendFormat(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 46
    :goto_0
    instance-of v5, v0, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;

    if-eqz v5, :cond_1

    .line 47
    move-object v5, v0

    check-cast v5, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;

    .line 48
    .local v5, "r":Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;
    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;->getFirstSheetName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;->getLastSheetName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 49
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 50
    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;->getLastSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendFormat(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 53
    .end local v2    # "wbName":Ljava/lang/String;
    .end local v3    # "sheetName":Ljava/lang/String;
    .end local v5    # "r":Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;
    :cond_1
    goto :goto_1

    .line 54
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_2
    invoke-interface {p0, p1}, Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;->getSheetFirstNameByExternSheet(I)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "firstSheetName":Ljava/lang/String;
    invoke-interface {p0, p1}, Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;->getSheetLastNameByExternSheet(I)Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, "lastSheetName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x4

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 57
    .restart local v4    # "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_3

    .line 59
    const-string v1, "#REF"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 61
    :cond_3
    invoke-static {v4, v2}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendFormat(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 63
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 64
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    .end local v2    # "firstSheetName":Ljava/lang/String;
    .end local v3    # "lastSheetName":Ljava/lang/String;
    :cond_4
    :goto_1
    const/16 v1, 0x21

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 69
    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
