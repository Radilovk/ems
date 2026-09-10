.class public final Lorg/apache/poi/hssf/model/RowBlocksReader;
.super Ljava/lang/Object;
.source "RowBlocksReader.java"


# instance fields
.field private final _mergedCellsRecords:[Lorg/apache/poi/hssf/record/MergeCellsRecord;

.field private final _plainRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;"
        }
    .end annotation
.end field

.field private final _sfm:Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/model/RecordStream;)V
    .locals 18
    .param p1, "rs"    # Lorg/apache/poi/hssf/model/RecordStream;

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v8, "plainRecords":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v11, "shFrmRecords":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v4, "firstCellRefs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/util/CellReference;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v1, "arrayRecords":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v13, "tableRecords":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v7, "mergeCellRecords":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    const/4 v9, 0x0

    .line 56
    .local v9, "prevRec":Lorg/apache/poi/hssf/record/Record;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextSid()I

    move-result v15

    invoke-static {v15}, Lorg/apache/poi/hssf/model/RecordOrderer;->isEndOfRowBlock(I)Z

    move-result v15

    if-nez v15, :cond_2

    .line 61
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hssf/model/RecordStream;->hasNext()Z

    move-result v15

    if-nez v15, :cond_0

    .line 62
    new-instance v15, Ljava/lang/RuntimeException;

    const-string v16, "Failed to find end of row/cell records"

    invoke-direct/range {v15 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 65
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v10

    .line 67
    .local v10, "rec":Lorg/apache/poi/hssf/record/Record;
    invoke-virtual {v10}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v15

    sparse-switch v15, :sswitch_data_0

    .line 78
    move-object v3, v8

    .line 80
    .local v3, "dest":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    :goto_1
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    move-object v9, v10

    .line 82
    goto :goto_0

    .line 68
    .end local v3    # "dest":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    :sswitch_0
    move-object v3, v7

    .restart local v3    # "dest":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    goto :goto_1

    .line 69
    .end local v3    # "dest":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    :sswitch_1
    move-object v3, v11

    .line 70
    .restart local v3    # "dest":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    instance-of v15, v9, Lorg/apache/poi/hssf/record/FormulaRecord;

    if-nez v15, :cond_1

    .line 71
    new-instance v15, Ljava/lang/RuntimeException;

    const-string v16, "Shared formula record should follow a FormulaRecord"

    invoke-direct/range {v15 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_1
    move-object v6, v9

    .line 73
    check-cast v6, Lorg/apache/poi/hssf/record/FormulaRecord;

    .line 74
    .local v6, "fr":Lorg/apache/poi/hssf/record/FormulaRecord;
    new-instance v15, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v6}, Lorg/apache/poi/hssf/record/FormulaRecord;->getRow()I

    move-result v16

    invoke-virtual {v6}, Lorg/apache/poi/hssf/record/FormulaRecord;->getColumn()S

    move-result v17

    invoke-direct/range {v15 .. v17}, Lorg/apache/poi/ss/util/CellReference;-><init>(IS)V

    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 76
    .end local v3    # "dest":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    .end local v6    # "fr":Lorg/apache/poi/hssf/record/FormulaRecord;
    :sswitch_2
    move-object v3, v1

    .restart local v3    # "dest":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    goto :goto_1

    .line 77
    .end local v3    # "dest":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    :sswitch_3
    move-object v3, v13

    .restart local v3    # "dest":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    goto :goto_1

    .line 83
    .end local v3    # "dest":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    .end local v10    # "rec":Lorg/apache/poi/hssf/record/Record;
    :cond_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v15

    new-array v12, v15, [Lorg/apache/poi/hssf/record/SharedFormulaRecord;

    .line 84
    .local v12, "sharedFormulaRecs":[Lorg/apache/poi/hssf/record/SharedFormulaRecord;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v15

    new-array v5, v15, [Lorg/apache/poi/ss/util/CellReference;

    .line 85
    .local v5, "firstCells":[Lorg/apache/poi/ss/util/CellReference;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v15

    new-array v2, v15, [Lorg/apache/poi/hssf/record/ArrayRecord;

    .line 86
    .local v2, "arrayRecs":[Lorg/apache/poi/hssf/record/ArrayRecord;
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    new-array v14, v15, [Lorg/apache/poi/hssf/record/TableRecord;

    .line 87
    .local v14, "tableRecs":[Lorg/apache/poi/hssf/record/TableRecord;
    invoke-interface {v11, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 88
    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 89
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 90
    invoke-interface {v13, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 92
    move-object/from16 v0, p0

    iput-object v8, v0, Lorg/apache/poi/hssf/model/RowBlocksReader;->_plainRecords:Ljava/util/List;

    .line 93
    invoke-static {v12, v5, v2, v14}, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->create([Lorg/apache/poi/hssf/record/SharedFormulaRecord;[Lorg/apache/poi/ss/util/CellReference;[Lorg/apache/poi/hssf/record/ArrayRecord;[Lorg/apache/poi/hssf/record/TableRecord;)Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/apache/poi/hssf/model/RowBlocksReader;->_sfm:Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;

    .line 94
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    new-array v15, v15, [Lorg/apache/poi/hssf/record/MergeCellsRecord;

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/apache/poi/hssf/model/RowBlocksReader;->_mergedCellsRecords:[Lorg/apache/poi/hssf/record/MergeCellsRecord;

    .line 95
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/poi/hssf/model/RowBlocksReader;->_mergedCellsRecords:[Lorg/apache/poi/hssf/record/MergeCellsRecord;

    invoke-interface {v7, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 96
    return-void

    .line 67
    :sswitch_data_0
    .sparse-switch
        0xe5 -> :sswitch_0
        0x221 -> :sswitch_2
        0x236 -> :sswitch_3
        0x4bc -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public getLooseMergedCells()[Lorg/apache/poi/hssf/record/MergeCellsRecord;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/apache/poi/hssf/model/RowBlocksReader;->_mergedCellsRecords:[Lorg/apache/poi/hssf/record/MergeCellsRecord;

    return-object v0
.end method

.method public getPlainRecordStream()Lorg/apache/poi/hssf/model/RecordStream;
    .locals 3

    .prologue
    .line 115
    new-instance v0, Lorg/apache/poi/hssf/model/RecordStream;

    iget-object v1, p0, Lorg/apache/poi/hssf/model/RowBlocksReader;->_plainRecords:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hssf/model/RecordStream;-><init>(Ljava/util/List;I)V

    return-object v0
.end method

.method public getSharedFormulaManager()Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/apache/poi/hssf/model/RowBlocksReader;->_sfm:Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;

    return-object v0
.end method
