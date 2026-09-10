.class public Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;
.super Ljava/lang/Object;
.source "StackTraceElementDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
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

    .line 18
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 19
    .local v1, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 20
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 21
    const/4 v2, 0x0

    return-object v2

    .line 24
    :cond_0
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    const/16 v4, 0xc

    const/16 v5, 0x10

    if-eq v2, v4, :cond_2

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    if-ne v2, v5, :cond_1

    goto :goto_0

    .line 25
    :cond_1
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syntax error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    invoke-static {v4}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 28
    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 29
    .local v2, "declaringClass":Ljava/lang/String;
    const/4 v4, 0x0

    .line 30
    .local v4, "methodName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 31
    .local v6, "fileName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 32
    .local v7, "lineNumber":I
    const/4 v8, 0x0

    .line 33
    .local v8, "moduleName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 34
    .local v9, "moduleVersion":Ljava/lang/String;
    const/4 v10, 0x0

    .line 38
    .local v10, "classLoaderName":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v11

    invoke-interface {v1, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v11

    .line 40
    .local v11, "key":Ljava/lang/String;
    const/16 v12, 0xd

    if-nez v11, :cond_4

    .line 41
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v13

    if-ne v13, v12, :cond_3

    .line 42
    invoke-interface {v1, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 43
    goto/16 :goto_3

    .line 45
    :cond_3
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v13

    if-ne v13, v5, :cond_4

    .line 46
    sget-object v13, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v1, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 47
    goto :goto_1

    .line 52
    :cond_4
    const/4 v13, 0x4

    invoke-interface {v1, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 53
    const-string v14, "className"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const-string v15, "syntax error"

    if-eqz v14, :cond_7

    .line 54
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v14

    if-ne v14, v3, :cond_5

    .line 55
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 56
    :cond_5
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v14

    if-ne v14, v13, :cond_6

    .line 57
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 59
    :cond_6
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v3, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 61
    :cond_7
    const-string v14, "methodName"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 62
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v14

    if-ne v14, v3, :cond_8

    .line 63
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 64
    :cond_8
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v14

    if-ne v14, v13, :cond_9

    .line 65
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    .line 67
    :cond_9
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v3, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 69
    :cond_a
    const-string v14, "fileName"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 70
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v14

    if-ne v14, v3, :cond_b

    .line 71
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 72
    :cond_b
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v14

    if-ne v14, v13, :cond_c

    .line 73
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    .line 75
    :cond_c
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v3, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 77
    :cond_d
    const-string v14, "lineNumber"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 78
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v13

    if-ne v13, v3, :cond_e

    .line 79
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 80
    :cond_e
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_f

    .line 81
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v7

    goto/16 :goto_2

    .line 83
    :cond_f
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v3, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 85
    :cond_10
    const-string v14, "nativeMethod"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 86
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v13

    if-ne v13, v3, :cond_11

    .line 87
    invoke-interface {v1, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_2

    .line 88
    :cond_11
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v13

    const/4 v14, 0x6

    if-ne v13, v14, :cond_12

    .line 89
    invoke-interface {v1, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_2

    .line 90
    :cond_12
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v13

    const/4 v14, 0x7

    if-ne v13, v14, :cond_13

    .line 91
    invoke-interface {v1, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_2

    .line 93
    :cond_13
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v3, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 95
    :cond_14
    sget-object v14, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    const-string v5, "syntax error : "

    if-ne v11, v14, :cond_18

    .line 96
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v14

    if-ne v14, v13, :cond_16

    .line 97
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v13

    .line 98
    .local v13, "elementType":Ljava/lang/String;
    const-string v14, "java.lang.StackTraceElement"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 101
    .end local v13    # "elementType":Ljava/lang/String;
    goto/16 :goto_2

    .line 99
    .restart local v13    # "elementType":Ljava/lang/String;
    :cond_15
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 102
    .end local v13    # "elementType":Ljava/lang/String;
    :cond_16
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    if-ne v5, v3, :cond_17

    goto/16 :goto_2

    .line 103
    :cond_17
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v3, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 106
    :cond_18
    const-string v14, "moduleName"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1b

    .line 107
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    if-ne v5, v3, :cond_19

    .line 108
    const/4 v5, 0x0

    move-object v8, v5

    .end local v8    # "moduleName":Ljava/lang/String;
    .local v5, "moduleName":Ljava/lang/String;
    goto :goto_2

    .line 109
    .end local v5    # "moduleName":Ljava/lang/String;
    .restart local v8    # "moduleName":Ljava/lang/String;
    :cond_19
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    if-ne v5, v13, :cond_1a

    .line 110
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v5

    move-object v8, v5

    .end local v8    # "moduleName":Ljava/lang/String;
    .restart local v5    # "moduleName":Ljava/lang/String;
    goto :goto_2

    .line 112
    .end local v5    # "moduleName":Ljava/lang/String;
    .restart local v8    # "moduleName":Ljava/lang/String;
    :cond_1a
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v3, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 114
    :cond_1b
    const-string v14, "moduleVersion"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1e

    .line 115
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    if-ne v5, v3, :cond_1c

    .line 116
    const/4 v5, 0x0

    move-object v9, v5

    .end local v9    # "moduleVersion":Ljava/lang/String;
    .local v5, "moduleVersion":Ljava/lang/String;
    goto :goto_2

    .line 117
    .end local v5    # "moduleVersion":Ljava/lang/String;
    .restart local v9    # "moduleVersion":Ljava/lang/String;
    :cond_1c
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    if-ne v5, v13, :cond_1d

    .line 118
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    .end local v9    # "moduleVersion":Ljava/lang/String;
    .restart local v5    # "moduleVersion":Ljava/lang/String;
    goto :goto_2

    .line 120
    .end local v5    # "moduleVersion":Ljava/lang/String;
    .restart local v9    # "moduleVersion":Ljava/lang/String;
    :cond_1d
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v3, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 122
    :cond_1e
    const-string v14, "classLoaderName"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_22

    .line 123
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    if-ne v5, v3, :cond_1f

    .line 124
    const/4 v5, 0x0

    move-object v10, v5

    .end local v10    # "classLoaderName":Ljava/lang/String;
    .local v5, "classLoaderName":Ljava/lang/String;
    goto :goto_2

    .line 125
    .end local v5    # "classLoaderName":Ljava/lang/String;
    .restart local v10    # "classLoaderName":Ljava/lang/String;
    :cond_1f
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    if-ne v5, v13, :cond_21

    .line 126
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v5

    move-object v10, v5

    .line 134
    :goto_2
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    if-ne v5, v12, :cond_20

    .line 135
    const/16 v5, 0x10

    invoke-interface {v1, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 136
    nop

    .line 139
    .end local v11    # "key":Ljava/lang/String;
    :goto_3
    new-instance v3, Ljava/lang/StackTraceElement;

    invoke-direct {v3, v2, v4, v6, v7}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v3

    .line 134
    .restart local v11    # "key":Ljava/lang/String;
    :cond_20
    const/16 v5, 0x10

    .line 138
    .end local v11    # "key":Ljava/lang/String;
    goto/16 :goto_1

    .line 128
    .restart local v11    # "key":Ljava/lang/String;
    :cond_21
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v3, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 131
    :cond_22
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getFastMatchToken()I
    .locals 1

    .line 143
    const/16 v0, 0xc

    return v0
.end method
