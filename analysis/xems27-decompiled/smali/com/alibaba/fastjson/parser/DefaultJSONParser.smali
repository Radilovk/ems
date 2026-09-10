.class public Lcom/alibaba/fastjson/parser/DefaultJSONParser;
.super Ljava/lang/Object;
.source "DefaultJSONParser.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    }
.end annotation


# static fields
.field public static final NONE:I = 0x0

.field public static final NeedToResolve:I = 0x1

.field public static final TypeNameRedirect:I = 0x2

.field private static final primitiveClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private autoTypeAccept:[Ljava/lang/String;

.field private autoTypeEnable:Z

.field protected config:Lcom/alibaba/fastjson/parser/ParserConfig;

.field protected context:Lcom/alibaba/fastjson/parser/ParseContext;

.field private contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

.field private contextArrayIndex:I

.field private dateFormat:Ljava/text/DateFormat;

.field private dateFormatPattern:Ljava/lang/String;

.field private extraProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private extraTypeProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;",
            ">;"
        }
    .end annotation
.end field

.field protected fieldTypeResolver:Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

.field public final input:Ljava/lang/Object;

.field protected transient lastBeanContext:Lcom/alibaba/fastjson/serializer/BeanContext;

.field public final lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

.field public resolveStatus:I

.field private resolveTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;",
            ">;"
        }
    .end annotation
.end field

