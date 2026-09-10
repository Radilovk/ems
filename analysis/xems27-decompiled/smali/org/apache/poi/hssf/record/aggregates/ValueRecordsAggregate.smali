.class public final Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;
.super Ljava/lang/Object;
.source "ValueRecordsAggregate.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate$ValueIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/poi/hssf/record/CellValueRecordInterface;",
        ">;"
    }
.end annotation


# static fields
.field private static final INDEX_NOT_SET:I = -0x1

.field private static final MAX_ROW_INDEX:I = 0xffff


# instance fields
.field private firstcell:I

.field private lastcell:I

.field private records:[[Lorg/apache/poi/hssf/record/CellValueRecordInterface;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    const/16 v0, 0x1e

    new-array v0, v0, [[Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    const/4 v1, -0x1

    invoke-direct {p0, v1, v1, v0}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;-><init>(II[[Lorg/apache/poi/hssf/record/CellValueRecordInterface;)V

    .line 55
    return-void
.end method

.method private constructor <init>(II[[Lorg/apache/poi/hssf/record/CellValueRecordInterface;)V
    .locals 1
    .param p1, "firstCellIx"    # I
    .param p2, "lastCellIx"    # I
    .param p3, "pRecords"    # [[Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->firstcell:I

    .line 48
    iput v0, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->lastcell:I

    .line 57
    iput p1, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->firstcell:I

    .line 58
    iput p2, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->lastcell:I

    .line 59
    iput-object p3, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->records:[[Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;)[[Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;

    .line 44
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->records:[[Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    return-object v0
.end method

.method private static countBlanks([Lorg/apache/poi/hssf/record/CellValueRecordInterface;I)I
    .locals 3
    .param p0, "rowCellValues"    # [Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    .param p1, "startIx"    # I

    .line 265
    move v0, p1

    .line 266
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 267
    aget-object v1, p0, v0

    .line 268
    .local v1, "cvr":Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    instance-of v2, v1, Lorg/apache/poi/hssf/record/BlankRecord;

    if-nez v2, :cond_0

    .line 269
    goto :goto_1

    .line 271
    :cond_0
    nop

    .end local v1    # "cvr":Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    add-int/lit8 v0, v0, 0x1

    .line 272
    goto :goto_0

    .line 273
    :cond_1
    :goto_1
    sub-int v1, v0, p1

    return v1
.end method

.method private createMBR([Lorg/apache/poi/hssf/record/CellValueRecordInterface;II)Lorg/apache/poi/hssf/record/MulBlankRecord;
    .locals 3
    .param p1, "cellValues"    # [Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    .param p2, "startIx"    # I
    .param p3, "nBlank"    # I

    .line 278
    new-array v0, p3, [S

    .line 279
    .local v0, "xfs":[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 280
    add-int v2, p2, v1

    aget-object v2, p1, v2

    check-cast v2, Lorg/apache/poi/hssf/record/BlankRecord;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/BlankRecord;->getXFIndex()S

    move-result v2

    aput-short v2, v0, v1

    .line 279
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 282
    .end local v1    # "i":I
    :cond_0
    aget-object v1, p1, p2

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v1

    .line 283
    .local v1, "rowIx":I
    new-instance v2, Lorg/apache/poi/hssf/record/MulBlankRecord;

    invoke-direct {v2, v1, p2, v0}, Lorg/apache/poi/hssf/record/MulBlankRecord;-><init>(II[S)V

    return-object v2
.end method

.method private static getRowSerializedSize([Lorg/apache/poi/hssf/record/CellValueRecordInterface;)I
    .locals 6
    .param p0, "rowCells"    # [Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 214
    if-nez p0, :cond_0

    .line 215
    const/4 v0, 0x0

    return v0

    .line 217
    :cond_0
    const/4 v0, 0x0

    .line 218
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 219
    aget-object v2, p0, v1

    check-cast v2, Lorg/apache/poi/hssf/record/RecordBase;

    .line 220
    .local v2, "cvr":Lorg/apache/poi/hssf/record/RecordBase;
    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 221
    goto :goto_1

    .line 223
    :cond_1
    invoke-static {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->countBlanks([Lorg/apache/poi/hssf/record/CellValueRecordInterface;I)I

    move-result v4

    .line 224
    .local v4, "nBlank":I
    if-le v4, v3, :cond_2

    .line 225
    mul-int/lit8 v5, v4, 0x2

    add-int/lit8 v5, v5, 0xa

    add-int/2addr v0, v5

    .line 226
    add-int/lit8 v5, v4, -0x1

    add-int/2addr v1, v5

    goto :goto_1

    .line 228
    :cond_2
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/RecordBase;->getRecordSize()I

    move-result v5

    add-int/2addr v0, v5

    .line 218
    .end local v2    # "cvr":Lorg/apache/poi/hssf/record/RecordBase;
    .end local v4    # "nBlank":I
    :goto_1
    add-int/2addr v1, v3

    goto :goto_0

    .line 231
    .end local v1    # "i":I
    :cond_3
    return v0
.end method


# virtual methods
.method public addMultipleBlanks(Lorg/apache/poi/hssf/record/MulBlankRecord;)V
    .locals 3
    .param p1, "mbr"    # Lorg/apache/poi/hssf/record/MulBlankRecord;

    .line 158
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/MulBlankRecord;->getNumColumns()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 159
    new-instance v1, Lorg/apache/poi/hssf/record/BlankRecord;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/BlankRecord;-><init>()V

    .line 161
    .local v1, "br":Lorg/apache/poi/hssf/record/BlankRecord;
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/MulBlankRecord;->getFirstColumn()I

    move-result v2

    add-int/2addr v2, v0

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/BlankRecord;->setColumn(S)V

    .line 162
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/MulBlankRecord;->getRow()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/BlankRecord;->setRow(I)V

    .line 163
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/MulBlankRecord;->getXFAt(I)S

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/BlankRecord;->setXFIndex(S)V

    .line 164
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->insertCell(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)V

    .line 158
    .end local v1    # "br":Lorg/apache/poi/hssf/record/BlankRecord;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    .end local v0    # "j":I
    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 390
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "clone() should not be called.  ValueRecordsAggregate should be copied via Sheet.cloneSheet()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public construct(Lorg/apache/poi/hssf/record/CellValueRecordInterface;Lorg/apache/poi/hssf/model/RecordStream;Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;)V
    .locals 4
    .param p1, "rec"    # Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    .param p2, "rs"    # Lorg/apache/poi/hssf/model/RecordStream;
    .param p3, "sfh"    # Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;

    .line 173
    instance-of v0, p1, Lorg/apache/poi/hssf/record/FormulaRecord;

    if-eqz v0, :cond_1

    .line 174
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/record/FormulaRecord;

    .line 177
    .local v0, "formulaRec":Lorg/apache/poi/hssf/record/FormulaRecord;
    invoke-virtual {p2}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextClass()Ljava/lang/Class;

    move-result-object v1

    .line 178
    .local v1, "nextClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/poi/hssf/record/Record;>;"
    const-class v2, Lorg/apache/poi/hssf/record/StringRecord;

    if-ne v1, v2, :cond_0

    .line 179
    invoke-virtual {p2}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/StringRecord;

    .local v2, "cachedText":Lorg/apache/poi/hssf/record/StringRecord;
    goto :goto_0

    .line 181
    .end local v2    # "cachedText":Lorg/apache/poi/hssf/record/StringRecord;
    :cond_0
    const/4 v2, 0x0

    .line 183
    .restart local v2    # "cachedText":Lorg/apache/poi/hssf/record/StringRecord;
    :goto_0
    new-instance v3, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-direct {v3, v0, v2, p3}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;-><init>(Lorg/apache/poi/hssf/record/FormulaRecord;Lorg/apache/poi/hssf/record/StringRecord;Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;)V

    invoke-virtual {p0, v3}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->insertCell(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)V

    .line 184
    .end local v0    # "formulaRec":Lorg/apache/poi/hssf/record/FormulaRecord;
    .end local v1    # "nextClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/poi/hssf/record/Record;>;"
    .end local v2    # "cachedText":Lorg/apache/poi/hssf/record/StringRecord;
    goto :goto_1

    .line 185
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->insertCell(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)V

    .line 187
    :goto_1
    return-void
.end method

.method public getFirstCellNum()I
    .locals 1

    .line 150
    iget v0, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->firstcell:I

    return v0
.end method

.method public getLastCellNum()I
    .locals 1

    .line 154
    iget v0, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->lastcell:I

    return v0
.end method

.method public getPhysicalNumberOfCells()I
    .locals 5

    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "r":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->records:[[Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 138
    aget-object v2, v2, v1

    .line 139
    .local v2, "rowCells":[Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    if-eqz v2, :cond_1

    .line 140
    const/4 v3, 0x0

    .local v3, "c":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 141
    aget-object v4, v2, v3

    if-eqz v4, :cond_0

    .line 142
    add-int/lit8 v0, v0, 0x1

    .line 140
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 137
    .end local v2    # "rowCells":[Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    .end local v3    # "c":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    .end local v1    # "r":I
    :cond_2
    return v0
.end method

.method public getRowCellBlockSize(II)I
    .locals 4
    .param p1, "startRow"    # I
    .param p2, "endRow"    # I

    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, "result":I
    move v1, p1

    .local v1, "rowIx":I
    :goto_0
    if-gt v1, p2, :cond_0

    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->records:[[Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 195
    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->getRowSerializedSize([Lorg/apache/poi/hssf/record/CellValueRecordInterface;)I

    move-result v2

    add-int/2addr v0, v2

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    .end local v1    # "rowIx":I
    :cond_0
    return v0
.end method

.method public getValueRecords()[Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v0, "temp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/CellValueRecordInterface;>;"
    const/4 v1, 0x0

    .local v1, "rowIx":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->records:[[Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 372
    aget-object v2, v2, v1

    .line 373
    .local v2, "rowCells":[Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    if-nez v2, :cond_0

    .line 374
    goto :goto_2

    .line 376
    :cond_0
    const/4 v3, 0x0

    .local v3, "colIx":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 377
    aget-object v4, v2, v3

    .line 378
    .local v4, "cell":Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    if-eqz v4, :cond_1

    .line 379
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    .end local v4    # "cell":Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 371
    .end local v2    # "rowCells":[Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    .end local v3    # "colIx":I
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 384
    .end local v1    # "rowIx":I
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 385
    .local v1, "result":[Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 386
    return-object v1
.end method

.method public insertCell(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)V
    .locals 7
    .param p1, "cell"    # Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 63
    invoke-interface {p1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v0

    .line 64
    .local v0, "column":S
    invoke-interface {p1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v1

    .line 65
    .local v1, "row":I
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->records:[[Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    array-length v2, v2

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    .line 66
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->records:[[Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 67
    .local v2, "oldRecords":[[Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    array-length v4, v2

    mul-int/lit8 v4, v4, 0x2

    .line 68
    .local v4, "newSize":I
    add-int/lit8 v5, v1, 0x1

    if-ge v4, v5, :cond_0

    .line 69
    add-int/lit8 v4, v1, 0x1

    .line 70
    :cond_0
    new-array v5, v4, [[Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    iput-object v5, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->records:[[Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 71
    array-length v6, v2

    invoke-static {v2, v3, v5, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    .end local v2    # "oldRecords":[[Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    .end local v4    # "newSize":I
    :cond_1
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->records:[[Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    aget-object v2, v2, v1

    .line 74
    .local v2, "rowCells":[Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    if-nez v2, :cond_3

    .line 75
    add-int/lit8 v4, v0, 0x1

    .line 76
    .restart local v4    # "newSize":I
    const/16 v5, 0xa

    if-ge v4, v5, :cond_2

    .line 77
    const/16 v4, 0xa

    .line 78
    :cond_2
    new-array v2, v4, [Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 79
    iget-object v5, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->records:[[Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    aput-object v2, v5, v1

    .line 81
    .end local v4    # "newSize":I
    :cond_3
    array-length v4, v2

    if-lt v0, v4, :cond_5

    .line 82
    move-object v4, v2

    .line 83
    .local v4, "oldRowCells":[Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    array-length v5, v4

    mul-int/lit8 v5, v5, 0x2

    .line 84
    .local v5, "newSize":I
    add-int/lit8 v6, v0, 0x1

    if-ge v5, v6, :cond_4

    .line 85
    add-int/lit8 v5, v0, 0x1

    .line 87
    :cond_4
    new-array v2, v5, [Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 88
    array-length v6, v4

    invoke-static {v4, v3, v2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->records:[[Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    aput-object v2, v3, v1

    .line 91
    .end local v4    # "oldRowCells":[Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    .end local v5    # "newSize":I
    :cond_5
    aput-object p1, v2, v0

    .line 93
    iget v3, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->firstcell:I

    const/4 v4, -0x1

    if-lt v0, v3, :cond_6

    if-ne v3, v4, :cond_7

    .line 94
    :cond_6
    iput v0, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->firstcell:I

    .line 96
    :cond_7
    iget v3, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->lastcell:I

    if-gt v0, v3, :cond_8

    if-ne v3, v4, :cond_9

    .line 97
    :cond_8
    iput v0, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->lastcell:I

    .line 99
    :cond_9
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/hssf/record/CellValueRecordInterface;",
            ">;"
        }
    .end annotation

    .line 359
    new-instance v0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate$ValueIterator;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate$ValueIterator;-><init>(Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;)V

    return-object v0
.end method

.method public removeAllCellsValuesForRow(I)V
    .locals 4
    .param p1, "rowIndex"    # I

    .line 121
    const v0, 0xffff

    if-ltz p1, :cond_1

    if-gt p1, v0, :cond_1

    .line 125
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->records:[[Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    .line 128
    return-void

    .line 131
    :cond_0
    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 132
    return-void

    .line 122
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Specified rowIndex "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is outside the allowable range (0.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeCell(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)V
    .locals 5
    .param p1, "cell"    # Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 102
    if-eqz p1, :cond_3

    .line 105
    invoke-interface {p1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v0

    .line 106
    .local v0, "row":I
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->records:[[Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 109
    aget-object v1, v1, v0

    .line 110
    .local v1, "rowCells":[Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    if-eqz v1, :cond_1

    .line 113
    invoke-interface {p1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v2

    .line 114
    .local v2, "column":S
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 117
    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 118
    return-void

    .line 115
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "cell column is out of range"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 111
    .end local v2    # "column":S
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "cell row is already empty"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 107
    .end local v1    # "rowCells":[Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "cell row is out of range"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    .end local v0    # "row":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cell must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rowHasCells(I)Z
    .locals 4
    .param p1, "row"    # I

    .line 202
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->records:[[Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    array-length v1, v0

    const/4 v2, 0x0

    if-lt p1, v1, :cond_0

    .line 203
    return v2

    .line 205
    :cond_0
    aget-object v0, v0, p1

    .line 206
    .local v0, "rowCells":[Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    if-nez v0, :cond_1

    return v2

    .line 207
    :cond_1
    const/4 v1, 0x0

    .local v1, "col":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_3

    .line 208
    aget-object v3, v0, v1

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    return v2

    .line 207
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    .end local v1    # "col":I
    :cond_3
    return v2
.end method

.method public updateFormulasAfterRowShift(Lorg/apache/poi/ss/formula/FormulaShifter;I)V
    .locals 8
    .param p1, "shifter"    # Lorg/apache/poi/ss/formula/FormulaShifter;
    .param p2, "currentExternSheetIndex"    # I

    .line 287
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->records:[[Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 288
    aget-object v1, v1, v0

    .line 289
    .local v1, "rowCells":[Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    if-nez v1, :cond_0

    .line 290
    goto :goto_2

    .line 292
    :cond_0
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 293
    aget-object v3, v1, v2

    .line 294
    .local v3, "cell":Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    instance-of v4, v3, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    if-eqz v4, :cond_1

    .line 295
    move-object v4, v3

    check-cast v4, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    .line 296
    .local v4, "fra":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v5

    .line 297
    .local v5, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    move-object v6, v3

    check-cast v6, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {v6}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaRecord()Lorg/apache/poi/hssf/record/FormulaRecord;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/hssf/record/FormulaRecord;->getParsedExpression()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v6

    .line 299
    .local v6, "ptgs2":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {p1, v5, p2}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 300
    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->setParsedExpression([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 292
    .end local v3    # "cell":Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    .end local v4    # "fra":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    .end local v5    # "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .end local v6    # "ptgs2":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 287
    .end local v1    # "rowCells":[Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    .end local v2    # "j":I
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method public visitCellsForRow(ILorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V
    .locals 6
    .param p1, "rowIndex"    # I
    .param p2, "rv"    # Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;

    .line 236
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->records:[[Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    aget-object v0, v0, p1

    .line 237
    .local v0, "rowCells":[Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    if-eqz v0, :cond_4

    .line 242
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 243
    aget-object v2, v0, v1

    check-cast v2, Lorg/apache/poi/hssf/record/RecordBase;

    .line 244
    .local v2, "cvr":Lorg/apache/poi/hssf/record/RecordBase;
    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 245
    goto :goto_1

    .line 247
    :cond_0
    invoke-static {v0, v1}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->countBlanks([Lorg/apache/poi/hssf/record/CellValueRecordInterface;I)I

    move-result v4

    .line 248
    .local v4, "nBlank":I
    if-le v4, v3, :cond_1

    .line 249
    invoke-direct {p0, v0, v1, v4}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->createMBR([Lorg/apache/poi/hssf/record/CellValueRecordInterface;II)Lorg/apache/poi/hssf/record/MulBlankRecord;

    move-result-object v5

    invoke-interface {p2, v5}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 250
    add-int/lit8 v5, v4, -0x1

    add-int/2addr v1, v5

    goto :goto_1

    .line 251
    :cond_1
    instance-of v5, v2, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;

    if-eqz v5, :cond_2

    .line 252
    move-object v5, v2

    check-cast v5, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;

    .line 253
    .local v5, "agg":Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;
    invoke-virtual {v5, p2}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;->visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    .line 254
    .end local v5    # "agg":Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;
    goto :goto_1

    .line 255
    :cond_2
    move-object v5, v2

    check-cast v5, Lorg/apache/poi/hssf/record/Record;

    invoke-interface {p2, v5}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 242
    .end local v2    # "cvr":Lorg/apache/poi/hssf/record/RecordBase;
    .end local v4    # "nBlank":I
    :goto_1
    add-int/2addr v1, v3

    goto :goto_0

    .line 258
    .end local v1    # "i":I
    :cond_3
    return-void

    .line 238
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Row ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] is empty"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
