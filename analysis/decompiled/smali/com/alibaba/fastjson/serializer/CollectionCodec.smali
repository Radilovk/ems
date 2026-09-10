.class public Lcom/alibaba/fastjson/serializer/CollectionCodec;
.super Ljava/lang/Object;
.source "CollectionCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/CollectionCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/alibaba/fastjson/serializer/CollectionCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/CollectionCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/CollectionCodec;->instance:Lcom/alibaba/fastjson/serializer/CollectionCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v3, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 116
    iget-object v3, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v4, 0x10

    invoke-interface {v3, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 117
    const/4 v0, 0x0

    .line 131
    :goto_0
    return-object v0

    .line 120
    :cond_0
    const-class v3, Lcom/alibaba/fastjson/JSONArray;

    if-ne p2, v3, :cond_1

    .line 121
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 122
    .local v0, "array":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;)V

    goto :goto_0

    .line 126
    .end local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    :cond_1
    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->createCollection(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v2

    .line 128
    .local v2, "list":Ljava/util/Collection;
    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 129
    .local v1, "itemType":Ljava/lang/reflect/Type;
    invoke-virtual {p1, v1, v2, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    move-object v0, v2

    .line 131
    goto :goto_0
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 137
    const/16 v0, 0xe

    return v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 22
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
    .line 41
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-object/from16 v20, v0

    .line 43
    .local v20, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-nez p2, :cond_0

    .line 44
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 111
    :goto_0
    return-void

    .line 48
    :cond_0
    const/4 v8, 0x0

    .line 49
    .local v8, "elementType":Ljava/lang/reflect/Type;
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 50
    move/from16 v0, p5

    invoke-static {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 52
    :cond_1
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v8

    :cond_2
    move-object/from16 v16, p2

    .line 55
    check-cast v16, Ljava/util/Collection;

    .line 57
    .local v16, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    move-object/from16 v17, v0

    .line 58
    .local v17, "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 60
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 61
    const-class v5, Ljava/util/HashSet;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    if-ne v5, v7, :cond_5

    .line 62
    const-string v5, "Set"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 69
    :cond_3
    :goto_1
    const/16 v18, 0x0

    .line 70
    .local v18, "i":I
    const/16 v5, 0x5b

    :try_start_0
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 71
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v21

    move/from16 v19, v18

    .end local v18    # "i":I
    .local v19, "i":I
    :goto_2
    :try_start_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 73
    .local v6, "item":Ljava/lang/Object;
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "i":I
    .restart local v18    # "i":I
    if-eqz v19, :cond_4

    .line 74
    const/16 v5, 0x2c

    :try_start_2
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 77
    :cond_4
    if-nez v6, :cond_6

    .line 78
    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v19, v18

    .line 79
    .end local v18    # "i":I
    .restart local v19    # "i":I
    goto :goto_2

    .line 63
    .end local v6    # "item":Ljava/lang/Object;
    .end local v19    # "i":I
    :cond_5
    const-class v5, Ljava/util/TreeSet;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    if-ne v5, v7, :cond_3

    .line 64
    const-string v5, "TreeSet"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_1

    .line 82
    .restart local v6    # "item":Ljava/lang/Object;
    .restart local v18    # "i":I
    :cond_6
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    .line 84
    .local v15, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Ljava/lang/Integer;

    if-ne v15, v5, :cond_7

    .line 85
    check-cast v6, Ljava/lang/Integer;

    .end local v6    # "item":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    move/from16 v19, v18

    .line 86
    .end local v18    # "i":I
    .restart local v19    # "i":I
    goto :goto_2

    .line 89
    .end local v19    # "i":I
    .restart local v6    # "item":Ljava/lang/Object;
    .restart local v18    # "i":I
    :cond_7
    const-class v5, Ljava/lang/Long;

    if-ne v15, v5, :cond_8

    .line 90
    check-cast v6, Ljava/lang/Long;

    .end local v6    # "item":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-object/from16 v0, v20

    invoke-virtual {v0, v10, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 92
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 93
    const/16 v5, 0x4c

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    move/from16 v19, v18

    .end local v18    # "i":I
    .restart local v19    # "i":I
    goto :goto_2

    .line 98
    .end local v19    # "i":I
    .restart local v6    # "item":Ljava/lang/Object;
    .restart local v18    # "i":I
    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v9

    .line 99
    .local v9, "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move/from16 v0, p5

    invoke-static {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v5

    if-eqz v5, :cond_9

    instance-of v5, v9, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-eqz v5, :cond_9

    .line 101
    move-object v0, v9

    check-cast v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-object v4, v0

    .line 102
    .local v4, "javaBeanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    add-int/lit8 v5, v18, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v5, p1

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeNoneASM(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .end local v4    # "javaBeanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    .end local v9    # "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :goto_3
    move/from16 v19, v18

    .line 106
    .end local v18    # "i":I
    .restart local v19    # "i":I
    goto/16 :goto_2

    .line 104
    .end local v19    # "i":I
    .restart local v9    # "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v18    # "i":I
    :cond_9
    add-int/lit8 v5, v18, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v10, p1

    move-object v11, v6

    move-object v13, v8

    move/from16 v14, p5

    invoke-interface/range {v9 .. v14}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 109
    .end local v6    # "item":Ljava/lang/Object;
    .end local v9    # "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v15    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v5

    :goto_4
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    throw v5

    .line 107
    .end local v18    # "i":I
    .restart local v19    # "i":I
    :cond_a
    const/16 v5, 0x5d

    :try_start_4
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 109
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    goto/16 :goto_0

    :catchall_1
    move-exception v5

    move/from16 v18, v19

    .end local v19    # "i":I
    .restart local v18    # "i":I
    goto :goto_4

    .restart local v15    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_b
    move/from16 v19, v18

    .end local v18    # "i":I
    .restart local v19    # "i":I
    goto/16 :goto_2
.end method
