.class public final Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;
.super Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;
.source "RowRecordsAggregate.java"


# instance fields
.field private _firstrow:I

.field private _lastrow:I

.field private _rowRecordValues:[Lorg/apache/poi/hssf/record/RowRecord;

.field private final _rowRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/hssf/record/RowRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final _sharedValueManager:Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;

.field private final _unknownRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;"
        }
    .end annotation
.end field

.field private final _valuesAgg:Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-static {}, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->createEmpty()Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;-><init>(Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/model/RecordStream;Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;)V
    .locals 4
    .param p1, "rs"    # Lorg/apache/poi/hssf/model/RecordStream;
    .param p2, "svm"    # Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;

    .line 69
    invoke-direct {p0, p2}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;-><init>(Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;)V

    .line 70
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 71
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    .line 72
    .local v0, "rec":Lorg/apache/poi/hssf/record/Record;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v1

    const/16 v2, 0x51

    if-eq v1, v2, :cond_6

    const/16 v2, 0xd7

    if-eq v1, v2, :cond_5

    const/16 v2, 0x208

    if-eq v1, v2, :cond_4

    .line 84
    instance-of v1, v0, Lorg/apache/poi/hssf/record/UnknownRecord;

    if-eqz v1, :cond_1

    .line 86
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->addUnknownRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 87
    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextSid()I

    move-result v1

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_0

    .line 88
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->addUnknownRecord(Lorg/apache/poi/hssf/record/Record;)V

    goto :goto_1

    .line 92
    :cond_1
    instance-of v1, v0, Lorg/apache/poi/hssf/record/MulBlankRecord;

    if-eqz v1, :cond_2

    .line 93
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_valuesAgg:Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;

    move-object v2, v0

    check-cast v2, Lorg/apache/poi/hssf/record/MulBlankRecord;

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->addMultipleBlanks(Lorg/apache/poi/hssf/record/MulBlankRecord;)V

    .line 94
    goto :goto_0

    .line 96
    :cond_2
    instance-of v1, v0, Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    if-eqz v1, :cond_3

    .line 99
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_valuesAgg:Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;

    move-object v2, v0

    check-cast v2, Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-virtual {v1, v2, p1, p2}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->construct(Lorg/apache/poi/hssf/record/CellValueRecordInterface;Lorg/apache/poi/hssf/model/RecordStream;Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;)V

    .line 100
    .end local v0    # "rec":Lorg/apache/poi/hssf/record/Record;
    goto :goto_0

    .line 97
    .restart local v0    # "rec":Lorg/apache/poi/hssf/record/Record;
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected record type ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    :cond_4
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->insertRow(Lorg/apache/poi/hssf/record/RowRecord;)V

    .line 75
    goto :goto_0

    .line 82
    :cond_5
    goto :goto_0

    .line 77
    :cond_6
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->addUnknownRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 78
    goto :goto_0

    .line 101
    .end local v0    # "rec":Lorg/apache/poi/hssf/record/Record;
    :cond_7
    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;)V
    .locals 2
    .param p1, "svm"    # Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;

    .line 52
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_firstrow:I

    .line 38
    iput v0, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_lastrow:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecordValues:[Lorg/apache/poi/hssf/record/RowRecord;

    .line 53
    if-eqz p1, :cond_0

    .line 56
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecords:Ljava/util/Map;

    .line 57
    new-instance v0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_valuesAgg:Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_unknownRecords:Ljava/util/List;

    .line 59
    iput-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_sharedValueManager:Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;

    .line 60
    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SharedValueManager must be provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private addUnknownRecord(Lorg/apache/poi/hssf/record/Record;)V
    .locals 1
    .param p1, "rec"    # Lorg/apache/poi/hssf/record/Record;

    .line 113
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_unknownRecords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method public static createRow(I)Lorg/apache/poi/hssf/record/RowRecord;
    .locals 1
    .param p0, "rowNumber"    # I

    .line 361
    new-instance v0, Lorg/apache/poi/hssf/record/RowRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/RowRecord;-><init>(I)V

    return-object v0
.end method

.method private getEndRowNumberForBlock(I)I
    .locals 5
    .param p1, "block"    # I

    .line 210
    add-int/lit8 v0, p1, 0x1

    mul-int/lit8 v0, v0, 0x20

    add-int/lit8 v0, v0, -0x1

    .line 211
    .local v0, "endIndex":I
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecords:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 212
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecords:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 214
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecordValues:[Lorg/apache/poi/hssf/record/RowRecord;

    if-nez v1, :cond_1

    .line 215
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecords:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecords:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lorg/apache/poi/hssf/record/RowRecord;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/poi/hssf/record/RowRecord;

    iput-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecordValues:[Lorg/apache/poi/hssf/record/RowRecord;

    .line 219
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecordValues:[Lorg/apache/poi/hssf/record/RowRecord;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RowRecord;->getRowNumber()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 220
    :catch_0
    move-exception v1

    .line 221
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Did not find end row for block "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getRowBlockSize(I)I
    .locals 1
    .param p1, "block"    # I

    .line 180
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRowCountForBlock(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    return v0
.end method

.method private getStartRowNumberForBlock(I)I
    .locals 5
    .param p1, "block"    # I

    .line 195
    mul-int/lit8 v0, p1, 0x20

    .line 197
    .local v0, "startIndex":I
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecordValues:[Lorg/apache/poi/hssf/record/RowRecord;

    if-nez v1, :cond_0

    .line 198
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecords:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecords:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lorg/apache/poi/hssf/record/RowRecord;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/poi/hssf/record/RowRecord;

    iput-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecordValues:[Lorg/apache/poi/hssf/record/RowRecord;

    .line 202
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecordValues:[Lorg/apache/poi/hssf/record/RowRecord;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RowRecord;->getRowNumber()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 203
    :catch_0
    move-exception v1

    .line 204
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Did not find start row for block "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private visitRowRecordsForBlock(ILorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)I
    .locals 7
    .param p1, "blockIndex"    # I
    .param p2, "rv"    # Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;

    .line 226
    mul-int/lit8 v0, p1, 0x20

    .line 227
    .local v0, "startIndex":I
    add-int/lit8 v1, v0, 0x20

    .line 229
    .local v1, "endIndex":I
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecords:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 235
    .local v2, "rowIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hssf/record/RowRecord;>;"
    const/4 v3, 0x0

    .line 236
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 237
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 236
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 238
    :cond_0
    const/4 v4, 0x0

    .line 239
    .local v4, "result":I
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .local v5, "i":I
    if-ge v3, v1, :cond_1

    .line 240
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/Record;

    .line 241
    .local v3, "rec":Lorg/apache/poi/hssf/record/Record;
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/Record;->getRecordSize()I

    move-result v6

    add-int/2addr v4, v6

    .line 242
    invoke-interface {p2, v3}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 243
    .end local v3    # "rec":Lorg/apache/poi/hssf/record/Record;
    move v3, v5

    goto :goto_1

    .line 239
    :cond_1
    move v3, v5

    .line 244
    .end local v5    # "i":I
    .local v3, "i":I
    :cond_2
    return v4
.end method

.method private writeHidden(Lorg/apache/poi/hssf/record/RowRecord;I)I
    .locals 4
    .param p1, "pRowRecord"    # Lorg/apache/poi/hssf/record/RowRecord;
    .param p2, "row"    # I

    .line 324
    move v0, p2

    .line 325
    .local v0, "rowIx":I
    move-object v1, p1

    .line 326
    .local v1, "rowRecord":Lorg/apache/poi/hssf/record/RowRecord;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RowRecord;->getOutlineLevel()S

    move-result v2

    .line 327
    .local v2, "level":I
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/RowRecord;->getOutlineLevel()S

    move-result v3

    if-lt v3, v2, :cond_0

    .line 328
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/apache/poi/hssf/record/RowRecord;->setZeroHeight(Z)V

    .line 329
    add-int/lit8 v0, v0, 0x1

    .line 330
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v1

    goto :goto_0

    .line 332
    :cond_0
    return v0
.end method


# virtual methods
.method public collapseRow(I)V
    .locals 5
    .param p1, "rowNumber"    # I

    .line 338
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->findStartOfRowOutlineGroup(I)I

    move-result v0

    .line 339
    .local v0, "startRow":I
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v1

    .line 342
    .local v1, "rowRecord":Lorg/apache/poi/hssf/record/RowRecord;
    invoke-direct {p0, v1, v0}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->writeHidden(Lorg/apache/poi/hssf/record/RowRecord;I)I

    move-result v2

    .line 344
    .local v2, "nextRowIx":I
    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v3

    .line 345
    .local v3, "row":Lorg/apache/poi/hssf/record/RowRecord;
    if-nez v3, :cond_0

    .line 346
    invoke-static {v2}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->createRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v3

    .line 347
    invoke-virtual {p0, v3}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->insertRow(Lorg/apache/poi/hssf/record/RowRecord;)V

    .line 350
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/poi/hssf/record/RowRecord;->setColapsed(Z)V

    .line 351
    return-void
.end method

.method public createDimensions()Lorg/apache/poi/hssf/record/DimensionsRecord;
    .locals 2

    .line 509
    new-instance v0, Lorg/apache/poi/hssf/record/DimensionsRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/DimensionsRecord;-><init>()V

    .line 510
    .local v0, "result":Lorg/apache/poi/hssf/record/DimensionsRecord;
    iget v1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_firstrow:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/DimensionsRecord;->setFirstRow(I)V

    .line 511
    iget v1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_lastrow:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/DimensionsRecord;->setLastRow(I)V

    .line 512
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_valuesAgg:Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->getFirstCellNum()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/DimensionsRecord;->setFirstCol(S)V

    .line 513
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_valuesAgg:Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->getLastCellNum()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/DimensionsRecord;->setLastCol(S)V

    .line 514
    return-object v0
.end method

.method public createFormula(II)Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    .locals 4
    .param p1, "row"    # I
    .param p2, "col"    # I

    .line 500
    new-instance v0, Lorg/apache/poi/hssf/record/FormulaRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/FormulaRecord;-><init>()V

    .line 501
    .local v0, "fr":Lorg/apache/poi/hssf/record/FormulaRecord;
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/FormulaRecord;->setRow(I)V

    .line 502
    int-to-short v1, p2

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/FormulaRecord;->setColumn(S)V

    .line 503
    new-instance v1, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_sharedValueManager:Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;-><init>(Lorg/apache/poi/hssf/record/FormulaRecord;Lorg/apache/poi/hssf/record/StringRecord;Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;)V

    return-object v1
.end method

.method public createIndexRecord(II)Lorg/apache/poi/hssf/record/IndexRecord;
    .locals 8
    .param p1, "indexRecordOffset"    # I
    .param p2, "sizeOfInitialSheetRecords"    # I

    .line 457
    new-instance v0, Lorg/apache/poi/hssf/record/IndexRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/IndexRecord;-><init>()V

    .line 458
    .local v0, "result":Lorg/apache/poi/hssf/record/IndexRecord;
    iget v1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_firstrow:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/IndexRecord;->setFirstRow(I)V

    .line 459
    iget v1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_lastrow:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/IndexRecord;->setLastRowAdd1(I)V

    .line 467
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRowBlockCount()I

    move-result v1

    .line 469
    .local v1, "blockCount":I
    invoke-static {v1}, Lorg/apache/poi/hssf/record/IndexRecord;->getRecordSizeForBlockCount(I)I

    move-result v2

    .line 471
    .local v2, "indexRecSize":I
    add-int v3, p1, v2

    add-int/2addr v3, p2

    .line 473
    .local v3, "currentOffset":I
    const/4 v4, 0x0

    .local v4, "block":I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 478
    invoke-direct {p0, v4}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRowBlockSize(I)I

    move-result v5

    add-int/2addr v3, v5

    .line 480
    iget-object v5, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_valuesAgg:Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;

    invoke-direct {p0, v4}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getStartRowNumberForBlock(I)I

    move-result v6

    invoke-direct {p0, v4}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getEndRowNumberForBlock(I)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->getRowCellBlockSize(II)I

    move-result v5

    add-int/2addr v3, v5

    .line 484
    invoke-virtual {v0, v3}, Lorg/apache/poi/hssf/record/IndexRecord;->addDbcell(I)V

    .line 486
    invoke-virtual {p0, v4}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRowCountForBlock(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x8

    add-int/2addr v3, v5

    .line 473
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 488
    .end local v4    # "block":I
    :cond_0
    return-object v0
.end method

.method public expandRow(I)V
    .locals 9
    .param p1, "rowNumber"    # I

    .line 374
    move v0, p1

    .line 375
    .local v0, "idx":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 376
    return-void

    .line 379
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->isRowGroupCollapsed(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 380
    return-void

    .line 384
    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->findStartOfRowOutlineGroup(I)I

    move-result v1

    .line 385
    .local v1, "startIdx":I
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v2

    .line 388
    .local v2, "row":Lorg/apache/poi/hssf/record/RowRecord;
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->findEndOfRowOutlineGroup(I)I

    move-result v3

    .line 397
    .local v3, "endIdx":I
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->isRowGroupHiddenByParent(I)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_4

    .line 398
    move v4, v1

    .local v4, "i":I
    :goto_0
    if-gt v4, v3, :cond_4

    .line 399
    invoke-virtual {p0, v4}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v6

    .line 400
    .local v6, "otherRow":Lorg/apache/poi/hssf/record/RowRecord;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/RowRecord;->getOutlineLevel()S

    move-result v7

    invoke-virtual {v6}, Lorg/apache/poi/hssf/record/RowRecord;->getOutlineLevel()S

    move-result v8

    if-eq v7, v8, :cond_2

    invoke-virtual {p0, v4}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->isRowGroupCollapsed(I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 401
    :cond_2
    invoke-virtual {v6, v5}, Lorg/apache/poi/hssf/record/RowRecord;->setZeroHeight(Z)V

    .line 398
    .end local v6    # "otherRow":Lorg/apache/poi/hssf/record/RowRecord;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 407
    .end local v4    # "i":I
    :cond_4
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v4}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/record/RowRecord;->setColapsed(Z)V

    .line 408
    return-void
.end method

.method public findEndOfRowOutlineGroup(I)I
    .locals 3
    .param p1, "row"    # I

    .line 308
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RowRecord;->getOutlineLevel()S

    move-result v0

    .line 310
    .local v0, "level":I
    move v1, p1

    .local v1, "currentRow":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getLastRowNum()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 311
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/RowRecord;->getOutlineLevel()S

    move-result v2

    if-ge v2, v0, :cond_0

    .line 312
    goto :goto_1

    .line 310
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 316
    :cond_1
    :goto_1
    add-int/lit8 v2, v1, -0x1

    return v2
.end method

.method public findStartOfRowOutlineGroup(I)I
    .locals 4
    .param p1, "row"    # I

    .line 293
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v0

    .line 294
    .local v0, "rowRecord":Lorg/apache/poi/hssf/record/RowRecord;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RowRecord;->getOutlineLevel()S

    move-result v1

    .line 295
    .local v1, "level":I
    move v2, p1

    .line 296
    .local v2, "currentRow":I
    :goto_0
    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 297
    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v0

    .line 298
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RowRecord;->getOutlineLevel()S

    move-result v3

    if-ge v3, v1, :cond_0

    .line 299
    add-int/lit8 v3, v2, 0x1

    return v3

    .line 301
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 304
    :cond_1
    add-int/lit8 v3, v2, 0x1

    return v3
.end method

.method public getCellValueIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/hssf/record/CellValueRecordInterface;",
            ">;"
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_valuesAgg:Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getFirstRowNum()I
    .locals 1

    .line 160
    iget v0, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_firstrow:I

    return v0
.end method

.method public getIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/hssf/record/RowRecord;",
            ">;"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getLastRowNum()I
    .locals 1

    .line 165
    iget v0, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_lastrow:I

    return v0
.end method

.method public getPhysicalNumberOfRows()I
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getRow(I)Lorg/apache/poi/hssf/record/RowRecord;
    .locals 4
    .param p1, "rowIndex"    # I

    .line 146
    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v0

    .line 147
    .local v0, "maxrow":I
    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    .line 150
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecords:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/RowRecord;

    return-object v1

    .line 148
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The row number must be between 0 and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getRowBlockCount()I
    .locals 2

    .line 173
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x20

    .line 174
    .local v0, "size":I
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecords:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    rem-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    .line 175
    add-int/lit8 v0, v0, 0x1

    .line 176
    :cond_0
    return v0
.end method

.method public getRowCountForBlock(I)I
    .locals 3
    .param p1, "block"    # I

    .line 185
    mul-int/lit8 v0, p1, 0x20

    .line 186
    .local v0, "startIndex":I
    add-int/lit8 v1, v0, 0x20

    add-int/lit8 v1, v1, -0x1

    .line 187
    .local v1, "endIndex":I
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecords:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 188
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecords:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 190
    :cond_0
    sub-int v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    return v2
.end method

.method public getValueRecords()[Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    .locals 1

    .line 453
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_valuesAgg:Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->getValueRecords()[Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    move-result-object v0

    return-object v0
.end method

.method public insertCell(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)V
    .locals 1
    .param p1, "cvRec"    # Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 491
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_valuesAgg:Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->insertCell(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)V

    .line 492
    return-void
.end method

.method public insertRow(Lorg/apache/poi/hssf/record/RowRecord;)V
    .locals 3
    .param p1, "row"    # Lorg/apache/poi/hssf/record/RowRecord;

    .line 117
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecords:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RowRecord;->getRowNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecordValues:[Lorg/apache/poi/hssf/record/RowRecord;

    .line 120
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RowRecord;->getRowNumber()I

    move-result v0

    iget v1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_firstrow:I

    const/4 v2, -0x1

    if-lt v0, v1, :cond_0

    if-ne v1, v2, :cond_1

    .line 121
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RowRecord;->getRowNumber()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_firstrow:I

    .line 123
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RowRecord;->getRowNumber()I

    move-result v0

    iget v1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_lastrow:I

    if-gt v0, v1, :cond_2

    if-ne v1, v2, :cond_3

    .line 124
    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RowRecord;->getRowNumber()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_lastrow:I

    .line 126
    :cond_3
    return-void
.end method

.method public isRowGroupCollapsed(I)Z
    .locals 2
    .param p1, "row"    # I

    .line 365
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->findEndOfRowOutlineGroup(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 367
    .local v0, "collapseRow":I
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v1

    if-nez v1, :cond_0

    .line 368
    const/4 v1, 0x0

    return v1

    .line 370
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RowRecord;->getColapsed()Z

    move-result v1

    return v1
.end method

.method public isRowGroupHiddenByParent(I)Z
    .locals 6
    .param p1, "row"    # I

    .line 414
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->findEndOfRowOutlineGroup(I)I

    move-result v0

    .line 415
    .local v0, "endOfOutlineGroupIdx":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v1

    if-nez v1, :cond_0

    .line 416
    const/4 v1, 0x0

    .line 417
    .local v1, "endLevel":I
    const/4 v2, 0x0

    .local v2, "endHidden":Z
    goto :goto_0

    .line 419
    .end local v1    # "endLevel":I
    .end local v2    # "endHidden":Z
    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RowRecord;->getOutlineLevel()S

    move-result v1

    .line 420
    .restart local v1    # "endLevel":I
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/RowRecord;->getZeroHeight()Z

    move-result v2

    .line 426
    .restart local v2    # "endHidden":Z
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->findStartOfRowOutlineGroup(I)I

    move-result v3

    .line 427
    .local v3, "startOfOutlineGroupIdx":I
    add-int/lit8 v4, v3, -0x1

    if-ltz v4, :cond_2

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {p0, v4}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 431
    :cond_1
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {p0, v4}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/RowRecord;->getOutlineLevel()S

    move-result v4

    .line 432
    .local v4, "startLevel":I
    add-int/lit8 v5, v3, -0x1

    invoke-virtual {p0, v5}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/RowRecord;->getZeroHeight()Z

    move-result v5

    .local v5, "startHidden":Z
    goto :goto_2

    .line 428
    .end local v4    # "startLevel":I
    .end local v5    # "startHidden":Z
    :cond_2
    :goto_1
    const/4 v4, 0x0

    .line 429
    .restart local v4    # "startLevel":I
    const/4 v5, 0x0

    .line 435
    .restart local v5    # "startHidden":Z
    :goto_2
    if-le v1, v4, :cond_3

    .line 436
    return v2

    .line 439
    :cond_3
    return v5
.end method

.method public removeCell(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)V
    .locals 1
    .param p1, "cvRec"    # Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 494
    instance-of v0, p1, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    if-eqz v0, :cond_0

    .line 495
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->notifyFormulaChanging()V

    .line 497
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_valuesAgg:Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->removeCell(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)V

    .line 498
    return-void
.end method

.method public removeRow(Lorg/apache/poi/hssf/record/RowRecord;)V
    .locals 6
    .param p1, "row"    # Lorg/apache/poi/hssf/record/RowRecord;

    .line 129
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RowRecord;->getRowNumber()I

    move-result v0

    .line 130
    .local v0, "rowIndex":I
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_valuesAgg:Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->removeAllCellsValuesForRow(I)V

    .line 131
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 132
    .local v1, "key":Ljava/lang/Integer;
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecords:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/RowRecord;

    .line 133
    .local v2, "rr":Lorg/apache/poi/hssf/record/RowRecord;
    if-eqz v2, :cond_1

    .line 136
    if-ne p1, v2, :cond_0

    .line 142
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecordValues:[Lorg/apache/poi/hssf/record/RowRecord;

    .line 143
    return-void

    .line 137
    :cond_0
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecords:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Attempt to remove row that does not belong to this sheet"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 134
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid row index ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public updateFormulasAfterRowShift(Lorg/apache/poi/ss/formula/FormulaShifter;I)V
    .locals 1
    .param p1, "formulaShifter"    # Lorg/apache/poi/ss/formula/FormulaShifter;
    .param p2, "currentExternSheetIndex"    # I

    .line 506
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_valuesAgg:Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->updateFormulasAfterRowShift(Lorg/apache/poi/ss/formula/FormulaShifter;I)V

    .line 507
    return-void
.end method

.method public visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V
    .locals 12
    .param p1, "rv"    # Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;

    .line 250
    new-instance v0, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$PositionTrackingVisitor;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$PositionTrackingVisitor;-><init>(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;I)V

    .line 252
    .local v0, "stv":Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$PositionTrackingVisitor;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRowBlockCount()I

    move-result v2

    .line 253
    .local v2, "blockCount":I
    const/4 v3, 0x0

    .local v3, "blockIndex":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 256
    const/4 v4, 0x0

    .line 258
    .local v4, "pos":I
    invoke-direct {p0, v3, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->visitRowRecordsForBlock(ILorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)I

    move-result v5

    .line 259
    .local v5, "rowBlockSize":I
    add-int/2addr v4, v5

    .line 261
    invoke-direct {p0, v3}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getStartRowNumberForBlock(I)I

    move-result v6

    .line 262
    .local v6, "startRowNumber":I
    invoke-direct {p0, v3}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getEndRowNumberForBlock(I)I

    move-result v7

    .line 263
    .local v7, "endRowNumber":I
    new-instance v8, Lorg/apache/poi/hssf/record/DBCellRecord$Builder;

    invoke-direct {v8}, Lorg/apache/poi/hssf/record/DBCellRecord$Builder;-><init>()V

    .line 265
    .local v8, "dbcrBuilder":Lorg/apache/poi/hssf/record/DBCellRecord$Builder;
    add-int/lit8 v9, v5, -0x14

    .line 266
    .local v9, "cellRefOffset":I
    move v10, v6

    .local v10, "row":I
    :goto_1
    if-gt v10, v7, :cond_1

    .line 267
    iget-object v11, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_valuesAgg:Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;

    invoke-virtual {v11, v10}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->rowHasCells(I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 268
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$PositionTrackingVisitor;->setPosition(I)V

    .line 269
    iget-object v11, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_valuesAgg:Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;

    invoke-virtual {v11, v10, v0}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->visitCellsForRow(ILorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    .line 270
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$PositionTrackingVisitor;->getPosition()I

    move-result v11

    .line 271
    .local v11, "rowCellSize":I
    add-int/2addr v4, v11

    .line 274
    invoke-virtual {v8, v9}, Lorg/apache/poi/hssf/record/DBCellRecord$Builder;->addCellOffset(I)V

    .line 275
    move v9, v11

    .line 266
    .end local v11    # "rowCellSize":I
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 279
    .end local v10    # "row":I
    :cond_1
    invoke-virtual {v8, v4}, Lorg/apache/poi/hssf/record/DBCellRecord$Builder;->build(I)Lorg/apache/poi/hssf/record/DBCellRecord;

    move-result-object v10

    invoke-interface {p1, v10}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 253
    .end local v4    # "pos":I
    .end local v5    # "rowBlockSize":I
    .end local v6    # "startRowNumber":I
    .end local v7    # "endRowNumber":I
    .end local v8    # "dbcrBuilder":Lorg/apache/poi/hssf/record/DBCellRecord$Builder;
    .end local v9    # "cellRefOffset":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 281
    .end local v3    # "blockIndex":I
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_unknownRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 283
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_unknownRecords:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/Record;

    invoke-interface {p1, v3}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 281
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 285
    .end local v1    # "i":I
    :cond_3
    return-void
.end method
