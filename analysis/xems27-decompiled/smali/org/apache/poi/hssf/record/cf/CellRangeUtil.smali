.class public final Lorg/apache/poi/hssf/record/cf/CellRangeUtil;
.super Ljava/lang/Object;
.source "CellRangeUtil.java"


# static fields
.field public static final ENCLOSES:I = 0x4

.field public static final INSIDE:I = 0x3

.field public static final NO_INTERSECTION:I = 0x1

.field public static final OVERLAP:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static contains(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)Z
    .locals 5
    .param p0, "crA"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p1, "crB"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 191
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v0

    .line 192
    .local v0, "firstRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v1

    .line 193
    .local v1, "lastRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v2

    .line 194
    .local v2, "firstCol":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v3

    .line 195
    .local v3, "lastCol":I
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v4

    invoke-static {v4, v0}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->le(II)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v4

    invoke-static {v4, v1}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->ge(II)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v4

    invoke-static {v4, v2}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->le(II)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v4

    invoke-static {v4, v3}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->ge(II)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method public static createEnclosingCellRange(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 6
    .param p0, "crA"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p1, "crB"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 233
    if-nez p1, :cond_0

    .line 234
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->copy()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    return-object v0

    .line 237
    :cond_0
    new-instance v0, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v2

    invoke-static {v1, v2}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->lt(II)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v1

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v3

    invoke-static {v2, v3}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->gt(II)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v2

    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v4

    invoke-static {v3, v4}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->lt(II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v3

    :goto_2
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v4

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v5

    invoke-static {v4, v5}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->gt(II)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v4

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v4

    :goto_3
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    return-object v0
.end method

.method private static ge(II)Z
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 276
    invoke-static {p0, p1}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->lt(II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static gt(II)Z
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 268
    invoke-static {p1, p0}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->lt(II)Z

    move-result v0

    return v0
.end method

.method public static hasExactSharedBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)Z
    .locals 8
    .param p0, "crA"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p1, "crB"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 206
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v0

    .line 207
    .local v0, "oFirstRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v1

    .line 208
    .local v1, "oLastRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v2

    .line 209
    .local v2, "oFirstCol":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v3

    .line 211
    .local v3, "oLastCol":I
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v4

    sub-int/2addr v4, v6

    if-eq v4, v1, :cond_1

    :cond_0
    if-lez v0, :cond_3

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v7

    if-ne v4, v7, :cond_3

    .line 215
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v4

    if-ne v4, v2, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v4

    if-ne v4, v3, :cond_2

    const/4 v5, 0x1

    :cond_2
    return v5

    .line 218
    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v4

    sub-int/2addr v4, v6

    if-eq v4, v3, :cond_5

    :cond_4
    if-lez v2, :cond_7

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v4

    add-int/lit8 v7, v2, -0x1

    if-ne v4, v7, :cond_7

    .line 222
    :cond_5
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v4

    if-ne v4, v0, :cond_6

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v4

    if-ne v4, v1, :cond_6

    const/4 v5, 0x1

    :cond_6
    return v5

    .line 224
    :cond_7
    return v5
.end method

.method public static intersect(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)I
    .locals 5
    .param p0, "crA"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p1, "crB"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 57
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v0

    .line 58
    .local v0, "firstRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v1

    .line 59
    .local v1, "lastRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v2

    .line 60
    .local v2, "firstCol":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v3

    .line 62
    .local v3, "lastCol":I
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v4

    invoke-static {v4, v1}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->gt(II)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v4

    invoke-static {v4, v0}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->lt(II)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v4

    invoke-static {v4, v3}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->gt(II)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v4

    invoke-static {v4, v2}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->lt(II)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->contains(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 74
    const/4 v4, 0x3

    return v4

    .line 76
    :cond_1
    invoke-static {p1, p0}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->contains(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 78
    const/4 v4, 0x4

    return v4

    .line 82
    :cond_2
    const/4 v4, 0x2

    return v4

    .line 70
    :cond_3
    :goto_0
    const/4 v4, 0x1

    return v4
.end method

.method private static le(II)Z
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 260
    if-eq p0, p1, :cond_1

    invoke-static {p0, p1}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->lt(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static lt(II)Z
    .locals 3
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 252
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p0, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    if-ne p1, v2, :cond_2

    :goto_0
    goto :goto_1

    :cond_2
    if-ge p0, p1, :cond_0

    goto :goto_0

    :goto_1
    return v0
.end method

.method private static mergeCellRanges(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ">;"
        }
    .end annotation

    .line 110
    .local p0, "cellRangeList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/util/CellRangeAddress;>;"
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    .line 111
    const/4 v0, 0x0

    .line 114
    .local v0, "somethingGotMerged":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 115
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 118
    .local v3, "range1":Lorg/apache/poi/ss/util/CellRangeAddress;
    add-int/lit8 v4, v2, 0x1

    .local v4, "j":I
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 119
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 121
    .local v5, "range2":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-static {v3, v5}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->mergeRanges(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)[Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v6

    .line 122
    .local v6, "mergeResult":[Lorg/apache/poi/ss/util/CellRangeAddress;
    if-nez v6, :cond_0

    .line 123
    goto :goto_4

    .line 125
    :cond_0
    const/4 v0, 0x1

    .line 127
    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-interface {p0, v2, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 129
    add-int/lit8 v7, v4, -0x1

    .end local v4    # "j":I
    .local v7, "j":I
    invoke-interface {p0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 131
    const/4 v4, 0x1

    .local v4, "k":I
    :goto_3
    array-length v8, v6

    if-ge v4, v8, :cond_1

    .line 132
    add-int/lit8 v7, v7, 0x1

    .line 133
    aget-object v8, v6, v4

    invoke-interface {p0, v7, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 131
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_1
    move v4, v7

    .line 118
    .end local v5    # "range2":Lorg/apache/poi/ss/util/CellRangeAddress;
    .end local v6    # "mergeResult":[Lorg/apache/poi/ss/util/CellRangeAddress;
    .end local v7    # "j":I
    .local v4, "j":I
    :goto_4
    add-int/2addr v4, v1

    goto :goto_2

    .line 114
    .end local v3    # "range1":Lorg/apache/poi/ss/util/CellRangeAddress;
    .end local v4    # "j":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 137
    .end local v2    # "i":I
    :cond_3
    if-nez v0, :cond_4

    .line 138
    goto :goto_5

    .line 140
    .end local v0    # "somethingGotMerged":Z
    :cond_4
    goto :goto_0

    .line 142
    :cond_5
    :goto_5
    return-object p0
.end method

.method public static mergeCellRanges([Lorg/apache/poi/ss/util/CellRangeAddress;)[Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 5
    .param p0, "cellRanges"    # [Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 95
    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 96
    return-object p0

    .line 99
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v0, "lst":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/util/CellRangeAddress;>;"
    move-object v1, p0

    .local v1, "arr$":[Lorg/apache/poi/ss/util/CellRangeAddress;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 101
    .local v4, "cr":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    .end local v4    # "cr":Lorg/apache/poi/ss/util/CellRangeAddress;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 103
    .end local v1    # "arr$":[Lorg/apache/poi/ss/util/CellRangeAddress;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    invoke-static {v0}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->mergeCellRanges(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 104
    .local v1, "temp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/util/CellRangeAddress;>;"
    invoke-static {v1}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->toArray(Ljava/util/List;)[Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v2

    return-object v2
.end method

.method private static mergeRanges(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)[Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 5
    .param p0, "range1"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p1, "range2"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 149
    invoke-static {p0, p1}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->intersect(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)I

    move-result v0

    .line 150
    .local v0, "x":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 169
    new-array v1, v3, [Lorg/apache/poi/ss/util/CellRangeAddress;

    aput-object p1, v1, v2

    return-object v1

    .line 171
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected intersection result ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 166
    :cond_1
    new-array v1, v3, [Lorg/apache/poi/ss/util/CellRangeAddress;

    aput-object p0, v1, v2

    return-object v1

    .line 163
    :cond_2
    return-object v1

    .line 154
    :cond_3
    invoke-static {p0, p1}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->hasExactSharedBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 155
    new-array v1, v3, [Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-static {p0, p1}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->createEnclosingCellRange(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v3

    aput-object v3, v1, v2

    return-object v1

    .line 158
    :cond_4
    return-object v1
.end method

.method private static toArray(Ljava/util/List;)[Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ">;)[",
            "Lorg/apache/poi/ss/util/CellRangeAddress;"
        }
    .end annotation

    .line 176
    .local p0, "temp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/util/CellRangeAddress;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 177
    .local v0, "result":[Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 178
    return-object v0
.end method
