.class public Lcom/alibaba/fastjson/support/hsf/HSFJSONUtils;
.super Ljava/lang/Object;
.source "HSFJSONUtils.java"


# static fields
.field static final fieldName_argsObjs:[C

.field static final fieldName_argsTypes:[C

.field static final fieldName_type:[C

.field static final typeSymbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/alibaba/fastjson/parser/SymbolTable;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/parser/SymbolTable;-><init>(I)V

    sput-object v0, Lcom/alibaba/fastjson/support/hsf/HSFJSONUtils;->typeSymbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    .line 16
    const-string v0, "\"argsTypes\""

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/support/hsf/HSFJSONUtils;->fieldName_argsTypes:[C

    .line 17
    const-string v0, "\"argsObjs\""

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/support/hsf/HSFJSONUtils;->fieldName_argsObjs:[C

    .line 19
    const-string v0, "\"@type\":"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/support/hsf/HSFJSONUtils;->fieldName_type:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseInvocationArguments(Ljava/lang/String;Lcom/alibaba/fastjson/support/hsf/MethodLocator;)[Ljava/lang/Object;
    .locals 24
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "methodLocator"    # Lcom/alibaba/fastjson/support/hsf/MethodLocator;

    .prologue
    .line 22
    new-instance v12, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;)V

    .line 24
    .local v12, "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v10

    check-cast v10, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    .line 26
    .local v10, "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v13

    .line 29
    .local v13, "rootContext":Lcom/alibaba/fastjson/parser/ParseContext;
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v14

    .line 30
    .local v14, "token":I
    const/16 v21, 0xc

    move/from16 v0, v21

    if-ne v14, v0, :cond_6

    .line 31
    sget-object v21, Lcom/alibaba/fastjson/support/hsf/HSFJSONUtils;->fieldName_argsTypes:[C

    const/16 v22, -0x1

    sget-object v23, Lcom/alibaba/fastjson/support/hsf/HSFJSONUtils;->typeSymbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v10, v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldStringArray([CILcom/alibaba/fastjson/parser/SymbolTable;)[Ljava/lang/String;

    move-result-object v17

    .line 32
    .local v17, "typeNames":[Ljava/lang/String;
    if-nez v17, :cond_0

    iget v0, v10, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 33
    sget-object v21, Lcom/alibaba/fastjson/support/hsf/HSFJSONUtils;->fieldName_type:[C

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldString([C)Ljava/lang/String;

    move-result-object v15

    .line 34
    .local v15, "type":Ljava/lang/String;
    const-string v21, "com.alibaba.fastjson.JSONObject"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 35
    sget-object v21, Lcom/alibaba/fastjson/support/hsf/HSFJSONUtils;->fieldName_argsTypes:[C

    const/16 v22, -0x1

    sget-object v23, Lcom/alibaba/fastjson/support/hsf/HSFJSONUtils;->typeSymbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v10, v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldStringArray([CILcom/alibaba/fastjson/parser/SymbolTable;)[Ljava/lang/String;

    move-result-object v17

    .line 38
    .end local v15    # "type":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/support/hsf/MethodLocator;->findMethod([Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 40
    .local v11, "method":Ljava/lang/reflect/Method;
    if-nez v11, :cond_3

    .line 41
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->close()V

    .line 43
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    .line 44
    .local v9, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string v21, "argsTypes"

    const-class v22, [Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "typeNames":[Ljava/lang/String;
    check-cast v17, [Ljava/lang/String;

    .line 45
    .restart local v17    # "typeNames":[Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/support/hsf/MethodLocator;->findMethod([Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 47
    const-string v21, "argsObjs"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    .line 48
    .local v5, "argsObjs":Lcom/alibaba/fastjson/JSONArray;
    if-nez v5, :cond_2

    .line 49
    const/16 v18, 0x0

    .end local v5    # "argsObjs":Lcom/alibaba/fastjson/JSONArray;
    .end local v9    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v11    # "method":Ljava/lang/reflect/Method;
    .end local v17    # "typeNames":[Ljava/lang/String;
    .local v18, "values":[Ljava/lang/Object;
    :cond_1
    :goto_0
    move-object/from16 v19, v18

    .end local v18    # "values":[Ljava/lang/Object;
    .local v19, "values":[Ljava/lang/Object;
    move-object/from16 v20, v18

    .line 118
    .end local v19    # "values":[Ljava/lang/Object;
    .local v20, "values":[Ljava/lang/Object;
    :goto_1
    return-object v20

    .line 51
    .end local v20    # "values":[Ljava/lang/Object;
    .restart local v5    # "argsObjs":Lcom/alibaba/fastjson/JSONArray;
    .restart local v9    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .restart local v11    # "method":Ljava/lang/reflect/Method;
    .restart local v17    # "typeNames":[Ljava/lang/String;
    :cond_2
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 52
    .local v4, "argTypes":[Ljava/lang/reflect/Type;
    array-length v0, v4

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 53
    .restart local v18    # "values":[Ljava/lang/Object;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    array-length v0, v4

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v8, v0, :cond_1

    .line 54
    aget-object v15, v4, v8

    .line 55
    .local v15, "type":Ljava/lang/reflect/Type;
    invoke-virtual {v5, v8, v15}, Lcom/alibaba/fastjson/JSONArray;->getObject(ILjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v21

    aput-object v21, v18, v8

    .line 53
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 59
    .end local v4    # "argTypes":[Ljava/lang/reflect/Type;
    .end local v5    # "argsObjs":Lcom/alibaba/fastjson/JSONArray;
    .end local v8    # "i":I
    .end local v9    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v15    # "type":Ljava/lang/reflect/Type;
    .end local v18    # "values":[Ljava/lang/Object;
    :cond_3
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 61
    .restart local v4    # "argTypes":[Ljava/lang/reflect/Type;
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipWhitespace()V

    .line 62
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCurrent()C

    move-result v21

    const/16 v22, 0x2c

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 63
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 66
    :cond_4
    sget-object v21, Lcom/alibaba/fastjson/support/hsf/HSFJSONUtils;->fieldName_argsObjs:[C

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchField2([C)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 67
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 69
    const/16 v21, 0x0

    const-string v22, "argsObjs"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v12, v13, v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v7

    .line 70
    .local v7, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    invoke-virtual {v12, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray([Ljava/lang/reflect/Type;)[Ljava/lang/Object;

    move-result-object v18

    .line 71
    .restart local v18    # "values":[Ljava/lang/Object;
    move-object/from16 v0, v18

    iput-object v0, v7, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 73
    const/16 v21, 0xd

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 75
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->handleResovleTask(Ljava/lang/Object;)V

    .line 80
    .end local v7    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    :goto_3
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    goto :goto_0

    .line 77
    .end local v18    # "values":[Ljava/lang/Object;
    :cond_5
    const/16 v18, 0x0

    .restart local v18    # "values":[Ljava/lang/Object;
    goto :goto_3

    .line 82
    .end local v4    # "argTypes":[Ljava/lang/reflect/Type;
    .end local v11    # "method":Ljava/lang/reflect/Method;
    .end local v17    # "typeNames":[Ljava/lang/String;
    .end local v18    # "values":[Ljava/lang/Object;
    :cond_6
    const/16 v21, 0xe

    move/from16 v0, v21

    if-ne v14, v0, :cond_b

    .line 83
    const/16 v21, 0x0

    const/16 v22, -0x1

    sget-object v23, Lcom/alibaba/fastjson/support/hsf/HSFJSONUtils;->typeSymbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v10, v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldStringArray([CILcom/alibaba/fastjson/parser/SymbolTable;)[Ljava/lang/String;

    move-result-object v17

    .line 85
    .restart local v17    # "typeNames":[Ljava/lang/String;
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipWhitespace()V

    .line 87
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCurrent()C

    move-result v6

    .line 89
    .local v6, "ch":C
    const/16 v21, 0x5d

    move/from16 v0, v21

    if-ne v6, v0, :cond_9

    .line 90
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/support/hsf/MethodLocator;->findMethod([Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 91
    .restart local v11    # "method":Ljava/lang/reflect/Method;
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 92
    .restart local v4    # "argTypes":[Ljava/lang/reflect/Type;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 93
    .restart local v18    # "values":[Ljava/lang/Object;
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_4
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v8, v0, :cond_8

    .line 94
    aget-object v3, v4, v8

    .line 95
    .local v3, "argType":Ljava/lang/reflect/Type;
    aget-object v16, v17, v8

    .line 96
    .local v16, "typeName":Ljava/lang/String;
    const-class v21, Ljava/lang/String;

    move-object/from16 v0, v21

    if-eq v3, v0, :cond_7

    .line 97
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-static {v0, v3, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v21

    aput-object v21, v18, v8

    .line 93
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 99
    :cond_7
    aput-object v16, v18, v8

    goto :goto_5

    .end local v3    # "argType":Ljava/lang/reflect/Type;
    .end local v16    # "typeName":Ljava/lang/String;
    :cond_8
    move-object/from16 v19, v18

    .end local v18    # "values":[Ljava/lang/Object;
    .restart local v19    # "values":[Ljava/lang/Object;
    move-object/from16 v20, v18

    .line 102
    .end local v19    # "values":[Ljava/lang/Object;
    .restart local v20    # "values":[Ljava/lang/Object;
    goto/16 :goto_1

    .line 104
    .end local v4    # "argTypes":[Ljava/lang/reflect/Type;
    .end local v8    # "i":I
    .end local v11    # "method":Ljava/lang/reflect/Method;
    .end local v20    # "values":[Ljava/lang/Object;
    :cond_9
    const/16 v21, 0x2c

    move/from16 v0, v21

    if-ne v6, v0, :cond_a

    .line 105
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 106
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipWhitespace()V

    .line 108
    :cond_a
    const/16 v21, 0xe

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 110
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/support/hsf/MethodLocator;->findMethod([Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 111
    .restart local v11    # "method":Ljava/lang/reflect/Method;
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 112
    .restart local v4    # "argTypes":[Ljava/lang/reflect/Type;
    invoke-virtual {v12, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray([Ljava/lang/reflect/Type;)[Ljava/lang/Object;

    move-result-object v18

    .line 113
    .restart local v18    # "values":[Ljava/lang/Object;
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->close()V

    goto/16 :goto_0

    .line 115
    .end local v4    # "argTypes":[Ljava/lang/reflect/Type;
    .end local v6    # "ch":C
    .end local v11    # "method":Ljava/lang/reflect/Method;
    .end local v17    # "typeNames":[Ljava/lang/String;
    .end local v18    # "values":[Ljava/lang/Object;
    :cond_b
    const/16 v18, 0x0

    .restart local v18    # "values":[Ljava/lang/Object;
    goto/16 :goto_0
.end method
