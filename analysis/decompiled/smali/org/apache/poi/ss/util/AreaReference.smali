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

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Lorg/apache/poi/ss/util/AreaReference;->isContiguous(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 46
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "References passed to the AreaReference must be contiguous, use generateContiguous(ref) if you have non-contiguous references"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 51
    :cond_0
    invoke-static {p1}, Lorg/apache/poi/ss/util/AreaReference;->separateAreaRefs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 52
    .local v6, "parts":[Ljava/lang/String;
    aget-object v4, v6, v10

    .line 53
    .local v4, "part0":Ljava/lang/String;
    array-length v7, v6

    if-ne v7, v9, :cond_1

    .line 56
    new-instance v7, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v7, v4}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    .line 58
    iget-object v7, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    iput-object v7, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    .line 59
    iput-boolean v9, p0, Lorg/apache/poi/ss/util/AreaReference;->_isSingleCell:Z

    .line 90
    :goto_0
    return-void

    .line 62
    :cond_1
    array-length v7, v6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2

    .line 63
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad area ref \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 66
    :cond_2
    aget-object v5, v6, v9

    .line 67
    .local v5, "part1":Ljava/lang/String;
    invoke-direct {p0, v4}, Lorg/apache/poi/ss/util/AreaReference;->isPlainColumn(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 68
    invoke-direct {p0, v5}, Lorg/apache/poi/ss/util/AreaReference;->isPlainColumn(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 69
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad area ref \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 75
    :cond_3
    invoke-static {v4}, Lorg/apache/poi/ss/util/CellReference;->isPartAbsolute(Ljava/lang/String;)Z

    move-result v2

    .line 76
    .local v2, "firstIsAbs":Z
    invoke-static {v5}, Lorg/apache/poi/ss/util/CellReference;->isPartAbsolute(Ljava/lang/String;)Z

    move-result v3

    .line 78
    .local v3, "lastIsAbs":Z
    invoke-static {v4}, Lorg/apache/poi/ss/util/CellReference;->convertColStringToIndex(Ljava/lang/String;)I

    move-result v0

    .line 79
    .local v0, "col0":I
    invoke-static {v5}, Lorg/apache/poi/ss/util/CellReference;->convertColStringToIndex(Ljava/lang/String;)I

    move-result v1

    .line 81
    .local v1, "col1":I
    new-instance v7, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v7, v10, v0, v9, v2}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    iput-object v7, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    .line 82
    new-instance v7, Lorg/apache/poi/ss/util/CellReference;

    const v8, 0xffff

    invoke-direct {v7, v8, v1, v9, v3}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    iput-object v7, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    .line 83
    iput-boolean v10, p0, Lorg/apache/poi/ss/util/AreaReference;->_isSingleCell:Z

    goto :goto_0

    .line 86
    .end local v0    # "col0":I
    .end local v1    # "col1":I
    .end local v2    # "firstIsAbs":Z
    .end local v3    # "lastIsAbs":Z
    :cond_4
    new-instance v7, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v7, v4}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    .line 87
    new-instance v7, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v7, v5}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    .line 88
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lorg/apache/poi/ss/util/AreaReference;->_isSingleCell:Z

    goto/16 :goto_0
.end method

