.class public Lorg/apache/poi/hssf/model/SimpleFilledShape;
.super Lorg/apache/poi/hssf/model/AbstractShape;
.source "SimpleFilledShape.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


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
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/model/SimpleFilledShape;->createSpContainer(Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;I)Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/model/SimpleFilledShape;->spContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    .line 44
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/model/SimpleFilledShape;->createObjRecord(Lorg/apache/poi/hssf/usermodel/HSSFShape;I)Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/model/SimpleFilledShape;->objRecord:Lorg/apache/poi/hssf/record/ObjRecord;

    .line 45
    return-void
.end method

.method private createObjRecord(Lorg/apache/poi/hssf/usermodel/HSSFShape;I)Lorg/apache/poi/hssf/record/ObjRecord;
    .locals 4
    .param p1, "hssfShape"    # Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .param p2, "shapeId"    # I

    .line 100
    move-object v0, p1

    .line 102
    .local v0, "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    new-instance v1, Lorg/apache/poi/hssf/record/ObjRecord;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/ObjRecord;-><init>()V

    .line 103
    .local v1, "obj":Lorg/apache/poi/hssf/record/ObjRecord;
    new-instance v2, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    invoke-direct {v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;-><init>()V

    .line 104
    .local v2, "c":Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;
    move-object v3, v0

    check-cast v3, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getShapeType()I

    move-result v3

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setObjectType(S)V

    .line 105
    invoke-virtual {p0, p2}, Lorg/apache/poi/hssf/model/SimpleFilledShape;->getCmoObjectId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setObjectId(I)V

    .line 106
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setLocked(Z)V

    .line 107
    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setPrintable(Z)V

    .line 108
    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setAutofill(Z)V

    .line 109
    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setAutoline(Z)V

    .line 110
    new-instance v3, Lorg/apache/poi/hssf/record/EndSubRecord;

    invoke-direct {v3}, Lorg/apache/poi/hssf/record/EndSubRecord;-><init>()V

    .line 112
    .local v3, "e":Lorg/apache/poi/hssf/record/EndSubRecord;
    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 113
    invoke-virtual {v1, v3}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 115
    return-object v1
.end method

.method private createSpContainer(Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;I)Lorg/apache/poi/ddf/EscherContainerRecord;
    .locals 8
    .param p1, "hssfShape"    # Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;
    .param p2, "shapeId"    # I

    .line 55
    move-object v0, p1

    .line 57
    .local v0, "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    new-instance v1, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v1}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    .line 58
    .local v1, "spContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    new-instance v2, Lorg/apache/poi/ddf/EscherSpRecord;

    invoke-direct {v2}, Lorg/apache/poi/ddf/EscherSpRecord;-><init>()V

    .line 59
    .local v2, "sp":Lorg/apache/poi/ddf/EscherSpRecord;
    new-instance v3, Lorg/apache/poi/ddf/EscherOptRecord;

    invoke-direct {v3}, Lorg/apache/poi/ddf/EscherOptRecord;-><init>()V

    .line 60
    .local v3, "opt":Lorg/apache/poi/ddf/EscherOptRecord;
    new-instance v4, Lorg/apache/poi/ddf/EscherClientDataRecord;

    invoke-direct {v4}, Lorg/apache/poi/ddf/EscherClientDataRecord;-><init>()V

    .line 62
    .local v4, "clientData":Lorg/apache/poi/ddf/EscherClientDataRecord;
    const/16 v5, -0xffc

    invoke-virtual {v1, v5}, Lorg/apache/poi/ddf/EscherContainerRecord;->setRecordId(S)V

    .line 63
    const/16 v5, 0xf

    invoke-virtual {v1, v5}, Lorg/apache/poi/ddf/EscherContainerRecord;->setOptions(S)V

    .line 64
    const/16 v5, -0xff6

    invoke-virtual {v2, v5}, Lorg/apache/poi/ddf/EscherSpRecord;->setRecordId(S)V

    .line 65
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getShapeType()I

    move-result v5

    invoke-direct {p0, v5}, Lorg/apache/poi/hssf/model/SimpleFilledShape;->objTypeToShapeType(I)S

    move-result v5

    .line 66
    .local v5, "shapeType":S
    shl-int/lit8 v6, v5, 0x4

    or-int/lit8 v6, v6, 0x2

    int-to-short v6, v6

    invoke-virtual {v2, v6}, Lorg/apache/poi/ddf/EscherSpRecord;->setOptions(S)V

    .line 67
    invoke-virtual {v2, p2}, Lorg/apache/poi/ddf/EscherSpRecord;->setShapeId(I)V

    .line 68
    const/16 v6, 0xa00

    invoke-virtual {v2, v6}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    .line 69
    const/16 v6, -0xff5

    invoke-virtual {v3, v6}, Lorg/apache/poi/ddf/EscherOptRecord;->setRecordId(S)V

    .line 70
    invoke-virtual {p0, v0, v3}, Lorg/apache/poi/hssf/model/SimpleFilledShape;->addStandardOptions(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/ddf/EscherOptRecord;)I

    .line 71
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getAnchor()Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/apache/poi/hssf/model/SimpleFilledShape;->createAnchor(Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v6

    .line 72
    .local v6, "anchor":Lorg/apache/poi/ddf/EscherRecord;
    const/16 v7, -0xfef

    invoke-virtual {v4, v7}, Lorg/apache/poi/ddf/EscherClientDataRecord;->setRecordId(S)V

    .line 73
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lorg/apache/poi/ddf/EscherClientDataRecord;->setOptions(S)V

    .line 75
    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 76
    invoke-virtual {v1, v3}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 77
    invoke-virtual {v1, v6}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 78
    invoke-virtual {v1, v4}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 80
    return-object v1
.end method

.method private objTypeToShapeType(I)S
    .locals 2
    .param p1, "objType"    # I

    .line 86
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 87
    const/4 v0, 0x3

    .local v0, "shapeType":S
    goto :goto_0

    .line 88
    .end local v0    # "shapeType":S
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 89
    const/4 v0, 0x1

    .line 92
    .restart local v0    # "shapeType":S
    :goto_0
    return v0

    .line 91
    .end local v0    # "shapeType":S
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to handle an object of this type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/apache/poi/hssf/model/SimpleFilledShape;->objRecord:Lorg/apache/poi/hssf/record/ObjRecord;

    return-object v0
.end method

.method public getSpContainer()Lorg/apache/poi/ddf/EscherContainerRecord;
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/apache/poi/hssf/model/SimpleFilledShape;->spContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    return-object v0
.end method
