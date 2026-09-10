.class public Lorg/apache/poi/hssf/usermodel/HSSFPolygon;
.super Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;
.source "HSSFPolygon.java"


# static fields
.field public static final OBJECT_TYPE_MICROSOFT_OFFICE_DRAWING:S = 0x1es

.field private static logger:Lorg/apache/poi/util/POILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;)V
    .locals 0
    .param p1, "spContainer"    # Lorg/apache/poi/ddf/EscherContainerRecord;
    .param p2, "objRecord"    # Lorg/apache/poi/hssf/record/ObjRecord;

    .line 38
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/hssf/record/TextObjectRecord;)V
    .locals 0
    .param p1, "spContainer"    # Lorg/apache/poi/ddf/EscherContainerRecord;
    .param p2, "objRecord"    # Lorg/apache/poi/hssf/record/ObjRecord;
    .param p3, "_textObjectRecord"    # Lorg/apache/poi/hssf/record/TextObjectRecord;

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/hssf/record/TextObjectRecord;)V

    .line 35
    return-void
.end method

.method constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V
    .locals 0
    .param p1, "parent"    # Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .param p2, "anchor"    # Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    .line 42
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected afterRemove(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V
    .locals 3
    .param p1, "patriarch"    # Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    .line 119
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_getBoundAggregate()Lorg/apache/poi/hssf/record/EscherAggregate;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v1

    const/16 v2, -0xfef

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/EscherAggregate;->removeShapeToObjRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 120
    return-void
.end method

.method protected createObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;
    .locals 3

    .line 104
    new-instance v0, Lorg/apache/poi/hssf/record/ObjRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/ObjRecord;-><init>()V

    .line 105
    .local v0, "obj":Lorg/apache/poi/hssf/record/ObjRecord;
    new-instance v1, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;-><init>()V

    .line 106
    .local v1, "c":Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;
    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setObjectType(S)V

    .line 107
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setLocked(Z)V

    .line 108
    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setPrintable(Z)V

    .line 109
    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setAutofill(Z)V

    .line 110
    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setAutoline(Z)V

    .line 111
    new-instance v2, Lorg/apache/poi/hssf/record/EndSubRecord;

    invoke-direct {v2}, Lorg/apache/poi/hssf/record/EndSubRecord;-><init>()V

    .line 112
    .local v2, "e":Lorg/apache/poi/hssf/record/EndSubRecord;
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 113
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 114
    return-object v0
.end method

.method protected createSpContainer()Lorg/apache/poi/ddf/EscherContainerRecord;
    .locals 9

    .line 54
    new-instance v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v0}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    .line 55
    .local v0, "spContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    new-instance v1, Lorg/apache/poi/ddf/EscherSpRecord;

    invoke-direct {v1}, Lorg/apache/poi/ddf/EscherSpRecord;-><init>()V

    .line 56
    .local v1, "sp":Lorg/apache/poi/ddf/EscherSpRecord;
    new-instance v2, Lorg/apache/poi/ddf/EscherOptRecord;

    invoke-direct {v2}, Lorg/apache/poi/ddf/EscherOptRecord;-><init>()V

    .line 57
    .local v2, "opt":Lorg/apache/poi/ddf/EscherOptRecord;
    new-instance v3, Lorg/apache/poi/ddf/EscherClientDataRecord;

    invoke-direct {v3}, Lorg/apache/poi/ddf/EscherClientDataRecord;-><init>()V

    .line 59
    .local v3, "clientData":Lorg/apache/poi/ddf/EscherClientDataRecord;
    const/16 v4, -0xffc

    invoke-virtual {v0, v4}, Lorg/apache/poi/ddf/EscherContainerRecord;->setRecordId(S)V

    .line 60
    const/16 v4, 0xf

    invoke-virtual {v0, v4}, Lorg/apache/poi/ddf/EscherContainerRecord;->setOptions(S)V

    .line 61
    const/16 v4, -0xff6

    invoke-virtual {v1, v4}, Lorg/apache/poi/ddf/EscherSpRecord;->setRecordId(S)V

    .line 62
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lorg/apache/poi/ddf/EscherSpRecord;->setOptions(S)V

    .line 63
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->getParent()Lorg/apache/poi/hssf/usermodel/HSSFShape;

    move-result-object v4

    if-nez v4, :cond_0

    .line 64
    const/16 v4, 0xa00

    invoke-virtual {v1, v4}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    goto :goto_0

    .line 66
    :cond_0
    const/16 v4, 0xa02

    invoke-virtual {v1, v4}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    .line 68
    :goto_0
    const/16 v4, -0xff5

    invoke-virtual {v2, v4}, Lorg/apache/poi/ddf/EscherOptRecord;->setRecordId(S)V

    .line 69
    new-instance v4, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, v6, v6}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SZZI)V

    invoke-virtual {v2, v4}, Lorg/apache/poi/ddf/EscherOptRecord;->setEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 70
    new-instance v4, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v7, 0x142

    const/16 v8, 0x64

    invoke-direct {v4, v7, v6, v6, v8}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SZZI)V

    invoke-virtual {v2, v4}, Lorg/apache/poi/ddf/EscherOptRecord;->setEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 71
    new-instance v4, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v7, 0x143

    invoke-direct {v4, v7, v6, v6, v8}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SZZI)V

    invoke-virtual {v2, v4}, Lorg/apache/poi/ddf/EscherOptRecord;->setEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 72
    new-instance v4, Lorg/apache/poi/ddf/EscherShapePathProperty;

    const/16 v7, 0x144

    invoke-direct {v4, v7, v5}, Lorg/apache/poi/ddf/EscherShapePathProperty;-><init>(SI)V

    invoke-virtual {v2, v4}, Lorg/apache/poi/ddf/EscherOptRecord;->setEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 74
    new-instance v4, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v5, 0x17f

    const v7, 0x10001

    invoke-direct {v4, v5, v6, v6, v7}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SZZI)V

    invoke-virtual {v2, v4}, Lorg/apache/poi/ddf/EscherOptRecord;->setEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 75
    new-instance v4, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v5, 0x1d0

    invoke-direct {v4, v5, v6, v6, v6}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SZZI)V

    invoke-virtual {v2, v4}, Lorg/apache/poi/ddf/EscherOptRecord;->setEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 76
    new-instance v4, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v5, 0x1d1

    invoke-direct {v4, v5, v6, v6, v6}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SZZI)V

    invoke-virtual {v2, v4}, Lorg/apache/poi/ddf/EscherOptRecord;->setEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 77
    new-instance v4, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v5, 0x1d7

    invoke-direct {v4, v5, v6, v6, v6}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SZZI)V

    invoke-virtual {v2, v4}, Lorg/apache/poi/ddf/EscherOptRecord;->setEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 79
    new-instance v4, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v5, 0x1ce

    invoke-direct {v4, v5, v6}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    invoke-virtual {v2, v4}, Lorg/apache/poi/ddf/EscherOptRecord;->setEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 80
    new-instance v4, Lorg/apache/poi/ddf/EscherBoolProperty;

    const/16 v5, 0x1ff

    const v7, 0x80008

    invoke-direct {v4, v5, v7}, Lorg/apache/poi/ddf/EscherBoolProperty;-><init>(SI)V

    invoke-virtual {v2, v4}, Lorg/apache/poi/ddf/EscherOptRecord;->setEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 81
    new-instance v4, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v5, 0x1cb

    const/16 v7, 0x2535

    invoke-direct {v4, v5, v7}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    invoke-virtual {v2, v4}, Lorg/apache/poi/ddf/EscherOptRecord;->setEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 82
    new-instance v4, Lorg/apache/poi/ddf/EscherRGBProperty;

    const/16 v5, 0x181

    const v7, 0x8000009

    invoke-direct {v4, v5, v7}, Lorg/apache/poi/ddf/EscherRGBProperty;-><init>(SI)V

    invoke-virtual {v2, v4}, Lorg/apache/poi/ddf/EscherOptRecord;->setEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 83
    new-instance v4, Lorg/apache/poi/ddf/EscherRGBProperty;

    const/16 v5, 0x1c0

    const v7, 0x8000040

    invoke-direct {v4, v5, v7}, Lorg/apache/poi/ddf/EscherRGBProperty;-><init>(SI)V

    invoke-virtual {v2, v4}, Lorg/apache/poi/ddf/EscherOptRecord;->setEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 84
    new-instance v4, Lorg/apache/poi/ddf/EscherBoolProperty;

    const/16 v5, 0x1bf

    const/4 v7, 0x1

    invoke-direct {v4, v5, v7}, Lorg/apache/poi/ddf/EscherBoolProperty;-><init>(SI)V

    invoke-virtual {v2, v4}, Lorg/apache/poi/ddf/EscherOptRecord;->setEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 86
    new-instance v4, Lorg/apache/poi/ddf/EscherBoolProperty;

    const/16 v5, 0x3bf

    const/high16 v7, 0x80000

    invoke-direct {v4, v5, v7}, Lorg/apache/poi/ddf/EscherBoolProperty;-><init>(SI)V

    invoke-virtual {v2, v4}, Lorg/apache/poi/ddf/EscherOptRecord;->setEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 88
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->getAnchor()Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;->getEscherAnchor()Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v4

    .line 89
    .local v4, "anchor":Lorg/apache/poi/ddf/EscherRecord;
    const/16 v5, -0xfef

    invoke-virtual {v3, v5}, Lorg/apache/poi/ddf/EscherClientDataRecord;->setRecordId(S)V

    .line 90
    invoke-virtual {v3, v6}, Lorg/apache/poi/ddf/EscherClientDataRecord;->setOptions(S)V

    .line 92
    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 93
    invoke-virtual {v0, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 94
    invoke-virtual {v0, v4}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 95
    invoke-virtual {v0, v3}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 97
    return-object v0
.end method

.method protected createTextObjRecord()Lorg/apache/poi/hssf/record/TextObjectRecord;
    .locals 1

    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDrawAreaHeight()I
    .locals 2

    .line 224
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->getOptRecord()Lorg/apache/poi/ddf/EscherOptRecord;

    move-result-object v0

    const/16 v1, 0x143

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherOptRecord;->lookup(I)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    .line 225
    .local v0, "property":Lorg/apache/poi/ddf/EscherSimpleProperty;
    if-nez v0, :cond_0

    const/16 v1, 0x64

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getDrawAreaWidth()I
    .locals 2

    .line 216
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->getOptRecord()Lorg/apache/poi/ddf/EscherOptRecord;

    move-result-object v0

    const/16 v1, 0x142

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherOptRecord;->lookup(I)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    .line 217
    .local v0, "property":Lorg/apache/poi/ddf/EscherSimpleProperty;
    if-nez v0, :cond_0

    const/16 v1, 0x64

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getXPoints()[I
    .locals 6

    .line 126
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->getOptRecord()Lorg/apache/poi/ddf/EscherOptRecord;

    move-result-object v0

    const/16 v1, 0x145

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherOptRecord;->lookup(I)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherArrayProperty;

    .line 127
    .local v0, "verticesProp":Lorg/apache/poi/ddf/EscherArrayProperty;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 128
    new-array v1, v1, [I

    return-object v1

    .line 130
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getNumberOfElementsInArray()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    new-array v2, v2, [I

    .line 131
    .local v2, "array":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getNumberOfElementsInArray()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    .line 132
    invoke-virtual {v0, v3}, Lorg/apache/poi/ddf/EscherArrayProperty;->getElement(I)[B

    move-result-object v4

    .line 133
    .local v4, "property":[B
    invoke-static {v4, v1}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v5

    .line 134
    .local v5, "x":S
    aput v5, v2, v3

    .line 131
    .end local v4    # "property":[B
    .end local v5    # "x":S
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 136
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method

.method public getYPoints()[I
    .locals 5

    .line 143
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->getOptRecord()Lorg/apache/poi/ddf/EscherOptRecord;

    move-result-object v0

    const/16 v1, 0x145

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherOptRecord;->lookup(I)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherArrayProperty;

    .line 144
    .local v0, "verticesProp":Lorg/apache/poi/ddf/EscherArrayProperty;
    if-nez v0, :cond_0

    .line 145
    const/4 v1, 0x0

    new-array v1, v1, [I

    return-object v1

    .line 147
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getNumberOfElementsInArray()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [I

    .line 148
    .local v1, "array":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getNumberOfElementsInArray()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 149
    invoke-virtual {v0, v2}, Lorg/apache/poi/ddf/EscherArrayProperty;->getElement(I)[B

    move-result-object v3

    .line 150
    .local v3, "property":[B
    const/4 v4, 0x2

    invoke-static {v3, v4}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v4

    .line 151
    .local v4, "x":S
    aput v4, v1, v2

    .line 148
    .end local v3    # "property":[B
    .end local v4    # "x":S
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 153
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public setPoints([I[I)V
    .locals 10
    .param p1, "xPoints"    # [I
    .param p2, "yPoints"    # [I

    .line 161
    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x7

    if-eq v0, v1, :cond_0

    .line 162
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->logger:Lorg/apache/poi/util/POILogger;

    const-string v1, "xPoint.length must be equal to yPoints.length"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 163
    return-void

    .line 165
    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 166
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->logger:Lorg/apache/poi/util/POILogger;

    const-string v1, "HSSFPolygon must have at least one point"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 168
    :cond_1
    new-instance v0, Lorg/apache/poi/ddf/EscherArrayProperty;

    const/16 v1, 0x145

    const/4 v2, 0x0

    new-array v3, v2, [B

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/ddf/EscherArrayProperty;-><init>(SZ[B)V

    .line 169
    .local v0, "verticesProp":Lorg/apache/poi/ddf/EscherArrayProperty;
    array-length v1, p1

    const/4 v3, 0x1

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherArrayProperty;->setNumberOfElementsInArray(I)V

    .line 170
    array-length v1, p1

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherArrayProperty;->setNumberOfElementsInMemory(I)V

    .line 171
    const v1, 0xfff0

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherArrayProperty;->setSizeOfElements(I)V

    .line 172
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p1

    const/4 v5, 0x4

    const/4 v6, 0x2

    if-ge v1, v4, :cond_2

    .line 174
    new-array v4, v5, [B

    .line 175
    .local v4, "data":[B
    aget v5, p1, v1

    int-to-short v5, v5

    invoke-static {v4, v2, v5}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 176
    aget v5, p2, v1

    int-to-short v5, v5

    invoke-static {v4, v6, v5}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 177
    invoke-virtual {v0, v1, v4}, Lorg/apache/poi/ddf/EscherArrayProperty;->setElement(I[B)V

    .line 172
    .end local v4    # "data":[B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    .end local v1    # "i":I
    :cond_2
    array-length v1, p1

    .line 180
    .local v1, "point":I
    new-array v4, v5, [B

    .line 181
    .restart local v4    # "data":[B
    aget v7, p1, v2

    int-to-short v7, v7

    invoke-static {v4, v2, v7}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 182
    aget v7, p2, v2

    int-to-short v7, v7

    invoke-static {v4, v6, v7}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 183
    invoke-virtual {v0, v1, v4}, Lorg/apache/poi/ddf/EscherArrayProperty;->setElement(I[B)V

    .line 184
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->setPropertyValue(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 186
    new-instance v7, Lorg/apache/poi/ddf/EscherArrayProperty;

    const/16 v8, 0x146

    const/4 v9, 0x0

    invoke-direct {v7, v8, v2, v9}, Lorg/apache/poi/ddf/EscherArrayProperty;-><init>(SZ[B)V

    .line 187
    .local v7, "segmentsProp":Lorg/apache/poi/ddf/EscherArrayProperty;
    invoke-virtual {v7, v6}, Lorg/apache/poi/ddf/EscherArrayProperty;->setSizeOfElements(I)V

    .line 188
    array-length v8, p1

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v5

    invoke-virtual {v7, v8}, Lorg/apache/poi/ddf/EscherArrayProperty;->setNumberOfElementsInArray(I)V

    .line 189
    array-length v8, p1

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v5

    invoke-virtual {v7, v8}, Lorg/apache/poi/ddf/EscherArrayProperty;->setNumberOfElementsInMemory(I)V

    .line 190
    new-array v5, v6, [B

    fill-array-data v5, :array_0

    invoke-virtual {v7, v2, v5}, Lorg/apache/poi/ddf/EscherArrayProperty;->setElement(I[B)V

    .line 191
    new-array v2, v6, [B

    fill-array-data v2, :array_1

    invoke-virtual {v7, v3, v2}, Lorg/apache/poi/ddf/EscherArrayProperty;->setElement(I[B)V

    .line 192
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, p1

    if-ge v2, v5, :cond_3

    .line 194
    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v6

    new-array v8, v6, [B

    fill-array-data v8, :array_2

    invoke-virtual {v7, v5, v8}, Lorg/apache/poi/ddf/EscherArrayProperty;->setElement(I[B)V

    .line 195
    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x3

    new-array v8, v6, [B

    fill-array-data v8, :array_3

    invoke-virtual {v7, v5, v8}, Lorg/apache/poi/ddf/EscherArrayProperty;->setElement(I[B)V

    .line 192
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 197
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v7}, Lorg/apache/poi/ddf/EscherArrayProperty;->getNumberOfElementsInArray()I

    move-result v2

    sub-int/2addr v2, v6

    new-array v5, v6, [B

    fill-array-data v5, :array_4

    invoke-virtual {v7, v2, v5}, Lorg/apache/poi/ddf/EscherArrayProperty;->setElement(I[B)V

    .line 198
    invoke-virtual {v7}, Lorg/apache/poi/ddf/EscherArrayProperty;->getNumberOfElementsInArray()I

    move-result v2

    sub-int/2addr v2, v3

    new-array v3, v6, [B

    fill-array-data v3, :array_5

    invoke-virtual {v7, v2, v3}, Lorg/apache/poi/ddf/EscherArrayProperty;->setElement(I[B)V

    .line 199
    invoke-virtual {p0, v7}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->setPropertyValue(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 200
    return-void

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

.method public setPolygonDrawArea(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 208
    new-instance v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v1, 0x142

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->setPropertyValue(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 209
    new-instance v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v1, 0x143

    invoke-direct {v0, v1, p2}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->setPropertyValue(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 210
    return-void
.end method
