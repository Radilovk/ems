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

    .line 206
    const/4 v0, -0x1

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
    .locals 9
    .param p1, "record"    # Lorg/apache/poi/hssf/record/Record;

    .line 69
    const/4 v0, 0x0

    .line 71
    .local v0, "expandedRecords":[Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    instance-of v1, p1, Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 72
    move-object v1, p1

    check-cast v1, Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 73
    .local v1, "valueRec":Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v3

    .line 74
    .local v3, "thisRow":I
    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v1

    .line 75
    .local v1, "thisColumn":I
    goto/16 :goto_1

    .line 76
    .end local v1    # "thisColumn":I
    .end local v3    # "thisRow":I
    :cond_0
    instance-of v1, p1, Lorg/apache/poi/hssf/record/StringRecord;

    if-eqz v1, :cond_1

    .line 78
    iget-object v1, p0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->childListener:Lorg/apache/poi/hssf/eventusermodel/HSSFListener;

    invoke-interface {v1, p1}, Lorg/apache/poi/hssf/eventusermodel/HSSFListener;->processRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 79
    return-void

    .line 81
    :cond_1
    const/4 v3, -0x1

    .line 82
    .restart local v3    # "thisRow":I
    const/4 v1, -0x1

    .line 84
    .restart local v1    # "thisColumn":I
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v4

    const/16 v5, 0x1c

    const/4 v6, 0x0

    if-eq v4, v5, :cond_9

    const/16 v5, 0x208

    if-eq v4, v5, :cond_7

    const/16 v5, 0x4bc

    if-eq v4, v5, :cond_6

    const/16 v5, 0x809

    if-eq v4, v5, :cond_4

    const/16 v5, 0xbd

    if-eq v4, v5, :cond_3

    const/16 v5, 0xbe

    if-eq v4, v5, :cond_2

    goto/16 :goto_1

    :cond_2
    move-object v4, v6

    .local v4, "rowrec":Lorg/apache/poi/hssf/record/RowRecord;
    move-object v5, v6

    .line 123
    .local v5, "bof":Lorg/apache/poi/hssf/record/BOFRecord;
    move-object v6, p1

    check-cast v6, Lorg/apache/poi/hssf/record/MulBlankRecord;

    .line 124
    .local v6, "mbr":Lorg/apache/poi/hssf/record/MulBlankRecord;
    invoke-static {v6}, Lorg/apache/poi/hssf/record/RecordFactory;->convertBlankRecords(Lorg/apache/poi/hssf/record/MulBlankRecord;)[Lorg/apache/poi/hssf/record/BlankRecord;

    move-result-object v0

    .line 125
    goto/16 :goto_1

    .line 84
    .end local v4    # "rowrec":Lorg/apache/poi/hssf/record/RowRecord;
    .end local v5    # "bof":Lorg/apache/poi/hssf/record/BOFRecord;
    .end local v6    # "mbr":Lorg/apache/poi/hssf/record/MulBlankRecord;
    :cond_3
    move-object v4, v6

    .restart local v4    # "rowrec":Lorg/apache/poi/hssf/record/RowRecord;
    move-object v5, v6

    .line 129
    .local v5, "mbr":Lorg/apache/poi/hssf/record/MulBlankRecord;
    .local v6, "bof":Lorg/apache/poi/hssf/record/BOFRecord;
    move-object v7, p1

    check-cast v7, Lorg/apache/poi/hssf/record/MulRKRecord;

    .line 130
    .local v7, "mrk":Lorg/apache/poi/hssf/record/MulRKRecord;
    invoke-static {v7}, Lorg/apache/poi/hssf/record/RecordFactory;->convertRKRecords(Lorg/apache/poi/hssf/record/MulRKRecord;)[Lorg/apache/poi/hssf/record/NumberRecord;

    move-result-object v0

    .line 131
    goto :goto_1

    .line 88
    .end local v4    # "rowrec":Lorg/apache/poi/hssf/record/RowRecord;
    .end local v5    # "mbr":Lorg/apache/poi/hssf/record/MulBlankRecord;
    .end local v6    # "bof":Lorg/apache/poi/hssf/record/BOFRecord;
    .end local v7    # "mrk":Lorg/apache/poi/hssf/record/MulRKRecord;
    :cond_4
    move-object v4, p1

    check-cast v4, Lorg/apache/poi/hssf/record/BOFRecord;

    .line 89
    .local v4, "bof":Lorg/apache/poi/hssf/record/BOFRecord;
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/BOFRecord;->getType()I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_5

    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/BOFRecord;->getType()I

    move-result v5

    const/16 v6, 0x10

    if-ne v5, v6, :cond_a

    .line 92
    :cond_5
    invoke-direct {p0}, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->resetCounts()V

    goto :goto_1

    .line 84
    .end local v4    # "bof":Lorg/apache/poi/hssf/record/BOFRecord;
    :cond_6
    move-object v2, v6

    .local v2, "rowrec":Lorg/apache/poi/hssf/record/RowRecord;
    move-object v4, v6

    .line 117
    .restart local v4    # "bof":Lorg/apache/poi/hssf/record/BOFRecord;
    iget-object v5, p0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->childListener:Lorg/apache/poi/hssf/eventusermodel/HSSFListener;

    invoke-interface {v5, p1}, Lorg/apache/poi/hssf/eventusermodel/HSSFListener;->processRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 118
    return-void

    .line 84
    .end local v2    # "rowrec":Lorg/apache/poi/hssf/record/RowRecord;
    .end local v4    # "bof":Lorg/apache/poi/hssf/record/BOFRecord;
    :cond_7
    move-object v4, v6

    .line 96
    .restart local v4    # "bof":Lorg/apache/poi/hssf/record/BOFRecord;
    move-object v5, p1

    check-cast v5, Lorg/apache/poi/hssf/record/RowRecord;

    .line 101
    .local v5, "rowrec":Lorg/apache/poi/hssf/record/RowRecord;
    iget v6, p0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->lastRowRow:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/RowRecord;->getRowNumber()I

    move-result v7

    if-ge v6, v7, :cond_8

    .line 102
    iget v6, p0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->lastRowRow:I

    add-int/lit8 v6, v6, 0x1

    .local v6, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/RowRecord;->getRowNumber()I

    move-result v7

    if-ge v6, v7, :cond_8

    .line 103
    new-instance v7, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/MissingRowDummyRecord;

    invoke-direct {v7, v6}, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/MissingRowDummyRecord;-><init>(I)V

    .line 104
    .local v7, "dr":Lorg/apache/poi/hssf/eventusermodel/dummyrecord/MissingRowDummyRecord;
    iget-object v8, p0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->childListener:Lorg/apache/poi/hssf/eventusermodel/HSSFListener;

    invoke-interface {v8, v7}, Lorg/apache/poi/hssf/eventusermodel/HSSFListener;->processRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 102
    .end local v7    # "dr":Lorg/apache/poi/hssf/eventusermodel/dummyrecord/MissingRowDummyRecord;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 109
    .end local v6    # "i":I
    :cond_8
    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/RowRecord;->getRowNumber()I

    move-result v6

    iput v6, p0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->lastRowRow:I

    .line 110
    iput v2, p0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->lastCellColumn:I

    .line 111
    goto :goto_1

    .line 84
    .end local v4    # "bof":Lorg/apache/poi/hssf/record/BOFRecord;
    .end local v5    # "rowrec":Lorg/apache/poi/hssf/record/RowRecord;
    :cond_9
    move-object v4, v6

    .local v4, "rowrec":Lorg/apache/poi/hssf/record/RowRecord;
    move-object v5, v6

    .local v5, "mrk":Lorg/apache/poi/hssf/record/MulRKRecord;
    move-object v7, v6

    .line 133
    .local v6, "bof":Lorg/apache/poi/hssf/record/BOFRecord;
    .local v7, "mbr":Lorg/apache/poi/hssf/record/MulBlankRecord;
    move-object v8, p1

    check-cast v8, Lorg/apache/poi/hssf/record/NoteRecord;

    .line 134
    .local v8, "nrec":Lorg/apache/poi/hssf/record/NoteRecord;
    invoke-virtual {v8}, Lorg/apache/poi/hssf/record/NoteRecord;->getRow()I

    move-result v3

    .line 135
    invoke-virtual {v8}, Lorg/apache/poi/hssf/record/NoteRecord;->getColumn()I

    move-result v1

    .line 141
    .end local v4    # "rowrec":Lorg/apache/poi/hssf/record/RowRecord;
    .end local v5    # "mrk":Lorg/apache/poi/hssf/record/MulRKRecord;
    .end local v6    # "bof":Lorg/apache/poi/hssf/record/BOFRecord;
    .end local v7    # "mbr":Lorg/apache/poi/hssf/record/MulBlankRecord;
    .end local v8    # "nrec":Lorg/apache/poi/hssf/record/NoteRecord;
    :cond_a
    :goto_1
    const/4 v4, 0x0

    if-eqz v0, :cond_b

    array-length v5, v0

    if-lez v5, :cond_b

    .line 142
    aget-object v5, v0, v4

    invoke-interface {v5}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v3

    .line 143
    aget-object v5, v0, v4

    invoke-interface {v5}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v1

    .line 149
    :cond_b
    iget v5, p0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->lastCellRow:I

    if-eq v3, v5, :cond_e

    if-lez v3, :cond_e

    .line 150
    if-ne v5, v2, :cond_c

    iput v4, p0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->lastCellRow:I

    .line 151
    :cond_c
    iget v4, p0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->lastCellRow:I

    .local v4, "i":I
    :goto_2
    if-ge v4, v3, :cond_e

    .line 152
    const/4 v5, -0x1

    .line 153
    .local v5, "cols":I
    iget v6, p0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->lastCellRow:I

    if-ne v4, v6, :cond_d

    .line 154
    iget v5, p0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->lastCellColumn:I

    .line 156
    :cond_d
    iget-object v6, p0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->childListener:Lorg/apache/poi/hssf/eventusermodel/HSSFListener;

    new-instance v7, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/LastCellOfRowDummyRecord;

    invoke-direct {v7, v4, v5}, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/LastCellOfRowDummyRecord;-><init>(II)V

    invoke-interface {v6, v7}, Lorg/apache/poi/hssf/eventusermodel/HSSFListener;->processRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 151
    .end local v5    # "cols":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 162
    .end local v4    # "i":I
    :cond_e
    iget v4, p0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->lastCellRow:I

    if-eq v4, v2, :cond_f

    iget v5, p0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->lastCellColumn:I

    if-eq v5, v2, :cond_f

    if-ne v3, v2, :cond_f

    .line 163
    iget-object v6, p0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->childListener:Lorg/apache/poi/hssf/eventusermodel/HSSFListener;

    new-instance v7, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/LastCellOfRowDummyRecord;

    invoke-direct {v7, v4, v5}, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/LastCellOfRowDummyRecord;-><init>(II)V

    invoke-interface {v6, v7}, Lorg/apache/poi/hssf/eventusermodel/HSSFListener;->processRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 165
    iput v2, p0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->lastCellRow:I

    .line 166
    iput v2, p0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->lastCellColumn:I

    .line 171
    :cond_f
    iget v4, p0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->lastCellRow:I

    if-eq v3, v4, :cond_10

    .line 172
    iput v2, p0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->lastCellColumn:I

    .line 177
    :cond_10
    iget v4, p0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->lastCellColumn:I

    add-int/lit8 v5, v1, -0x1

    if-eq v4, v5, :cond_11

    .line 178
    add-int/lit8 v4, v4, 0x1

    .restart local v4    # "i":I
    :goto_3
    if-ge v4, v1, :cond_11

    .line 179
    iget-object v5, p0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->childListener:Lorg/apache/poi/hssf/eventusermodel/HSSFListener;

    new-instance v6, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/MissingCellDummyRecord;

    invoke-direct {v6, v3, v4}, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/MissingCellDummyRecord;-><init>(II)V

    invoke-interface {v5, v6}, Lorg/apache/poi/hssf/eventusermodel/HSSFListener;->processRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 178
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 184
    .end local v4    # "i":I
    :cond_11
    if-eqz v0, :cond_12

    array-length v4, v0

    if-lez v4, :cond_12

    .line 185
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v0, v4

    invoke-interface {v4}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v1

    .line 190
    :cond_12
    if-eq v1, v2, :cond_13

    .line 191
    iput v1, p0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->lastCellColumn:I

    .line 192
    iput v3, p0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->lastCellRow:I

    .line 196
    :cond_13
    if-eqz v0, :cond_15

    array-length v2, v0

    if-lez v2, :cond_15

    .line 197
    move-object v2, v0

    .local v2, "arr$":[Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_4
    if-ge v5, v4, :cond_14

    aget-object v6, v2, v5

    .line 198
    .local v6, "r":Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    iget-object v7, p0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->childListener:Lorg/apache/poi/hssf/eventusermodel/HSSFListener;

    move-object v8, v6

    check-cast v8, Lorg/apache/poi/hssf/record/Record;

    invoke-interface {v7, v8}, Lorg/apache/poi/hssf/eventusermodel/HSSFListener;->processRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 197
    .end local v6    # "r":Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .end local v2    # "arr$":[Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_14
    goto :goto_5

    .line 201
    :cond_15
    iget-object v2, p0, Lorg/apache/poi/hssf/eventusermodel/MissingRecordAwareHSSFListener;->childListener:Lorg/apache/poi/hssf/eventusermodel/HSSFListener;

    invoke-interface {v2, p1}, Lorg/apache/poi/hssf/eventusermodel/HSSFListener;->processRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 203
    :goto_5
    return-void
.end method
