.class public final Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
.super Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;
.source "FormulaRecordAggregate.java"

# interfaces
.implements Lorg/apache/poi/hssf/record/CellValueRecordInterface;


# instance fields
.field private final _formulaRecord:Lorg/apache/poi/hssf/record/FormulaRecord;

.field private _sharedFormulaRecord:Lorg/apache/poi/hssf/record/SharedFormulaRecord;

.field private _sharedValueManager:Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;

.field private _stringRecord:Lorg/apache/poi/hssf/record/StringRecord;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/FormulaRecord;Lorg/apache/poi/hssf/record/StringRecord;Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;)V
    .locals 3
    .param p1, "formulaRec"    # Lorg/apache/poi/hssf/record/FormulaRecord;
    .param p2, "stringRec"    # Lorg/apache/poi/hssf/record/StringRecord;
    .param p3, "svm"    # Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;-><init>()V

    .line 55
    if-nez p3, :cond_0

    .line 56
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "sfm must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/FormulaRecord;->hasCachedResultString()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 59
    if-nez p2, :cond_1

    .line 60
    new-instance v1, Lorg/apache/poi/hssf/record/RecordFormatException;

    const-string v2, "Formula record flag is set but String record was not found"

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_1
    iput-object p2, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_stringRecord:Lorg/apache/poi/hssf/record/StringRecord;

    .line 70
    :goto_0
    iput-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_formulaRecord:Lorg/apache/poi/hssf/record/FormulaRecord;

    .line 71
    iput-object p3, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_sharedValueManager:Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;

    .line 72
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/FormulaRecord;->isSharedFormula()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/FormulaRecord;->getFormula()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/Formula;->getExpReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    .line 74
    .local v0, "firstCell":Lorg/apache/poi/ss/util/CellReference;
    if-nez v0, :cond_4

    .line 75
    invoke-static {p1}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->handleMissingSharedFormulaRecord(Lorg/apache/poi/hssf/record/FormulaRecord;)V

    .line 80
    .end local v0    # "firstCell":Lorg/apache/poi/ss/util/CellReference;
    :cond_2
    :goto_1
    return-void

    .line 67
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_stringRecord:Lorg/apache/poi/hssf/record/StringRecord;

    goto :goto_0

    .line 77
    .restart local v0    # "firstCell":Lorg/apache/poi/ss/util/CellReference;
    :cond_4
    invoke-virtual {p3, v0, p0}, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->linkSharedFormulaRecord(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;)Lorg/apache/poi/hssf/record/SharedFormulaRecord;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_sharedFormulaRecord:Lorg/apache/poi/hssf/record/SharedFormulaRecord;

    goto :goto_1
.end method

.method private static handleMissingSharedFormulaRecord(Lorg/apache/poi/hssf/record/FormulaRecord;)V
    .locals 3
    .param p0, "formula"    # Lorg/apache/poi/hssf/record/FormulaRecord;

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaRecord;->getParsedExpression()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    aget-object v0, v1, v2

    .line 96
    .local v0, "firstToken":Lorg/apache/poi/ss/formula/ptg/Ptg;
    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/ExpPtg;

    if-eqz v1, :cond_0

    .line 97
    new-instance v1, Lorg/apache/poi/hssf/record/RecordFormatException;

    const-string v2, "SharedFormulaRecord not found for FormulaRecord with (isSharedFormula=true)"

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_0
    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/record/FormulaRecord;->setSharedFormula(Z)V

    .line 102
    return-void
.end method


