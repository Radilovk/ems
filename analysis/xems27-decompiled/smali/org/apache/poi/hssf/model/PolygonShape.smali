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
    .locals 4
    .param p1, "hssfShape"    # Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .param p2, "shapeId"    # I

    .line 133
    move-object v0, p1

    .line 135
    .local v0, "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    new-instance v1, Lorg/apache/poi/hssf/record/ObjRecord;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/ObjRecord;-><init>()V

    .line 136
    .local v1, "obj":Lorg/apache/poi/hssf/record/ObjRecord;
    new-instance v2, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    invoke-direct {v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;-><init>()V

    .line 137
    .local v2, "c":Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;
    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setObjectType(S)V

    .line 138
    invoke-virtual {p0, p2}, Lorg/apache/poi/hssf/model/PolygonShape;->getCmoObjectId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setObjectId(I)V

    .line 139
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setLocked(Z)V

    .line 140
    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setPrintable(Z)V

    .line 141
    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setAutofill(Z)V

    .line 142
    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setAutoline(Z)V

    .line 143
    new-instance v3, Lorg/apache/poi/hssf/record/EndSubRecord;

    invoke-direct {v3}, Lorg/apache/poi/hssf/record/EndSubRecord;-><init>()V

    .line 145
    .local v3, "e":Lorg/apache/poi/hssf/record/EndSubRecord;
    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 146
    invoke-virtual {v1, v3}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 148
    return-object v1
.end method

.method private createSpContainer(Lorg/apache/poi/hssf/usermodel/HSSFPolygon;I)Lorg/apache/poi/ddf/EscherContainerRecord;
    .locals 16
    .param p1, "hssfShape"    # Lorg/apache/poi/hssf/usermodel/HSSFPolygon;
    .param p2, "shapeId"    # I

    .line 57
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 59
    .local v1, "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    new-instance v2, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v2}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    .line 60
    .local v2, "spContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    new-instance v3, Lorg/apache/poi/ddf/EscherSpRecord;

    invoke-direct {v3}, Lorg/apache/poi/ddf/EscherSpRecord;-><init>()V

    .line 61
    .local v3, "sp":Lorg/apache/poi/ddf/EscherSpRecord;
    new-instance v4, Lorg/apache/poi/ddf/EscherOptRecord;

    invoke-direct {v4}, Lorg/apache/poi/ddf/EscherOptRecord;-><init>()V

    .line 62
    .local v4, "opt":Lorg/apache/poi/ddf/EscherOptRecord;
    new-instance v5, Lorg/apache/poi/ddf/EscherClientDataRecord;

    invoke-direct {v5}, Lorg/apache/poi/ddf/EscherClientDataRecord;-><init>()V

    .line 64
    .local v5, "clientData":Lorg/apache/poi/ddf/EscherClientDataRecord;
    const/16 v6, -0xffc

    invoke-virtual {v2, v6}, Lorg/apache/poi/ddf/EscherContainerRecord;->setRecordId(S)V

    .line 65
    const/16 v6, 0xf

    invoke-virtual {v2, v6}, Lorg/apache/poi/ddf/EscherContainerRecord;->setOptions(S)V

    .line 66
    const/16 v6, -0xff6

    invoke-virtual {v3, v6}, Lorg/apache/poi/ddf/EscherSpRecord;->setRecordId(S)V

    .line 67
    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Lorg/apache/poi/ddf/EscherSpRecord;->setOptions(S)V

    .line 68
    move/from16 v7, p2

    invoke-virtual {v3, v7}, Lorg/apache/poi/ddf/EscherSpRecord;->setShapeId(I)V

    .line 69
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->getParent()Lorg/apache/poi/hssf/usermodel/HSSFShape;

    move-result-object v8

    if-nez v8, :cond_0

    .line 70
    const/16 v8, 0xa00

    invoke-virtual {v3, v8}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    goto :goto_0

    .line 72
    :cond_0
    const/16 v8, 0xa02

    invoke-virtual {v3, v8}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    .line 73
    :goto_0
    const/16 v8, -0xff5

    invoke-virtual {v4, v8}, Lorg/apache/poi/ddf/EscherOptRecord;->setRecordId(S)V

    .line 74
    new-instance v8, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10, v10, v10}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SZZI)V

    invoke-virtual {v4, v8}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 75
    new-instance v8, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v11, 0x142

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->getDrawAreaWidth()I

    move-result v12

    invoke-direct {v8, v11, v10, v10, v12}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SZZI)V

    invoke-virtual {v4, v8}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 76
    new-instance v8, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v11, 0x143

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->getDrawAreaHeight()I

    move-result v12

    invoke-direct {v8, v11, v10, v10, v12}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SZZI)V

    invoke-virtual {v4, v8}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 77
    new-instance v8, Lorg/apache/poi/ddf/EscherShapePathProperty;

    const/16 v11, 0x144

    invoke-direct {v8, v11, v9}, Lorg/apache/poi/ddf/EscherShapePathProperty;-><init>(SI)V

    invoke-virtual {v4, v8}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 78
    new-instance v8, Lorg/apache/poi/ddf/EscherArrayProperty;

    const/16 v11, 0x145

    new-array v12, v10, [B

    invoke-direct {v8, v11, v10, v12}, Lorg/apache/poi/ddf/EscherArrayProperty;-><init>(SZ[B)V

    .line 79
    .local v8, "verticesProp":Lorg/apache/poi/ddf/EscherArrayProperty;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->getXPoints()[I

    move-result-object v11

    array-length v11, v11

    const/4 v12, 0x1

    add-int/2addr v11, v12

    invoke-virtual {v8, v11}, Lorg/apache/poi/ddf/EscherArrayProperty;->setNumberOfElementsInArray(I)V

    .line 80
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->getXPoints()[I

    move-result-object v11

    array-length v11, v11

    add-int/2addr v11, v12

    invoke-virtual {v8, v11}, Lorg/apache/poi/ddf/EscherArrayProperty;->setNumberOfElementsInMemory(I)V

    .line 81
    const v11, 0xfff0

    invoke-virtual {v8, v11}, Lorg/apache/poi/ddf/EscherArrayProperty;->setSizeOfElements(I)V

    .line 82
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->getXPoints()[I

    move-result-object v13

    array-length v13, v13

    if-ge v11, v13, :cond_1

    .line 84
    new-array v13, v9, [B

    .line 85
    .local v13, "data":[B
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->getXPoints()[I

    move-result-object v14

    aget v14, v14, v11

    int-to-short v14, v14

    invoke-static {v13, v10, v14}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 86
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->getYPoints()[I

    move-result-object v14

    aget v14, v14, v11

    int-to-short v14, v14

    invoke-static {v13, v6, v14}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 87
    invoke-virtual {v8, v11, v13}, Lorg/apache/poi/ddf/EscherArrayProperty;->setElement(I[B)V

    .line 82
    .end local v13    # "data":[B
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 89
    .end local v11    # "i":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->getXPoints()[I

    move-result-object v11

    array-length v11, v11

    .line 90
    .local v11, "point":I
    new-array v13, v9, [B

    .line 91
    .restart local v13    # "data":[B
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->getXPoints()[I

    move-result-object v14

    aget v14, v14, v10

    int-to-short v14, v14

    invoke-static {v13, v10, v14}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 92
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->getYPoints()[I

    move-result-object v14

    aget v14, v14, v10

    int-to-short v14, v14

    invoke-static {v13, v6, v14}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 93
    invoke-virtual {v8, v11, v13}, Lorg/apache/poi/ddf/EscherArrayProperty;->setElement(I[B)V

    .line 94
    invoke-virtual {v4, v8}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 95
    new-instance v14, Lorg/apache/poi/ddf/EscherArrayProperty;

    const/16 v15, 0x146

    const/4 v12, 0x0

    invoke-direct {v14, v15, v10, v12}, Lorg/apache/poi/ddf/EscherArrayProperty;-><init>(SZ[B)V

    move-object v12, v14

    .line 96
    .local v12, "segmentsProp":Lorg/apache/poi/ddf/EscherArrayProperty;
    invoke-virtual {v12, v6}, Lorg/apache/poi/ddf/EscherArrayProperty;->setSizeOfElements(I)V

    .line 97
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->getXPoints()[I

    move-result-object v14

    array-length v14, v14

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v14, v9

    invoke-virtual {v12, v14}, Lorg/apache/poi/ddf/EscherArrayProperty;->setNumberOfElementsInArray(I)V

    .line 98
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->getXPoints()[I

    move-result-object v14

    array-length v14, v14

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v14, v9

    invoke-virtual {v12, v14}, Lorg/apache/poi/ddf/EscherArrayProperty;->setNumberOfElementsInMemory(I)V

    .line 99
    new-array v9, v6, [B

    fill-array-data v9, :array_0

    invoke-virtual {v12, v10, v9}, Lorg/apache/poi/ddf/EscherArrayProperty;->setElement(I[B)V

    .line 100
    new-array v9, v6, [B

    fill-array-data v9, :array_1

    const/4 v14, 0x1

    invoke-virtual {v12, v14, v9}, Lorg/apache/poi/ddf/EscherArrayProperty;->setElement(I[B)V

    .line 101
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->getXPoints()[I

    move-result-object v14

    array-length v14, v14

    if-ge v9, v14, :cond_2

    .line 103
    mul-int/lit8 v14, v9, 0x2

    add-int/2addr v14, v6

    new-array v15, v6, [B

    fill-array-data v15, :array_2

    invoke-virtual {v12, v14, v15}, Lorg/apache/poi/ddf/EscherArrayProperty;->setElement(I[B)V

    .line 104
    mul-int/lit8 v14, v9, 0x2

    add-int/lit8 v14, v14, 0x3

    new-array v15, v6, [B

    fill-array-data v15, :array_3

    invoke-virtual {v12, v14, v15}, Lorg/apache/poi/ddf/EscherArrayProperty;->setElement(I[B)V

    .line 101
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 106
    .end local v9    # "i":I
    :cond_2
    invoke-virtual {v12}, Lorg/apache/poi/ddf/EscherArrayProperty;->getNumberOfElementsInArray()I

    move-result v9

    sub-int/2addr v9, v6

    new-array v14, v6, [B

    fill-array-data v14, :array_4

    invoke-virtual {v12, v9, v14}, Lorg/apache/poi/ddf/EscherArrayProperty;->setElement(I[B)V

    .line 107
    invoke-virtual {v12}, Lorg/apache/poi/ddf/EscherArrayProperty;->getNumberOfElementsInArray()I

    move-result v9

    const/4 v14, 0x1

    sub-int/2addr v9, v14

    new-array v6, v6, [B

    fill-array-data v6, :array_5

    invoke-virtual {v12, v9, v6}, Lorg/apache/poi/ddf/EscherArrayProperty;->setElement(I[B)V

    .line 108
    invoke-virtual {v4, v12}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 109
    new-instance v6, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v9, 0x17f

    const v14, 0x10001

    invoke-direct {v6, v9, v10, v10, v14}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SZZI)V

    invoke-virtual {v4, v6}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 110
    new-instance v6, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v9, 0x1d0

    invoke-direct {v6, v9, v10, v10, v10}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SZZI)V

    invoke-virtual {v4, v6}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 111
    new-instance v6, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v9, 0x1d1

    invoke-direct {v6, v9, v10, v10, v10}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SZZI)V

    invoke-virtual {v4, v6}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 112
    new-instance v6, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v9, 0x1d7

    invoke-direct {v6, v9, v10, v10, v10}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SZZI)V

    invoke-virtual {v4, v6}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 114
    invoke-virtual {v0, v1, v4}, Lorg/apache/poi/hssf/model/PolygonShape;->addStandardOptions(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/ddf/EscherOptRecord;)I

    .line 116
    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getAnchor()Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/apache/poi/hssf/model/PolygonShape;->createAnchor(Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v6

    .line 117
    .local v6, "anchor":Lorg/apache/poi/ddf/EscherRecord;
    const/16 v9, -0xfef

    invoke-virtual {v5, v9}, Lorg/apache/poi/ddf/EscherClientDataRecord;->setRecordId(S)V

    .line 118
    invoke-virtual {v5, v10}, Lorg/apache/poi/ddf/EscherClientDataRecord;->setOptions(S)V

    .line 120
    invoke-virtual {v2, v3}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 121
    invoke-virtual {v2, v4}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 122
    invoke-virtual {v2, v6}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 123
    invoke-virtual {v2, v5}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 125
    return-object v2

    nop

    :array_0
    .array-data 1
        0x0t
        0x40t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        -0x54t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x0t
        -0x54t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x1t
        0x60t
    .end array-data

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

    .line 158
    iget-object v0, p0, Lorg/apache/poi/hssf/model/PolygonShape;->objRecord:Lorg/apache/poi/hssf/record/ObjRecord;

    return-object v0
.end method

.method public getSpContainer()Lorg/apache/poi/ddf/EscherContainerRecord;
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/apache/poi/hssf/model/PolygonShape;->spContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    return-object v0
.end method
