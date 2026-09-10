.class public Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;
.super Ljava/lang/Object;
.source "TimeDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
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

    .line 17
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 19
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    .line 20
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 22
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const-string v4, "syntax error"

    if-ne v3, v1, :cond_2

    .line 26
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 28
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 32
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide v5

    .line 33
    .local v5, "time":J
    const/16 v1, 0xd

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 34
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 37
    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 39
    new-instance v1, Ljava/sql/Time;

    invoke-direct {v1, v5, v6}, Ljava/sql/Time;-><init>(J)V

    return-object v1

    .line 35
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v1, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 29
    .end local v5    # "time":J
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v1, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 23
    :cond_2
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v1, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v1

    .line 44
    .local v1, "val":Ljava/lang/Object;
    const/4 v2, 0x0

    if-nez v1, :cond_4

    .line 45
    return-object v2

    .line 48
    :cond_4
    instance-of v3, v1, Ljava/sql/Time;

    if-eqz v3, :cond_5

    .line 49
    return-object v1

    .line 50
    :cond_5
    instance-of v3, v1, Ljava/lang/Number;

    if-eqz v3, :cond_6

    .line 51
    new-instance v2, Ljava/sql/Time;

    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/sql/Time;-><init>(J)V

    return-object v2

    .line 52
    :cond_6
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_d

    .line 53
    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 54
    .local v3, "strVal":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_7

    .line 55
    return-object v2

    .line 59
    :cond_7
    new-instance v2, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 60
    .local v2, "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 61
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .local v4, "longVal":J
    goto :goto_2

    .line 63
    .end local v4    # "longVal":J
    :cond_8
    const/4 v4, 0x1

    .line 64
    .local v4, "isDigit":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_b

    .line 65
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 66
    .local v6, "ch":C
    const/16 v7, 0x30

    if-lt v6, v7, :cond_a

    const/16 v7, 0x39

    if-le v6, v7, :cond_9

    goto :goto_1

    .line 64
    .end local v6    # "ch":C
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 67
    .restart local v6    # "ch":C
    :cond_a
    :goto_1
    const/4 v4, 0x0

    .line 71
    .end local v5    # "i":I
    .end local v6    # "ch":C
    :cond_b
    if-nez v4, :cond_c

    .line 72
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 73
    invoke-static {v3}, Ljava/sql/Time;->valueOf(Ljava/lang/String;)Ljava/sql/Time;

    move-result-object v5

    return-object v5

    .line 76
    :cond_c
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    move-wide v4, v5

    .line 78
    .local v4, "longVal":J
    :goto_2
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 79
    new-instance v6, Ljava/sql/Time;

    invoke-direct {v6, v4, v5}, Ljava/sql/Time;-><init>(J)V

    return-object v6

    .line 82
    .end local v2    # "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v3    # "strVal":Ljava/lang/String;
    .end local v4    # "longVal":J
    :cond_d
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "parse error"

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getFastMatchToken()I
    .locals 1

    .line 86
    const/4 v0, 0x2

    return v0
.end method
