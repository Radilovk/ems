.class public Lorg/apache/poi/ss/util/AreaReference;
.super Ljava/lang/Object;
.source "AreaReference.java"


# static fields
.field private static final CELL_DELIMITER:C = ':'

.field private static final SHEET_NAME_DELIMITER:C = '!'

.field private static final SPECIAL_NAME_DELIMITER:C = '\''


# instance fields
.field private final _firstCell:Lorg/apache/poi/ss/util/CellReference;

.field private final _isSingleCell:Z

.field private final _lastCell:Lorg/apache/poi/ss/util/CellReference;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 11
    .param p1, "reference"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Lorg/apache/poi/ss/util/AreaReference;->isContiguous(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 51
    invoke-static {p1}, Lorg/apache/poi/ss/util/AreaReference;->separateAreaRefs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "parts":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    .line 53
    .local v2, "part0":Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 56
    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    .line 58
    iput-object v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    .line 59
    iput-boolean v4, p0, Lorg/apache/poi/ss/util/AreaReference;->_isSingleCell:Z

    .line 60
    return-void

    .line 62
    :cond_0
    array-length v3, v0

    const/4 v5, 0x2

    const-string v6, "\'"

    const-string v7, "Bad area ref \'"

    if-ne v3, v5, :cond_3

    .line 66
    aget-object v3, v0, v4

    .line 67
    .local v3, "part1":Ljava/lang/String;
    invoke-direct {p0, v2}, Lorg/apache/poi/ss/util/AreaReference;->isPlainColumn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 68
    invoke-direct {p0, v3}, Lorg/apache/poi/ss/util/AreaReference;->isPlainColumn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 75
    invoke-static {v2}, Lorg/apache/poi/ss/util/CellReference;->isPartAbsolute(Ljava/lang/String;)Z

    move-result v5

    .line 76
    .local v5, "firstIsAbs":Z
    invoke-static {v3}, Lorg/apache/poi/ss/util/CellReference;->isPartAbsolute(Ljava/lang/String;)Z

    move-result v6

    .line 78
    .local v6, "lastIsAbs":Z
    invoke-static {v2}, Lorg/apache/poi/ss/util/CellReference;->convertColStringToIndex(Ljava/lang/String;)I

    move-result v7

    .line 79
    .local v7, "col0":I
    invoke-static {v3}, Lorg/apache/poi/ss/util/CellReference;->convertColStringToIndex(Ljava/lang/String;)I

    move-result v8

    .line 81
    .local v8, "col1":I
    new-instance v9, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v9, v1, v7, v4, v5}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    iput-object v9, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    .line 82
    new-instance v9, Lorg/apache/poi/ss/util/CellReference;

    const v10, 0xffff

    invoke-direct {v9, v10, v8, v4, v6}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    iput-object v9, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    .line 83
    iput-boolean v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_isSingleCell:Z

    .line 85
    .end local v5    # "firstIsAbs":Z
    .end local v6    # "lastIsAbs":Z
    .end local v7    # "col0":I
    .end local v8    # "col1":I
    goto :goto_0

    .line 69
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_2
    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    .line 87
    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v1, v3}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    .line 88
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_isSingleCell:Z

    .line 90
    :goto_0
    return-void

    .line 63
    .end local v3    # "part1":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    .end local v0    # "parts":[Ljava/lang/String;
    .end local v2    # "part0":Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "References passed to the AreaReference must be contiguous, use generateContiguous(ref) if you have non-contiguous references"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;)V
    .locals 12
    .param p1, "topLeft"    # Lorg/apache/poi/ss/util/CellReference;
    .param p2, "botRight"    # Lorg/apache/poi/ss/util/CellReference;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 110
    .local v0, "swapRows":Z
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v1

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v4

    if-le v1, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    move v1, v2

    .line 111
    .local v1, "swapCols":Z
    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_2

    .line 145
    :cond_2
    iput-object p1, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    .line 146
    iput-object p2, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    goto :goto_5

    .line 120
    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 121
    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v2

    .line 122
    .local v2, "firstRow":I
    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->isRowAbsolute()Z

    move-result v4

    .line 123
    .local v4, "firstRowAbs":Z
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v5

    .line 124
    .local v5, "lastRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->isRowAbsolute()Z

    move-result v6

    .local v6, "lastRowAbs":Z
    goto :goto_3

    .line 126
    .end local v2    # "firstRow":I
    .end local v4    # "firstRowAbs":Z
    .end local v5    # "lastRow":I
    .end local v6    # "lastRowAbs":Z
    :cond_4
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v2

    .line 127
    .restart local v2    # "firstRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->isRowAbsolute()Z

    move-result v4

    .line 128
    .restart local v4    # "firstRowAbs":Z
    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v5

    .line 129
    .restart local v5    # "lastRow":I
    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->isRowAbsolute()Z

    move-result v6

    .line 131
    .restart local v6    # "lastRowAbs":Z
    :goto_3
    if-eqz v1, :cond_5

    .line 132
    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v7

    .line 133
    .local v7, "firstColumn":I
    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->isColAbsolute()Z

    move-result v8

    .line 134
    .local v8, "firstColAbs":Z
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v9

    .line 135
    .local v9, "lastColumn":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->isColAbsolute()Z

    move-result v10

    .local v10, "lastColAbs":Z
    goto :goto_4

    .line 137
    .end local v7    # "firstColumn":I
    .end local v8    # "firstColAbs":Z
    .end local v9    # "lastColumn":I
    .end local v10    # "lastColAbs":Z
    :cond_5
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v7

    .line 138
    .restart local v7    # "firstColumn":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->isColAbsolute()Z

    move-result v8

    .line 139
    .restart local v8    # "firstColAbs":Z
    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v9

    .line 140
    .restart local v9    # "lastColumn":I
    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->isColAbsolute()Z

    move-result v10

    .line 142
    .restart local v10    # "lastColAbs":Z
    :goto_4
    new-instance v11, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v11, v2, v7, v4, v8}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    iput-object v11, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    .line 143
    new-instance v11, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v11, v5, v9, v6, v10}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    iput-object v11, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    .line 144
    .end local v2    # "firstRow":I
    .end local v4    # "firstRowAbs":Z
    .end local v5    # "lastRow":I
    .end local v6    # "lastRowAbs":Z
    .end local v7    # "firstColumn":I
    .end local v8    # "firstColAbs":Z
    .end local v9    # "lastColumn":I
    .end local v10    # "lastColAbs":Z
    nop

    .line 148
    :goto_5
    iput-boolean v3, p0, Lorg/apache/poi/ss/util/AreaReference;->_isSingleCell:Z

    .line 149
    return-void
