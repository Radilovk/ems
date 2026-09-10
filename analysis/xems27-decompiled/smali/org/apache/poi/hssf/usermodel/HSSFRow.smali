.class public final Lorg/apache/poi/hssf/usermodel/HSSFRow;
.super Ljava/lang/Object;
.source "HSSFRow.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Row;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/usermodel/HSSFRow$CellIterator;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final INITIAL_CAPACITY:I


# instance fields
.field private book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

.field private cells:[Lorg/apache/poi/hssf/usermodel/HSSFCell;

.field private row:Lorg/apache/poi/hssf/record/RowRecord;

.field private rowNum:I

.field private sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    nop

    .line 40
    const/4 v0, 0x5

    const-string v1, "HSSFRow.ColInitialCapacity"

    invoke-static {v1, v0}, Lorg/apache/poi/util/Configurator;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->INITIAL_CAPACITY:I

    return-void
.end method

.method constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/usermodel/HSSFSheet;I)V
    .locals 1
    .param p1, "book"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .param p2, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p3, "rowNum"    # I

    .line 69
    new-instance v0, Lorg/apache/poi/hssf/record/RowRecord;

    invoke-direct {v0, p3}, Lorg/apache/poi/hssf/record/RowRecord;-><init>(I)V

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/record/RowRecord;)V

    .line 70
    return-void
.end method