.field public final symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    .line 76
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x5

    aput-object v1, v0, v3

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x6

    aput-object v1, v0, v3

    const/4 v1, 0x7

    const-class v3, Ljava/lang/Boolean;

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const-class v3, Ljava/lang/Byte;

    aput-object v3, v0, v1

    const/16 v1, 0x9

    const-class v3, Ljava/lang/Short;

    aput-object v3, v0, v1

    const/16 v1, 0xa

    const-class v3, Ljava/lang/Integer;

    aput-object v3, v0, v1

    const/16 v1, 0xb

    const-class v3, Ljava/lang/Long;

    aput-object v3, v0, v1

    const/16 v1, 0xc

    const-class v3, Ljava/lang/Float;

    aput-object v3, v0, v1

    const/16 v1, 0xd

    const-class v3, Ljava/lang/Double;

    aput-object v3, v0, v1

    const/16 v1, 0xe

    const-class v3, Ljava/math/BigInteger;

    aput-object v3, v0, v1

    const/16 v1, 0xf

    const-class v3, Ljava/math/BigDecimal;

    aput-object v3, v0, v1

    const/16 v1, 0x10

    const-class v3, Ljava/lang/String;

    aput-object v3, v0, v1

    .line 98
    .local v0, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 99
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v4, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    .end local v0    # "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/JSONLexer;)V
    .locals 1
    .param p1, "lexer"    # Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 141
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V
    .locals 1
    .param p1, "lexer"    # Lcom/alibaba/fastjson/parser/JSONLexer;
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V
    .locals 3
    .param p1, "input"    # Ljava/lang/Object;
    .param p2, "lexer"    # Lcom/alibaba/fastjson/parser/JSONLexer;
    .param p3, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormatPattern:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    .line 64
    iput v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    .line 67
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    .line 68
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->fieldTypeResolver:Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    .line 71
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->autoTypeAccept:[Ljava/lang/String;

    .line 149
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 150
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->input:Ljava/lang/Object;

    .line 151
    iput-object p3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 152
    iget-object v0, p3, Lcom/alibaba/fastjson/parser/ParserConfig;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    .line 154
    invoke-interface {p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v0

    .line 155
    .local v0, "ch":I
    const/16 v1, 0x7b

    if-ne v0, v1, :cond_0

    .line 156
    invoke-interface {p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 157
    move-object v1, p2

    check-cast v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    const/16 v2, 0xc

    iput v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    .line 158
    :cond_0
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_1

    .line 159
    invoke-interface {p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 160
    move-object v1, p2

    check-cast v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    const/16 v2, 0xe

    iput v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    .line 162
    :cond_1
    invoke-interface {p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 164
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .line 125
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V

    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 129
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONScanner;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {v0, p1, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "features"    # I

    .line 133
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v0, p1, p3}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 134
    return-void
.end method

.method public constructor <init>([CILcom/alibaba/fastjson/parser/ParserConfig;I)V
    .locals 1
    .param p1, "input"    # [C
    .param p2, "length"    # I
    .param p3, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p4, "features"    # I

    .line 137
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v0, p1, p2, p4}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>([CII)V

    invoke-direct {p0, p1, v0, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 138
    return-void
.end method

.method private addContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
    .locals 6
    .param p1, "context"    # Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1302
    iget v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    .line 1303
    .local v0, "i":I
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    if-nez v1, :cond_0

    .line 1304
    const/16 v1, 0x8

    new-array v1, v1, [Lcom/alibaba/fastjson/parser/ParseContext;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    goto :goto_0

    .line 1305
    :cond_0
    array-length v2, v1

    if-lt v0, v2, :cond_1

    .line 1306
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    .line 1307
    .local v2, "newLen":I
    new-array v3, v2, [Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1308
    .local v3, "newArray":[Lcom/alibaba/fastjson/parser/ParseContext;
    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1309
    iput-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1311
    .end local v2    # "newLen":I
    .end local v3    # "newArray":[Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    aput-object p1, v1, v0

    .line 1312
    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 4
    .param p1, "token"    # I

    .line 1446
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1447
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 1448
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1453
    return-void

    .line 1450
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error, expect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", actual "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1451
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final accept(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "nextExpectToken"    # I

    .line 1456
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1457
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 1458
    invoke-interface {v0, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_0

    .line 1460
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->throwException(I)V

    .line 1462
    :goto_0
    return-void
.end method

.method public acceptType(Ljava/lang/String;)V
    .locals 4
    .param p1, "typeName"    # Ljava/lang/String;

    .line 1025
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1027
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon()V

    .line 1029
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const-string v2, "type not match error"

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    .line 1033
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1034
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1035
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    .line 1036
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1041
    :cond_0
    return-void

    .line 1039
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1030
    :cond_2
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V
    .locals 2
    .param p1, "task"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    .line 1228
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1229
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    .line 1231
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1232
    return-void
.end method

.method public checkListResolve(Ljava/util/Collection;)V
    .locals 5
    .param p1, "array"    # Ljava/util/Collection;

    .line 1063
    iget v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1064
    instance-of v0, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1065
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .line 1066
    .local v0, "index":I
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    .line 1067
    .local v1, "list":Ljava/util/List;
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-result-object v3

    .line 1068
    .local v3, "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    new-instance v4, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;

    invoke-direct {v4, p0, v1, v0}, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;-><init>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/List;I)V

    iput-object v4, v3, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->fieldDeserializer:Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 1069
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    iput-object v4, v3, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1070
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    .line 1071
    .end local v0    # "index":I
    .end local v1    # "list":Ljava/util/List;
    .end local v3    # "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    goto :goto_0

    .line 1072
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-result-object v0

    .line 1073
    .local v0, "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    new-instance v1, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;

    invoke-direct {v1, p1}, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->fieldDeserializer:Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 1074
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    iput-object v1, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1075
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    .line 1078
    .end local v0    # "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    :cond_1
    :goto_0
    return-void
.end method

.method public checkMapResolve(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/util/Map;
    .param p2, "fieldName"    # Ljava/lang/Object;

    .line 1082
    iget v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1083
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    .line 1084
    .local v0, "fieldResolver":Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-result-object v1

    .line 1085
    .local v1, "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    iput-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->fieldDeserializer:Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 1086
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    iput-object v2, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1087
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    .line 1089
    .end local v0    # "fieldResolver":Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;
    .end local v1    # "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    :cond_0
    return-void
.end method

.method public close()V
    .locals 4

    .line 1470
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1473
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    :try_start_0
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->AutoCloseSource:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1474
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 1475
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not close json text, token : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v0    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1479
    .restart local v0    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    :cond_1
    :goto_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    .line 1480
    nop

    .line 1481
    return-void

    .line 1479
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    throw v1
.end method

.method public config(Lcom/alibaba/fastjson/parser/Feature;Z)V
    .locals 1
    .param p1, "feature"    # Lcom/alibaba/fastjson/parser/Feature;
    .param p2, "state"    # Z

    .line 1434
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->config(Lcom/alibaba/fastjson/parser/Feature;Z)V

    .line 1435
    return-void
.end method

.method public getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    return-object v0
.end method

.method public getContext()Lcom/alibaba/fastjson/parser/ParseContext;
    .locals 1

    .line 1217
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    return-object v0
.end method

.method public getDateFomartPattern()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormatPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getDateFormat()Ljava/text/DateFormat;
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormatPattern:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    .line 110
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method public getExtraProcessors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;",
            ">;"
        }
    .end annotation

    .line 1239
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1240
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    .line 1242
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    return-object v0
.end method

.method public getExtraTypeProviders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;",
            ">;"
        }
    .end annotation

    .line 1246
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1247
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    .line 1249
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    return-object v0
.end method

.method public getFieldTypeResolver()Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;
    .locals 1

    .line 1253
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->fieldTypeResolver:Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    return-object v0
.end method

.method public getInput()Ljava/lang/String;
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->input:Ljava/lang/Object;

    instance-of v1, v0, [C

    if-eqz v1, :cond_0

    .line 172
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->input:Ljava/lang/Object;

    check-cast v1, [C

    check-cast v1, [C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 174
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    .locals 2

    .line 1235
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    return-object v0
.end method

.method public getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;
    .locals 1

    .line 1442
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    return-object v0
.end method

.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 1052
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    if-ge v0, v1, :cond_1

    .line 1053
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/ParseContext;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1054
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    return-object v1

    .line 1052
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1058
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResolveStatus()I
    .locals 1

    .line 1044
    iget v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    return v0
.end method

.method public getResolveTaskList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;",
            ">;"
        }
    .end annotation

    .line 1221
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1222
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    .line 1224
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    return-object v0
.end method

.method public getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    return-object v0
.end method

.method public handleResovleTask(Ljava/lang/Object;)V
    .locals 9
    .param p1, "value"    # Ljava/lang/Object;

    .line 1497
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1498
    return-void

    .line 1501
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "size":I
    :goto_0
    if-ge v1, v0, :cond_6

    .line 1502
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    .line 1503
    .local v2, "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    iget-object v3, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->referenceValue:Ljava/lang/String;

    .line 1505
    .local v3, "ref":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1506
    .local v4, "object":Ljava/lang/Object;
    iget-object v5, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v5, :cond_1

    .line 1507
    iget-object v5, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v4, v5, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 1512
    :cond_1
    const-string v5, "$"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1513
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 1514
    .local v5, "refValue":Ljava/lang/Object;
    if-nez v5, :cond_3

    .line 1516
    :try_start_0
    invoke-static {p1, v3}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONPathException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v6

    .line 1519
    :goto_1
    goto :goto_2

    .line 1517
    :catch_0
    move-exception v6

    goto :goto_1

    .line 1522
    .end local v5    # "refValue":Ljava/lang/Object;
    :cond_2
    iget-object v5, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v5, v5, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 1525
    .restart local v5    # "refValue":Ljava/lang/Object;
    :cond_3
    :goto_2
    iget-object v6, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->fieldDeserializer:Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 1527
    .local v6, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-eqz v6, :cond_5

    .line 1528
    if-eqz v5, :cond_4

    .line 1529
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lcom/alibaba/fastjson/JSONObject;

    if-ne v7, v8, :cond_4

    iget-object v7, v6, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    if-eqz v7, :cond_4

    const-class v7, Ljava/util/Map;

    iget-object v8, v6, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v8, v8, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 1531
    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1532
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    iget-object v7, v7, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 1533
    .local v7, "root":Ljava/lang/Object;
    invoke-static {v7, v3}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 1536
    .end local v7    # "root":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v6, v4, v5}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1501
    .end local v2    # "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    .end local v3    # "ref":Ljava/lang/String;
    .end local v4    # "object":Ljava/lang/Object;
    .end local v5    # "refValue":Ljava/lang/Object;
    .end local v6    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1539
    .end local v0    # "size":I
    .end local v1    # "i":I
    :cond_6
    return-void
.end method

.method public isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
    .locals 1
    .param p1, "feature"    # Lcom/alibaba/fastjson/parser/Feature;

    .line 1438
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    return v0
.end method

.method public parse()Ljava/lang/Object;
    .locals 1

    .line 1315
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lcom/alibaba/fastjson/parser/deserializer/PropertyProcessable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1, "object"    # Lcom/alibaba/fastjson/parser/deserializer/PropertyProcessable;
    .param p2, "fieldName"    # Ljava/lang/Object;

    .line 1586
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    .line 1587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syntax error, expect {, actual "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->tokenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1588
    .local v0, "msg":Ljava/lang/String;
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1589
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", fieldName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1592
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1595
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 1596
    .local v1, "array":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {p0, v1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 1598
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1599
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1600
    .local v2, "first":Ljava/lang/Object;
    instance-of v3, v2, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v3, :cond_1

    .line 1601
    move-object v3, v2

    check-cast v3, Lcom/alibaba/fastjson/JSONObject;

    return-object v3

    .line 1605
    .end local v2    # "first":Ljava/lang/Object;
    :cond_1
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1608
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "array":Lcom/alibaba/fastjson/JSONArray;
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1610
    .local v0, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    const/4 v1, 0x0

    .line 1611
    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 1612
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v2

    .line 1613
    .local v2, "ch":C
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v4, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v3, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1614
    :goto_1
    const/16 v3, 0x2c

    if-ne v2, v3, :cond_3

    .line 1615
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1616
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 1617
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    goto :goto_1

    .line 1622
    :cond_3
    const-string v3, "expect \':\' at "

    const/16 v4, 0x3a

    const/16 v5, 0x22

    const/16 v6, 0x10

    if-ne v2, v5, :cond_5

    .line 1623
    :try_start_1
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-interface {v7, v8, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v7

    .line 1624
    .local v7, "key":Ljava/lang/String;
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 1625
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v8

    move v2, v8

    .line 1626
    if-ne v2, v4, :cond_4

    goto/16 :goto_2

    .line 1627
    :cond_4
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v0    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local p1    # "object":Lcom/alibaba/fastjson/parser/deserializer/PropertyProcessable;
    .end local p2    # "fieldName":Ljava/lang/Object;
    throw v4

    .line 1629
    .end local v7    # "key":Ljava/lang/String;
    .restart local v0    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local p1    # "object":Lcom/alibaba/fastjson/parser/deserializer/PropertyProcessable;
    .restart local p2    # "fieldName":Ljava/lang/Object;
    :cond_5
    const/16 v7, 0x7d

    if-ne v2, v7, :cond_6

    .line 1630
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1631
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->resetStringPosition()V

    .line 1632
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1633
    nop

    .line 1723
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 1633
    return-object p1

    .line 1634
    :cond_6
    const-string v7, "syntax error"

    const/16 v8, 0x27

    if-ne v2, v8, :cond_9

    .line 1635
    :try_start_2
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v10, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1639
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-interface {v7, v9, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v7

    .line 1640
    .restart local v7    # "key":Ljava/lang/String;
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 1641
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v8

    move v2, v8

    .line 1642
    if-ne v2, v4, :cond_7

    goto :goto_2

    .line 1643
    :cond_7
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v0    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local p1    # "object":Lcom/alibaba/fastjson/parser/deserializer/PropertyProcessable;
    .end local p2    # "fieldName":Ljava/lang/Object;
    throw v4

    .line 1636
    .end local v7    # "key":Ljava/lang/String;
    .restart local v0    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local p1    # "object":Lcom/alibaba/fastjson/parser/deserializer/PropertyProcessable;
    .restart local p2    # "fieldName":Ljava/lang/Object;
    :cond_8
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v3, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v0    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local p1    # "object":Lcom/alibaba/fastjson/parser/deserializer/PropertyProcessable;
    .end local p2    # "fieldName":Ljava/lang/Object;
    throw v3

    .line 1646
    .restart local v0    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local p1    # "object":Lcom/alibaba/fastjson/parser/deserializer/PropertyProcessable;
    .restart local p2    # "fieldName":Ljava/lang/Object;
    :cond_9
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v9, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v8, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1650
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-interface {v7, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v7

    .line 1651
    .restart local v7    # "key":Ljava/lang/String;
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 1652
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v8

    move v2, v8

    .line 1653
    if-ne v2, v4, :cond_12

    .line 1658
    :goto_2
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1659
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 1660
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v3

    move v2, v3

    .line 1662
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->resetStringPosition()V

    .line 1664
    sget-object v3, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    const/16 v4, 0xd

    if-ne v7, v3, :cond_c

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v8, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v3, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 1665
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-interface {v3, v8, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v3

    .line 1667
    .local v3, "typeName":Ljava/lang/String;
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->getFeatures()I

    move-result v9

    invoke-virtual {v5, v3, v8, v9}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v5

    .line 1669
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v8, Ljava/util/Map;

    invoke-virtual {v8, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1670
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v8, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1671
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    if-ne v8, v4, :cond_10

    .line 1672
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v4, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1673
    nop

    .line 1723
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 1673
    return-object p1

    .line 1678
    :cond_a
    :try_start_3
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v4

    .line 1680
    .local v4, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v8, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1682
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    .line 1684
    if-eqz v0, :cond_b

    instance-of v6, p2, Ljava/lang/Integer;

    if-nez v6, :cond_b

    .line 1685
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->popContext()V

    .line 1688
    :cond_b
    invoke-interface {v4, p0, v5, p2}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1723
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 1688
    return-object v6

    .line 1692
    .end local v3    # "typeName":Ljava/lang/String;
    .end local v4    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_c
    :try_start_4
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1694
    if-eqz v1, :cond_d

    .line 1695
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 1698
    :cond_d
    invoke-interface {p1, v7}, Lcom/alibaba/fastjson/parser/deserializer/PropertyProcessable;->getType(Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 1700
    .local v3, "valueType":Ljava/lang/reflect/Type;
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_e

    .line 1701
    const/4 v5, 0x0

    .line 1702
    .local v5, "value":Ljava/lang/Object;
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_3

    .line 1704
    .end local v5    # "value":Ljava/lang/Object;
    :cond_e
    invoke-virtual {p0, v3, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1707
    .restart local v5    # "value":Ljava/lang/Object;
    :goto_3
    invoke-interface {p1, v7, v5}, Lcom/alibaba/fastjson/parser/deserializer/PropertyProcessable;->apply(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1709
    invoke-virtual {p0, v0, v5, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1710
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 1712
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    .line 1713
    .local v6, "tok":I
    const/16 v8, 0x14

    if-eq v6, v8, :cond_11

    const/16 v8, 0xf

    if-ne v6, v8, :cond_f

    goto :goto_4

    .line 1717
    :cond_f
    if-ne v6, v4, :cond_10

    .line 1718
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1719
    nop

    .line 1723
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 1719
    return-object p1

    .line 1610
    .end local v2    # "ch":C
    .end local v3    # "valueType":Ljava/lang/reflect/Type;
    .end local v5    # "value":Ljava/lang/Object;
    .end local v6    # "tok":I
    .end local v7    # "key":Ljava/lang/String;
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1714
    .restart local v2    # "ch":C
    .restart local v3    # "valueType":Ljava/lang/reflect/Type;
    .restart local v5    # "value":Ljava/lang/Object;
    .restart local v6    # "tok":I
    .restart local v7    # "key":Ljava/lang/String;
    :cond_11
    :goto_4
    nop

    .line 1723
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 1714
    return-object p1

    .line 1654
    .end local v3    # "valueType":Ljava/lang/reflect/Type;
    .end local v5    # "value":Ljava/lang/Object;
    .end local v6    # "tok":I
    :cond_12
    :try_start_5
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", actual "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v0    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local p1    # "object":Lcom/alibaba/fastjson/parser/deserializer/PropertyProcessable;
    .end local p2    # "fieldName":Ljava/lang/Object;
    throw v4

    .line 1647
    .end local v7    # "key":Ljava/lang/String;
    .restart local v0    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local p1    # "object":Lcom/alibaba/fastjson/parser/deserializer/PropertyProcessable;
    .restart local p2    # "fieldName":Ljava/lang/Object;
    :cond_13
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v3, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v0    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local p1    # "object":Lcom/alibaba/fastjson/parser/deserializer/PropertyProcessable;
    .end local p2    # "fieldName":Ljava/lang/Object;
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1723
    .end local v1    # "i":I
    .end local v2    # "ch":C
    .restart local v0    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local p1    # "object":Lcom/alibaba/fastjson/parser/deserializer/PropertyProcessable;
    .restart local p2    # "fieldName":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    throw v1
.end method

.method public parse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "fieldName"    # Ljava/lang/Object;

    .line 1328
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1329
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_c

    const/4 v3, 0x3

    if-eq v1, v3, :cond_b

    const/4 v3, 0x4

    if-eq v1, v3, :cond_8

    const/16 v3, 0xc

    if-eq v1, v3, :cond_7

    const/16 v3, 0xe

    if-eq v1, v3, :cond_5

    const-string v3, "syntax error, "

    const/16 v4, 0x12

    const/4 v5, 0x0

    if-eq v1, v4, :cond_3

    const/16 v6, 0x1a

    if-eq v1, v6, :cond_2

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 1429
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1388
    :pswitch_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1389
    return-object v5

    .line 1336
    :pswitch_1
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1337
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 1338
    .local v1, "treeSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Object;>;"
    invoke-virtual {p0, v1, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 1339
    return-object v1

    .line 1331
    .end local v1    # "treeSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Object;>;"
    :pswitch_2
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1332
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1333
    .local v1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    invoke-virtual {p0, v1, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 1334
    return-object v1

    .line 1412
    .end local v1    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    :pswitch_3
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->isBlankInput()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1413
    return-object v5

    .line 1415
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unterminated json string, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1397
    :pswitch_4
    invoke-interface {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1399
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 1402
    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1404
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 1405
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    .line 1406
    .local v3, "time":J
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 1408
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 1410
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    return-object v1

    .line 1400
    .end local v3    # "time":J
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "syntax error"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1385
    :pswitch_5
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1386
    return-object v5

    .line 1394
    :pswitch_6
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1395
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v1

    .line 1391
    :pswitch_7
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1392
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v1

    .line 1417
    :cond_2
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->bytesValue()[B

    move-result-object v1

    .line 1418
    .local v1, "bytes":[B
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1419
    return-object v1

    .line 1421
    .end local v1    # "bytes":[B
    :cond_3
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    .line 1422
    .local v1, "identifier":Ljava/lang/String;
    const-string v2, "NaN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1423
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1424
    return-object v5

    .line 1426
    :cond_4
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1341
    .end local v1    # "identifier":Ljava/lang/String;
    :cond_5
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 1342
    .local v1, "array":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {p0, v1, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 1343
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->UseObjectArray:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1344
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->toArray()[Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1346
    :cond_6
    return-object v1

    .line 1348
    .end local v1    # "array":Lcom/alibaba/fastjson/JSONArray;
    :cond_7
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONObject;-><init>(Z)V

    .line 1349
    .local v1, "object":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {p0, v1, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1369
    .end local v1    # "object":Lcom/alibaba/fastjson/JSONObject;
    :cond_8
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    .line 1370
    .local v1, "stringLiteral":Ljava/lang/String;
    const/16 v2, 0x10

    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1372
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1373
    new-instance v2, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 1375
    .local v2, "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    :try_start_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1376
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1379
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 1376
    return-object v3

    .line 1379
    :cond_9
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 1380
    goto :goto_0

    .line 1379
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    throw v3

    .line 1383
    .end local v2    # "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    :cond_a
    :goto_0
    return-object v1

    .line 1365
    .end local v1    # "stringLiteral":Ljava/lang/String;
    :cond_b
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;

    move-result-object v1

    .line 1366
    .local v1, "value":Ljava/lang/Object;
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1367
    return-object v1

    .line 1361
    .end local v1    # "value":Ljava/lang/Object;
    :cond_c
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v1

    .line 1362
    .local v1, "intValue":Ljava/lang/Number;
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1363
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public parseArray(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 663
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 664
    .local v0, "array":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    .line 665
    return-object v0
.end method

.method public parseArray(Ljava/lang/Class;Ljava/util/Collection;)V
    .locals 0
    .param p2, "array"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Collection;",
            ")V"
        }
    .end annotation

    .line 669
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    .line 670
    return-void
.end method

.method public parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "array"    # Ljava/util/Collection;

    .line 674
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    .line 675
    return-void
.end method

.method public parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 8
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "array"    # Ljava/util/Collection;
    .param p3, "fieldName"    # Ljava/lang/Object;

    .line 679
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    .line 680
    .local v0, "token":I
    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_1

    .line 681
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 682
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    .line 685
    :cond_1
    const/16 v1, 0xe

    if-ne v0, v1, :cond_c

    .line 689
    const/4 v1, 0x0

    .line 690
    .local v1, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x4

    if-ne v2, p1, :cond_2

    .line 691
    sget-object v1, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    .line 692
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v4, 0x2

    invoke-interface {v2, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_0

    .line 693
    :cond_2
    const-class v2, Ljava/lang/String;

    if-ne v2, p1, :cond_3

    .line 694
    sget-object v1, Lcom/alibaba/fastjson/serializer/StringCodec;->instance:Lcom/alibaba/fastjson/serializer/StringCodec;

    .line 695
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_0

    .line 697
    :cond_3
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    .line 698
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 701
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 702
    .local v2, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 704
    const/4 v4, 0x0

    .line 705
    .local v4, "i":I
    :goto_1
    :try_start_0
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v6, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v5, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v5

    const/16 v6, 0x10

    if-eqz v5, :cond_4

    .line 706
    :goto_2
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    if-ne v5, v6, :cond_4

    .line 707
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 708
    goto :goto_2

    .line 712
    :cond_4
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v7, 0xf

    if-ne v5, v7, :cond_5

    .line 713
    nop

    .line 752
    .end local v4    # "i":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 753
    nop

    .line 755
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 756
    return-void

    .line 716
    .restart local v4    # "i":I
    :cond_5
    :try_start_1
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v5, p1, :cond_6

    .line 717
    sget-object v5, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    const/4 v7, 0x0

    invoke-virtual {v5, p0, v7, v7}, Lcom/alibaba/fastjson/serializer/IntegerCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 718
    .local v5, "val":Ljava/lang/Object;
    invoke-interface {p2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 719
    nop

    .end local v5    # "val":Ljava/lang/Object;
    goto :goto_5

    :cond_6
    const-class v5, Ljava/lang/String;

    if-ne v5, p1, :cond_9

    .line 721
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    if-ne v5, v3, :cond_7

    .line 722
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v5

    .line 723
    .local v5, "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v7, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_3

    .line 725
    .end local v5    # "value":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v5

    .line 726
    .local v5, "obj":Ljava/lang/Object;
    if-nez v5, :cond_8

    .line 727
    const/4 v7, 0x0

    move-object v5, v7

    .local v7, "value":Ljava/lang/String;
    goto :goto_3

    .line 729
    .end local v7    # "value":Ljava/lang/String;
    :cond_8
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 733
    .local v5, "value":Ljava/lang/String;
    :goto_3
    invoke-interface {p2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 734
    nop

    .end local v5    # "value":Ljava/lang/String;
    goto :goto_5

    .line 736
    :cond_9
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    const/16 v7, 0x8

    if-ne v5, v7, :cond_a

    .line 737
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 738
    const/4 v5, 0x0

    .local v5, "val":Ljava/lang/Object;
    goto :goto_4

    .line 740
    .end local v5    # "val":Ljava/lang/Object;
    :cond_a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, p0, p1, v5}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 742
    .restart local v5    # "val":Ljava/lang/Object;
    :goto_4
    invoke-interface {p2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 743
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    .line 746
    .end local v5    # "val":Ljava/lang/Object;
    :goto_5
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    if-ne v5, v6, :cond_b

    .line 747
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 704
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 752
    .end local v4    # "i":I
    :catchall_0
    move-exception v3

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    throw v3

    .line 686
    .end local v1    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v2    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_c
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exepct \'[\', but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final parseArray(Ljava/util/Collection;)V
    .locals 1
    .param p1, "array"    # Ljava/util/Collection;

    .line 1104
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 1105
    return-void
.end method

.method public final parseArray(Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 9
    .param p1, "array"    # Ljava/util/Collection;
    .param p2, "fieldName"    # Ljava/lang/Object;

    .line 1109
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1111
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x15

    if-eq v1, v2, :cond_0

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x16

    if-ne v1, v2, :cond_1

    .line 1112
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1115
    :cond_1
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_13

    .line 1120
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1122
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1123
    .local v3, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1125
    const/4 v4, 0x0

    .line 1126
    .local v4, "i":I
    :goto_0
    :try_start_0
    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v5

    const/16 v6, 0x10

    if-eqz v5, :cond_2

    .line 1127
    :goto_1
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    if-ne v5, v6, :cond_2

    .line 1128
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1129
    goto :goto_1

    .line 1134
    :cond_2
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    const/4 v7, 0x2

    if-eq v5, v7, :cond_11

    const/4 v7, 0x3

    if-eq v5, v7, :cond_f

    if-eq v5, v1, :cond_c

    const/4 v7, 0x6

    if-eq v5, v7, :cond_b

    const/4 v7, 0x7

    if-eq v5, v7, :cond_a

    const/16 v7, 0x8

    if-eq v5, v7, :cond_9

    const/16 v7, 0xc

    if-eq v5, v7, :cond_8

    const/16 v7, 0x14

    if-eq v5, v7, :cond_7

    const/16 v7, 0x17

    if-eq v5, v7, :cond_6

    if-eq v5, v2, :cond_4

    const/16 v7, 0xf

    if-eq v5, v7, :cond_3

    .line 1199
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v5

    .local v5, "value":Ljava/lang/Object;
    goto/16 :goto_4

    .line 1194
    .end local v5    # "value":Ljava/lang/Object;
    :cond_3
    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1212
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 1195
    return-void

    .line 1177
    :cond_4
    :try_start_1
    new-instance v5, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 1178
    .local v5, "items":Ljava/util/Collection;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 1179
    sget-object v7, Lcom/alibaba/fastjson/parser/Feature;->UseObjectArray:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1180
    invoke-interface {v5}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    .local v7, "value":Ljava/lang/Object;
    goto/16 :goto_4

    .line 1182
    .end local v7    # "value":Ljava/lang/Object;
    :cond_5
    move-object v7, v5

    .line 1184
    .restart local v7    # "value":Ljava/lang/Object;
    goto/16 :goto_4

    .line 1190
    .end local v5    # "items":Ljava/util/Collection;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_6
    const/4 v5, 0x0

    .line 1191
    .local v5, "value":Ljava/lang/Object;
    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1192
    goto/16 :goto_4

    .line 1197
    .end local v5    # "value":Ljava/lang/Object;
    :cond_7
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "unclosed jsonArray"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v0    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v3    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local p1    # "array":Ljava/util/Collection;
    .end local p2    # "fieldName":Ljava/lang/Object;
    throw v1

    .line 1173
    .restart local v0    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v3    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local p1    # "array":Ljava/util/Collection;
    .restart local p2    # "fieldName":Ljava/lang/Object;
    :cond_8
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    sget-object v7, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v7

    invoke-direct {v5, v7}, Lcom/alibaba/fastjson/JSONObject;-><init>(Z)V

    .line 1174
    .local v5, "object":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1175
    .restart local v7    # "value":Ljava/lang/Object;
    move-object v5, v7

    goto :goto_4

    .line 1186
    .end local v5    # "object":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_9
    const/4 v5, 0x0

    .line 1187
    .local v5, "value":Ljava/lang/Object;
    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1188
    goto :goto_4

    .line 1169
    .end local v5    # "value":Ljava/lang/Object;
    :cond_a
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1170
    .restart local v5    # "value":Ljava/lang/Object;
    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1171
    goto :goto_4

    .line 1165
    .end local v5    # "value":Ljava/lang/Object;
    :cond_b
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1166
    .restart local v5    # "value":Ljava/lang/Object;
    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1167
    goto :goto_4

    .line 1148
    .end local v5    # "value":Ljava/lang/Object;
    :cond_c
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v5

    .line 1149
    .local v5, "stringLiteral":Ljava/lang/String;
    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1151
    sget-object v7, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1152
    new-instance v7, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v7, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 1153
    .local v7, "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    invoke-virtual {v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1154
    invoke-virtual {v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    .local v8, "value":Ljava/lang/Object;
    goto :goto_2

    .line 1156
    .end local v8    # "value":Ljava/lang/Object;
    :cond_d
    move-object v8, v5

    .line 1158
    .restart local v8    # "value":Ljava/lang/Object;
    :goto_2
    invoke-virtual {v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 1159
    .end local v7    # "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    move-object v5, v8

    goto :goto_4

    .line 1160
    .end local v8    # "value":Ljava/lang/Object;
    :cond_e
    move-object v7, v5

    .line 1163
    .local v7, "value":Ljava/lang/Object;
    goto :goto_4

    .line 1140
    .end local v5    # "stringLiteral":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_f
    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1141
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;

    move-result-object v5

    .local v5, "value":Ljava/lang/Object;
    goto :goto_3

    .line 1143
    .end local v5    # "value":Ljava/lang/Object;
    :cond_10
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;

    move-result-object v5

    .line 1145
    .restart local v5    # "value":Ljava/lang/Object;
    :goto_3
    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1146
    goto :goto_4

    .line 1136
    .end local v5    # "value":Ljava/lang/Object;
    :cond_11
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v5

    .line 1137
    .restart local v5    # "value":Ljava/lang/Object;
    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1138
    nop

    .line 1203
    :goto_4
    invoke-interface {p1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1204
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    .line 1206
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    if-ne v7, v6, :cond_12

    .line 1207
    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1125
    .end local v5    # "value":Ljava/lang/Object;
    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1212
    .end local v4    # "i":I
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    throw v1

    .line 1116
    .end local v3    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_13
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error, expect [, actual "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", pos "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1117
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", fieldName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public parseArray([Ljava/lang/reflect/Type;)[Ljava/lang/Object;
    .locals 16
    .param p1, "types"    # [Ljava/lang/reflect/Type;

    .line 759
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/16 v5, 0x10

    if-ne v2, v4, :cond_0

    .line 760
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 761
    return-object v3

    .line 764
    :cond_0
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    const/16 v6, 0xe

    if-ne v2, v6, :cond_13

    .line 768
    array-length v2, v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 769
    .local v2, "list":[Ljava/lang/Object;
    array-length v7, v1

    const-string v8, "syntax error"

    const/16 v9, 0xf

    if-nez v7, :cond_2

    .line 770
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 772
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    if-ne v3, v9, :cond_1

    .line 776
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 777
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    return-object v3

    .line 773
    :cond_1
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v3, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 780
    :cond_2
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v10, 0x2

    invoke-interface {v7, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 782
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v11, v1

    if-ge v7, v11, :cond_11

    .line 785
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const-string v12, "syntax error :"

    if-ne v11, v4, :cond_3

    .line 786
    const/4 v11, 0x0

    .line 787
    .local v11, "value":Ljava/lang/Object;
    iget-object v13, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v13, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_4

    .line 789
    .end local v11    # "value":Ljava/lang/Object;
    :cond_3
    aget-object v11, v1, v7

    .line 790
    .local v11, "type":Ljava/lang/reflect/Type;
    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v11, v13, :cond_c

    const-class v13, Ljava/lang/Integer;

    if-ne v11, v13, :cond_4

    goto/16 :goto_3

    .line 798
    :cond_4
    const-class v13, Ljava/lang/String;

    if-ne v11, v13, :cond_6

    .line 799
    iget-object v13, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v13

    const/4 v14, 0x4

    if-ne v13, v14, :cond_5

    .line 800
    iget-object v13, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v13

    .line 801
    .local v13, "value":Ljava/lang/Object;
    iget-object v14, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v14, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    move-object v11, v13

    goto/16 :goto_4

    .line 803
    .end local v13    # "value":Ljava/lang/Object;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v13

    .line 804
    .restart local v13    # "value":Ljava/lang/Object;
    iget-object v14, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v13, v11, v14}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v13

    move-object v11, v13

    goto/16 :goto_4

    .line 807
    .end local v13    # "value":Ljava/lang/Object;
    :cond_6
    const/4 v13, 0x0

    .line 808
    .local v13, "isArray":Z
    const/4 v14, 0x0

    .line 809
    .local v14, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v15, v1

    add-int/lit8 v15, v15, -0x1

    if-ne v7, v15, :cond_7

    .line 810
    instance-of v15, v11, Ljava/lang/Class;

    if-eqz v15, :cond_7

    .line 811
    move-object v15, v11

    check-cast v15, Ljava/lang/Class;

    .line 812
    .local v15, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v15}, Ljava/lang/Class;->isArray()Z

    move-result v13

    .line 813
    invoke-virtual {v15}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v14

    .line 818
    .end local v15    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7
    if-eqz v13, :cond_b

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v15

    if-eq v15, v6, :cond_b

    .line 819
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 821
    .local v15, "varList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v4, v14}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v4

    .line 822
    .local v4, "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v6

    .line 824
    .local v6, "fastMatch":I
    iget-object v10, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    if-eq v10, v9, :cond_a

    .line 826
    :goto_1
    invoke-interface {v4, v0, v11, v3}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 827
    .local v10, "item":Ljava/lang/Object;
    invoke-interface {v15, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 829
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    if-ne v3, v5, :cond_8

    .line 830
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 836
    .end local v10    # "item":Ljava/lang/Object;
    const/4 v3, 0x0

    goto :goto_1

    .line 831
    .restart local v10    # "item":Ljava/lang/Object;
    :cond_8
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    if-ne v3, v9, :cond_9

    .line 832
    goto :goto_2

    .line 834
    :cond_9
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    invoke-static {v8}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 839
    .end local v10    # "item":Ljava/lang/Object;
    :cond_a
    :goto_2
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v15, v11, v3}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v3

    .line 840
    .end local v4    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v6    # "fastMatch":I
    .end local v15    # "varList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local v3, "value":Ljava/lang/Object;
    move-object v11, v3

    goto :goto_4

    .line 841
    .end local v3    # "value":Ljava/lang/Object;
    :cond_b
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v3, v11}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v3

    .line 842
    .local v3, "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v11, v4}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    .local v4, "value":Ljava/lang/Object;
    goto :goto_4

    .line 791
    .end local v3    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v4    # "value":Ljava/lang/Object;
    .end local v13    # "isArray":Z
    .end local v14    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_c
    :goto_3
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_d

    .line 792
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 793
    .local v3, "value":Ljava/lang/Object;
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v4, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    move-object v11, v3

    goto :goto_4

    .line 795
    .end local v3    # "value":Ljava/lang/Object;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v3

    .line 796
    .restart local v3    # "value":Ljava/lang/Object;
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v3, v11, v4}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    .line 846
    .end local v3    # "value":Ljava/lang/Object;
    .local v11, "value":Ljava/lang/Object;
    :goto_4
    aput-object v11, v2, v7

    .line 848
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    if-ne v3, v9, :cond_e

    .line 849
    goto :goto_6

    .line 852
    :cond_e
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    if-ne v3, v5, :cond_10

    .line 856
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-ne v7, v3, :cond_f

    .line 857
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    const/4 v4, 0x2

    goto :goto_5

    .line 859
    :cond_f
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 782
    .end local v11    # "value":Ljava/lang/Object;
    :goto_5
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/16 v6, 0xe

    const/4 v10, 0x2

    goto/16 :goto_0

    .line 853
    .restart local v11    # "value":Ljava/lang/Object;
    :cond_10
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    invoke-static {v5}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 863
    .end local v7    # "i":I
    .end local v11    # "value":Ljava/lang/Object;
    :cond_11
    :goto_6
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    if-ne v3, v9, :cond_12

    .line 867
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 869
    return-object v2

    .line 864
    :cond_12
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v3, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 765
    .end local v2    # "list":[Ljava/lang/Object;
    :cond_13
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syntax error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->tokenName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public parseArrayWithType(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 7
    .param p1, "collectionType"    # Ljava/lang/reflect/Type;

    .line 954
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 955
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 956
    const/4 v0, 0x0

    return-object v0

    .line 959
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 961
    .local v0, "actualTypes":[Ljava/lang/reflect/Type;
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 965
    const/4 v1, 0x0

    aget-object v3, v0, v1

    .line 967
    .local v3, "actualTypeArgument":Ljava/lang/reflect/Type;
    instance-of v4, v3, Ljava/lang/Class;

    if-eqz v4, :cond_1

    .line 968
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 969
    .local v1, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object v2, v3

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {p0, v2, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    .line 970
    return-object v1

    .line 973
    .end local v1    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1
    instance-of v4, v3, Ljava/lang/reflect/WildcardType;

    if-eqz v4, :cond_4

    .line 974
    move-object v2, v3

    check-cast v2, Ljava/lang/reflect/WildcardType;

    .line 977
    .local v2, "wildcardType":Ljava/lang/reflect/WildcardType;
    invoke-interface {v2}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v1, v4, v1

    .line 980
    .local v1, "upperBoundType":Ljava/lang/reflect/Type;
    const-class v4, Ljava/lang/Object;

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 981
    invoke-interface {v2}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_2

    .line 983
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 985
    :cond_2
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not support type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 989
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 990
    .local v4, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object v5, v1

    check-cast v5, Ljava/lang/Class;

    invoke-virtual {p0, v5, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    .line 991
    return-object v4

    .line 997
    .end local v1    # "upperBoundType":Ljava/lang/reflect/Type;
    .end local v2    # "wildcardType":Ljava/lang/reflect/WildcardType;
    .end local v4    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_4
    instance-of v4, v3, Ljava/lang/reflect/TypeVariable;

    if-eqz v4, :cond_6

    .line 998
    move-object v4, v3

    check-cast v4, Ljava/lang/reflect/TypeVariable;

    .line 999
    .local v4, "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v5

    .line 1001
    .local v5, "bounds":[Ljava/lang/reflect/Type;
    array-length v6, v5

    if-ne v6, v2, :cond_5

    .line 1005
    aget-object v1, v5, v1

    .line 1006
    .local v1, "boundType":Ljava/lang/reflect/Type;
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_6

    .line 1007
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1008
    .local v2, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object v6, v1

    check-cast v6, Ljava/lang/Class;

    invoke-virtual {p0, v6, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    .line 1009
    return-object v2

    .line 1002
    .end local v1    # "boundType":Ljava/lang/reflect/Type;
    .end local v2    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_5
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not support : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1013
    .end local v4    # "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .end local v5    # "bounds":[Ljava/lang/reflect/Type;
    :cond_6
    instance-of v1, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_7

    .line 1014
    move-object v1, v3

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 1016
    .local v1, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1017
    .restart local v2    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    .line 1018
    return-object v2

    .line 1021
    .end local v1    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v2    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_7
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TODO : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 962
    .end local v3    # "actualTypeArgument":Ljava/lang/reflect/Type;
    :cond_8
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not support type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public parseExtra(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/String;

    .line 1555
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1556
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon()V

    .line 1557
    const/4 v1, 0x0

    .line 1559
    .local v1, "type":Ljava/lang/reflect/Type;
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 1560
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;

    .line 1561
    .local v3, "extraProvider":Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;
    invoke-interface {v3, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;->getExtraType(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1562
    .end local v3    # "extraProvider":Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;
    goto :goto_0

    .line 1564
    :cond_0
    if-nez v1, :cond_1

    .line 1565
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 1566
    :cond_1
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    :goto_1
    nop

    .line 1568
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, p1, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessable;

    if-eqz v3, :cond_2

    .line 1569
    move-object v3, p1

    check-cast v3, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessable;

    .line 1570
    .local v3, "extraProcessable":Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessable;
    invoke-interface {v3, p2, v2}, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessable;->processExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1571
    return-void

    .line 1574
    .end local v3    # "extraProcessable":Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessable;
    :cond_2
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 1575
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;

    .line 1576
    .local v4, "process":Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;
    invoke-interface {v4, p1, p2, v2}, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;->processExtra(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1577
    .end local v4    # "process":Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;
    goto :goto_2

    .line 1580
    :cond_3
    iget v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 1581
    const/4 v3, 0x0

    iput v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 1583
    :cond_4
    return-void
.end method

.method public parseKey()Ljava/lang/Object;
    .locals 3

    .line 1319
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 1320
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    .line 1321
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v2, 0x10

    invoke-interface {v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1322
    return-object v0

    .line 1324
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parseObject()Lcom/alibaba/fastjson/JSONObject;
    .locals 3

    .line 1097
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Z)V

    .line 1098
    .local v0, "object":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 1099
    return-object v0
.end method

.method public parseObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 622
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 626
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "fieldName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 631
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    .line 632
    .local v0, "token":I
    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 633
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 634
    const/4 v1, 0x0

    return-object v1

    .line 637
    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 638
    const-class v1, [B

    if-ne p1, v1, :cond_1

    .line 639
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->bytesValue()[B

    move-result-object v1

    .line 640
    .local v1, "bytes":[B
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 641
    return-object v1

    .line 644
    .end local v1    # "bytes":[B
    :cond_1
    const-class v1, [C

    if-ne p1, v1, :cond_2

    .line 645
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    .line 646
    .local v1, "strVal":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 647
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    return-object v2

    .line 651
    .end local v1    # "strVal":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    .line 654
    .local v1, "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :try_start_0
    invoke-interface {v1, p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 657
    :catchall_0
    move-exception v2

    .line 658
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 655
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v2

    .line 656
    .local v2, "e":Lcom/alibaba/fastjson/JSONException;
    throw v2
.end method

.method public parseObject(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .param p1, "object"    # Ljava/util/Map;

    .line 1093
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24
    .param p1, "object"    # Ljava/util/Map;
    .param p2, "fieldName"    # Ljava/lang/Object;

    .line 179
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "parse number key error"

    iget-object v5, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 181
    .local v5, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/4 v6, 0x0

    const/16 v7, 0x8

    if-ne v0, v7, :cond_0

    .line 182
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 183
    return-object v6

    .line 186
    :cond_0
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v7, 0xd

    if-ne v0, v7, :cond_1

    .line 187
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 188
    return-object v2

    .line 191
    :cond_1
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/4 v8, 0x4

    if-ne v0, v8, :cond_2

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 192
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 193
    return-object v2

    .line 196
    :cond_2
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v9, 0xc

    const/16 v10, 0x10

    if-eq v0, v9, :cond_4

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    if-ne v0, v10, :cond_3

    goto :goto_0

    .line 197
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "syntax error, expect {, actual "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->tokenName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_4
    :goto_0
    iget-object v9, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 202
    .local v9, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    :try_start_0
    instance-of v0, v2, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_5

    move-object v0, v2

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->getInnerMap()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    :cond_5
    move-object v0, v2

    :goto_1
    move-object v11, v0

    .line 204
    .local v11, "map":Ljava/util/Map;
    const/4 v0, 0x0

    move-object v12, v9

    move v9, v0

    .line 206
    .local v9, "setContextFlag":Z
    .local v12, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    :goto_2
    :try_start_1
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 207
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v0

    .line 208
    .local v0, "ch":C
    sget-object v13, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v5, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v13

    const/16 v14, 0x2c

    if-eqz v13, :cond_7

    .line 209
    :goto_3
    if-ne v0, v14, :cond_6

    .line 210
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 211
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 212
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v13

    goto :goto_3

    .line 209
    :cond_6
    move v13, v0

    goto :goto_4

    .line 208
    :cond_7
    move v13, v0

    .line 216
    .end local v0    # "ch":C
    .local v13, "ch":C
    :goto_4
    const/4 v15, 0x0

    .line 218
    .local v15, "isObjectKey":Z
    const-string v8, ", name "

    const-string v10, "expect \':\' at "

    const/16 v7, 0x3a

    const/16 v6, 0x22

    const-string v14, "syntax error"

    if-ne v13, v6, :cond_9

    .line 219
    :try_start_2
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-interface {v5, v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "key":Ljava/lang/Object;
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 221
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v23

    move/from16 v13, v23

    .line 222
    if-ne v13, v7, :cond_8

    move-object v6, v0

    goto/16 :goto_8

    .line 223
    :cond_8
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v12    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local p1    # "object":Ljava/util/Map;
    .end local p2    # "fieldName":Ljava/lang/Object;
    throw v4

    .line 225
    .end local v0    # "key":Ljava/lang/Object;
    .restart local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v12    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local p1    # "object":Ljava/util/Map;
    .restart local p2    # "fieldName":Ljava/lang/Object;
    :cond_9
    const/16 v0, 0x7d

    if-ne v13, v0, :cond_d

    .line 226
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 227
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->resetStringPosition()V

    .line 228
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 230
    if-nez v9, :cond_c

    .line 231
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->fieldName:Ljava/lang/Object;

    if-ne v3, v0, :cond_a

    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-ne v2, v0, :cond_a

    .line 232
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object v12, v0

    goto :goto_5

    .line 234
    :cond_a
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 235
    .local v0, "contextR":Lcom/alibaba/fastjson/parser/ParseContext;
    if-nez v12, :cond_b

    .line 236
    move-object v12, v0

    .line 238
    :cond_b
    const/4 v9, 0x1

    .line 242
    .end local v0    # "contextR":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_c
    :goto_5
    nop

    .line 606
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 242
    return-object v2

    .line 243
    :cond_d
    const/16 v0, 0x27

    if-ne v13, v0, :cond_10

    .line 244
    :try_start_3
    sget-object v6, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v5, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 248
    iget-object v6, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-interface {v5, v6, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "key":Ljava/lang/Object;
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 250
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v6

    move v13, v6

    .line 251
    if-ne v13, v7, :cond_e

    move-object v6, v0

    goto/16 :goto_8

    .line 252
    :cond_e
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v12    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local p1    # "object":Ljava/util/Map;
    .end local p2    # "fieldName":Ljava/lang/Object;
    throw v4

    .line 245
    .end local v0    # "key":Ljava/lang/Object;
    .restart local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v12    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local p1    # "object":Ljava/util/Map;
    .restart local p2    # "fieldName":Ljava/lang/Object;
    :cond_f
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v12    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local p1    # "object":Ljava/util/Map;
    .end local p2    # "fieldName":Ljava/lang/Object;
    throw v0

    .line 254
    .restart local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v12    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local p1    # "object":Ljava/util/Map;
    .restart local p2    # "fieldName":Ljava/lang/Object;
    :cond_10
    const/16 v0, 0x1a

    if-eq v13, v0, :cond_5d

    .line 256
    const/16 v0, 0x2c

    if-eq v13, v0, :cond_5c

    .line 258
    const/16 v0, 0x30

    if-lt v13, v0, :cond_11

    const/16 v0, 0x39

    if-le v13, v0, :cond_12

    :cond_11
    const/16 v0, 0x2d

    if-ne v13, v0, :cond_16

    .line 259
    :cond_12
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->resetStringPosition()V

    .line 260
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 262
    :try_start_4
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/4 v6, 0x2

    if-ne v0, v6, :cond_13

    .line 263
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v0

    .restart local v0    # "key":Ljava/lang/Object;
    goto :goto_6

    .line 265
    .end local v0    # "key":Ljava/lang/Object;
    :cond_13
    const/4 v0, 0x1

    invoke-interface {v5, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;

    move-result-object v6

    move-object v0, v6

    .line 267
    .restart local v0    # "key":Ljava/lang/Object;
    :goto_6
    sget-object v6, Lcom/alibaba/fastjson/parser/Feature;->NonStringKeyAsString:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v5, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 268
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v6

    .line 272
    :cond_14
    nop

    .line 273
    :try_start_5
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v6

    move v13, v6

    .line 274
    if-ne v13, v7, :cond_15

    move-object v6, v0

    goto/16 :goto_8

    .line 275
    :cond_15
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v12    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local p1    # "object":Ljava/util/Map;
    .end local p2    # "fieldName":Ljava/lang/Object;
    throw v6

    .line 270
    .end local v0    # "key":Ljava/lang/Object;
    .restart local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v12    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local p1    # "object":Ljava/util/Map;
    .restart local p2    # "fieldName":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v12    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local p1    # "object":Ljava/util/Map;
    .end local p2    # "fieldName":Ljava/lang/Object;
    throw v6

    .line 277
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v12    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local p1    # "object":Ljava/util/Map;
    .restart local p2    # "fieldName":Ljava/lang/Object;
    :cond_16
    const/16 v0, 0x7b

    if-eq v13, v0, :cond_1a

    const/16 v0, 0x5b

    if-ne v13, v0, :cond_17

    goto :goto_7

    .line 282
    :cond_17
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v5, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 286
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-interface {v5, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "key":Ljava/lang/Object;
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 288
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v6

    move v13, v6

    .line 289
    if-ne v13, v7, :cond_18

    move-object v6, v0

    goto :goto_8

    .line 290
    :cond_18
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", actual "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v12    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local p1    # "object":Ljava/util/Map;
    .end local p2    # "fieldName":Ljava/lang/Object;
    throw v4

    .line 283
    .end local v0    # "key":Ljava/lang/Object;
    .restart local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v12    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local p1    # "object":Ljava/util/Map;
    .restart local p2    # "fieldName":Ljava/lang/Object;
    :cond_19
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v12    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local p1    # "object":Ljava/util/Map;
    .end local p2    # "fieldName":Ljava/lang/Object;
    throw v0

    .line 278
    .restart local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v12    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local p1    # "object":Ljava/util/Map;
    .restart local p2    # "fieldName":Ljava/lang/Object;
    :cond_1a
    :goto_7
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    .line 280
    .restart local v0    # "key":Ljava/lang/Object;
    const/4 v15, 0x1

    move-object v6, v0

    .line 294
    .end local v0    # "key":Ljava/lang/Object;
    .local v6, "key":Ljava/lang/Object;
    :goto_8
    if-nez v15, :cond_1b

    .line 295
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 296
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 299
    :cond_1b
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v0

    move v7, v0

    .line 301
    .end local v13    # "ch":C
    .local v7, "ch":C
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->resetStringPosition()V

    .line 303
    sget-object v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    if-ne v6, v0, :cond_2a

    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 304
    invoke-interface {v5, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 305
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    const/16 v8, 0x22

    invoke-interface {v5, v0, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 307
    .local v8, "typeName":Ljava/lang/String;
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->IgnoreAutoType:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v5, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 308
    const/4 v14, 0x0

    goto :goto_a

    .line 311
    :cond_1c
    const/4 v0, 0x0

    .line 312
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_1d

    .line 313
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 314
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    move-object v0, v10

    const/4 v14, 0x0

    goto :goto_9

    .line 316
    :cond_1d
    iget-object v10, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->getFeatures()I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v10, v8, v14, v13}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v10

    move-object v0, v10

    .line 319
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v10, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_9
    if-nez v10, :cond_1e

    .line 320
    sget-object v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-interface {v11, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    nop

    .line 206
    .end local v6    # "key":Ljava/lang/Object;
    .end local v7    # "ch":C
    .end local v8    # "typeName":Ljava/lang/String;
    .end local v10    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "isObjectKey":Z
    :goto_a
    move-object v6, v14

    :goto_b
    const/16 v7, 0xd

    const/4 v8, 0x4

    const/16 v10, 0x10

    goto/16 :goto_2

    .line 324
    .restart local v6    # "key":Ljava/lang/Object;
    .restart local v7    # "ch":C
    .restart local v8    # "typeName":Ljava/lang/String;
    .restart local v10    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v15    # "isObjectKey":Z
    :cond_1e
    const/16 v0, 0x10

    invoke-interface {v5, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 325
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    const/16 v13, 0xd

    if-ne v4, v13, :cond_26

    .line 326
    invoke-interface {v5, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 328
    const/4 v0, 0x0

    .line 329
    .local v0, "instance":Ljava/lang/Object;
    :try_start_6
    iget-object v4, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v4, v10}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v4

    .line 330
    .local v4, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v13, v4, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v13, :cond_22

    .line 331
    move-object v13, v4

    check-cast v13, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .line 332
    .local v13, "javaBeanDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    invoke-virtual {v13, v1, v10}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    .line 334
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_c
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_21

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .line 335
    .local v16, "o":Ljava/lang/Object;
    move-object/from16 v17, v16

    check-cast v17, Ljava/util/Map$Entry;

    .line 336
    .local v17, "entry":Ljava/util/Map$Entry;
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v18

    .line 337
    .local v19, "entryKey":Ljava/lang/Object;
    move-object/from16 v18, v4

    move-object/from16 v4, v19

    move-object/from16 v19, v14

    .end local v19    # "entryKey":Ljava/lang/Object;
    .local v4, "entryKey":Ljava/lang/Object;
    .local v18, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v14, v4, Ljava/lang/String;

    if-eqz v14, :cond_20

    .line 338
    move-object v14, v4

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v14

    .line 339
    .local v14, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-eqz v14, :cond_1f

    .line 340
    move-object/from16 v20, v4

    .end local v4    # "entryKey":Ljava/lang/Object;
    .local v20, "entryKey":Ljava/lang/Object;
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v14, v0, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_d

    .line 339
    .end local v20    # "entryKey":Ljava/lang/Object;
    .restart local v4    # "entryKey":Ljava/lang/Object;
    :cond_1f
    move-object/from16 v20, v4

    .end local v4    # "entryKey":Ljava/lang/Object;
    .restart local v20    # "entryKey":Ljava/lang/Object;
    goto :goto_d

    .line 337
    .end local v14    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v20    # "entryKey":Ljava/lang/Object;
    .restart local v4    # "entryKey":Ljava/lang/Object;
    :cond_20
    move-object/from16 v20, v4

    .line 343
    .end local v4    # "entryKey":Ljava/lang/Object;
    .end local v16    # "o":Ljava/lang/Object;
    .end local v17    # "entry":Ljava/util/Map$Entry;
    :goto_d
    move-object/from16 v4, v18

    move-object/from16 v14, v19

    goto :goto_c

    .line 334
    .end local v18    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .local v4, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_21
    move-object/from16 v18, v4

    .end local v4    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .restart local v18    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    goto :goto_e

    .line 330
    .end local v13    # "javaBeanDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    .end local v18    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .restart local v4    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_22
    move-object/from16 v18, v4

    .line 346
    .end local v4    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .restart local v18    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :goto_e
    if-nez v0, :cond_25

    .line 347
    const-class v4, Ljava/lang/Cloneable;

    if-ne v10, v4, :cond_23

    .line 348
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v0, v4

    goto :goto_f

    .line 349
    :cond_23
    const-string v4, "java.util.Collections$EmptyMap"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 350
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    move-object v0, v4

    goto :goto_f

    .line 352
    :cond_24
    invoke-virtual {v10}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v0, v4

    .line 356
    :cond_25
    :goto_f
    nop

    .line 606
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 356
    return-object v0

    .line 357
    .end local v0    # "instance":Ljava/lang/Object;
    .end local v18    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :catch_1
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v13, "create instance error"

    invoke-direct {v4, v13, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v12    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local p1    # "object":Ljava/util/Map;
    .end local p2    # "fieldName":Ljava/lang/Object;
    throw v4

    .line 362
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v12    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local p1    # "object":Ljava/util/Map;
    .restart local p2    # "fieldName":Ljava/lang/Object;
    :cond_26
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    .line 364
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v0, :cond_27

    if-eqz v3, :cond_27

    instance-of v0, v3, Ljava/lang/Integer;

    if-nez v0, :cond_27

    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->fieldName:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_27

    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->popContext()V

    .line 371
    :cond_27
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_28

    .line 372
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v2, v10, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    .line 373
    .local v0, "newObj":Ljava/lang/Object;
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 374
    nop

    .line 606
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 374
    return-object v0

    .line 377
    .end local v0    # "newObj":Ljava/lang/Object;
    :cond_28
    :try_start_8
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    .line 378
    .local v0, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    invoke-interface {v0, v1, v10, v3}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 606
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 378
    return-object v4

    .line 304
    .end local v0    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v8    # "typeName":Ljava/lang/String;
    .end local v10    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_29
    const/4 v0, 0x0

    goto :goto_10

    .line 303
    :cond_2a
    const/4 v0, 0x0

    .line 381
    :goto_10
    :try_start_9
    const-string v10, "$ref"

    if-ne v6, v10, :cond_38

    if-eqz v12, :cond_38

    sget-object v10, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 383
    invoke-interface {v5, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v10

    if-nez v10, :cond_37

    .line 384
    const/4 v10, 0x4

    invoke-interface {v5, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 385
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    if-ne v0, v10, :cond_36

    .line 386
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "ref":Ljava/lang/String;
    const/16 v4, 0xd

    invoke-interface {v5, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 389
    const/4 v4, 0x0

    .line 390
    .local v4, "refValue":Ljava/lang/Object;
    const-string v8, "@"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2e

    .line 391
    iget-object v8, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v8, :cond_34

    .line 392
    iget-object v8, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 393
    .local v8, "thisContext":Lcom/alibaba/fastjson/parser/ParseContext;
    iget-object v10, v8, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 394
    .local v10, "thisObj":Ljava/lang/Object;
    instance-of v13, v10, [Ljava/lang/Object;

    if-nez v13, :cond_2c

    instance-of v13, v10, Ljava/util/Collection;

    if-eqz v13, :cond_2b

    goto :goto_11

    .line 396
    :cond_2b
    iget-object v13, v8, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v13, :cond_2d

    .line 397
    iget-object v13, v8, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v13, v13, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object v4, v13

    goto :goto_12

    .line 395
    :cond_2c
    :goto_11
    move-object v4, v10

    .line 399
    .end local v8    # "thisContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v10    # "thisObj":Ljava/lang/Object;
    :cond_2d
    :goto_12
    goto :goto_15

    .line 400
    :cond_2e
    const-string v8, ".."

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_30

    .line 401
    iget-object v8, v12, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v8, :cond_2f

    .line 402
    iget-object v8, v12, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object v4, v8

    goto :goto_15

    .line 404
    :cond_2f
    new-instance v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v8, v12, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 405
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    goto :goto_15

    .line 407
    :cond_30
    const-string v8, "$"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_33

    .line 408
    move-object v8, v12

    .line 409
    .local v8, "rootContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :goto_13
    iget-object v10, v8, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v10, :cond_31

    .line 410
    iget-object v10, v8, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object v8, v10

    goto :goto_13

    .line 413
    :cond_31
    iget-object v10, v8, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v10, :cond_32

    .line 414
    iget-object v10, v8, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object v4, v10

    goto :goto_14

    .line 416
    :cond_32
    new-instance v10, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v10, v8, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 417
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    .line 419
    .end local v8    # "rootContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :goto_14
    goto :goto_15

    .line 420
    :cond_33
    new-instance v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v8, v12, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 421
    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    .line 424
    :cond_34
    :goto_15
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    const/16 v10, 0xd

    if-ne v8, v10, :cond_35

    .line 427
    const/16 v8, 0x10

    invoke-interface {v5, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 429
    nop

    .line 606
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 429
    return-object v4

    .line 425
    :cond_35
    :try_start_a
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v8, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v12    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local p1    # "object":Ljava/util/Map;
    .end local p2    # "fieldName":Ljava/lang/Object;
    throw v8

    .line 431
    .end local v0    # "ref":Ljava/lang/String;
    .end local v4    # "refValue":Ljava/lang/Object;
    .restart local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v12    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local p1    # "object":Ljava/util/Map;
    .restart local p2    # "fieldName":Ljava/lang/Object;
    :cond_36
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "illegal ref, "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    invoke-static {v8}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v12    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local p1    # "object":Ljava/util/Map;
    .end local p2    # "fieldName":Ljava/lang/Object;
    throw v0

    .line 383
    .restart local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v12    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local p1    # "object":Ljava/util/Map;
    .restart local p2    # "fieldName":Ljava/lang/Object;
    :cond_37
    const/4 v10, 0x4

    const/4 v13, 0x1

    goto :goto_16

    .line 381
    :cond_38
    const/4 v10, 0x4

    const/4 v13, 0x1

    .line 435
    :goto_16
    if-nez v9, :cond_3b

    .line 436
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v0, :cond_39

    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->fieldName:Ljava/lang/Object;

    if-ne v3, v0, :cond_39

    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-ne v2, v0, :cond_39

    .line 437
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object v12, v0

    .end local v12    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .local v0, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    goto :goto_17

    .line 439
    .end local v0    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v12    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_39
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v0

    .line 440
    .local v0, "contextR":Lcom/alibaba/fastjson/parser/ParseContext;
    if-nez v12, :cond_3a

    .line 441
    move-object v12, v0

    .line 443
    :cond_3a
    const/4 v9, 0x1

    .line 447
    .end local v0    # "contextR":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_3b
    :goto_17
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v10, Lcom/alibaba/fastjson/JSONObject;

    if-ne v0, v10, :cond_3c

    .line 448
    if-nez v6, :cond_3c

    .line 449
    const-string v0, "null"
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-object v6, v0

    .line 454
    :cond_3c
    const-string v0, "syntax error, position at "

    const/16 v10, 0x22

    if-ne v7, v10, :cond_3f

    .line 455
    :try_start_b
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    .line 456
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v10

    .line 457
    .local v10, "strValue":Ljava/lang/String;
    move-object v13, v10

    .line 459
    .local v13, "value":Ljava/lang/Object;
    sget-object v14, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v5, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v14

    if-eqz v14, :cond_3e

    .line 460
    new-instance v14, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v14, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 461
    .local v14, "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    invoke-virtual {v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch()Z

    move-result v20

    if-eqz v20, :cond_3d

    .line 462
    invoke-virtual {v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v20

    move-object/from16 v13, v20

    .line 464
    :cond_3d
    invoke-virtual {v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 467
    .end local v14    # "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    :cond_3e
    invoke-interface {v11, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    nop

    .end local v10    # "strValue":Ljava/lang/String;
    goto :goto_19

    .end local v13    # "value":Ljava/lang/Object;
    :cond_3f
    const/16 v10, 0x30

    if-lt v7, v10, :cond_40

    const/16 v10, 0x39

    if-le v7, v10, :cond_41

    :cond_40
    const/16 v10, 0x2d

    if-ne v7, v10, :cond_45

    .line 469
    :cond_41
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V

    .line 470
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    const/4 v13, 0x2

    if-ne v10, v13, :cond_42

    .line 471
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v10

    move-object v13, v10

    .local v10, "value":Ljava/lang/Object;
    goto :goto_18

    .line 473
    .end local v10    # "value":Ljava/lang/Object;
    :cond_42
    sget-object v10, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v5, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v10

    invoke-interface {v5, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;

    move-result-object v10

    move-object v13, v10

    .line 476
    .restart local v13    # "value":Ljava/lang/Object;
    :goto_18
    invoke-interface {v11, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    :goto_19
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 587
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v10

    move v7, v10

    .line 588
    const/16 v10, 0x2c

    if-ne v7, v10, :cond_43

    .line 589
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 590
    move-object/from16 v20, v4

    const/16 v10, 0xd

    const/16 v13, 0x10

    goto/16 :goto_20

    .line 591
    :cond_43
    const/16 v4, 0x7d

    if-ne v7, v4, :cond_44

    .line 592
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 593
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->resetStringPosition()V

    .line 594
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 597
    invoke-virtual {v1, v13, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 599
    nop

    .line 606
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 599
    return-object v2

    .line 601
    :cond_44
    :try_start_c
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v12    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local p1    # "object":Ljava/util/Map;
    .end local p2    # "fieldName":Ljava/lang/Object;
    throw v4

    .line 477
    .end local v13    # "value":Ljava/lang/Object;
    .restart local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v12    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local p1    # "object":Ljava/util/Map;
    .restart local p2    # "fieldName":Ljava/lang/Object;
    :cond_45
    const/16 v10, 0x5b

    if-ne v7, v10, :cond_4b

    .line 478
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 480
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 482
    .local v0, "list":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v3, :cond_46

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-class v10, Ljava/lang/Integer;

    if-ne v8, v10, :cond_46

    goto :goto_1a

    :cond_46
    const/4 v13, 0x0

    :goto_1a
    move v8, v13

    .line 486
    .local v8, "parentIsArray":Z
    if-nez v3, :cond_47

    .line 487
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 490
    :cond_47
    invoke-virtual {v1, v0, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 492
    sget-object v10, Lcom/alibaba/fastjson/parser/Feature;->UseObjectArray:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v5, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v10

    if-eqz v10, :cond_48

    .line 493
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->toArray()[Ljava/lang/Object;

    move-result-object v10

    .restart local v10    # "value":Ljava/lang/Object;
    goto :goto_1b

    .line 495
    .end local v10    # "value":Ljava/lang/Object;
    :cond_48
    move-object v10, v0

    .line 497
    .restart local v10    # "value":Ljava/lang/Object;
    :goto_1b
    invoke-interface {v11, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v13

    move-object/from16 v20, v0

    const/16 v0, 0xd

    .end local v0    # "list":Lcom/alibaba/fastjson/JSONArray;
    .local v20, "list":Lcom/alibaba/fastjson/JSONArray;
    if-ne v13, v0, :cond_49

    .line 500
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 501
    nop

    .line 606
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 501
    return-object v2

    .line 502
    :cond_49
    :try_start_d
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v13, 0x10

    if-ne v0, v13, :cond_4a

    .line 503
    move-object/from16 v20, v4

    const/16 v10, 0xd

    const/16 v13, 0x10

    goto/16 :goto_20

    .line 505
    :cond_4a
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v12    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local p1    # "object":Ljava/util/Map;
    .end local p2    # "fieldName":Ljava/lang/Object;
    throw v0

    .line 507
    .end local v8    # "parentIsArray":Z
    .end local v10    # "value":Ljava/lang/Object;
    .end local v20    # "list":Lcom/alibaba/fastjson/JSONArray;
    .restart local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v12    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local p1    # "object":Ljava/util/Map;
    .restart local p2    # "fieldName":Ljava/lang/Object;
    :cond_4b
    const/16 v10, 0x7b

    if-ne v7, v10, :cond_59

    .line 508
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 510
    if-eqz v3, :cond_4c

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v8, Ljava/lang/Integer;

    if-ne v0, v8, :cond_4c

    const/4 v14, 0x1

    goto :goto_1c

    :cond_4c
    const/4 v14, 0x0

    :goto_1c
    move v0, v14

    .line 513
    .local v0, "parentIsArray":Z
    sget-object v8, Lcom/alibaba/fastjson/parser/Feature;->CustomMapDeserializer:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v5, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v8

    if-eqz v8, :cond_4d

    .line 514
    iget-object v8, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    const-class v10, Ljava/util/Map;

    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v8

    check-cast v8, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    .line 515
    .local v8, "mapDeserializer":Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;
    const-class v10, Ljava/util/Map;

    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->createMap(Ljava/lang/reflect/Type;)Ljava/util/Map;

    move-result-object v10

    move-object v8, v10

    .line 516
    .local v8, "input":Ljava/util/Map;
    goto :goto_1d

    .line 517
    .end local v8    # "input":Ljava/util/Map;
    :cond_4d
    new-instance v8, Lcom/alibaba/fastjson/JSONObject;

    sget-object v10, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v5, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v10

    invoke-direct {v8, v10}, Lcom/alibaba/fastjson/JSONObject;-><init>(Z)V

    .line 519
    .restart local v8    # "input":Ljava/util/Map;
    :goto_1d
    const/4 v10, 0x0

    .line 521
    .local v10, "ctxLocal":Lcom/alibaba/fastjson/parser/ParseContext;
    if-nez v0, :cond_4e

    .line 522
    invoke-virtual {v1, v12, v8, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v13

    move-object v10, v13

    .line 525
    :cond_4e
    const/4 v13, 0x0

    .line 526
    .local v13, "obj":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 527
    .local v14, "objParsed":Z
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->fieldTypeResolver:Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    if-eqz v3, :cond_51

    .line 528
    if-eqz v6, :cond_4f

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1e

    :cond_4f
    const/4 v3, 0x0

    .line 529
    .local v3, "resolveFieldName":Ljava/lang/String;
    :goto_1e
    move-object/from16 v20, v4

    iget-object v4, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->fieldTypeResolver:Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    invoke-interface {v4, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;->resolve(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 530
    .local v4, "fieldType":Ljava/lang/reflect/Type;
    if-eqz v4, :cond_50

    .line 531
    move-object/from16 v21, v3

    .end local v3    # "resolveFieldName":Ljava/lang/String;
    .local v21, "resolveFieldName":Ljava/lang/String;
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v3

    .line 532
    .local v3, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    invoke-interface {v3, v1, v4, v6}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v13, v22

    .line 533
    const/4 v14, 0x1

    goto :goto_1f

    .line 530
    .end local v21    # "resolveFieldName":Ljava/lang/String;
    .local v3, "resolveFieldName":Ljava/lang/String;
    :cond_50
    move-object/from16 v21, v3

    .end local v3    # "resolveFieldName":Ljava/lang/String;
    .restart local v21    # "resolveFieldName":Ljava/lang/String;
    goto :goto_1f

    .line 527
    .end local v4    # "fieldType":Ljava/lang/reflect/Type;
    .end local v21    # "resolveFieldName":Ljava/lang/String;
    :cond_51
    move-object/from16 v20, v4

    .line 536
    :goto_1f
    if-nez v14, :cond_52

    .line 537
    invoke-virtual {v1, v8, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    .line 540
    :cond_52
    if-eqz v10, :cond_53

    if-eq v8, v13, :cond_53

    .line 541
    iput-object v2, v10, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 544
    :cond_53
    if-eqz v6, :cond_54

    .line 545
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkMapResolve(Ljava/util/Map;Ljava/lang/Object;)V

    .line 548
    :cond_54
    invoke-interface {v11, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    if-eqz v0, :cond_55

    .line 552
    invoke-virtual {v1, v13, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 555
    :cond_55
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_56

    .line 556
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 558
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 559
    nop

    .line 606
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 559
    return-object v2

    .line 560
    :cond_56
    :try_start_e
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_58

    .line 561
    if-eqz v0, :cond_57

    .line 562
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->popContext()V

    const/16 v10, 0xd

    const/16 v13, 0x10

    goto :goto_20

    .line 564
    :cond_57
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 566
    const/16 v10, 0xd

    const/16 v13, 0x10

    goto :goto_20

    .line 568
    :cond_58
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v0

    .end local v0    # "parentIsArray":Z
    .local v21, "parentIsArray":Z
    const-string v0, "syntax error, "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->tokenName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v12    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local p1    # "object":Ljava/util/Map;
    .end local p2    # "fieldName":Ljava/lang/Object;
    throw v3

    .line 571
    .end local v8    # "input":Ljava/util/Map;
    .end local v10    # "ctxLocal":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v13    # "obj":Ljava/lang/Object;
    .end local v14    # "objParsed":Z
    .end local v21    # "parentIsArray":Z
    .restart local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v12    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local p1    # "object":Ljava/util/Map;
    .restart local p2    # "fieldName":Ljava/lang/Object;
    :cond_59
    move-object/from16 v20, v4

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 572
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v3

    .line 574
    .local v3, "value":Ljava/lang/Object;
    invoke-interface {v11, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    const/16 v10, 0xd

    if-ne v4, v10, :cond_5a

    .line 577
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 578
    nop

    .line 606
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 578
    return-object v2

    .line 579
    :cond_5a
    :try_start_f
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    const/16 v13, 0x10

    if-ne v4, v13, :cond_5b

    .line 580
    nop

    .line 206
    .end local v3    # "value":Ljava/lang/Object;
    .end local v6    # "key":Ljava/lang/Object;
    .end local v7    # "ch":C
    .end local v15    # "isObjectKey":Z
    :goto_20
    move-object/from16 v3, p2

    move-object/from16 v4, v20

    const/4 v6, 0x0

    goto/16 :goto_b

    .line 582
    .restart local v3    # "value":Ljava/lang/Object;
    .restart local v6    # "key":Ljava/lang/Object;
    .restart local v7    # "ch":C
    .restart local v15    # "isObjectKey":Z
    :cond_5b
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v12    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local p1    # "object":Ljava/util/Map;
    .end local p2    # "fieldName":Ljava/lang/Object;
    throw v4

    .line 257
    .end local v3    # "value":Ljava/lang/Object;
    .end local v6    # "key":Ljava/lang/Object;
    .end local v7    # "ch":C
    .restart local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v12    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .local v13, "ch":C
    .restart local p1    # "object":Ljava/util/Map;
    .restart local p2    # "fieldName":Ljava/lang/Object;
    :cond_5c
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v12    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local p1    # "object":Ljava/util/Map;
    .end local p2    # "fieldName":Ljava/lang/Object;
    throw v0

    .line 255
    .restart local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v12    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local p1    # "object":Ljava/util/Map;
    .restart local p2    # "fieldName":Ljava/lang/Object;
    :cond_5d
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v12    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local p1    # "object":Ljava/util/Map;
    .end local p2    # "fieldName":Ljava/lang/Object;
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 606
    .end local v9    # "setContextFlag":Z
    .end local v11    # "map":Ljava/util/Map;
    .end local v13    # "ch":C
    .end local v15    # "isObjectKey":Z
    .restart local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v12    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local p1    # "object":Ljava/util/Map;
    .restart local p2    # "fieldName":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    move-object v9, v12

    goto :goto_21

    .end local v12    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .local v9, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    :catchall_1
    move-exception v0

    :goto_21
    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    throw v0
.end method

.method public parseObject(Ljava/lang/Object;)V
    .locals 13
    .param p1, "object"    # Ljava/lang/Object;

    .line 873
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 874
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 875
    .local v1, "beanDeser":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v2

    .line 876
    .local v2, "deserizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v3, v2, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v3, :cond_0

    .line 877
    move-object v1, v2

    check-cast v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .line 880
    :cond_0
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v4, 0xc

    const/16 v5, 0x10

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    if-ne v3, v5, :cond_1

    goto :goto_0

    .line 881
    :cond_1
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syntax error, expect {, actual "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->tokenName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 886
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-interface {v3, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v3

    .line 888
    .local v3, "key":Ljava/lang/String;
    const/16 v4, 0xd

    if-nez v3, :cond_4

    .line 889
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    if-ne v6, v4, :cond_3

    .line 890
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v4, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 891
    nop

    .line 951
    .end local v3    # "key":Ljava/lang/String;
    return-void

    .line 893
    .restart local v3    # "key":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    if-ne v6, v5, :cond_4

    .line 894
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v7, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v6, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 895
    goto :goto_0

    .line 900
    :cond_4
    const/4 v6, 0x0

    .line 901
    .local v6, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-eqz v1, :cond_5

    .line 902
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v6

    .line 905
    :cond_5
    if-nez v6, :cond_7

    .line 906
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v8, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v7, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 910
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon()V

    .line 911
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    .line 913
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    if-ne v7, v4, :cond_2

    .line 914
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 915
    return-void

    .line 907
    :cond_6
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setter not found, class "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", property "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 920
    :cond_7
    iget-object v7, v6, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 921
    .local v7, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v8, v6, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v8, v8, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 923
    .local v8, "fieldType":Ljava/lang/reflect/Type;
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-ne v7, v9, :cond_8

    .line 924
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 925
    sget-object v9, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {v9, p0, v8, v11}, Lcom/alibaba/fastjson/serializer/IntegerCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .local v9, "fieldValue":Ljava/lang/Object;
    goto :goto_1

    .line 926
    .end local v9    # "fieldValue":Ljava/lang/Object;
    :cond_8
    const-class v9, Ljava/lang/String;

    if-ne v7, v9, :cond_9

    .line 927
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v10, 0x4

    invoke-interface {v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 928
    invoke-static {p0}, Lcom/alibaba/fastjson/serializer/StringCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/lang/Object;

    move-result-object v9

    .restart local v9    # "fieldValue":Ljava/lang/Object;
    goto :goto_1

    .line 929
    .end local v9    # "fieldValue":Ljava/lang/Object;
    :cond_9
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v7, v9, :cond_a

    .line 930
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 931
    sget-object v9, Lcom/alibaba/fastjson/serializer/LongCodec;->instance:Lcom/alibaba/fastjson/serializer/LongCodec;

    invoke-virtual {v9, p0, v8, v11}, Lcom/alibaba/fastjson/serializer/LongCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .restart local v9    # "fieldValue":Ljava/lang/Object;
    goto :goto_1

    .line 933
    .end local v9    # "fieldValue":Ljava/lang/Object;
    :cond_a
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v9, v7, v8}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v9

    .line 935
    .local v9, "fieldValueDeserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v12

    invoke-interface {v10, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 936
    invoke-interface {v9, p0, v8, v11}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v9, v10

    .line 939
    .local v9, "fieldValue":Ljava/lang/Object;
    :goto_1
    invoke-virtual {v6, p1, v9}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 942
    .end local v7    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "fieldType":Ljava/lang/reflect/Type;
    .end local v9    # "fieldValue":Ljava/lang/Object;
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    if-ne v7, v5, :cond_b

    .line 943
    goto/16 :goto_0

    .line 946
    :cond_b
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    if-ne v7, v4, :cond_c

    .line 947
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v4, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 948
    return-void

    .line 950
    .end local v3    # "key":Ljava/lang/String;
    .end local v6    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_c
    goto/16 :goto_0
.end method

.method public popContext()V
    .locals 3

    .line 1268
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1269
    return-void

    .line 1272
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1274
    iget v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    if-gtz v0, :cond_1

    .line 1275
    return-void

    .line 1278
    :cond_1
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    .line 1279
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 1280
    return-void
.end method

.method public resolveReference(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "ref"    # Ljava/lang/String;

    .line 1484
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1485
    return-object v1

    .line 1487
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    iget v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    if-ge v0, v3, :cond_2

    .line 1488
    aget-object v2, v2, v0

    .line 1489
    .local v2, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/ParseContext;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1490
    iget-object v1, v2, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    return-object v1

    .line 1487
    .end local v2    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1493
    .end local v0    # "i":I
    :cond_2
    return-object v1
.end method

.method public setConfig(Lcom/alibaba/fastjson/parser/ParserConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 616
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 617
    return-void
.end method

.method public setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    .locals 2
    .param p1, "parent"    # Lcom/alibaba/fastjson/parser/ParseContext;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;

    .line 1291
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1292
    const/4 v0, 0x0

    return-object v0

    .line 1295
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-direct {v0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/ParseContext;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1296
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 1298
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    return-object v0
.end method

.method public setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/Object;

    .line 1283
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1284
    const/4 v0, 0x0

    return-object v0

    .line 1287
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-virtual {p0, v0, p1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v0

    return-object v0
.end method

.method public setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
    .locals 2
    .param p1, "context"    # Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1261
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1262
    return-void

    .line 1264
    :cond_0
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1265
    return-void
.end method

.method public setDateFomrat(Ljava/text/DateFormat;)V
    .locals 0
    .param p1, "dateFormat"    # Ljava/text/DateFormat;

    .line 121
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    .line 122
    return-void
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .locals 1
    .param p1, "dateFormat"    # Ljava/lang/String;

    .line 116
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormatPattern:Ljava/lang/String;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    .line 118
    return-void
.end method

.method public setFieldTypeResolver(Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;)V
    .locals 0
    .param p1, "fieldTypeResolver"    # Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    .line 1257
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->fieldTypeResolver:Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    .line 1258
    return-void
.end method

.method public setResolveStatus(I)V
    .locals 0
    .param p1, "resolveStatus"    # I

    .line 1048
    iput p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 1049
    return-void
.end method

.method public throwException(I)V
    .locals 3
    .param p1, "token"    # I

    .line 1465
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error, expect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", actual "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1466
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
