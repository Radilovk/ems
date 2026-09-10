.class public abstract Lorg/apache/poi/hssf/model/AbstractShape;
.super Ljava/lang/Object;
.source "AbstractShape.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method

.method public static createShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;I)Lorg/apache/poi/hssf/model/AbstractShape;
    .locals 5
    .param p0, "hssfShape"    # Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .param p1, "shapeId"    # I

    .prologue
    .line 38
    instance-of v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFComment;

    if-eqz v3, :cond_1

    .line 40
    new-instance v0, Lorg/apache/poi/hssf/model/CommentShape;

    move-object v3, p0

    check-cast v3, Lorg/apache/poi/hssf/usermodel/HSSFComment;

    invoke-direct {v0, v3, p1}, Lorg/apache/poi/hssf/model/CommentShape;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFComment;I)V

    .line 76
    .local v0, "shape":Lorg/apache/poi/hssf/model/AbstractShape;
    :goto_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/AbstractShape;->getSpContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v3

    const/16 v4, -0xff6

    invoke-virtual {v3, v4}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherSpRecord;

    .line 77
    .local v2, "sp":Lorg/apache/poi/ddf/EscherSpRecord;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getParent()Lorg/apache/poi/hssf/usermodel/HSSFShape;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 78
    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherSpRecord;->getFlags()I

    move-result v3

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    .line 79
    :cond_0
    return-object v0

    .line 42
    .end local v0    # "shape":Lorg/apache/poi/hssf/model/AbstractShape;
    .end local v2    # "sp":Lorg/apache/poi/ddf/EscherSpRecord;
    :cond_1
    instance-of v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;

    if-eqz v3, :cond_2

    .line 44
    new-instance v0, Lorg/apache/poi/hssf/model/TextboxShape;

    move-object v3, p0

    check-cast v3, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;

    invoke-direct {v0, v3, p1}, Lorg/apache/poi/hssf/model/TextboxShape;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFTextbox;I)V

    .restart local v0    # "shape":Lorg/apache/poi/hssf/model/AbstractShape;
    goto :goto_0

    .line 46
    .end local v0    # "shape":Lorg/apache/poi/hssf/model/AbstractShape;
    :cond_2
    instance-of v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;

    if-eqz v3, :cond_3

    .line 48
    new-instance v0, Lorg/apache/poi/hssf/model/PolygonShape;

    move-object v3, p0

    check-cast v3, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;

    invoke-direct {v0, v3, p1}, Lorg/apache/poi/hssf/model/PolygonShape;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFPolygon;I)V

    .restart local v0    # "shape":Lorg/apache/poi/hssf/model/AbstractShape;
    goto :goto_0

    .line 50
    .end local v0    # "shape":Lorg/apache/poi/hssf/model/AbstractShape;
    :cond_3
    instance-of v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;

    if-eqz v3, :cond_4

    move-object v1, p0

    .line 52
    check-cast v1, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;

    .line 53
    .local v1, "simpleShape":Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getShapeType()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 69
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Do not know how to handle this type of shape"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 56
    :sswitch_0
    new-instance v0, Lorg/apache/poi/hssf/model/PictureShape;

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/hssf/model/PictureShape;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;I)V

    .line 57
    .restart local v0    # "shape":Lorg/apache/poi/hssf/model/AbstractShape;
    goto :goto_0

    .line 59
    .end local v0    # "shape":Lorg/apache/poi/hssf/model/AbstractShape;
    :sswitch_1
    new-instance v0, Lorg/apache/poi/hssf/model/LineShape;

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/hssf/model/LineShape;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;I)V

    .line 60
    .restart local v0    # "shape":Lorg/apache/poi/hssf/model/AbstractShape;
    goto :goto_0

    .line 63
    .end local v0    # "shape":Lorg/apache/poi/hssf/model/AbstractShape;
    :sswitch_2
    new-instance v0, Lorg/apache/poi/hssf/model/SimpleFilledShape;

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/hssf/model/SimpleFilledShape;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;I)V

    .line 64
    .restart local v0    # "shape":Lorg/apache/poi/hssf/model/AbstractShape;
    goto :goto_0

    .line 66
    .end local v0    # "shape":Lorg/apache/poi/hssf/model/AbstractShape;
    :sswitch_3
    new-instance v0, Lorg/apache/poi/hssf/model/ComboboxShape;

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/hssf/model/ComboboxShape;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;I)V

    .line 67
    .restart local v0    # "shape":Lorg/apache/poi/hssf/model/AbstractShape;
    goto :goto_0

    .line 74
    .end local v0    # "shape":Lorg/apache/poi/hssf/model/AbstractShape;
    .end local v1    # "simpleShape":Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unknown shape type"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 53
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x3 -> :sswitch_2
        0x14 -> :sswitch_1
        0x4b -> :sswitch_0
        0xc9 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method protected addStandardOptions(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/ddf/EscherOptRecord;)I
    .locals 6
    .param p1, "shape"    # Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .param p2, "opt"    # Lorg/apache/poi/ddf/EscherOptRecord;

    .prologue
    const/16 v5, 0x1ff

    const/16 v3, 0x1bf

    const/high16 v4, 0x80000

    .line 118
    new-instance v1, Lorg/apache/poi/ddf/EscherBoolProperty;

    const/16 v2, 0xbf

    invoke-direct {v1, v2, v4}, Lorg/apache/poi/ddf/EscherBoolProperty;-><init>(SI)V

    invoke-virtual {p2, v1}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 120
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->isNoFill()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    new-instance v1, Lorg/apache/poi/ddf/EscherBoolProperty;

    const/high16 v2, 0x110000

    invoke-direct {v1, v3, v2}, Lorg/apache/poi/ddf/EscherBoolProperty;-><init>(SI)V

    invoke-virtual {p2, v1}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 129
    :goto_0
    new-instance v1, Lorg/apache/poi/ddf/EscherRGBProperty;

    const/16 v2, 0x181

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getFillColor()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ddf/EscherRGBProperty;-><init>(SI)V

    invoke-virtual {p2, v1}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 130
    new-instance v1, Lorg/apache/poi/ddf/EscherBoolProperty;

    const/16 v2, 0x3bf

    invoke-direct {v1, v2, v4}, Lorg/apache/poi/ddf/EscherBoolProperty;-><init>(SI)V

    invoke-virtual {p2, v1}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 131
    new-instance v1, Lorg/apache/poi/ddf/EscherRGBProperty;

    const/16 v2, 0x1c0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getLineStyleColor()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ddf/EscherRGBProperty;-><init>(SI)V

    invoke-virtual {p2, v1}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 132
    const/4 v0, 0x5

    .line 133
    .local v0, "options":I
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getLineWidth()I

    move-result v1

    const/16 v2, 0x2535

    if-eq v1, v2, :cond_0

    .line 135
    new-instance v1, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v2, 0x1cb

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getLineWidth()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    invoke-virtual {p2, v1}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 136
    add-int/lit8 v0, v0, 0x1

    .line 138
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getLineStyle()I

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    new-instance v1, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v2, 0x1ce

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getLineStyle()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    invoke-virtual {p2, v1}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 141
    new-instance v1, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v2, 0x1d7

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    invoke-virtual {p2, v1}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 142
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getLineStyle()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 143
    new-instance v1, Lorg/apache/poi/ddf/EscherBoolProperty;

    invoke-direct {v1, v5, v4}, Lorg/apache/poi/ddf/EscherBoolProperty;-><init>(SI)V

    invoke-virtual {p2, v1}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 146
    :goto_1
    add-int/lit8 v0, v0, 0x3

    .line 148
    :cond_1
    invoke-virtual {p2}, Lorg/apache/poi/ddf/EscherOptRecord;->sortProperties()V

    .line 149
    return v0

    .line 127
    .end local v0    # "options":I
    :cond_2
    new-instance v1, Lorg/apache/poi/ddf/EscherBoolProperty;

    const/high16 v2, 0x10000

    invoke-direct {v1, v3, v2}, Lorg/apache/poi/ddf/EscherBoolProperty;-><init>(SI)V

    invoke-virtual {p2, v1}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    goto :goto_0

    .line 145
    .restart local v0    # "options":I
    :cond_3
    new-instance v1, Lorg/apache/poi/ddf/EscherBoolProperty;

    const v2, 0x80008

    invoke-direct {v1, v5, v2}, Lorg/apache/poi/ddf/EscherBoolProperty;-><init>(SI)V

    invoke-virtual {p2, v1}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    goto :goto_1
.end method

.method protected createAnchor(Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)Lorg/apache/poi/ddf/EscherRecord;
    .locals 1
    .param p1, "userAnchor"    # Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    .prologue
    .line 105
    invoke-static {p1}, Lorg/apache/poi/hssf/model/ConvertAnchor;->createAnchor(Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    return-object v0
.end method

.method getCmoObjectId(I)I
    .locals 1
    .param p1, "shapeId"    # I

    .prologue
    .line 174
    add-int/lit16 v0, p1, -0x400

    return v0
.end method

.method public abstract getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;
.end method

.method public abstract getSpContainer()Lorg/apache/poi/ddf/EscherContainerRecord;
.end method
