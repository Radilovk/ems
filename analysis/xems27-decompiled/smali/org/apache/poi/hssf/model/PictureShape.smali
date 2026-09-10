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
    .locals 4
    .param p1, "hssfShape"    # Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .param p2, "shapeId"    # I

    .line 95
    move-object v0, p1

    .line 97
    .local v0, "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    new-instance v1, Lorg/apache/poi/hssf/record/ObjRecord;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/ObjRecord;-><init>()V

    .line 98
    .local v1, "obj":Lorg/apache/poi/hssf/record/ObjRecord;
    new-instance v2, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    invoke-direct {v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;-><init>()V

    .line 99
    .local v2, "c":Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;
    move-object v3, v0

    check-cast v3, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getShapeType()I

    move-result v3

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setObjectType(S)V

    .line 100
    invoke-virtual {p0, p2}, Lorg/apache/poi/hssf/model/PictureShape;->getCmoObjectId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setObjectId(I)V

    .line 101
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setLocked(Z)V

    .line 102
    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setPrintable(Z)V

    .line 103
    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setAutofill(Z)V

    .line 104
    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setAutoline(Z)V

    .line 105
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setReserved2(I)V

    .line 106
    new-instance v3, Lorg/apache/poi/hssf/record/EndSubRecord;

    invoke-direct {v3}, Lorg/apache/poi/hssf/record/EndSubRecord;-><init>()V

    .line 108
    .local v3, "e":Lorg/apache/poi/hssf/record/EndSubRecord;
    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 109
    invoke-virtual {v1, v3}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 111
    return-object v1
.end method

.method private createSpContainer(Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;I)Lorg/apache/poi/ddf/EscherContainerRecord;
    .locals 10
    .param p1, "hssfShape"    # Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;
    .param p2, "shapeId"    # I

    .line 52
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFPicture;

    .line 54
    .local v0, "shape":Lorg/apache/poi/hssf/usermodel/HSSFPicture;
    new-instance v1, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v1}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    .line 55
    .local v1, "spContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    new-instance v2, Lorg/apache/poi/ddf/EscherSpRecord;

    invoke-direct {v2}, Lorg/apache/poi/ddf/EscherSpRecord;-><init>()V

    .line 56
    .local v2, "sp":Lorg/apache/poi/ddf/EscherSpRecord;
    new-instance v3, Lorg/apache/poi/ddf/EscherOptRecord;

    invoke-direct {v3}, Lorg/apache/poi/ddf/EscherOptRecord;-><init>()V

    .line 58
    .local v3, "opt":Lorg/apache/poi/ddf/EscherOptRecord;
    new-instance v4, Lorg/apache/poi/ddf/EscherClientDataRecord;

    invoke-direct {v4}, Lorg/apache/poi/ddf/EscherClientDataRecord;-><init>()V

    .line 60
    .local v4, "clientData":Lorg/apache/poi/ddf/EscherClientDataRecord;
    const/16 v5, -0xffc

    invoke-virtual {v1, v5}, Lorg/apache/poi/ddf/EscherContainerRecord;->setRecordId(S)V

    .line 61
    const/16 v5, 0xf

    invoke-virtual {v1, v5}, Lorg/apache/poi/ddf/EscherContainerRecord;->setOptions(S)V

    .line 62
    const/16 v5, -0xff6

    invoke-virtual {v2, v5}, Lorg/apache/poi/ddf/EscherSpRecord;->setRecordId(S)V

    .line 63
    const/16 v5, 0x4b2

    invoke-virtual {v2, v5}, Lorg/apache/poi/ddf/EscherSpRecord;->setOptions(S)V

    .line 65
    invoke-virtual {v2, p2}, Lorg/apache/poi/ddf/EscherSpRecord;->setShapeId(I)V

    .line 66
    const/16 v5, 0xa00

    invoke-virtual {v2, v5}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    .line 67
    const/16 v5, -0xff5

    invoke-virtual {v3, v5}, Lorg/apache/poi/ddf/EscherOptRecord;->setRecordId(S)V

    .line 69
    new-instance v5, Lorg/apache/poi/ddf/EscherSimpleProperty;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getPictureIndex()I

    move-result v6

    const/16 v7, 0x104

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {v5, v7, v8, v9, v6}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SZZI)V

    invoke-virtual {v3, v5}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 72
    invoke-virtual {p0, v0, v3}, Lorg/apache/poi/hssf/model/PictureShape;->addStandardOptions(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/ddf/EscherOptRecord;)I

    .line 73
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getAnchor()Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    move-result-object v5

    .line 74
    .local v5, "userAnchor":Lorg/apache/poi/hssf/usermodel/HSSFAnchor;
    invoke-virtual {v5}, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;->isHorizontallyFlipped()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 75
    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherSpRecord;->getFlags()I

    move-result v6

    or-int/lit8 v6, v6, 0x40

    invoke-virtual {v2, v6}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    .line 76
    :cond_0
    invoke-virtual {v5}, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;->isVerticallyFlipped()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 77
    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherSpRecord;->getFlags()I

    move-result v6

    or-int/lit16 v6, v6, 0x80

    invoke-virtual {v2, v6}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    .line 78
    :cond_1
    invoke-virtual {p0, v5}, Lorg/apache/poi/hssf/model/PictureShape;->createAnchor(Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v6

    .line 79
    .local v6, "anchor":Lorg/apache/poi/ddf/EscherRecord;
    const/16 v7, -0xfef

    invoke-virtual {v4, v7}, Lorg/apache/poi/ddf/EscherClientDataRecord;->setRecordId(S)V

    .line 80
    invoke-virtual {v4, v8}, Lorg/apache/poi/ddf/EscherClientDataRecord;->setOptions(S)V

    .line 82
    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 83
    invoke-virtual {v1, v3}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 84
    invoke-virtual {v1, v6}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 85
    invoke-virtual {v1, v4}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 87
    return-object v1
.end method


# virtual methods
.method public getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/apache/poi/hssf/model/PictureShape;->objRecord:Lorg/apache/poi/hssf/record/ObjRecord;

    return-object v0
.end method

.method public getSpContainer()Lorg/apache/poi/ddf/EscherContainerRecord;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/apache/poi/hssf/model/PictureShape;->spContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    return-object v0
.end method
