.class public Lorg/apache/poi/hssf/model/PolygonShape;
.super Lorg/apache/poi/hssf/model/AbstractShape;
.source "PolygonShape.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final OBJECT_TYPE_MICROSOFT_OFFICE_DRAWING:S = 0x1es


# instance fields
.field private objRecord:Lorg/apache/poi/hssf/record/ObjRecord;

.field private spContainer:Lorg/apache/poi/ddf/EscherContainerRecord;


# direct methods
.method constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFPolygon;I)V
    .locals 1
    .param p1, "hssfShape"    # Lorg/apache/poi/hssf/usermodel/HSSFPolygon;
    .param p2, "shapeId"    # I

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/apache/poi/hssf/model/AbstractShape;-><init>()V

    .line 47
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/model/PolygonShape;->createSpContainer(Lorg/apache/poi/hssf/usermodel/HSSFPolygon;I)Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/model/PolygonShape;->spContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    .line 48
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/model/PolygonShape;->createObjRecord(Lorg/apache/poi/hssf/usermodel/HSSFShape;I)Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/model/PolygonShape;->objRecord:Lorg/apache/poi/hssf/record/ObjRecord;

    .line 49
    return-void
.end method

.method private createObjRecord(Lorg/apache/poi/hssf/usermodel/HSSFShape;I)Lorg/apache/poi/hssf/record/ObjRecord;
    .locals 6
    .param p1, "hssfShape"    # Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .param p2, "shapeId"    # I

    .prologue
    const/4 v5, 0x1

    .line 133
    move-object v3, p1

    .line 135
    .local v3, "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    new-instance v2, Lorg/apache/poi/hssf/record/ObjRecord;

    invoke-direct {v2}, Lorg/apache/poi/hssf/record/ObjRecord;-><init>()V

    .line 136
    .local v2, "obj":Lorg/apache/poi/hssf/record/ObjRecord;
    new-instance v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;-><init>()V

    .line 137
    .local v0, "c":Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;
    const/16 v4, 0x1e

    invoke-virtual {v0, v4}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setObjectType(S)V

    .line 138
    invoke-virtual {p0, p2}, Lorg/apache/poi/hssf/model/PolygonShape;->getCmoObjectId(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setObjectId(I)V

    .line 139
    invoke-virtual {v0, v5}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setLocked(Z)V

    .line 140
    invoke-virtual {v0, v5}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setPrintable(Z)V

    .line 141
    invoke-virtual {v0, v5}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setAutofill(Z)V

    .line 142
    invoke-virtual {v0, v5}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setAutoline(Z)V

    .line 143
    new-instance v1, Lorg/apache/poi/hssf/record/EndSubRecord;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/EndSubRecord;-><init>()V

    .line 145
    .local v1, "e":Lorg/apache/poi/hssf/record/EndSubRecord;
    invoke-virtual {v2, v0}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 146
    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 148
    return-object v2
.end method

.method private createSpContainer(Lorg/apache/poi/hssf/usermodel/HSSFPolygon;I)Lorg/apache/poi/ddf/EscherContainerRecord;
    .locals 17
    .param p1, "hssfShape"    # Lorg/apache/poi/hssf/usermodel/HSSFPolygon;
    .param p2, "shapeId"    # I

    .prologue
    .line 57
    move-object/from16 v8, p1

    .line 59
    .local v8, "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    new-instance v10, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v10}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    .line 60
    .local v10, "spContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    new-instance v9, Lorg/apache/poi/ddf/EscherSpRecord;

    invoke-direct {v9}, Lorg/apache/poi/ddf/EscherSpRecord;-><init>()V

    .line 61
    .local v9, "sp":Lorg/apache/poi/ddf/EscherSpRecord;
    new-instance v5, Lorg/apache/poi/ddf/EscherOptRecord;

    invoke-direct {v5}, Lorg/apache/poi/ddf/EscherOptRecord;-><init>()V

    .line 62
    .local v5, "opt":Lorg/apache/poi/ddf/EscherOptRecord;
    new-instance v2, Lorg/apache/poi/ddf/EscherClientDataRecord;

    invoke-direct {v2}, Lorg/apache/poi/ddf/EscherClientDataRecord;-><init>()V

    .line 64
    .local v2, "clientData":Lorg/apache/poi/ddf/EscherClientDataRecord;
    const/16 v12, -0xffc

    invoke-virtual {v10, v12}, Lorg/apache/poi/ddf/EscherContainerRecord;->setRecordId(S)V

    .line 65
    const/16 v12, 0xf

    invoke-virtual {v10, v12}, Lorg/apache/poi/ddf/EscherContainerRecord;->setOptions(S)V

    .line 66
    const/16 v12, -0xff6

    invoke-virtual {v9, v12}, Lorg/apache/poi/ddf/EscherSpRecord;->setRecordId(S)V

    .line 67
    const/4 v12, 0x2

    invoke-virtual {v9, v12}, Lorg/apache/poi/ddf/EscherSpRecord;->setOptions(S)V

    .line 68
    move/from16 v0, p2

    invoke-virtual {v9, v0}, Lorg/apache/poi/ddf/EscherSpRecord;->setShapeId(I)V

    .line 69
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->getParent()Lorg/apache/poi/hssf/usermodel/HSSFShape;

    move-result-object v12

    if-nez v12, :cond_0

    .line 70
    const/16 v12, 0xa00

    invoke-virtual {v9, v12}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    .line 73
    :goto_0
    const/16 v12, -0xff5

    invoke-virtual {v5, v12}, Lorg/apache/poi/ddf/EscherOptRecord;->setRecordId(S)V

    .line 74
    new-instance v12, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/4 v13, 0x4

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v12 .. v16}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SZZI)V

    invoke-virtual {v5, v12}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 75
    new-instance v12, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v13, 0x142

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->getDrawAreaWidth()I

    move-result v16

    invoke-direct/range {v12 .. v16}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SZZI)V

    invoke-virtual {v5, v12}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 76
    new-instance v12, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v13, 0x143

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->getDrawAreaHeight()I

    move-result v16

    invoke-direct/range {v12 .. v16}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SZZI)V

    invoke-virtual {v5, v12}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 77
    new-instance v12, Lorg/apache/poi/ddf/EscherShapePathProperty;

    const/16 v13, 0x144

    const/4 v14, 0x4

    invoke-direct {v12, v13, v14}, Lorg/apache/poi/ddf/EscherShapePathProperty;-><init>(SI)V

    invoke-virtual {v5, v12}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 78
    new-instance v11, Lorg/apache/poi/ddf/EscherArrayProperty;

    const/16 v12, 0x145

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [B

    invoke-direct {v11, v12, v13, v14}, Lorg/apache/poi/ddf/EscherArrayProperty;-><init>(SZ[B)V

    .line 79
    .local v11, "verticesProp":Lorg/apache/poi/ddf/EscherArrayProperty;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->getXPoints()[I

    move-result-object v12

    array-length v12, v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Lorg/apache/poi/ddf/EscherArrayProperty;->setNumberOfElementsInArray(I)V

    .line 80
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->getXPoints()[I

    move-result-object v12

    array-length v12, v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Lorg/apache/poi/ddf/EscherArrayProperty;->setNumberOfElementsInMemory(I)V

    .line 81
    const v12, 0xfff0

    invoke-virtual {v11, v12}, Lorg/apache/poi/ddf/EscherArrayProperty;->setSizeOfElements(I)V

    .line 82
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->getXPoints()[I

    move-result-object v12

    array-length v12, v12

    if-ge v4, v12, :cond_1

    .line 84
    const/4 v12, 0x4

    new-array v3, v12, [B

    .line 85
    .local v3, "data":[B
    const/4 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->getXPoints()[I

    move-result-object v13

    aget v13, v13, v4

    int-to-short v13, v13

    invoke-static {v3, v12, v13}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 86
    const/4 v12, 0x2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->getYPoints()[I

    move-result-object v13

    aget v13, v13, v4

    int-to-short v13, v13

    invoke-static {v3, v12, v13}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 87
    invoke-virtual {v11, v4, v3}, Lorg/apache/poi/ddf/EscherArrayProperty;->setElement(I[B)V

    .line 82
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 72
    .end local v3    # "data":[B
    .end local v4    # "i":I
    .end local v11    # "verticesProp":Lorg/apache/poi/ddf/EscherArrayProperty;
    :cond_0
    const/16 v12, 0xa02

    invoke-virtual {v9, v12}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    goto/16 :goto_0

    .line 89
    .restart local v4    # "i":I
    .restart local v11    # "verticesProp":Lorg/apache/poi/ddf/EscherArrayProperty;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->getXPoints()[I

    move-result-object v12

    array-length v6, v12

    .line 90
    .local v6, "point":I
    const/4 v12, 0x4

    new-array v3, v12, [B

    .line 91
    .restart local v3    # "data":[B
    const/4 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->getXPoints()[I

    move-result-object v13

    const/4 v14, 0x0

    aget v13, v13, v14

    int-to-short v13, v13

    invoke-static {v3, v12, v13}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 92
    const/4 v12, 0x2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->getYPoints()[I

    move-result-object v13

    const/4 v14, 0x0

    aget v13, v13, v14

    int-to-short v13, v13

    invoke-static {v3, v12, v13}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 93
    invoke-virtual {v11, v6, v3}, Lorg/apache/poi/ddf/EscherArrayProperty;->setElement(I[B)V

    .line 94
    invoke-virtual {v5, v11}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 95
    new-instance v7, Lorg/apache/poi/ddf/EscherArrayProperty;

    const/16 v12, 0x146

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v7, v12, v13, v14}, Lorg/apache/poi/ddf/EscherArrayProperty;-><init>(SZ[B)V

    .line 96
    .local v7, "segmentsProp":Lorg/apache/poi/ddf/EscherArrayProperty;
    const/4 v12, 0x2

    invoke-virtual {v7, v12}, Lorg/apache/poi/ddf/EscherArrayProperty;->setSizeOfElements(I)V

    .line 97
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->getXPoints()[I

    move-result-object v12

    array-length v12, v12

    mul-int/lit8 v12, v12, 0x2

    add-int/lit8 v12, v12, 0x4

    invoke-virtual {v7, v12}, Lorg/apache/poi/ddf/EscherArrayProperty;->setNumberOfElementsInArray(I)V

    .line 98
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->getXPoints()[I

    move-result-object v12

    array-length v12, v12

    mul-int/lit8 v12, v12, 0x2

    add-int/lit8 v12, v12, 0x4

    invoke-virtual {v7, v12}, Lorg/apache/poi/ddf/EscherArrayProperty;->setNumberOfElementsInMemory(I)V

    .line 99
    const/4 v12, 0x0

    const/4 v13, 0x2

    new-array v13, v13, [B

    fill-array-data v13, :array_0

    invoke-virtual {v7, v12, v13}, Lorg/apache/poi/ddf/EscherArrayProperty;->setElement(I[B)V

    .line 100
    const/4 v12, 0x1

    const/4 v13, 0x2

    new-array v13, v13, [B

    fill-array-data v13, :array_1

    invoke-virtual {v7, v12, v13}, Lorg/apache/poi/ddf/EscherArrayProperty;->setElement(I[B)V

    .line 101
    const/4 v4, 0x0

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->getXPoints()[I

    move-result-object v12

    array-length v12, v12

    if-ge v4, v12, :cond_2

    .line 103
    mul-int/lit8 v12, v4, 0x2

    add-int/lit8 v12, v12, 0x2

    const/4 v13, 0x2

    new-array v13, v13, [B

    fill-array-data v13, :array_2

    invoke-virtual {v7, v12, v13}, Lorg/apache/poi/ddf/EscherArrayProperty;->setElement(I[B)V

    .line 104
    mul-int/lit8 v12, v4, 0x2

    add-int/lit8 v12, v12, 0x3

    const/4 v13, 0x2

    new-array v13, v13, [B

    fill-array-data v13, :array_3

    invoke-virtual {v7, v12, v13}, Lorg/apache/poi/ddf/EscherArrayProperty;->setElement(I[B)V

    .line 101
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 106
    :cond_2
    invoke-virtual {v7}, Lorg/apache/poi/ddf/EscherArrayProperty;->getNumberOfElementsInArray()I

    move-result v12

    add-int/lit8 v12, v12, -0x2

    const/4 v13, 0x2

    new-array v13, v13, [B

    fill-array-data v13, :array_4

    invoke-virtual {v7, v12, v13}, Lorg/apache/poi/ddf/EscherArrayProperty;->setElement(I[B)V

    .line 107
    invoke-virtual {v7}, Lorg/apache/poi/ddf/EscherArrayProperty;->getNumberOfElementsInArray()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    const/4 v13, 0x2

    new-array v13, v13, [B

    fill-array-data v13, :array_5

    invoke-virtual {v7, v12, v13}, Lorg/apache/poi/ddf/EscherArrayProperty;->setElement(I[B)V

    .line 108
    invoke-virtual {v5, v7}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 109
    new-instance v12, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v13, 0x17f

    const/4 v14, 0x0

    const/4 v15, 0x0

    const v16, 0x10001

    invoke-direct/range {v12 .. v16}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SZZI)V

    invoke-virtual {v5, v12}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 110
    new-instance v12, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v13, 0x1d0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v12 .. v16}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SZZI)V

    invoke-virtual {v5, v12}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 111
    new-instance v12, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v13, 0x1d1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v12 .. v16}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SZZI)V

    invoke-virtual {v5, v12}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 112
    new-instance v12, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v13, 0x1d7

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v12 .. v16}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SZZI)V

    invoke-virtual {v5, v12}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 114
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v5}, Lorg/apache/poi/hssf/model/PolygonShape;->addStandardOptions(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/ddf/EscherOptRecord;)I

    .line 116
    invoke-virtual {v8}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getAnchor()Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/apache/poi/hssf/model/PolygonShape;->createAnchor(Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    .line 117
    .local v1, "anchor":Lorg/apache/poi/ddf/EscherRecord;
    const/16 v12, -0xfef

    invoke-virtual {v2, v12}, Lorg/apache/poi/ddf/EscherClientDataRecord;->setRecordId(S)V

    .line 118
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lorg/apache/poi/ddf/EscherClientDataRecord;->setOptions(S)V

    .line 120
    invoke-virtual {v10, v9}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 121
    invoke-virtual {v10, v5}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 122
    invoke-virtual {v10, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 123
    invoke-virtual {v10, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 125
    return-object v10

    .line 99
    :array_0
    .array-data 1
        0x0t
        0x40t
    .end array-data

    .line 100
    nop

    :array_1
    .array-data 1
        0x0t
        -0x54t
    .end array-data

    .line 103
    nop

    :array_2
    .array-data 1
        0x1t
        0x0t
    .end array-data

    .line 104
    nop

    :array_3
    .array-data 1
        0x0t
        -0x54t
    .end array-data

    .line 106
    nop

    :array_4
    .array-data 1
        0x1t
        0x60t
    .end array-data

    .line 107
    nop

    :array_5
    .array-data 1
        0x0t
        -0x80t
    .end array-data
.end method


# virtual methods
.method public getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/apache/poi/hssf/model/PolygonShape;->objRecord:Lorg/apache/poi/hssf/record/ObjRecord;

    return-object v0
.end method

.method public getSpContainer()Lorg/apache/poi/ddf/EscherContainerRecord;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/apache/poi/hssf/model/PolygonShape;->spContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    return-object v0
.end method
