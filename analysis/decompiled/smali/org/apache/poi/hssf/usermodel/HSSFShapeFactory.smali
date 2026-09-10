.class public Lorg/apache/poi/hssf/usermodel/HSSFShapeFactory;
.super Ljava/lang/Object;
.source "HSSFShapeFactory.java"


# static fields
.field private static final OBJECT_TYPE_ARC:S = 0x4s

.field private static final OBJECT_TYPE_LINE:S = 0x1s

.field private static final OBJECT_TYPE_OVAL:S = 0x3s

.field private static final OBJECT_TYPE_PICTURE:S = 0x8s

.field private static final OBJECT_TYPE_RECTANGLE:S = 0x2s


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createShapeTree(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/EscherAggregate;Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 21
    .param p0, "container"    # Lorg/apache/poi/ddf/EscherContainerRecord;
    .param p1, "agg"    # Lorg/apache/poi/hssf/record/EscherAggregate;
    .param p2, "out"    # Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;
    .param p3, "root"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    .prologue
    .line 47
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getRecordId()S

    move-result v19

    const/16 v20, -0xffd

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 48
    const/4 v9, 0x0

    .line 49
    .local v9, "obj":Lorg/apache/poi/hssf/record/ObjRecord;
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v19

    check-cast v19, Lorg/apache/poi/ddf/EscherContainerRecord;

    const/16 v20, -0xfef

    invoke-virtual/range {v19 .. v20}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ddf/EscherClientDataRecord;

    .line 50
    .local v4, "clientData":Lorg/apache/poi/ddf/EscherClientDataRecord;
    if-eqz v4, :cond_0

    .line 51
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hssf/record/EscherAggregate;->getShapeToObjMapping()Ljava/util/Map;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "obj":Lorg/apache/poi/hssf/record/ObjRecord;
    check-cast v9, Lorg/apache/poi/hssf/record/ObjRecord;

    .line 53
    .restart local v9    # "obj":Lorg/apache/poi/hssf/record/ObjRecord;
    :cond_0
    new-instance v6, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v9}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;)V

    .line 54
    .local v6, "group":Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildContainers()Ljava/util/List;

    move-result-object v3

    .line 56
    .local v3, "children":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ddf/EscherContainerRecord;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v7, v0, :cond_2

    .line 57
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/poi/ddf/EscherContainerRecord;

    .line 58
    .local v17, "spContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    if-eqz v7, :cond_1

    .line 59
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {v0, v1, v6, v2}, Lorg/apache/poi/hssf/usermodel/HSSFShapeFactory;->createShapeTree(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/EscherAggregate;Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 56
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 62
    .end local v17    # "spContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    :cond_2
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;->addShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 118
    .end local v3    # "children":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ddf/EscherContainerRecord;>;"
    .end local v4    # "clientData":Lorg/apache/poi/ddf/EscherClientDataRecord;
    .end local v6    # "group":Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;
    .end local v7    # "i":I
    .end local v9    # "obj":Lorg/apache/poi/hssf/record/ObjRecord;
    :cond_3
    :goto_1
    return-void

    .line 63
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getRecordId()S

    move-result v19

    const/16 v20, -0xffc

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 64
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hssf/record/EscherAggregate;->getShapeToObjMapping()Ljava/util/Map;

    move-result-object v16

    .line 65
    .local v16, "shapeToObj":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/poi/ddf/EscherRecord;Lorg/apache/poi/hssf/record/Record;>;"
    const/4 v10, 0x0

    .line 66
    .local v10, "objRecord":Lorg/apache/poi/hssf/record/ObjRecord;
    const/16 v18, 0x0

    .line 68
    .local v18, "txtRecord":Lorg/apache/poi/hssf/record/TextObjectRecord;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildRecords()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/poi/ddf/EscherRecord;

    .line 69
    .local v14, "record":Lorg/apache/poi/ddf/EscherRecord;
    invoke-virtual {v14}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v19

    sparse-switch v19, :sswitch_data_0

    goto :goto_2

    .line 74
    :sswitch_0
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "txtRecord":Lorg/apache/poi/hssf/record/TextObjectRecord;
    check-cast v18, Lorg/apache/poi/hssf/record/TextObjectRecord;

    .restart local v18    # "txtRecord":Lorg/apache/poi/hssf/record/TextObjectRecord;
    goto :goto_2

    .line 71
    :sswitch_1
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "objRecord":Lorg/apache/poi/hssf/record/ObjRecord;
    check-cast v10, Lorg/apache/poi/hssf/record/ObjRecord;

    .line 72
    .restart local v10    # "objRecord":Lorg/apache/poi/hssf/record/ObjRecord;
    goto :goto_2

    .line 78
    .end local v14    # "record":Lorg/apache/poi/ddf/EscherRecord;
    :cond_5
    invoke-static {v10}, Lorg/apache/poi/hssf/usermodel/HSSFShapeFactory;->isEmbeddedObject(Lorg/apache/poi/hssf/record/ObjRecord;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 79
    new-instance v11, Lorg/apache/poi/hssf/usermodel/HSSFObjectData;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v11, v0, v10, v1}, Lorg/apache/poi/hssf/usermodel/HSSFObjectData;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V

    .line 80
    .local v11, "objectData":Lorg/apache/poi/hssf/usermodel/HSSFObjectData;
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;->addShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    goto :goto_1

    .line 83
    .end local v11    # "objectData":Lorg/apache/poi/hssf/usermodel/HSSFObjectData;
    :cond_6
    invoke-virtual {v10}, Lorg/apache/poi/hssf/record/ObjRecord;->getSubRecords()Ljava/util/List;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    .line 85
    .local v5, "cmo":Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;
    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->getObjectType()S

    move-result v19

    sparse-switch v19, :sswitch_data_1

    .line 114
    new-instance v15, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v15, v0, v10, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/hssf/record/TextObjectRecord;)V

    .line 116
    .local v15, "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    :goto_3
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;->addShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    goto :goto_1

    .line 87
    .end local v15    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    :sswitch_2
    new-instance v15, Lorg/apache/poi/hssf/usermodel/HSSFPicture;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v10}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;)V

    .line 88
    .restart local v15    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    goto :goto_3

    .line 90
    .end local v15    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    :sswitch_3
    new-instance v15, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v15, v0, v10, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/hssf/record/TextObjectRecord;)V

    .line 91
    .restart local v15    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    goto :goto_3

    .line 93
    .end local v15    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    :sswitch_4
    new-instance v15, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v10}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;)V

    .line 94
    .restart local v15    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    goto :goto_3

    .line 96
    .end local v15    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    :sswitch_5
    new-instance v15, Lorg/apache/poi/hssf/usermodel/HSSFCombobox;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v10}, Lorg/apache/poi/hssf/usermodel/HSSFCombobox;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;)V

    .line 97
    .restart local v15    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    goto :goto_3

    .line 99
    .end local v15    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    :sswitch_6
    const/16 v19, -0xff5

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v12

    check-cast v12, Lorg/apache/poi/ddf/EscherOptRecord;

    .line 100
    .local v12, "optRecord":Lorg/apache/poi/ddf/EscherOptRecord;
    const/16 v19, 0x145

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/apache/poi/ddf/EscherOptRecord;->lookup(I)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v13

    .line 101
    .local v13, "property":Lorg/apache/poi/ddf/EscherProperty;
    if-eqz v13, :cond_7

    .line 102
    new-instance v15, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v15, v0, v10, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/hssf/record/TextObjectRecord;)V

    .restart local v15    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    goto :goto_3

    .line 104
    .end local v15    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    :cond_7
    new-instance v15, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v15, v0, v10, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/hssf/record/TextObjectRecord;)V

    .line 106
    .restart local v15    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    goto :goto_3

    .line 108
    .end local v12    # "optRecord":Lorg/apache/poi/ddf/EscherOptRecord;
    .end local v13    # "property":Lorg/apache/poi/ddf/EscherProperty;
    .end local v15    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    :sswitch_7
    new-instance v15, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v15, v0, v10, v1}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/hssf/record/TextObjectRecord;)V

    .line 109
    .restart local v15    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    goto :goto_3

    .line 111
    .end local v15    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    :sswitch_8
    new-instance v15, Lorg/apache/poi/hssf/usermodel/HSSFComment;

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lorg/apache/poi/hssf/record/EscherAggregate;->getNoteRecordByObj(Lorg/apache/poi/hssf/record/ObjRecord;)Lorg/apache/poi/hssf/record/NoteRecord;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v10, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFComment;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/hssf/record/TextObjectRecord;Lorg/apache/poi/hssf/record/NoteRecord;)V

    .line 112
    .restart local v15    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    goto :goto_3

    .line 69
    nop

    :sswitch_data_0
    .sparse-switch
        -0xff3 -> :sswitch_0
        -0xfef -> :sswitch_1
    .end sparse-switch

    .line 85
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x6 -> :sswitch_7
        0x8 -> :sswitch_2
        0x14 -> :sswitch_5
        0x19 -> :sswitch_8
        0x1e -> :sswitch_6
    .end sparse-switch
.end method

.method private static isEmbeddedObject(Lorg/apache/poi/hssf/record/ObjRecord;)Z
    .locals 3
    .param p0, "obj"    # Lorg/apache/poi/hssf/record/ObjRecord;

    .prologue
    .line 121
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ObjRecord;->getSubRecords()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 122
    .local v1, "subRecordIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hssf/record/SubRecord;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/SubRecord;

    .line 124
    .local v0, "sub":Lorg/apache/poi/hssf/record/SubRecord;
    instance-of v2, v0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;

    if-eqz v2, :cond_0

    .line 125
    const/4 v2, 0x1

    .line 128
    .end local v0    # "sub":Lorg/apache/poi/hssf/record/SubRecord;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