.method constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/record/RowRecord;)V
    .locals 2
    .param p1, "book"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .param p2, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p3, "record"    # Lorg/apache/poi/hssf/record/RowRecord;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 83
    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 84
    iput-object p3, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    .line 85
    invoke-virtual {p3}, Lorg/apache/poi/hssf/record/RowRecord;->getRowNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->setRowNum(I)V

    .line 90
    invoke-virtual {p3}, Lorg/apache/poi/hssf/record/RowRecord;->getLastCol()I

    move-result v0

    sget v1, Lorg/apache/poi/hssf/usermodel/HSSFRow;->INITIAL_CAPACITY:I

    add-int/2addr v0, v1

    new-array v0, v0, [Lorg/apache/poi/hssf/usermodel/HSSFCell;

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cells:[Lorg/apache/poi/hssf/usermodel/HSSFCell;

    .line 94
    invoke-virtual {p3}, Lorg/apache/poi/hssf/record/RowRecord;->setEmpty()V

    .line 96
    return-void
.end method

.method static synthetic access$000(Lorg/apache/poi/hssf/usermodel/HSSFRow;)[Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/hssf/usermodel/HSSFRow;

    .line 37
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cells:[Lorg/apache/poi/hssf/usermodel/HSSFCell;

    return-object v0
.end method

.method private addCell(Lorg/apache/poi/hssf/usermodel/HSSFCell;)V
    .locals 6
    .param p1, "cell"    # Lorg/apache/poi/hssf/usermodel/HSSFCell;

    .line 305
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getColumnIndex()I

    move-result v0

    .line 307
    .local v0, "column":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cells:[Lorg/apache/poi/hssf/usermodel/HSSFCell;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 308
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cells:[Lorg/apache/poi/hssf/usermodel/HSSFCell;

    .line 310
    .local v1, "oldCells":[Lorg/apache/poi/hssf/usermodel/HSSFCell;
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 311
    .local v2, "newSize":I
    add-int/lit8 v3, v0, 0x1

    if-ge v2, v3, :cond_0

    .line 312
    sget v3, Lorg/apache/poi/hssf/usermodel/HSSFRow;->INITIAL_CAPACITY:I

    add-int v2, v0, v3

    .line 314
    :cond_0
    new-array v3, v2, [Lorg/apache/poi/hssf/usermodel/HSSFCell;

    iput-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cells:[Lorg/apache/poi/hssf/usermodel/HSSFCell;

    .line 315
    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 317
    .end local v1    # "oldCells":[Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .end local v2    # "newSize":I
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cells:[Lorg/apache/poi/hssf/usermodel/HSSFCell;

    aput-object p1, v1, v0

    .line 320
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RowRecord;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RowRecord;->getFirstCol()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 321
    :cond_2
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    int-to-short v2, v0

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/RowRecord;->setFirstCol(I)V

    .line 324
    :cond_3
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RowRecord;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RowRecord;->getLastCol()I

    move-result v1

    if-lt v0, v1, :cond_5

    .line 325
    :cond_4
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    add-int/lit8 v2, v0, 0x1

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/RowRecord;->setLastCol(I)V

    .line 327
    :cond_5
    return-void
.end method

.method private calculateNewFirstCell(I)I
    .locals 3
    .param p1, "firstcell"    # I

    .line 559
    add-int/lit8 v0, p1, 0x1

    .line 560
    .local v0, "cellIx":I
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->retrieveCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v1

    .line 562
    .local v1, "r":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    :goto_0
    if-nez v1, :cond_1

    .line 563
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cells:[Lorg/apache/poi/hssf/usermodel/HSSFCell;

    array-length v2, v2

    if-gt v0, v2, :cond_0

    .line 564
    const/4 v2, 0x0

    return v2

    .line 566
    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->retrieveCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v1

    goto :goto_0

    .line 568
    :cond_1
    return v0
.end method

.method private calculateNewLastCellPlusOne(I)I
    .locals 3
    .param p1, "lastcell"    # I

    .line 542
    add-int/lit8 v0, p1, -0x1

    .line 543
    .local v0, "cellIx":I
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->retrieveCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v1

    .line 545
    .local v1, "r":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    :goto_0
    if-nez v1, :cond_1

    .line 546
    if-gez v0, :cond_0

    .line 547
    const/4 v2, 0x0

    return v2

    .line 549
    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->retrieveCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v1

    goto :goto_0

    .line 551
    :cond_1
    add-int/lit8 v2, v0, 0x1

    return v2
.end method

.method private removeCell(Lorg/apache/poi/hssf/usermodel/HSSFCell;Z)V
    .locals 4
    .param p1, "cell"    # Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .param p2, "alsoRemoveRecords"    # Z

    .line 166
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getColumnIndex()I

    move-result v0

    .line 167
    .local v0, "column":I
    if-ltz v0, :cond_5

    .line 170
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cells:[Lorg/apache/poi/hssf/usermodel/HSSFCell;

    array-length v2, v1

    if-ge v0, v2, :cond_4

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_4

    .line 173
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->isPartOfArrayFormulaGroup()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->notifyArrayFormulaChanging()V

    .line 177
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cells:[Lorg/apache/poi/hssf/usermodel/HSSFCell;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 179
    if-eqz p2, :cond_1

    .line 180
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellValueRecord()Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    move-result-object v1

    .line 181
    .local v1, "cval":Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->removeValueRecord(ILorg/apache/poi/hssf/record/CellValueRecordInterface;)V

    .line 183
    .end local v1    # "cval":Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getColumnIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/RowRecord;->getLastCol()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 184
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RowRecord;->getLastCol()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->calculateNewLastCellPlusOne(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/RowRecord;->setLastCol(I)V

    .line 186
    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getColumnIndex()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/RowRecord;->getFirstCol()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 187
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RowRecord;->getFirstCol()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->calculateNewFirstCell(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/RowRecord;->setFirstCol(I)V

    .line 189
    :cond_3
    return-void

    .line 171
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Specified cell is not from this row"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Negative cell indexes not allowed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private retrieveCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .locals 2
    .param p1, "cellIndex"    # I

    .line 339
    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cells:[Lorg/apache/poi/hssf/usermodel/HSSFCell;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 342
    :cond_0
    aget-object v0, v0, p1

    return-object v0

    .line 340
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public cellIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            ">;"
        }
    .end annotation

    .line 614
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFRow$CellIterator;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFRow$CellIterator;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFRow;)V

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 669
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFRow;

    .line 671
    .local v0, "loc":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 673
    const/4 v1, 0x0

    return v1

    .line 675
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_1

    .line 677
    return v3

    .line 679
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 681
    const/4 v1, 0x1

    return v1

    .line 683
    :cond_2
    return v3
.end method

.method public createCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .locals 1
    .param p1, "column"    # I

    .line 124
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->createCell(II)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v0

    return-object v0
.end method

.method public createCell(II)Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .locals 8
    .param p1, "columnIndex"    # I
    .param p2, "type"    # I

    .line 143
    int-to-short v0, p1

    .line 144
    .local v0, "shortCellNum":S
    const/16 v1, 0x7fff

    if-le p1, v1, :cond_0

    .line 145
    const v1, 0xffff

    sub-int/2addr v1, p1

    int-to-short v0, v1

    .line 148
    :cond_0
    new-instance v7, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v4

    move-object v1, v7

    move v5, v0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/hssf/usermodel/HSSFCell;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/usermodel/HSSFSheet;ISI)V

    .line 149
    .local v1, "cell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->addCell(Lorg/apache/poi/hssf/usermodel/HSSFCell;)V

    .line 150
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v3

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellValueRecord()Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/hssf/model/InternalSheet;->addValueRecord(ILorg/apache/poi/hssf/record/CellValueRecordInterface;)V

    .line 151
    return-object v1
.end method

.method public createCell(S)Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .locals 1
    .param p1, "columnIndex"    # S

    .line 102
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->createCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v0

    return-object v0
.end method

.method public createCell(SI)Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .locals 1
    .param p1, "columnIndex"    # S
    .param p2, "type"    # I

    .line 108
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->createCell(II)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createCell(I)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 1
    .param p1, "x0"    # I

    .line 37
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->createCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createCell(II)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .line 37
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->createCell(II)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v0

    return-object v0
.end method

.method createCellFromRecord(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .locals 4
    .param p1, "cell"    # Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 211
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-direct {v0, v1, v2, p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/record/CellValueRecordInterface;)V

    .line 213
    .local v0, "hcell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->addCell(Lorg/apache/poi/hssf/usermodel/HSSFCell;)V

    .line 214
    invoke-interface {p1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v1

    .line 215
    .local v1, "colIx":I
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/RowRecord;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/record/RowRecord;->setFirstCol(I)V

    .line 217
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/RowRecord;->setLastCol(I)V

    goto :goto_0

    .line 219
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/RowRecord;->getFirstCol()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 220
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/record/RowRecord;->setFirstCol(I)V

    goto :goto_0

    .line 221
    :cond_1
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/RowRecord;->getLastCol()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 222
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/RowRecord;->setLastCol(I)V

    .line 228
    :cond_2
    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 689
    instance-of v0, p1, Lorg/apache/poi/hssf/usermodel/HSSFRow;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 691
    return v1

    .line 693
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFRow;

    .line 695
    .local v0, "loc":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 697
    const/4 v1, 0x1

    return v1

    .line 699
    :cond_1
    return v1
.end method

.method public getCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .locals 1
    .param p1, "cellnum"    # I

    .line 363
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getMissingCellPolicy()Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getCell(ILorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v0

    return-object v0
.end method

.method public getCell(ILorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .locals 4
    .param p1, "cellnum"    # I
    .param p2, "policy"    # Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    .line 376
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->retrieveCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v0

    .line 377
    .local v0, "cell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    sget-object v1, Lorg/apache/poi/hssf/usermodel/HSSFRow;->RETURN_NULL_AND_BLANK:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    if-ne p2, v1, :cond_0

    .line 378
    return-object v0

    .line 380
    :cond_0
    sget-object v1, Lorg/apache/poi/hssf/usermodel/HSSFRow;->RETURN_BLANK_AS_NULL:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    const/4 v2, 0x3

    if-ne p2, v1, :cond_3

    .line 381
    if-nez v0, :cond_1

    return-object v0

    .line 382
    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellType()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 383
    const/4 v1, 0x0

    return-object v1

    .line 385
    :cond_2
    return-object v0

    .line 387
    :cond_3
    sget-object v1, Lorg/apache/poi/hssf/usermodel/HSSFRow;->CREATE_NULL_AS_BLANK:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    if-ne p2, v1, :cond_5

    .line 388
    if-nez v0, :cond_4

    .line 389
    invoke-virtual {p0, p1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->createCell(II)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v1

    return-object v1

    .line 391
    :cond_4
    return-object v0

    .line 393
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal policy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getCell(S)Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .locals 2
    .param p1, "cellnum"    # S

    .line 349
    const v0, 0xffff

    and-int/2addr v0, p1

    .line 350
    .local v0, "ushortCellNum":I
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic getCell(I)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 1
    .param p1, "x0"    # I

    .line 37
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCell(ILorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    .line 37
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getCell(ILorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v0

    return-object v0
.end method

.method public getFirstCellNum()S
    .locals 1

    .line 401
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RowRecord;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    const/4 v0, -0x1

    return v0

    .line 404
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RowRecord;->getFirstCol()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getHeight()S
    .locals 2

    .line 505
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RowRecord;->getHeight()S

    move-result v0

    .line 509
    .local v0, "height":S
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalSheet;->getDefaultRowHeight()S

    move-result v0

    goto :goto_0

    .line 510
    :cond_0
    and-int/lit16 v1, v0, 0x7fff

    int-to-short v0, v1

    .line 512
    :goto_0
    return v0
.end method

.method public getHeightInPoints()F
    .locals 2

    .line 522
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getHeight()S

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41a00000    # 20.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getLastCellNum()S
    .locals 1

    .line 427
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RowRecord;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    const/4 v0, -0x1

    return v0

    .line 430
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RowRecord;->getLastCol()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getOutlineLevel()I
    .locals 1

    .line 273
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RowRecord;->getOutlineLevel()S

    move-result v0

    return v0
.end method

.method public getPhysicalNumberOfCells()I
    .locals 4

    .line 442
    const/4 v0, 0x0

    .line 443
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cells:[Lorg/apache/poi/hssf/usermodel/HSSFCell;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 445
    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 443
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 447
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public getRowNum()I
    .locals 1

    .line 254
    iget v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->rowNum:I

    return v0
.end method

.method protected getRowRecord()Lorg/apache/poi/hssf/record/RowRecord;
    .locals 1

    .line 534
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    return-object v0
.end method

.method public getRowStyle()Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    .locals 4

    .line 585
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->isFormatted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 586
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RowRecord;->getXFIndex()S

    move-result v0

    .line 587
    .local v0, "styleIndex":S
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getExFormatAt(I)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v1

    .line 588
    .local v1, "xf":Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {v2, v0, v1, v3}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;-><init>(SLorg/apache/poi/hssf/record/ExtendedFormatRecord;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    return-object v2
.end method

.method public bridge synthetic getRowStyle()Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowStyle()Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    move-result-object v0

    return-object v0
.end method

.method public getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .locals 1

    .line 264
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    return-object v0
.end method

.method public bridge synthetic getSheet()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public getZeroHeight()Z
    .locals 1

    .line 480
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RowRecord;->getZeroHeight()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 704
    nop

    .line 705
    const/16 v0, 0x2a

    return v0
.end method

.method public isFormatted()Z
    .locals 1

    .line 577
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RowRecord;->getFormatted()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            ">;"
        }
    .end annotation

    .line 621
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cellIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public moveCell(Lorg/apache/poi/hssf/usermodel/HSSFCell;S)V
    .locals 3
    .param p1, "cell"    # Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .param p2, "newColumn"    # S

    .line 284
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cells:[Lorg/apache/poi/hssf/usermodel/HSSFCell;

    array-length v1, v0

    if-le v1, p2, :cond_1

    aget-object v0, v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    .line 285
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Asked to move cell to column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " but there\'s already a cell there"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cells:[Lorg/apache/poi/hssf/usermodel/HSSFCell;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getColumnIndex()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 295
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->removeCell(Lorg/apache/poi/hssf/usermodel/HSSFCell;Z)V

    .line 296
    invoke-virtual {p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->updateCellNum(S)V

    .line 297
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->addCell(Lorg/apache/poi/hssf/usermodel/HSSFCell;)V

    .line 298
    return-void

    .line 290
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Asked to move a cell, but it didn\'t belong to our row"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected removeAllCells()V
    .locals 3

    .line 196
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cells:[Lorg/apache/poi/hssf/usermodel/HSSFCell;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 197
    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    .line 198
    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->removeCell(Lorg/apache/poi/hssf/usermodel/HSSFCell;Z)V

    .line 196
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    .end local v0    # "i":I
    :cond_1
    sget v0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->INITIAL_CAPACITY:I

    new-array v0, v0, [Lorg/apache/poi/hssf/usermodel/HSSFCell;

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cells:[Lorg/apache/poi/hssf/usermodel/HSSFCell;

    .line 202
    return-void
.end method

.method public removeCell(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 2
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 159
    if-eqz p1, :cond_0

    .line 162
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->removeCell(Lorg/apache/poi/hssf/usermodel/HSSFCell;Z)V

    .line 163
    return-void

    .line 160
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cell must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHeight(S)V
    .locals 2
    .param p1, "height"    # S

    .line 458
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 459
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    const/16 v1, -0x7f01

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/RowRecord;->setHeight(S)V

    .line 460
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/RowRecord;->setBadFontHeight(Z)V

    goto :goto_0

    .line 462
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/RowRecord;->setBadFontHeight(Z)V

    .line 463
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/RowRecord;->setHeight(S)V

    .line 465
    :goto_0
    return-void
.end method

.method public setHeightInPoints(F)V
    .locals 2
    .param p1, "height"    # F

    .line 490
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 491
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    const/16 v1, -0x7f01

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/RowRecord;->setHeight(S)V

    goto :goto_0

    .line 493
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/RowRecord;->setBadFontHeight(Z)V

    .line 494
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float v1, v1, p1

    float-to-int v1, v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/RowRecord;->setHeight(S)V

    .line 496
    :goto_0
    return-void
.end method

.method public setRowNum(I)V
    .locals 4
    .param p1, "rowIndex"    # I

    .line 237
    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v0

    .line 238
    .local v0, "maxrow":I
    if-ltz p1, :cond_1

    if-gt p1, v0, :cond_1

    .line 242
    iput p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->rowNum:I

    .line 243
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    if-eqz v1, :cond_0

    .line 244
    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/RowRecord;->setRowNumber(I)V

    .line 246
    :cond_0
    return-void

    .line 239
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid row number ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") outside allowable range (0.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setRowStyle(Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;)V
    .locals 2
    .param p1, "style"    # Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    .line 594
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/RowRecord;->setFormatted(Z)V

    .line 595
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getIndex()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/RowRecord;->setXFIndex(S)V

    .line 596
    return-void
.end method

.method public setRowStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V
    .locals 1
    .param p1, "style"    # Lorg/apache/poi/ss/usermodel/CellStyle;

    .line 601
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->setRowStyle(Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;)V

    .line 602
    return-void
.end method

.method public setZeroHeight(Z)V
    .locals 1
    .param p1, "zHeight"    # Z

    .line 472
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/RowRecord;->setZeroHeight(Z)V

    .line 473
    return-void
.end method
