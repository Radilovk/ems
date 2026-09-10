.class public Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;
.super Lorg/apache/poi/hssf/usermodel/HSSFShape;
.source "HSSFSimpleShape.java"


# static fields
.field public static final OBJECT_TYPE_ARC:S = 0x13s

.field public static final OBJECT_TYPE_COMBO_BOX:S = 0xc9s

.field public static final OBJECT_TYPE_COMMENT:S = 0xcas

.field public static final OBJECT_TYPE_LINE:S = 0x14s

.field public static final OBJECT_TYPE_MICROSOFT_OFFICE_DRAWING:S = 0x1es

.field public static final OBJECT_TYPE_OVAL:S = 0x3s

.field public static final OBJECT_TYPE_PICTURE:S = 0x4bs

.field public static final OBJECT_TYPE_RECTANGLE:S = 0x1s

.field public static final WRAP_BY_POINTS:I = 0x1

.field public static final WRAP_NONE:I = 0x2

.field public static final WRAP_SQUARE:I


# instance fields
.field private _textObjectRecord:Lorg/apache/poi/hssf/record/TextObjectRecord;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;)V
    .locals 0
    .param p1, "spContainer"    # Lorg/apache/poi/ddf/EscherContainerRecord;
    .param p2, "objRecord"    # Lorg/apache/poi/hssf/record/ObjRecord;

    .line 67
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFShape;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/hssf/record/TextObjectRecord;)V
    .locals 0
    .param p1, "spContainer"    # Lorg/apache/poi/ddf/EscherContainerRecord;
    .param p2, "objRecord"    # Lorg/apache/poi/hssf/record/ObjRecord;
    .param p3, "textObjectRecord"    # Lorg/apache/poi/hssf/record/TextObjectRecord;

    .line 62
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFShape;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;)V

    .line 63
    iput-object p3, p0, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->_textObjectRecord:Lorg/apache/poi/hssf/record/TextObjectRecord;

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V
    .locals 1
    .param p1, "parent"    # Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .param p2, "anchor"    # Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    .line 72
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFShape;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    .line 73
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->createTextObjRecord()Lorg/apache/poi/hssf/record/TextObjectRecord;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->_textObjectRecord:Lorg/apache/poi/hssf/record/TextObjectRecord;

    .line 74
    return-void
.end method

.method private getOrCreateTextObjRecord()Lorg/apache/poi/hssf/record/TextObjectRecord;
    .locals 3

    .line 238
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getTextObjectRecord()Lorg/apache/poi/hssf/record/TextObjectRecord;

    move-result-object v0

    if-nez v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->createTextObjRecord()Lorg/apache/poi/hssf/record/TextObjectRecord;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->_textObjectRecord:Lorg/apache/poi/hssf/record/TextObjectRecord;

    .line 241
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v0

    const/16 v1, -0xff3

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherTextboxRecord;

    .line 242
    .local v0, "escherTextbox":Lorg/apache/poi/ddf/EscherTextboxRecord;
    if-nez v0, :cond_1

    .line 243
    new-instance v2, Lorg/apache/poi/ddf/EscherTextboxRecord;

    invoke-direct {v2}, Lorg/apache/poi/ddf/EscherTextboxRecord;-><init>()V

    move-object v0, v2

    .line 244
    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherTextboxRecord;->setRecordId(S)V

    .line 245
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherTextboxRecord;->setOptions(S)V

    .line 246
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 247
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_getBoundAggregate()Lorg/apache/poi/hssf/record/EscherAggregate;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->_textObjectRecord:Lorg/apache/poi/hssf/record/TextObjectRecord;

    invoke-virtual {v1, v0, v2}, Lorg/apache/poi/hssf/record/EscherAggregate;->associateShapeToObjRecord(Lorg/apache/poi/ddf/EscherRecord;Lorg/apache/poi/hssf/record/Record;)V

    .line 249
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->_textObjectRecord:Lorg/apache/poi/hssf/record/TextObjectRecord;

    return-object v1
.end method


