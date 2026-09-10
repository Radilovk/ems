.class public Lorg/apache/poi/hssf/usermodel/HSSFComment;
.super Lorg/apache/poi/hssf/usermodel/HSSFTextbox;
.source "HSSFComment.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Comment;


# static fields
.field private static final FILL_TYPE_PICTURE:I = 0x3

.field private static final FILL_TYPE_SOLID:I = 0x0

.field private static final GROUP_SHAPE_HIDDEN_MASK:I = 0x1000002

.field private static final GROUP_SHAPE_NOT_HIDDEN_MASK:I = -0x1000003

.field private static final GROUP_SHAPE_PROPERTY_DEFAULT_VALUE:I = 0xa0002


# instance fields
.field private _note:Lorg/apache/poi/hssf/record/NoteRecord;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/hssf/record/TextObjectRecord;Lorg/apache/poi/hssf/record/NoteRecord;)V
    .locals 0
    .param p1, "spContainer"    # Lorg/apache/poi/ddf/EscherContainerRecord;
    .param p2, "objRecord"    # Lorg/apache/poi/hssf/record/ObjRecord;
    .param p3, "textObjectRecord"    # Lorg/apache/poi/hssf/record/TextObjectRecord;
    .param p4, "_note"    # Lorg/apache/poi/hssf/record/NoteRecord;

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/hssf/record/TextObjectRecord;)V

    .line 60
    iput-object p4, p0, Lorg/apache/poi/hssf/usermodel/HSSFComment;->_note:Lorg/apache/poi/hssf/record/NoteRecord;

    .line 61
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/hssf/record/NoteRecord;Lorg/apache/poi/hssf/record/TextObjectRecord;)V
    .locals 2
    .param p1, "note"    # Lorg/apache/poi/hssf/record/NoteRecord;
    .param p2, "txo"    # Lorg/apache/poi/hssf/record/TextObjectRecord;

    .line 83
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    invoke-direct {v0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    .line 84
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFComment;->_note:Lorg/apache/poi/hssf/record/NoteRecord;

    .line 85
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V
    .locals 2
    .param p1, "parent"    # Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .param p2, "anchor"    # Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    .line 70
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    .line 71
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->createNoteRecord()Lorg/apache/poi/hssf/record/NoteRecord;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFComment;->_note:Lorg/apache/poi/hssf/record/NoteRecord;

    .line 73
    const v0, 0x8000050

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->setFillColor(I)V

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->setVisible(Z)V

    .line 77
    const-string v1, ""

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->setAuthor(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/ObjRecord;->getSubRecords()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    .line 79
    .local v0, "cod":Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;
    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setObjectType(S)V

    .line 80
    return-void
.end method

.method private createNoteRecord()Lorg/apache/poi/hssf/record/NoteRecord;
    .locals 2

    .line 124
    new-instance v0, Lorg/apache/poi/hssf/record/NoteRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/NoteRecord;-><init>()V

    .line 125
    .local v0, "note":Lorg/apache/poi/hssf/record/NoteRecord;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/NoteRecord;->setFlags(S)V

    .line 126
    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/NoteRecord;->setAuthor(Ljava/lang/String;)V

    .line 127
    return-object v0
.end method

.method private setHidden(Z)V
    .locals 6
    .param p1, "value"    # Z

    .line 293
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getOptRecord()Lorg/apache/poi/ddf/EscherOptRecord;

    move-result-object v0

    const/16 v1, 0x3bf

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherOptRecord;->lookup(I)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    .line 295
    .local v0, "property":Lorg/apache/poi/ddf/EscherSimpleProperty;
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 296
    new-instance v3, Lorg/apache/poi/ddf/EscherSimpleProperty;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result v4

    const v5, 0x1000002

    or-int/2addr v4, v5

    invoke-direct {v3, v1, v2, v2, v4}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SZZI)V

    invoke-virtual {p0, v3}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->setPropertyValue(Lorg/apache/poi/ddf/EscherProperty;)V

    goto :goto_0

    .line 298
    :cond_0
    new-instance v3, Lorg/apache/poi/ddf/EscherSimpleProperty;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result v4

    const v5, -0x1000003

    and-int/2addr v4, v5

    invoke-direct {v3, v1, v2, v2, v4}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SZZI)V

    invoke-virtual {p0, v3}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->setPropertyValue(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 300
    :goto_0
    return-void
.end method


# virtual methods
.method afterInsert(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V
    .locals 2
    .param p1, "patriarch"    # Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    .line 89
    invoke-super {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->afterInsert(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V

    .line 90
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_getBoundAggregate()Lorg/apache/poi/hssf/record/EscherAggregate;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getNoteRecord()Lorg/apache/poi/hssf/record/NoteRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/EscherAggregate;->addTailRecord(Lorg/apache/poi/hssf/record/NoteRecord;)V

    .line 91
    return-void
.end method

.method public afterRemove(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V
    .locals 2
    .param p1, "patriarch"    # Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    .line 255
    invoke-super {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->afterRemove(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V

    .line 256
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_getBoundAggregate()Lorg/apache/poi/hssf/record/EscherAggregate;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getNoteRecord()Lorg/apache/poi/hssf/record/NoteRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/EscherAggregate;->removeTailRecord(Lorg/apache/poi/hssf/record/NoteRecord;)V

    .line 257
    return-void
.end method

.method protected cloneShape()Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .locals 6

    .line 261
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getTextObjectRecord()Lorg/apache/poi/hssf/record/TextObjectRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/TextObjectRecord;->cloneViaReserialise()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/TextObjectRecord;

    .line 262
    .local v0, "txo":Lorg/apache/poi/hssf/record/TextObjectRecord;
    new-instance v1, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v1}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    .line 263
    .local v1, "spContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->serialize()[B

    move-result-object v2

    .line 264
    .local v2, "inSp":[B
    new-instance v3, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;

    invoke-direct {v3}, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lorg/apache/poi/ddf/EscherContainerRecord;->fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I

    .line 265
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ObjRecord;->cloneViaReserialise()Lorg/apache/poi/hssf/record/Record;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/ObjRecord;

    .line 266
    .local v3, "obj":Lorg/apache/poi/hssf/record/ObjRecord;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getNoteRecord()Lorg/apache/poi/hssf/record/NoteRecord;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/NoteRecord;->cloneViaReserialise()Lorg/apache/poi/hssf/record/Record;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hssf/record/NoteRecord;

    .line 267
    .local v4, "note":Lorg/apache/poi/hssf/record/NoteRecord;
    new-instance v5, Lorg/apache/poi/hssf/usermodel/HSSFComment;

    invoke-direct {v5, v1, v3, v0, v4}, Lorg/apache/poi/hssf/usermodel/HSSFComment;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/hssf/record/TextObjectRecord;Lorg/apache/poi/hssf/record/NoteRecord;)V

    return-object v5
.end method

.method protected createObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;
    .locals 4

    .line 107
    new-instance v0, Lorg/apache/poi/hssf/record/ObjRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/ObjRecord;-><init>()V

    .line 108
    .local v0, "obj":Lorg/apache/poi/hssf/record/ObjRecord;
    new-instance v1, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;-><init>()V

    .line 109
    .local v1, "c":Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;
    const/16 v2, 0xca

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setObjectType(S)V

    .line 110
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setLocked(Z)V

    .line 111
    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setPrintable(Z)V

    .line 112
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setAutofill(Z)V

    .line 113
    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setAutoline(Z)V

    .line 115
    new-instance v2, Lorg/apache/poi/hssf/record/NoteStructureSubRecord;

    invoke-direct {v2}, Lorg/apache/poi/hssf/record/NoteStructureSubRecord;-><init>()V

    .line 116
    .local v2, "u":Lorg/apache/poi/hssf/record/NoteStructureSubRecord;
    new-instance v3, Lorg/apache/poi/hssf/record/EndSubRecord;

    invoke-direct {v3}, Lorg/apache/poi/hssf/record/EndSubRecord;-><init>()V

    .line 117
    .local v3, "e":Lorg/apache/poi/hssf/record/EndSubRecord;
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 118
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 119
    invoke-virtual {v0, v3}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 120
    return-object v0
.end method

.method protected createSpContainer()Lorg/apache/poi/ddf/EscherContainerRecord;
    .locals 6

    .line 95
    invoke-super {p0}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->createSpContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v0

    .line 96
    .local v0, "spContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    const/16 v1, -0xff5

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherOptRecord;

    .line 97
    .local v1, "opt":Lorg/apache/poi/ddf/EscherOptRecord;
    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherOptRecord;->removeEscherProperty(I)V

    .line 98
    const/16 v2, 0x83

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherOptRecord;->removeEscherProperty(I)V

    .line 99
    const/16 v2, 0x82

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherOptRecord;->removeEscherProperty(I)V

    .line 100
    const/16 v2, 0x84

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherOptRecord;->removeEscherProperty(I)V

    .line 101
    new-instance v2, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v3, 0x3bf

    const/4 v4, 0x0

    const v5, 0xa0002

    invoke-direct {v2, v3, v4, v4, v5}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SZZI)V

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherOptRecord;->setEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 102
    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFComment;->_note:Lorg/apache/poi/hssf/record/NoteRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NoteRecord;->getAuthor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundImageId()I
    .locals 2

    .line 288
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getOptRecord()Lorg/apache/poi/ddf/EscherOptRecord;

    move-result-object v0

    const/16 v1, 0x186

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherOptRecord;->lookup(I)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    .line 289
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

.method public getClientAnchor()Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .locals 4

    .line 240
    invoke-super {p0}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->getAnchor()Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    move-result-object v0

    .line 241
    .local v0, "ha":Lorg/apache/poi/hssf/usermodel/HSSFAnchor;
    instance-of v1, v0, Lorg/apache/poi/ss/usermodel/ClientAnchor;

    if-eqz v1, :cond_0

    .line 242
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/usermodel/ClientAnchor;

    return-object v1

    .line 245
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Anchor can not be changed in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Lorg/apache/poi/ss/usermodel/ClientAnchor;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getColumn()I
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFComment;->_note:Lorg/apache/poi/hssf/record/NoteRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NoteRecord;->getColumn()I

    move-result v0

    return v0
.end method

.method protected getNoteRecord()Lorg/apache/poi/hssf/record/NoteRecord;
    .locals 1

    .line 226
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFComment;->_note:Lorg/apache/poi/hssf/record/NoteRecord;

    return-object v0
.end method

.method public getRow()I
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFComment;->_note:Lorg/apache/poi/hssf/record/NoteRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NoteRecord;->getRow()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getString()Lorg/apache/poi/ss/usermodel/RichTextString;
    .locals 1

    .line 37
    invoke-super {p0}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->getString()Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    move-result-object v0

    return-object v0
.end method

.method public hasPosition()Z
    .locals 2

    .line 233
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFComment;->_note:Lorg/apache/poi/hssf/record/NoteRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 234
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getColumn()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getRow()I

    move-result v0

    if-gez v0, :cond_1

    goto :goto_0

    .line 235
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 234
    :cond_2
    :goto_0
    return v1
.end method

.method public isVisible()Z
    .locals 2

    .line 157
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFComment;->_note:Lorg/apache/poi/hssf/record/NoteRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NoteRecord;->getFlags()S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public resetBackgroundImage()V
    .locals 4

    .line 278
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getOptRecord()Lorg/apache/poi/ddf/EscherOptRecord;

    move-result-object v0

    const/16 v1, 0x186

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherOptRecord;->lookup(I)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    .line 279
    .local v0, "property":Lorg/apache/poi/ddf/EscherSimpleProperty;
    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBSERecord(I)Lorg/apache/poi/ddf/EscherBSERecord;

    move-result-object v2

    .line 281
    .local v2, "bse":Lorg/apache/poi/ddf/EscherBSERecord;
    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherBSERecord;->getRef()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lorg/apache/poi/ddf/EscherBSERecord;->setRef(I)V

    .line 282
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getOptRecord()Lorg/apache/poi/ddf/EscherOptRecord;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/poi/ddf/EscherOptRecord;->removeEscherProperty(I)V

    .line 284
    .end local v2    # "bse":Lorg/apache/poi/ddf/EscherBSERecord;
    :cond_0
    new-instance v1, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v2, 0x180

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3, v3}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SZZI)V

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->setPropertyValue(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 285
    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 1
    .param p1, "author"    # Ljava/lang/String;

    .line 219
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFComment;->_note:Lorg/apache/poi/hssf/record/NoteRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/NoteRecord;->setAuthor(Ljava/lang/String;)V

    .line 220
    :cond_0
    return-void
.end method

.method public setBackgroundImage(I)V
    .locals 5
    .param p1, "pictureIndex"    # I

    .line 271
    new-instance v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v1, 0x186

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SZZI)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->setPropertyValue(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 272
    new-instance v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v1, 0x180

    const/4 v4, 0x3

    invoke-direct {v0, v1, v2, v2, v4}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SZZI)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->setPropertyValue(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 273
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBSERecord(I)Lorg/apache/poi/ddf/EscherBSERecord;

    move-result-object v0

    .line 274
    .local v0, "bse":Lorg/apache/poi/ddf/EscherBSERecord;
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherBSERecord;->getRef()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherBSERecord;->setRef(I)V

    .line 275
    return-void
.end method

.method public setColumn(I)V
    .locals 1
    .param p1, "col"    # I

    .line 193
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFComment;->_note:Lorg/apache/poi/hssf/record/NoteRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/NoteRecord;->setColumn(I)V

    .line 194
    return-void
.end method

.method public setColumn(S)V
    .locals 0
    .param p1, "col"    # S
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 201
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->setColumn(I)V

    .line 202
    return-void
.end method

.method public setRow(I)V
    .locals 1
    .param p1, "row"    # I

    .line 175
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFComment;->_note:Lorg/apache/poi/hssf/record/NoteRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/NoteRecord;->setRow(I)V

    .line 176
    return-void
.end method

.method setShapeId(I)V
    .locals 2
    .param p1, "shapeId"    # I

    .line 132
    const v0, 0xffff

    if-gt p1, v0, :cond_0

    .line 135
    invoke-super {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->setShapeId(I)V

    .line 136
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ObjRecord;->getSubRecords()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    .line 137
    .local v0, "cod":Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setObjectId(I)V

    .line 138
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFComment;->_note:Lorg/apache/poi/hssf/record/NoteRecord;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/NoteRecord;->setShapeId(I)V

    .line 139
    return-void

    .line 133
    .end local v0    # "cod":Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add more than 65535 shapes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setShapeType(I)V
    .locals 3
    .param p1, "shapeType"    # I

    .line 251
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

.method public setVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 147
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFComment;->_note:Lorg/apache/poi/hssf/record/NoteRecord;

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/NoteRecord;->setFlags(S)V

    .line 148
    xor-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->setHidden(Z)V

    .line 149
    return-void
.end method
