.class public Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;
.super Lorg/apache/poi/hssf/usermodel/HSSFShape;
.source "HSSFShapeGroup.java"

# interfaces
.implements Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;


# instance fields
.field private _spgrRecord:Lorg/apache/poi/ddf/EscherSpgrRecord;

.field private final shapes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/usermodel/HSSFShape;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;)V
    .locals 5
    .param p1, "spgrContainer"    # Lorg/apache/poi/ddf/EscherContainerRecord;
    .param p2, "objRecord"    # Lorg/apache/poi/hssf/record/ObjRecord;

    .line 37
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFShape;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->shapes:Ljava/util/List;

    .line 40
    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildContainers()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    .line 41
    .local v0, "spContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherSpgrRecord;

    iput-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->_spgrRecord:Lorg/apache/poi/ddf/EscherSpgrRecord;

    .line 42
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildRecords()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherRecord;

    .line 43
    .local v2, "ch":Lorg/apache/poi/ddf/EscherRecord;
    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v3

    const/16 v4, -0xff1

    if-eq v3, v4, :cond_1

    const/16 v4, -0xff0

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 47
    :cond_0
    new-instance v3, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    move-object v4, v2

    check-cast v4, Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-direct {v3, v4}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;-><init>(Lorg/apache/poi/ddf/EscherClientAnchorRecord;)V

    iput-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->anchor:Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    .line 48
    goto :goto_1

    .line 50
    :cond_1
    new-instance v3, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;

    move-object v4, v2

    check-cast v4, Lorg/apache/poi/ddf/EscherChildAnchorRecord;

    invoke-direct {v3, v4}, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;-><init>(Lorg/apache/poi/ddf/EscherChildAnchorRecord;)V

    iput-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->anchor:Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    .line 53
    .end local v2    # "ch":Lorg/apache/poi/ddf/EscherRecord;
    :goto_1
    goto :goto_0

    .line 54
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V
    .locals 2
    .param p1, "parent"    # Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .param p2, "anchor"    # Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    .line 57
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFShape;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->shapes:Ljava/util/List;

    .line 58
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    const/16 v1, -0xff7

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherSpgrRecord;

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->_spgrRecord:Lorg/apache/poi/ddf/EscherSpgrRecord;

    .line 59
    return-void
.end method

