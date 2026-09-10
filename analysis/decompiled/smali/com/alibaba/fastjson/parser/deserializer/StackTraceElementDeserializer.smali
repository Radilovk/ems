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

    .prologue
    .line 14
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
    .line 18
    iget-object v5, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 19
    .local v5, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_0

    .line 20
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 21
    const/4 v10, 0x0

    .line 139
    :goto_0
    return-object v10

    .line 24
    :cond_0
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    const/16 v11, 0xc

    if-eq v10, v11, :cond_1

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    const/16 v11, 0x10

    if-eq v10, v11, :cond_1

    .line 25
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "syntax error: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v12

    invoke-static {v12}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 28
    :cond_1
    const/4 v1, 0x0

    .line 29
    .local v1, "declaringClass":Ljava/lang/String;
    const/4 v7, 0x0

    .line 30
    .local v7, "methodName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 31
    .local v3, "fileName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 32
    .local v6, "lineNumber":I
    const/4 v8, 0x0

    .line 33
    .local v8, "moduleName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 34
    .local v9, "moduleVersion":Ljava/lang/String;
    const/4 v0, 0x0

    .line 38
    .local v0, "classLoaderName":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v10

    invoke-interface {v5, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v4

    .line 40
    .local v4, "key":Ljava/lang/String;
    if-nez v4, :cond_4

    .line 41
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    const/16 v11, 0xd

    if-ne v10, v11, :cond_3

    .line 42
    const/16 v10, 0x10

    invoke-interface {v5, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 139
    :goto_1
    new-instance v10, Ljava/lang/StackTraceElement;

    invoke-direct {v10, v1, v7, v3, v6}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 45
    :cond_3
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    const/16 v11, 0x10

    if-ne v10, v11, :cond_4

    .line 46
    sget-object v10, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v5, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 52
    :cond_4
    const/4 v10, 0x4

    invoke-interface {v5, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 53
    const-string v10, "className"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 54
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_6

    .line 55
    const/4 v1, 0x0

    .line 134
    :cond_5
    :goto_2
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    const/16 v11, 0xd

    if-ne v10, v11, :cond_2

    .line 135
    const/16 v10, 0x10

    invoke-interface {v5, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_1

    .line 56
    :cond_6
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_7

    .line 57
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 59
    :cond_7
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    const-string v11, "syntax error"

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 61
    :cond_8
    const-string v10, "methodName"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 62
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_9

    .line 63
    const/4 v7, 0x0

    goto :goto_2

    .line 64
    :cond_9
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_a

    .line 65
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 67
    :cond_a
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    const-string v11, "syntax error"

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 69
    :cond_b
    const-string v10, "fileName"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 70
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_c

    .line 71
    const/4 v3, 0x0

    goto :goto_2

    .line 72
    :cond_c
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_d

    .line 73
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 75
    :cond_d
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    const-string v11, "syntax error"

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 77
    :cond_e
    const-string v10, "lineNumber"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 78
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_f

    .line 79
    const/4 v6, 0x0

    goto :goto_2

    .line 80
    :cond_f
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_10

    .line 81
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v6

    goto/16 :goto_2

    .line 83
    :cond_10
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    const-string v11, "syntax error"

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 85
    :cond_11
    const-string v10, "nativeMethod"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 86
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_12

    .line 87
    const/16 v10, 0x10

    invoke-interface {v5, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_2

    .line 88
    :cond_12
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    const/4 v11, 0x6

    if-ne v10, v11, :cond_13

    .line 89
    const/16 v10, 0x10

    invoke-interface {v5, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_2

    .line 90
    :cond_13
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    const/4 v11, 0x7

    if-ne v10, v11, :cond_14

    .line 91
    const/16 v10, 0x10

    invoke-interface {v5, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_2

    .line 93
    :cond_14
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    const-string v11, "syntax error"

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 95
    :cond_15
    sget-object v10, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    if-ne v4, v10, :cond_17

    .line 96
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_16

    .line 97
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "elementType":Ljava/lang/String;
    const-string v10, "java.lang.StackTraceElement"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 99
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "syntax error : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 102
    .end local v2    # "elementType":Ljava/lang/String;
    :cond_16
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_5

    .line 103
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    const-string v11, "syntax error"

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 106
    :cond_17
    const-string v10, "moduleName"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 107
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_18

    .line 108
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 109
    :cond_18
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_19

    .line 110
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    .line 112
    :cond_19
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    const-string v11, "syntax error"

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 114
    :cond_1a
    const-string v10, "moduleVersion"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 115
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_1b

    .line 116
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 117
    :cond_1b
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_1c

    .line 118
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    .line 120
    :cond_1c
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    const-string v11, "syntax error"

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 122
    :cond_1d
    const-string v10, "classLoaderName"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_20

    .line 123
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_1e

    .line 124
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 125
    :cond_1e
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_1f

    .line 126
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 128
    :cond_1f
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    const-string v11, "syntax error"

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 131
    :cond_20
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "syntax error : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 143
    const/16 v0, 0xc

    return v0
.end method
