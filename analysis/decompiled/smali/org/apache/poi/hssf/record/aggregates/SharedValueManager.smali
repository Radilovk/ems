.class public final Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;
.super Ljava/lang/Object;
.source "SharedValueManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;
    }
.end annotation


# instance fields
.field private final _arrayRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/hssf/record/ArrayRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final _groupsBySharedFormulaRecord:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/poi/hssf/record/SharedFormulaRecord;",
            "Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;",
            ">;"
        }
    .end annotation
.end field

.field private _groupsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final _tableRecords:[Lorg/apache/poi/hssf/record/TableRecord;


# direct methods
.method private constructor <init>([Lorg/apache/poi/hssf/record/SharedFormulaRecord;[Lorg/apache/poi/ss/util/CellReference;[Lorg/apache/poi/hssf/record/ArrayRecord;[Lorg/apache/poi/hssf/record/TableRecord;)V
    .locals 7
    .param p1, "sharedFormulaRecords"    # [Lorg/apache/poi/hssf/record/SharedFormulaRecord;
    .param p2, "firstCells"    # [Lorg/apache/poi/ss/util/CellReference;
    .param p3, "arrayRecords"    # [Lorg/apache/poi/hssf/record/ArrayRecord;
    .param p4, "tableRecords"    # [Lorg/apache/poi/hssf/record/TableRecord;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    array-length v2, p1

    .line 120
    .local v2, "nShF":I
    array-length v4, p2

    if-eq v2, v4, :cond_0

    .line 121
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "array sizes don\'t match: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "!="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 123
    :cond_0
    invoke-static {p3}, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->_arrayRecords:Ljava/util/List;

    .line 124
    iput-object p4, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->_tableRecords:[Lorg/apache/poi/hssf/record/TableRecord;

    .line 125
    new-instance v1, Ljava/util/HashMap;

    mul-int/lit8 v4, v2, 0x3

    div-int/lit8 v4, v4, 0x2

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 126
    .local v1, "m":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/poi/hssf/record/SharedFormulaRecord;Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 127
    aget-object v3, p1, v0

    .line 128
    .local v3, "sfr":Lorg/apache/poi/hssf/record/SharedFormulaRecord;
    new-instance v4, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;

    aget-object v5, p2, v0

    invoke-direct {v4, v3, v5}, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;-><init>(Lorg/apache/poi/hssf/record/SharedFormulaRecord;Lorg/apache/poi/ss/util/CellReference;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    .end local v3    # "sfr":Lorg/apache/poi/hssf/record/SharedFormulaRecord;
    :cond_1
    iput-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->_groupsBySharedFormulaRecord:Ljava/util/Map;

    .line 131
    return-void
.end method

.method public static create([Lorg/apache/poi/hssf/record/SharedFormulaRecord;[Lorg/apache/poi/ss/util/CellReference;[Lorg/apache/poi/hssf/record/ArrayRecord;[Lorg/apache/poi/hssf/record/TableRecord;)Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;
    .locals 2
    .param p0, "sharedFormulaRecords"    # [Lorg/apache/poi/hssf/record/SharedFormulaRecord;
    .param p1, "firstCells"    # [Lorg/apache/poi/ss/util/CellReference;
    .param p2, "arrayRecords"    # [Lorg/apache/poi/hssf/record/ArrayRecord;
    .param p3, "tableRecords"    # [Lorg/apache/poi/hssf/record/TableRecord;

    .prologue
    .line 148
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    array-length v1, p2

    add-int/2addr v0, v1

    array-length v1, p3

    add-int/2addr v0, v1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 149
    invoke-static {}, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->createEmpty()Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;-><init>([Lorg/apache/poi/hssf/record/SharedFormulaRecord;[Lorg/apache/poi/ss/util/CellReference;[Lorg/apache/poi/hssf/record/ArrayRecord;[Lorg/apache/poi/hssf/record/TableRecord;)V

    goto :goto_0
.end method

.method public static createEmpty()Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 108
    new-instance v0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;

    new-array v1, v4, [Lorg/apache/poi/hssf/record/SharedFormulaRecord;

    new-array v2, v4, [Lorg/apache/poi/ss/util/CellReference;

    new-array v3, v4, [Lorg/apache/poi/hssf/record/ArrayRecord;

    new-array v4, v4, [Lorg/apache/poi/hssf/record/TableRecord;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;-><init>([Lorg/apache/poi/hssf/record/SharedFormulaRecord;[Lorg/apache/poi/ss/util/CellReference;[Lorg/apache/poi/hssf/record/ArrayRecord;[Lorg/apache/poi/hssf/record/TableRecord;)V

    return-object v0
.end method

.method private findFormulaGroupForCell(Lorg/apache/poi/ss/util/CellReference;)Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;
    .locals 5
    .param p1, "cellRef"    # Lorg/apache/poi/ss/util/CellReference;

    .prologue
    .line 169
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->_groupsCache:Ljava/util/Map;

    if-nez v3, :cond_0

    .line 170
    new-instance v3, Ljava/util/HashMap;

    iget-object v4, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->_groupsBySharedFormulaRecord:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->_groupsCache:Ljava/util/Map;

    .line 171
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->_groupsBySharedFormulaRecord:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;

    .line 172
    .local v0, "group":Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->_groupsCache:Ljava/util/Map;

    invoke-static {v0}, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;->access$000(Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;)Lorg/apache/poi/ss/util/CellReference;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->getKeyForCache(Lorg/apache/poi/ss/util/CellReference;)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 175
    .end local v0    # "group":Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->_groupsCache:Ljava/util/Map;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->getKeyForCache(Lorg/apache/poi/ss/util/CellReference;)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;

    .line 176
    .local v2, "sfg":Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;
    return-object v2
.end method

.method private getKeyForCache(Lorg/apache/poi/ss/util/CellReference;)Ljava/lang/Integer;
    .locals 3
    .param p1, "cellRef"    # Lorg/apache/poi/ss/util/CellReference;

    .prologue
    .line 181
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v1

    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x10

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v2

    or-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method private static toList([Ljava/lang/Object;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">([TZ;)",
            "Ljava/util/List",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "zz":[Ljava/lang/Object;, "[TZ;"
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 138
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<TZ;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 139
    aget-object v2, p0, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_0
    return-object v1
.end method


# virtual methods
.method public addArrayRecord(Lorg/apache/poi/hssf/record/ArrayRecord;)V
    .locals 1
    .param p1, "ar"    # Lorg/apache/poi/hssf/record/ArrayRecord;

    .prologue
    .line 255
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->_arrayRecords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    return-void
.end method

.method public getArrayRecord(II)Lorg/apache/poi/hssf/record/ArrayRecord;
    .locals 3
    .param p1, "firstRow"    # I
    .param p2, "firstColumn"    # I

    .prologue
    .line 279
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->_arrayRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/ArrayRecord;

    .line 280
    .local v0, "ar":Lorg/apache/poi/hssf/record/ArrayRecord;
    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/record/ArrayRecord;->isFirstCell(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 284
    .end local v0    # "ar":Lorg/apache/poi/hssf/record/ArrayRecord;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRecordForFirstCell(Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;)Lorg/apache/poi/hssf/record/SharedValueRecordBase;
    .locals 11
    .param p1, "agg"    # Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    .prologue
    const/4 v9, 0x0

    .line 197
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaRecord()Lorg/apache/poi/hssf/record/FormulaRecord;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/poi/hssf/record/FormulaRecord;->getFormula()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/poi/ss/formula/Formula;->getExpReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v3

    .line 200
    .local v3, "firstCell":Lorg/apache/poi/ss/util/CellReference;
    if-nez v3, :cond_1

    move-object v8, v9

    .line 234
    :cond_0
    :goto_0
    return-object v8

    .line 206
    :cond_1
    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v6

    .line 207
    .local v6, "row":I
    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v2

    .line 208
    .local v2, "column":I
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getRow()I

    move-result v10

    if-ne v10, v6, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getColumn()S

    move-result v10

    if-eq v10, v2, :cond_3

    :cond_2
    move-object v8, v9

    .line 210
    goto :goto_0

    .line 213
    :cond_3
    iget-object v10, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->_groupsBySharedFormulaRecord:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    .line 214
    invoke-direct {p0, v3}, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->findFormulaGroupForCell(Lorg/apache/poi/ss/util/CellReference;)Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;

    move-result-object v7

    .line 215
    .local v7, "sfg":Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;
    if-eqz v7, :cond_4

    .line 216
    invoke-virtual {v7}, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;->getSFR()Lorg/apache/poi/hssf/record/SharedFormulaRecord;

    move-result-object v8

    goto :goto_0

    .line 224
    .end local v7    # "sfg":Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;
    :cond_4
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->_tableRecords:[Lorg/apache/poi/hssf/record/TableRecord;

    .local v1, "arr$":[Lorg/apache/poi/hssf/record/TableRecord;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_5

    aget-object v8, v1, v4

    .line 225
    .local v8, "tr":Lorg/apache/poi/hssf/record/TableRecord;
    invoke-virtual {v8, v6, v2}, Lorg/apache/poi/hssf/record/TableRecord;->isFirstCell(II)Z

    move-result v10

    if-nez v10, :cond_0

    .line 224
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 229
    .end local v8    # "tr":Lorg/apache/poi/hssf/record/TableRecord;
    :cond_5
    iget-object v10, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->_arrayRecords:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/ArrayRecord;

    .line 230
    .local v0, "ar":Lorg/apache/poi/hssf/record/ArrayRecord;
    invoke-virtual {v0, v6, v2}, Lorg/apache/poi/hssf/record/ArrayRecord;->isFirstCell(II)Z

    move-result v10

    if-eqz v10, :cond_6

    move-object v8, v0

    .line 231
    goto :goto_0

    .end local v0    # "ar":Lorg/apache/poi/hssf/record/ArrayRecord;
    :cond_7
    move-object v8, v9

    .line 234
    goto :goto_0
.end method

.method public linkSharedFormulaRecord(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;)Lorg/apache/poi/hssf/record/SharedFormulaRecord;
    .locals 3
    .param p1, "firstCell"    # Lorg/apache/poi/ss/util/CellReference;
    .param p2, "agg"    # Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->findFormulaGroupForCell(Lorg/apache/poi/ss/util/CellReference;)Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;

    move-result-object v0

    .line 161
    .local v0, "result":Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;
    if-nez v0, :cond_0

    .line 162
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to find a matching shared formula record"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    :cond_0
    invoke-virtual {v0, p2}, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;->add(Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;)V

    .line 165
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;->getSFR()Lorg/apache/poi/hssf/record/SharedFormulaRecord;

    move-result-object v1

    return-object v1
.end method

.method public removeArrayFormula(II)Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;
    .locals 6
    .param p1, "rowIndex"    # I
    .param p2, "columnIndex"    # I

    .prologue
    const/4 v4, 0x0

    .line 264
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->_arrayRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/ArrayRecord;

    .line 265
    .local v0, "ar":Lorg/apache/poi/hssf/record/ArrayRecord;
    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/record/ArrayRecord;->isInRange(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 266
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->_arrayRecords:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 267
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ArrayRecord;->getRange()Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    move-result-object v3

    return-object v3

    .line 270
    .end local v0    # "ar":Lorg/apache/poi/hssf/record/ArrayRecord;
    :cond_1
    new-instance v3, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v3, p1, p2, v4, v4}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, "ref":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Specified cell "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not part of an array formula."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public unlink(Lorg/apache/poi/hssf/record/SharedFormulaRecord;)V
    .locals 3
    .param p1, "sharedFormulaRecord"    # Lorg/apache/poi/hssf/record/SharedFormulaRecord;

    .prologue
    .line 242
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->_groupsBySharedFormulaRecord:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;

    .line 243
    .local v0, "svg":Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;
    if-nez v0, :cond_0

    .line 244
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to find formulas for shared formula"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 246
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->_groupsCache:Ljava/util/Map;

    .line 247
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;->unlinkSharedFormulas()V

    .line 248
    return-void
.end method
