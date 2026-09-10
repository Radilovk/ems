.class public final Lorg/apache/poi/ddf/EscherDggRecord;
.super Lorg/apache/poi/ddf/EscherRecord;
.source "EscherDggRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;
    }
.end annotation


# static fields
.field private static final MY_COMP:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECORD_DESCRIPTION:Ljava/lang/String; = "MsofbtDgg"

.field public static final RECORD_ID:S = -0xffas


# instance fields
.field private field_1_shapeIdMax:I

.field private field_3_numShapesSaved:I

.field private field_4_drawingsSaved:I

.field private field_5_fileIdClusters:[Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

.field private maxDgId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 230
    new-instance v0, Lorg/apache/poi/ddf/EscherDggRecord$1;

    invoke-direct {v0}, Lorg/apache/poi/ddf/EscherDggRecord$1;-><init>()V

    sput-object v0, Lorg/apache/poi/ddf/EscherDggRecord;->MY_COMP:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherRecord;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public addCluster(II)V
    .locals 1
    .param p1, "dgId"    # I
    .param p2, "numShapedUsed"    # I

    .line 211
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/ddf/EscherDggRecord;->addCluster(IIZ)V

    .line 212
    return-void
.end method

.method public addCluster(IIZ)V
    .locals 2
    .param p1, "dgId"    # I
    .param p2, "numShapedUsed"    # I
    .param p3, "sort"    # Z

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:[Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 224
    .local v0, "clusters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;>;"
    new-instance v1, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    invoke-direct {v1, p1, p2}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    if-eqz p3, :cond_0

    sget-object v1, Lorg/apache/poi/ddf/EscherDggRecord;->MY_COMP:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 226
    :cond_0
    iget v1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->maxDgId:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->maxDgId:I

    .line 227
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    iput-object v1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:[Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    .line 228
    return-void
.end method

.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 8
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "recordFactory"    # Lorg/apache/poi/ddf/EscherRecordFactory;

    .line 68
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherDggRecord;->readHeader([BI)I

    move-result v0

    .line 69
    .local v0, "bytesRemaining":I
    add-int/lit8 v1, p2, 0x8

    .line 70
    .local v1, "pos":I
    const/4 v2, 0x0

    .line 71
    .local v2, "size":I
    add-int v3, v1, v2

    invoke-static {p1, v3}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v3

    iput v3, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_1_shapeIdMax:I

    add-int/lit8 v2, v2, 0x4

    .line 72
    add-int v3, v1, v2

    invoke-static {p1, v3}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    add-int/lit8 v2, v2, 0x4

    .line 73
    add-int v3, v1, v2

    invoke-static {p1, v3}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v3

    iput v3, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_3_numShapesSaved:I

    add-int/lit8 v2, v2, 0x4

    .line 74
    add-int v3, v1, v2

    invoke-static {p1, v3}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v3

    iput v3, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_4_drawingsSaved:I

    add-int/lit8 v2, v2, 0x4

    .line 75
    sub-int v3, v0, v2

    div-int/lit8 v3, v3, 0x8

    new-array v3, v3, [Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    iput-object v3, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:[Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    .line 76
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:[Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    array-length v5, v4

    if-ge v3, v5, :cond_0

    .line 78
    new-instance v5, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    add-int v6, v1, v2

    invoke-static {p1, v6}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v6

    add-int v7, v1, v2

    add-int/lit8 v7, v7, 0x4

    invoke-static {p1, v7}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v7

    invoke-direct {v5, v6, v7}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;-><init>(II)V

    aput-object v5, v4, v3

    .line 79
    iget v4, p0, Lorg/apache/poi/ddf/EscherDggRecord;->maxDgId:I

    iget-object v5, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:[Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->getDrawingGroupId()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lorg/apache/poi/ddf/EscherDggRecord;->maxDgId:I

    .line 80
    add-int/lit8 v2, v2, 0x8

    .line 76
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 82
    .end local v3    # "i":I
    :cond_0
    sub-int/2addr v0, v2

    .line 83
    if-nez v0, :cond_1

    .line 85
    add-int/lit8 v3, v2, 0x8

    add-int/2addr v3, v0

    return v3

    .line 84
    :cond_1
    new-instance v3, Lorg/apache/poi/util/RecordFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expecting no remaining data but got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " byte(s)."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getDrawingsSaved()I
    .locals 1

    .line 184
    iget v0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_4_drawingsSaved:I

    return v0
.end method

.method public getFileIdClusters()[Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;
    .locals 1

    .line 203
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:[Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    return-object v0
.end method

.method public getMaxDrawingGroupId()I
    .locals 1

    .line 195
    iget v0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->maxDgId:I

    return v0
.end method

.method public getNumIdClusters()I
    .locals 1

    .line 172
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:[Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0
.end method

.method public getNumShapesSaved()I
    .locals 1

    .line 176
    iget v0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_3_numShapesSaved:I

    return v0
.end method

.method public getRecordId()S
    .locals 1

    .line 115
    const/16 v0, -0xffa

    return v0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 1

    .line 119
    const-string v0, "Dgg"

    return-object v0
.end method

.method public getRecordSize()I
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:[Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public getShapeIdMax()I
    .locals 1

    .line 158
    iget v0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_1_shapeIdMax:I

    return v0
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 5
    .param p1, "offset"    # I
    .param p2, "data"    # [B
    .param p3, "listener"    # Lorg/apache/poi/ddf/EscherSerializationListener;

    .line 89
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->getRecordId()S

    move-result v0

    invoke-interface {p3, p1, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    .line 91
    move v0, p1

    .line 92
    .local v0, "pos":I
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->getOptions()S

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, v0, 0x2

    .line 93
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->getRecordId()S

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, v0, 0x2

    .line 94
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->getRecordSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    .line 95
    .local v1, "remainingBytes":I
    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 97
    iget v2, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_1_shapeIdMax:I

    invoke-static {p2, v0, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 98
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->getNumIdClusters()I

    move-result v2

    invoke-static {p2, v0, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 99
    iget v2, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_3_numShapesSaved:I

    invoke-static {p2, v0, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 100
    iget v2, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_4_drawingsSaved:I

    invoke-static {p2, v0, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 101
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:[Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 102
    aget-object v3, v3, v2

    invoke-static {v3}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->access$000(Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;)I

    move-result v3

    invoke-static {p2, v0, v3}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 103
    iget-object v3, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:[Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    aget-object v3, v3, v2

    invoke-static {v3}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->access$100(Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;)I

    move-result v3

    invoke-static {p2, v0, v3}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 101
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->getRecordId()S

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->getRecordSize()I

    move-result v3

    invoke-interface {p3, v0, v2, v3, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    .line 107
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->getRecordSize()I

    move-result v2

    return v2
.end method

.method public setDrawingsSaved(I)V
    .locals 0
    .param p1, "drawingsSaved"    # I

    .line 188
    iput p1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_4_drawingsSaved:I

    .line 189
    return-void
.end method

.method public setFileIdClusters([Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;)V
    .locals 0
    .param p1, "fileIdClusters"    # [Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    .line 207
    iput-object p1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:[Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    .line 208
    return-void
.end method

.method public setMaxDrawingGroupId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 199
    iput p1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->maxDgId:I

    .line 200
    return-void
.end method

.method public setNumShapesSaved(I)V
    .locals 0
    .param p1, "numShapesSaved"    # I

    .line 180
    iput p1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_3_numShapesSaved:I

    .line 181
    return-void
.end method

.method public setShapeIdMax(I)V
    .locals 0
    .param p1, "shapeIdMax"    # I

    .line 165
    iput p1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_1_shapeIdMax:I

    .line 166
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 124
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 125
    .local v0, "field_5_string":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:[Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    const/16 v2, 0xa

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:[Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 126
    const-string v3, "  DrawingGroupId"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    iget-object v4, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:[Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    aget-object v4, v4, v1

    invoke-static {v4}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->access$000(Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 128
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 129
    const-string v4, "  NumShapeIdsUsed"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    iget-object v3, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:[Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->access$100(Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "  RecordId: 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, -0xffa

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "  Version: 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->getVersion()S

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "  Instance: 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->getInstance()S

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "  ShapeIdMax: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_1_shapeIdMax:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "  NumIdClusters: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->getNumIdClusters()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "  NumShapesSaved: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_3_numShapesSaved:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "  DrawingsSaved: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_4_drawingsSaved:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "tab"    # Ljava/lang/String;

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->getRecordId()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->getVersion()S

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->getInstance()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/poi/ddf/EscherDggRecord;->formatXmlRecordHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<ShapeIdMax>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_1_shapeIdMax:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "</ShapeIdMax>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<NumIdClusters>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->getNumIdClusters()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "</NumIdClusters>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<NumShapesSaved>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_3_numShapesSaved:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "</NumShapesSaved>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<DrawingsSaved>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_4_drawingsSaved:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "</DrawingsSaved>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
