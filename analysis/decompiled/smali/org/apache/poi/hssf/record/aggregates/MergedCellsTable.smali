.class public final Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;
.super Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;
.source "MergedCellsTable.java"


# static fields
.field private static MAX_MERGED_REGIONS:I


# instance fields
.field private final _mergedRegions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0x403

    sput v0, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->MAX_MERGED_REGIONS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->_mergedRegions:Ljava/util/List;

    .line 42
    return-void
.end method

.method private addMergeCellsRecord(Lorg/apache/poi/hssf/record/MergeCellsRecord;)V
    .locals 4
    .param p1, "mcr"    # Lorg/apache/poi/hssf/record/MergeCellsRecord;

    .prologue
    .line 104
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/MergeCellsRecord;->getNumAreas()S

    move-result v2

    .line 105
    .local v2, "nRegions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 106
    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/MergeCellsRecord;->getAreaAt(I)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    .line 107
    .local v0, "cra":Lorg/apache/poi/ss/util/CellRangeAddress;
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->_mergedRegions:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    .end local v0    # "cra":Lorg/apache/poi/ss/util/CellRangeAddress;
    :cond_0
    return-void
.end method

.method private checkIndex(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 122
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->_mergedRegions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Specified CF index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is outside the allowable range (0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->_mergedRegions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_1
    return-void
.end method


# virtual methods
.method public addArea(IIII)V
    .locals 2
    .param p1, "rowFrom"    # I
    .param p2, "colFrom"    # I
    .param p3, "rowTo"    # I
    .param p4, "colTo"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->_mergedRegions:Ljava/util/List;

    new-instance v1, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {v1, p1, p3, p2, p4}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    return-void
.end method

.method public addRecords([Lorg/apache/poi/hssf/record/MergeCellsRecord;)V
    .locals 2
    .param p1, "mcrs"    # [Lorg/apache/poi/hssf/record/MergeCellsRecord;

    .prologue
    .line 98
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 99
    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->addMergeCellsRecord(Lorg/apache/poi/hssf/record/MergeCellsRecord;)V

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    return-void
.end method

.method public get(I)Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->checkIndex(I)V

    .line 113
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->_mergedRegions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/util/CellRangeAddress;

    return-object v0
.end method

.method public getNumberOfMergedRegions()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->_mergedRegions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRecordSize()I
    .locals 6

    .prologue
    .line 62
    iget-object v4, p0, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->_mergedRegions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 63
    .local v2, "nRegions":I
    const/4 v4, 0x1

    if-ge v2, v4, :cond_0

    .line 65
    const/4 v3, 0x0

    .line 73
    :goto_0
    return v3

    .line 67
    :cond_0
    sget v4, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->MAX_MERGED_REGIONS:I

    div-int v1, v2, v4

    .line 68
    .local v1, "nMergedCellsRecords":I
    sget v4, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->MAX_MERGED_REGIONS:I

    rem-int v0, v2, v4

    .line 70
    .local v0, "nLeftoverMergedRegions":I
    sget v4, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->MAX_MERGED_REGIONS:I

    invoke-static {v4}, Lorg/apache/poi/ss/util/CellRangeAddressList;->getEncodedSize(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    mul-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x4

    invoke-static {v0}, Lorg/apache/poi/ss/util/CellRangeAddressList;->getEncodedSize(I)I

    move-result v5

    add-int v3, v4, v5

    .line 73
    .local v3, "result":I
    goto :goto_0
.end method

.method public read(Lorg/apache/poi/hssf/model/RecordStream;)V
    .locals 7
    .param p1, "rs"    # Lorg/apache/poi/hssf/model/RecordStream;

    .prologue
    .line 49
    iget-object v4, p0, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->_mergedRegions:Ljava/util/List;

    .line 50
    .local v4, "temp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/util/CellRangeAddress;>;"
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lorg/apache/poi/hssf/record/MergeCellsRecord;

    if-ne v5, v6, :cond_1

    .line 51
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/MergeCellsRecord;

    .line 52
    .local v2, "mcr":Lorg/apache/poi/hssf/record/MergeCellsRecord;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/MergeCellsRecord;->getNumAreas()S

    move-result v3

    .line 53
    .local v3, "nRegions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 54
    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/record/MergeCellsRecord;->getAreaAt(I)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    .line 55
    .local v0, "cra":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    .end local v0    # "cra":Lorg/apache/poi/ss/util/CellRangeAddress;
    .end local v1    # "i":I
    .end local v2    # "mcr":Lorg/apache/poi/hssf/record/MergeCellsRecord;
    .end local v3    # "nRegions":I
    :cond_1
    return-void
.end method

.method public remove(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->checkIndex(I)V

    .line 118
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->_mergedRegions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 119
    return-void
.end method

.method public visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V
    .locals 8
    .param p1, "rv"    # Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;

    .prologue
    .line 77
    iget-object v6, p0, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->_mergedRegions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 78
    .local v4, "nRegions":I
    const/4 v6, 0x1

    if-ge v4, v6, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    sget v6, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->MAX_MERGED_REGIONS:I

    div-int v2, v4, v6

    .line 84
    .local v2, "nFullMergedCellsRecords":I
    sget v6, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->MAX_MERGED_REGIONS:I

    rem-int v3, v4, v6

    .line 85
    .local v3, "nLeftoverMergedRegions":I
    new-array v0, v4, [Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 86
    .local v0, "cras":[Lorg/apache/poi/ss/util/CellRangeAddress;
    iget-object v6, p0, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->_mergedRegions:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 88
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 89
    sget v6, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->MAX_MERGED_REGIONS:I

    mul-int v5, v1, v6

    .line 90
    .local v5, "startIx":I
    new-instance v6, Lorg/apache/poi/hssf/record/MergeCellsRecord;

    sget v7, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->MAX_MERGED_REGIONS:I

    invoke-direct {v6, v0, v5, v7}, Lorg/apache/poi/hssf/record/MergeCellsRecord;-><init>([Lorg/apache/poi/ss/util/CellRangeAddress;II)V

    invoke-interface {p1, v6}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 92
    .end local v5    # "startIx":I
    :cond_2
    if-lez v3, :cond_0

    .line 93
    sget v6, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->MAX_MERGED_REGIONS:I

    mul-int v5, v2, v6

    .line 94
    .restart local v5    # "startIx":I
    new-instance v6, Lorg/apache/poi/hssf/record/MergeCellsRecord;

    invoke-direct {v6, v0, v5, v3}, Lorg/apache/poi/hssf/record/MergeCellsRecord;-><init>([Lorg/apache/poi/ss/util/CellRangeAddress;II)V

    invoke-interface {p1, v6}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    goto :goto_0
.end method
