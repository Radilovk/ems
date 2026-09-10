.class public final Lorg/apache/poi/hssf/model/CommentShape;
.super Lorg/apache/poi/hssf/model/TextboxShape;
.source "CommentShape.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private _note:Lorg/apache/poi/hssf/record/NoteRecord;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFComment;I)V
    .locals 8
    .param p1, "hssfShape"    # Lorg/apache/poi/hssf/usermodel/HSSFComment;
    .param p2, "shapeId"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/model/TextboxShape;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFTextbox;I)V

    .line 55
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/model/CommentShape;->createNoteRecord(Lorg/apache/poi/hssf/usermodel/HSSFComment;I)Lorg/apache/poi/hssf/record/NoteRecord;

    move-result-object v7

    iput-object v7, p0, Lorg/apache/poi/hssf/model/CommentShape;->_note:Lorg/apache/poi/hssf/record/NoteRecord;

    .line 57
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/CommentShape;->getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object v3

    .line 58
    .local v3, "obj":Lorg/apache/poi/hssf/record/ObjRecord;
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ObjRecord;->getSubRecords()Ljava/util/List;

    move-result-object v5

    .line 59
    .local v5, "records":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/SubRecord;>;"
    const/4 v1, 0x0

    .line 60
    .local v1, "cmoIdx":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 61
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 63
    .local v4, "r":Ljava/lang/Object;
    instance-of v7, v4, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    if-eqz v7, :cond_0

    move-object v0, v4

    .line 65
    check-cast v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    .line 66
    .local v0, "cmo":Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setAutofill(Z)V

    .line 67
    move v1, v2

    .line 60
    .end local v0    # "cmo":Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    .end local v4    # "r":Ljava/lang/Object;
    :cond_1
    new-instance v6, Lorg/apache/poi/hssf/record/NoteStructureSubRecord;

    invoke-direct {v6}, Lorg/apache/poi/hssf/record/NoteStructureSubRecord;-><init>()V

    .line 73
    .local v6, "u":Lorg/apache/poi/hssf/record/NoteStructureSubRecord;
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v3, v7, v6}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(ILorg/apache/poi/hssf/record/SubRecord;)V

    .line 74
    return-void
.end method

.method private createNoteRecord(Lorg/apache/poi/hssf/usermodel/HSSFComment;I)Lorg/apache/poi/hssf/record/NoteRecord;
    .locals 2
    .param p1, "shape"    # Lorg/apache/poi/hssf/usermodel/HSSFComment;
    .param p2, "shapeId"    # I

    .prologue
    .line 82
    new-instance v0, Lorg/apache/poi/hssf/record/NoteRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/NoteRecord;-><init>()V

    .line 83
    .local v0, "note":Lorg/apache/poi/hssf/record/NoteRecord;
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getColumn()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/NoteRecord;->setColumn(I)V

    .line 84
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getRow()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/NoteRecord;->setRow(I)V

    .line 85
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/NoteRecord;->setFlags(S)V

    .line 86
    invoke-virtual {v0, p2}, Lorg/apache/poi/hssf/record/NoteRecord;->setShapeId(I)V

    .line 87
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getAuthor()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/NoteRecord;->setAuthor(Ljava/lang/String;)V

    .line 88
    return-object v0

    .line 85
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getAuthor()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method protected addStandardOptions(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/ddf/EscherOptRecord;)I
    .locals 7
    .param p1, "shape"    # Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .param p2, "opt"    # Lorg/apache/poi/ddf/EscherOptRecord;

    .prologue
    .line 103
    invoke-super {p0, p1, p2}, Lorg/apache/poi/hssf/model/TextboxShape;->addStandardOptions(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/ddf/EscherOptRecord;)I

    .line 106
    invoke-virtual {p2}, Lorg/apache/poi/ddf/EscherOptRecord;->getEscherProperties()Ljava/util/List;

    move-result-object v3

    .line 107
    .local v3, "props":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ddf/EscherProperty;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherProperty;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 108
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherProperty;

    .line 109
    .local v2, "prop":Lorg/apache/poi/ddf/EscherProperty;
    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherProperty;->getId()S

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 117
    :sswitch_0
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .end local v2    # "prop":Lorg/apache/poi/ddf/EscherProperty;
    :cond_0
    move-object v0, p1

    .line 122
    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFComment;

    .line 123
    .local v0, "comment":Lorg/apache/poi/hssf/usermodel/HSSFComment;
    new-instance v5, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v6, 0x3bf

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    const/high16 v4, 0xa0000

    :goto_1
    invoke-direct {v5, v6, v4}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    invoke-virtual {p2, v5}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 124
    new-instance v4, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v5, 0x23f

    const v6, 0x30003

    invoke-direct {v4, v5, v6}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    invoke-virtual {p2, v4}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 125
    new-instance v4, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v5, 0x201

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    invoke-virtual {p2, v4}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 126
    invoke-virtual {p2}, Lorg/apache/poi/ddf/EscherOptRecord;->sortProperties()V

    .line 127
    invoke-virtual {p2}, Lorg/apache/poi/ddf/EscherOptRecord;->getEscherProperties()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    return v4

    .line 123
    :cond_1
    const v4, 0xa0002

    goto :goto_1

    .line 109
    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_0
        0x82 -> :sswitch_0
        0x83 -> :sswitch_0
        0x84 -> :sswitch_0
        0x183 -> :sswitch_0
        0x1c0 -> :sswitch_0
        0x3bf -> :sswitch_0
    .end sparse-switch
.end method

.method getCmoObjectId(I)I
    .locals 0
    .param p1, "shapeId"    # I

    .prologue
    .line 142
    return p1
.end method

.method public getNoteRecord()Lorg/apache/poi/hssf/record/NoteRecord;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/apache/poi/hssf/model/CommentShape;->_note:Lorg/apache/poi/hssf/record/NoteRecord;

    return-object v0
.end method