# virtual methods
.method public getArrayFormulaRange()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 8

    .prologue
    .line 239
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_sharedFormulaRecord:Lorg/apache/poi/hssf/record/SharedFormulaRecord;

    if-eqz v3, :cond_0

    .line 240
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "not an array formula cell."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 242
    :cond_0
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_formulaRecord:Lorg/apache/poi/hssf/record/FormulaRecord;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/FormulaRecord;->getFormula()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/Formula;->getExpReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v2

    .line 243
    .local v2, "expRef":Lorg/apache/poi/ss/util/CellReference;
    if-nez v2, :cond_1

    .line 244
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "not an array formula cell."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 246
    :cond_1
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_sharedValueManager:Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v4

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->getArrayRecord(II)Lorg/apache/poi/hssf/record/ArrayRecord;

    move-result-object v1

    .line 247
    .local v1, "arec":Lorg/apache/poi/hssf/record/ArrayRecord;
    if-nez v1, :cond_2

    .line 248
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ArrayRecord was not found for the locator "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 250
    :cond_2
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/ArrayRecord;->getRange()Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    move-result-object v0

    .line 251
    .local v0, "a":Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;
    new-instance v3, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;->getFirstRow()I

    move-result v4

    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;->getLastRow()I

    move-result v5

    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;->getFirstColumn()I

    move-result v6

    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;->getLastColumn()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    return-object v3
.end method

.method public getColumn()S
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_formulaRecord:Lorg/apache/poi/hssf/record/FormulaRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FormulaRecord;->getColumn()S

    move-result v0

    return v0
.end method

.method public getFormulaRecord()Lorg/apache/poi/hssf/record/FormulaRecord;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_formulaRecord:Lorg/apache/poi/hssf/record/FormulaRecord;

    return-object v0
.end method

