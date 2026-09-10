.class public Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;
.super Ljava/lang/Object;
.source "EnumDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# instance fields
.field protected final enumClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected enumNameHashCodes:[J

.field protected final enums:[Ljava/lang/Enum;

.field protected final ordinalEnums:[Ljava/lang/Enum;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 21
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v2, v1, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumClass:Ljava/lang/Class;

    .line 24
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    check-cast v0, [Ljava/lang/Enum;

    iput-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->ordinalEnums:[Ljava/lang/Enum;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v3, v0

    .line 27
    .local v3, "enumMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Enum;>;"
    const/4 v0, 0x0

    move v4, v0

    .local v4, "i":I
    :goto_0
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->ordinalEnums:[Ljava/lang/Enum;

    array-length v5, v0

    if-ge v4, v5, :cond_8

    .line 28
    aget-object v5, v0, v4

    .line 29
    .local v5, "e":Ljava/lang/Enum;
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    .line 31
    .local v6, "name":Ljava/lang/String;
    const/4 v7, 0x0

    .line 33
    .local v7, "jsonField":Lcom/alibaba/fastjson/annotation/JSONField;
    :try_start_0
    invoke-virtual {v2, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 34
    .local v0, "field":Ljava/lang/reflect/Field;
    const-class v8, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object v7, v8

    .line 35
    if-eqz v7, :cond_0

    .line 36
    invoke-interface {v7}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v8

    .line 37
    .local v8, "jsonFieldName":Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v9, :cond_0

    .line 38
    move-object v6, v8

    .line 43
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "jsonFieldName":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 41
    :catch_0
    move-exception v0

    .line 45
    :goto_1
    const-wide v8, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 46
    .local v8, "hash":J
    const-wide v10, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 47
    .local v10, "hash_lower":J
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v0, v12, :cond_2

    .line 48
    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 50
    .local v12, "ch":C
    int-to-long v13, v12

    xor-long/2addr v8, v13

    .line 51
    const/16 v13, 0x41

    if-lt v12, v13, :cond_1

    const/16 v13, 0x5a

    if-gt v12, v13, :cond_1

    add-int/lit8 v13, v12, 0x20

    goto :goto_3

    :cond_1
    move v13, v12

    :goto_3
    int-to-long v13, v13

    xor-long/2addr v10, v13

    .line 53
    const-wide v13, 0x100000001b3L

    mul-long v8, v8, v13

    .line 54
    mul-long v10, v10, v13

    .line 47
    .end local v12    # "ch":C
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 57
    .end local v0    # "j":I
    :cond_2
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    cmp-long v0, v8, v10

    if-eqz v0, :cond_3

    .line 59
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_3
    if-eqz v7, :cond_7

    .line 63
    invoke-interface {v7}, Lcom/alibaba/fastjson/annotation/JSONField;->alternateNames()[Ljava/lang/String;

    move-result-object v0

    array-length v12, v0

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v12, :cond_6

    aget-object v14, v0, v13

    .line 64
    .local v14, "alterName":Ljava/lang/String;
    const-wide v17, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 65
    .local v17, "alterNameHash":J
    const/16 v19, 0x0

    move/from16 v15, v19

    .local v15, "j":I
    :goto_5
    move-object/from16 v16, v0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v15, v0, :cond_4

    .line 66
    invoke-virtual {v14, v15}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 67
    .local v0, "ch":C
    move-object/from16 v21, v6

    move-object/from16 v22, v7

    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "jsonField":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v21, "name":Ljava/lang/String;
    .local v22, "jsonField":Lcom/alibaba/fastjson/annotation/JSONField;
    int-to-long v6, v0

    xor-long v6, v17, v6

    .line 68
    .end local v17    # "alterNameHash":J
    .local v6, "alterNameHash":J
    const-wide v19, 0x100000001b3L

    mul-long v17, v6, v19

    .line 65
    .end local v0    # "ch":C
    .end local v6    # "alterNameHash":J
    .restart local v17    # "alterNameHash":J
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v16

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    goto :goto_5

    .end local v21    # "name":Ljava/lang/String;
    .end local v22    # "jsonField":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v6, "name":Ljava/lang/String;
    .restart local v7    # "jsonField":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_4
    move-object/from16 v21, v6

    move-object/from16 v22, v7

    const-wide v19, 0x100000001b3L

    .line 70
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "jsonField":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v15    # "j":I
    .restart local v21    # "name":Ljava/lang/String;
    .restart local v22    # "jsonField":Lcom/alibaba/fastjson/annotation/JSONField;
    cmp-long v0, v17, v8

    if-eqz v0, :cond_5

    cmp-long v0, v17, v10

    if-eqz v0, :cond_5

    .line 71
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .end local v14    # "alterName":Ljava/lang/String;
    .end local v17    # "alterNameHash":J
    :cond_5
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v16

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    goto :goto_4

    .end local v21    # "name":Ljava/lang/String;
    .end local v22    # "jsonField":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v7    # "jsonField":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_6
    move-object/from16 v21, v6

    move-object/from16 v22, v7

    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "jsonField":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v21    # "name":Ljava/lang/String;
    .restart local v22    # "jsonField":Lcom/alibaba/fastjson/annotation/JSONField;
    goto :goto_6

    .line 62
    .end local v21    # "name":Ljava/lang/String;
    .end local v22    # "jsonField":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v7    # "jsonField":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_7
    move-object/from16 v21, v6

    move-object/from16 v22, v7

    .line 27
    .end local v5    # "e":Ljava/lang/Enum;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "jsonField":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v8    # "hash":J
    .end local v10    # "hash_lower":J
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 77
    .end local v4    # "i":I
    :cond_8
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumNameHashCodes:[J

    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "i":I
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 81
    .local v5, "h":Ljava/lang/Long;
    iget-object v6, v1, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumNameHashCodes:[J

    add-int/lit8 v7, v0, 0x1

    .end local v0    # "i":I
    .local v7, "i":I
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    aput-wide v8, v6, v0

    .line 82
    .end local v5    # "h":Ljava/lang/Long;
    move v0, v7

    goto :goto_7

    .line 83
    .end local v7    # "i":I
    .restart local v0    # "i":I
    :cond_9
    iget-object v4, v1, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumNameHashCodes:[J

    invoke-static {v4}, Ljava/util/Arrays;->sort([J)V

    .line 86
    .end local v0    # "i":I
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumNameHashCodes:[J

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Enum;

    iput-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enums:[Ljava/lang/Enum;

    .line 87
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_8
    iget-object v4, v1, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumNameHashCodes:[J

    array-length v5, v4

    if-ge v0, v5, :cond_a

    .line 88
    aget-wide v5, v4, v0

    .line 89
    .local v5, "hash":J
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Enum;

    .line 90
    .local v4, "e":Ljava/lang/Enum;
    iget-object v7, v1, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enums:[Ljava/lang/Enum;

    aput-object v4, v7, v0

    .line 87
    .end local v4    # "e":Ljava/lang/Enum;
    .end local v5    # "hash":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 92
    .end local v0    # "i":I
    :cond_a
    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
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

    .line 116
    :try_start_0
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 117
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .local v1, "token":I
    const/4 v2, 0x2

    const-string v3, " error, value : "

    const-string v4, "parse enum "

    const/16 v5, 0x10

    if-ne v1, v2, :cond_1

    .line 119
    :try_start_1
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v2

    .line 120
    .local v2, "intValue":I
    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 122
    if-ltz v2, :cond_0

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->ordinalEnums:[Ljava/lang/Enum;

    array-length v5, v5

    if-gt v2, v5, :cond_0

    .line 126
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->ordinalEnums:[Ljava/lang/Enum;

    aget-object v3, v3, v2

    return-object v3

    .line 123
    :cond_0
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumClass:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .end local p2    # "type":Ljava/lang/reflect/Type;
    .end local p3    # "fieldName":Ljava/lang/Object;
    throw v5

    .line 127
    .end local v2    # "intValue":I
    .restart local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .restart local p2    # "type":Ljava/lang/reflect/Type;
    .restart local p3    # "fieldName":Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x4

    const/4 v6, 0x0

    if-ne v1, v2, :cond_4

    .line 128
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "name":Ljava/lang/String;
    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 131
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 132
    return-object v6

    .line 135
    :cond_2
    const-wide v3, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 136
    .local v3, "hash":J
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 137
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 138
    .local v6, "ch":C
    int-to-long v7, v6

    xor-long/2addr v3, v7

    .line 139
    const-wide v7, 0x100000001b3L

    mul-long v3, v3, v7

    .line 136
    .end local v6    # "ch":C
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 142
    .end local v5    # "j":I
    :cond_3
    invoke-virtual {p0, v3, v4}, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->getEnumByHashCode(J)Ljava/lang/Enum;

    move-result-object v5

    return-object v5

    .line 143
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "hash":J
    :cond_4
    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    .line 144
    const/4 v2, 0x0

    .line 145
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 147
    return-object v6

    .line 149
    .end local v2    # "value":Ljava/lang/Object;
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v2

    .line 152
    .restart local v2    # "value":Ljava/lang/Object;
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumClass:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .end local p2    # "type":Ljava/lang/reflect/Type;
    .end local p3    # "fieldName":Ljava/lang/Object;
    throw v5
    :try_end_1
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 155
    .end local v0    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v1    # "token":I
    .end local v2    # "value":Ljava/lang/Object;
    .restart local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .restart local p2    # "type":Ljava/lang/reflect/Type;
    .restart local p3    # "fieldName":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 153
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 154
    .local v0, "e":Lcom/alibaba/fastjson/JSONException;
    throw v0
.end method

.method public getEnumByHashCode(J)Ljava/lang/Enum;
    .locals 2
    .param p1, "hashCode"    # J

    .line 95
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enums:[Ljava/lang/Enum;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 96
    return-object v1

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumNameHashCodes:[J

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 101
    .local v0, "enumIndex":I
    if-gez v0, :cond_1

    .line 102
    return-object v1

    .line 105
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enums:[Ljava/lang/Enum;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public getFastMatchToken()I
    .locals 1

    .line 161
    const/4 v0, 0x2

    return v0
.end method

.method public valueOf(I)Ljava/lang/Enum;
    .locals 1
    .param p1, "ordinal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->ordinalEnums:[Ljava/lang/Enum;

    aget-object v0, v0, p1

    return-object v0
.end method