.end method

.method public static generateContiguous(Ljava/lang/String;)[Lorg/apache/poi/ss/util/AreaReference;
    .locals 4
    .param p0, "reference"    # Ljava/lang/String;

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v0, "refs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/util/AreaReference;>;"
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .local v1, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    new-instance v2, Lorg/apache/poi/ss/util/AreaReference;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 210
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/apache/poi/ss/util/AreaReference;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/poi/ss/util/AreaReference;

    return-object v2
.end method

.method public static getWholeColumn(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/AreaReference;
    .locals 3
    .param p0, "start"    # Ljava/lang/String;
    .param p1, "end"    # Ljava/lang/String;

    .line 177
    new-instance v0, Lorg/apache/poi/ss/util/AreaReference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "$1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "$65536"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getWholeRow(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/AreaReference;
    .locals 3
    .param p0, "start"    # Ljava/lang/String;
    .param p1, "end"    # Ljava/lang/String;

    .line 173
    new-instance v0, Lorg/apache/poi/ss/util/AreaReference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$A"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":$IV"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static isContiguous(Ljava/lang/String;)Z
    .locals 3
    .param p0, "reference"    # Ljava/lang/String;

    .line 160
    const/16 v0, 0x21

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 161
    .local v0, "sheetRefEnd":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 162
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 166
    :cond_0
    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 167
    const/4 v1, 0x1

    return v1

    .line 169
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private isPlainColumn(Ljava/lang/String;)Z
    .locals 4
    .param p1, "refPart"    # Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 95
    .local v2, "ch":I
    const/16 v3, 0x24

    if-ne v2, v3, :cond_0

    if-nez v0, :cond_0

    .line 96
    goto :goto_1

    .line 98
    :cond_0
    const/16 v3, 0x41

    if-lt v2, v3, :cond_2

    const/16 v3, 0x5a

    if-le v2, v3, :cond_1

    goto :goto_2

    .line 93
    .end local v2    # "ch":I
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 99
    .restart local v2    # "ch":I
    :cond_2
    :goto_2
    const/4 v1, 0x0

    return v1

    .line 102
    .end local v0    # "i":I
    .end local v2    # "ch":I
    :cond_3
    return v1
.end method

.method public static isWholeColumnReference(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;)Z
    .locals 2
    .param p0, "topLeft"    # Lorg/apache/poi/ss/util/CellReference;
    .param p1, "botRight"    # Lorg/apache/poi/ss/util/CellReference;

    .line 188
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellReference;->isRowAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v0

    sget-object v1, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v1}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->isRowAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    const/4 v0, 0x1

    return v0

    .line 192
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static separateAreaRefs(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .param p0, "reference"    # Ljava/lang/String;

    .line 323
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 324
    .local v0, "len":I
    const/4 v1, -0x1

    .line 325
    .local v1, "delimiterPos":I
    const/4 v2, 0x0

    .line 326
    .local v2, "insideDelimitedName":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const-string v4, "\'"

    const/4 v5, 0x1

    if-ge v3, v0, :cond_7

    .line 327
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x27

    if-eq v6, v7, :cond_3

    const/16 v7, 0x3a

    if-eq v6, v7, :cond_0

    goto :goto_1

    .line 329
    :cond_0
    if-nez v2, :cond_2

    .line 330
    if-gez v1, :cond_1

    .line 334
    move v1, v3

    goto :goto_1

    .line 331
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "More than one cell delimiter \':\' appears in area reference \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 337
    :cond_2
    :goto_1
    goto :goto_2

    .line 341
    :cond_3
    if-nez v2, :cond_4

    .line 342
    const/4 v2, 0x1

    .line 343
    goto :goto_2

    .line 346
    :cond_4
    add-int/lit8 v6, v0, -0x1

    if-ge v3, v6, :cond_6

    .line 352
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_5

    .line 354
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 357
    :cond_5
    const/4 v2, 0x0

    .line 326
    :goto_2
    add-int/2addr v3, v5

    goto :goto_0

    .line 349
    :cond_6
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Area reference \'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\' ends with special name delimiter \'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 360
    .end local v3    # "i":I
    :cond_7
    const/4 v3, 0x0

    if-gez v1, :cond_8

    .line 361
    new-array v4, v5, [Ljava/lang/String;

    aput-object p0, v4, v3

    return-object v4

    .line 364
    :cond_8
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 365
    .local v6, "partA":Ljava/lang/String;
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 366
    .local v7, "partB":Ljava/lang/String;
    const/16 v8, 0x21

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-gez v9, :cond_a

    .line 374
    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 375
    .local v4, "plingPos":I
    const/4 v8, 0x2

    if-gez v4, :cond_9

    .line 376
    new-array v8, v8, [Ljava/lang/String;

    aput-object v6, v8, v3

    aput-object v7, v8, v5

    return-object v8

    .line 379
    :cond_9
    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v6, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 381
    .local v9, "sheetName":Ljava/lang/String;
    new-array v8, v8, [Ljava/lang/String;

    aput-object v6, v8, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v5

    return-object v8

    .line 370
    .end local v4    # "plingPos":I
    .end local v9    # "sheetName":Ljava/lang/String;
    :cond_a
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected ! in second cell reference of \'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public formatAsString()Ljava/lang/String;
    .locals 2

    .line 279
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/AreaReference;->isWholeColumnReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/ss/util/CellReference;->convertNumToColString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/ss/util/CellReference;->convertNumToColString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 286
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 287
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    iget-boolean v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_isSingleCell:Z

    if-nez v1, :cond_2

    .line 289
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 290
    iget-object v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getSheetName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 291
    iget-object v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 294
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v1, v0}, Lorg/apache/poi/ss/util/CellReference;->appendCellReference(Ljava/lang/StringBuffer;)V

    .line 297
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAllReferencedCells()[Lorg/apache/poi/ss/util/CellReference;
    .locals 15

    .line 243
    iget-boolean v0, p0, Lorg/apache/poi/ss/util/AreaReference;->_isSingleCell:Z

    if-eqz v0, :cond_0

    .line 244
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/poi/ss/util/CellReference;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    aput-object v2, v0, v1

    return-object v0

    .line 248
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 249
    .local v0, "minRow":I
    iget-object v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 250
    .local v1, "maxRow":I
    iget-object v2, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 251
    .local v2, "minCol":I
    iget-object v3, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v3

    iget-object v4, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 252
    .local v3, "maxCol":I
    iget-object v4, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellReference;->getSheetName()Ljava/lang/String;

    move-result-object v4

    .line 254
    .local v4, "sheetName":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v5

    .line 255
    .local v11, "refs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/util/CellReference;>;"
    move v5, v0

    move v12, v5

    .local v12, "row":I
    :goto_0
    if-gt v12, v1, :cond_2

    .line 256
    move v5, v2

    move v13, v5

    .local v13, "col":I
    :goto_1
    if-gt v13, v3, :cond_1

    .line 257
    new-instance v14, Lorg/apache/poi/ss/util/CellReference;

    iget-object v5, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellReference;->isRowAbsolute()Z

    move-result v9

    iget-object v5, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellReference;->isColAbsolute()Z

    move-result v10

    move-object v5, v14

    move-object v6, v4

    move v7, v12

    move v8, v13

    invoke-direct/range {v5 .. v10}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;IIZZ)V

    .line 258
    .local v5, "ref":Lorg/apache/poi/ss/util/CellReference;
    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    .end local v5    # "ref":Lorg/apache/poi/ss/util/CellReference;
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 255
    .end local v13    # "col":I
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 261
    .end local v12    # "row":I
    :cond_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lorg/apache/poi/ss/util/CellReference;

    invoke-interface {v11, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/apache/poi/ss/util/CellReference;

    return-object v5
.end method

.method public getFirstCell()Lorg/apache/poi/ss/util/CellReference;
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    return-object v0
.end method

.method public getLastCell()Lorg/apache/poi/ss/util/CellReference;
    .locals 1

    .line 236
    iget-object v0, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    return-object v0
.end method

.method public isSingleCell()Z
    .locals 1

    .line 217
    iget-boolean v0, p0, Lorg/apache/poi/ss/util/AreaReference;->_isSingleCell:Z

    return v0
.end method

.method public isWholeColumnReference()Z
    .locals 2

    .line 195
    iget-object v0, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    iget-object v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/AreaReference;->isWholeColumnReference(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 301
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 302
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 303
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/AreaReference;->formatAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 304
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 305
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