.method public constructor <init>(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;)V
    .locals 12
    .param p1, "topLeft"    # Lorg/apache/poi/ss/util/CellReference;
    .param p2, "botRight"    # Lorg/apache/poi/ss/util/CellReference;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v10

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v11

    if-le v10, v11, :cond_1

    const/4 v9, 0x1

    .line 110
    .local v9, "swapRows":Z
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v10

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v11

    if-le v10, v11, :cond_2

    const/4 v8, 0x1

    .line 111
    .local v8, "swapCols":Z
    :goto_1
    if-nez v9, :cond_0

    if-eqz v8, :cond_5

    .line 120
    :cond_0
    if-eqz v9, :cond_3

    .line 121
    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v2

    .line 122
    .local v2, "firstRow":I
    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->isRowAbsolute()Z

    move-result v3

    .line 123
    .local v3, "firstRowAbs":Z
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v6

    .line 124
    .local v6, "lastRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->isRowAbsolute()Z

    move-result v7

    .line 131
    .local v7, "lastRowAbs":Z
    :goto_2
    if-eqz v8, :cond_4

    .line 132
    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v1

    .line 133
    .local v1, "firstColumn":I
    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->isColAbsolute()Z

    move-result v0

    .line 134
    .local v0, "firstColAbs":Z
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v5

    .line 135
    .local v5, "lastColumn":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->isColAbsolute()Z

    move-result v4

    .line 142
    .local v4, "lastColAbs":Z
    :goto_3
    new-instance v10, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v10, v2, v1, v3, v0}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    iput-object v10, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    .line 143
    new-instance v10, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v10, v6, v5, v7, v4}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    iput-object v10, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    .line 148
    .end local v0    # "firstColAbs":Z
    .end local v1    # "firstColumn":I
    .end local v2    # "firstRow":I
    .end local v3    # "firstRowAbs":Z
    .end local v4    # "lastColAbs":Z
    .end local v5    # "lastColumn":I
    .end local v6    # "lastRow":I
    .end local v7    # "lastRowAbs":Z
    :goto_4
    const/4 v10, 0x0

    iput-boolean v10, p0, Lorg/apache/poi/ss/util/AreaReference;->_isSingleCell:Z

    .line 149
    return-void

    .line 109
    .end local v8    # "swapCols":Z
    .end local v9    # "swapRows":Z
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 110
    .restart local v9    # "swapRows":Z
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 126
    .restart local v8    # "swapCols":Z
    :cond_3
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v2

    .line 127
    .restart local v2    # "firstRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->isRowAbsolute()Z

    move-result v3

    .line 128
    .restart local v3    # "firstRowAbs":Z
    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v6

    .line 129
    .restart local v6    # "lastRow":I
    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->isRowAbsolute()Z

    move-result v7

    .restart local v7    # "lastRowAbs":Z
    goto :goto_2

    .line 137
    :cond_4
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v1

    .line 138
    .restart local v1    # "firstColumn":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->isColAbsolute()Z

    move-result v0

    .line 139
    .restart local v0    # "firstColAbs":Z
    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v5

    .line 140
    .restart local v5    # "lastColumn":I
    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->isColAbsolute()Z

    move-result v4

    .restart local v4    # "lastColAbs":Z
    goto :goto_3

    .line 145
    .end local v0    # "firstColAbs":Z
    .end local v1    # "firstColumn":I
    .end local v2    # "firstRow":I
    .end local v3    # "firstRowAbs":Z
    .end local v4    # "lastColAbs":Z
    .end local v5    # "lastColumn":I
    .end local v6    # "lastRow":I
    .end local v7    # "lastRowAbs":Z
    :cond_5
    iput-object p1, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    .line 146
    iput-object p2, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    goto :goto_4
.end method

