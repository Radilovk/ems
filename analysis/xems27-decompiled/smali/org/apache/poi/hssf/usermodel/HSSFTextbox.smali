.class public Lorg/apache/poi/hssf/usermodel/HSSFTextbox;
.super Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;
.source "HSSFTextbox.java"


# static fields
.field public static final HORIZONTAL_ALIGNMENT_CENTERED:S = 0x2s

.field public static final HORIZONTAL_ALIGNMENT_DISTRIBUTED:S = 0x7s

.field public static final HORIZONTAL_ALIGNMENT_JUSTIFIED:S = 0x4s

.field public static final HORIZONTAL_ALIGNMENT_LEFT:S = 0x1s

.field public static final HORIZONTAL_ALIGNMENT_RIGHT:S = 0x3s

.field public static final OBJECT_TYPE_TEXT:S = 0x6s

.field public static final VERTICAL_ALIGNMENT_BOTTOM:S = 0x3s

.field public static final VERTICAL_ALIGNMENT_CENTER:S = 0x2s

.field public static final VERTICAL_ALIGNMENT_DISTRIBUTED:S = 0x7s

.field public static final VERTICAL_ALIGNMENT_JUSTIFY:S = 0x4s

.field public static final VERTICAL_ALIGNMENT_TOP:S = 0x1s


# instance fields
.field string:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/hssf/record/TextObjectRecord;)V
    .locals 2
    .param p1, "spContainer"    # Lorg/apache/poi/ddf/EscherContainerRecord;
    .param p2, "objRecord"    # Lorg/apache/poi/hssf/record/ObjRecord;
    .param p3, "textObjectRecord"    # Lorg/apache/poi/hssf/record/TextObjectRecord;

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/hssf/record/TextObjectRecord;)V

    .line 51
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->string:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V
    .locals 2
    .param p1, "parent"    # Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .param p2, "anchor"    # Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    .line 60
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    .line 51
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->string:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->setHorizontalAlignment(S)V

    .line 62
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->setVerticalAlignment(S)V

    .line 63
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->setString(Lorg/apache/poi/ss/usermodel/RichTextString;)V

    .line 64
    return-void
.end method


