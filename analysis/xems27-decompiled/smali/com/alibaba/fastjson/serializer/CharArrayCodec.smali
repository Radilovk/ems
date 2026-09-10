.class public Lcom/alibaba/fastjson/serializer/CharArrayCodec;
.super Ljava/lang/Object;
.source "CharArrayCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/lang/Object;
    .locals 11
    .param p0, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            ")TT;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 25
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x10

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    .line 26
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, "val":Ljava/lang/String;
    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 28
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    return-object v2

    .line 31
    .end local v1    # "val":Ljava/lang/String;
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 32
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v1

    .line 33
    .local v1, "val":Ljava/lang/Number;
    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    return-object v2

    .line 37
    .end local v1    # "val":Ljava/lang/Number;
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v1

    .line 39
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 40
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    return-object v2

    .line 43
    :cond_2
    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_7

    .line 44
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    .line 46
    .local v2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v3, 0x1

    .line 47
    .local v3, "accept":Z
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 48
    .local v5, "item":Ljava/lang/Object;
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 49
    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 50
    .local v6, "itemLength":I
    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    .line 51
    const/4 v3, 0x0

    .line 52
    goto :goto_1

    .line 55
    .end local v5    # "item":Ljava/lang/Object;
    .end local v6    # "itemLength":I
    :cond_3
    goto :goto_0

    .line 57
    :cond_4
    :goto_1
    if-eqz v3, :cond_6

    .line 61
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v4

    new-array v4, v4, [C

    .line 62
    .local v4, "chars":[C
    const/4 v5, 0x0

    .line 63
    .local v5, "pos":I
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 64
    .local v7, "item":Ljava/lang/Object;
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "pos":I
    .local v8, "pos":I
    move-object v9, v7

    check-cast v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    aput-char v9, v4, v5

    .line 65
    .end local v7    # "item":Ljava/lang/Object;
    move v5, v8

    goto :goto_2

    .line 66
    .end local v8    # "pos":I
    .restart local v5    # "pos":I
    :cond_5
    return-object v4

    .line 58
    .end local v4    # "chars":[C
    .end local v5    # "pos":I
    :cond_6
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "can not cast to char[]"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 69
    .end local v2    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v3    # "accept":Z
    :cond_7
    if-nez v1, :cond_8

    const/4 v2, 0x0

    goto :goto_3

    .line 71
    :cond_8
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 69
    :goto_3
    return-object v2
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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

    .line 19
    invoke-static {p1}, Lcom/alibaba/fastjson/serializer/CharArrayCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFastMatchToken()I
    .locals 1

    .line 75
    const/4 v0, 0x4

    return v0
.end method