# virtual methods
.method afterInsert(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V
    .locals 3
    .param p1, "patriarch"    # Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    .line 180
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_getBoundAggregate()Lorg/apache/poi/hssf/record/EscherAggregate;

    move-result-object v0

    .line 181
    .local v0, "agg":Lorg/apache/poi/hssf/record/EscherAggregate;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v1

    const/16 v2, -0xfef

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hssf/record/EscherAggregate;->associateShapeToObjRecord(Lorg/apache/poi/ddf/EscherRecord;Lorg/apache/poi/hssf/record/Record;)V

    .line 183
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getTextObjectRecord()Lorg/apache/poi/hssf/record/TextObjectRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v1

    const/16 v2, -0xff3

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getTextObjectRecord()Lorg/apache/poi/hssf/record/TextObjectRecord;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hssf/record/EscherAggregate;->associateShapeToObjRecord(Lorg/apache/poi/ddf/EscherRecord;Lorg/apache/poi/hssf/record/Record;)V

    .line 186
    :cond_0
    return-void
.end method

.method protected afterRemove(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V
    .locals 3
    .param p1, "patriarch"    # Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    .line 147
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_getBoundAggregate()Lorg/apache/poi/hssf/record/EscherAggregate;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v1

    const/16 v2, -0xfef

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/EscherAggregate;->removeShapeToObjRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 148
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v0

    const/16 v1, -0xff3

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_getBoundAggregate()Lorg/apache/poi/hssf/record/EscherAggregate;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/EscherAggregate;->removeShapeToObjRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 151
    :cond_0
    return-void
.end method

.method protected cloneShape()Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .locals 5

    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, "txo":Lorg/apache/poi/hssf/record/TextObjectRecord;
    new-instance v1, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v1}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    .line 192
    .local v1, "spContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->serialize()[B

    move-result-object v2

    .line 193
    .local v2, "inSp":[B
    new-instance v3, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;

    invoke-direct {v3}, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lorg/apache/poi/ddf/EscherContainerRecord;->fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I

    .line 194
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ObjRecord;->cloneViaReserialise()Lorg/apache/poi/hssf/record/Record;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/ObjRecord;

    .line 195
    .local v3, "obj":Lorg/apache/poi/hssf/record/ObjRecord;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getTextObjectRecord()Lorg/apache/poi/hssf/record/TextObjectRecord;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getString()Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getString()Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->getString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 196
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getTextObjectRecord()Lorg/apache/poi/hssf/record/TextObjectRecord;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/TextObjectRecord;->cloneViaReserialise()Lorg/apache/poi/hssf/record/Record;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lorg/apache/poi/hssf/record/TextObjectRecord;

    .line 198
    :cond_0
    new-instance v4, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;

    invoke-direct {v4, v1, v3, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/hssf/record/TextObjectRecord;)V

    return-object v4
.end method

.method protected createObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;
    .locals 3

    .line 132
    new-instance v0, Lorg/apache/poi/hssf/record/ObjRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/ObjRecord;-><init>()V

    .line 133
    .local v0, "obj":Lorg/apache/poi/hssf/record/ObjRecord;
    new-instance v1, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;-><init>()V

    .line 134
    .local v1, "c":Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setLocked(Z)V

    .line 135
    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setPrintable(Z)V

    .line 136
    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setAutofill(Z)V

    .line 137
    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setAutoline(Z)V

    .line 138
    new-instance v2, Lorg/apache/poi/hssf/record/EndSubRecord;

    invoke-direct {v2}, Lorg/apache/poi/hssf/record/EndSubRecord;-><init>()V

    .line 140
    .local v2, "e":Lorg/apache/poi/hssf/record/EndSubRecord;
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 141
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 142
    return-object v0
.end method

.method protected createSpContainer()Lorg/apache/poi/ddf/EscherContainerRecord;
    .locals 10

    .line 92
    new-instance v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v0}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    .line 93
    .local v0, "spContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    const/16 v1, -0xffc

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->setRecordId(S)V

    .line 94
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->setOptions(S)V

    .line 96
    new-instance v1, Lorg/apache/poi/ddf/EscherSpRecord;

    invoke-direct {v1}, Lorg/apache/poi/ddf/EscherSpRecord;-><init>()V

    .line 97
    .local v1, "sp":Lorg/apache/poi/ddf/EscherSpRecord;
    const/16 v2, -0xff6

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherSpRecord;->setRecordId(S)V

    .line 98
    const/16 v2, 0xa00

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    .line 99
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherSpRecord;->setVersion(S)V

    .line 101
    new-instance v2, Lorg/apache/poi/ddf/EscherClientDataRecord;

    invoke-direct {v2}, Lorg/apache/poi/ddf/EscherClientDataRecord;-><init>()V

    .line 102
    .local v2, "clientData":Lorg/apache/poi/ddf/EscherClientDataRecord;
    const/16 v3, -0xfef

    invoke-virtual {v2, v3}, Lorg/apache/poi/ddf/EscherClientDataRecord;->setRecordId(S)V

    .line 103
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/poi/ddf/EscherClientDataRecord;->setOptions(S)V

    .line 105
    new-instance v4, Lorg/apache/poi/ddf/EscherOptRecord;

    invoke-direct {v4}, Lorg/apache/poi/ddf/EscherOptRecord;-><init>()V

    .line 106
    .local v4, "optRecord":Lorg/apache/poi/ddf/EscherOptRecord;
    new-instance v5, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v6, 0x1ce

    invoke-direct {v5, v6, v3}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    invoke-virtual {v4, v5}, Lorg/apache/poi/ddf/EscherOptRecord;->setEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 107
    new-instance v5, Lorg/apache/poi/ddf/EscherBoolProperty;

    const/16 v6, 0x1ff

    const v7, 0x80008

    invoke-direct {v5, v6, v7}, Lorg/apache/poi/ddf/EscherBoolProperty;-><init>(SI)V

    invoke-virtual {v4, v5}, Lorg/apache/poi/ddf/EscherOptRecord;->setEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 109
    new-instance v5, Lorg/apache/poi/ddf/EscherRGBProperty;

    const/16 v8, 0x181

    const v9, 0x8000009

    invoke-direct {v5, v8, v9}, Lorg/apache/poi/ddf/EscherRGBProperty;-><init>(SI)V

    invoke-virtual {v4, v5}, Lorg/apache/poi/ddf/EscherOptRecord;->setEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 110
    new-instance v5, Lorg/apache/poi/ddf/EscherRGBProperty;

    const/16 v8, 0x1c0

    const v9, 0x8000040

    invoke-direct {v5, v8, v9}, Lorg/apache/poi/ddf/EscherRGBProperty;-><init>(SI)V

    invoke-virtual {v4, v5}, Lorg/apache/poi/ddf/EscherOptRecord;->setEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 111
    new-instance v5, Lorg/apache/poi/ddf/EscherBoolProperty;

    const/16 v8, 0x1bf

    const/high16 v9, 0x10000

    invoke-direct {v5, v8, v9}, Lorg/apache/poi/ddf/EscherBoolProperty;-><init>(SI)V

    invoke-virtual {v4, v5}, Lorg/apache/poi/ddf/EscherOptRecord;->setEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 112
    new-instance v5, Lorg/apache/poi/ddf/EscherBoolProperty;

    invoke-direct {v5, v6, v7}, Lorg/apache/poi/ddf/EscherBoolProperty;-><init>(SI)V

    invoke-virtual {v4, v5}, Lorg/apache/poi/ddf/EscherOptRecord;->setEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 114
    new-instance v5, Lorg/apache/poi/ddf/EscherShapePathProperty;

    const/16 v6, 0x144

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lorg/apache/poi/ddf/EscherShapePathProperty;-><init>(SI)V

    invoke-virtual {v4, v5}, Lorg/apache/poi/ddf/EscherOptRecord;->setEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 115
    new-instance v5, Lorg/apache/poi/ddf/EscherBoolProperty;

    const/16 v6, 0x3bf

    const/high16 v7, 0x80000

    invoke-direct {v5, v6, v7}, Lorg/apache/poi/ddf/EscherBoolProperty;-><init>(SI)V

    invoke-virtual {v4, v5}, Lorg/apache/poi/ddf/EscherOptRecord;->setEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 116
    const/16 v5, -0xff5

    invoke-virtual {v4, v5}, Lorg/apache/poi/ddf/EscherOptRecord;->setRecordId(S)V

    .line 118
    new-instance v5, Lorg/apache/poi/ddf/EscherTextboxRecord;

    invoke-direct {v5}, Lorg/apache/poi/ddf/EscherTextboxRecord;-><init>()V

    .line 119
    .local v5, "escherTextbox":Lorg/apache/poi/ddf/EscherTextboxRecord;
    const/16 v6, -0xff3

    invoke-virtual {v5, v6}, Lorg/apache/poi/ddf/EscherTextboxRecord;->setRecordId(S)V

    .line 120
    invoke-virtual {v5, v3}, Lorg/apache/poi/ddf/EscherTextboxRecord;->setOptions(S)V

    .line 122
    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 123
    invoke-virtual {v0, v4}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 124
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getAnchor()Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;->getEscherAnchor()Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 125
    invoke-virtual {v0, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 126
    invoke-virtual {v0, v5}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 127
    return-object v0
.end method

.method protected createTextObjRecord()Lorg/apache/poi/hssf/record/TextObjectRecord;
    .locals 3

    .line 81
    new-instance v0, Lorg/apache/poi/hssf/record/TextObjectRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/TextObjectRecord;-><init>()V

    .line 82
    .local v0, "obj":Lorg/apache/poi/hssf/record/TextObjectRecord;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/TextObjectRecord;->setHorizontalTextAlignment(I)V

    .line 83
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/TextObjectRecord;->setVerticalTextAlignment(I)V

    .line 84
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/TextObjectRecord;->setTextLocked(Z)V

    .line 85
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/TextObjectRecord;->setTextOrientation(I)V

    .line 86
    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    const-string v2, ""

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/TextObjectRecord;->setStr(Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;)V

    .line 87
    return-object v0
.end method

.method public getShapeType()I
    .locals 2

    .line 213
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v0

    const/16 v1, -0xff6

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherSpRecord;

    .line 214
    .local v0, "spRecord":Lorg/apache/poi/ddf/EscherSpRecord;
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSpRecord;->getShapeType()S

    move-result v1

    return v1
.end method

.method public getString()Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->_textObjectRecord:Lorg/apache/poi/hssf/record/TextObjectRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/TextObjectRecord;->getStr()Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    move-result-object v0

    return-object v0
.end method

.method protected getTextObjectRecord()Lorg/apache/poi/hssf/record/TextObjectRecord;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->_textObjectRecord:Lorg/apache/poi/hssf/record/TextObjectRecord;

    return-object v0
.end method

.method public getWrapText()I
    .locals 2

    .line 218
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getOptRecord()Lorg/apache/poi/ddf/EscherOptRecord;

    move-result-object v0

    const/16 v1, 0x85

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherOptRecord;->lookup(I)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    .line 219
    .local v0, "property":Lorg/apache/poi/ddf/EscherSimpleProperty;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method public setShapeType(I)V
    .locals 3
    .param p1, "value"    # I

    .line 231
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ObjRecord;->getSubRecords()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    .line 232
    .local v0, "cod":Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;
    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setObjectType(S)V

    .line 233
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v1

    const/16 v2, -0xff6

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherSpRecord;

    .line 234
    .local v1, "spRecord":Lorg/apache/poi/ddf/EscherSpRecord;
    int-to-short v2, p1

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherSpRecord;->setShapeType(S)V

    .line 235
    return-void
.end method

.method public setString(Lorg/apache/poi/ss/usermodel/RichTextString;)V
    .locals 5
    .param p1, "string"    # Lorg/apache/poi/ss/usermodel/RichTextString;

    .line 165
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getShapeType()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getShapeType()I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_2

    .line 168
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    .line 170
    .local v0, "rtr":Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->numFormattingRuns()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->applyFont(S)V

    .line 171
    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getOrCreateTextObjRecord()Lorg/apache/poi/hssf/record/TextObjectRecord;

    move-result-object v1

    .line 172
    .local v1, "txo":Lorg/apache/poi/hssf/record/TextObjectRecord;
    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/record/TextObjectRecord;->setStr(Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;)V

    .line 173
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 174
    new-instance v2, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v3, 0x80

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->setPropertyValue(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 176
    :cond_1
    return-void

    .line 166
    .end local v0    # "rtr":Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    .end local v1    # "txo":Lorg/apache/poi/hssf/record/TextObjectRecord;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set text for shape type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getShapeType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWrapText(I)V
    .locals 3
    .param p1, "value"    # I

    .line 223
    new-instance v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v1, 0x85

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, p1}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SZZI)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->setPropertyValue(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 224
    return-void
.end method
