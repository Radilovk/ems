.class public final Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
.super Ljava/lang/Object;
.source "HSSFPatriarch.java"

# interfaces
.implements Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;
.implements Lorg/apache/poi/ss/usermodel/Drawing;


# instance fields
.field private _boundAggregate:Lorg/apache/poi/hssf/record/EscherAggregate;

.field private final _mainSpgrContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

.field private final _shapes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/usermodel/HSSFShape;",
            ">;"
        }
    .end annotation
.end field

.field private final _sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

.field private final _spgrRecord:Lorg/apache/poi/ddf/EscherSpgrRecord;


# direct methods
.method constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/record/EscherAggregate;)V
    .locals 2
    .param p1, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p2, "boundAggregate"    # Lorg/apache/poi/hssf/record/EscherAggregate;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_shapes:Ljava/util/List;

    .line 82
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 83
    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_boundAggregate:Lorg/apache/poi/hssf/record/EscherAggregate;

    .line 84
    invoke-virtual {p2}, Lorg/apache/poi/hssf/record/EscherAggregate;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildContainers()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_mainSpgrContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    .line 85
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_boundAggregate:Lorg/apache/poi/hssf/record/EscherAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/EscherAggregate;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildContainers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    .line 87
    .local v0, "spContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    const/16 v1, -0xff7

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherSpgrRecord;

    iput-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_spgrRecord:Lorg/apache/poi/ddf/EscherSpgrRecord;

    .line 88
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->buildShapeTree()V

    .line 89
    return-void
.end method

