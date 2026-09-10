.class public Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;
.super Ljava/lang/Object;
.source "EnumDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# instance fields
.field protected final enumClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected enumNameHashCodes:[J

.field protected final enums:[Ljava/lang/Enum;

.field protected final ordinalEnums:[Ljava/lang/Enum;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumClass:Ljava/lang/Class;

    .line 24
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljava/lang/Enum;

    check-cast v20, [Ljava/lang/Enum;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->ordinalEnums:[Ljava/lang/Enum;

    .line 26
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 27
    .local v7, "enumMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Enum;>;"
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->ordinalEnums:[Ljava/lang/Enum;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v14, v0, :cond_7

    .line 28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->ordinalEnums:[Ljava/lang/Enum;

    move-object/from16 v20, v0

    aget-object v6, v20, v14

    .line 29
    .local v6, "e":Ljava/lang/Enum;
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v19

    .line 31
    .local v19, "name":Ljava/lang/String;
    const/16 v17, 0x0

    .line 33
    .local v17, "jsonField":Lcom/alibaba/fastjson/annotation/JSONField;
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 34
    .local v8, "field":Ljava/lang/reflect/Field;
    const-class v20, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v17, v0

    .line 35
    if-eqz v17, :cond_0

    .line 36
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v18

    .line 37
    .local v18, "jsonFieldName":Ljava/lang/String;
    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v20

    if-lez v20, :cond_0

    .line 38
    move-object/from16 v19, v18

    .line 45
    .end local v8    # "field":Ljava/lang/reflect/Field;
    .end local v18    # "jsonFieldName":Ljava/lang/String;
    :cond_0
    :goto_1
    const-wide v10, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 46
    .local v10, "hash":J
    const-wide v12, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 47
    .local v12, "hash_lower":J
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_2
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    .line 48
    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 50
    .local v3, "ch":C
    int-to-long v0, v3

    move-wide/from16 v20, v0

    xor-long v10, v10, v20

    .line 51
    const/16 v20, 0x41

    move/from16 v0, v20

    if-lt v3, v0, :cond_1

    const/16 v20, 0x5a

    move/from16 v0, v20

    if-gt v3, v0, :cond_1

    add-int/lit8 v3, v3, 0x20

    .end local v3    # "ch":C
    :cond_1
    int-to-long v0, v3

    move-wide/from16 v20, v0

    xor-long v12, v12, v20

    .line 53
    const-wide v20, 0x100000001b3L

    mul-long v10, v10, v20

    .line 54
    const-wide v20, 0x100000001b3L

    mul-long v12, v12, v20

    .line 47
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 57
    :cond_2
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v7, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    cmp-long v20, v10, v12

    if-eqz v20, :cond_3

    .line 59
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v7, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_3
    if-eqz v17, :cond_6

    .line 63
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/fastjson/annotation/JSONField;->alternateNames()[Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    const/16 v20, 0x0

    :goto_3
    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_6

    aget-object v2, v21, v20

    .line 64
    .local v2, "alterName":Ljava/lang/String;
    const-wide v4, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 65
    .local v4, "alterNameHash":J
    const/16 v16, 0x0

    :goto_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v23

    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    .line 66
    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 67
    .restart local v3    # "ch":C
    int-to-long v0, v3

    move-wide/from16 v24, v0

    xor-long v4, v4, v24

    .line 68
    const-wide v24, 0x100000001b3L

    mul-long v4, v4, v24

    .line 65
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 70
    .end local v3    # "ch":C
    :cond_4
    cmp-long v23, v4, v10

    if-eqz v23, :cond_5

    cmp-long v23, v4, v12

    if-eqz v23, :cond_5

    .line 71
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v7, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_5
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 27
    .end local v2    # "alterName":Ljava/lang/String;
    .end local v4    # "alterNameHash":J
    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 77
    .end local v6    # "e":Ljava/lang/Enum;
    .end local v10    # "hash":J
    .end local v12    # "hash_lower":J
    .end local v16    # "j":I
    .end local v17    # "jsonField":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v19    # "name":Ljava/lang/String;
    :cond_7
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [J

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumNameHashCodes:[J

    .line 79
    const/4 v14, 0x0

    .line 80
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_8

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 81
    .local v9, "h":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumNameHashCodes:[J

    move-object/from16 v21, v0

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "i":I
    .local v15, "i":I
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    aput-wide v22, v21, v14

    move v14, v15

    .line 82
    .end local v15    # "i":I
    .restart local v14    # "i":I
    goto :goto_5

    .line 83
    .end local v9    # "h":Ljava/lang/Long;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumNameHashCodes:[J

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/util/Arrays;->sort([J)V

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumNameHashCodes:[J

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Enum;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enums:[Ljava/lang/Enum;

    .line 87
    const/4 v14, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumNameHashCodes:[J

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v14, v0, :cond_9

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumNameHashCodes:[J

    move-object/from16 v20, v0

    aget-wide v10, v20, v14

    .line 89
    .restart local v10    # "hash":J
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Enum;

    .line 90
    .restart local v6    # "e":Ljava/lang/Enum;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enums:[Ljava/lang/Enum;

    move-object/from16 v20, v0

    aput-object v6, v20, v14

    .line 87
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 92
    .end local v6    # "e":Ljava/lang/Enum;
    .end local v10    # "hash":J
    :cond_9
    return-void

    .line 41
    .restart local v6    # "e":Ljava/lang/Enum;
    .restart local v17    # "jsonField":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v19    # "name":Ljava/lang/String;
    :catch_0
    move-exception v20

    goto/16 :goto_1
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
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
    .line 116
    :try_start_0
    iget-object v6, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 117
    .local v6, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    .line 118
    .local v8, "token":I
    const/4 v10, 0x2

    if-ne v8, v10, :cond_2

    .line 119
    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v4

    .line 120
    .local v4, "intValue":I
    const/16 v10, 0x10

    invoke-interface {v6, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 122
    if-ltz v4, :cond_0

    iget-object v10, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->ordinalEnums:[Ljava/lang/Enum;

    array-length v10, v10

    if-le v4, v10, :cond_1

    .line 123
    :cond_0
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "parse enum "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumClass:Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " error, value : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 153
    .end local v4    # "intValue":I
    .end local v6    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v8    # "token":I
    :catch_0
    move-exception v1

    .line 154
    .local v1, "e":Lcom/alibaba/fastjson/JSONException;
    throw v1

    .line 126
    .end local v1    # "e":Lcom/alibaba/fastjson/JSONException;
    .restart local v4    # "intValue":I
    .restart local v6    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v8    # "token":I
    :cond_1
    :try_start_1
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->ordinalEnums:[Ljava/lang/Enum;

    aget-object v10, v10, v4

    .line 147
    .end local v4    # "intValue":I
    :goto_0
    return-object v10

    .line 127
    :cond_2
    const/4 v10, 0x4

    if-ne v8, v10, :cond_5

    .line 128
    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v7

    .line 129
    .local v7, "name":Ljava/lang/String;
    const/16 v10, 0x10

    invoke-interface {v6, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 131
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_3

    .line 132
    const/4 v10, 0x0

    goto :goto_0

    .line 135
    :cond_3
    const-wide v2, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 136
    .local v2, "hash":J
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v5, v10, :cond_4

    .line 137
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 138
    .local v0, "ch":C
    int-to-long v10, v0

    xor-long/2addr v2, v10

    .line 139
    const-wide v10, 0x100000001b3L

    mul-long/2addr v2, v10

    .line 136
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 142
    .end local v0    # "ch":C
    :cond_4
    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->getEnumByHashCode(J)Ljava/lang/Enum;

    move-result-object v10

    goto :goto_0

    .line 143
    .end local v2    # "hash":J
    .end local v5    # "j":I
    .end local v7    # "name":Ljava/lang/String;
    :cond_5
    const/16 v10, 0x8

    if-ne v8, v10, :cond_6

    .line 144
    const/4 v9, 0x0

    .line 145
    .local v9, "value":Ljava/lang/Object;
    const/16 v10, 0x10

    invoke-interface {v6, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 147
    const/4 v10, 0x0

    goto :goto_0

    .line 149
    .end local v9    # "value":Ljava/lang/Object;
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v9

    .line 152
    .restart local v9    # "value":Ljava/lang/Object;
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "parse enum "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumClass:Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " error, value : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 155
    .end local v6    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v8    # "token":I
    .end local v9    # "value":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 156
    .local v1, "e":Ljava/lang/Exception;
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
.end method

.method public getEnumByHashCode(J)Ljava/lang/Enum;
    .locals 3
    .param p1, "hashCode"    # J

    .prologue
    const/4 v1, 0x0

    .line 95
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enums:[Ljava/lang/Enum;

    if-nez v2, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-object v1

    .line 99
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumNameHashCodes:[J

    invoke-static {v2, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 101
    .local v0, "enumIndex":I
    if-ltz v0, :cond_0

    .line 105
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enums:[Ljava/lang/Enum;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
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
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->ordinalEnums:[Ljava/lang/Enum;

    aget-object v0, v0, p1

    return-object v0
.end method
