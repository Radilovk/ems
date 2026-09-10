.class final Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;
.super Ljava/lang/Object;
.source "ForkedEvaluationWorkbook.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/EvaluationWorkbook;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook$OrderedSheet;
    }
.end annotation


# instance fields
.field private final _masterBook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

.field private final _sharedSheetsByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/EvaluationWorkbook;)V
    .locals 1
    .param p1, "master"    # Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->_masterBook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->_sharedSheetsByName:Ljava/util/Map;

    .line 48
    return-void
.end method

.method private getSharedSheet(Ljava/lang/String;)Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;
    .locals 4
    .param p1, "sheetName"    # Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->_sharedSheetsByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;

    .line 63
    .local v0, "result":Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;
    if-nez v0, :cond_0

    .line 64
    new-instance v1, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;

    iget-object v2, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->_masterBook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v2, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheet(I)Lorg/apache/poi/ss/formula/EvaluationSheet;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;-><init>(Lorg/apache/poi/ss/formula/EvaluationSheet;)V

    move-object v0, v1

    .line 66
    iget-object v1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->_sharedSheetsByName:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_0
    return-object v0
.end method


# virtual methods
.method public convertFromExternSheetIndex(I)I
    .locals 1
    .param p1, "externSheetIndex"    # I

    .line 87
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->_masterBook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->convertFromExternSheetIndex(I)I

    move-result v0

    return v0
.end method

