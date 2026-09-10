.class public Lorg/apache/poi/hssf/model/DrawingManager;
.super Ljava/lang/Object;
.source "DrawingManager.java"


# instance fields
.field dgMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Short;",
            "Lorg/apache/poi/ddf/EscherDgRecord;",
            ">;"
        }
    .end annotation
.end field

.field dgg:Lorg/apache/poi/ddf/EscherDggRecord;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ddf/EscherDggRecord;)V
    .locals 1
    .param p1, "dgg"    # Lorg/apache/poi/ddf/EscherDggRecord;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/DrawingManager;->dgMap:Ljava/util/Map;

    .line 36
    iput-object p1, p0, Lorg/apache/poi/hssf/model/DrawingManager;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    .line 37
    return-void
.end method


# virtual methods
.method public allocateShapeId(S)I
    .locals 8
    .param p1, "drawingGroupId"    # S

    .line 61
    iget-object v0, p0, Lorg/apache/poi/hssf/model/DrawingManager;->dgMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherDgRecord;

    .line 62
    .local v0, "dg":Lorg/apache/poi/ddf/EscherDgRecord;
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherDgRecord;->getLastMSOSPID()I

    move-result v1

    .line 66
    .local v1, "lastShapeId":I
    const/4 v2, 0x0

    .line 67
    .local v2, "newShapeId":I
    rem-int/lit16 v3, v1, 0x400

    const/4 v4, 0x1

    const/16 v5, 0x3ff

    if-ne v3, v5, :cond_0

    .line 71
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/DrawingManager;->findFreeSPIDBlock()I

    move-result v2

    .line 73
    iget-object v3, p0, Lorg/apache/poi/hssf/model/DrawingManager;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    invoke-virtual {v3, p1, v4}, Lorg/apache/poi/ddf/EscherDggRecord;->addCluster(II)V

    goto :goto_2

    .line 79
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lorg/apache/poi/hssf/model/DrawingManager;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    invoke-virtual {v5}, Lorg/apache/poi/ddf/EscherDggRecord;->getFileIdClusters()[Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    move-result-object v5

    array-length v5, v5

    if-ge v3, v5, :cond_3

    .line 81
    iget-object v5, p0, Lorg/apache/poi/hssf/model/DrawingManager;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    invoke-virtual {v5}, Lorg/apache/poi/ddf/EscherDggRecord;->getFileIdClusters()[Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    move-result-object v5

    aget-object v5, v5, v3

    .line 82
    .local v5, "c":Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;
    invoke-virtual {v5}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->getDrawingGroupId()I

    move-result v6

    if-ne v6, p1, :cond_1

    .line 84
    invoke-virtual {v5}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->getNumShapeIdsUsed()I

    move-result v6

    const/16 v7, 0x400

    if-eq v6, v7, :cond_1

    .line 87
    invoke-virtual {v5}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->incrementShapeId()V

    .line 91
    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherDgRecord;->getLastMSOSPID()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 93
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/DrawingManager;->findFreeSPIDBlock()I

    move-result v2

    goto :goto_1

    .line 98
    :cond_2
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherDgRecord;->getLastMSOSPID()I

    move-result v6

    add-int/2addr v6, v4

    move v2, v6

    .line 79
    .end local v5    # "c":Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 103
    .end local v3    # "i":I
    :cond_3
    :goto_2
    iget-object v3, p0, Lorg/apache/poi/hssf/model/DrawingManager;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    invoke-virtual {v3}, Lorg/apache/poi/ddf/EscherDggRecord;->getNumShapesSaved()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v3, v5}, Lorg/apache/poi/ddf/EscherDggRecord;->setNumShapesSaved(I)V

    .line 105
    iget-object v3, p0, Lorg/apache/poi/hssf/model/DrawingManager;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    invoke-virtual {v3}, Lorg/apache/poi/ddf/EscherDggRecord;->getShapeIdMax()I

    move-result v3

    if-lt v2, v3, :cond_4

    .line 109
    iget-object v3, p0, Lorg/apache/poi/hssf/model/DrawingManager;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/poi/ddf/EscherDggRecord;->setShapeIdMax(I)V

    .line 112
    :cond_4
    invoke-virtual {v0, v2}, Lorg/apache/poi/ddf/EscherDgRecord;->setLastMSOSPID(I)V

    .line 114
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherDgRecord;->incrementShapeCount()V

    .line 117
    return v2
.end method

.method public createDgRecord()Lorg/apache/poi/ddf/EscherDgRecord;
    .locals 4

    .line 41
    new-instance v0, Lorg/apache/poi/ddf/EscherDgRecord;

    invoke-direct {v0}, Lorg/apache/poi/ddf/EscherDgRecord;-><init>()V

    .line 42
    .local v0, "dg":Lorg/apache/poi/ddf/EscherDgRecord;
    const/16 v1, -0xff8

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherDgRecord;->setRecordId(S)V

    .line 43
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/DrawingManager;->findNewDrawingGroupId()S

    move-result v1

    .line 44
    .local v1, "dgId":S
    shl-int/lit8 v2, v1, 0x4

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/ddf/EscherDgRecord;->setOptions(S)V

    .line 45
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/apache/poi/ddf/EscherDgRecord;->setNumShapes(I)V

    .line 46
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lorg/apache/poi/ddf/EscherDgRecord;->setLastMSOSPID(I)V

    .line 47
    iget-object v3, p0, Lorg/apache/poi/hssf/model/DrawingManager;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    invoke-virtual {v3, v1, v2}, Lorg/apache/poi/ddf/EscherDggRecord;->addCluster(II)V

    .line 48
    iget-object v2, p0, Lorg/apache/poi/hssf/model/DrawingManager;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherDggRecord;->getDrawingsSaved()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/poi/ddf/EscherDggRecord;->setDrawingsSaved(I)V

    .line 49
    iget-object v2, p0, Lorg/apache/poi/hssf/model/DrawingManager;->dgMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-object v0
.end method

.method drawingGroupExists(S)Z
    .locals 2
    .param p1, "dgId"    # S

    .line 131
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/model/DrawingManager;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherDggRecord;->getFileIdClusters()[Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 133
    iget-object v1, p0, Lorg/apache/poi/hssf/model/DrawingManager;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherDggRecord;->getFileIdClusters()[Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->getDrawingGroupId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 134
    const/4 v1, 0x1

    return v1

    .line 131
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method findFreeSPIDBlock()I
    .locals 2

    .line 141
    iget-object v0, p0, Lorg/apache/poi/hssf/model/DrawingManager;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherDggRecord;->getShapeIdMax()I

    move-result v0

    .line 142
    .local v0, "max":I
    div-int/lit16 v1, v0, 0x400

    add-int/lit8 v1, v1, 0x1

    mul-int/lit16 v1, v1, 0x400

    .line 143
    .local v1, "next":I
    return v1
.end method

.method findNewDrawingGroupId()S
    .locals 2

    .line 123
    const/4 v0, 0x1

    .line 124
    .local v0, "dgId":S
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/DrawingManager;->drawingGroupExists(S)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    add-int/lit8 v1, v0, 0x1

    int-to-short v0, v1

    goto :goto_0

    .line 126
    :cond_0
    return v0
.end method

.method public getDgg()Lorg/apache/poi/ddf/EscherDggRecord;
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/apache/poi/hssf/model/DrawingManager;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    return-object v0
.end method