.method static createPatriarch(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    .locals 4
    .param p0, "patriarch"    # Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    .param p1, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 100
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    new-instance v1, Lorg/apache/poi/hssf/record/EscherAggregate;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/record/EscherAggregate;-><init>(Z)V

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/record/EscherAggregate;)V

    .line 101
    .local v0, "newPatriarch":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->afterCreate()V

    .line 102
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/usermodel/HSSFShape;

    .line 104
    .local v2, "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    instance-of v3, v2, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    if-eqz v3, :cond_0

    .line 105
    move-object v3, v2

    check-cast v3, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    invoke-virtual {v3, v0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->cloneShape(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)Lorg/apache/poi/hssf/usermodel/HSSFShape;

    move-result-object v3

    .local v3, "newShape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    goto :goto_1

    .line 107
    .end local v3    # "newShape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    :cond_0
    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->cloneShape()Lorg/apache/poi/hssf/usermodel/HSSFShape;

    move-result-object v3

    .line 109
    .restart local v3    # "newShape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    :goto_1
    invoke-direct {v0, v3}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->onCreate(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 110
    invoke-virtual {v0, v3}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->addShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 111
    .end local v2    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .end local v3    # "newShape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    goto :goto_0

    .line 112
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v0
.end method

.method private onCreate(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V
    .locals 3
    .param p1, "shape"    # Lorg/apache/poi/hssf/usermodel/HSSFShape;

    .line 377
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_boundAggregate:Lorg/apache/poi/hssf/record/EscherAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/EscherAggregate;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildContainers()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    .line 380
    .local v0, "spgrContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v1

    .line 381
    .local v1, "spContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->newShapeId()I

    move-result v2

    .line 382
    .local v2, "shapeId":I
    invoke-virtual {p1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->setShapeId(I)V

    .line 384
    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 385
    invoke-virtual {p1, p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->afterInsert(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V

    .line 386
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->setFlipFlags(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 387
    return-void
.end method

.method private setFlipFlags(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V
    .locals 2
    .param p1, "shape"    # Lorg/apache/poi/hssf/usermodel/HSSFShape;

    .line 546
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v0

    const/16 v1, -0xff6

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherSpRecord;

    .line 547
    .local v0, "sp":Lorg/apache/poi/ddf/EscherSpRecord;
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getAnchor()Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;->isHorizontallyFlipped()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 548
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSpRecord;->getFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x40

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    .line 550
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getAnchor()Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;->isVerticallyFlipped()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 551
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSpRecord;->getFlags()I

    move-result v1

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    .line 553
    :cond_1
    return-void
.end method


# virtual methods
.method protected _getBoundAggregate()Lorg/apache/poi/hssf/record/EscherAggregate;
    .locals 1

    .line 500
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_boundAggregate:Lorg/apache/poi/hssf/record/EscherAggregate;

    return-object v0
.end method

.method public addShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V
    .locals 1
    .param p1, "shape"    # Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 372
    invoke-virtual {p1, p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->setPatriarch(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V

    .line 373
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_shapes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    return-void
.end method

.method afterCreate()V
    .locals 4

    .line 150
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getDrawingManager()Lorg/apache/poi/hssf/model/DrawingManager2;

    move-result-object v0

    .line 151
    .local v0, "drawingManager":Lorg/apache/poi/hssf/model/DrawingManager2;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/DrawingManager2;->findNewDrawingGroupId()S

    move-result v1

    .line 152
    .local v1, "dgId":S
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_boundAggregate:Lorg/apache/poi/hssf/record/EscherAggregate;

    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/record/EscherAggregate;->setDgId(S)V

    .line 153
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_boundAggregate:Lorg/apache/poi/hssf/record/EscherAggregate;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->newShapeId()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/EscherAggregate;->setMainSpRecordId(I)V

    .line 154
    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/DrawingManager2;->incrementDrawingsSaved()V

    .line 155
    return-void
.end method

.method buildShapeTree()V
    .locals 7

    .line 530
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_boundAggregate:Lorg/apache/poi/hssf/record/EscherAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/EscherAggregate;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v0

    .line 531
    .local v0, "dgContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    if-nez v0, :cond_0

    .line 532
    return-void

    .line 534
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildContainers()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherContainerRecord;

    .line 535
    .local v1, "spgrConrainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildContainers()Ljava/util/List;

    move-result-object v2

    .line 537
    .local v2, "spgrChildren":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ddf/EscherContainerRecord;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 538
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ddf/EscherContainerRecord;

    .line 539
    .local v4, "spContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    if-eqz v3, :cond_1

    .line 540
    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_boundAggregate:Lorg/apache/poi/hssf/record/EscherAggregate;

    iget-object v6, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v6}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getRootDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v6

    invoke-static {v4, v5, p0, v6}, Lorg/apache/poi/hssf/usermodel/HSSFShapeFactory;->createShapeTree(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/EscherAggregate;Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 537
    .end local v4    # "spContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 543
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method public clear()V
    .locals 3

    .line 417
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_shapes:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 418
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

    .line 419
    .local v2, "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->removeShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;)Z

    .line 420
    .end local v2    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    goto :goto_0

    .line 421
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public containsChart()Z
    .locals 7

    .line 445
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_boundAggregate:Lorg/apache/poi/hssf/record/EscherAggregate;

    const/16 v1, -0xff5

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/EscherAggregate;->findFirstWithId(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherOptRecord;

    .line 447
    .local v0, "optRecord":Lorg/apache/poi/ddf/EscherOptRecord;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 449
    return v1

    .line 452
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherOptRecord;->getEscherProperties()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherProperty;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 453
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ddf/EscherProperty;

    .line 454
    .local v3, "prop":Lorg/apache/poi/ddf/EscherProperty;
    invoke-virtual {v3}, Lorg/apache/poi/ddf/EscherProperty;->getPropertyNumber()S

    move-result v4

    const/16 v5, 0x380

    if-ne v4, v5, :cond_1

    invoke-virtual {v3}, Lorg/apache/poi/ddf/EscherProperty;->isComplex()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 455
    move-object v4, v3

    check-cast v4, Lorg/apache/poi/ddf/EscherComplexProperty;

    .line 456
    .local v4, "cp":Lorg/apache/poi/ddf/EscherComplexProperty;
    invoke-virtual {v4}, Lorg/apache/poi/ddf/EscherComplexProperty;->getComplexData()[B

    move-result-object v5

    invoke-static {v5}, Lorg/apache/poi/util/StringUtil;->getFromUnicodeLE([B)Ljava/lang/String;

    move-result-object v5

    .line 458
    .local v5, "str":Ljava/lang/String;
    const-string v6, "Chart 1\u0000"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 459
    const/4 v1, 0x1

    return v1

    .line 462
    .end local v3    # "prop":Lorg/apache/poi/ddf/EscherProperty;
    .end local v4    # "cp":Lorg/apache/poi/ddf/EscherComplexProperty;
    .end local v5    # "str":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 464
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherProperty;>;"
    :cond_2
    return v1
.end method

.method public countOfAllChildren()I
    .locals 4

    .line 394
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_shapes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 395
    .local v0, "count":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_shapes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hssf/usermodel/HSSFShape;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 396
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/usermodel/HSSFShape;

    .line 397
    .local v2, "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->countOfAllChildren()I

    move-result v3

    add-int/2addr v0, v3

    .line 398
    .end local v2    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    goto :goto_0

    .line 399
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hssf/usermodel/HSSFShape;>;"
    :cond_0
    return v0
.end method

.method public createAnchor(IIIIIIII)Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;
    .locals 12
    .param p1, "dx1"    # I
    .param p2, "dy1"    # I
    .param p3, "dx2"    # I
    .param p4, "dy2"    # I
    .param p5, "col1"    # I
    .param p6, "row1"    # I
    .param p7, "col2"    # I
    .param p8, "row2"    # I

    .line 518
    new-instance v9, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    move/from16 v10, p5

    int-to-short v5, v10

    move/from16 v11, p7

    int-to-short v7, v11

    move-object v0, v9

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v6, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;-><init>(IIIISISI)V

    return-object v9
.end method

.method public bridge synthetic createAnchor(IIIIIIII)Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # I
    .param p8, "x7"    # I

    .line 60
    invoke-virtual/range {p0 .. p8}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->createAnchor(IIIIIIII)Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    move-result-object v0

    return-object v0
.end method

.method public createCellComment(Lorg/apache/poi/ss/usermodel/ClientAnchor;)Lorg/apache/poi/hssf/usermodel/HSSFComment;
    .locals 1
    .param p1, "anchor"    # Lorg/apache/poi/ss/usermodel/ClientAnchor;

    .line 357
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->createComment(Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)Lorg/apache/poi/hssf/usermodel/HSSFComment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createCellComment(Lorg/apache/poi/ss/usermodel/ClientAnchor;)Lorg/apache/poi/ss/usermodel/Comment;
    .locals 1
    .param p1, "x0"    # Lorg/apache/poi/ss/usermodel/ClientAnchor;

    .line 60
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->createCellComment(Lorg/apache/poi/ss/usermodel/ClientAnchor;)Lorg/apache/poi/hssf/usermodel/HSSFComment;

    move-result-object v0

    return-object v0
.end method

.method public createChart(Lorg/apache/poi/ss/usermodel/ClientAnchor;)Lorg/apache/poi/ss/usermodel/Chart;
    .locals 2
    .param p1, "anchor"    # Lorg/apache/poi/ss/usermodel/ClientAnchor;

    .line 522
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NotImplemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method createComboBox(Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;
    .locals 2
    .param p1, "anchor"    # Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    .line 350
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFCombobox;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/hssf/usermodel/HSSFCombobox;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    .line 351
    .local v0, "shape":Lorg/apache/poi/hssf/usermodel/HSSFCombobox;
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->addShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 352
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->onCreate(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 353
    return-object v0
.end method

.method public createComment(Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)Lorg/apache/poi/hssf/usermodel/HSSFComment;
    .locals 2
    .param p1, "anchor"    # Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    .line 338
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFComment;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/hssf/usermodel/HSSFComment;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    .line 339
    .local v0, "shape":Lorg/apache/poi/hssf/usermodel/HSSFComment;
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->addShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 340
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->onCreate(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 341
    return-object v0
.end method

.method public createGroup(Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;)Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;
    .locals 2
    .param p1, "anchor"    # Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    .line 165
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    .line 166
    .local v0, "group":Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->addShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 167
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->onCreate(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 168
    return-object v0
.end method

.method public createObjectData(Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;II)Lorg/apache/poi/hssf/usermodel/HSSFObjectData;
    .locals 12
    .param p1, "anchor"    # Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;
    .param p2, "storageId"    # I
    .param p3, "pictureIndex"    # I

    .line 233
    new-instance v0, Lorg/apache/poi/hssf/record/ObjRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/ObjRecord;-><init>()V

    .line 235
    .local v0, "obj":Lorg/apache/poi/hssf/record/ObjRecord;
    new-instance v1, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;-><init>()V

    .line 236
    .local v1, "ftCmo":Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setObjectType(S)V

    .line 238
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setLocked(Z)V

    .line 239
    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setPrintable(Z)V

    .line 240
    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setAutofill(Z)V

    .line 241
    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setAutoline(Z)V

    .line 242
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setReserved1(I)V

    .line 243
    invoke-virtual {v1, v3}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setReserved2(I)V

    .line 244
    invoke-virtual {v1, v3}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setReserved3(I)V

    .line 245
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 248
    new-instance v3, Lorg/apache/poi/hssf/record/FtCfSubRecord;

    invoke-direct {v3}, Lorg/apache/poi/hssf/record/FtCfSubRecord;-><init>()V

    .line 249
    .local v3, "ftCf":Lorg/apache/poi/hssf/record/FtCfSubRecord;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getAllPictures()Ljava/util/List;

    move-result-object v4

    add-int/lit8 v5, p3, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hssf/usermodel/HSSFPictureData;

    .line 250
    .local v4, "pictData":Lorg/apache/poi/hssf/usermodel/HSSFPictureData;
    invoke-virtual {v4}, Lorg/apache/poi/hssf/usermodel/HSSFPictureData;->getFormat()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 260
    :pswitch_0
    const/16 v5, 0x9

    invoke-virtual {v3, v5}, Lorg/apache/poi/hssf/record/FtCfSubRecord;->setFlags(S)V

    goto :goto_0

    .line 254
    :pswitch_1
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lorg/apache/poi/hssf/record/FtCfSubRecord;->setFlags(S)V

    .line 255
    nop

    .line 263
    :goto_0
    invoke-virtual {v0, v3}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 265
    new-instance v5, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;

    invoke-direct {v5}, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;-><init>()V

    .line 266
    .local v5, "ftPioGrbit":Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;
    invoke-virtual {v5, v2, v2}, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->setFlagByBit(IZ)V

    .line 267
    invoke-virtual {v0, v5}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 269
    new-instance v2, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;

    invoke-direct {v2}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;-><init>()V

    .line 270
    .local v2, "ftPictFmla":Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;
    const/4 v6, 0x5

    new-array v6, v6, [B

    fill-array-data v6, :array_0

    invoke-virtual {v2, v6}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->setUnknownFormulaData([B)V

    .line 271
    const-string v6, "Paket"

    invoke-virtual {v2, v6}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->setOleClassname(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v2, p2}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->setStorageId(I)V

    .line 274
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 275
    new-instance v6, Lorg/apache/poi/hssf/record/EndSubRecord;

    invoke-direct {v6}, Lorg/apache/poi/hssf/record/EndSubRecord;-><init>()V

    invoke-virtual {v0, v6}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 277
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MBD"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 280
    .local v6, "entryName":Ljava/lang/String;
    const/4 v7, 0x0

    :try_start_0
    iget-object v8, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v8}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getRootDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v8

    .line 281
    .local v8, "dn":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    if-eqz v8, :cond_0

    .line 282
    invoke-virtual {v8, v6}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v9

    check-cast v9, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v9

    .line 285
    .local v8, "oleRoot":Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    nop

    .line 288
    new-instance v9, Lorg/apache/poi/hssf/usermodel/HSSFPicture;

    invoke-direct {v9, v7, p1}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    move-object v7, v9

    .line 289
    .local v7, "shape":Lorg/apache/poi/hssf/usermodel/HSSFPicture;
    invoke-virtual {v7, p3}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->setPictureIndex(I)V

    .line 290
    invoke-virtual {v7}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v9

    .line 291
    .local v9, "spContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    const/16 v10, -0xff6

    invoke-virtual {v9, v10}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v10

    check-cast v10, Lorg/apache/poi/ddf/EscherSpRecord;

    .line 292
    .local v10, "spRecord":Lorg/apache/poi/ddf/EscherSpRecord;
    invoke-virtual {v10}, Lorg/apache/poi/ddf/EscherSpRecord;->getFlags()I

    move-result v11

    or-int/lit8 v11, v11, 0x10

    invoke-virtual {v10, v11}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    .line 294
    new-instance v11, Lorg/apache/poi/hssf/usermodel/HSSFObjectData;

    invoke-direct {v11, v9, v0, v8}, Lorg/apache/poi/hssf/usermodel/HSSFObjectData;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V

    .line 295
    .local v11, "oleShape":Lorg/apache/poi/hssf/usermodel/HSSFObjectData;
    invoke-virtual {p0, v11}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->addShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 296
    invoke-direct {p0, v11}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->onCreate(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 299
    return-object v11

    .line 281
    .end local v7    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFPicture;
    .end local v9    # "spContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    .end local v10    # "spRecord":Lorg/apache/poi/ddf/EscherSpRecord;
    .end local v11    # "oleShape":Lorg/apache/poi/hssf/usermodel/HSSFObjectData;
    .local v8, "dn":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    :cond_0
    :try_start_1
    new-instance v9, Ljava/io/FileNotFoundException;

    invoke-direct {v9}, Ljava/io/FileNotFoundException;-><init>()V

    .end local v0    # "obj":Lorg/apache/poi/hssf/record/ObjRecord;
    .end local v1    # "ftCmo":Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;
    .end local v2    # "ftPictFmla":Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;
    .end local v3    # "ftCf":Lorg/apache/poi/hssf/record/FtCfSubRecord;
    .end local v4    # "pictData":Lorg/apache/poi/hssf/usermodel/HSSFPictureData;
    .end local v5    # "ftPioGrbit":Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;
    .end local v6    # "entryName":Ljava/lang/String;
    .end local p1    # "anchor":Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;
    .end local p2    # "storageId":I
    .end local p3    # "pictureIndex":I
    throw v9
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 283
    .end local v8    # "dn":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .restart local v0    # "obj":Lorg/apache/poi/hssf/record/ObjRecord;
    .restart local v1    # "ftCmo":Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;
    .restart local v2    # "ftPictFmla":Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;
    .restart local v3    # "ftCf":Lorg/apache/poi/hssf/record/FtCfSubRecord;
    .restart local v4    # "pictData":Lorg/apache/poi/hssf/usermodel/HSSFPictureData;
    .restart local v5    # "ftPioGrbit":Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;
    .restart local v6    # "entryName":Ljava/lang/String;
    .restart local p1    # "anchor":Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;
    .restart local p2    # "storageId":I
    .restart local p3    # "pictureIndex":I
    :catch_0
    move-exception v8

    .line 284
    .local v7, "oleRoot":Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .local v8, "e":Ljava/io/FileNotFoundException;
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "trying to add ole shape without actually adding data first - use HSSFWorkbook.addOlePackage first"

    invoke-direct {v9, v10, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public createPicture(Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;I)Lorg/apache/poi/hssf/usermodel/HSSFPicture;
    .locals 2
    .param p1, "anchor"    # Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;
    .param p2, "pictureIndex"    # I

    .line 200
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFPicture;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    .line 201
    .local v0, "shape":Lorg/apache/poi/hssf/usermodel/HSSFPicture;
    invoke-virtual {v0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->setPictureIndex(I)V

    .line 202
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->addShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 204
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->onCreate(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 205
    return-object v0
.end method

.method public createPicture(Lorg/apache/poi/ss/usermodel/ClientAnchor;I)Lorg/apache/poi/hssf/usermodel/HSSFPicture;
    .locals 1
    .param p1, "anchor"    # Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .param p2, "pictureIndex"    # I

    .line 218
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    invoke-virtual {p0, v0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->createPicture(Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;I)Lorg/apache/poi/hssf/usermodel/HSSFPicture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createPicture(Lorg/apache/poi/ss/usermodel/ClientAnchor;I)Lorg/apache/poi/ss/usermodel/Picture;
    .locals 1
    .param p1, "x0"    # Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .param p2, "x1"    # I

    .line 60
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->createPicture(Lorg/apache/poi/ss/usermodel/ClientAnchor;I)Lorg/apache/poi/hssf/usermodel/HSSFPicture;

    move-result-object v0

    return-object v0
.end method

.method public createPolygon(Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;)Lorg/apache/poi/hssf/usermodel/HSSFPolygon;
    .locals 2
    .param p1, "anchor"    # Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    .line 310
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    .line 311
    .local v0, "shape":Lorg/apache/poi/hssf/usermodel/HSSFPolygon;
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->addShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 312
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->onCreate(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 313
    return-object v0
.end method

.method public createSimpleShape(Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;)Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;
    .locals 2
    .param p1, "anchor"    # Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    .line 184
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    .line 185
    .local v0, "shape":Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->addShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 187
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->onCreate(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 188
    return-object v0
.end method

.method public createTextbox(Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;)Lorg/apache/poi/hssf/usermodel/HSSFTextbox;
    .locals 2
    .param p1, "anchor"    # Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    .line 324
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    .line 325
    .local v0, "shape":Lorg/apache/poi/hssf/usermodel/HSSFTextbox;
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->addShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 326
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->onCreate(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 327
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

    .line 364
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_shapes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .locals 1

    .line 560
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    return-object v0
.end method

.method public getX1()I
    .locals 1

    .line 471
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_spgrRecord:Lorg/apache/poi/ddf/EscherSpgrRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSpgrRecord;->getRectX1()I

    move-result v0

    return v0
.end method

.method public getX2()I
    .locals 1

    .line 485
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_spgrRecord:Lorg/apache/poi/ddf/EscherSpgrRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSpgrRecord;->getRectX2()I

    move-result v0

    return v0
.end method

.method public getY1()I
    .locals 1

    .line 478
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_spgrRecord:Lorg/apache/poi/ddf/EscherSpgrRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSpgrRecord;->getRectY1()I

    move-result v0

    return v0
.end method

.method public getY2()I
    .locals 1

    .line 492
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_spgrRecord:Lorg/apache/poi/ddf/EscherSpgrRecord;

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

    .line 556
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_shapes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method newShapeId()I
    .locals 4

    .line 427
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getDrawingManager()Lorg/apache/poi/hssf/model/DrawingManager2;

    move-result-object v0

    .line 428
    .local v0, "dm":Lorg/apache/poi/hssf/model/DrawingManager2;
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_boundAggregate:Lorg/apache/poi/hssf/record/EscherAggregate;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/EscherAggregate;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v1

    const/16 v2, -0xff8

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherDgRecord;

    .line 430
    .local v1, "dg":Lorg/apache/poi/ddf/EscherDgRecord;
    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherDgRecord;->getDrawingGroupId()S

    move-result v2

    .line 431
    .local v2, "drawingGroupId":S
    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/hssf/model/DrawingManager2;->allocateShapeId(SLorg/apache/poi/ddf/EscherDgRecord;)I

    move-result v3

    return v3
.end method

.method protected preSerialize()V
    .locals 8

    .line 120
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_boundAggregate:Lorg/apache/poi/hssf/record/EscherAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/EscherAggregate;->getTailRecords()Ljava/util/Map;

    move-result-object v0

    .line 124
    .local v0, "tailRecords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/poi/hssf/record/NoteRecord;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 125
    .local v1, "coordinates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/NoteRecord;

    .line 126
    .local v3, "rec":Lorg/apache/poi/hssf/record/NoteRecord;
    new-instance v4, Lorg/apache/poi/hssf/util/CellReference;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/NoteRecord;->getRow()I

    move-result v5

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/NoteRecord;->getColumn()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lorg/apache/poi/hssf/util/CellReference;-><init>(II)V

    invoke-virtual {v4}, Lorg/apache/poi/hssf/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, "noteRef":Ljava/lang/String;
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 131
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v3    # "rec":Lorg/apache/poi/hssf/record/NoteRecord;
    .end local v4    # "noteRef":Ljava/lang/String;
    goto :goto_0

    .line 129
    .restart local v3    # "rec":Lorg/apache/poi/hssf/record/NoteRecord;
    .restart local v4    # "noteRef":Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found multiple cell comments for cell "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 134
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "rec":Lorg/apache/poi/hssf/record/NoteRecord;
    .end local v4    # "noteRef":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public removeShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;)Z
    .locals 2
    .param p1, "shape"    # Lorg/apache/poi/hssf/usermodel/HSSFShape;

    .line 141
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_mainSpgrContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->removeChildRecord(Lorg/apache/poi/ddf/EscherRecord;)Z

    move-result v0

    .line 142
    .local v0, "isRemoved":Z
    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p1, p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->afterRemove(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V

    .line 144
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_shapes:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 146
    :cond_0
    return v0
.end method

.method public setCoordinates(IIII)V
    .locals 1
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I

    .line 407
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_spgrRecord:Lorg/apache/poi/ddf/EscherSpgrRecord;

    invoke-virtual {v0, p2}, Lorg/apache/poi/ddf/EscherSpgrRecord;->setRectY1(I)V

    .line 408
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_spgrRecord:Lorg/apache/poi/ddf/EscherSpgrRecord;

    invoke-virtual {v0, p4}, Lorg/apache/poi/ddf/EscherSpgrRecord;->setRectY2(I)V

    .line 409
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_spgrRecord:Lorg/apache/poi/ddf/EscherSpgrRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ddf/EscherSpgrRecord;->setRectX1(I)V

    .line 410
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_spgrRecord:Lorg/apache/poi/ddf/EscherSpgrRecord;

    invoke-virtual {v0, p3}, Lorg/apache/poi/ddf/EscherSpgrRecord;->setRectX2(I)V

    .line 411
    return-void
.end method
