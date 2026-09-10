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

    .prologue
    .line 31
    new-instance v0, Lcom/alibaba/fastjson/serializer/MapSerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/MapSerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->instance:Lcom/alibaba/fastjson/serializer/MapSerializer;

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringKeyAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v0

    sput v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->NON_STRINGKEY_AS_STRING:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
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

    .prologue
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
    .locals 44
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

    .prologue
    .line 54
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-object/from16 v34, v0

    .line 56
    .local v34, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-nez p2, :cond_1

    .line 57
    invoke-virtual/range {v34 .. v34}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 285
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v28, p2

    .line 61
    check-cast v28, Ljava/util/Map;

    .line 62
    .local v28, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->MapSortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v31, v0

    .line 63
    .local v31, "mapSortFieldMask":I
    move-object/from16 v0, v34

    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int v4, v4, v31

    if-nez v4, :cond_2

    and-int v4, p5, v31

    if-eqz v4, :cond_4

    .line 64
    :cond_2
    move-object/from16 v0, v28

    instance-of v4, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v4, :cond_3

    .line 65
    check-cast v28, Lcom/alibaba/fastjson/JSONObject;

    .end local v28    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/fastjson/JSONObject;->getInnerMap()Ljava/util/Map;

    move-result-object v28

    .line 68
    .restart local v28    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_3
    move-object/from16 v0, v28

    instance-of v4, v0, Ljava/util/SortedMap;

    if-nez v4, :cond_4

    move-object/from16 v0, v28

    instance-of v4, v0, Ljava/util/LinkedHashMap;

    if-nez v4, :cond_4

    .line 70
    :try_start_0
    new-instance v29, Ljava/util/TreeMap;

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v28    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .local v29, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    move-object/from16 v28, v29

    .line 77
    .end local v29    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .restart local v28    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_4
    :goto_1
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->containsReference(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 78
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    goto :goto_0

    .line 82
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    move-object/from16 v36, v0

    .line 83
    .local v36, "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 85
    if-nez p6, :cond_6

    .line 86
    const/16 v4, 0x7b

    :try_start_1
    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 89
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    .line 91
    const/16 v37, 0x0

    .line 92
    .local v37, "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v39, 0x0

    .line 94
    .local v39, "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    const/16 v26, 0x1

    .line 96
    .local v26, "first":Z
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 97
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    iget-object v0, v4, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    move-object/from16 v42, v0

    .line 98
    .local v42, "typeKey":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v30

    .line 99
    .local v30, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v0, v30

    if-eq v0, v4, :cond_7

    const-class v4, Ljava/util/HashMap;

    move-object/from16 v0, v30

    if-eq v0, v4, :cond_7

    const-class v4, Ljava/util/LinkedHashMap;

    move-object/from16 v0, v30

    if-ne v0, v4, :cond_1a

    .line 100
    :cond_7
    move-object/from16 v0, v28

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const/16 v23, 0x1

    .line 101
    .local v23, "containsKey":Z
    :goto_2
    if-nez v23, :cond_8

    .line 102
    move-object/from16 v0, v34

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 104
    const/16 v26, 0x0

    .line 108
    .end local v23    # "containsKey":Z
    .end local v30    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v42    # "typeKey":Ljava/lang/String;
    :cond_8
    invoke-interface/range {v28 .. v28}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v43

    :cond_9
    :goto_3
    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/Map$Entry;

    .line 109
    .local v24, "entry":Ljava/util/Map$Entry;
    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 111
    .local v9, "value":Ljava/lang/Object;
    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    .line 114
    .local v25, "entryKey":Ljava/lang/Object;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyPreFilters:Ljava/util/List;

    move-object/from16 v38, v0

    .line 115
    .local v38, "preFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    if-eqz v38, :cond_b

    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_b

    .line 116
    if-eqz v25, :cond_a

    move-object/from16 v0, v25

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_1b

    .line 117
    :cond_a
    move-object/from16 v0, v25

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/alibaba/fastjson/serializer/MapSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 129
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->propertyPreFilters:Ljava/util/List;

    move-object/from16 v38, v0

    .line 130
    if-eqz v38, :cond_d

    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_d

    .line 131
    if-eqz v25, :cond_c

    move-object/from16 v0, v25

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_1d

    .line 132
    :cond_c
    move-object/from16 v0, v25

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/alibaba/fastjson/serializer/MapSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 145
    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyFilters:Ljava/util/List;

    move-object/from16 v40, v0

    .line 146
    .local v40, "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    if-eqz v40, :cond_f

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_f

    .line 147
    if-eqz v25, :cond_e

    move-object/from16 v0, v25

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_1f

    .line 148
    :cond_e
    move-object/from16 v0, v25

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4, v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 160
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->propertyFilters:Ljava/util/List;

    move-object/from16 v40, v0

    .line 161
    if-eqz v40, :cond_11

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_11

    .line 162
    if-eqz v25, :cond_10

    move-object/from16 v0, v25

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_21

    .line 163
    :cond_10
    move-object/from16 v0, v25

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4, v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 176
    :cond_11
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->nameFilters:Ljava/util/List;

    move-object/from16 v32, v0

    .line 177
    .local v32, "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    if-eqz v32, :cond_13

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_13

    .line 178
    if-eqz v25, :cond_12

    move-object/from16 v0, v25

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_23

    .line 179
    :cond_12
    check-cast v25, Ljava/lang/String;

    .end local v25    # "entryKey":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    .line 187
    :cond_13
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->nameFilters:Ljava/util/List;

    move-object/from16 v32, v0

    .line 188
    if-eqz v32, :cond_33

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_33

    .line 189
    if-eqz v25, :cond_14

    move-object/from16 v0, v25

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_25

    .line 190
    :cond_14
    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    .local v25, "entryKey":Ljava/lang/String;
    move-object/from16 v13, v25

    .line 199
    .end local v25    # "entryKey":Ljava/lang/String;
    :goto_5
    if-eqz v13, :cond_15

    instance-of v4, v13, Ljava/lang/String;

    if-eqz v4, :cond_27

    .line 200
    :cond_15
    const/4 v6, 0x0

    move-object v0, v13

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 210
    :cond_16
    :goto_6
    if-nez v9, :cond_17

    .line 211
    sget v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WRITE_MAP_NULL_FEATURES:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 216
    :cond_17
    instance-of v4, v13, Ljava/lang/String;

    if-eqz v4, :cond_2a

    .line 217
    move-object v0, v13

    check-cast v0, Ljava/lang/String;

    move-object/from16 v27, v0

    .line 219
    .local v27, "key":Ljava/lang/String;
    if-nez v26, :cond_18

    .line 220
    const/16 v4, 0x2c

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 223
    :cond_18
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 224
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 226
    :cond_19
    const/4 v4, 0x1

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 242
    .end local v27    # "key":Ljava/lang/String;
    :goto_7
    const/16 v26, 0x0

    .line 244
    if-nez v9, :cond_2d

    .line 245
    invoke-virtual/range {v34 .. v34}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 274
    .end local v9    # "value":Ljava/lang/Object;
    .end local v24    # "entry":Ljava/util/Map$Entry;
    .end local v26    # "first":Z
    .end local v32    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .end local v37    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v38    # "preFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .end local v39    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v40    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    :catchall_0
    move-exception v4

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    throw v4

    .line 100
    .restart local v26    # "first":Z
    .restart local v30    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v37    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v39    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v42    # "typeKey":Ljava/lang/String;
    :cond_1a
    const/16 v23, 0x0

    goto/16 :goto_2

    .line 120
    .end local v30    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v42    # "typeKey":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/Object;
    .restart local v24    # "entry":Ljava/util/Map$Entry;
    .local v25, "entryKey":Ljava/lang/Object;
    .restart local v38    # "preFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    :cond_1b
    :try_start_2
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_1c

    move-object/from16 v0, v25

    instance-of v4, v0, Ljava/lang/Number;

    if-eqz v4, :cond_b

    .line 121
    :cond_1c
    invoke-static/range {v25 .. v25}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 122
    .local v8, "strKey":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v8}, Lcom/alibaba/fastjson/serializer/MapSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    goto/16 :goto_3

    .line 135
    .end local v8    # "strKey":Ljava/lang/String;
    :cond_1d
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_1e

    move-object/from16 v0, v25

    instance-of v4, v0, Ljava/lang/Number;

    if-eqz v4, :cond_d

    .line 136
    :cond_1e
    invoke-static/range {v25 .. v25}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 137
    .restart local v8    # "strKey":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v8}, Lcom/alibaba/fastjson/serializer/MapSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    goto/16 :goto_3

    .line 151
    .end local v8    # "strKey":Ljava/lang/String;
    .restart local v40    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    :cond_1f
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_20

    move-object/from16 v0, v25

    instance-of v4, v0, Ljava/lang/Number;

    if-eqz v4, :cond_f

    .line 152
    :cond_20
    invoke-static/range {v25 .. v25}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 153
    .restart local v8    # "strKey":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v8, v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    goto/16 :goto_3

    .line 166
    .end local v8    # "strKey":Ljava/lang/String;
    :cond_21
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_22

    move-object/from16 v0, v25

    instance-of v4, v0, Ljava/lang/Number;

    if-eqz v4, :cond_11

    .line 167
    :cond_22
    invoke-static/range {v25 .. v25}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 168
    .restart local v8    # "strKey":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v8, v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    goto/16 :goto_3

    .line 180
    .end local v8    # "strKey":Ljava/lang/String;
    .restart local v32    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    :cond_23
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_24

    move-object/from16 v0, v25

    instance-of v4, v0, Ljava/lang/Number;

    if-eqz v4, :cond_13

    .line 181
    :cond_24
    invoke-static/range {v25 .. v25}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 182
    .restart local v8    # "strKey":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v8, v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    .local v25, "entryKey":Ljava/lang/String;
    goto/16 :goto_4

    .line 191
    .end local v8    # "strKey":Ljava/lang/String;
    .end local v25    # "entryKey":Ljava/lang/String;
    :cond_25
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_26

    move-object/from16 v0, v25

    instance-of v4, v0, Ljava/lang/Number;

    if-eqz v4, :cond_33

    .line 192
    :cond_26
    invoke-static/range {v25 .. v25}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 193
    .restart local v8    # "strKey":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v8, v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    .restart local v25    # "entryKey":Ljava/lang/String;
    move-object/from16 v13, v25

    goto/16 :goto_5

    .line 202
    .end local v8    # "strKey":Ljava/lang/String;
    .end local v25    # "entryKey":Ljava/lang/String;
    :cond_27
    instance-of v4, v13, Ljava/util/Map;

    if-nez v4, :cond_28

    instance-of v4, v13, Ljava/util/Collection;

    if-eqz v4, :cond_29

    :cond_28
    const/16 v33, 0x1

    .line 203
    .local v33, "objectOrArray":Z
    :goto_8
    if-nez v33, :cond_16

    .line 204
    invoke-static {v13}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 205
    .restart local v8    # "strKey":Ljava/lang/String;
    const/4 v6, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto/16 :goto_6

    .line 202
    .end local v8    # "strKey":Ljava/lang/String;
    .end local v33    # "objectOrArray":Z
    :cond_29
    const/16 v33, 0x0

    goto :goto_8

    .line 228
    :cond_2a
    if-nez v26, :cond_2b

    .line 229
    const/16 v4, 0x2c

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 232
    :cond_2b
    sget v4, Lcom/alibaba/fastjson/serializer/MapSerializer;->NON_STRINGKEY_AS_STRING:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_2c

    instance-of v4, v13, Ljava/lang/Enum;

    if-nez v4, :cond_2c

    .line 233
    invoke-static {v13}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v41

    .line 234
    .local v41, "strEntryKey":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    .line 239
    .end local v41    # "strEntryKey":Ljava/lang/String;
    :goto_9
    const/16 v4, 0x3a

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_7

    .line 236
    :cond_2c
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    goto :goto_9

    .line 249
    :cond_2d
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    .line 251
    .local v22, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, v22

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_2e

    .line 252
    move-object/from16 v37, v22

    .line 253
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v39

    .line 256
    :cond_2e
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move/from16 v0, p5

    invoke-static {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_30

    move-object/from16 v0, v39

    instance-of v4, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-eqz v4, :cond_30

    .line 258
    const/4 v14, 0x0

    .line 259
    .local v14, "valueType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p4

    instance-of v4, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_2f

    .line 260
    move-object/from16 v0, p4

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    move-object/from16 v35, v0

    .line 261
    .local v35, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface/range {v35 .. v35}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v21

    .line 262
    .local v21, "actualTypeArguments":[Ljava/lang/reflect/Type;
    move-object/from16 v0, v21

    array-length v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2f

    .line 263
    const/4 v4, 0x1

    aget-object v14, v21, v4

    .line 267
    .end local v21    # "actualTypeArguments":[Ljava/lang/reflect/Type;
    .end local v35    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    :cond_2f
    move-object/from16 v0, v39

    check-cast v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-object v10, v0

    .local v10, "javaBeanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    move-object/from16 v11, p1

    move-object v12, v9

    move/from16 v15, p5

    .line 268
    invoke-virtual/range {v10 .. v15}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeNoneASM(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    goto/16 :goto_3

    .line 270
    .end local v10    # "javaBeanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    .end local v14    # "valueType":Ljava/lang/reflect/Type;
    :cond_30
    const/16 v19, 0x0

    move-object/from16 v15, v39

    move-object/from16 v16, p1

    move-object/from16 v17, v9

    move-object/from16 v18, v13

    move/from16 v20, p5

    invoke-interface/range {v15 .. v20}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    .line 274
    .end local v9    # "value":Ljava/lang/Object;
    .end local v22    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v24    # "entry":Ljava/util/Map$Entry;
    .end local v32    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .end local v38    # "preFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .end local v40    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    :cond_31
    move-object/from16 v0, v36

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 277
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 278
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface/range {v28 .. v28}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_32

    .line 279
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 282
    :cond_32
    if-nez p6, :cond_0

    .line 283
    const/16 v4, 0x7d

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_0

    .line 71
    .end local v26    # "first":Z
    .end local v36    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v37    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v39    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :catch_0
    move-exception v4

    goto/16 :goto_1

    .restart local v9    # "value":Ljava/lang/Object;
    .restart local v24    # "entry":Ljava/util/Map$Entry;
    .restart local v26    # "first":Z
    .restart local v32    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .restart local v36    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v37    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v38    # "preFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .restart local v39    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v40    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    :cond_33
    move-object/from16 v13, v25

    goto/16 :goto_5
.end method
