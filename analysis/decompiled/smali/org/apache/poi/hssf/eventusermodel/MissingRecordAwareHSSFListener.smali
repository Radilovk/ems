.class public final Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;
.super Ljava/lang/Object;
.source "MissingRecordAwareHSSFListener.java"

# interfaces
.implements Lorg/apache/poi/hssf/eventusermodel/HSSFListener;


# instance fields
.field private childListener:Lorg/apache/poi/hssf/eventusermodel/HSSFListener;

.field private lastCellColumn:I

.field private lastCellRow:I

.field private lastRowRow:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/eventusermodel/HSSFListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/apache/poi/hssf/eventusermodel/HSSFListener;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-direct {p0}, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->resetCounts()V

    .line 63
    iput-object p1, p0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->childListener:Lorg/apache/poi/hssf/eventusermodel/HSSFListener;

    .line 64
    return-void
.end method

.method private resetCounts()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 206
    iput v0, p0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->lastRowRow:I

    .line 207
    iput v0, p0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->lastCellRow:I

    .line 208
    iput v0, p0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->lastCellColumn:I

    .line 209
    return-void
.end method


# virtual methods
.method public processRecord(Lorg/apache/poi/hssf/record/Record;)V
    .locals 22
    .param p1, "record"    # Lorg/apache/poi/hssf/record/Record;

    .prologue
    .line 69
    const/4 v6, 0x0

    .line 71
    .local v6, "expandedRecords":[Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    move/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v17, p1

    .line 72
    check-cast v17, Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 73
    .local v17, "valueRec":Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    invoke-interface/range {v17 .. v17}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v16

    .line 74
    .local v16, "thisRow":I
    invoke-interface/range {v17 .. v17}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v15

    .line 141
    .end local v17    # "valueRec":Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    .local v15, "thisColumn":I
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    array-length v0, v6

    move/from16 v18, v0

    if-lez v18, :cond_1

    .line 142
    const/16 v18, 0x0

    aget-object v18, v6, v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v16

    .line 143
    const/16 v18, 0x0

    aget-object v18, v6, v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v15

    .line 149
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->lastCellRow:I

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    if-lez v16, :cond_9

    .line 150
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->lastCellRow:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->lastCellRow:I

    .line 151
    :cond_2
    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->lastCellRow:I

    .local v7, "i":I
    :goto_1
    move/from16 v0, v16

    if-ge v7, v0, :cond_9

    .line 152
    const/4 v4, -0x1

    .line 153
    .local v4, "cols":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->lastCellRow:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v7, v0, :cond_3

    .line 154
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->lastCellColumn:I

    .line 156
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->childListener:Lorg/apache/poi/hssf/eventusermodel/HSSFListener;

    move-object/from16 v18, v0

    new-instance v19, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/LastCellOfRowDummyRecord;

    move-object/from16 v0, v19

    invoke-direct {v0, v7, v4}, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/LastCellOfRowDummyRecord;-><init>(II)V

    invoke-interface/range {v18 .. v19}, Lorg/apache/poi/hssf/eventusermodel/HSSFListener;->processRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 151
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 76
    .end local v4    # "cols":I
    .end local v7    # "i":I
    .end local v15    # "thisColumn":I
    .end local v16    # "thisRow":I
    :cond_4
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/apache/poi/hssf/record/StringRecord;

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->childListener:Lorg/apache/poi/hssf/eventusermodel/HSSFListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/apache/poi/hssf/eventusermodel/HSSFListener;->processRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 203
    :cond_5
    :goto_2
    return-void

    .line 81
    :cond_6
    const/16 v16, -0x1

    .line 82
    .restart local v16    # "thisRow":I
    const/4 v15, -0x1

    .line 84
    .restart local v15    # "thisColumn":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v18

    sparse-switch v18, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    move-object/from16 v12, p1

    .line 133
    check-cast v12, Lorg/apache/poi/hssf/record/NoteRecord;

    .line 134
    .local v12, "nrec":Lorg/apache/poi/hssf/record/NoteRecord;
    invoke-virtual {v12}, Lorg/apache/poi/hssf/record/NoteRecord;->getRow()I

    move-result v16

    .line 135
    invoke-virtual {v12}, Lorg/apache/poi/hssf/record/NoteRecord;->getColumn()I

    move-result v15

    goto/16 :goto_0

    .end local v12    # "nrec":Lorg/apache/poi/hssf/record/NoteRecord;
    :sswitch_1
    move-object/from16 v3, p1

    .line 88
    check-cast v3, Lorg/apache/poi/hssf/record/BOFRecord;

    .line 89
    .local v3, "bof":Lorg/apache/poi/hssf/record/BOFRecord;
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/BOFRecord;->getType()I

    move-result v18

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/BOFRecord;->getType()I

    move-result v18

    const/16 v19, 0x10

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 92
    :cond_7
    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->resetCounts()V

    goto/16 :goto_0

    .end local v3    # "bof":Lorg/apache/poi/hssf/record/BOFRecord;
    :sswitch_2
    move-object/from16 v14, p1

    .line 96
    check-cast v14, Lorg/apache/poi/hssf/record/RowRecord;

    .line 101
    .local v14, "rowrec":Lorg/apache/poi/hssf/record/RowRecord;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->lastRowRow:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    invoke-virtual {v14}, Lorg/apache/poi/hssf/record/RowRecord;->getRowNumber()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_8

    .line 102
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->lastRowRow:I

    move/from16 v18, v0

    add-int/lit8 v7, v18, 0x1

    .restart local v7    # "i":I
    :goto_3
    invoke-virtual {v14}, Lorg/apache/poi/hssf/record/RowRecord;->getRowNumber()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_8

    .line 103
    new-instance v5, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/MissingRowDummyRecord;

    invoke-direct {v5, v7}, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/MissingRowDummyRecord;-><init>(I)V

    .line 104
    .local v5, "dr":Lorg/apache/poi/hssf/eventusermodel/dummyrecord/MissingRowDummyRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->childListener:Lorg/apache/poi/hssf/eventusermodel/HSSFListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Lorg/apache/poi/hssf/eventusermodel/HSSFListener;->processRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 102
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 109
    .end local v5    # "dr":Lorg/apache/poi/hssf/eventusermodel/dummyrecord/MissingRowDummyRecord;
    .end local v7    # "i":I
    :cond_8
    invoke-virtual {v14}, Lorg/apache/poi/hssf/record/RowRecord;->getRowNumber()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->lastRowRow:I

    .line 110
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->lastCellColumn:I

    goto/16 :goto_0

    .line 117
    .end local v14    # "rowrec":Lorg/apache/poi/hssf/record/RowRecord;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->childListener:Lorg/apache/poi/hssf/eventusermodel/HSSFListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/apache/poi/hssf/eventusermodel/HSSFListener;->processRecord(Lorg/apache/poi/hssf/record/Record;)V

    goto/16 :goto_2

    :sswitch_4
    move-object/from16 v10, p1

    .line 123
    check-cast v10, Lorg/apache/poi/hssf/record/MulBlankRecord;

    .line 124
    .local v10, "mbr":Lorg/apache/poi/hssf/record/MulBlankRecord;
    invoke-static {v10}, Lorg/apache/poi/hssf/record/RecordFactory;->convertBlankRecords(Lorg/apache/poi/hssf/record/MulBlankRecord;)[Lorg/apache/poi/hssf/record/BlankRecord;

    move-result-object v6

    .line 125
    goto/16 :goto_0

    .end local v10    # "mbr":Lorg/apache/poi/hssf/record/MulBlankRecord;
    :sswitch_5
    move-object/from16 v11, p1

    .line 129
    check-cast v11, Lorg/apache/poi/hssf/record/MulRKRecord;

    .line 130
    .local v11, "mrk":Lorg/apache/poi/hssf/record/MulRKRecord;
    invoke-static {v11}, Lorg/apache/poi/hssf/record/RecordFactory;->convertRKRecords(Lorg/apache/poi/hssf/record/MulRKRecord;)[Lorg/apache/poi/hssf/record/NumberRecord;

    move-result-object v6

    .line 131
    goto/16 :goto_0

    .line 162
    .end local v11    # "mrk":Lorg/apache/poi/hssf/record/MulRKRecord;
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->lastCellRow:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->lastCellColumn:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    const/16 v18, -0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->childListener:Lorg/apache/poi/hssf/eventusermodel/HSSFListener;

    move-object/from16 v18, v0

    new-instance v19, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/LastCellOfRowDummyRecord;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->lastCellRow:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->lastCellColumn:I

    move/from16 v21, v0

    invoke-direct/range {v19 .. v21}, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/LastCellOfRowDummyRecord;-><init>(II)V

    invoke-interface/range {v18 .. v19}, Lorg/apache/poi/hssf/eventusermodel/HSSFListener;->processRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 165
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->lastCellRow:I

    .line 166
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->lastCellColumn:I

    .line 171
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->lastCellRow:I

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_b

    .line 172
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->lastCellColumn:I

    .line 177
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->lastCellColumn:I

    move/from16 v18, v0

    add-int/lit8 v19, v15, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_c

    .line 178
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->lastCellColumn:I

    move/from16 v18, v0

    add-int/lit8 v7, v18, 0x1

    .restart local v7    # "i":I
    :goto_4
    if-ge v7, v15, :cond_c

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->childListener:Lorg/apache/poi/hssf/eventusermodel/HSSFListener;

    move-object/from16 v18, v0

    new-instance v19, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/MissingCellDummyRecord;

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-direct {v0, v1, v7}, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/MissingCellDummyRecord;-><init>(II)V

    invoke-interface/range {v18 .. v19}, Lorg/apache/poi/hssf/eventusermodel/HSSFListener;->processRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 178
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 184
    .end local v7    # "i":I
    :cond_c
    if-eqz v6, :cond_d

    array-length v0, v6

    move/from16 v18, v0

    if-lez v18, :cond_d

    .line 185
    array-length v0, v6

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    aget-object v18, v6, v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v15

    .line 190
    :cond_d
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v15, v0, :cond_e

    .line 191
    move-object/from16 v0, p0

    iput v15, v0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->lastCellColumn:I

    .line 192
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->lastCellRow:I

    .line 196
    :cond_e
    if-eqz v6, :cond_f

    array-length v0, v6

    move/from16 v18, v0

    if-lez v18, :cond_f

    .line 197
    move-object v2, v6

    .local v2, "arr$":[Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    array-length v9, v2

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_5
    if-ge v8, v9, :cond_5

    aget-object v13, v2, v8

    .line 198
    .local v13, "r":Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->childListener:Lorg/apache/poi/hssf/eventusermodel/HSSFListener;

    move-object/from16 v18, v0

    check-cast v13, Lorg/apache/poi/hssf/record/Record;

    .end local v13    # "r":Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Lorg/apache/poi/hssf/eventusermodel/HSSFListener;->processRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 197
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 201
    .end local v2    # "arr$":[Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->childListener:Lorg/apache/poi/hssf/eventusermodel/HSSFListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/apache/poi/hssf/eventusermodel/HSSFListener;->processRecord(Lorg/apache/poi/hssf/record/Record;)V

    goto/16 :goto_2

    .line 84
    nop

    :sswitch_data_0
    .sparse-switch
        0x1c -> :sswitch_0
        0xbd -> :sswitch_5
        0xbe -> :sswitch_4
        0x208 -> :sswitch_2
        0x4bc -> :sswitch_3
        0x809 -> :sswitch_1
    .end sparse-switch
.end method
