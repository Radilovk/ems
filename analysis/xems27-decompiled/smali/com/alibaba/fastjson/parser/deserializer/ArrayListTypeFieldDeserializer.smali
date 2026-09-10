.class public Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
.source "ArrayListTypeFieldDeserializer.java"


# instance fields
.field private deserializer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

.field private itemFastMatchToken:I

.field private final itemType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V
    .locals 7
    .param p1, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "fieldInfo"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ")V"
        }
    .end annotation

    .line 27
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 29
    iget-object v0, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 30
    .local v0, "fieldType":Ljava/lang/reflect/Type;
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_1

    .line 31
    iget-object v1, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 32
    .local v1, "argType":Ljava/lang/reflect/Type;
    instance-of v3, v1, Ljava/lang/reflect/WildcardType;

    if-eqz v3, :cond_0

    .line 33
    move-object v3, v1

    check-cast v3, Ljava/lang/reflect/WildcardType;

    .line 34
    .local v3, "wildcardType":Ljava/lang/reflect/WildcardType;
    invoke-interface {v3}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 35
    .local v4, "upperBounds":[Ljava/lang/reflect/Type;
    array-length v5, v4

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 36
    aget-object v1, v4, v2

    .line 39
    .end local v3    # "wildcardType":Ljava/lang/reflect/WildcardType;
    .end local v4    # "upperBounds":[Ljava/lang/reflect/Type;
    :cond_0
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemType:Ljava/lang/reflect/Type;

    .line 40
    .end local v1    # "argType":Ljava/lang/reflect/Type;
    goto :goto_0

    .line 41
    :cond_1
    const-class v1, Ljava/lang/Object;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemType:Ljava/lang/reflect/Type;

    .line 43
    :goto_0
    return-void
.end method


# virtual methods
.method public getFastMatchToken()I
    .locals 1

    .line 46
    const/16 v0, 0xe

    return v0
.end method

.method public final parseArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/util/Collection;)V
    .locals 16
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "objectType"    # Ljava/lang/reflect/Type;
    .param p3, "array"    # Ljava/util/Collection;

    .line 77
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemType:Ljava/lang/reflect/Type;

    .line 78
    .local v4, "itemType":Ljava/lang/reflect/Type;
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->deserializer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 80
    .local v5, "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v6, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_8

    .line 81
    instance-of v6, v4, Ljava/lang/reflect/TypeVariable;

    const/4 v8, -0x1

    if-eqz v6, :cond_4

    .line 82
    move-object v6, v4

    check-cast v6, Ljava/lang/reflect/TypeVariable;

    .line 83
    .local v6, "typeVar":Ljava/lang/reflect/TypeVariable;
    move-object v9, v2

    check-cast v9, Ljava/lang/reflect/ParameterizedType;

    .line 85
    .local v9, "paramType":Ljava/lang/reflect/ParameterizedType;
    const/4 v10, 0x0

    .line 86
    .local v10, "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v9}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v11

    instance-of v11, v11, Ljava/lang/Class;

    if-eqz v11, :cond_0

    .line 87
    invoke-interface {v9}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v11

    move-object v10, v11

    check-cast v10, Ljava/lang/Class;

    .line 90
    :cond_0
    const/4 v11, -0x1

    .line 91
    .local v11, "paramIndex":I
    if-eqz v10, :cond_2

    .line 92
    const/4 v12, 0x0

    .local v12, "i":I
    invoke-virtual {v10}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v13

    array-length v13, v13

    .local v13, "size":I
    :goto_0
    if-ge v12, v13, :cond_2

    .line 93
    invoke-virtual {v10}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v14

    aget-object v14, v14, v12

    .line 94
    .local v14, "item":Ljava/lang/reflect/TypeVariable;
    invoke-interface {v14}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 95
    move v11, v12

    .line 96
    goto :goto_1

    .line 92
    .end local v14    # "item":Ljava/lang/reflect/TypeVariable;
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 101
    .end local v12    # "i":I
    .end local v13    # "size":I
    :cond_2
    :goto_1
    if-eq v11, v8, :cond_3

    .line 102
    invoke-interface {v9}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v7

    aget-object v4, v7, v11

    .line 103
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemType:Ljava/lang/reflect/Type;

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 104
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v5

    .line 107
    .end local v6    # "typeVar":Ljava/lang/reflect/TypeVariable;
    .end local v9    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .end local v10    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "paramIndex":I
    :cond_3
    goto/16 :goto_4

    :cond_4
    instance-of v6, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_3

    .line 108
    move-object v6, v4

    check-cast v6, Ljava/lang/reflect/ParameterizedType;

    .line 109
    .local v6, "parameterizedItemType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v6}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v7

    .line 110
    .local v7, "itemActualTypeArgs":[Ljava/lang/reflect/Type;
    array-length v9, v7

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8

    const/4 v9, 0x0

    aget-object v10, v7, v9

    instance-of v10, v10, Ljava/lang/reflect/TypeVariable;

    if-eqz v10, :cond_8

    .line 111
    aget-object v10, v7, v9

    move-object v9, v10

    check-cast v9, Ljava/lang/reflect/TypeVariable;

    .line 112
    .local v9, "typeVar":Ljava/lang/reflect/TypeVariable;
    move-object v10, v2

    check-cast v10, Ljava/lang/reflect/ParameterizedType;

    .line 114
    .local v10, "paramType":Ljava/lang/reflect/ParameterizedType;
    const/4 v11, 0x0

    .line 115
    .local v11, "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v10}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v12

    instance-of v12, v12, Ljava/lang/Class;

    if-eqz v12, :cond_5

    .line 116
    invoke-interface {v10}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v12

    move-object v11, v12

    check-cast v11, Ljava/lang/Class;

    .line 119
    :cond_5
    const/4 v12, -0x1

    .line 120
    .local v12, "paramIndex":I
    if-eqz v11, :cond_7

    .line 121
    const/4 v13, 0x0

    .local v13, "i":I
    invoke-virtual {v11}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v14

    array-length v14, v14

    .local v14, "size":I
    :goto_2
    if-ge v13, v14, :cond_7

    .line 122
    invoke-virtual {v11}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v15

    aget-object v15, v15, v13

    .line 123
    .local v15, "item":Ljava/lang/reflect/TypeVariable;
    invoke-interface {v15}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 124
    move v12, v13

    .line 125
    goto :goto_3

    .line 121
    .end local v15    # "item":Ljava/lang/reflect/TypeVariable;
    :cond_6
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p2

    const/4 v8, -0x1

    goto :goto_2

    .line 131
    .end local v13    # "i":I
    .end local v14    # "size":I
    :cond_7
    :goto_3
    const/4 v2, -0x1

    if-eq v12, v2, :cond_8

    .line 132
    invoke-interface {v10}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    aget-object v2, v2, v12

    const/4 v8, 0x0

    aput-object v2, v7, v8

    .line 133
    new-instance v2, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    invoke-interface {v6}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-interface {v6}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v13

    invoke-direct {v2, v7, v8, v13}, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    move-object v4, v2

    .line 139
    .end local v6    # "parameterizedItemType":Ljava/lang/reflect/ParameterizedType;
    .end local v7    # "itemActualTypeArgs":[Ljava/lang/reflect/Type;
    .end local v9    # "typeVar":Ljava/lang/reflect/TypeVariable;
    .end local v10    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .end local v11    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "paramIndex":I
    :cond_8
    :goto_4
    iget-object v2, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 141
    .local v2, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    .line 142
    .local v6, "token":I
    const/16 v7, 0xe

    if-ne v6, v7, :cond_d

    .line 143
    if-nez v5, :cond_9

    .line 144
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v7

    iput-object v7, v0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->deserializer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-object v5, v7

    .line 145
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v7

    iput v7, v0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemFastMatchToken:I

    move-object v7, v5

    goto :goto_5

    .line 143
    :cond_9
    move-object v7, v5

    .line 148
    .end local v5    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .local v7, "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :goto_5
    iget v5, v0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemFastMatchToken:I

    invoke-interface {v2, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 150
    const/4 v5, 0x0

    .line 151
    .local v5, "i":I
    :goto_6
    sget-object v8, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v2, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v8

    const/16 v9, 0x10

    if-eqz v8, :cond_a

    .line 152
    :goto_7
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    if-ne v8, v9, :cond_a

    .line 153
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 154
    goto :goto_7

    .line 158
    :cond_a
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    const/16 v10, 0xf

    if-ne v8, v10, :cond_b

    .line 159
    nop

    .line 173
    .end local v5    # "i":I
    invoke-interface {v2, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_8

    .line 162
    .restart local v5    # "i":I
    :cond_b
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v1, v4, v8}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 163
    .local v8, "val":Ljava/lang/Object;
    invoke-interface {v3, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    .line 167
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    if-ne v10, v9, :cond_c

    .line 168
    iget v9, v0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemFastMatchToken:I

    invoke-interface {v2, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 150
    .end local v8    # "val":Ljava/lang/Object;
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 175
    .end local v7    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .local v5, "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_d
    if-nez v5, :cond_e

    .line 176
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v7

    iput-object v7, v0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->deserializer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-object v5, v7

    .line 178
    :cond_e
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v1, v4, v7}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 179
    .local v7, "val":Ljava/lang/Object;
    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    move-object v7, v5

    .line 182
    .end local v5    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .local v7, "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :goto_8
    return-void
.end method

.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 5
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "objectType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 52
    .local p4, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 53
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    .line 54
    .local v1, "token":I
    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 55
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 60
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v2, "list":Ljava/util/ArrayList;
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v3

    .line 64
    .local v3, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v3, p2, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 65
    invoke-virtual {p0, p1, p3, v2}, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->parseArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    .line 66
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 68
    if-nez p2, :cond_1

    .line 69
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {p4, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p0, p2, v2}, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    :goto_0
    return-void

    .line 56
    .end local v2    # "list":Ljava/util/ArrayList;
    .end local v3    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_2
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p0, p2, v2}, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    return-void
.end method
