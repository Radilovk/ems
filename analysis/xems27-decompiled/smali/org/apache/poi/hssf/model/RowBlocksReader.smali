.class public final Lorg/apache/poi/hssf/model/RowBlocksReader;
.super Ljava/lang/Object;
.source "RowBlocksReader.java"


# instance fields
.field private final _mergedCellsRecords:[Lorg/apache/poi/hssf/record/MergeCellsRecord;

.field private final _plainRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;"
        }
    .end annotation
.end field

.field private final _sfm:Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/model/RecordStream;)V
    .locals 14
    .param p1, "rs"    # Lorg/apache/poi/hssf/model/RecordStream;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v0, "plainRecords":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v1, "shFrmRecords":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v2, "firstCellRefs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/util/CellReference;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v3, "arrayRecords":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v4, "tableRecords":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v5, "mergeCellRecords":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    const/4 v6, 0x0

    .local v6, "prevRec":Lorg/apache/poi/hssf/record/Record;
    const/4 v7, 0x0

    move-object v8, v7

    .line 56
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextSid()I

    move-result v9

    invoke-static {v9}, Lorg/apache/poi/hssf/model/RecordOrderer;->isEndOfRowBlock(I)Z

    move-result v9

    if-nez v9, :cond_6

    .line 61
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 65
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v9

    .line 67
    .local v9, "rec":Lorg/apache/poi/hssf/record/Record;
    invoke-virtual {v9}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v10

    const/16 v11, 0xe5

    if-eq v10, v11, :cond_4

    const/16 v11, 0x221

    if-eq v10, v11, :cond_3

    const/16 v11, 0x236

    if-eq v10, v11, :cond_2

    const/16 v11, 0x4bc

    if-eq v10, v11, :cond_0

    .line 78
    .local v7, "fr":Lorg/apache/poi/hssf/record/FormulaRecord;
    .local v8, "dest":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    move-object v8, v0

    goto :goto_1

    .line 67
    .end local v7    # "fr":Lorg/apache/poi/hssf/record/FormulaRecord;
    .end local v8    # "dest":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    :cond_0
    move-object v7, v8

    .line 69
    .local v7, "dest":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    move-object v7, v1

    .line 70
    instance-of v8, v6, Lorg/apache/poi/hssf/record/FormulaRecord;

    if-eqz v8, :cond_1

    .line 73
    move-object v8, v6

    check-cast v8, Lorg/apache/poi/hssf/record/FormulaRecord;

    .line 74
    .local v8, "fr":Lorg/apache/poi/hssf/record/FormulaRecord;
    new-instance v10, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v8}, Lorg/apache/poi/hssf/record/FormulaRecord;->getRow()I

    move-result v11

    invoke-virtual {v8}, Lorg/apache/poi/hssf/record/FormulaRecord;->getColumn()S

    move-result v12

    invoke-direct {v10, v11, v12}, Lorg/apache/poi/ss/util/CellReference;-><init>(IS)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    move-object v13, v8

    move-object v8, v7

    move-object v7, v13

    goto :goto_1

    .line 71
    .end local v8    # "fr":Lorg/apache/poi/hssf/record/FormulaRecord;
    :cond_1
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v10, "Shared formula record should follow a FormulaRecord"

    invoke-direct {v8, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 77
    .local v7, "fr":Lorg/apache/poi/hssf/record/FormulaRecord;
    .local v8, "dest":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    :cond_2
    move-object v8, v4

    goto :goto_1

    .line 76
    :cond_3
    move-object v8, v3

    goto :goto_1

    .line 68
    .end local v7    # "fr":Lorg/apache/poi/hssf/record/FormulaRecord;
    .end local v8    # "dest":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    :cond_4
    move-object v8, v5

    .line 80
    .restart local v8    # "dest":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    :goto_1
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    move-object v6, v9

    .line 82
    .end local v8    # "dest":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    .end local v9    # "rec":Lorg/apache/poi/hssf/record/Record;
    goto :goto_0

    .line 62
    :cond_5
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Failed to find end of row/cell records"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 83
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lorg/apache/poi/hssf/record/SharedFormulaRecord;

    .line 84
    .local v7, "sharedFormulaRecs":[Lorg/apache/poi/hssf/record/SharedFormulaRecord;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Lorg/apache/poi/ss/util/CellReference;

    .line 85
    .local v8, "firstCells":[Lorg/apache/poi/ss/util/CellReference;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Lorg/apache/poi/hssf/record/ArrayRecord;

    .line 86
    .local v9, "arrayRecs":[Lorg/apache/poi/hssf/record/ArrayRecord;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Lorg/apache/poi/hssf/record/TableRecord;

    .line 87
    .local v10, "tableRecs":[Lorg/apache/poi/hssf/record/TableRecord;
    invoke-interface {v1, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 88
    invoke-interface {v2, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 89
    invoke-interface {v3, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 90
    invoke-interface {v4, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 92
    iput-object v0, p0, Lorg/apache/poi/hssf/model/RowBlocksReader;->_plainRecords:Ljava/util/List;

    .line 93
    invoke-static {v7, v8, v9, v10}, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->create([Lorg/apache/poi/hssf/record/SharedFormulaRecord;[Lorg/apache/poi/ss/util/CellReference;[Lorg/apache/poi/hssf/record/ArrayRecord;[Lorg/apache/poi/hssf/record/TableRecord;)Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;

    move-result-object v11

    iput-object v11, p0, Lorg/apache/poi/hssf/model/RowBlocksReader;->_sfm:Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;

    .line 94
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Lorg/apache/poi/hssf/record/MergeCellsRecord;

    iput-object v11, p0, Lorg/apache/poi/hssf/model/RowBlocksReader;->_mergedCellsRecords:[Lorg/apache/poi/hssf/record/MergeCellsRecord;

    .line 95
    invoke-interface {v5, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 96
    return-void
.end method


# virtual methods
.method public getLooseMergedCells()[Lorg/apache/poi/hssf/record/MergeCellsRecord;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/apache/poi/hssf/model/RowBlocksReader;->_mergedCellsRecords:[Lorg/apache/poi/hssf/record/MergeCellsRecord;

    return-object v0
.end method

.method public getPlainRecordStream()Lorg/apache/poi/hssf/model/RecordStream;
    .locals 3

    .line 115
    new-instance v0, Lorg/apache/poi/hssf/model/RecordStream;

    iget-object v1, p0, Lorg/apache/poi/hssf/model/RowBlocksReader;->_plainRecords:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hssf/model/RecordStream;-><init>(Ljava/util/List;I)V

    return-object v0
.end method

.method public getSharedFormulaManager()Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/apache/poi/hssf/model/RowBlocksReader;->_sfm:Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;

    return-object v0
.end method
