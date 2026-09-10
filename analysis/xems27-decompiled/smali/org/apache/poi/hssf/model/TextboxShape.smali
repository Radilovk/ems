.class public Lorg/apache/poi/hssf/model/TextboxShape;
.super Lorg/apache/poi/hssf/model/AbstractShape;
.source "TextboxShape.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private escherTextbox:Lorg/apache/poi/ddf/EscherTextboxRecord;

.field private objRecord:Lorg/apache/poi/hssf/record/ObjRecord;

.field private spContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

.field private textObjectRecord:Lorg/apache/poi/hssf/record/TextObjectRecord;


# direct methods
.method constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFTextbox;I)V
    .locals 1
    .param p1, "hssfShape"    # Lorg/apache/poi/hssf/usermodel/HSSFTextbox;
    .param p2, "shapeId"    # I

    .line 45
    invoke-direct {p0}, Lorg/apache/poi/hssf/model/AbstractShape;-><init>()V

    .line 46
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/model/TextboxShape;->createSpContainer(Lorg/apache/poi/hssf/usermodel/HSSFTextbox;I)Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/model/TextboxShape;->spContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    .line 47
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/model/TextboxShape;->createObjRecord(Lorg/apache/poi/hssf/usermodel/HSSFTextbox;I)Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/model/TextboxShape;->objRecord:Lorg/apache/poi/hssf/record/ObjRecord;

    .line 48
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/model/TextboxShape;->createTextObjectRecord(Lorg/apache/poi/hssf/usermodel/HSSFTextbox;I)Lorg/apache/poi/hssf/record/TextObjectRecord;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/model/TextboxShape;->textObjectRecord:Lorg/apache/poi/hssf/record/TextObjectRecord;

    .line 49
    return-void
.end method