.method public getFormulaTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 5

    .prologue
    .line 189
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_sharedFormulaRecord:Lorg/apache/poi/hssf/record/SharedFormulaRecord;

    if-eqz v2, :cond_0

    .line 190
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_sharedFormulaRecord:Lorg/apache/poi/hssf/record/SharedFormulaRecord;

    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_formulaRecord:Lorg/apache/poi/hssf/record/FormulaRecord;

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/SharedFormulaRecord;->getFormulaTokens(Lorg/apache/poi/hssf/record/FormulaRecord;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    .line 197
    :goto_0
    return-object v2

    .line 192
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_formulaRecord:Lorg/apache/poi/hssf/record/FormulaRecord;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/FormulaRecord;->getFormula()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/Formula;->getExpReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v1

    .line 193
    .local v1, "expRef":Lorg/apache/poi/ss/util/CellReference;
    if-eqz v1, :cond_1

    .line 194
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_sharedValueManager:Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v3

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->getArrayRecord(II)Lorg/apache/poi/hssf/record/ArrayRecord;

    move-result-object v0

    .line 195
    .local v0, "arec":Lorg/apache/poi/hssf/record/ArrayRecord;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ArrayRecord;->getFormulaTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    goto :goto_0

    .line 197
    .end local v0    # "arec":Lorg/apache/poi/hssf/record/ArrayRecord;
    :cond_1
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_formulaRecord:Lorg/apache/poi/hssf/record/FormulaRecord;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/FormulaRecord;->getParsedExpression()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    goto :goto_0
.end method

.method public getRow()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_formulaRecord:Lorg/apache/poi/hssf/record/FormulaRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FormulaRecord;->getRow()I

    move-result v0

    return v0
.end method

.method public getStringRecord()Lorg/apache/poi/hssf/record/StringRecord;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_stringRecord:Lorg/apache/poi/hssf/record/StringRecord;

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_stringRecord:Lorg/apache/poi/hssf/record/StringRecord;

    if-nez v0, :cond_0

    .line 157
    const/4 v0, 0x0

    .line 159
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_stringRecord:Lorg/apache/poi/hssf/record/StringRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/StringRecord;->getString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getXFIndex()S
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_formulaRecord:Lorg/apache/poi/hssf/record/FormulaRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FormulaRecord;->getXFIndex()S

    move-result v0

    return v0
.end method

.method public isPartOfArrayFormula()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 230
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_sharedFormulaRecord:Lorg/apache/poi/hssf/record/SharedFormulaRecord;

    if-eqz v3, :cond_1

    .line 235
    :cond_0
    :goto_0
    return v2

    .line 233
    :cond_1
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_formulaRecord:Lorg/apache/poi/hssf/record/FormulaRecord;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/FormulaRecord;->getFormula()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/Formula;->getExpReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v1

    .line 234
    .local v1, "expRef":Lorg/apache/poi/ss/util/CellReference;
    if-nez v1, :cond_2

    const/4 v0, 0x0

    .line 235
    .local v0, "arec":Lorg/apache/poi/hssf/record/ArrayRecord;
    :goto_1
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 234
    .end local v0    # "arec":Lorg/apache/poi/hssf/record/ArrayRecord;
    :cond_2
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_sharedValueManager:Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v4

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->getArrayRecord(II)Lorg/apache/poi/hssf/record/ArrayRecord;

    move-result-object v0

    goto :goto_1
.end method

.method public notifyFormulaChanging()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_sharedFormulaRecord:Lorg/apache/poi/hssf/record/SharedFormulaRecord;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_sharedValueManager:Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_sharedFormulaRecord:Lorg/apache/poi/hssf/record/SharedFormulaRecord;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->unlink(Lorg/apache/poi/hssf/record/SharedFormulaRecord;)V

    .line 228
    :cond_0
    return-void
.end method

.method public removeArrayFormula(II)Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 6
    .param p1, "rowIndex"    # I
    .param p2, "columnIndex"    # I

    .prologue
    .line 264
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_sharedValueManager:Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;

    invoke-virtual {v1, p1, p2}, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->removeArrayFormula(II)Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    move-result-object v0

    .line 266
    .local v0, "a":Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_formulaRecord:Lorg/apache/poi/hssf/record/FormulaRecord;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/FormulaRecord;->setParsedExpression([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 267
    new-instance v1, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;->getFirstRow()I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;->getLastRow()I

    move-result v3

    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;->getFirstColumn()I

    move-result v4

    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;->getLastColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    return-object v1
.end method

.method public setArrayFormula(Lorg/apache/poi/ss/util/CellRangeAddress;[Lorg/apache/poi/ss/formula/ptg/Ptg;)V
    .locals 7
    .param p1, "r"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "ptgs"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;

    .prologue
    .line 256
    new-instance v0, Lorg/apache/poi/hssf/record/ArrayRecord;

    invoke-static {p2}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v1

    new-instance v2, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v3

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v4

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v5

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;-><init>(IIII)V

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hssf/record/ArrayRecord;-><init>(Lorg/apache/poi/ss/formula/Formula;Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;)V

    .line 257
    .local v0, "arr":Lorg/apache/poi/hssf/record/ArrayRecord;
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_sharedValueManager:Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->addArrayRecord(Lorg/apache/poi/hssf/record/ArrayRecord;)V

    .line 258
    return-void
.end method

.method public setCachedBooleanResult(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_stringRecord:Lorg/apache/poi/hssf/record/StringRecord;

    .line 177
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_formulaRecord:Lorg/apache/poi/hssf/record/FormulaRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/FormulaRecord;->setCachedResultBoolean(Z)V

    .line 178
    return-void
.end method

.method public setCachedDoubleResult(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_stringRecord:Lorg/apache/poi/hssf/record/StringRecord;

    .line 185
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_formulaRecord:Lorg/apache/poi/hssf/record/FormulaRecord;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/record/FormulaRecord;->setValue(D)V

    .line 186
    return-void
.end method

.method public setCachedErrorResult(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_stringRecord:Lorg/apache/poi/hssf/record/StringRecord;

    .line 181
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_formulaRecord:Lorg/apache/poi/hssf/record/FormulaRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/FormulaRecord;->setCachedResultErrorCode(I)V

    .line 182
    return-void
.end method

.method public setCachedStringResult(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 165
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_stringRecord:Lorg/apache/poi/hssf/record/StringRecord;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Lorg/apache/poi/hssf/record/StringRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/StringRecord;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_stringRecord:Lorg/apache/poi/hssf/record/StringRecord;

    .line 168
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_stringRecord:Lorg/apache/poi/hssf/record/StringRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/StringRecord;->setString(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 170
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_formulaRecord:Lorg/apache/poi/hssf/record/FormulaRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FormulaRecord;->setCachedResultTypeEmptyString()V

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_formulaRecord:Lorg/apache/poi/hssf/record/FormulaRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FormulaRecord;->setCachedResultTypeString()V

    goto :goto_0
.end method

.method public setColumn(S)V
    .locals 1
    .param p1, "col"    # S

    .prologue
    .line 125
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_formulaRecord:Lorg/apache/poi/hssf/record/FormulaRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/FormulaRecord;->setColumn(S)V

    .line 126
    return-void
.end method

.method public setParsedExpression([Lorg/apache/poi/ss/formula/ptg/Ptg;)V
    .locals 1
    .param p1, "ptgs"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;

    .prologue
    .line 204
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->notifyFormulaChanging()V

    .line 205
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_formulaRecord:Lorg/apache/poi/hssf/record/FormulaRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/FormulaRecord;->setParsedExpression([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 206
    return-void
.end method

.method public setRow(I)V
    .locals 1
    .param p1, "row"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_formulaRecord:Lorg/apache/poi/hssf/record/FormulaRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/FormulaRecord;->setRow(I)V

    .line 130
    return-void
.end method

.method public setXFIndex(S)V
    .locals 1
    .param p1, "xf"    # S

    .prologue
    .line 121
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_formulaRecord:Lorg/apache/poi/hssf/record/FormulaRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/FormulaRecord;->setXFIndex(S)V

    .line 122
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_formulaRecord:Lorg/apache/poi/hssf/record/FormulaRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FormulaRecord;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unlinkSharedFormula()V
    .locals 4

    .prologue
    .line 209
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_sharedFormulaRecord:Lorg/apache/poi/hssf/record/SharedFormulaRecord;

    .line 210
    .local v1, "sfr":Lorg/apache/poi/hssf/record/SharedFormulaRecord;
    if-nez v1, :cond_0

    .line 211
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Formula not linked to shared formula"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 213
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_formulaRecord:Lorg/apache/poi/hssf/record/FormulaRecord;

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/SharedFormulaRecord;->getFormulaTokens(Lorg/apache/poi/hssf/record/FormulaRecord;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    .line 214
    .local v0, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_formulaRecord:Lorg/apache/poi/hssf/record/FormulaRecord;

    invoke-virtual {v2, v0}, Lorg/apache/poi/hssf/record/FormulaRecord;->setParsedExpression([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 216
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_formulaRecord:Lorg/apache/poi/hssf/record/FormulaRecord;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/FormulaRecord;->setSharedFormula(Z)V

    .line 217
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_sharedFormulaRecord:Lorg/apache/poi/hssf/record/SharedFormulaRecord;

    .line 218
    return-void
.end method

.method public visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V
    .locals 2
    .param p1, "rv"    # Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;

    .prologue
    .line 145
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_formulaRecord:Lorg/apache/poi/hssf/record/FormulaRecord;

    invoke-interface {p1, v1}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 146
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_sharedValueManager:Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;

    invoke-virtual {v1, p0}, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->getRecordForFirstCell(Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;)Lorg/apache/poi/hssf/record/SharedValueRecordBase;

    move-result-object v0

    .line 147
    .local v0, "sharedFormulaRecord":Lorg/apache/poi/hssf/record/Record;
    if-eqz v0, :cond_0

    .line 148
    invoke-interface {p1, v0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 150
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_formulaRecord:Lorg/apache/poi/hssf/record/FormulaRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/FormulaRecord;->hasCachedResultString()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_stringRecord:Lorg/apache/poi/hssf/record/StringRecord;

    if-eqz v1, :cond_1

    .line 151
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->_stringRecord:Lorg/apache/poi/hssf/record/StringRecord;

    invoke-interface {p1, v1}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 153
    :cond_1
    return-void
.end method