.method public copyUpdatedCells(Lorg/apache/poi/ss/usermodel/Workbook;)V
    .locals 6
    .param p1, "workbook"    # Lorg/apache/poi/ss/usermodel/Workbook;

    .line 72
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->_sharedSheetsByName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 73
    .local v0, "sheetNames":[Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->_sharedSheetsByName:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 74
    array-length v1, v0

    new-array v1, v1, [Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook$OrderedSheet;

    .line 75
    .local v1, "oss":[Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook$OrderedSheet;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 76
    aget-object v3, v0, v2

    .line 77
    .local v3, "sheetName":Ljava/lang/String;
    new-instance v4, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook$OrderedSheet;

    iget-object v5, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->_masterBook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v5, v3}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v3, v5}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook$OrderedSheet;-><init>(Ljava/lang/String;I)V

    aput-object v4, v1, v2

    .line 75
    .end local v3    # "sheetName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 80
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook$OrderedSheet;->getSheetName()Ljava/lang/String;

    move-result-object v3

    .line 81
    .restart local v3    # "sheetName":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->_sharedSheetsByName:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;

    .line 82
    .local v4, "sheet":Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;
    invoke-interface {p1, v3}, Lorg/apache/poi/ss/usermodel/Workbook;->getSheet(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;->copyUpdatedCells(Lorg/apache/poi/ss/usermodel/Sheet;)V

    .line 79
    .end local v3    # "sheetName":Ljava/lang/String;
    .end local v4    # "sheet":Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 84
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public getEvaluationCell(Ljava/lang/String;II)Lorg/apache/poi/ss/formula/EvaluationCell;
    .locals 2
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "rowIndex"    # I
    .param p3, "columnIndex"    # I

    .line 57
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->getSharedSheet(Ljava/lang/String;)Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;

    move-result-object v0

    .line 58
    .local v0, "sheet":Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;
    invoke-virtual {v0, p2, p3}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;->getCell(II)Lorg/apache/poi/ss/formula/EvaluationCell;

    move-result-object v1

    return-object v1
.end method

.method public getExternalName(II)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;
    .locals 1
    .param p1, "externSheetIndex"    # I
    .param p2, "externNameIndex"    # I

    .line 118
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->_masterBook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1, p2}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getExternalName(II)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;

    move-result-object v0

    return-object v0
.end method

.method public getExternalName(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;
    .locals 1
    .param p1, "nameName"    # Ljava/lang/String;
    .param p2, "sheetName"    # Ljava/lang/String;
    .param p3, "externalWorkbookNumber"    # I

    .line 121
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->_masterBook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getExternalName(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;

    move-result-object v0

    return-object v0
.end method

.method public getExternalSheet(I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    .locals 1
    .param p1, "externSheetIndex"    # I

    .line 91
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->_masterBook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getExternalSheet(I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;

    move-result-object v0

    return-object v0
.end method

.method public getExternalSheet(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    .locals 1
    .param p1, "firstSheetName"    # Ljava/lang/String;
    .param p2, "lastSheetName"    # Ljava/lang/String;
    .param p3, "externalWorkbookNumber"    # I

    .line 94
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->_masterBook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getExternalSheet(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;

    move-result-object v0

    return-object v0
.end method

.method public getFormulaTokens(Lorg/apache/poi/ss/formula/EvaluationCell;)[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 2
    .param p1, "cell"    # Lorg/apache/poi/ss/formula/EvaluationCell;

    .line 98
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->_masterBook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getFormulaTokens(Lorg/apache/poi/ss/formula/EvaluationCell;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    return-object v0

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Updated formulas not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sheetIndex"    # I

    .line 110
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->_masterBook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1, p2}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object v0

    return-object v0
.end method

.method public getName(Lorg/apache/poi/ss/formula/ptg/NamePtg;)Lorg/apache/poi/ss/formula/EvaluationName;
    .locals 1
    .param p1, "namePtg"    # Lorg/apache/poi/ss/formula/ptg/NamePtg;

    .line 106
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->_masterBook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getName(Lorg/apache/poi/ss/formula/ptg/NamePtg;)Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object v0

    return-object v0
.end method

.method public getOrCreateUpdatableCell(Ljava/lang/String;II)Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;
    .locals 2
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "rowIndex"    # I
    .param p3, "columnIndex"    # I

    .line 52
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->getSharedSheet(Ljava/lang/String;)Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;

    move-result-object v0

    .line 53
    .local v0, "sheet":Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;
    invoke-virtual {v0, p2, p3}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;->getOrCreateUpdatableCell(II)Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;

    move-result-object v1

    return-object v1
.end method

.method public getSheet(I)Lorg/apache/poi/ss/formula/EvaluationSheet;
    .locals 1
    .param p1, "sheetIndex"    # I

    .line 114
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->getSharedSheet(Ljava/lang/String;)Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;

    move-result-object v0

    return-object v0
.end method

.method public getSheetIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "sheetName"    # Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->_masterBook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSheetIndex(Lorg/apache/poi/ss/formula/EvaluationSheet;)I
    .locals 2
    .param p1, "sheet"    # Lorg/apache/poi/ss/formula/EvaluationSheet;

    .line 125
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;

    if-eqz v0, :cond_0

    .line 126
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;

    .line 127
    .local v0, "mes":Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;
    iget-object v1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->_masterBook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;->getSheetIndex(Lorg/apache/poi/ss/formula/EvaluationWorkbook;)I

    move-result v1

    return v1

    .line 129
    .end local v0    # "mes":Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->_masterBook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetIndex(Lorg/apache/poi/ss/formula/EvaluationSheet;)I

    move-result v0

    return v0
.end method

.method public getSheetName(I)Ljava/lang/String;
    .locals 1
    .param p1, "sheetIndex"    # I

    .line 137
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->_masterBook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUDFFinder()Lorg/apache/poi/ss/formula/udf/UDFFinder;
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->_masterBook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getUDFFinder()Lorg/apache/poi/ss/formula/udf/UDFFinder;

    move-result-object v0

    return-object v0
.end method

.method public resolveNameXText(Lorg/apache/poi/ss/formula/ptg/NameXPtg;)Ljava/lang/String;
    .locals 1
    .param p1, "ptg"    # Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    .line 141
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->_masterBook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->resolveNameXText(Lorg/apache/poi/ss/formula/ptg/NameXPtg;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
