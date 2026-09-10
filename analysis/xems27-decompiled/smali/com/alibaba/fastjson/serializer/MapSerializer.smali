.class public Lcom/alibaba/fastjson/serializer/MapSerializer;
.super Lcom/alibaba/fastjson/serializer/SerializeFilterable;
.source "MapSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field private static final NON_STRINGKEY_AS_STRING:I

.field public static instance:Lcom/alibaba/fastjson/serializer/MapSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Lcom/alibaba/fastjson/serializer/MapSerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/MapSerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->instance:Lcom/alibaba/fastjson/serializer/MapSerializer;

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringKeyAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v0

    sput v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->NON_STRINGKEY_AS_STRING:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 7
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

    .line 44
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/serializer/MapSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V

    .line 45
    return-void
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V
    .locals 26
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .param p5, "features"    # I
    .param p6, "unwrapped"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    move/from16 v11, p5

    iget-object v12, v8, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 56
    .local v12, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-nez v9, :cond_0

    .line 57
    invoke-virtual {v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 58
    return-void

    .line 61
    :cond_0
    move-object v0, v9

    check-cast v0, Ljava/util/Map;

    .line 62
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->MapSortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v13, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 63
    .local v13, "mapSortFieldMask":I
    iget v1, v12, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v1, v13

    if-nez v1, :cond_2

    and-int v1, v11, v13

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v14, v0

    goto :goto_2

    .line 64
    :cond_2
    :goto_0
    instance-of v1, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_3

    .line 65
    move-object v1, v0

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->getInnerMap()Ljava/util/Map;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 64
    :cond_3
    move-object v1, v0

    .line 68
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :goto_1
    nop

    instance-of v0, v1, Ljava/util/SortedMap;

    if-nez v0, :cond_4

    instance-of v0, v1, Ljava/util/LinkedHashMap;

    if-nez v0, :cond_4

    .line 70
    :try_start_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    move-object v14, v0

    goto :goto_2

    .line 71
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :catch_0
    move-exception v0

    .line 77
    :cond_4
    move-object v14, v1

    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .local v14, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :goto_2
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->containsReference(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 78
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    .line 79
    return-void

    .line 82
    :cond_5
    iget-object v15, v8, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 83
    .local v15, "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    const/4 v0, 0x0

    move-object/from16 v6, p3

    invoke-virtual {v8, v15, v9, v6, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 85
    if-nez p6, :cond_6

    .line 86
    const/16 v1, 0x7b

    :try_start_1
    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 89
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    .line 91
    const/4 v1, 0x0

    .line 92
    .local v1, "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 94
    .local v2, "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    const/4 v3, 0x1

    .line 96
    .local v3, "first":Z
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v12, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 97
    iget-object v4, v8, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    iget-object v4, v4, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    .line 98
    .local v4, "typeKey":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    move-object/from16 v17, v16

    .line 99
    .local v17, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v5, v17

    .end local v17    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v5, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v5, v0, :cond_7

    const-class v0, Ljava/util/HashMap;

    if-eq v5, v0, :cond_7

    const-class v0, Ljava/util/LinkedHashMap;

    if-ne v5, v0, :cond_8

    .line 100
    :cond_7
    invoke-interface {v14, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    .line 101
    .local v0, "containsKey":Z
    :goto_3
    if-nez v0, :cond_9

    .line 102
    invoke-virtual {v12, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    move/from16 v19, v0

    .end local v0    # "containsKey":Z
    .local v19, "containsKey":Z
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 104
    const/4 v3, 0x0

    goto :goto_4

    .line 101
    .end local v19    # "containsKey":Z
    .restart local v0    # "containsKey":Z
    :cond_9
    move/from16 v19, v0

    .line 108
    .end local v0    # "containsKey":Z
    .end local v4    # "typeKey":Ljava/lang/String;
    .end local v5    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_a
    :goto_4
    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v4, v1

    move-object/from16 v17, v2

    move/from16 v19, v3

    .end local v1    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v3    # "first":Z
    .local v4, "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v17, "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .local v19, "first":Z
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    move-object/from16 v20, v1

    .line 109
    .local v20, "entry":Ljava/util/Map$Entry;
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    .line 111
    .local v3, "value":Ljava/lang/Object;
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 114
    .local v1, "entryKey":Ljava/lang/Object;
    iget-object v2, v8, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyPreFilters:Ljava/util/List;

    .line 115
    .local v2, "preFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    if-eqz v2, :cond_e

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_e

    .line 116
    if-eqz v1, :cond_d

    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_b

    goto :goto_6

    .line 120
    :cond_b
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_c

    instance-of v5, v1, Ljava/lang/Number;

    if-eqz v5, :cond_e

    .line 121
    :cond_c
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 122
    .local v5, "strKey":Ljava/lang/String;
    invoke-virtual {v7, v8, v9, v5}, Lcom/alibaba/fastjson/serializer/MapSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_e

    .line 123
    move-object/from16 v23, v0

    move-object/from16 v25, v4

    goto/16 :goto_12

    .line 117
    .end local v5    # "strKey":Ljava/lang/String;
    :cond_d
    :goto_6
    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v8, v9, v5}, Lcom/alibaba/fastjson/serializer/MapSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 118
    move-object/from16 v23, v0

    move-object/from16 v25, v4

    goto/16 :goto_12

    .line 129
    .end local v2    # "preFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    :cond_e
    iget-object v2, v7, Lcom/alibaba/fastjson/serializer/MapSerializer;->propertyPreFilters:Ljava/util/List;

    .line 130
    .restart local v2    # "preFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    if-eqz v2, :cond_12

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_12

    .line 131
    if-eqz v1, :cond_11

    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_f

    goto :goto_7

    .line 135
    :cond_f
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_10

    instance-of v5, v1, Ljava/lang/Number;

    if-eqz v5, :cond_12

    .line 136
    :cond_10
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 137
    .restart local v5    # "strKey":Ljava/lang/String;
    invoke-virtual {v7, v8, v9, v5}, Lcom/alibaba/fastjson/serializer/MapSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_12

    .line 138
    move-object/from16 v23, v0

    move-object/from16 v25, v4

    goto/16 :goto_12

    .line 132
    .end local v5    # "strKey":Ljava/lang/String;
    :cond_11
    :goto_7
    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v8, v9, v5}, Lcom/alibaba/fastjson/serializer/MapSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 133
    move-object/from16 v23, v0

    move-object/from16 v25, v4

    goto/16 :goto_12

    .line 145
    .end local v2    # "preFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    :cond_12
    iget-object v2, v8, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyFilters:Ljava/util/List;

    .line 146
    .local v2, "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    if-eqz v2, :cond_16

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_16

    .line 147
    if-eqz v1, :cond_15

    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_13

    goto :goto_8

    .line 151
    :cond_13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_14

    instance-of v5, v1, Ljava/lang/Number;

    if-eqz v5, :cond_16

    .line 152
    :cond_14
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 153
    .restart local v5    # "strKey":Ljava/lang/String;
    invoke-virtual {v7, v8, v9, v5, v3}, Lcom/alibaba/fastjson/serializer/MapSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_16

    .line 154
    move-object/from16 v23, v0

    move-object/from16 v25, v4

    goto/16 :goto_12

    .line 148
    .end local v5    # "strKey":Ljava/lang/String;
    :cond_15
    :goto_8
    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v8, v9, v5, v3}, Lcom/alibaba/fastjson/serializer/MapSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 149
    move-object/from16 v23, v0

    move-object/from16 v25, v4

    goto/16 :goto_12

    .line 160
    .end local v2    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    :cond_16
    iget-object v2, v7, Lcom/alibaba/fastjson/serializer/MapSerializer;->propertyFilters:Ljava/util/List;

    .line 161
    .restart local v2    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    if-eqz v2, :cond_1a

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1a

    .line 162
    if-eqz v1, :cond_19

    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_17

    goto :goto_9

    .line 166
    :cond_17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_18

    instance-of v5, v1, Ljava/lang/Number;

    if-eqz v5, :cond_1a

    .line 167
    :cond_18
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 168
    .restart local v5    # "strKey":Ljava/lang/String;
    invoke-virtual {v7, v8, v9, v5, v3}, Lcom/alibaba/fastjson/serializer/MapSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1a

    .line 169
    move-object/from16 v23, v0

    move-object/from16 v25, v4

    goto/16 :goto_12

    .line 163
    .end local v5    # "strKey":Ljava/lang/String;
    :cond_19
    :goto_9
    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v8, v9, v5, v3}, Lcom/alibaba/fastjson/serializer/MapSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 164
    move-object/from16 v23, v0

    move-object/from16 v25, v4

    goto/16 :goto_12

    .line 176
    .end local v2    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    :cond_1a
    iget-object v2, v8, Lcom/alibaba/fastjson/serializer/JSONSerializer;->nameFilters:Ljava/util/List;

    .line 177
    .local v2, "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    if-eqz v2, :cond_1e

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1e

    .line 178
    if-eqz v1, :cond_1d

    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_1b

    goto :goto_a

    .line 180
    :cond_1b
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_1c

    instance-of v5, v1, Ljava/lang/Number;

    if-eqz v5, :cond_1e

    .line 181
    :cond_1c
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 182
    .restart local v5    # "strKey":Ljava/lang/String;
    invoke-virtual {v7, v8, v9, v5, v3}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v1, v21

    goto :goto_b

    .line 179
    .end local v5    # "strKey":Ljava/lang/String;
    :cond_1d
    :goto_a
    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v8, v9, v5, v3}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 187
    .end local v2    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    :cond_1e
    :goto_b
    iget-object v2, v7, Lcom/alibaba/fastjson/serializer/MapSerializer;->nameFilters:Ljava/util/List;

    .line 188
    .restart local v2    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    if-eqz v2, :cond_22

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_22

    .line 189
    if-eqz v1, :cond_21

    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_1f

    goto :goto_c

    .line 191
    :cond_1f
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_20

    instance-of v5, v1, Ljava/lang/Number;

    if-eqz v5, :cond_22

    .line 192
    :cond_20
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 193
    .restart local v5    # "strKey":Ljava/lang/String;
    invoke-virtual {v7, v8, v9, v5, v3}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v1, v21

    move-object v2, v1

    goto :goto_d

    .line 190
    .end local v5    # "strKey":Ljava/lang/String;
    :cond_21
    :goto_c
    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v8, v9, v5, v3}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    move-object v2, v1

    goto :goto_d

    .line 199
    .end local v2    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    :cond_22
    move-object v2, v1

    .end local v1    # "entryKey":Ljava/lang/Object;
    .local v2, "entryKey":Ljava/lang/Object;
    :goto_d
    if-eqz v2, :cond_27

    instance-of v1, v2, Ljava/lang/String;

    if-eqz v1, :cond_23

    move-object/from16 v23, v0

    move-object v0, v2

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    goto :goto_10

    .line 202
    :cond_23
    instance-of v1, v2, Ljava/util/Map;

    if-nez v1, :cond_25

    instance-of v1, v2, Ljava/util/Collection;

    if-eqz v1, :cond_24

    goto :goto_e

    :cond_24
    const/4 v1, 0x0

    goto :goto_f

    :cond_25
    :goto_e
    const/4 v1, 0x1

    :goto_f
    move/from16 v21, v1

    .line 203
    .local v21, "objectOrArray":Z
    if-nez v21, :cond_26

    .line 204
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x1

    .line 205
    .restart local v5    # "strKey":Ljava/lang/String;
    const/16 v18, 0x0

    move-object/from16 v1, p0

    move-object/from16 v23, v0

    move-object v0, v2

    .end local v2    # "entryKey":Ljava/lang/Object;
    .local v0, "entryKey":Ljava/lang/Object;
    move-object/from16 v2, p1

    move-object/from16 v24, v3

    .end local v3    # "value":Ljava/lang/Object;
    .local v24, "value":Ljava/lang/Object;
    move-object/from16 v3, v18

    move-object/from16 v25, v4

    .end local v4    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v25, "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v4, p2

    move-object/from16 v6, v24

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    move-object/from16 v24, v3

    .end local v24    # "value":Ljava/lang/Object;
    .restart local v3    # "value":Ljava/lang/Object;
    goto :goto_11

    .line 203
    .end local v0    # "entryKey":Ljava/lang/Object;
    .end local v5    # "strKey":Ljava/lang/String;
    .end local v25    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "entryKey":Ljava/lang/Object;
    .restart local v4    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_26
    move-object/from16 v23, v0

    move-object v0, v2

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    .end local v2    # "entryKey":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v0    # "entryKey":Ljava/lang/Object;
    .restart local v24    # "value":Ljava/lang/Object;
    .restart local v25    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_11

    .line 199
    .end local v0    # "entryKey":Ljava/lang/Object;
    .end local v21    # "objectOrArray":Z
    .end local v24    # "value":Ljava/lang/Object;
    .end local v25    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "entryKey":Ljava/lang/Object;
    .restart local v3    # "value":Ljava/lang/Object;
    .restart local v4    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_27
    move-object/from16 v23, v0

    move-object v0, v2

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    .line 200
    .end local v2    # "entryKey":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v0    # "entryKey":Ljava/lang/Object;
    .restart local v24    # "value":Ljava/lang/Object;
    .restart local v25    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_10
    const/4 v3, 0x0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v6, v24

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    move-object/from16 v24, v3

    .line 210
    :goto_11
    if-nez v24, :cond_28

    .line 211
    sget v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WRITE_MAP_NULL_FEATURES:I

    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_28

    .line 212
    nop

    .line 108
    .end local v0    # "entryKey":Ljava/lang/Object;
    .end local v20    # "entry":Ljava/util/Map$Entry;
    .end local v24    # "value":Ljava/lang/Object;
    .end local v25    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_12
    move-object/from16 v6, p3

    move-object/from16 v0, v23

    move-object/from16 v4, v25

    .end local v4    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v25    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto/16 :goto_5

    .line 216
    .restart local v0    # "entryKey":Ljava/lang/Object;
    .restart local v20    # "entry":Ljava/util/Map$Entry;
    .restart local v24    # "value":Ljava/lang/Object;
    :cond_28
    instance-of v1, v0, Ljava/lang/String;

    const/16 v2, 0x2c

    if-eqz v1, :cond_2b

    .line 217
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 219
    .local v1, "key":Ljava/lang/String;
    if-nez v19, :cond_29

    .line 220
    invoke-virtual {v12, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 223
    :cond_29
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v12, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 224
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 226
    :cond_2a
    const/4 v6, 0x1

    invoke-virtual {v12, v1, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 227
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_14

    .line 228
    :cond_2b
    const/4 v6, 0x1

    if-nez v19, :cond_2c

    .line 229
    invoke-virtual {v12, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 232
    :cond_2c
    sget v1, Lcom/alibaba/fastjson/serializer/MapSerializer;->NON_STRINGKEY_AS_STRING:I

    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    instance-of v1, v0, Ljava/lang/Enum;

    if-nez v1, :cond_2d

    .line 233
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "strEntryKey":Ljava/lang/String;
    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    .line 235
    .end local v1    # "strEntryKey":Ljava/lang/String;
    goto :goto_13

    .line 236
    :cond_2d
    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 239
    :goto_13
    const/16 v1, 0x3a

    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 242
    :goto_14
    const/16 v19, 0x0

    .line 244
    if-nez v24, :cond_2e

    .line 245
    invoke-virtual {v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 246
    move-object/from16 v6, p3

    move-object/from16 v0, v23

    move-object/from16 v4, v25

    goto/16 :goto_5

    .line 249
    :cond_2e
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    move-object v5, v1

    .line 251
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v1, v25

    .end local v25    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v1, "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v5, v1, :cond_2f

    .line 252
    move-object v1, v5

    .line 253
    invoke-virtual {v8, v5}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v2

    move-object/from16 v17, v1

    move-object v4, v2

    .end local v17    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .local v2, "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    goto :goto_15

    .line 251
    .end local v2    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v17    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_2f
    move-object/from16 v4, v17

    move-object/from16 v17, v1

    .line 256
    .end local v1    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v4, "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .local v17, "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_15
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v11, v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_32

    instance-of v1, v4, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-eqz v1, :cond_32

    .line 258
    const/4 v1, 0x0

    .line 259
    .local v1, "valueType":Ljava/lang/reflect/Type;
    instance-of v2, v10, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_31

    .line 260
    move-object v2, v10

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 261
    .local v2, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 262
    .local v3, "actualTypeArguments":[Ljava/lang/reflect/Type;
    array-length v6, v3

    move-object/from16 v21, v1

    .end local v1    # "valueType":Ljava/lang/reflect/Type;
    .local v21, "valueType":Ljava/lang/reflect/Type;
    const/4 v1, 0x2

    if-ne v6, v1, :cond_30

    .line 263
    const/4 v6, 0x1

    aget-object v1, v3, v6

    move-object/from16 v21, v1

    .end local v21    # "valueType":Ljava/lang/reflect/Type;
    .restart local v1    # "valueType":Ljava/lang/reflect/Type;
    goto :goto_16

    .line 262
    .end local v1    # "valueType":Ljava/lang/reflect/Type;
    .restart local v21    # "valueType":Ljava/lang/reflect/Type;
    :cond_30
    const/4 v6, 0x1

    goto :goto_16

    .line 259
    .end local v2    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v3    # "actualTypeArguments":[Ljava/lang/reflect/Type;
    .end local v21    # "valueType":Ljava/lang/reflect/Type;
    .restart local v1    # "valueType":Ljava/lang/reflect/Type;
    :cond_31
    move-object/from16 v21, v1

    .line 267
    .end local v1    # "valueType":Ljava/lang/reflect/Type;
    .restart local v21    # "valueType":Ljava/lang/reflect/Type;
    :goto_16
    move-object v1, v4

    check-cast v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .line 268
    .local v1, "javaBeanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    move-object/from16 v2, p1

    move-object/from16 v3, v24

    move-object/from16 v18, v4

    .end local v4    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .local v18, "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    move-object v4, v0

    move-object/from16 v22, v5

    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v22, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v5, v21

    const/16 v25, 0x1

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeNoneASM(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 269
    .end local v1    # "javaBeanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    .end local v21    # "valueType":Ljava/lang/reflect/Type;
    goto :goto_17

    .line 256
    .end local v18    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v22    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_32
    move-object/from16 v18, v4

    move-object/from16 v22, v5

    const/16 v25, 0x1

    .line 270
    .end local v4    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v18    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v22    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    move-object/from16 v3, v24

    move-object v4, v0

    move/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    .end local v0    # "entryKey":Ljava/lang/Object;
    .end local v20    # "entry":Ljava/util/Map$Entry;
    .end local v22    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v24    # "value":Ljava/lang/Object;
    :goto_17
    move-object/from16 v6, p3

    move-object/from16 v4, v17

    move-object/from16 v17, v18

    move-object/from16 v0, v23

    goto/16 :goto_5

    .line 108
    .end local v18    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .local v4, "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v17, "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_33
    move-object v1, v4

    .line 274
    .end local v4    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v17    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v19    # "first":Z
    iput-object v15, v8, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 275
    nop

    .line 277
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 278
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_34

    .line 279
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 282
    :cond_34
    if-nez p6, :cond_35

    .line 283
    const/16 v0, 0x7d

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 285
    :cond_35
    return-void

    .line 274
    :catchall_0
    move-exception v0

    iput-object v15, v8, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    throw v0
.end method
