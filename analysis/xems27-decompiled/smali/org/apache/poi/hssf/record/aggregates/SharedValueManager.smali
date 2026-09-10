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
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/ArrayRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final _groupsBySharedFormulaRecord:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/hssf/record/SharedFormulaRecord;",
            "Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;",
            ">;"
        }
    .end annotation
.end field

.field private _groupsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final _tableRecords:[Lorg/apache/poi/hssf/record/TableRecord;


# direct methods
.method private constructor <init>([Lorg/apache/poi/hssf/record/SharedFormulaRecord;[Lorg/apache/poi/ss/util/CellReference;[Lorg/apache/poi/hssf/record/ArrayRecord;[Lorg/apache/poi/hssf/record/TableRecord;)V
    .locals 6
    .param p1, "sharedFormulaRecords"    # [Lorg/apache/poi/hssf/record/SharedFormulaRecord;
    .param p2, "firstCells"    # [Lorg/apache/poi/ss/util/CellReference;
    .param p3, "arrayRecords"    # [Lorg/apache/poi/hssf/record/ArrayRecord;
    .param p4, "tableRecords"    # [Lorg/apache/poi/hssf/record/TableRecord;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    array-length v0, p1

    .line 120
    .local v0, "nShF":I
    array-length v1, p2

    if-ne v0, v1, :cond_1

    .line 123
    invoke-static {p3}, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->_arrayRecords:Ljava/util/List;

    .line 124
    iput-object p4, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->_tableRecords:[Lorg/apache/poi/hssf/record/TableRecord;

    .line 125
    new-instance v1, Ljava/util/HashMap;

    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 126
    .local v1, "m":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/poi/hssf/record/SharedFormulaRecord;Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 127
    aget-object v3, p1, v2

    .line 128
    .local v3, "sfr":Lorg/apache/poi/hssf/record/SharedFormulaRecord;
    new-instance v4, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;

    aget-object v5, p2, v2

    invoke-direct {v4, v3, v5}, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;-><init>(Lorg/apache/poi/hssf/record/SharedFormulaRecord;Lorg/apache/poi/ss/util/CellReference;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .end local v3    # "sfr":Lorg/apache/poi/hssf/record/SharedFormulaRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    .end local v2    # "i":I
    :cond_0
    iput-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->_groupsBySharedFormulaRecord:Ljava/util/Map;

    .line 131
    return-void

    .line 121
    .end local v1    # "m":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/poi/hssf/record/SharedFormulaRecord;Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;>;"
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "array sizes don\'t match: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "!="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static create([Lorg/apache/poi/hssf/record/SharedFormulaRecord;[Lorg/apache/poi/ss/util/CellReference;[Lorg/apache/poi/hssf/record/ArrayRecord;[Lorg/apache/poi/hssf/record/TableRecord;)Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;
    .locals 2
    .param p0, "sharedFormulaRecords"    # [Lorg/apache/poi/hssf/record/SharedFormulaRecord;
    .param p1, "firstCells"    # [Lorg/apache/poi/ss/util/CellReference;
    .param p2, "arrayRecords"    # [Lorg/apache/poi/hssf/record/ArrayRecord;
    .param p3, "tableRecords"    # [Lorg/apache/poi/hssf/record/TableRecord;

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

    return-object v0

    .line 151
    :cond_0
    new-instance v0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;-><init>([Lorg/apache/poi/hssf/record/SharedFormulaRecord;[Lorg/apache/poi/ss/util/CellReference;[Lorg/apache/poi/hssf/record/ArrayRecord;[Lorg/apache/poi/hssf/record/TableRecord;)V

    return-object v0
.end method

.method public static createEmpty()Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;
    .locals 5

    .line 108
    new-instance v0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;

    const/4 v1, 0x0

    new-array v2, v1, [Lorg/apache/poi/hssf/record/SharedFormulaRecord;

    new-array v3, v1, [Lorg/apache/poi/ss/util/CellReference;

    new-array v4, v1, [Lorg/apache/poi/hssf/record/ArrayRecord;

    new-array v1, v1, [Lorg/apache/poi/hssf/record/TableRecord;

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;-><init>([Lorg/apache/poi/hssf/record/SharedFormulaRecord;[Lorg/apache/poi/ss/util/CellReference;[Lorg/apache/poi/hssf/record/ArrayRecord;[Lorg/apache/poi/hssf/record/TableRecord;)V

    return-object v0
.end method

.method private findFormulaGroupForCell(Lorg/apache/poi/ss/util/CellReference;)Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;
    .locals 4
    .param p1, "cellRef"    # Lorg/apache/poi/ss/util/CellReference;

    .line 169
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->_groupsCache:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->_groupsBySharedFormulaRecord:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->_groupsCache:Ljava/util/Map;

    .line 171
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->_groupsBySharedFormulaRecord:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;

    .line 172
    .local v1, "group":Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->_groupsCache:Ljava/util/Map;

    invoke-static {v1}, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;->access$000(Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;)Lorg/apache/poi/ss/util/CellReference;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->getKeyForCache(Lorg/apache/poi/ss/util/CellReference;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .end local v1    # "group":Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;
    goto :goto_0

    .line 175
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->_groupsCache:Ljava/util/Map;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->getKeyForCache(Lorg/apache/poi/ss/util/CellReference;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;

    .line 176
    .local v0, "sfg":Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;
    return-object v0
.end method

.method private getKeyForCache(Lorg/apache/poi/ss/util/CellReference;)Ljava/lang/Integer;
    .locals 3
    .param p1, "cellRef"    # Lorg/apache/poi/ss/util/CellReference;

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
            "Ljava/util/List<",
            "TZ;>;"
        }
    .end annotation

    .line 137
    .local p0, "zz":[Ljava/lang/Object;, "[TZ;"
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 138
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<TZ;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 139
    aget-object v2, p0, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addArrayRecord(Lorg/apache/poi/hssf/record/ArrayRecord;)V
    .locals 1
    .param p1, "ar"    # Lorg/apache/poi/hssf/record/ArrayRecord;

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

    .line 279
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->_arrayRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/ArrayRecord;

    .line 280
    .local v1, "ar":Lorg/apache/poi/hssf/record/ArrayRecord;
    invoke-virtual {v1, p1, p2}, Lorg/apache/poi/hssf/record/ArrayRecord;->isFirstCell(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    return-object v1

    .line 283
    .end local v1    # "ar":Lorg/apache/poi/hssf/record/ArrayRecord;
    :cond_0
    goto :goto_0

    .line 284
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecordForFirstCell(Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;)Lorg/apache/poi/hssf/record/SharedValueRecordBase;
    .locals 9
    .param p1, "agg"    # Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    .line 197
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaRecord()Lorg/apache/poi/hssf/record/FormulaRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FormulaRecord;->getFormula()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/Formula;->getExpReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    .line 200
    .local v0, "firstCell":Lorg/apache/poi/ss/util/CellReference;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 202
    return-object v1

    .line 206
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v2

    .line 207
    .local v2, "row":I
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v3

    .line 208
    .local v3, "column":I
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getRow()I

    move-result v4

    if-ne v4, v2, :cond_7

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getColumn()S

    move-result v4

    if-eq v4, v3, :cond_1

    goto :goto_2

    .line 213
    :cond_1
    iget-object v4, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->_groupsBySharedFormulaRecord:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 214
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->findFormulaGroupForCell(Lorg/apache/poi/ss/util/CellReference;)Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;

    move-result-object v4

    .line 215
    .local v4, "sfg":Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;
    if-eqz v4, :cond_2

    .line 216
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;->getSFR()Lorg/apache/poi/hssf/record/SharedFormulaRecord;

    move-result-object v1

    return-object v1

    .line 224
    .end local v4    # "sfg":Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;
    :cond_2
    iget-object v4, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->_tableRecords:[Lorg/apache/poi/hssf/record/TableRecord;

    .local v4, "arr$":[Lorg/apache/poi/hssf/record/TableRecord;
    array-length v5, v4

    .local v5, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v5, :cond_4

    aget-object v7, v4, v6

    .line 225
    .local v7, "tr":Lorg/apache/poi/hssf/record/TableRecord;
    invoke-virtual {v7, v2, v3}, Lorg/apache/poi/hssf/record/TableRecord;->isFirstCell(II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 226
    return-object v7

    .line 224
    .end local v7    # "tr":Lorg/apache/poi/hssf/record/TableRecord;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 229
    .end local v4    # "arr$":[Lorg/apache/poi/hssf/record/TableRecord;
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    :cond_4
    iget-object v4, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->_arrayRecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/hssf/record/ArrayRecord;

    .line 230
    .local v5, "ar":Lorg/apache/poi/hssf/record/ArrayRecord;
    invoke-virtual {v5, v2, v3}, Lorg/apache/poi/hssf/record/ArrayRecord;->isFirstCell(II)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 231
    return-object v5

    .line 233
    .end local v5    # "ar":Lorg/apache/poi/hssf/record/ArrayRecord;
    :cond_5
    goto :goto_1

    .line 234
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_6
    return-object v1

    .line 210
    :cond_7
    :goto_2
    return-object v1
.end method

.method public linkSharedFormulaRecord(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;)Lorg/apache/poi/hssf/record/SharedFormulaRecord;
    .locals 3
    .param p1, "firstCell"    # Lorg/apache/poi/ss/util/CellReference;
    .param p2, "agg"    # Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    .line 160
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->findFormulaGroupForCell(Lorg/apache/poi/ss/util/CellReference;)Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;

    move-result-object v0

    .line 161
    .local v0, "result":Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;
    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0, p2}, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;->add(Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;)V

    .line 165
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;->getSFR()Lorg/apache/poi/hssf/record/SharedFormulaRecord;

    move-result-object v1

    return-object v1

    .line 162
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to find a matching shared formula record"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeArrayFormula(II)Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;
    .locals 4
    .param p1, "rowIndex"    # I
    .param p2, "columnIndex"    # I

    .line 264
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->_arrayRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/ArrayRecord;

    .line 265
    .local v1, "ar":Lorg/apache/poi/hssf/record/ArrayRecord;
    invoke-virtual {v1, p1, p2}, Lorg/apache/poi/hssf/record/ArrayRecord;->isInRange(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->_arrayRecords:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 267
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/ArrayRecord;->getRange()Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    move-result-object v2

    return-object v2

    .line 269
    .end local v1    # "ar":Lorg/apache/poi/hssf/record/ArrayRecord;
    :cond_0
    goto :goto_0

    .line 270
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1, v1}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "ref":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Specified cell "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not part of an array formula."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public unlink(Lorg/apache/poi/hssf/record/SharedFormulaRecord;)V
    .locals 3
    .param p1, "sharedFormulaRecord"    # Lorg/apache/poi/hssf/record/SharedFormulaRecord;

    .line 242
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->_groupsBySharedFormulaRecord:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;

    .line 243
    .local v0, "svg":Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;
    if-eqz v0, :cond_0

    .line 246
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->_groupsCache:Ljava/util/Map;

    .line 247
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;->unlinkSharedFormulas()V

    .line 248
    return-void

    .line 244
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to find formulas for shared formula"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
