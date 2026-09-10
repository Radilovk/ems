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
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/hssf/record/ColumnInfoRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
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
    .locals 5
    .param p1, "rs"    # Lorg/apache/poi/hssf/model/RecordStream;

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;-><init>()V

    .line 60
    const/4 v2, 0x1

    .line 61
    .local v2, "isInOrder":Z
    const/4 v1, 0x0

    .line 62
    .local v1, "cirPrev":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    if-ne v3, v4, :cond_1

    .line 63
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    .line 64
    .local v0, "cir":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    if-eqz v1, :cond_0

    invoke-static {v1, v0}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate$CIRComparator;->compareColInfos(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Lorg/apache/poi/hssf/record/ColumnInfoRecord;)I

    move-result v3

    if-lez v3, :cond_0

    .line 66
    const/4 v2, 0x0

    .line 68
    :cond_0
    move-object v1, v0

    .line 69
    goto :goto_0

    .line 70
    .end local v0    # "cir":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    :cond_1
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_2

    .line 71
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "No column info records found"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 73
    :cond_2
    if-nez v2, :cond_3

    .line 74
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    sget-object v4, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate$CIRComparator;->instance:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 76
    :cond_3
    return-void
.end method

.method private attemptMergeColInfoRecords(I)V
    .locals 6
    .param p1, "colInfoIx"    # I

    .prologue
    .line 436
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 437
    .local v1, "nRecords":I
    if-ltz p1, :cond_0

    if-lt p1, v1, :cond_1

    .line 438
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "colInfoIx "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is out of range (0.."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 441
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v0

    .line 442
    .local v0, "currentCol":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    add-int/lit8 v2, p1, 0x1

    .line 443
    .local v2, "nextIx":I
    if-ge v2, v1, :cond_2

    .line 444
    invoke-direct {p0, v2}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->mergeColInfoRecords(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 445
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 448
    :cond_2
    if-lez p1, :cond_3

    .line 449
    add-int/lit8 v3, p1, -0x1

    invoke-direct {p0, v3}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->mergeColInfoRecords(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 450
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 453
    :cond_3
    return-void
.end method

.method private static copyColInfo(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    .locals 1
    .param p0, "ci"    # Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    .prologue
    .line 298
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    return-object v0
.end method

.method private findColInfoIdx(II)I
    .locals 5
    .param p1, "columnIx"    # I
    .param p2, "fromColInfoIdx"    # I

    .prologue
    .line 412
    if-gez p1, :cond_0

    .line 413
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "column parameter out of range: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 415
    :cond_0
    if-gez p2, :cond_1

    .line 416
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fromIdx parameter out of range: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 419
    :cond_1
    move v1, p2

    .local v1, "k":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 420
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v0

    .line 421
    .local v0, "ci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->containsColumn(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 428
    .end local v0    # "ci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    .end local v1    # "k":I
    :goto_1
    return v1

    .line 424
    .restart local v0    # "ci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    .restart local v1    # "k":I
    :cond_2
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getFirstColumn()I

    move-result v2

    if-le v2, p1, :cond_4

    .line 428
    .end local v0    # "ci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    :cond_3
    const/4 v1, -0x1

    goto :goto_1

    .line 419
    .restart local v0    # "ci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private findEndOfColumnOutlineGroup(I)I
    .locals 6
    .param p1, "colInfoIndex"    # I

    .prologue
    .line 150
    iget-object v4, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    .line 151
    .local v0, "columnInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v2

    .line 152
    .local v2, "level":I
    move v1, p1

    .line 153
    .local v1, "idx":I
    :goto_0
    iget-object v4, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_0

    .line 154
    iget-object v4, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    add-int/lit8 v5, v1, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    .line 155
    .local v3, "nextColumnInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-virtual {v0, v3}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->isAdjacentBefore(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 164
    .end local v3    # "nextColumnInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    :cond_0
    return v1

    .line 158
    .restart local v3    # "nextColumnInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    :cond_1
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v4

    if-lt v4, v2, :cond_0

    .line 161
    add-int/lit8 v1, v1, 0x1

    .line 162
    move-object v0, v3

    .line 163
    goto :goto_0
.end method

.method private findStartOfColumnOutlineGroup(I)I
    .locals 6
    .param p1, "pIdx"    # I

    .prologue
    .line 130
    iget-object v4, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    .line 131
    .local v0, "columnInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v2

    .line 132
    .local v2, "level":I
    move v1, p1

    .line 133
    .local v1, "idx":I
    :goto_0
    if-eqz v1, :cond_0

    .line 134
    iget-object v4, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    add-int/lit8 v5, v1, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    .line 135
    .local v3, "prevColumnInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-virtual {v3, v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->isAdjacentBefore(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 145
    .end local v3    # "prevColumnInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    :cond_0
    return v1

    .line 138
    .restart local v3    # "prevColumnInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    :cond_1
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v4

    if-lt v4, v2, :cond_0

    .line 141
    add-int/lit8 v1, v1, -0x1

    .line 142
    move-object v0, v3

    .line 143
    goto :goto_0
.end method

.method private getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    .locals 1
    .param p1, "idx"    # I

    .prologue
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

    .prologue
    .line 103
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 104
    return-void
.end method

.method private isColumnGroupCollapsed(I)Z
    .locals 5
    .param p1, "idx"    # I

    .prologue
    const/4 v3, 0x0

    .line 177
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findEndOfColumnOutlineGroup(I)I

    move-result v0

    .line 178
    .local v0, "endOfOutlineGroupIdx":I
    add-int/lit8 v2, v0, 0x1

    .line 179
    .local v2, "nextColInfoIx":I
    iget-object v4, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 186
    :cond_0
    :goto_0
    return v3

    .line 182
    :cond_1
    invoke-direct {p0, v2}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v1

    .line 183
    .local v1, "nextColInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->isAdjacentBefore(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 186
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getCollapsed()Z

    move-result v3

    goto :goto_0
.end method

.method private isColumnGroupHiddenByParent(I)Z
    .locals 9
    .param p1, "idx"    # I

    .prologue
    .line 192
    const/4 v1, 0x0

    .line 193
    .local v1, "endLevel":I
    const/4 v0, 0x0

    .line 194
    .local v0, "endHidden":Z
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findEndOfColumnOutlineGroup(I)I

    move-result v2

    .line 195
    .local v2, "endOfOutlineGroupIdx":I
    iget-object v8, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 196
    add-int/lit8 v8, v2, 0x1

    invoke-direct {p0, v8}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v3

    .line 197
    .local v3, "nextInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-direct {p0, v2}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v8

    invoke-virtual {v8, v3}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->isAdjacentBefore(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 198
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v1

    .line 199
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getHidden()Z

    move-result v0

    .line 203
    .end local v3    # "nextInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    :cond_0
    const/4 v6, 0x0

    .line 204
    .local v6, "startLevel":I
    const/4 v5, 0x0

    .line 205
    .local v5, "startHidden":Z
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findStartOfColumnOutlineGroup(I)I

    move-result v7

    .line 206
    .local v7, "startOfOutlineGroupIdx":I
    if-lez v7, :cond_1

    .line 207
    add-int/lit8 v8, v7, -0x1

    invoke-direct {p0, v8}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v4

    .line 208
    .local v4, "prevInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-direct {p0, v7}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->isAdjacentBefore(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 209
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v6

    .line 210
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getHidden()Z

    move-result v5

    .line 213
    .end local v4    # "prevInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    :cond_1
    if-le v1, v6, :cond_2

    .line 216
    .end local v0    # "endHidden":Z
    :goto_0
    return v0

    .restart local v0    # "endHidden":Z
    :cond_2
    move v0, v5

    goto :goto_0
.end method

.method private static mergeColInfoRecords(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z
    .locals 1
    .param p0, "ciA"    # Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    .param p1, "ciB"    # Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    .prologue
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

    .line 463
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static setColumnInfoFields(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Ljava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 1
    .param p0, "ci"    # Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    .param p1, "xfStyle"    # Ljava/lang/Short;
    .param p2, "width"    # Ljava/lang/Integer;
    .param p3, "level"    # Ljava/lang/Integer;
    .param p4, "hidden"    # Ljava/lang/Boolean;
    .param p5, "collapsed"    # Ljava/lang/Boolean;

    .prologue
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
    .locals 5
    .param p1, "pIdx"    # I
    .param p2, "level"    # I
    .param p3, "hidden"    # Z

    .prologue
    .line 241
    move v1, p1

    .line 242
    .local v1, "idx":I
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v0

    .line 243
    .local v0, "columnInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    :goto_0
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 244
    invoke-virtual {v0, p3}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setHidden(Z)V

    .line 245
    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 246
    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v3}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v2

    .line 247
    .local v2, "nextColumnInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->isAdjacentBefore(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 257
    .end local v2    # "nextColumnInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getLastColumn()I

    move-result v3

    return v3

    .line 250
    .restart local v2    # "nextColumnInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    :cond_1
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v3

    if-lt v3, p2, :cond_0

    .line 253
    move-object v0, v2

    .line 255
    .end local v2    # "nextColumnInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 82
    new-instance v2, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;

    invoke-direct {v2}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;-><init>()V

    .line 83
    .local v2, "rec":Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 84
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    .line 85
    .local v0, "ci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    iget-object v4, v2, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v0    # "ci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    :cond_0
    return-object v2
.end method

.method public collapseColumn(I)V
    .locals 11
    .param p1, "columnIndex"    # I

    .prologue
    const/4 v2, 0x0

    .line 220
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findColInfoIdx(II)I

    move-result v7

    .line 221
    .local v7, "colInfoIx":I
    const/4 v0, -0x1

    if-ne v7, v0, :cond_0

    .line 234
    :goto_0
    return-void

    .line 226
    :cond_0
    invoke-direct {p0, v7}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findStartOfColumnOutlineGroup(I)I

    move-result v9

    .line 227
    .local v9, "groupStartColInfoIx":I
    invoke-direct {p0, v9}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v8

    .line 230
    .local v8, "columnInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-virtual {v8}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v9, v0, v1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->setGroupHidden(IIZ)I

    move-result v10

    .line 233
    .local v10, "lastColIx":I
    add-int/lit8 v1, v10, 0x1

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->setColumn(ILjava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public expandColumn(I)V
    .locals 14
    .param p1, "columnIndex"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 262
    invoke-direct {p0, p1, v1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findColInfoIdx(II)I

    move-result v11

    .line 263
    .local v11, "idx":I
    const/4 v0, -0x1

    if-ne v11, v0, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    invoke-direct {p0, v11}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->isColumnGroupCollapsed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-direct {p0, v11}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findStartOfColumnOutlineGroup(I)I

    move-result v13

    .line 274
    .local v13, "startIdx":I
    invoke-direct {p0, v11}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findEndOfColumnOutlineGroup(I)I

    move-result v9

    .line 283
    .local v9, "endIdx":I
    invoke-direct {p0, v9}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v8

    .line 284
    .local v8, "columnInfo":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-direct {p0, v11}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->isColumnGroupHiddenByParent(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 285
    invoke-virtual {v8}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v12

    .line 286
    .local v12, "outlineLevel":I
    move v10, v13

    .local v10, "i":I
    :goto_1
    if-gt v10, v9, :cond_3

    .line 287
    invoke-direct {p0, v10}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v7

    .line 288
    .local v7, "ci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-virtual {v7}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v0

    if-ne v12, v0, :cond_2

    .line 289
    invoke-virtual {v7, v1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setHidden(Z)V

    .line 286
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 294
    .end local v7    # "ci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    .end local v10    # "i":I
    .end local v12    # "outlineLevel":I
    :cond_3
    invoke-virtual {v8}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getLastColumn()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->setColumn(ILjava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public findColumnInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    .locals 4
    .param p1, "columnIndex"    # I

    .prologue
    .line 505
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 506
    .local v2, "nInfos":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 507
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v0

    .line 508
    .local v0, "ci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->containsColumn(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 512
    .end local v0    # "ci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    :goto_1
    return-object v0

    .line 506
    .restart local v0    # "ci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 512
    .end local v0    # "ci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getMaxOutlineLevel()I
    .locals 5

    .prologue
    .line 515
    const/4 v3, 0x0

    .line 516
    .local v3, "result":I
    iget-object v4, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 517
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 518
    invoke-direct {p0, v2}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v0

    .line 519
    .local v0, "columnInfoRecord":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 517
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 521
    .end local v0    # "columnInfoRecord":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    :cond_0
    return v3
.end method

.method getNumColumns()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOutlineLevel(I)I
    .locals 2
    .param p1, "columnIndex"    # I

    .prologue
    .line 524
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findColumnInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v0

    .line 525
    .local v0, "ci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    if-eqz v0, :cond_0

    .line 526
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v1

    .line 528
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public groupColumnRange(IIZ)V
    .locals 11
    .param p1, "fromColumnIx"    # I
    .param p2, "toColumnIx"    # I
    .param p3, "indent"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 481
    const/4 v8, 0x0

    .line 482
    .local v8, "colInfoSearchStartIdx":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-gt v1, p2, :cond_2

    .line 483
    const/4 v9, 0x1

    .line 484
    .local v9, "level":I
    invoke-direct {p0, v1, v8}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findColInfoIdx(II)I

    move-result v7

    .line 485
    .local v7, "colInfoIdx":I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_0

    .line 486
    invoke-direct {p0, v7}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v9

    .line 487
    if-eqz p3, :cond_1

    .line 488
    add-int/lit8 v9, v9, 0x1

    .line 492
    :goto_1
    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 493
    const/4 v0, 0x7

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 494
    add-int/lit8 v0, v7, -0x1

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 496
    :cond_0
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->setColumn(ILjava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 482
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 490
    :cond_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 498
    .end local v7    # "colInfoIdx":I
    .end local v9    # "level":I
    :cond_2
    return-void
.end method

.method public insertColumn(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)V
    .locals 2
    .param p1, "col"    # Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    .prologue
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

    .prologue
    .line 304
    const/4 v3, 0x0

    .line 305
    .local v3, "ci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    const/4 v15, 0x0

    .line 307
    .local v15, "k":I
    const/4 v15, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v15, v5, :cond_0

    .line 308
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    .line 309
    .local v19, "tci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->containsColumn(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 310
    move-object/from16 v3, v19

    .line 319
    .end local v19    # "tci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    :cond_0
    if-nez v3, :cond_3

    .line 321
    new-instance v2, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    invoke-direct {v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;-><init>()V

    .line 323
    .local v2, "nci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setFirstColumn(I)V

    .line 324
    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setLastColumn(I)V

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .line 325
    invoke-static/range {v2 .. v7}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->setColumnInfoFields(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Ljava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 326
    .end local v3    # "ci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->insertColumn(ILorg/apache/poi/hssf/record/ColumnInfoRecord;)V

    .line 327
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->attemptMergeColInfoRecords(I)V

    .line 387
    .end local v2    # "nci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    :cond_1
    :goto_1
    return-void

    .line 313
    .restart local v3    # "ci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    .restart local v19    # "tci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    :cond_2
    invoke-virtual/range {v19 .. v19}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getFirstColumn()I

    move-result v5

    move/from16 v0, p1

    if-gt v5, v0, :cond_0

    .line 307
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 331
    .end local v19    # "tci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    :cond_3
    if-eqz p2, :cond_5

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getXFIndex()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Short;->shortValue()S

    move-result v6

    if-eq v5, v6, :cond_5

    const/16 v18, 0x1

    .line 332
    .local v18, "styleChanged":Z
    :goto_2
    if-eqz p3, :cond_6

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getColumnWidth()I

    move-result v5

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->shortValue()S

    move-result v6

    if-eq v5, v6, :cond_6

    const/16 v20, 0x1

    .line 333
    .local v20, "widthChanged":Z
    :goto_3
    if-eqz p4, :cond_7

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v5

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v5, v6, :cond_7

    const/16 v17, 0x1

    .line 334
    .local v17, "levelChanged":Z
    :goto_4
    if-eqz p5, :cond_8

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getHidden()Z

    move-result v5

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eq v5, v6, :cond_8

    const/4 v14, 0x1

    .line 335
    .local v14, "hiddenChanged":Z
    :goto_5
    if-eqz p6, :cond_9

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getCollapsed()Z

    move-result v5

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eq v5, v6, :cond_9

    const/4 v12, 0x1

    .line 337
    .local v12, "collapsedChanged":Z
    :goto_6
    if-nez v18, :cond_4

    if-nez v20, :cond_4

    if-nez v17, :cond_4

    if-nez v14, :cond_4

    if-eqz v12, :cond_a

    :cond_4
    const/4 v13, 0x1

    .line 338
    .local v13, "columnChanged":Z
    :goto_7
    if-eqz v13, :cond_1

    .line 343
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getFirstColumn()I

    move-result v5

    move/from16 v0, p1

    if-ne v5, v0, :cond_b

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getLastColumn()I

    move-result v5

    move/from16 v0, p1

    if-ne v5, v0, :cond_b

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 345
    invoke-static/range {v3 .. v8}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->setColumnInfoFields(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Ljava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 346
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->attemptMergeColInfoRecords(I)V

    goto :goto_1

    .line 331
    .end local v12    # "collapsedChanged":Z
    .end local v13    # "columnChanged":Z
    .end local v14    # "hiddenChanged":Z
    .end local v17    # "levelChanged":Z
    .end local v18    # "styleChanged":Z
    .end local v20    # "widthChanged":Z
    :cond_5
    const/16 v18, 0x0

    goto :goto_2

    .line 332
    .restart local v18    # "styleChanged":Z
    :cond_6
    const/16 v20, 0x0

    goto :goto_3

    .line 333
    .restart local v20    # "widthChanged":Z
    :cond_7
    const/16 v17, 0x0

    goto :goto_4

    .line 334
    .restart local v17    # "levelChanged":Z
    :cond_8
    const/4 v14, 0x0

    goto :goto_5

    .line 335
    .restart local v14    # "hiddenChanged":Z
    :cond_9
    const/4 v12, 0x0

    goto :goto_6

    .line 337
    .restart local v12    # "collapsedChanged":Z
    :cond_a
    const/4 v13, 0x0

    goto :goto_7

    .line 350
    .restart local v13    # "columnChanged":Z
    :cond_b
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getFirstColumn()I

    move-result v5

    move/from16 v0, p1

    if-eq v5, v0, :cond_c

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getLastColumn()I

    move-result v5

    move/from16 v0, p1

    if-ne v5, v0, :cond_e

    .line 353
    :cond_c
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getFirstColumn()I

    move-result v5

    move/from16 v0, p1

    if-ne v5, v0, :cond_d

    .line 354
    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v3, v5}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setFirstColumn(I)V

    .line 359
    :goto_8
    invoke-static {v3}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->copyColInfo(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v2

    .line 361
    .restart local v2    # "nci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setFirstColumn(I)V

    .line 362
    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setLastColumn(I)V

    move-object v4, v2

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 363
    invoke-static/range {v4 .. v9}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->setColumnInfoFields(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Ljava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 365
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->insertColumn(ILorg/apache/poi/hssf/record/ColumnInfoRecord;)V

    .line 366
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->attemptMergeColInfoRecords(I)V

    goto/16 :goto_1

    .line 356
    .end local v2    # "nci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    :cond_d
    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v3, v5}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setLastColumn(I)V

    .line 357
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 369
    :cond_e
    move-object v11, v3

    .line 370
    .local v11, "ciStart":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-static {v3}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->copyColInfo(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v4

    .line 371
    .local v4, "ciMid":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-static {v3}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->copyColInfo(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v10

    .line 372
    .local v10, "ciEnd":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getLastColumn()I

    move-result v16

    .line 374
    .local v16, "lastcolumn":I
    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v11, v5}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setLastColumn(I)V

    .line 376
    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setFirstColumn(I)V

    .line 377
    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setLastColumn(I)V

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 378
    invoke-static/range {v4 .. v9}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->setColumnInfoFields(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Ljava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 379
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v4}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->insertColumn(ILorg/apache/poi/hssf/record/ColumnInfoRecord;)V

    .line 381
    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v10, v5}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setFirstColumn(I)V

    .line 382
    move/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setLastColumn(I)V

    .line 383
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v10}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->insertColumn(ILorg/apache/poi/hssf/record/ColumnInfoRecord;)V

    goto/16 :goto_1
.end method

.method public visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V
    .locals 6
    .param p1, "rv"    # Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;

    .prologue
    .line 111
    iget-object v4, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 112
    .local v3, "nItems":I
    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 126
    :cond_0
    return-void

    .line 115
    :cond_1
    const/4 v1, 0x0

    .line 116
    .local v1, "cirPrev":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 117
    iget-object v4, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    .line 118
    .local v0, "cir":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    invoke-interface {p1, v0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 119
    if-eqz v1, :cond_2

    invoke-static {v1, v0}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate$CIRComparator;->compareColInfos(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Lorg/apache/poi/hssf/record/ColumnInfoRecord;)I

    move-result v4

    if-lez v4, :cond_2

    .line 122
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Column info records are out of order"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 124
    :cond_2
    move-object v1, v0

    .line 116
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
