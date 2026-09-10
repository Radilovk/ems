.class public Lorg/apache/poi/ss/util/cellwalk/CellWalk;
.super Ljava/lang/Object;
.source "CellWalk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/util/cellwalk/CellWalk$1;,
        Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;
    }
.end annotation


# instance fields
.field private range:Lorg/apache/poi/ss/util/CellRangeAddress;

.field private sheet:Lorg/apache/poi/ss/usermodel/Sheet;

.field private traverseEmptyCells:Z


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 1
    .param p1, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;
    .param p2, "range"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    .line 39
    iput-object p2, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk;->range:Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk;->traverseEmptyCells:Z

    .line 41
    return-void
.end method

.method private isEmpty(Lorg/apache/poi/ss/usermodel/Cell;)Z
    .locals 2
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .prologue
    .line 103
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isTraverseEmptyCells()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk;->traverseEmptyCells:Z

    return v0
.end method

.method public setTraverseEmptyCells(Z)V
    .locals 0
    .param p1, "traverseEmptyCells"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk;->traverseEmptyCells:Z

    .line 61
    return-void
.end method

.method public traverse(Lorg/apache/poi/ss/util/cellwalk/CellHandler;)V
    .locals 10
    .param p1, "handler"    # Lorg/apache/poi/ss/util/cellwalk/CellHandler;

    .prologue
    .line 69
    iget-object v8, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk;->range:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v8}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v4

    .line 70
    .local v4, "firstRow":I
    iget-object v8, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk;->range:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v8}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v6

    .line 71
    .local v6, "lastRow":I
    iget-object v8, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk;->range:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v8}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v3

    .line 72
    .local v3, "firstColumn":I
    iget-object v8, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk;->range:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v8}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v5

    .line 73
    .local v5, "lastColumn":I
    sub-int v8, v5, v3

    add-int/lit8 v7, v8, 0x1

    .line 74
    .local v7, "width":I
    new-instance v0, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;

    const/4 v8, 0x0

    invoke-direct {v0, v8}, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;-><init>(Lorg/apache/poi/ss/util/cellwalk/CellWalk$1;)V

    .line 75
    .local v0, "ctx":Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;
    const/4 v2, 0x0

    .line 76
    .local v2, "currentRow":Lorg/apache/poi/ss/usermodel/Row;
    const/4 v1, 0x0

    .line 78
    .local v1, "currentCell":Lorg/apache/poi/ss/usermodel/Cell;
    iput v4, v0, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->rowNumber:I

    :goto_0
    iget v8, v0, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->rowNumber:I

    if-gt v8, v6, :cond_5

    .line 79
    iget-object v8, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    iget v9, v0, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->rowNumber:I

    invoke-interface {v8, v9}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v2

    .line 80
    if-nez v2, :cond_1

    .line 78
    :cond_0
    iget v8, v0, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->rowNumber:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v0, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->rowNumber:I

    goto :goto_0

    .line 83
    :cond_1
    iput v3, v0, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->colNumber:I

    :goto_1
    iget v8, v0, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->colNumber:I

    if-gt v8, v5, :cond_0

    .line 84
    iget v8, v0, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->colNumber:I

    invoke-interface {v2, v8}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v1

    .line 86
    if-nez v1, :cond_3

    .line 83
    :cond_2
    :goto_2
    iget v8, v0, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->colNumber:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v0, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->colNumber:I

    goto :goto_1

    .line 89
    :cond_3
    invoke-direct {p0, v1}, Lorg/apache/poi/ss/util/cellwalk/CellWalk;->isEmpty(Lorg/apache/poi/ss/usermodel/Cell;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-boolean v8, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk;->traverseEmptyCells:Z

    if-eqz v8, :cond_2

    .line 93
    :cond_4
    iget v8, v0, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->rowNumber:I

    sub-int/2addr v8, v4

    mul-int/2addr v8, v7

    iget v9, v0, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->colNumber:I

    sub-int/2addr v9, v3

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v8, v9

    int-to-long v8, v8

    iput-wide v8, v0, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->ordinalNumber:J

    .line 97
    invoke-interface {p1, v1, v0}, Lorg/apache/poi/ss/util/cellwalk/CellHandler;->onCell(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/util/cellwalk/CellWalkContext;)V

    goto :goto_2

    .line 100
    :cond_5
    return-void
.end method
