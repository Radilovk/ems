.class public Lorg/apache/poi/hssf/model/PictureShape;
.super Lorg/apache/poi/hssf/model/AbstractShape;
.source "PictureShape.java"


# instance fields
.field private objRecord:Lorg/apache/poi/hssf/record/ObjRecord;

.field private spContainer:Lorg/apache/poi/ddf/EscherContainerRecord;


# direct methods
.method constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;I)V
    .locals 1
    .param p1, "hssfShape"    # Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;
    .param p2, "shapeId"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/apache/poi/hssf/model/AbstractShape;-><init>()V

    .line 43
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/model/PictureShape;->createSpContainer(Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;I)Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/model/PictureShape;->spContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    .line 44
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/model/PictureShape;->createObjRecord(Lorg/apache/poi/hssf/usermodel/HSSFShape;I)Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/model/PictureShape;->objRecord:Lorg/apache/poi/hssf/record/ObjRecord;

    .line 45
    return-void
.end method

.method private createObjRecord(Lorg/apache/poi/hssf/usermodel/HSSFShape;I)Lorg/apache/poi/hssf/record/ObjRecord;
    .locals 6
    .param p1, "hssfShape"    # Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .param p2, "shapeId"    # I

    .prologue
    const/4 v5, 0x1

    .line 95
    move-object v3, p1

    .line 97
    .local v3, "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    new-instance v2, Lorg/apache/poi/hssf/record/ObjRecord;

    invoke-direct {v2}, Lorg/apache/poi/hssf/record/ObjRecord;-><init>()V

    .line 98
    .local v2, "obj":Lorg/apache/poi/hssf/record/ObjRecord;
    new-instance v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;-><init>()V

    .line 99
    .local v0, "c":Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;
    check-cast v3, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;

    .end local v3    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getShapeType()I

    move-result v4

    int-to-short v4, v4

    invoke-virtual {v0, v4}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setObjectType(S)V

    .line 100
    invoke-virtual {p0, p2}, Lorg/apache/poi/hssf/model/PictureShape;->getCmoObjectId(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setObjectId(I)V

    .line 101
    invoke-virtual {v0, v5}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setLocked(Z)V

    .line 102
    invoke-virtual {v0, v5}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setPrintable(Z)V

    .line 103
    invoke-virtual {v0, v5}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setAutofill(Z)V

    .line 104
    invoke-virtual {v0, v5}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setAutoline(Z)V

    .line 105
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setReserved2(I)V

    .line 106
    new-instance v1, Lorg/apache/poi/hssf/record/EndSubRecord;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/EndSubRecord;-><init>()V

    .line 108
    .local v1, "e":Lorg/apache/poi/hssf/record/EndSubRecord;
    invoke-virtual {v2, v0}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 109
    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 111
    return-object v2
.end method

.method private createSpContainer(Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;I)Lorg/apache/poi/ddf/EscherContainerRecord;
    .locals 12
    .param p1, "hssfShape"    # Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;
    .param p2, "shapeId"    # I

    .prologue
    const/4 v11, 0x0

    .line 52
    move-object v3, p1

    check-cast v3, Lorg/apache/poi/hssf/usermodel/HSSFPicture;

    .line 54
    .local v3, "shape":Lorg/apache/poi/hssf/usermodel/HSSFPicture;
    new-instance v5, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v5}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    .line 55
    .local v5, "spContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    new-instance v4, Lorg/apache/poi/ddf/EscherSpRecord;

    invoke-direct {v4}, Lorg/apache/poi/ddf/EscherSpRecord;-><init>()V

    .line 56
    .local v4, "sp":Lorg/apache/poi/ddf/EscherSpRecord;
    new-instance v2, Lorg/apache/poi/ddf/EscherOptRecord;

    invoke-direct {v2}, Lorg/apache/poi/ddf/EscherOptRecord;-><init>()V

    .line 58
    .local v2, "opt":Lorg/apache/poi/ddf/EscherOptRecord;
    new-instance v1, Lorg/apache/poi/ddf/EscherClientDataRecord;

    invoke-direct {v1}, Lorg/apache/poi/ddf/EscherClientDataRecord;-><init>()V

    .line 60
    .local v1, "clientData":Lorg/apache/poi/ddf/EscherClientDataRecord;
    const/16 v7, -0xffc

    invoke-virtual {v5, v7}, Lorg/apache/poi/ddf/EscherContainerRecord;->setRecordId(S)V

    .line 61
    const/16 v7, 0xf

    invoke-virtual {v5, v7}, Lorg/apache/poi/ddf/EscherContainerRecord;->setOptions(S)V

    .line 62
    const/16 v7, -0xff6

    invoke-virtual {v4, v7}, Lorg/apache/poi/ddf/EscherSpRecord;->setRecordId(S)V

    .line 63
    const/16 v7, 0x4b2

    invoke-virtual {v4, v7}, Lorg/apache/poi/ddf/EscherSpRecord;->setOptions(S)V

    .line 65
    invoke-virtual {v4, p2}, Lorg/apache/poi/ddf/EscherSpRecord;->setShapeId(I)V

    .line 66
    const/16 v7, 0xa00

    invoke-virtual {v4, v7}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    .line 67
    const/16 v7, -0xff5

    invoke-virtual {v2, v7}, Lorg/apache/poi/ddf/EscherOptRecord;->setRecordId(S)V

    .line 69
    new-instance v7, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v8, 0x104

    const/4 v9, 0x1

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getPictureIndex()I

    move-result v10

    invoke-direct {v7, v8, v11, v9, v10}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SZZI)V

    invoke-virtual {v2, v7}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 72
    invoke-virtual {p0, v3, v2}, Lorg/apache/poi/hssf/model/PictureShape;->addStandardOptions(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/ddf/EscherOptRecord;)I

    .line 73
    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getAnchor()Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    move-result-object v6

    .line 74
    .local v6, "userAnchor":Lorg/apache/poi/hssf/usermodel/HSSFAnchor;
    invoke-virtual {v6}, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;->isHorizontallyFlipped()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 75
    invoke-virtual {v4}, Lorg/apache/poi/ddf/EscherSpRecord;->getFlags()I

    move-result v7

    or-int/lit8 v7, v7, 0x40

    invoke-virtual {v4, v7}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    .line 76
    :cond_0
    invoke-virtual {v6}, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;->isVerticallyFlipped()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 77
    invoke-virtual {v4}, Lorg/apache/poi/ddf/EscherSpRecord;->getFlags()I

    move-result v7

    or-int/lit16 v7, v7, 0x80

    invoke-virtual {v4, v7}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    .line 78
    :cond_1
    invoke-virtual {p0, v6}, Lorg/apache/poi/hssf/model/PictureShape;->createAnchor(Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    .line 79
    .local v0, "anchor":Lorg/apache/poi/ddf/EscherRecord;
    const/16 v7, -0xfef

    invoke-virtual {v1, v7}, Lorg/apache/poi/ddf/EscherClientDataRecord;->setRecordId(S)V

    .line 80
    invoke-virtual {v1, v11}, Lorg/apache/poi/ddf/EscherClientDataRecord;->setOptions(S)V

    .line 82
    invoke-virtual {v5, v4}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 83
    invoke-virtual {v5, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 84
    invoke-virtual {v5, v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 85
    invoke-virtual {v5, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 87
    return-object v5
.end method


# virtual methods
.method public getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/apache/poi/hssf/model/PictureShape;->objRecord:Lorg/apache/poi/hssf/record/ObjRecord;

    return-object v0
.end method

.method public getSpContainer()Lorg/apache/poi/ddf/EscherContainerRecord;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/apache/poi/hssf/model/PictureShape;->spContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    return-object v0
.end method
