.class public Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;
.super Ljava/lang/Object;
.source "NumberDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "clazz"    # Ljava/lang/reflect/Type;
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
    .line 19
    iget-object v1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 20
    .local v1, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_c

    .line 21
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, v6, :cond_0

    const-class v6, Ljava/lang/Double;

    if-ne p2, v6, :cond_2

    .line 22
    :cond_0
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v4

    .line 23
    .local v4, "val":Ljava/lang/String;
    const/16 v6, 0x10

    invoke-interface {v1, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 24
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 116
    .end local v4    # "val":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v4

    .line 27
    :cond_2
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide v4

    .line 28
    .local v4, "val":J
    const/16 v6, 0x10

    invoke-interface {v1, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 30
    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p2, v6, :cond_3

    const-class v6, Ljava/lang/Short;

    if-ne p2, v6, :cond_6

    .line 31
    :cond_3
    const-wide/16 v6, 0x7fff

    cmp-long v6, v4, v6

    if-gtz v6, :cond_4

    const-wide/16 v6, -0x8000

    cmp-long v6, v4, v6

    if-gez v6, :cond_5

    .line 32
    :cond_4
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "short overflow : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 34
    :cond_5
    long-to-int v6, v4

    int-to-short v6, v6

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    goto :goto_0

    .line 37
    :cond_6
    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, v6, :cond_7

    const-class v6, Ljava/lang/Byte;

    if-ne p2, v6, :cond_a

    .line 38
    :cond_7
    const-wide/16 v6, 0x7f

    cmp-long v6, v4, v6

    if-gtz v6, :cond_8

    const-wide/16 v6, -0x80

    cmp-long v6, v4, v6

    if-gez v6, :cond_9

    .line 39
    :cond_8
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "short overflow : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 42
    :cond_9
    long-to-int v6, v4

    int-to-byte v6, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    goto :goto_0

    .line 45
    :cond_a
    const-wide/32 v6, -0x80000000

    cmp-long v6, v4, v6

    if-ltz v6, :cond_b

    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v4, v6

    if-gtz v6, :cond_b

    .line 46
    long-to-int v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_0

    .line 48
    :cond_b
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto/16 :goto_0

    .line 51
    .end local v4    # "val":J
    :cond_c
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_14

    .line 52
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, v6, :cond_d

    const-class v6, Ljava/lang/Double;

    if-ne p2, v6, :cond_e

    .line 53
    :cond_d
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, "val":Ljava/lang/String;
    const/16 v6, 0x10

    invoke-interface {v1, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 55
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    goto/16 :goto_0

    .line 58
    .end local v4    # "val":Ljava/lang/String;
    :cond_e
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue()Ljava/math/BigDecimal;

    move-result-object v4

    .line 59
    .local v4, "val":Ljava/math/BigDecimal;
    const/16 v6, 0x10

    invoke-interface {v1, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 61
    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p2, v6, :cond_f

    const-class v6, Ljava/lang/Short;

    if-ne p2, v6, :cond_12

    .line 62
    :cond_f
    const-wide/16 v6, 0x7fff

    invoke-static {v6, v7}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v6

    if-gtz v6, :cond_10

    const-wide/16 v6, -0x8000

    invoke-static {v6, v7}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v6

    if-gez v6, :cond_11

    .line 63
    :cond_10
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "short overflow : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 65
    :cond_11
    invoke-virtual {v4}, Ljava/math/BigDecimal;->shortValue()S

    move-result v6

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    goto/16 :goto_0

    .line 68
    :cond_12
    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, v6, :cond_13

    const-class v6, Ljava/lang/Byte;

    if-ne p2, v6, :cond_1

    .line 69
    :cond_13
    invoke-virtual {v4}, Ljava/math/BigDecimal;->byteValue()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    goto/16 :goto_0

    .line 75
    .end local v4    # "val":Ljava/math/BigDecimal;
    :cond_14
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    const/16 v7, 0x12

    if-ne v6, v7, :cond_17

    const-string v6, "NaN"

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 76
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 77
    const/4 v2, 0x0

    .line 78
    .local v2, "nan":Ljava/lang/Object;
    const-class v6, Ljava/lang/Double;

    if-ne p2, v6, :cond_16

    .line 79
    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .end local v2    # "nan":Ljava/lang/Object;
    :cond_15
    :goto_1
    move-object v4, v2

    .line 83
    goto/16 :goto_0

    .line 80
    .restart local v2    # "nan":Ljava/lang/Object;
    :cond_16
    const-class v6, Ljava/lang/Float;

    if-ne p2, v6, :cond_15

    .line 81
    const/high16 v6, 0x7fc00000    # Float.NaN

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .local v2, "nan":Ljava/lang/Float;
    goto :goto_1

    .line 86
    .end local v2    # "nan":Ljava/lang/Float;
    :cond_17
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v3

    .line 88
    .local v3, "value":Ljava/lang/Object;
    if-nez v3, :cond_18

    .line 89
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 92
    :cond_18
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, v6, :cond_19

    const-class v6, Ljava/lang/Double;

    if-ne p2, v6, :cond_1a

    .line 94
    :cond_19
    :try_start_0
    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDouble(Ljava/lang/Object;)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto/16 :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parseDouble error, field : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 100
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1a
    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p2, v6, :cond_1b

    const-class v6, Ljava/lang/Short;

    if-ne p2, v6, :cond_1c

    .line 102
    :cond_1b
    :try_start_1
    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->castToShort(Ljava/lang/Object;)Ljava/lang/Short;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto/16 :goto_0

    .line 103
    :catch_1
    move-exception v0

    .line 104
    .restart local v0    # "ex":Ljava/lang/Exception;
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parseShort error, field : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 108
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1c
    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, v6, :cond_1d

    const-class v6, Ljava/lang/Byte;

    if-ne p2, v6, :cond_1e

    .line 110
    :cond_1d
    :try_start_2
    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->castToByte(Ljava/lang/Object;)Ljava/lang/Byte;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    goto/16 :goto_0

    .line 111
    :catch_2
    move-exception v0

    .line 112
    .restart local v0    # "ex":Ljava/lang/Exception;
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parseByte error, field : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 116
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1e
    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x2

    return v0
.end method
