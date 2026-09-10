.class public Lorg/apache/poi/hssf/model/DrawingManager2;
.super Ljava/lang/Object;
.source "DrawingManager2.java"


# instance fields
.field dgg:Lorg/apache/poi/ddf/EscherDggRecord;

.field drawingGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherDgRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/ddf/EscherDggRecord;)V
    .locals 1
    .param p1, "dgg"    # Lorg/apache/poi/ddf/EscherDggRecord;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/DrawingManager2;->drawingGroups:Ljava/util/List;

    .line 38
    iput-object p1, p0, Lorg/apache/poi/hssf/model/DrawingManager2;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    .line 39
    return-void
.end method


# virtual methods
.method public allocateShapeId(S)I
    .locals 2
    .param p1, "drawingGroupId"    # S

    .line 69
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/model/DrawingManager2;->getDrawingGroup(I)Lorg/apache/poi/ddf/EscherDgRecord;

    move-result-object v0

    .line 70
    .local v0, "dg":Lorg/apache/poi/ddf/EscherDgRecord;
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hssf/model/DrawingManager2;->allocateShapeId(SLorg/apache/poi/ddf/EscherDgRecord;)I

    move-result v1

    return v1
.end method

.method public allocateShapeId(SLorg/apache/poi/ddf/EscherDgRecord;)I
    .locals 5
    .param p1, "drawingGroupId"    # S
    .param p2, "dg"    # Lorg/apache/poi/ddf/EscherDgRecord;

    .line 80
    iget-object v0, p0, Lorg/apache/poi/hssf/model/DrawingManager2;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherDggRecord;->getNumShapesSaved()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherDggRecord;->setNumShapesSaved(I)V

    .line 83
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/model/DrawingManager2;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherDggRecord;->getFileIdClusters()[Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0x400

    if-ge v0, v1, :cond_2

    .line 85
    iget-object v1, p0, Lorg/apache/poi/hssf/model/DrawingManager2;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherDggRecord;->getFileIdClusters()[Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    move-result-object v1

    aget-object v1, v1, v0

    .line 86
    .local v1, "c":Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;
    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->getDrawingGroupId()I

    move-result v3

    if-ne v3, p1, :cond_1

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->getNumShapeIdsUsed()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 88
    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->getNumShapeIdsUsed()I

    move-result v3

    add-int/lit8 v4, v0, 0x1

    mul-int/lit16 v4, v4, 0x400

    add-int/2addr v3, v4

    .line 89
    .local v3, "result":I
    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->incrementShapeId()V

    .line 90
    invoke-virtual {p2}, Lorg/apache/poi/ddf/EscherDgRecord;->getNumShapes()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, v2}, Lorg/apache/poi/ddf/EscherDgRecord;->setNumShapes(I)V

    .line 91
    invoke-virtual {p2, v3}, Lorg/apache/poi/ddf/EscherDgRecord;->setLastMSOSPID(I)V

    .line 92
    iget-object v2, p0, Lorg/apache/poi/hssf/model/DrawingManager2;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherDggRecord;->getShapeIdMax()I

    move-result v2

    if-lt v3, v2, :cond_0

    .line 93
    iget-object v2, p0, Lorg/apache/poi/hssf/model/DrawingManager2;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v2, v4}, Lorg/apache/poi/ddf/EscherDggRecord;->setShapeIdMax(I)V

    .line 94
    :cond_0
    return v3

    .line 83
    .end local v1    # "c":Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;
    .end local v3    # "result":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lorg/apache/poi/hssf/model/DrawingManager2;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/ddf/EscherDggRecord;->addCluster(II)V

    .line 100
    iget-object v0, p0, Lorg/apache/poi/hssf/model/DrawingManager2;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherDggRecord;->getFileIdClusters()[Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/model/DrawingManager2;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherDggRecord;->getFileIdClusters()[Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->incrementShapeId()V

    .line 101
    invoke-virtual {p2}, Lorg/apache/poi/ddf/EscherDgRecord;->getNumShapes()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Lorg/apache/poi/ddf/EscherDgRecord;->setNumShapes(I)V

    .line 102
    iget-object v0, p0, Lorg/apache/poi/hssf/model/DrawingManager2;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherDggRecord;->getFileIdClusters()[Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    move-result-object v0

    array-length v0, v0

    mul-int/lit16 v0, v0, 0x400

    .line 103
    .local v0, "result":I
    invoke-virtual {p2, v0}, Lorg/apache/poi/ddf/EscherDgRecord;->setLastMSOSPID(I)V

    .line 104
    iget-object v1, p0, Lorg/apache/poi/hssf/model/DrawingManager2;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherDggRecord;->getShapeIdMax()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 105
    iget-object v1, p0, Lorg/apache/poi/hssf/model/DrawingManager2;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherDggRecord;->setShapeIdMax(I)V

    .line 106
    :cond_3
    return v0
.end method

.method public clearDrawingGroups()V
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/apache/poi/hssf/model/DrawingManager2;->drawingGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 46
    return-void
.end method

.method public createDgRecord()Lorg/apache/poi/ddf/EscherDgRecord;
    .locals 4

    .line 50
    new-instance v0, Lorg/apache/poi/ddf/EscherDgRecord;

    invoke-direct {v0}, Lorg/apache/poi/ddf/EscherDgRecord;-><init>()V

    .line 51
    .local v0, "dg":Lorg/apache/poi/ddf/EscherDgRecord;
    const/16 v1, -0xff8

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherDgRecord;->setRecordId(S)V

    .line 52
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/DrawingManager2;->findNewDrawingGroupId()S

    move-result v1

    .line 53
    .local v1, "dgId":S
    shl-int/lit8 v2, v1, 0x4

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/ddf/EscherDgRecord;->setOptions(S)V

    .line 54
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/apache/poi/ddf/EscherDgRecord;->setNumShapes(I)V

    .line 55
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lorg/apache/poi/ddf/EscherDgRecord;->setLastMSOSPID(I)V

    .line 56
    iget-object v3, p0, Lorg/apache/poi/hssf/model/DrawingManager2;->drawingGroups:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v3, p0, Lorg/apache/poi/hssf/model/DrawingManager2;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    invoke-virtual {v3, v1, v2}, Lorg/apache/poi/ddf/EscherDggRecord;->addCluster(II)V

    .line 58
    iget-object v2, p0, Lorg/apache/poi/hssf/model/DrawingManager2;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherDggRecord;->getDrawingsSaved()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/poi/ddf/EscherDggRecord;->setDrawingsSaved(I)V

    .line 59
    return-object v0
.end method

.method drawingGroupExists(S)Z
    .locals 2
    .param p1, "dgId"    # S

    .line 128
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/model/DrawingManager2;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherDggRecord;->getFileIdClusters()[Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 130
    iget-object v1, p0, Lorg/apache/poi/hssf/model/DrawingManager2;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherDggRecord;->getFileIdClusters()[Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->getDrawingGroupId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 131
    const/4 v1, 0x1

    return v1

    .line 128
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method findFreeSPIDBlock()I
    .locals 2

    .line 138
    iget-object v0, p0, Lorg/apache/poi/hssf/model/DrawingManager2;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherDggRecord;->getShapeIdMax()I

    move-result v0

    .line 139
    .local v0, "max":I
    div-int/lit16 v1, v0, 0x400

    add-int/lit8 v1, v1, 0x1

    mul-int/lit16 v1, v1, 0x400

    .line 140
    .local v1, "next":I
    return v1
.end method

.method public findNewDrawingGroupId()S
    .locals 2

    .line 115
    const/4 v0, 0x1

    .line 116
    .local v0, "dgId":S
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/DrawingManager2;->drawingGroupExists(S)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    add-int/lit8 v1, v0, 0x1

    int-to-short v0, v1

    goto :goto_0

    .line 118
    :cond_0
    return v0
.end method

.method public getDgg()Lorg/apache/poi/ddf/EscherDggRecord;
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/apache/poi/hssf/model/DrawingManager2;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    return-object v0
.end method

.method getDrawingGroup(I)Lorg/apache/poi/ddf/EscherDgRecord;
    .locals 2
    .param p1, "drawingGroupId"    # I

    .line 123
    iget-object v0, p0, Lorg/apache/poi/hssf/model/DrawingManager2;->drawingGroups:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherDgRecord;

    return-object v0
.end method

.method public incrementDrawingsSaved()V
    .locals 2

    .line 149
    iget-object v0, p0, Lorg/apache/poi/hssf/model/DrawingManager2;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherDggRecord;->getDrawingsSaved()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherDggRecord;->setDrawingsSaved(I)V

    .line 150
    return-void
.end method