.method public static generateContiguous(Ljava/lang/String;)[Lorg/apache/poi/ss/util/AreaReference;
    .locals 4
    .param p0, "reference"    # Ljava/lang/String;

    .prologue
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

    .prologue
    .line 177
    new-instance v0, Lorg/apache/poi/ss/util/AreaReference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "$1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "$65536"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getWholeRow(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/AreaReference;
    .locals 3
    .param p0, "start"    # Ljava/lang/String;
    .param p1, "end"    # Ljava/lang/String;

    .prologue
    .line 173
    new-instance v0, Lorg/apache/poi/ss/util/AreaReference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$A"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":$IV"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static isContiguous(Ljava/lang/String;)Z
    .locals 3
    .param p0, "reference"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 160
    const/16 v1, 0x21

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 161
    .local v0, "sheetRefEnd":I
    if-eq v0, v2, :cond_0

    .line 162
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 166
    :cond_0
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 167
    const/4 v1, 0x1

    .line 169
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isPlainColumn(Ljava/lang/String;)Z
    .locals 3
    .param p1, "refPart"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 94
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 95
    .local v0, "ch":I
    const/16 v2, 0x24

    if-ne v0, v2, :cond_1

    if-nez v1, :cond_1

    .line 93
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 98
    :cond_1
    const/16 v2, 0x41

    if-lt v0, v2, :cond_2

    const/16 v2, 0x5a

    if-le v0, v2, :cond_0

    .line 99
    :cond_2
    const/4 v2, 0x0

    .line 102
    .end local v0    # "ch":I
    :goto_1
    return v2

    :cond_3
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static isWholeColumnReference(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;)Z
    .locals 2
    .param p0, "topLeft"    # Lorg/apache/poi/ss/util/CellReference;
    .param p1, "botRight"    # Lorg/apache/poi/ss/util/CellReference;

    .prologue
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

    .line 192
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static separateAreaRefs(Ljava/lang/String;)[Ljava/lang/String;
    .locals 14
    .param p0, "reference"    # Ljava/lang/String;

    .prologue
    const/16 v13, 0x27

    const/16 v12, 0x21

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 323
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 324
    .local v3, "len":I
    const/4 v0, -0x1

    .line 325
    .local v0, "delimiterPos":I
    const/4 v2, 0x0

    .line 326
    .local v2, "insideDelimitedName":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_5

    .line 327
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 326
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 329
    :sswitch_0
    if-nez v2, :cond_0

    .line 330
    if-ltz v0, :cond_1

    .line 331
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "More than one cell delimiter \':\' appears in area reference \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 334
    :cond_1
    move v0, v1

    goto :goto_1

    .line 341
    :sswitch_1
    if-nez v2, :cond_2

    .line 342
    const/4 v2, 0x1

    .line 343
    goto :goto_1

    .line 346
    :cond_2
    add-int/lit8 v8, v3, -0x1

    if-lt v1, v8, :cond_3

    .line 349
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Area reference \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' ends with special name delimiter \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 352
    :cond_3
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v13, :cond_4

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 357
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 360
    :cond_5
    if-gez v0, :cond_6

    .line 361
    new-array v8, v10, [Ljava/lang/String;

    aput-object p0, v8, v9

    .line 381
    :goto_2
    return-object v8

    .line 364
    :cond_6
    invoke-virtual {p0, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 365
    .local v4, "partA":Ljava/lang/String;
    add-int/lit8 v8, v0, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 366
    .local v5, "partB":Ljava/lang/String;
    invoke-virtual {v5, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ltz v8, :cond_7

    .line 370
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected ! in second cell reference of \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 374
    :cond_7
    invoke-virtual {v4, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 375
    .local v6, "plingPos":I
    if-gez v6, :cond_8

    .line 376
    new-array v8, v11, [Ljava/lang/String;

    aput-object v4, v8, v9

    aput-object v5, v8, v10

    goto :goto_2

    .line 379
    :cond_8
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v4, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 381
    .local v7, "sheetName":Ljava/lang/String;
    new-array v8, v11, [Ljava/lang/String;

    aput-object v4, v8, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    goto :goto_2

    .line 327
    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_1
        0x3a -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public formatAsString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 279
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/AreaReference;->isWholeColumnReference()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/ss/util/CellReference;->convertNumToColString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/ss/util/CellReference;->convertNumToColString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 297
    :goto_0
    return-object v1

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

    if-nez v1, :cond_1

    .line 289
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 290
    iget-object v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getSheetName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 291
    iget-object v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 297
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 294
    :cond_2
    iget-object v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v1, v0}, Lorg/apache/poi/ss/util/CellReference;->appendCellReference(Ljava/lang/StringBuffer;)V

    goto :goto_1
.end method

.method public getAllReferencedCells()[Lorg/apache/poi/ss/util/CellReference;
    .locals 12

    .prologue
    .line 243
    iget-boolean v4, p0, Lorg/apache/poi/ss/util/AreaReference;->_isSingleCell:Z

    if-eqz v4, :cond_0

    .line 244
    const/4 v4, 0x1

    new-array v4, v4, [Lorg/apache/poi/ss/util/CellReference;

    const/4 v5, 0x0

    iget-object v11, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    aput-object v11, v4, v5

    .line 261
    :goto_0
    return-object v4

    .line 248
    :cond_0
    iget-object v4, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v4

    iget-object v5, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 249
    .local v9, "minRow":I
    iget-object v4, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v4

    iget-object v5, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 250
    .local v7, "maxRow":I
    iget-object v4, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v4

    iget-object v5, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 251
    .local v8, "minCol":I
    iget-object v4, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v4

    iget-object v5, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 252
    .local v6, "maxCol":I
    iget-object v4, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellReference;->getSheetName()Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "sheetName":Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v10, "refs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/util/CellReference;>;"
    move v2, v9

    .local v2, "row":I
    :goto_1
    if-gt v2, v7, :cond_2

    .line 256
    move v3, v8

    .local v3, "col":I
    :goto_2
    if-gt v3, v6, :cond_1

    .line 257
    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    iget-object v4, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellReference;->isRowAbsolute()Z

    move-result v4

    iget-object v5, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellReference;->isColAbsolute()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;IIZZ)V

    .line 258
    .local v0, "ref":Lorg/apache/poi/ss/util/CellReference;
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 255
    .end local v0    # "ref":Lorg/apache/poi/ss/util/CellReference;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 261
    .end local v3    # "col":I
    :cond_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lorg/apache/poi/ss/util/CellReference;

    invoke-interface {v10, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/apache/poi/ss/util/CellReference;

    goto :goto_0
.end method

.method public getFirstCell()Lorg/apache/poi/ss/util/CellReference;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    return-object v0
.end method

.method public getLastCell()Lorg/apache/poi/ss/util/CellReference;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    return-object v0
.end method

.method public isSingleCell()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lorg/apache/poi/ss/util/AreaReference;->_isSingleCell:Z

    return v0
.end method

.method public isWholeColumnReference()Z
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    iget-object v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/AreaReference;->isWholeColumnReference(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
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

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

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
