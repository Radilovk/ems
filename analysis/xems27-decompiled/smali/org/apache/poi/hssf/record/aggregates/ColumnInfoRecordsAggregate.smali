.class public final Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;
.super Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;
.source "ColumnInfoRecordsAggregate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate$CIRComparator;
    }
.end annotation


# instance fields
.field private final records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/ColumnInfoRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/model/RecordStream;)V
    .locals 4
    .param p1, "rs"    # Lorg/apache/poi/hssf/model/RecordStream;

    .line 58
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;-><init>()V

    .line 60
    const/4 v0, 0x1

    .line 61
    .local v0, "isInOrder":Z
    const/4 v1, 0x0

    .line 62
    .local v1, "cirPrev":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    if-ne v2, v3, :cond_1

    .line 63
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    .line 64
    .local v2, "cir":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    if-eqz v1, :cond_0

    invoke-static {v1, v2}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate$CIRComparator;->compareColInfos(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Lorg/apache/poi/hssf/record/ColumnInfoRecord;)I

    move-result v3

    if-lez v3, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 68
    :cond_0
    move-object v1, v2

    .line 69
    .end local v2    # "cir":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    goto :goto_0

    .line 70
    :cond_1
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_3

    .line 73
    if-nez v0, :cond_2

    .line 74
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    sget-object v3, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate$CIRComparator;->instance:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 76
    :cond_2
    return-void

    .line 71
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "No column info records found"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private attemptMergeColInfoRecords(I)V
    .locals 4
    .param p1, "colInfoIx"    # I

    .line 436
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 437
    .local v0, "nRecords":I
    if-ltz p1, :cond_2

    if-ge p1, v0, :cond_2

    .line 441
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v1

    .line 442
    .local v1, "currentCol":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    add-int/lit8 v2, p1, 0x1

    .line 443
    .local v2, "nextIx":I
    if-ge v2, v0, :cond_0

    .line 444
    invoke-direct {p0, v2}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->mergeColInfoRecords(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 445
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 448
    :cond_0
    if-lez p1, :cond_1

    .line 449
    add-int/lit8 v3, p1, -0x1

    invoke-direct {p0, v3}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v3

    invoke-static {v3, v1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->mergeColInfoRecords(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 450
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 453
    :cond_1
    return-void

    .line 438
    .end local v1    # "currentCol":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    .end local v2    # "nextIx":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "colInfoIx "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is out of range (0.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static copyColInfo(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    .locals 1
    .param p0, "ci"    # Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    .line 298
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    return-object v0
.end method

.method private findColInfoIdx(II)I
    .locals 3
    .param p1, "columnIx"    # I
    .param p2, "fromColInfoIdx"    # I

    .line 412
    if-ltz p1, :cond_4

    .line 415
    if-ltz p2, :cond_3

    .line 419
    move v0, p2

    .local v0, "k":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 420
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v1

    .line 421
    .local v1, "ci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->containsColumn(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 422
    return v0

    .line 424
    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getFirstColumn()I

    move-result v2

    if-le v2, p1, :cond_1

    .line 425
    goto :goto_1

    .line 419
    .end local v1    # "ci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 428
    .end local v0    # "k":I
    :cond_2
    :goto_1
    const/4 v0, -0x1

    return v0

    .line 416
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIdx parameter out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "column parameter out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findEndOfColumnOutlineGroup(I)I
    .locals 5
    .param p1, "colInfoIndex"    # I

    .line 150
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    .line 151
    .local v0, "columnInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v1

    .line 152
    .local v1, "level":I
    move v2, p1

    .line 153
    .local v2, "idx":I
    :goto_0
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    .line 154
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    .line 155
    .local v3, "nextColumnInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-virtual {v0, v3}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->isAdjacentBefore(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 156
    goto :goto_1

    .line 158
    :cond_0
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v4

    if-ge v4, v1, :cond_1

    .line 159
    goto :goto_1

    .line 161
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 162
    move-object v0, v3

    .line 163
    .end local v3    # "nextColumnInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    goto :goto_0

    .line 164
    :cond_2
    :goto_1
    return v2
.end method

.method private findStartOfColumnOutlineGroup(I)I
    .locals 5
    .param p1, "pIdx"    # I

    .line 130
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    .line 131
    .local v0, "columnInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v1

    .line 132
    .local v1, "level":I
    move v2, p1

    .line 133
    .local v2, "idx":I
    :goto_0
    if-eqz v2, :cond_2

    .line 134
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    add-int/lit8 v4, v2, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    .line 135
    .local v3, "prevColumnInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-virtual {v3, v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->isAdjacentBefore(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 136
    goto :goto_1

    .line 138
    :cond_0
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v4

    if-ge v4, v1, :cond_1

    .line 139
    goto :goto_1

    .line 141
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 142
    move-object v0, v3

    .line 143
    .end local v3    # "prevColumnInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    goto :goto_0

    .line 145
    :cond_2
    :goto_1
    return v2
.end method

.method private getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    .locals 1
    .param p1, "idx"    # I

    .line 168
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    return-object v0
.end method

.method private insertColumn(ILorg/apache/poi/hssf/record/ColumnInfoRecord;)V
    .locals 1
    .param p1, "idx"    # I
    .param p2, "col"    # Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    .line 103
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 104
    return-void
.end method

.method private isColumnGroupCollapsed(I)Z
    .locals 5
    .param p1, "idx"    # I

    .line 177
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findEndOfColumnOutlineGroup(I)I

    move-result v0

    .line 178
    .local v0, "endOfOutlineGroupIdx":I
    add-int/lit8 v1, v0, 0x1

    .line 179
    .local v1, "nextColInfoIx":I
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    .line 180
    return v3

    .line 182
    :cond_0
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v2

    .line 183
    .local v2, "nextColInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->isAdjacentBefore(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 184
    return v3

    .line 186
    :cond_1
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getCollapsed()Z

    move-result v3

    return v3
.end method

.method private isColumnGroupHiddenByParent(I)Z
    .locals 8
    .param p1, "idx"    # I

    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, "endLevel":I
    const/4 v1, 0x0

    .line 194
    .local v1, "endHidden":Z
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findEndOfColumnOutlineGroup(I)I

    move-result v2

    .line 195
    .local v2, "endOfOutlineGroupIdx":I
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 196
    add-int/lit8 v3, v2, 0x1

    invoke-direct {p0, v3}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v3

    .line 197
    .local v3, "nextInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-direct {p0, v2}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->isAdjacentBefore(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 198
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v0

    .line 199
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getHidden()Z

    move-result v1

    .line 203
    .end local v3    # "nextInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    :cond_0
    const/4 v3, 0x0

    .line 204
    .local v3, "startLevel":I
    const/4 v4, 0x0

    .line 205
    .local v4, "startHidden":Z
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findStartOfColumnOutlineGroup(I)I

    move-result v5

    .line 206
    .local v5, "startOfOutlineGroupIdx":I
    if-lez v5, :cond_1

    .line 207
    add-int/lit8 v6, v5, -0x1

    invoke-direct {p0, v6}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v6

    .line 208
    .local v6, "prevInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-direct {p0, v5}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->isAdjacentBefore(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 209
    invoke-virtual {v6}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v3

    .line 210
    invoke-virtual {v6}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getHidden()Z

    move-result v4

    .line 213
    .end local v6    # "prevInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    :cond_1
    if-le v0, v3, :cond_2

    .line 214
    return v1

    .line 216
    :cond_2
    return v4
.end method

.method private static mergeColInfoRecords(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z
    .locals 1
    .param p0, "ciA"    # Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    .param p1, "ciB"    # Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    .line 459
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->isAdjacentBefore(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->formatMatches(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getLastColumn()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setLastColumn(I)V

    .line 461
    const/4 v0, 0x1

    return v0

    .line 463
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static setColumnInfoFields(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Ljava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 1
    .param p0, "ci"    # Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    .param p1, "xfStyle"    # Ljava/lang/Short;
    .param p2, "width"    # Ljava/lang/Integer;
    .param p3, "level"    # Ljava/lang/Integer;
    .param p4, "hidden"    # Ljava/lang/Boolean;
    .param p5, "collapsed"    # Ljava/lang/Boolean;

    .line 394
    if-eqz p1, :cond_0

    .line 395
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setXFIndex(I)V

    .line 397
    :cond_0
    if-eqz p2, :cond_1

    .line 398
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setColumnWidth(I)V

    .line 400
    :cond_1
    if-eqz p3, :cond_2

    .line 401
    invoke-virtual {p3}, Ljava/lang/Integer;->shortValue()S

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setOutlineLevel(I)V

    .line 403
    :cond_2
    if-eqz p4, :cond_3

    .line 404
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setHidden(Z)V

    .line 406
    :cond_3
    if-eqz p5, :cond_4

    .line 407
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setCollapsed(Z)V

    .line 409
    :cond_4
    return-void
.end method

.method private setGroupHidden(IIZ)I
    .locals 4
    .param p1, "pIdx"    # I
    .param p2, "level"    # I
    .param p3, "hidden"    # Z

    .line 241
    move v0, p1

    .line 242
    .local v0, "idx":I
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v1

    .line 243
    .local v1, "columnInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 244
    invoke-virtual {v1, p3}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setHidden(Z)V

    .line 245
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 246
    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v2

    .line 247
    .local v2, "nextColumnInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->isAdjacentBefore(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 248
    goto :goto_1

    .line 250
    :cond_0
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v3

    if-ge v3, p2, :cond_1

    .line 251
    goto :goto_1

    .line 253
    :cond_1
    move-object v1, v2

    .line 255
    .end local v2    # "nextColumnInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getLastColumn()I

    move-result v2

    return v2
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 5

    .line 82
    new-instance v0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;-><init>()V

    .line 83
    .local v0, "rec":Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 84
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    .line 85
    .local v2, "ci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    iget-object v3, v0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    .end local v2    # "ci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v1    # "k":I
    :cond_0
    return-object v0
.end method

.method public collapseColumn(I)V
    .locals 11
    .param p1, "columnIndex"    # I

    .line 220
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findColInfoIdx(II)I

    move-result v0

    .line 221
    .local v0, "colInfoIx":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 222
    return-void

    .line 226
    :cond_0
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findStartOfColumnOutlineGroup(I)I

    move-result v1

    .line 227
    .local v1, "groupStartColInfoIx":I
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v2

    .line 230
    .local v2, "columnInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {p0, v1, v3, v4}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->setGroupHidden(IIZ)I

    move-result v3

    .line 233
    .local v3, "lastColIx":I
    add-int/lit8 v5, v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->setColumn(ILjava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 234
    return-void
.end method

.method public expandColumn(I)V
    .locals 12
    .param p1, "columnIndex"    # I

    .line 262
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findColInfoIdx(II)I

    move-result v1

    .line 263
    .local v1, "idx":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 264
    return-void

    .line 268
    :cond_0
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->isColumnGroupCollapsed(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 269
    return-void

    .line 273
    :cond_1
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findStartOfColumnOutlineGroup(I)I

    move-result v2

    .line 274
    .local v2, "startIdx":I
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findEndOfColumnOutlineGroup(I)I

    move-result v3

    .line 283
    .local v3, "endIdx":I
    invoke-direct {p0, v3}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v4

    .line 284
    .local v4, "columnInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->isColumnGroupHiddenByParent(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 285
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v5

    .line 286
    .local v5, "outlineLevel":I
    move v6, v2

    .local v6, "i":I
    :goto_0
    if-gt v6, v3, :cond_3

    .line 287
    invoke-direct {p0, v6}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v7

    .line 288
    .local v7, "ci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-virtual {v7}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v8

    if-ne v5, v8, :cond_2

    .line 289
    invoke-virtual {v7, v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setHidden(Z)V

    .line 286
    .end local v7    # "ci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 294
    .end local v5    # "outlineLevel":I
    .end local v6    # "i":I
    :cond_3
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getLastColumn()I

    move-result v0

    add-int/lit8 v6, v0, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->setColumn(ILjava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 295
    return-void
.end method

.method public findColumnInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    .locals 4
    .param p1, "columnIndex"    # I

    .line 505
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 506
    .local v0, "nInfos":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 507
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v2

    .line 508
    .local v2, "ci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-virtual {v2, p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->containsColumn(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 509
    return-object v2

    .line 506
    .end local v2    # "ci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 512
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getMaxOutlineLevel()I
    .locals 5

    .line 515
    const/4 v0, 0x0

    .line 516
    .local v0, "result":I
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 517
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 518
    invoke-direct {p0, v2}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v3

    .line 519
    .local v3, "columnInfoRecord":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 517
    .end local v3    # "columnInfoRecord":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 521
    .end local v2    # "i":I
    :cond_0
    return v0
.end method

.method getNumColumns()I
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOutlineLevel(I)I
    .locals 2
    .param p1, "columnIndex"    # I

    .line 524
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findColumnInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v0

    .line 525
    .local v0, "ci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    if-eqz v0, :cond_0

    .line 526
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v1

    return v1

    .line 528
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public groupColumnRange(IIZ)V
    .locals 11
    .param p1, "fromColumnIx"    # I
    .param p2, "toColumnIx"    # I
    .param p3, "indent"    # Z

    .line 481
    const/4 v0, 0x0

    .line 482
    .local v0, "colInfoSearchStartIdx":I
    move v1, p1

    move v8, v1

    .local v8, "i":I
    :goto_0
    if-gt v8, p2, :cond_2

    .line 483
    const/4 v1, 0x1

    .line 484
    .local v1, "level":I
    invoke-direct {p0, v8, v0}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findColInfoIdx(II)I

    move-result v9

    .line 485
    .local v9, "colInfoIdx":I
    const/4 v2, -0x1

    if-eq v9, v2, :cond_1

    .line 486
    invoke-direct {p0, v9}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v1

    .line 487
    if-eqz p3, :cond_0

    .line 488
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 490
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 492
    :goto_1
    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 493
    const/4 v3, 0x7

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 494
    add-int/lit8 v3, v9, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v10, v1

    goto :goto_2

    .line 485
    :cond_1
    move v10, v1

    .line 496
    .end local v1    # "level":I
    .local v10, "level":I
    :goto_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, v8

    invoke-virtual/range {v1 .. v7}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->setColumn(ILjava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 482
    .end local v9    # "colInfoIdx":I
    .end local v10    # "level":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 498
    .end local v8    # "i":I
    :cond_2
    return-void
.end method

.method public insertColumn(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)V
    .locals 2
    .param p1, "col"    # Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    .line 94
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    sget-object v1, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate$CIRComparator;->instance:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 96
    return-void
.end method

.method public setColumn(ILjava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 21
    .param p1, "targetColumnIx"    # I
    .param p2, "xfIndex"    # Ljava/lang/Short;
    .param p3, "width"    # Ljava/lang/Integer;
    .param p4, "level"    # Ljava/lang/Integer;
    .param p5, "hidden"    # Ljava/lang/Boolean;
    .param p6, "collapsed"    # Ljava/lang/Boolean;

    .line 304
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    .line 305
    .local v2, "ci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    const/4 v3, 0x0

    .line 307
    .local v3, "k":I
    const/4 v3, 0x0

    :goto_0
    iget-object v4, v0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 308
    iget-object v4, v0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    .line 309
    .local v4, "tci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-virtual {v4, v1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->containsColumn(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 310
    move-object v2, v4

    .line 311
    goto :goto_1

    .line 313
    :cond_0
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getFirstColumn()I

    move-result v5

    if-le v5, v1, :cond_1

    .line 315
    goto :goto_1

    .line 307
    .end local v4    # "tci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 319
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 321
    new-instance v4, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    invoke-direct {v4}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;-><init>()V

    .line 323
    .local v4, "nci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-virtual {v4, v1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setFirstColumn(I)V

    .line 324
    invoke-virtual {v4, v1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setLastColumn(I)V

    .line 325
    move-object v5, v4

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-static/range {v5 .. v10}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->setColumnInfoFields(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Ljava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 326
    invoke-direct {v0, v3, v4}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->insertColumn(ILorg/apache/poi/hssf/record/ColumnInfoRecord;)V

    .line 327
    invoke-direct {v0, v3}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->attemptMergeColInfoRecords(I)V

    .line 328
    return-void

    .line 331
    .end local v4    # "nci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    :cond_3
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p2, :cond_4

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getXFIndex()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Short;->shortValue()S

    move-result v7

    if-eq v6, v7, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    move v12, v6

    .line 332
    .local v12, "styleChanged":Z
    if-eqz p3, :cond_5

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getColumnWidth()I

    move-result v6

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->shortValue()S

    move-result v7

    if-eq v6, v7, :cond_5

    const/4 v6, 0x1

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    :goto_3
    move v13, v6

    .line 333
    .local v13, "widthChanged":Z
    if-eqz p4, :cond_6

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v6

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v6, v7, :cond_6

    const/4 v6, 0x1

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    :goto_4
    move v14, v6

    .line 334
    .local v14, "levelChanged":Z
    if-eqz p5, :cond_7

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getHidden()Z

    move-result v6

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eq v6, v7, :cond_7

    const/4 v6, 0x1

    goto :goto_5

    :cond_7
    const/4 v6, 0x0

    :goto_5
    move v15, v6

    .line 335
    .local v15, "hiddenChanged":Z
    if-eqz p6, :cond_8

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getCollapsed()Z

    move-result v6

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eq v6, v7, :cond_8

    const/4 v6, 0x1

    goto :goto_6

    :cond_8
    const/4 v6, 0x0

    :goto_6
    move/from16 v16, v6

    .line 337
    .local v16, "collapsedChanged":Z
    if-nez v12, :cond_9

    if-nez v13, :cond_9

    if-nez v14, :cond_9

    if-nez v15, :cond_9

    if-eqz v16, :cond_a

    :cond_9
    const/4 v4, 0x1

    :cond_a
    move/from16 v17, v4

    .line 338
    .local v17, "columnChanged":Z
    if-nez v17, :cond_b

    .line 340
    return-void

    .line 343
    :cond_b
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getFirstColumn()I

    move-result v4

    if-ne v4, v1, :cond_c

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getLastColumn()I

    move-result v4

    if-ne v4, v1, :cond_c

    .line 345
    move-object v4, v2

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-static/range {v4 .. v9}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->setColumnInfoFields(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Ljava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 346
    invoke-direct {v0, v3}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->attemptMergeColInfoRecords(I)V

    .line 347
    return-void

    .line 350
    :cond_c
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getFirstColumn()I

    move-result v4

    if-eq v4, v1, :cond_e

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getLastColumn()I

    move-result v4

    if-ne v4, v1, :cond_d

    goto :goto_7

    .line 369
    :cond_d
    move-object v4, v2

    .line 370
    .local v4, "ciStart":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-static {v2}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->copyColInfo(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v11

    .line 371
    .local v11, "ciMid":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-static {v2}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->copyColInfo(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v10

    .line 372
    .local v10, "ciEnd":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getLastColumn()I

    move-result v9

    .line 374
    .local v9, "lastcolumn":I
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v4, v6}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setLastColumn(I)V

    .line 376
    invoke-virtual {v11, v1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setFirstColumn(I)V

    .line 377
    invoke-virtual {v11, v1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setLastColumn(I)V

    .line 378
    move-object v6, v11

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v18, v9

    .end local v9    # "lastcolumn":I
    .local v18, "lastcolumn":I
    move-object/from16 v9, p4

    move-object/from16 v19, v10

    .end local v10    # "ciEnd":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    .local v19, "ciEnd":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    move-object/from16 v10, p5

    move-object/from16 v20, v11

    .end local v11    # "ciMid":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    .local v20, "ciMid":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    move-object/from16 v11, p6

    invoke-static/range {v6 .. v11}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->setColumnInfoFields(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Ljava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 379
    add-int/2addr v3, v5

    move-object/from16 v6, v20

    .end local v20    # "ciMid":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    .local v6, "ciMid":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-direct {v0, v3, v6}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->insertColumn(ILorg/apache/poi/hssf/record/ColumnInfoRecord;)V

    .line 381
    add-int/lit8 v7, v1, 0x1

    move-object/from16 v8, v19

    .end local v19    # "ciEnd":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    .local v8, "ciEnd":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-virtual {v8, v7}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setFirstColumn(I)V

    .line 382
    move/from16 v7, v18

    .end local v18    # "lastcolumn":I
    .local v7, "lastcolumn":I
    invoke-virtual {v8, v7}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setLastColumn(I)V

    .line 383
    add-int/2addr v3, v5

    invoke-direct {v0, v3, v8}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->insertColumn(ILorg/apache/poi/hssf/record/ColumnInfoRecord;)V

    goto :goto_9

    .line 353
    .end local v4    # "ciStart":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    .end local v6    # "ciMid":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    .end local v7    # "lastcolumn":I
    .end local v8    # "ciEnd":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    :cond_e
    :goto_7
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getFirstColumn()I

    move-result v4

    if-ne v4, v1, :cond_f

    .line 354
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setFirstColumn(I)V

    goto :goto_8

    .line 356
    :cond_f
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, v4}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setLastColumn(I)V

    .line 357
    add-int/lit8 v3, v3, 0x1

    .line 359
    :goto_8
    invoke-static {v2}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->copyColInfo(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v4

    .line 361
    .local v4, "nci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-virtual {v4, v1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setFirstColumn(I)V

    .line 362
    invoke-virtual {v4, v1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setLastColumn(I)V

    .line 363
    move-object v6, v4

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-static/range {v6 .. v11}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->setColumnInfoFields(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Ljava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 365
    invoke-direct {v0, v3, v4}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->insertColumn(ILorg/apache/poi/hssf/record/ColumnInfoRecord;)V

    .line 366
    invoke-direct {v0, v3}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->attemptMergeColInfoRecords(I)V

    .line 367
    .end local v4    # "nci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    nop

    .line 387
    :goto_9
    return-void
.end method

.method public visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V
    .locals 6
    .param p1, "rv"    # Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;

    .line 111
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 112
    .local v0, "nItems":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 113
    return-void

    .line 115
    :cond_0
    const/4 v1, 0x0

    .line 116
    .local v1, "cirPrev":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 117
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    .line 118
    .local v3, "cir":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-interface {p1, v3}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 119
    if-eqz v1, :cond_2

    invoke-static {v1, v3}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate$CIRComparator;->compareColInfos(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Lorg/apache/poi/hssf/record/ColumnInfoRecord;)I

    move-result v4

    if-gtz v4, :cond_1

    goto :goto_1

    .line 122
    :cond_1
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Column info records are out of order"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 124
    :cond_2
    :goto_1
    move-object v1, v3

    .line 116
    .end local v3    # "cir":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    .end local v2    # "i":I
    :cond_3
    return-void
.end method