.method private onCreate(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V
    .locals 5
    .param p1, "shape"    # Lorg/apache/poi/hssf/usermodel/HSSFShape;

    .line 136
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->getPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v0

    .line 138
    .local v0, "spContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->getPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->newShapeId()I

    move-result v1

    .line 139
    .local v1, "shapeId":I
    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->setShapeId(I)V

    .line 140
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 141
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->getPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->afterInsert(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V

    .line 143
    instance-of v2, p1, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    const/16 v3, -0xff6

    if-eqz v2, :cond_0

    .line 144
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildContainers()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-virtual {v2, v3}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherSpRecord;

    .local v2, "sp":Lorg/apache/poi/ddf/EscherSpRecord;
    goto :goto_0

    .line 146
    .end local v2    # "sp":Lorg/apache/poi/ddf/EscherSpRecord;
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherSpRecord;

    .line 148
    .restart local v2    # "sp":Lorg/apache/poi/ddf/EscherSpRecord;
    :goto_0
    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherSpRecord;->getFlags()I

    move-result v3

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    .line 150
    .end local v0    # "spContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    .end local v1    # "shapeId":I
    .end local v2    # "sp":Lorg/apache/poi/ddf/EscherSpRecord;
    :cond_1
    return-void
.end method


# virtual methods
.method public addShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V
    .locals 1
    .param p1, "shape"    # Lorg/apache/poi/hssf/usermodel/HSSFShape;

    .line 168
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->getPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->setPatriarch(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V

    .line 169
    invoke-virtual {p1, p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->setParent(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 170
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->shapes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    return-void
.end method

.method afterInsert(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V
    .locals 4
    .param p1, "patriarch"    # Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    .line 317
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_getBoundAggregate()Lorg/apache/poi/hssf/record/EscherAggregate;

    move-result-object v0

    .line 318
    .local v0, "agg":Lorg/apache/poi/hssf/record/EscherAggregate;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v1

    const/16 v2, -0xffc

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherContainerRecord;

    .line 319
    .local v1, "containerRecord":Lorg/apache/poi/ddf/EscherContainerRecord;
    const/16 v2, -0xfef

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/poi/hssf/record/EscherAggregate;->associateShapeToObjRecord(Lorg/apache/poi/ddf/EscherRecord;Lorg/apache/poi/hssf/record/Record;)V

    .line 320
    return-void
.end method

.method protected afterRemove(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V
    .locals 3
    .param p1, "patriarch"    # Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    .line 125
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_getBoundAggregate()Lorg/apache/poi/hssf/record/EscherAggregate;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildContainers()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherContainerRecord;

    const/16 v2, -0xfef

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/EscherAggregate;->removeShapeToObjRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 127
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->shapes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 128
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->shapes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/usermodel/HSSFShape;

    .line 129
    .local v1, "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->removeShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;)Z

    .line 130
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->getPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->afterRemove(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V

    .line 127
    .end local v1    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->shapes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 133
    return-void
.end method

.method public clear()V
    .locals 3

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->shapes:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 270
    .local v0, "copy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/poi/hssf/usermodel/HSSFShape;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/usermodel/HSSFShape;

    .line 271
    .local v2, "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->removeShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;)Z

    .line 272
    .end local v2    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    goto :goto_0

    .line 273
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method protected cloneShape()Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .locals 2

    .line 339
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Use method cloneShape(HSSFPatriarch patriarch)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected cloneShape(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .locals 9
    .param p1, "patriarch"    # Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    .line 343
    new-instance v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v0}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    .line 344
    .local v0, "spgrContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    const/16 v1, -0xffd

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->setRecordId(S)V

    .line 345
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->setOptions(S)V

    .line 346
    new-instance v1, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v1}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    .line 347
    .local v1, "spContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v2

    const/16 v3, -0xffc

    invoke-virtual {v2, v3}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherContainerRecord;

    .line 348
    .local v2, "cont":Lorg/apache/poi/ddf/EscherContainerRecord;
    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->serialize()[B

    move-result-object v3

    .line 349
    .local v3, "inSp":[B
    new-instance v4, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;

    invoke-direct {v4}, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Lorg/apache/poi/ddf/EscherContainerRecord;->fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I

    .line 351
    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 352
    const/4 v4, 0x0

    .line 353
    .local v4, "obj":Lorg/apache/poi/hssf/record/ObjRecord;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 354
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/ObjRecord;->cloneViaReserialise()Lorg/apache/poi/hssf/record/Record;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Lorg/apache/poi/hssf/record/ObjRecord;

    .line 357
    :cond_0
    new-instance v5, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    invoke-direct {v5, v0, v4}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;)V

    .line 358
    .local v5, "group":Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;
    invoke-virtual {v5, p1}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->setPatriarch(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V

    .line 360
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->getChildren()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/hssf/usermodel/HSSFShape;

    .line 362
    .local v7, "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    instance-of v8, v7, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    if-eqz v8, :cond_1

    .line 363
    move-object v8, v7

    check-cast v8, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    invoke-virtual {v8, p1}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->cloneShape(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)Lorg/apache/poi/hssf/usermodel/HSSFShape;

    move-result-object v8

    .local v8, "newShape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    goto :goto_1

    .line 365
    .end local v8    # "newShape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    :cond_1
    invoke-virtual {v7}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->cloneShape()Lorg/apache/poi/hssf/usermodel/HSSFShape;

    move-result-object v8

    .line 367
    .restart local v8    # "newShape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    :goto_1
    invoke-virtual {v5, v8}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->addShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 368
    invoke-direct {v5, v8}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->onCreate(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 369
    .end local v7    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .end local v8    # "newShape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    goto :goto_0

    .line 370
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_2
    return-object v5
.end method

.method public countOfAllChildren()I
    .locals 4

    .line 307
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->shapes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 308
    .local v0, "count":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->shapes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hssf/usermodel/HSSFShape;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 309
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/usermodel/HSSFShape;

    .line 310
    .local v2, "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->countOfAllChildren()I

    move-result v3

    add-int/2addr v0, v3

    .line 311
    .end local v2    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    goto :goto_0

    .line 312
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hssf/usermodel/HSSFShape;>;"
    :cond_0
    return v0
.end method

.method public createGroup(Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;)Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;
    .locals 2
    .param p1, "anchor"    # Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;

    .line 159
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    .line 160
    .local v0, "group":Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;
    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->setParent(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 161
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->setAnchor(Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    .line 162
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->shapes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->onCreate(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 164
    return-object v0
.end method

.method protected createObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;
    .locals 4

    .line 108
    new-instance v0, Lorg/apache/poi/hssf/record/ObjRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/ObjRecord;-><init>()V

    .line 109
    .local v0, "obj":Lorg/apache/poi/hssf/record/ObjRecord;
    new-instance v1, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;-><init>()V

    .line 110
    .local v1, "cmo":Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setObjectType(S)V

    .line 111
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setLocked(Z)V

    .line 112
    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setPrintable(Z)V

    .line 113
    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setAutofill(Z)V

    .line 114
    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setAutoline(Z)V

    .line 115
    new-instance v2, Lorg/apache/poi/hssf/record/GroupMarkerSubRecord;

    invoke-direct {v2}, Lorg/apache/poi/hssf/record/GroupMarkerSubRecord;-><init>()V

    .line 116
    .local v2, "gmo":Lorg/apache/poi/hssf/record/GroupMarkerSubRecord;
    new-instance v3, Lorg/apache/poi/hssf/record/EndSubRecord;

    invoke-direct {v3}, Lorg/apache/poi/hssf/record/EndSubRecord;-><init>()V

    .line 117
    .local v3, "end":Lorg/apache/poi/hssf/record/EndSubRecord;
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 118
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 119
    invoke-virtual {v0, v3}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 120
    return-object v0
.end method

.method public createPicture(Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;I)Lorg/apache/poi/hssf/usermodel/HSSFPicture;
    .locals 3
    .param p1, "anchor"    # Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;
    .param p2, "pictureIndex"    # I

    .line 234
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFPicture;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    .line 235
    .local v0, "shape":Lorg/apache/poi/hssf/usermodel/HSSFPicture;
    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->setParent(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 236
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->setAnchor(Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    .line 237
    invoke-virtual {v0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->setPictureIndex(I)V

    .line 238
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->shapes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->onCreate(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 240
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v1

    const/16 v2, -0xff6

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherSpRecord;

    .line 241
    .local v1, "sp":Lorg/apache/poi/ddf/EscherSpRecord;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getAnchor()Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;->isHorizontallyFlipped()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherSpRecord;->getFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x40

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    .line 244
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getAnchor()Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;->isVerticallyFlipped()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 245
    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherSpRecord;->getFlags()I

    move-result v2

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    .line 247
    :cond_1
    return-object v0
.end method

.method public createPolygon(Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;)Lorg/apache/poi/hssf/usermodel/HSSFPolygon;
    .locals 2
    .param p1, "anchor"    # Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;

    .line 218
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    .line 219
    .local v0, "shape":Lorg/apache/poi/hssf/usermodel/HSSFPolygon;
    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->setParent(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 220
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->setAnchor(Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    .line 221
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->shapes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->onCreate(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 223
    return-object v0
.end method

.method public createShape(Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;)Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;
    .locals 3
    .param p1, "anchor"    # Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;

    .line 180
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    .line 181
    .local v0, "shape":Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;
    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->setParent(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 182
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->setAnchor(Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    .line 183
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->shapes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->onCreate(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 185
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v1

    const/16 v2, -0xff6

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherSpRecord;

    .line 186
    .local v1, "sp":Lorg/apache/poi/ddf/EscherSpRecord;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getAnchor()Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;->isHorizontallyFlipped()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherSpRecord;->getFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x40

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    .line 189
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getAnchor()Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;->isVerticallyFlipped()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherSpRecord;->getFlags()I

    move-result v2

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    .line 192
    :cond_1
    return-object v0
.end method

.method protected createSpContainer()Lorg/apache/poi/ddf/EscherContainerRecord;
    .locals 10

    .line 63
    new-instance v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v0}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    .line 64
    .local v0, "spgrContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    new-instance v1, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v1}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    .line 65
    .local v1, "spContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    new-instance v2, Lorg/apache/poi/ddf/EscherSpgrRecord;

    invoke-direct {v2}, Lorg/apache/poi/ddf/EscherSpgrRecord;-><init>()V

    .line 66
    .local v2, "spgr":Lorg/apache/poi/ddf/EscherSpgrRecord;
    new-instance v3, Lorg/apache/poi/ddf/EscherSpRecord;

    invoke-direct {v3}, Lorg/apache/poi/ddf/EscherSpRecord;-><init>()V

    .line 67
    .local v3, "sp":Lorg/apache/poi/ddf/EscherSpRecord;
    new-instance v4, Lorg/apache/poi/ddf/EscherOptRecord;

    invoke-direct {v4}, Lorg/apache/poi/ddf/EscherOptRecord;-><init>()V

    .line 69
    .local v4, "opt":Lorg/apache/poi/ddf/EscherOptRecord;
    new-instance v5, Lorg/apache/poi/ddf/EscherClientDataRecord;

    invoke-direct {v5}, Lorg/apache/poi/ddf/EscherClientDataRecord;-><init>()V

    .line 71
    .local v5, "clientData":Lorg/apache/poi/ddf/EscherClientDataRecord;
    const/16 v6, -0xffd

    invoke-virtual {v0, v6}, Lorg/apache/poi/ddf/EscherContainerRecord;->setRecordId(S)V

    .line 72
    const/16 v6, 0xf

    invoke-virtual {v0, v6}, Lorg/apache/poi/ddf/EscherContainerRecord;->setOptions(S)V

    .line 73
    const/16 v7, -0xffc

    invoke-virtual {v1, v7}, Lorg/apache/poi/ddf/EscherContainerRecord;->setRecordId(S)V

    .line 74
    invoke-virtual {v1, v6}, Lorg/apache/poi/ddf/EscherContainerRecord;->setOptions(S)V

    .line 75
    const/16 v6, -0xff7

    invoke-virtual {v2, v6}, Lorg/apache/poi/ddf/EscherSpgrRecord;->setRecordId(S)V

    .line 76
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lorg/apache/poi/ddf/EscherSpgrRecord;->setOptions(S)V

    .line 77
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lorg/apache/poi/ddf/EscherSpgrRecord;->setRectX1(I)V

    .line 78
    invoke-virtual {v2, v6}, Lorg/apache/poi/ddf/EscherSpgrRecord;->setRectY1(I)V

    .line 79
    const/16 v7, 0x3ff

    invoke-virtual {v2, v7}, Lorg/apache/poi/ddf/EscherSpgrRecord;->setRectX2(I)V

    .line 80
    const/16 v7, 0xff

    invoke-virtual {v2, v7}, Lorg/apache/poi/ddf/EscherSpgrRecord;->setRectY2(I)V

    .line 81
    const/16 v7, -0xff6

    invoke-virtual {v3, v7}, Lorg/apache/poi/ddf/EscherSpRecord;->setRecordId(S)V

    .line 82
    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Lorg/apache/poi/ddf/EscherSpRecord;->setOptions(S)V

    .line 83
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->getAnchor()Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    move-result-object v7

    instance-of v7, v7, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    if-eqz v7, :cond_0

    .line 84
    const/16 v7, 0x201

    invoke-virtual {v3, v7}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    goto :goto_0

    .line 86
    :cond_0
    const/16 v7, 0x203

    invoke-virtual {v3, v7}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    .line 88
    :goto_0
    const/16 v7, -0xff5

    invoke-virtual {v4, v7}, Lorg/apache/poi/ddf/EscherOptRecord;->setRecordId(S)V

    .line 89
    const/16 v7, 0x23

    invoke-virtual {v4, v7}, Lorg/apache/poi/ddf/EscherOptRecord;->setOptions(S)V

    .line 90
    new-instance v7, Lorg/apache/poi/ddf/EscherBoolProperty;

    const/16 v8, 0x7f

    const v9, 0x40004

    invoke-direct {v7, v8, v9}, Lorg/apache/poi/ddf/EscherBoolProperty;-><init>(SI)V

    invoke-virtual {v4, v7}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 91
    new-instance v7, Lorg/apache/poi/ddf/EscherBoolProperty;

    const/16 v8, 0x3bf

    const/high16 v9, 0x80000

    invoke-direct {v7, v8, v9}, Lorg/apache/poi/ddf/EscherBoolProperty;-><init>(SI)V

    invoke-virtual {v4, v7}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 93
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->getAnchor()Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;->getEscherAnchor()Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v7

    .line 94
    .local v7, "anchor":Lorg/apache/poi/ddf/EscherRecord;
    const/16 v8, -0xfef

    invoke-virtual {v5, v8}, Lorg/apache/poi/ddf/EscherClientDataRecord;->setRecordId(S)V

    .line 95
    invoke-virtual {v5, v6}, Lorg/apache/poi/ddf/EscherClientDataRecord;->setOptions(S)V

    .line 97
    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 98
    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 99
    invoke-virtual {v1, v3}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 100
    invoke-virtual {v1, v4}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 101
    invoke-virtual {v1, v7}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 102
    invoke-virtual {v1, v5}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 103
    return-object v0
.end method

.method public createTextbox(Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;)Lorg/apache/poi/hssf/usermodel/HSSFTextbox;
    .locals 2
    .param p1, "anchor"    # Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;

    .line 202
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    .line 203
    .local v0, "shape":Lorg/apache/poi/hssf/usermodel/HSSFTextbox;
    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->setParent(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 204
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->setAnchor(Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    .line 205
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->shapes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->onCreate(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 207
    return-object v0
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/usermodel/HSSFShape;",
            ">;"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->shapes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getShapeId()I
    .locals 2

    .line 333
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v0

    const/16 v1, -0xffc

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    .line 334
    .local v0, "containerRecord":Lorg/apache/poi/ddf/EscherContainerRecord;
    const/16 v1, -0xff6

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherSpRecord;

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherSpRecord;->getShapeId()I

    move-result v1

    return v1
.end method

.method public getX1()I
    .locals 1

    .line 279
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->_spgrRecord:Lorg/apache/poi/ddf/EscherSpgrRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSpgrRecord;->getRectX1()I

    move-result v0

    return v0
.end method

.method public getX2()I
    .locals 1

    .line 293
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->_spgrRecord:Lorg/apache/poi/ddf/EscherSpgrRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSpgrRecord;->getRectX2()I

    move-result v0

    return v0
.end method

.method public getY1()I
    .locals 1

    .line 286
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->_spgrRecord:Lorg/apache/poi/ddf/EscherSpgrRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSpgrRecord;->getRectY1()I

    move-result v0

    return v0
.end method

.method public getY2()I
    .locals 1

    .line 300
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->_spgrRecord:Lorg/apache/poi/ddf/EscherSpgrRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSpgrRecord;->getRectY2()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/hssf/usermodel/HSSFShape;",
            ">;"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->shapes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public removeShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;)Z
    .locals 2
    .param p1, "shape"    # Lorg/apache/poi/hssf/usermodel/HSSFShape;

    .line 374
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->removeChildRecord(Lorg/apache/poi/ddf/EscherRecord;)Z

    move-result v0

    .line 375
    .local v0, "isRemoved":Z
    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->getPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->afterRemove(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V

    .line 377
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->shapes:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 379
    :cond_0
    return v0
.end method

.method public setCoordinates(IIII)V
    .locals 1
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I

    .line 262
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->_spgrRecord:Lorg/apache/poi/ddf/EscherSpgrRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ddf/EscherSpgrRecord;->setRectX1(I)V

    .line 263
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->_spgrRecord:Lorg/apache/poi/ddf/EscherSpgrRecord;

    invoke-virtual {v0, p3}, Lorg/apache/poi/ddf/EscherSpgrRecord;->setRectX2(I)V

    .line 264
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->_spgrRecord:Lorg/apache/poi/ddf/EscherSpgrRecord;

    invoke-virtual {v0, p2}, Lorg/apache/poi/ddf/EscherSpgrRecord;->setRectY1(I)V

    .line 265
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->_spgrRecord:Lorg/apache/poi/ddf/EscherSpgrRecord;

    invoke-virtual {v0, p4}, Lorg/apache/poi/ddf/EscherSpgrRecord;->setRectY2(I)V

    .line 266
    return-void
.end method

.method setShapeId(I)V
    .locals 4
    .param p1, "shapeId"    # I

    .line 324
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v0

    const/16 v1, -0xffc

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    .line 325
    .local v0, "containerRecord":Lorg/apache/poi/ddf/EscherContainerRecord;
    const/16 v1, -0xff6

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherSpRecord;

    .line 326
    .local v1, "spRecord":Lorg/apache/poi/ddf/EscherSpRecord;
    invoke-virtual {v1, p1}, Lorg/apache/poi/ddf/EscherSpRecord;->setShapeId(I)V

    .line 327
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ObjRecord;->getSubRecords()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    .line 328
    .local v2, "cod":Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;
    rem-int/lit16 v3, p1, 0x400

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setObjectId(I)V

    .line 329
    return-void
.end method
