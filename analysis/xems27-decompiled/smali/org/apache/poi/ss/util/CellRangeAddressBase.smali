.class public abstract Lorg/apache/poi/ss/util/CellRangeAddressBase;
.super Ljava/lang/Object;
.source "CellRangeAddressBase.java"


# instance fields
.field private _firstCol:I

.field private _firstRow:I

.field private _lastCol:I

.field private _lastRow:I


# direct methods
.method protected constructor <init>(IIII)V
    .locals 0
    .param p1, "firstRow"    # I
    .param p2, "lastRow"    # I
    .param p3, "firstCol"    # I
    .param p4, "lastCol"    # I

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_firstRow:I

    .line 39
    iput p2, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_lastRow:I

    .line 40
    iput p3, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_firstCol:I

    .line 41
    iput p4, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_lastCol:I

    .line 42
    return-void
.end method

.method private static validateColumn(ILorg/apache/poi/ss/SpreadsheetVersion;)V
    .locals 4
    .param p0, "column"    # I
    .param p1, "ssVersion"    # Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 71
    invoke-virtual {p1}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnIndex()I

    move-result v0

    .line 72
    .local v0, "maxcol":I
    if-gt p0, v0, :cond_1

    .line 73
    if-ltz p0, :cond_0

    .line 74
    return-void

    .line 73
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Minimum column number is 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Maximum column number is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static validateRow(ILorg/apache/poi/ss/SpreadsheetVersion;)V
    .locals 4
    .param p0, "row"    # I
    .param p1, "ssVersion"    # Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 61
    invoke-virtual {p1}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v0

    .line 62
    .local v0, "maxrow":I
    if-gt p0, v0, :cond_1

    .line 63
    if-ltz p0, :cond_0

    .line 64
    return-void

    .line 63
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Minumum row number is 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Maximum row number is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final getFirstColumn()I
    .locals 1

    .line 92
    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_firstCol:I

    return v0
.end method

.method public final getFirstRow()I
    .locals 1

    .line 99
    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_firstRow:I

    return v0
.end method

.method public final getLastColumn()I
    .locals 1

    .line 106
    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_lastCol:I

    return v0
.end method

.method public final getLastRow()I
    .locals 1

    .line 113
    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_lastRow:I

    return v0
.end method

.method public getNumberOfCells()I
    .locals 3

    .line 160
    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_lastRow:I

    iget v1, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_firstRow:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_lastCol:I

    iget v2, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_firstCol:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    mul-int v0, v0, v1

    return v0
.end method

.method public final isFullColumnRange()Z
    .locals 2

    .line 79
    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_firstRow:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_lastRow:I

    sget-object v1, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v1}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_firstRow:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_lastRow:I

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isFullRowRange()Z
    .locals 2

    .line 84
    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_firstCol:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_lastCol:I

    sget-object v1, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v1}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnIndex()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_firstCol:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_lastCol:I

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInRange(II)Z
    .locals 1
    .param p1, "rowInd"    # I
    .param p2, "colInd"    # I

    .line 125
    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_firstRow:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_lastRow:I

    if-gt p1, v0, :cond_0

    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_firstCol:I

    if-gt v0, p2, :cond_0

    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_lastCol:I

    if-gt p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setFirstColumn(I)V
    .locals 0
    .param p1, "firstCol"    # I

    .line 133
    iput p1, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_firstCol:I

    .line 134
    return-void
.end method

.method public final setFirstRow(I)V
    .locals 0
    .param p1, "firstRow"    # I

    .line 140
    iput p1, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_firstRow:I

    .line 141
    return-void
.end method

.method public final setLastColumn(I)V
    .locals 0
    .param p1, "lastCol"    # I

    .line 147
    iput p1, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_lastCol:I

    .line 148
    return-void
.end method

.method public final setLastRow(I)V
    .locals 0
    .param p1, "lastRow"    # I

    .line 154
    iput p1, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_lastRow:I

    .line 155
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 165
    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    iget v1, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_firstRow:I

    iget v2, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_firstCol:I

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    .line 166
    .local v0, "crA":Lorg/apache/poi/ss/util/CellReference;
    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    iget v2, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_lastRow:I

    iget v3, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_lastCol:I

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    .line 167
    .local v1, "crB":Lorg/apache/poi/ss/util/CellReference;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public validate(Lorg/apache/poi/ss/SpreadsheetVersion;)V
    .locals 1
    .param p1, "ssVersion"    # Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 51
    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_firstRow:I

    invoke-static {v0, p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->validateRow(ILorg/apache/poi/ss/SpreadsheetVersion;)V

    .line 52
    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_lastRow:I

    invoke-static {v0, p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->validateRow(ILorg/apache/poi/ss/SpreadsheetVersion;)V

    .line 53
    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_firstCol:I

    invoke-static {v0, p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->validateColumn(ILorg/apache/poi/ss/SpreadsheetVersion;)V

    .line 54
    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_lastCol:I

    invoke-static {v0, p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->validateColumn(ILorg/apache/poi/ss/SpreadsheetVersion;)V

    .line 55
    return-void
.end method
