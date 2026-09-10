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

    .line 31
    new-instance v0, Lcom/alibaba/fastjson/serializer/ListSerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/ListSerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/ListSerializer;->instance:Lcom/alibaba/fastjson/serializer/ListSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 23
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

    .line 36
    move-object/from16 v7, p1

    move-object/from16 v14, p2

    move/from16 v15, p5

    iget-object v0, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 37
    invoke-static {v15, v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move/from16 v16, v0

    .line 39
    .local v16, "writeClassName":Z
    iget-object v6, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 41
    .local v6, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    const/4 v0, 0x0

    .line 42
    .local v0, "elementType":Ljava/lang/reflect/Type;
    if-eqz v16, :cond_2

    .line 43
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    move-object/from16 v17, v0

    goto :goto_2

    .line 42
    :cond_2
    move-object/from16 v17, v0

    .line 46
    .end local v0    # "elementType":Ljava/lang/reflect/Type;
    .local v17, "elementType":Ljava/lang/reflect/Type;
    :goto_2
    if-nez v14, :cond_3

    .line 47
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 48
    return-void

    .line 51
    :cond_3
    move-object v5, v14

    check-cast v5, Ljava/util/List;

    .line 53
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 54
    const-string v0, "[]"

    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 55
    return-void

    .line 58
    :cond_4
    iget-object v4, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 59
    .local v4, "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    move-object/from16 v3, p3

    invoke-virtual {v7, v4, v14, v3, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 61
    const/4 v1, 0x0

    .line 63
    .local v1, "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :try_start_0
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    const/16 v2, 0x2c

    const/16 v13, 0x5d

    const/16 v8, 0x5b

    if-eqz v0, :cond_9

    .line 64
    invoke-virtual {v6, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "i":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v12, v8

    .line 69
    .local v12, "item":Ljava/lang/Object;
    if-eqz v0, :cond_5

    .line 70
    :try_start_1
    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 146
    .end local v0    # "i":I
    .end local v12    # "item":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    move-object v11, v4

    move-object v9, v5

    move-object v12, v6

    goto/16 :goto_a

    .line 73
    .restart local v0    # "i":I
    .restart local v12    # "item":Ljava/lang/Object;
    :cond_5
    :goto_4
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 74
    if-eqz v12, :cond_7

    .line 75
    invoke-virtual {v7, v12}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->containsReference(Ljava/lang/Object;)Z

    move-result v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v8, :cond_6

    .line 76
    :try_start_3
    invoke-virtual {v7, v12}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v11, v4

    move-object v9, v5

    move-object/from16 v22, v12

    const/16 v10, 0x2c

    const/16 v14, 0x5d

    move-object v12, v6

    goto :goto_5

    .line 78
    :cond_6
    :try_start_4
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v8

    move-object v1, v8

    .line 79
    new-instance v19, Lcom/alibaba/fastjson/serializer/SerialContext;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v8, v19

    move-object v9, v4

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v22, v12

    .end local v12    # "item":Ljava/lang/Object;
    .local v22, "item":Ljava/lang/Object;
    move/from16 v12, v20

    const/16 v14, 0x5d

    move/from16 v13, v21

    invoke-direct/range {v8 .. v13}, Lcom/alibaba/fastjson/serializer/SerialContext;-><init>(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;II)V

    move-object/from16 v8, v19

    .line 80
    .local v8, "itemContext":Lcom/alibaba/fastjson/serializer/SerialContext;
    iput-object v8, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 81
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const/16 v10, 0x2c

    move-object/from16 v2, p1

    move-object/from16 v3, v22

    move-object v11, v4

    .end local v4    # "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    .local v11, "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    move-object v4, v9

    move-object v9, v5

    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    move-object/from16 v5, v17

    move-object v12, v6

    .end local v6    # "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .local v12, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    move/from16 v6, p5

    :try_start_5
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 82
    .end local v8    # "itemContext":Lcom/alibaba/fastjson/serializer/SerialContext;
    goto :goto_5

    .line 84
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v11    # "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v22    # "item":Ljava/lang/Object;
    .restart local v4    # "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .restart local v6    # "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .local v12, "item":Ljava/lang/Object;
    :cond_7
    move-object v11, v4

    move-object v9, v5

    move-object/from16 v22, v12

    const/16 v10, 0x2c

    const/16 v14, 0x5d

    move-object v12, v6

    .end local v4    # "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v6    # "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .restart local v9    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .restart local v11    # "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    .local v12, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .restart local v22    # "item":Ljava/lang/Object;
    iget-object v2, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 86
    :goto_5
    nop

    .end local v22    # "item":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    .line 87
    move-object/from16 v14, p2

    move-object/from16 v3, p3

    move-object v5, v9

    move-object v4, v11

    move-object v6, v12

    const/16 v2, 0x2c

    const/16 v13, 0x5d

    goto/16 :goto_3

    .line 89
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v11    # "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v12    # "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .restart local v4    # "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .restart local v6    # "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :cond_8
    move-object v11, v4

    move-object v9, v5

    move-object v12, v6

    const/16 v14, 0x5d

    .end local v4    # "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v6    # "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .restart local v9    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .restart local v11    # "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v12    # "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 91
    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 146
    iput-object v11, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 92
    return-void

    .line 95
    .end local v0    # "i":I
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v11    # "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v12    # "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .restart local v4    # "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .restart local v6    # "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :cond_9
    move-object v11, v4

    move-object v9, v5

    move-object v12, v6

    const/16 v10, 0x2c

    const/16 v14, 0x5d

    .end local v4    # "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v6    # "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .restart local v9    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .restart local v11    # "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v12    # "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_start_6
    invoke-virtual {v12, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 96
    const/4 v0, 0x0

    .restart local v0    # "i":I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move v8, v2

    move-object v13, v1

    .end local v1    # "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .local v8, "size":I
    .local v13, "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :goto_6
    if-ge v0, v8, :cond_13

    .line 97
    :try_start_7
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    .line 98
    .local v6, "item":Ljava/lang/Object;
    if-eqz v0, :cond_a

    .line 99
    invoke-virtual {v12, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 102
    :cond_a
    if-nez v6, :cond_b

    .line 103
    const-string v1, "null"

    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto/16 :goto_9

    .line 105
    :cond_b
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    move-object v5, v1

    .line 107
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/lang/Integer;

    if-ne v5, v1, :cond_c

    .line 108
    move-object v1, v6

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    goto/16 :goto_9

    .line 109
    :cond_c
    const-class v1, Ljava/lang/Long;

    if-ne v5, v1, :cond_e

    .line 110
    move-object v1, v6

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 111
    .local v1, "val":J
    if-eqz v16, :cond_d

    .line 112
    invoke-virtual {v12, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 113
    const/16 v3, 0x4c

    invoke-virtual {v12, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_7

    .line 115
    :cond_d
    invoke-virtual {v12, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 117
    .end local v1    # "val":J
    :goto_7
    goto/16 :goto_9

    .line 118
    :cond_e
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v1, v15

    if-eqz v1, :cond_f

    .line 119
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 120
    .end local v13    # "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .local v1, "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :try_start_8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v2, p1

    move-object v3, v6

    move-object/from16 v18, v5

    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v18, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v5, v17

    move-object v13, v6

    .end local v6    # "item":Ljava/lang/Object;
    .local v13, "item":Ljava/lang/Object;
    move/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object v13, v1

    goto/16 :goto_9

    .line 122
    .end local v1    # "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v18    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "item":Ljava/lang/Object;
    .local v13, "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_f
    move-object/from16 v18, v5

    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v18    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_9
    iget-boolean v1, v12, Lcom/alibaba/fastjson/serializer/SerializeWriter;->disableCircularReferenceDetect:Z

    if-nez v1, :cond_10

    .line 123
    new-instance v19, Lcom/alibaba/fastjson/serializer/SerialContext;

    const/4 v5, 0x0

    const/16 v20, 0x0

    move-object/from16 v1, v19

    move-object v2, v11

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v10, v6

    .end local v6    # "item":Ljava/lang/Object;
    .local v10, "item":Ljava/lang/Object;
    move/from16 v6, v20

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/SerialContext;-><init>(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;II)V

    move-object/from16 v1, v19

    .line 124
    .local v1, "itemContext":Lcom/alibaba/fastjson/serializer/SerialContext;
    iput-object v1, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    goto :goto_8

    .line 122
    .end local v1    # "itemContext":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v10    # "item":Ljava/lang/Object;
    .restart local v6    # "item":Ljava/lang/Object;
    :cond_10
    move-object v10, v6

    .line 127
    .end local v6    # "item":Ljava/lang/Object;
    .restart local v10    # "item":Ljava/lang/Object;
    :goto_8
    invoke-virtual {v7, v10}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->containsReference(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 128
    invoke-virtual {v7, v10}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    goto :goto_9

    .line 130
    :cond_11
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v1

    move-object v13, v1

    .line 131
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v1, v15

    if-eqz v1, :cond_12

    instance-of v1, v13, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-eqz v1, :cond_12

    .line 134
    move-object v1, v13

    check-cast v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .line 135
    .local v1, "javaBeanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v2, p1

    move-object v3, v10

    move-object/from16 v5, v17

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeNoneASM(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 136
    .end local v1    # "javaBeanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    goto :goto_9

    .line 137
    :cond_12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v1, v13

    move-object/from16 v2, p1

    move-object v3, v10

    move-object/from16 v5, v17

    move/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 96
    .end local v10    # "item":Ljava/lang/Object;
    .end local v18    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_9
    add-int/lit8 v0, v0, 0x1

    const/16 v10, 0x2c

    goto/16 :goto_6

    .line 144
    .end local v0    # "i":I
    .end local v8    # "size":I
    :cond_13
    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 146
    iput-object v11, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 147
    nop

    .line 148
    return-void

    .line 146
    :catchall_1
    move-exception v0

    move-object v1, v13

    goto :goto_a

    .end local v13    # "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .local v1, "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :catchall_2
    move-exception v0

    goto :goto_a

    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v11    # "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v12    # "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .restart local v4    # "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .local v6, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :catchall_3
    move-exception v0

    move-object v11, v4

    move-object v9, v5

    move-object v12, v6

    .end local v4    # "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v6    # "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .restart local v9    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .restart local v11    # "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v12    # "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :goto_a
    iput-object v11, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    throw v0
.end method