.method private createObjRecord(Lorg/apache/poi/hssf/usermodel/HSSFTextbox;I)Lorg/apache/poi/hssf/record/ObjRecord;
    .locals 4
    .param p1, "hssfShape"    # Lorg/apache/poi/hssf/usermodel/HSSFTextbox;
    .param p2, "shapeId"    # I

    .line 56
    move-object v0, p1

    .line 58
    .local v0, "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    new-instance v1, Lorg/apache/poi/hssf/record/ObjRecord;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/ObjRecord;-><init>()V

    .line 59
    .local v1, "obj":Lorg/apache/poi/hssf/record/ObjRecord;
    new-instance v2, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    invoke-direct {v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;-><init>()V

    .line 60
    .local v2, "c":Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;
    move-object v3, v0

    check-cast v3, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getShapeType()I

    move-result v3

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setObjectType(S)V

    .line 61
    invoke-virtual {p0, p2}, Lorg/apache/poi/hssf/model/TextboxShape;->getCmoObjectId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setObjectId(I)V

    .line 62
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setLocked(Z)V

    .line 63
    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setPrintable(Z)V

    .line 64
    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setAutofill(Z)V

    .line 65
    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setAutoline(Z)V

    .line 66
    new-instance v3, Lorg/apache/poi/hssf/record/EndSubRecord;

    invoke-direct {v3}, Lorg/apache/poi/hssf/record/EndSubRecord;-><init>()V

    .line 68
    .local v3, "e":Lorg/apache/poi/hssf/record/EndSubRecord;
    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 69
    invoke-virtual {v1, v3}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 71
    return-object v1
.end method

.method private createSpContainer(Lorg/apache/poi/hssf/usermodel/HSSFTextbox;I)Lorg/apache/poi/ddf/EscherContainerRecord;
    .locals 10
    .param p1, "hssfShape"    # Lorg/apache/poi/hssf/usermodel/HSSFTextbox;
    .param p2, "shapeId"    # I

    .line 82
    move-object v0, p1

    .line 84
    .local v0, "shape":Lorg/apache/poi/hssf/usermodel/HSSFTextbox;
    new-instance v1, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v1}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    .line 85
    .local v1, "spContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    new-instance v2, Lorg/apache/poi/ddf/EscherSpRecord;

    invoke-direct {v2}, Lorg/apache/poi/ddf/EscherSpRecord;-><init>()V

    .line 86
    .local v2, "sp":Lorg/apache/poi/ddf/EscherSpRecord;
    new-instance v3, Lorg/apache/poi/ddf/EscherOptRecord;

    invoke-direct {v3}, Lorg/apache/poi/ddf/EscherOptRecord;-><init>()V

    .line 87
    .local v3, "opt":Lorg/apache/poi/ddf/EscherOptRecord;
    new-instance v4, Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-direct {v4}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;-><init>()V

    .line 88
    .local v4, "anchor":Lorg/apache/poi/ddf/EscherRecord;
    new-instance v5, Lorg/apache/poi/ddf/EscherClientDataRecord;

    invoke-direct {v5}, Lorg/apache/poi/ddf/EscherClientDataRecord;-><init>()V

    .line 89
    .local v5, "clientData":Lorg/apache/poi/ddf/EscherClientDataRecord;
    new-instance v6, Lorg/apache/poi/ddf/EscherTextboxRecord;

    invoke-direct {v6}, Lorg/apache/poi/ddf/EscherTextboxRecord;-><init>()V

    iput-object v6, p0, Lorg/apache/poi/hssf/model/TextboxShape;->escherTextbox:Lorg/apache/poi/ddf/EscherTextboxRecord;

    .line 91
    const/16 v6, -0xffc

    invoke-virtual {v1, v6}, Lorg/apache/poi/ddf/EscherContainerRecord;->setRecordId(S)V

    .line 92
    const/16 v6, 0xf

    invoke-virtual {v1, v6}, Lorg/apache/poi/ddf/EscherContainerRecord;->setOptions(S)V

    .line 93
    const/16 v6, -0xff6

    invoke-virtual {v2, v6}, Lorg/apache/poi/ddf/EscherSpRecord;->setRecordId(S)V

    .line 94
    const/16 v6, 0xca2

    invoke-virtual {v2, v6}, Lorg/apache/poi/ddf/EscherSpRecord;->setOptions(S)V

    .line 96
    invoke-virtual {v2, p2}, Lorg/apache/poi/ddf/EscherSpRecord;->setShapeId(I)V

    .line 97
    const/16 v6, 0xa00

    invoke-virtual {v2, v6}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    .line 98
    const/16 v6, -0xff5

    invoke-virtual {v3, v6}, Lorg/apache/poi/ddf/EscherOptRecord;->setRecordId(S)V

    .line 100
    new-instance v6, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v7, 0x80

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    invoke-virtual {v3, v6}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 101
    new-instance v6, Lorg/apache/poi/ddf/EscherSimpleProperty;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->getMarginLeft()I

    move-result v7

    const/16 v9, 0x81

    invoke-direct {v6, v9, v7}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    invoke-virtual {v3, v6}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 102
    new-instance v6, Lorg/apache/poi/ddf/EscherSimpleProperty;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->getMarginRight()I

    move-result v7

    const/16 v9, 0x83

    invoke-direct {v6, v9, v7}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    invoke-virtual {v3, v6}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 103
    new-instance v6, Lorg/apache/poi/ddf/EscherSimpleProperty;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->getMarginBottom()I

    move-result v7

    const/16 v9, 0x84

    invoke-direct {v6, v9, v7}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    invoke-virtual {v3, v6}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 104
    new-instance v6, Lorg/apache/poi/ddf/EscherSimpleProperty;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->getMarginTop()I

    move-result v7

    const/16 v9, 0x82

    invoke-direct {v6, v9, v7}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    invoke-virtual {v3, v6}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 106
    new-instance v6, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v7, 0x85

    invoke-direct {v6, v7, v8}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    invoke-virtual {v3, v6}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 107
    new-instance v6, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v7, 0x87

    invoke-direct {v6, v7, v8}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    invoke-virtual {v3, v6}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 108
    new-instance v6, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v7, 0x3bf

    const/high16 v9, 0x80000

    invoke-direct {v6, v7, v9}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    invoke-virtual {v3, v6}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 110
    invoke-virtual {p0, v0, v3}, Lorg/apache/poi/hssf/model/TextboxShape;->addStandardOptions(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/ddf/EscherOptRecord;)I

    .line 111
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->getAnchor()Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    move-result-object v6

    .line 116
    .local v6, "userAnchor":Lorg/apache/poi/hssf/usermodel/HSSFAnchor;
    invoke-virtual {p0, v6}, Lorg/apache/poi/hssf/model/TextboxShape;->createAnchor(Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v4

    .line 117
    const/16 v7, -0xfef

    invoke-virtual {v5, v7}, Lorg/apache/poi/ddf/EscherClientDataRecord;->setRecordId(S)V

    .line 118
    invoke-virtual {v5, v8}, Lorg/apache/poi/ddf/EscherClientDataRecord;->setOptions(S)V

    .line 119
    iget-object v7, p0, Lorg/apache/poi/hssf/model/TextboxShape;->escherTextbox:Lorg/apache/poi/ddf/EscherTextboxRecord;

    const/16 v9, -0xff3

    invoke-virtual {v7, v9}, Lorg/apache/poi/ddf/EscherTextboxRecord;->setRecordId(S)V

    .line 120
    iget-object v7, p0, Lorg/apache/poi/hssf/model/TextboxShape;->escherTextbox:Lorg/apache/poi/ddf/EscherTextboxRecord;

    invoke-virtual {v7, v8}, Lorg/apache/poi/ddf/EscherTextboxRecord;->setOptions(S)V

    .line 122
    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 123
    invoke-virtual {v1, v3}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 124
    invoke-virtual {v1, v4}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 125
    invoke-virtual {v1, v5}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 126
    iget-object v7, p0, Lorg/apache/poi/hssf/model/TextboxShape;->escherTextbox:Lorg/apache/poi/ddf/EscherTextboxRecord;

    invoke-virtual {v1, v7}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 128
    return-object v1
.end method

.method private createTextObjectRecord(Lorg/apache/poi/hssf/usermodel/HSSFTextbox;I)Lorg/apache/poi/hssf/record/TextObjectRecord;
    .locals 3
    .param p1, "hssfShape"    # Lorg/apache/poi/hssf/usermodel/HSSFTextbox;
    .param p2, "shapeId"    # I

    .line 137
    move-object v0, p1

    .line 139
    .local v0, "shape":Lorg/apache/poi/hssf/usermodel/HSSFTextbox;
    new-instance v1, Lorg/apache/poi/hssf/record/TextObjectRecord;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/TextObjectRecord;-><init>()V

    .line 140
    .local v1, "obj":Lorg/apache/poi/hssf/record/TextObjectRecord;
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->getHorizontalAlignment()S

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/TextObjectRecord;->setHorizontalTextAlignment(I)V

    .line 141
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->getVerticalAlignment()S

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/TextObjectRecord;->setVerticalTextAlignment(I)V

    .line 142
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/TextObjectRecord;->setTextLocked(Z)V

    .line 143
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/TextObjectRecord;->setTextOrientation(I)V

    .line 144
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->getString()Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/TextObjectRecord;->setStr(Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;)V

    .line 146
    return-object v1
.end method


# virtual methods
.method public getEscherTextbox()Lorg/apache/poi/ddf/EscherRecord;
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/apache/poi/hssf/model/TextboxShape;->escherTextbox:Lorg/apache/poi/ddf/EscherTextboxRecord;

    return-object v0
.end method

.method public getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/apache/poi/hssf/model/TextboxShape;->objRecord:Lorg/apache/poi/hssf/record/ObjRecord;

    return-object v0
.end method

.method public getSpContainer()Lorg/apache/poi/ddf/EscherContainerRecord;
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/apache/poi/hssf/model/TextboxShape;->spContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    return-object v0
.end method

.method public getTextObjectRecord()Lorg/apache/poi/hssf/record/TextObjectRecord;
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/apache/poi/hssf/model/TextboxShape;->textObjectRecord:Lorg/apache/poi/hssf/record/TextObjectRecord;

    return-object v0
.end method
