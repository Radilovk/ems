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

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static contains(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)Z
    .locals 5
    .param p0, "crA"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p1, "crB"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .prologue
    .line 191
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v1

    .line 192
    .local v1, "firstRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v3

    .line 193
    .local v3, "lastRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v0

    .line 194
    .local v0, "firstCol":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v2

    .line 195
    .local v2, "lastCol":I
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v4

    invoke-static {v4, v1}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->le(II)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v4

    invoke-static {v4, v3}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->ge(II)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v4

    invoke-static {v4, v0}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->le(II)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v4

    invoke-static {v4, v2}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->ge(II)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static createEnclosingCellRange(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 6
    .param p0, "crA"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p1, "crB"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .prologue
    .line 233
    if-nez p1, :cond_0

    .line 234
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->copy()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    .line 237
    :goto_0
    return-object v0

    :cond_0
    new-instance v4, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->lt(II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v0

    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v2

    invoke-static {v1, v2}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->gt(II)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v1

    :goto_2
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v3

    invoke-static {v2, v3}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->lt(II)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v2

    :goto_3
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v5

    invoke-static {v3, v5}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->gt(II)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v3

    :goto_4
    invoke-direct {v4, v0, v1, v2, v3}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    move-object v0, v4

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v1

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v2

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v3

    goto :goto_4
.end method

.method private static ge(II)Z
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 276
    invoke-static {p0, p1}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->lt(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static gt(II)Z
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 268
    invoke-static {p1, p0}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->lt(II)Z

    move-result v0

    return v0
.end method

.method public static hasExactSharedBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)Z
    .locals 8
    .param p0, "crA"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p1, "crB"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 206
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v1

    .line 207
    .local v1, "oFirstRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v3

    .line 208
    .local v3, "oLastRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v0

    .line 209
    .local v0, "oFirstCol":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v2

    .line 211
    .local v2, "oLastCol":I
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v6, v3, :cond_1

    :cond_0
    if-lez v1, :cond_4

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v7

    if-ne v6, v7, :cond_4

    .line 215
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v6

    if-ne v6, v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v6

    if-ne v6, v2, :cond_3

    .line 224
    :cond_2
    :goto_0
    return v4

    :cond_3
    move v4, v5

    .line 215
    goto :goto_0

    .line 218
    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v6

    if-lez v6, :cond_5

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v6, v2, :cond_6

    :cond_5
    if-lez v0, :cond_8

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v6

    add-int/lit8 v7, v0, -0x1

    if-ne v6, v7, :cond_8

    .line 222
    :cond_6
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v6

    if-ne v6, v1, :cond_7

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v6

    if-eq v6, v3, :cond_2

    :cond_7
    move v4, v5

    goto :goto_0

    :cond_8
    move v4, v5

    .line 224
    goto :goto_0
.end method

.method public static intersect(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)I
    .locals 5
    .param p0, "crA"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p1, "crB"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .prologue
    .line 57
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v1

    .line 58
    .local v1, "firstRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v3

    .line 59
    .local v3, "lastRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v0

    .line 60
    .local v0, "firstCol":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v2

    .line 62
    .local v2, "lastCol":I
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v4

    invoke-static {v4, v3}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->gt(II)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v4

    invoke-static {v4, v1}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->lt(II)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v4

    invoke-static {v4, v2}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->gt(II)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v4

    invoke-static {v4, v0}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->lt(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 70
    :cond_0
    const/4 v4, 0x1

    .line 82
    :goto_0
    return v4

    .line 72
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->contains(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 74
    const/4 v4, 0x3

    goto :goto_0

    .line 76
    :cond_2
    invoke-static {p1, p0}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->contains(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 78
    const/4 v4, 0x4

    goto :goto_0

    .line 82
    :cond_3
    const/4 v4, 0x2

    goto :goto_0
.end method

.method private static le(II)Z
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 260
    if-eq p0, p1, :cond_0

    invoke-static {p0, p1}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->lt(II)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static lt(II)Z
    .locals 3
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 252
    if-ne p0, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p1, v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    if-ge p0, p1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static mergeCellRanges(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "cellRangeList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/util/CellRangeAddress;>;"
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_5

    .line 111
    const/4 v7, 0x0

    .line 114
    .local v7, "somethingGotMerged":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_4

    .line 115
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 118
    .local v5, "range1":Lorg/apache/poi/ss/util/CellRangeAddress;
    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_3

    .line 119
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 121
    .local v6, "range2":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-static {v5, v6}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->mergeRanges(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)[Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v4

    .line 122
    .local v4, "mergeResult":[Lorg/apache/poi/ss/util/CellRangeAddress;
    if-nez v4, :cond_2

    .line 118
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 125
    :cond_2
    const/4 v7, 0x1

    .line 127
    const/4 v8, 0x0

    aget-object v8, v4, v8

    invoke-interface {p0, v0, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 129
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "j":I
    .local v2, "j":I
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 131
    const/4 v3, 0x1

    .local v3, "k":I
    move v1, v2

    .end local v2    # "j":I
    .restart local v1    # "j":I
    :goto_2
    array-length v8, v4

    if-ge v3, v8, :cond_1

    .line 132
    add-int/lit8 v1, v1, 0x1

    .line 133
    aget-object v8, v4, v3

    invoke-interface {p0, v1, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 131
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 114
    .end local v3    # "k":I
    .end local v4    # "mergeResult":[Lorg/apache/poi/ss/util/CellRangeAddress;
    .end local v6    # "range2":Lorg/apache/poi/ss/util/CellRangeAddress;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    .end local v1    # "j":I
    .end local v5    # "range1":Lorg/apache/poi/ss/util/CellRangeAddress;
    :cond_4
    if-nez v7, :cond_0

    .line 142
    .end local v0    # "i":I
    .end local v7    # "somethingGotMerged":Z
    :cond_5
    return-object p0
.end method

.method public static mergeCellRanges([Lorg/apache/poi/ss/util/CellRangeAddress;)[Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 8
    .param p0, "cellRanges"    # [Lorg/apache/poi/ss/util/CellRangeAddress;

    .prologue
    .line 95
    array-length v6, p0

    const/4 v7, 0x1

    if-ge v6, v7, :cond_0

    .line 104
    .end local p0    # "cellRanges":[Lorg/apache/poi/ss/util/CellRangeAddress;
    :goto_0
    return-object p0

    .line 99
    .restart local p0    # "cellRanges":[Lorg/apache/poi/ss/util/CellRangeAddress;
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v4, "lst":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/util/CellRangeAddress;>;"
    move-object v0, p0

    .local v0, "arr$":[Lorg/apache/poi/ss/util/CellRangeAddress;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 101
    .local v1, "cr":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 103
    .end local v1    # "cr":Lorg/apache/poi/ss/util/CellRangeAddress;
    :cond_1
    invoke-static {v4}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->mergeCellRanges(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 104
    .local v5, "temp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/util/CellRangeAddress;>;"
    invoke-static {v5}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->toArray(Ljava/util/List;)[Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object p0

    goto :goto_0
.end method

.method private static mergeRanges(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)[Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 5
    .param p0, "range1"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p1, "range2"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 149
    invoke-static {p0, p1}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->intersect(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)I

    move-result v0

    .line 150
    .local v0, "x":I
    packed-switch v0, :pswitch_data_0

    .line 171
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected intersection result ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    :pswitch_0
    invoke-static {p0, p1}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->hasExactSharedBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    new-array v1, v4, [Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-static {p0, p1}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->createEnclosingCellRange(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v2

    aput-object v2, v1, v3

    .line 169
    :cond_0
    :goto_0
    :pswitch_1
    return-object v1

    .line 166
    :pswitch_2
    new-array v1, v4, [Lorg/apache/poi/ss/util/CellRangeAddress;

    aput-object p0, v1, v3

    goto :goto_0

    .line 169
    :pswitch_3
    new-array v1, v4, [Lorg/apache/poi/ss/util/CellRangeAddress;

    aput-object p1, v1, v3

    goto :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static toArray(Ljava/util/List;)[Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ">;)[",
            "Lorg/apache/poi/ss/util/CellRangeAddress;"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "temp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/util/CellRangeAddress;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v0, v1, [Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 177
    .local v0, "result":[Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 178
    return-object v0
.end method
