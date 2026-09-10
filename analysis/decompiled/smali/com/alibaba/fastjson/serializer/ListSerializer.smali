.class public final Lcom/alibaba/fastjson/serializer/ListSerializer;
.super Ljava/lang/Object;
.source "ListSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/ListSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/alibaba/fastjson/serializer/ListSerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/ListSerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/ListSerializer;->instance:Lcom/alibaba/fastjson/serializer/ListSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 28
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .param p5, "features"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 37
    move/from16 v0, p5

    invoke-static {v0, v7}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    const/16 v25, 0x1

    .line 39
    .local v25, "writeClassName":Z
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-object/from16 v23, v0

    .line 41
    .local v23, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    const/4 v10, 0x0

    .line 42
    .local v10, "elementType":Ljava/lang/reflect/Type;
    if-eqz v25, :cond_1

    .line 43
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v10

    .line 46
    :cond_1
    if-nez p2, :cond_3

    .line 47
    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 148
    :goto_1
    return-void

    .line 37
    .end local v10    # "elementType":Ljava/lang/reflect/Type;
    .end local v23    # "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .end local v25    # "writeClassName":Z
    :cond_2
    const/16 v25, 0x0

    goto :goto_0

    .restart local v10    # "elementType":Ljava/lang/reflect/Type;
    .restart local v23    # "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .restart local v25    # "writeClassName":Z
    :cond_3
    move-object/from16 v22, p2

    .line 51
    check-cast v22, Ljava/util/List;

    .line 53
    .local v22, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_4

    .line 54
    const-string v7, "[]"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_1

    .line 58
    :cond_4
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 59
    .local v5, "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v5, v1, v2, v7}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 61
    const/4 v6, 0x0

    .line 63
    .local v6, "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :try_start_0
    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 64
    const/16 v7, 0x5b

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    .line 67
    const/16 v19, 0x0

    .line 68
    .local v19, "i":I
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    .line 69
    .local v20, "item":Ljava/lang/Object;
    if-eqz v19, :cond_5

    .line 70
    const/16 v7, 0x2c

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 73
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 74
    if-eqz v20, :cond_7

    .line 75
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->containsReference(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 76
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    .line 86
    :goto_3
    add-int/lit8 v19, v19, 0x1

    .line 87
    goto :goto_2

    .line 78
    :cond_6
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v21

    .line 79
    .end local v6    # "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .local v21, "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :try_start_1
    new-instance v4, Lcom/alibaba/fastjson/serializer/SerialContext;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-direct/range {v4 .. v9}, Lcom/alibaba/fastjson/serializer/SerialContext;-><init>(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 80
    .local v4, "itemContext":Lcom/alibaba/fastjson/serializer/SerialContext;
    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 81
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v6, v21

    move-object/from16 v7, p1

    move-object/from16 v8, v20

    move/from16 v11, p5

    invoke-interface/range {v6 .. v11}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v6, v21

    .line 82
    .end local v21    # "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v6    # "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    goto :goto_3

    .line 84
    .end local v4    # "itemContext":Lcom/alibaba/fastjson/serializer/SerialContext;
    :cond_7
    :try_start_2
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 146
    .end local v19    # "i":I
    .end local v20    # "item":Ljava/lang/Object;
    :catchall_0
    move-exception v7

    :goto_4
    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    throw v7

    .line 89
    .restart local v19    # "i":I
    :cond_8
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 91
    const/16 v7, 0x5d

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 146
    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    goto/16 :goto_1

    .line 95
    .end local v19    # "i":I
    :cond_9
    const/16 v7, 0x5b

    :try_start_4
    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 96
    const/16 v19, 0x0

    .restart local v19    # "i":I
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v24

    .local v24, "size":I
    :goto_5
    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_13

    .line 97
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 98
    .local v8, "item":Ljava/lang/Object;
    if-eqz v19, :cond_a

    .line 99
    const/16 v7, 0x2c

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 102
    :cond_a
    if-nez v8, :cond_b

    .line 103
    const-string v7, "null"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 96
    .end local v8    # "item":Ljava/lang/Object;
    :goto_6
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 105
    .restart local v8    # "item":Ljava/lang/Object;
    :cond_b
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    .line 107
    .local v18, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v7, Ljava/lang/Integer;

    move-object/from16 v0, v18

    if-ne v0, v7, :cond_c

    .line 108
    check-cast v8, Ljava/lang/Integer;

    .end local v8    # "item":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    goto :goto_6

    .line 109
    .restart local v8    # "item":Ljava/lang/Object;
    :cond_c
    const-class v7, Ljava/lang/Long;

    move-object/from16 v0, v18

    if-ne v0, v7, :cond_e

    .line 110
    check-cast v8, Ljava/lang/Long;

    .end local v8    # "item":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    .line 111
    .local v26, "val":J
    if-eqz v25, :cond_d

    .line 112
    move-object/from16 v0, v23

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 113
    const/16 v7, 0x4c

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_6

    .line 115
    :cond_d
    move-object/from16 v0, v23

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    goto :goto_6

    .line 118
    .end local v26    # "val":J
    .restart local v8    # "item":Ljava/lang/Object;
    :cond_e
    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int v7, v7, p5

    if-eqz v7, :cond_f

    .line 119
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v6

    .line 120
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v7, p1

    move/from16 v11, p5

    invoke-interface/range {v6 .. v11}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    goto :goto_6

    .line 122
    :cond_f
    move-object/from16 v0, v23

    iget-boolean v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->disableCircularReferenceDetect:Z

    if-nez v7, :cond_10

    .line 123
    new-instance v4, Lcom/alibaba/fastjson/serializer/SerialContext;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v4

    move-object v12, v5

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    invoke-direct/range {v11 .. v16}, Lcom/alibaba/fastjson/serializer/SerialContext;-><init>(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 124
    .restart local v4    # "itemContext":Lcom/alibaba/fastjson/serializer/SerialContext;
    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 127
    .end local v4    # "itemContext":Lcom/alibaba/fastjson/serializer/SerialContext;
    :cond_10
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->containsReference(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 128
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 130
    :cond_11
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v6

    .line 131
    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int v7, v7, p5

    if-eqz v7, :cond_12

    instance-of v7, v6, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-eqz v7, :cond_12

    .line 134
    move-object v0, v6

    check-cast v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-object v11, v0

    .line 135
    .local v11, "javaBeanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v12, p1

    move-object v13, v8

    move-object v15, v10

    move/from16 v16, p5

    invoke-virtual/range {v11 .. v16}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeNoneASM(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    goto/16 :goto_6

    .line 137
    .end local v11    # "javaBeanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    :cond_12
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object v12, v6

    move-object/from16 v13, p1

    move-object v14, v8

    move-object/from16 v16, v10

    move/from16 v17, p5

    invoke-interface/range {v12 .. v17}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    goto/16 :goto_6

    .line 144
    .end local v8    # "item":Ljava/lang/Object;
    .end local v18    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_13
    const/16 v7, 0x5d

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 146
    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    goto/16 :goto_1

    .end local v6    # "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v24    # "size":I
    .restart local v20    # "item":Ljava/lang/Object;
    .restart local v21    # "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :catchall_1
    move-exception v7

    move-object/from16 v6, v21

    .end local v21    # "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v6    # "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    goto/16 :goto_4
.end method
