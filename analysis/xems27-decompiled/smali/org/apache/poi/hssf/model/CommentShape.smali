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
    .locals 7
    .param p1, "hssfShape"    # Lorg/apache/poi/hssf/usermodel/HSSFComment;
    .param p2, "shapeId"    # I

    .line 53
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/model/TextboxShape;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFTextbox;I)V

    .line 55
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/model/CommentShape;->createNoteRecord(Lorg/apache/poi/hssf/usermodel/HSSFComment;I)Lorg/apache/poi/hssf/record/NoteRecord;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/model/CommentShape;->_note:Lorg/apache/poi/hssf/record/NoteRecord;

    .line 57
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/CommentShape;->getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object v0

    .line 58
    .local v0, "obj":Lorg/apache/poi/hssf/record/ObjRecord;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ObjRecord;->getSubRecords()Ljava/util/List;

    move-result-object v1

    .line 59
    .local v1, "records":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/SubRecord;>;"
    const/4 v2, 0x0

    .line 60
    .local v2, "cmoIdx":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 61
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 63
    .local v4, "r":Ljava/lang/Object;
    instance-of v5, v4, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    if-eqz v5, :cond_0

    .line 65
    move-object v5, v4

    check-cast v5, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    .line 66
    .local v5, "cmo":Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setAutofill(Z)V

    .line 67
    move v2, v3

    .line 60
    .end local v4    # "r":Ljava/lang/Object;
    .end local v5    # "cmo":Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 72
    .end local v3    # "i":I
    :cond_1
    new-instance v3, Lorg/apache/poi/hssf/record/NoteStructureSubRecord;

    invoke-direct {v3}, Lorg/apache/poi/hssf/record/NoteStructureSubRecord;-><init>()V

    .line 73
    .local v3, "u":Lorg/apache/poi/hssf/record/NoteStructureSubRecord;
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4, v3}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(ILorg/apache/poi/hssf/record/SubRecord;)V

    .line 74
    return-void
.end method

.method private createNoteRecord(Lorg/apache/poi/hssf/usermodel/HSSFComment;I)Lorg/apache/poi/hssf/record/NoteRecord;
    .locals 2
    .param p1, "shape"    # Lorg/apache/poi/hssf/usermodel/HSSFComment;
    .param p2, "shapeId"    # I

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

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/NoteRecord;->setFlags(S)V

    .line 86
    invoke-virtual {v0, p2}, Lorg/apache/poi/hssf/record/NoteRecord;->setShapeId(I)V

    .line 87
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getAuthor()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getAuthor()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/NoteRecord;->setAuthor(Ljava/lang/String;)V

    .line 88
    return-object v0
.end method


# virtual methods
.method protected addStandardOptions(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/ddf/EscherOptRecord;)I
    .locals 6
    .param p1, "shape"    # Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .param p2, "opt"    # Lorg/apache/poi/ddf/EscherOptRecord;

    .line 103
    invoke-super {p0, p1, p2}, Lorg/apache/poi/hssf/model/TextboxShape;->addStandardOptions(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/ddf/EscherOptRecord;)I

    .line 106
    invoke-virtual {p2}, Lorg/apache/poi/ddf/EscherOptRecord;->getEscherProperties()Ljava/util/List;

    move-result-object v0

    .line 107
    .local v0, "props":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ddf/EscherProperty;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherProperty;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0x3bf

    if-eqz v2, :cond_1

    .line 108
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherProperty;

    .line 109
    .local v2, "prop":Lorg/apache/poi/ddf/EscherProperty;
    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherProperty;->getId()S

    move-result v4

    const/16 v5, 0x183

    if-eq v4, v5, :cond_0

    const/16 v5, 0x1c0

    if-eq v4, v5, :cond_0

    if-eq v4, v3, :cond_0

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 117
    :cond_0
    :pswitch_0
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 120
    .end local v2    # "prop":Lorg/apache/poi/ddf/EscherProperty;
    :goto_1
    goto :goto_0

    .line 122
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherProperty;>;"
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/apache/poi/hssf/usermodel/HSSFComment;

    .line 123
    .local v1, "comment":Lorg/apache/poi/hssf/usermodel/HSSFComment;
    new-instance v2, Lorg/apache/poi/ddf/EscherSimpleProperty;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    const/high16 v4, 0xa0000

    goto :goto_2

    :cond_2
    const v4, 0xa0002

    :goto_2
    invoke-direct {v2, v3, v4}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    invoke-virtual {p2, v2}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 124
    new-instance v2, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v3, 0x23f

    const v4, 0x30003

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    invoke-virtual {p2, v2}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 125
    new-instance v2, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v3, 0x201

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    invoke-virtual {p2, v2}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 126
    invoke-virtual {p2}, Lorg/apache/poi/ddf/EscherOptRecord;->sortProperties()V

    .line 127
    invoke-virtual {p2}, Lorg/apache/poi/ddf/EscherOptRecord;->getEscherProperties()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    return v2

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method getCmoObjectId(I)I
    .locals 0
    .param p1, "shapeId"    # I

    .line 142
    return p1
.end method

.method public getNoteRecord()Lorg/apache/poi/hssf/record/NoteRecord;
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/apache/poi/hssf/model/CommentShape;->_note:Lorg/apache/poi/hssf/record/NoteRecord;

    return-object v0
.end method