# virtual methods
.method afterInsert(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V
    .locals 3
    .param p1, "patriarch"    # Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    .line 131
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_getBoundAggregate()Lorg/apache/poi/hssf/record/EscherAggregate;

    move-result-object v0

    .line 132
    .local v0, "agg":Lorg/apache/poi/hssf/record/EscherAggregate;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v1

    const/16 v2, -0xfef

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hssf/record/EscherAggregate;->associateShapeToObjRecord(Lorg/apache/poi/ddf/EscherRecord;Lorg/apache/poi/hssf/record/Record;)V

    .line 133
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->getTextObjectRecord()Lorg/apache/poi/hssf/record/TextObjectRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v1

    const/16 v2, -0xff3

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->getTextObjectRecord()Lorg/apache/poi/hssf/record/TextObjectRecord;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hssf/record/EscherAggregate;->associateShapeToObjRecord(Lorg/apache/poi/ddf/EscherRecord;Lorg/apache/poi/hssf/record/Record;)V

    .line 136
    :cond_0
    return-void
.end method

.method protected afterRemove(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V
    .locals 3
    .param p1, "patriarch"    # Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    .line 243
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_getBoundAggregate()Lorg/apache/poi/hssf/record/EscherAggregate;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v1

    const/16 v2, -0xfef

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/EscherAggregate;->removeShapeToObjRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 244
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_getBoundAggregate()Lorg/apache/poi/hssf/record/EscherAggregate;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v1

    const/16 v2, -0xff3

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/EscherAggregate;->removeShapeToObjRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 245
    return-void
.end method

.method protected cloneShape()Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .locals 5

    .line 233
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->getTextObjectRecord()Lorg/apache/poi/hssf/record/TextObjectRecord;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->getTextObjectRecord()Lorg/apache/poi/hssf/record/TextObjectRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/TextObjectRecord;->cloneViaReserialise()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/TextObjectRecord;

    .line 234
    .local v0, "txo":Lorg/apache/poi/hssf/record/TextObjectRecord;
    :goto_0
    new-instance v1, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v1}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    .line 235
    .local v1, "spContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->serialize()[B

    move-result-object v2

    .line 236
    .local v2, "inSp":[B
    const/4 v3, 0x0

    new-instance v4, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;

    invoke-direct {v4}, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/apache/poi/ddf/EscherContainerRecord;->fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I

    .line 237
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ObjRecord;->cloneViaReserialise()Lorg/apache/poi/hssf/record/Record;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/ObjRecord;

    .line 238
    .local v3, "obj":Lorg/apache/poi/hssf/record/ObjRecord;
    new-instance v4, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;

    invoke-direct {v4, v1, v3, v0}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/hssf/record/TextObjectRecord;)V

    return-object v4
.end method

.method protected createObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;
    .locals 3

    .line 68
    new-instance v0, Lorg/apache/poi/hssf/record/ObjRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/ObjRecord;-><init>()V

    .line 69
    .local v0, "obj":Lorg/apache/poi/hssf/record/ObjRecord;
    new-instance v1, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;-><init>()V

    .line 70
    .local v1, "c":Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setObjectType(S)V

    .line 71
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setLocked(Z)V

    .line 72
    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setPrintable(Z)V

    .line 73
    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setAutofill(Z)V

    .line 74
    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setAutoline(Z)V

    .line 75
    new-instance v2, Lorg/apache/poi/hssf/record/EndSubRecord;

    invoke-direct {v2}, Lorg/apache/poi/hssf/record/EndSubRecord;-><init>()V

    .line 76
    .local v2, "e":Lorg/apache/poi/hssf/record/EndSubRecord;
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 77
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 78
    return-object v0
.end method

.method protected createSpContainer()Lorg/apache/poi/ddf/EscherContainerRecord;
    .locals 11

    .line 83
    new-instance v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v0}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    .line 84
    .local v0, "spContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    new-instance v1, Lorg/apache/poi/ddf/EscherSpRecord;

    invoke-direct {v1}, Lorg/apache/poi/ddf/EscherSpRecord;-><init>()V

    .line 85
    .local v1, "sp":Lorg/apache/poi/ddf/EscherSpRecord;
    new-instance v2, Lorg/apache/poi/ddf/EscherOptRecord;

    invoke-direct {v2}, Lorg/apache/poi/ddf/EscherOptRecord;-><init>()V

    .line 86
    .local v2, "opt":Lorg/apache/poi/ddf/EscherOptRecord;
    new-instance v3, Lorg/apache/poi/ddf/EscherClientDataRecord;

    invoke-direct {v3}, Lorg/apache/poi/ddf/EscherClientDataRecord;-><init>()V

    .line 87
    .local v3, "clientData":Lorg/apache/poi/ddf/EscherClientDataRecord;
    new-instance v4, Lorg/apache/poi/ddf/EscherTextboxRecord;

    invoke-direct {v4}, Lorg/apache/poi/ddf/EscherTextboxRecord;-><init>()V

    .line 89
    .local v4, "escherTextbox":Lorg/apache/poi/ddf/EscherTextboxRecord;
    const/16 v5, -0xffc

    invoke-virtual {v0, v5}, Lorg/apache/poi/ddf/EscherContainerRecord;->setRecordId(S)V

    .line 90
    const/16 v5, 0xf

    invoke-virtual {v0, v5}, Lorg/apache/poi/ddf/EscherContainerRecord;->setOptions(S)V

    .line 91
    const/16 v5, -0xff6

    invoke-virtual {v1, v5}, Lorg/apache/poi/ddf/EscherSpRecord;->setRecordId(S)V

    .line 92
    const/16 v5, 0xca2

    invoke-virtual {v1, v5}, Lorg/apache/poi/ddf/EscherSpRecord;->setOptions(S)V

    .line 94
    const/16 v5, 0xa00

    invoke-virtual {v1, v5}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    .line 95
    const/16 v5, -0xff5

    invoke-virtual {v2, v5}, Lorg/apache/poi/ddf/EscherOptRecord;->setRecordId(S)V

    .line 96
    new-instance v5, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v6, 0x80

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    invoke-virtual {v2, v5}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 97
    new-instance v5, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v6, 0x85

    invoke-direct {v5, v6, v7}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    invoke-virtual {v2, v5}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 98
    new-instance v5, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v6, 0x87

    invoke-direct {v5, v6, v7}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    invoke-virtual {v2, v5}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 99
    new-instance v5, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v6, 0x3bf

    const/high16 v8, 0x80000

    invoke-direct {v5, v6, v8}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    invoke-virtual {v2, v5}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 101
    new-instance v5, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v9, 0x81

    invoke-direct {v5, v9, v7}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    invoke-virtual {v2, v5}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 102
    new-instance v5, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v9, 0x83

    invoke-direct {v5, v9, v7}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    invoke-virtual {v2, v5}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 103
    new-instance v5, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v9, 0x82

    invoke-direct {v5, v9, v7}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    invoke-virtual {v2, v5}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 104
    new-instance v5, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v9, 0x84

    invoke-direct {v5, v9, v7}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    invoke-virtual {v2, v5}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 106
    new-instance v5, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v9, 0x1ce

    invoke-direct {v5, v9, v7}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    invoke-virtual {v2, v5}, Lorg/apache/poi/ddf/EscherOptRecord;->setEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 107
    new-instance v5, Lorg/apache/poi/ddf/EscherBoolProperty;

    const/16 v9, 0x1ff

    const v10, 0x80008

    invoke-direct {v5, v9, v10}, Lorg/apache/poi/ddf/EscherBoolProperty;-><init>(SI)V

    invoke-virtual {v2, v5}, Lorg/apache/poi/ddf/EscherOptRecord;->setEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 108
    new-instance v5, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v9, 0x1cb

    const/16 v10, 0x2535

    invoke-direct {v5, v9, v10}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    invoke-virtual {v2, v5}, Lorg/apache/poi/ddf/EscherOptRecord;->setEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 109
    new-instance v5, Lorg/apache/poi/ddf/EscherRGBProperty;

    const/16 v9, 0x181

    const v10, 0x8000009

    invoke-direct {v5, v9, v10}, Lorg/apache/poi/ddf/EscherRGBProperty;-><init>(SI)V

    invoke-virtual {v2, v5}, Lorg/apache/poi/ddf/EscherOptRecord;->setEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 110
    new-instance v5, Lorg/apache/poi/ddf/EscherRGBProperty;

    const/16 v9, 0x1c0

    const v10, 0x8000040

    invoke-direct {v5, v9, v10}, Lorg/apache/poi/ddf/EscherRGBProperty;-><init>(SI)V

    invoke-virtual {v2, v5}, Lorg/apache/poi/ddf/EscherOptRecord;->setEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 111
    new-instance v5, Lorg/apache/poi/ddf/EscherBoolProperty;

    const/16 v9, 0x1bf

    const/high16 v10, 0x10000

    invoke-direct {v5, v9, v10}, Lorg/apache/poi/ddf/EscherBoolProperty;-><init>(SI)V

    invoke-virtual {v2, v5}, Lorg/apache/poi/ddf/EscherOptRecord;->setEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 112
    new-instance v5, Lorg/apache/poi/ddf/EscherBoolProperty;

    invoke-direct {v5, v6, v8}, Lorg/apache/poi/ddf/EscherBoolProperty;-><init>(SI)V

    invoke-virtual {v2, v5}, Lorg/apache/poi/ddf/EscherOptRecord;->setEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 114
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->getAnchor()Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;->getEscherAnchor()Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v5

    .line 115
    .local v5, "anchor":Lorg/apache/poi/ddf/EscherRecord;
    const/16 v6, -0xfef

    invoke-virtual {v3, v6}, Lorg/apache/poi/ddf/EscherClientDataRecord;->setRecordId(S)V

    .line 116
    invoke-virtual {v3, v7}, Lorg/apache/poi/ddf/EscherClientDataRecord;->setOptions(S)V

    .line 117
    const/16 v6, -0xff3

    invoke-virtual {v4, v6}, Lorg/apache/poi/ddf/EscherTextboxRecord;->setRecordId(S)V

    .line 118
    invoke-virtual {v4, v7}, Lorg/apache/poi/ddf/EscherTextboxRecord;->setOptions(S)V

    .line 120
    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 121
    invoke-virtual {v0, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 122
    invoke-virtual {v0, v5}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 123
    invoke-virtual {v0, v3}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 124
    invoke-virtual {v0, v4}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 126
    return-object v0
.end method

.method public getHorizontalAlignment()S
    .locals 1

    .line 202
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->getTextObjectRecord()Lorg/apache/poi/hssf/record/TextObjectRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/TextObjectRecord;->getHorizontalTextAlignment()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getMarginBottom()I
    .locals 2

    .line 187
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->getOptRecord()Lorg/apache/poi/ddf/EscherOptRecord;

    move-result-object v0

    const/16 v1, 0x84

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherOptRecord;->lookup(I)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    .line 188
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

.method public getMarginLeft()I
    .locals 2

    .line 142
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->getOptRecord()Lorg/apache/poi/ddf/EscherOptRecord;

    move-result-object v0

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherOptRecord;->lookup(I)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    .line 143
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

.method public getMarginRight()I
    .locals 2

    .line 157
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->getOptRecord()Lorg/apache/poi/ddf/EscherOptRecord;

    move-result-object v0

    const/16 v1, 0x83

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherOptRecord;->lookup(I)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    .line 158
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

.method public getMarginTop()I
    .locals 2

    .line 172
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->getOptRecord()Lorg/apache/poi/ddf/EscherOptRecord;

    move-result-object v0

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherOptRecord;->lookup(I)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    .line 173
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

.method public getVerticalAlignment()S
    .locals 1

    .line 216
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->getTextObjectRecord()Lorg/apache/poi/hssf/record/TextObjectRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/TextObjectRecord;->getVerticalTextAlignment()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public setHorizontalAlignment(S)V
    .locals 1
    .param p1, "align"    # S

    .line 209
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->getTextObjectRecord()Lorg/apache/poi/hssf/record/TextObjectRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/TextObjectRecord;->setHorizontalTextAlignment(I)V

    .line 210
    return-void
.end method

.method public setMarginBottom(I)V
    .locals 2
    .param p1, "marginBottom"    # I

    .line 195
    new-instance v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v1, 0x84

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->setPropertyValue(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 196
    return-void
.end method

.method public setMarginLeft(I)V
    .locals 2
    .param p1, "marginLeft"    # I

    .line 150
    new-instance v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v1, 0x81

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->setPropertyValue(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 151
    return-void
.end method

.method public setMarginRight(I)V
    .locals 2
    .param p1, "marginRight"    # I

    .line 165
    new-instance v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v1, 0x83

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->setPropertyValue(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 166
    return-void
.end method

.method public setMarginTop(I)V
    .locals 2
    .param p1, "marginTop"    # I

    .line 180
    new-instance v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v1, 0x82

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->setPropertyValue(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 181
    return-void
.end method

.method public setShapeType(I)V
    .locals 3
    .param p1, "shapeType"    # I

    .line 228
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shape type can not be changed in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVerticalAlignment(S)V
    .locals 1
    .param p1, "align"    # S

    .line 223
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->getTextObjectRecord()Lorg/apache/poi/hssf/record/TextObjectRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/TextObjectRecord;->setVerticalTextAlignment(I)V

    .line 224
    return-void
.end method
