.class public final Lorg/apache/poi/hssf/record/MergeCellsRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "MergeCellsRecord.java"


# static fields
.field public static final sid:S = 0xe5s


# instance fields
.field private final _numberOfRegions:I

.field private _regions:[Lorg/apache/poi/ss/util/CellRangeAddress;

.field private final _startIndex:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 4
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 46
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 47
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    .line 48
    .local v0, "nRegions":I
    new-array v1, v0, [Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 49
    .local v1, "cras":[Lorg/apache/poi/ss/util/CellRangeAddress;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 50
    new-instance v3, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {v3, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    aput-object v3, v1, v2

    .line 49
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 52
    .end local v2    # "i":I
    :cond_0
    iput v0, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_numberOfRegions:I

    .line 53
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_startIndex:I

    .line 54
    iput-object v1, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_regions:[Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 55
    return-void
.end method

.method public constructor <init>([Lorg/apache/poi/ss/util/CellRangeAddress;II)V
    .locals 0
    .param p1, "regions"    # [Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "startIndex"    # I
    .param p3, "numberOfRegions"    # I

    .line 37
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_regions:[Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 39
    iput p2, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_startIndex:I

    .line 40
    iput p3, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_numberOfRegions:I

    .line 41
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 5

    .line 106
    iget v0, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_numberOfRegions:I

    .line 107
    .local v0, "nRegions":I
    new-array v1, v0, [Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 108
    .local v1, "clonedRegions":[Lorg/apache/poi/ss/util/CellRangeAddress;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 109
    iget-object v3, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_regions:[Lorg/apache/poi/ss/util/CellRangeAddress;

    iget v4, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_startIndex:I

    add-int/2addr v4, v2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellRangeAddress;->copy()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v3

    aput-object v3, v1, v2

    .line 108
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Lorg/apache/poi/hssf/record/MergeCellsRecord;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v0}, Lorg/apache/poi/hssf/record/MergeCellsRecord;-><init>([Lorg/apache/poi/ss/util/CellRangeAddress;II)V

    return-object v2
.end method

.method public getAreaAt(I)Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 2
    .param p1, "index"    # I

    .line 69
    iget-object v0, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_regions:[Lorg/apache/poi/ss/util/CellRangeAddress;

    iget v1, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_startIndex:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 73
    iget v0, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_numberOfRegions:I

    invoke-static {v0}, Lorg/apache/poi/ss/util/CellRangeAddressList;->getEncodedSize(I)I

    move-result v0

    return v0
.end method

.method public getNumAreas()S
    .locals 1

    .line 62
    iget v0, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_numberOfRegions:I

    int-to-short v0, v0

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 77
    const/16 v0, 0xe5

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 4
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 81
    iget v0, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_numberOfRegions:I

    .line 82
    .local v0, "nItems":I
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 83
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_numberOfRegions:I

    if-ge v1, v2, :cond_0

    .line 84
    iget-object v2, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_regions:[Lorg/apache/poi/ss/util/CellRangeAddress;

    iget v3, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_startIndex:I

    add-int/2addr v3, v1

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 89
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 91
    .local v0, "retval":Ljava/lang/StringBuffer;
    const-string v1, "[MERGEDCELLS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    const-string v3, "     .numregions ="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MergeCellsRecord;->getNumAreas()S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_0
    iget v4, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_numberOfRegions:I

    if-ge v3, v4, :cond_0

    .line 94
    iget-object v4, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_regions:[Lorg/apache/poi/ss/util/CellRangeAddress;

    iget v5, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_startIndex:I

    add-int/2addr v5, v3

    aget-object v4, v4, v5

    .line 96
    .local v4, "r":Lorg/apache/poi/ss/util/CellRangeAddress;
    const-string v5, "     .rowfrom ="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    const-string v5, "     .rowto   ="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    const-string v5, "     .colfrom ="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    const-string v5, "     .colto   ="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    .end local v4    # "r":Lorg/apache/poi/ss/util/CellRangeAddress;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 101
    .end local v3    # "k":I
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
