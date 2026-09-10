.class public final Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;
.super Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;
.source "MergedCellsTable.java"


# static fields
.field private static MAX_MERGED_REGIONS:I


# instance fields
.field private final _mergedRegions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const/16 v0, 0x403

    sput v0, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->MAX_MERGED_REGIONS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

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

    .line 104
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/MergeCellsRecord;->getNumAreas()S

    move-result v0

    .line 105
    .local v0, "nRegions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 106
    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/MergeCellsRecord;->getAreaAt(I)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v2

    .line 107
    .local v2, "cra":Lorg/apache/poi/ss/util/CellRangeAddress;
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->_mergedRegions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    .end local v2    # "cra":Lorg/apache/poi/ss/util/CellRangeAddress;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private checkIndex(I)V
    .locals 3
    .param p1, "index"    # I

    .line 122
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->_mergedRegions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 126
    return-void

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Specified CF index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is outside the allowable range (0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->_mergedRegions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addArea(IIII)V
    .locals 2
    .param p1, "rowFrom"    # I
    .param p2, "colFrom"    # I
    .param p3, "rowTo"    # I
    .param p4, "colTo"    # I

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
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public get(I)Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1
    .param p1, "index"    # I

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

    .line 133
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->_mergedRegions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRecordSize()I
    .locals 5

    .line 62
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->_mergedRegions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 63
    .local v0, "nRegions":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 65
    const/4 v1, 0x0

    return v1

    .line 67
    :cond_0
    sget v1, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->MAX_MERGED_REGIONS:I

    div-int v2, v0, v1

    .line 68
    .local v2, "nMergedCellsRecords":I
    rem-int v3, v0, v1

    .line 70
    .local v3, "nLeftoverMergedRegions":I
    invoke-static {v1}, Lorg/apache/poi/ss/util/CellRangeAddressList;->getEncodedSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    mul-int v1, v1, v2

    add-int/lit8 v1, v1, 0x4

    invoke-static {v3}, Lorg/apache/poi/ss/util/CellRangeAddressList;->getEncodedSize(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 73
    .local v1, "result":I
    return v1
.end method

.method public read(Lorg/apache/poi/hssf/model/RecordStream;)V
    .locals 5
    .param p1, "rs"    # Lorg/apache/poi/hssf/model/RecordStream;

    .line 49
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->_mergedRegions:Ljava/util/List;

    .line 50
    .local v0, "temp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/util/CellRangeAddress;>;"
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/apache/poi/hssf/record/MergeCellsRecord;

    if-ne v1, v2, :cond_1

    .line 51
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/MergeCellsRecord;

    .line 52
    .local v1, "mcr":Lorg/apache/poi/hssf/record/MergeCellsRecord;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/MergeCellsRecord;->getNumAreas()S

    move-result v2

    .line 53
    .local v2, "nRegions":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 54
    invoke-virtual {v1, v3}, Lorg/apache/poi/hssf/record/MergeCellsRecord;->getAreaAt(I)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v4

    .line 55
    .local v4, "cra":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    .end local v4    # "cra":Lorg/apache/poi/ss/util/CellRangeAddress;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 57
    .end local v1    # "mcr":Lorg/apache/poi/hssf/record/MergeCellsRecord;
    .end local v2    # "nRegions":I
    .end local v3    # "i":I
    :cond_0
    goto :goto_0

    .line 58
    :cond_1
    return-void
.end method

.method public remove(I)V
    .locals 1
    .param p1, "index"    # I

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

    .line 77
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->_mergedRegions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 78
    .local v0, "nRegions":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 80
    return-void

    .line 83
    :cond_0
    sget v1, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->MAX_MERGED_REGIONS:I

    div-int v2, v0, v1

    .line 84
    .local v2, "nFullMergedCellsRecords":I
    rem-int v1, v0, v1

    .line 85
    .local v1, "nLeftoverMergedRegions":I
    new-array v3, v0, [Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 86
    .local v3, "cras":[Lorg/apache/poi/ss/util/CellRangeAddress;
    iget-object v4, p0, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->_mergedRegions:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 88
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 89
    sget v5, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->MAX_MERGED_REGIONS:I

    mul-int v6, v4, v5

    .line 90
    .local v6, "startIx":I
    new-instance v7, Lorg/apache/poi/hssf/record/MergeCellsRecord;

    invoke-direct {v7, v3, v6, v5}, Lorg/apache/poi/hssf/record/MergeCellsRecord;-><init>([Lorg/apache/poi/ss/util/CellRangeAddress;II)V

    invoke-interface {p1, v7}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 88
    .end local v6    # "startIx":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 92
    .end local v4    # "i":I
    :cond_1
    if-lez v1, :cond_2

    .line 93
    sget v4, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->MAX_MERGED_REGIONS:I

    mul-int v4, v4, v2

    .line 94
    .local v4, "startIx":I
    new-instance v5, Lorg/apache/poi/hssf/record/MergeCellsRecord;

    invoke-direct {v5, v3, v4, v1}, Lorg/apache/poi/hssf/record/MergeCellsRecord;-><init>([Lorg/apache/poi/ss/util/CellRangeAddress;II)V

    invoke-interface {p1, v5}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 96
    .end local v4    # "startIx":I
    :cond_2
    return-void
.end method
