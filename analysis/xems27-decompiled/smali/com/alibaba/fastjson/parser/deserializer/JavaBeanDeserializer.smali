.class public Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
.super Ljava/lang/Object;
.source "JavaBeanDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# instance fields
.field private final alterNameFieldDeserializers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;",
            ">;"
        }
    .end annotation
.end field

.field public final beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

.field protected final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

.field private transient hashArray:[J

.field private transient hashArrayMapping:[S

.field private transient smartMatchHashArray:[J

.field private transient smartMatchHashArrayMapping:[S

.field protected final sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;)V
    .locals 10
    .param p1, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p2, "beanInfo"    # Lcom/alibaba/fastjson/util/JavaBeanInfo;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iget-object v0, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->clazz:Ljava/lang/Class;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    .line 54
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "alterNameFieldDeserializers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;>;"
    iget-object v1, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v1, v1

    new-array v1, v1, [Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 58
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v2, v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 59
    iget-object v3, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v3, v3, v1

    .line 60
    .local v3, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-virtual {p1, p1, p2, v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->createFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v4

    .line 62
    .local v4, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aput-object v4, v5, v1

    .line 64
    iget-object v5, v3, Lcom/alibaba/fastjson/util/FieldInfo;->alternateNames:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 65
    .local v8, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 66
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    move-object v0, v9

    .line 68
    :cond_0
    invoke-interface {v0, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .end local v8    # "name":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 58
    .end local v3    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v4    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_2
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->alterNameFieldDeserializers:Ljava/util/Map;

    .line 73
    iget-object v1, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v1, v1

    new-array v1, v1, [Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 74
    const/4 v1, 0x0

    .restart local v1    # "i":I
    iget-object v2, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v2, v2

    .restart local v2    # "size":I
    :goto_2
    if-ge v1, v2, :cond_3

    .line 75
    iget-object v3, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v3, v3, v1

    .line 76
    .restart local v3    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v4, v3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v4

    .line 77
    .restart local v4    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aput-object v4, v5, v1

    .line 74
    .end local v3    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v4    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 79
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_3
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;)V
    .locals 0
    .param p1, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 43
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 3
    .param p1, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 47
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/ParserConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    iget-boolean v1, p1, Lcom/alibaba/fastjson/parser/ParserConfig;->fieldBased:Z

    iget-boolean v2, p1, Lcom/alibaba/fastjson/parser/ParserConfig;->compatibleWithJavaBean:Z

    .line 48
    invoke-static {p2, p3, v0, v1, v2}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;ZZ)Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-result-object v0

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;)V

    .line 50
    return-void
.end method

.method static isSetFlag(I[I)Z
    .locals 6
    .param p0, "i"    # I
    .param p1, "setFlags"    # [I

    .line 157
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 158
    return v0

    .line 161
    :cond_0
    div-int/lit8 v1, p0, 0x20

    .line 162
    .local v1, "flagIndex":I
    rem-int/lit8 v2, p0, 0x20

    .line 163
    .local v2, "bitIndex":I
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 164
    aget v3, p1, v1

    const/4 v4, 0x1

    shl-int v5, v4, v2

    and-int/2addr v3, v5

    if-eqz v3, :cond_1

    .line 165
    return v4

    .line 169
    :cond_1
    return v0
.end method

.method protected static parseArray(Ljava/util/Collection;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)V
    .locals 10
    .param p0, "collection"    # Ljava/util/Collection;
    .param p1, "deser"    # Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .param p2, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p3, "type"    # Ljava/lang/reflect/Type;
    .param p4, "fieldName"    # Ljava/lang/Object;

    .line 1298
    iget-object v0, p2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    check-cast v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    .line 1299
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v1

    .line 1300
    .local v1, "token":I
    const/16 v2, 0x10

    const/16 v3, 0x8

    if-ne v1, v3, :cond_0

    .line 1301
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 1302
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v1

    .line 1303
    return-void

    .line 1306
    :cond_0
    const/16 v3, 0xe

    if-eq v1, v3, :cond_1

    .line 1307
    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->throwException(I)V

    .line 1309
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCurrent()C

    move-result v4

    .line 1310
    .local v4, "ch":C
    const/16 v5, 0x5b

    if-ne v4, v5, :cond_2

    .line 1311
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1312
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->setToken(I)V

    goto :goto_0

    .line 1314
    :cond_2
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 1317
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v6

    const/16 v7, 0xf

    if-ne v6, v7, :cond_3

    .line 1318
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 1319
    return-void

    .line 1322
    :cond_3
    const/4 v6, 0x0

    .line 1324
    .local v6, "index":I
    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {p1, p2, p3, v8}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 1325
    .local v8, "item":Ljava/lang/Object;
    invoke-interface {p0, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1326
    add-int/lit8 v6, v6, 0x1

    .line 1327
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v9

    if-ne v9, v2, :cond_5

    .line 1328
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCurrent()C

    move-result v4

    .line 1329
    if-ne v4, v5, :cond_4

    .line 1330
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1331
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->setToken(I)V

    goto :goto_2

    .line 1333
    :cond_4
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 1338
    .end local v8    # "item":Ljava/lang/Object;
    :goto_2
    goto :goto_1

    .line 1340
    :cond_5
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v1

    .line 1341
    if-eq v1, v7, :cond_6

    .line 1342
    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->throwException(I)V

    .line 1345
    :cond_6
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCurrent()C

    move-result v3

    .line 1346
    .end local v4    # "ch":C
    .local v3, "ch":C
    const/16 v4, 0x2c

    if-ne v3, v4, :cond_7

    .line 1347
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1348
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->setToken(I)V

    goto :goto_3

    .line 1350
    :cond_7
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 1353
    :goto_3
    return-void
.end method


# virtual methods
.method protected check(Lcom/alibaba/fastjson/parser/JSONLexer;I)V
    .locals 2
    .param p1, "lexer"    # Lcom/alibaba/fastjson/parser/JSONLexer;
    .param p2, "token"    # I

    .line 346
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 349
    return-void

    .line 347
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 16
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;

    .line 173
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "create instance error, class "

    instance-of v0, v3, Ljava/lang/Class;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    move-object v0, v3

    check-cast v0, Ljava/lang/Class;

    .line 176
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 177
    .local v4, "loader":Ljava/lang/ClassLoader;
    new-instance v7, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v7}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 178
    .local v7, "obj":Lcom/alibaba/fastjson/JSONObject;
    new-array v5, v5, [Ljava/lang/Class;

    aput-object v0, v5, v6

    invoke-static {v4, v5, v7}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v5

    .line 179
    .local v5, "proxy":Ljava/lang/Object;
    return-object v5

    .line 183
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "loader":Ljava/lang/ClassLoader;
    .end local v5    # "proxy":Ljava/lang/Object;
    .end local v7    # "obj":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    const/4 v7, 0x0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 184
    return-object v7

    .line 187
    :cond_1
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructorParameterSize:I

    if-lez v0, :cond_2

    .line 188
    return-object v7

    .line 193
    :cond_2
    :try_start_0
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 194
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    iget-object v8, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget v8, v8, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructorParameterSize:I

    if-nez v8, :cond_4

    .line 195
    if-eqz v0, :cond_3

    .line 196
    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .local v5, "object":Ljava/lang/Object;
    goto/16 :goto_2

    .line 198
    .end local v5    # "object":Ljava/lang/Object;
    :cond_3
    iget-object v5, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v5, v5, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .restart local v5    # "object":Ljava/lang/Object;
    goto/16 :goto_2

    .line 201
    .end local v5    # "object":Ljava/lang/Object;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v7
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 202
    .local v7, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    const-string v8, "can\'t create non-static inner class instance."

    if-eqz v7, :cond_d

    :try_start_1
    iget-object v9, v7, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v9, :cond_d

    .line 207
    instance-of v9, v3, Ljava/lang/Class;

    if-eqz v9, :cond_c

    .line 208
    move-object v9, v3

    check-cast v9, Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    .line 213
    .local v9, "typeName":Ljava/lang/String;
    const/16 v10, 0x24

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    .line 214
    .local v10, "lastIndex":I
    invoke-virtual {v9, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 216
    .local v11, "parentClassName":Ljava/lang/String;
    iget-object v12, v7, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 217
    .local v12, "ctxObj":Ljava/lang/Object;
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    .line 219
    .local v13, "parentName":Ljava/lang/String;
    const/4 v14, 0x0

    .line 220
    .local v14, "param":Ljava/lang/Object;
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 221
    iget-object v15, v7, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 222
    .local v15, "parentContext":Lcom/alibaba/fastjson/parser/ParseContext;
    if-eqz v15, :cond_7

    iget-object v6, v15, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v6, :cond_7

    const-string v6, "java.util.ArrayList"

    .line 224
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "java.util.List"

    .line 225
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "java.util.Collection"

    .line 226
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "java.util.Map"

    .line 227
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "java.util.HashMap"

    .line 228
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 229
    :cond_5
    iget-object v6, v15, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 230
    .end local v13    # "parentName":Ljava/lang/String;
    .local v6, "parentName":Ljava/lang/String;
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 231
    iget-object v13, v15, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object v14, v13

    move-object v13, v6

    goto :goto_0

    .line 230
    :cond_6
    move-object v13, v6

    .line 234
    .end local v6    # "parentName":Ljava/lang/String;
    .end local v15    # "parentContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v13    # "parentName":Ljava/lang/String;
    :cond_7
    :goto_0
    goto :goto_1

    .line 235
    :cond_8
    move-object v14, v12

    .line 238
    :goto_1
    if-eqz v14, :cond_b

    .line 242
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v14, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 248
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v7    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v9    # "typeName":Ljava/lang/String;
    .end local v10    # "lastIndex":I
    .end local v11    # "parentClassName":Ljava/lang/String;
    .end local v12    # "ctxObj":Ljava/lang/Object;
    .end local v13    # "parentName":Ljava/lang/String;
    .end local v14    # "param":Ljava/lang/Object;
    .restart local v5    # "object":Ljava/lang/Object;
    :goto_2
    nop

    .line 250
    if-eqz v2, :cond_a

    iget-object v0, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v7, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    .line 251
    invoke-interface {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 252
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v7, v0

    :goto_3
    if-ge v6, v7, :cond_a

    aget-object v8, v0, v6

    .line 253
    .local v8, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v9, v8, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    if-ne v9, v10, :cond_9

    .line 255
    :try_start_2
    const-string v9, ""

    invoke-virtual {v8, v5, v9}, Lcom/alibaba/fastjson/util/FieldInfo;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 258
    goto :goto_4

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 252
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_9
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 263
    :cond_a
    return-object v5

    .line 239
    .end local v5    # "object":Ljava/lang/Object;
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v7    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v9    # "typeName":Ljava/lang/String;
    .restart local v10    # "lastIndex":I
    .restart local v11    # "parentClassName":Ljava/lang/String;
    .restart local v12    # "ctxObj":Ljava/lang/Object;
    .restart local v13    # "parentName":Ljava/lang/String;
    .restart local v14    # "param":Ljava/lang/Object;
    :cond_b
    :try_start_3
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v5, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .end local p2    # "type":Ljava/lang/reflect/Type;
    throw v5

    .line 210
    .end local v9    # "typeName":Ljava/lang/String;
    .end local v10    # "lastIndex":I
    .end local v11    # "parentClassName":Ljava/lang/String;
    .end local v12    # "ctxObj":Ljava/lang/Object;
    .end local v13    # "parentName":Ljava/lang/String;
    .end local v14    # "param":Ljava/lang/Object;
    .restart local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .restart local p2    # "type":Ljava/lang/reflect/Type;
    :cond_c
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v5, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .end local p2    # "type":Ljava/lang/reflect/Type;
    throw v5

    .line 203
    .restart local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .restart local p2    # "type":Ljava/lang/reflect/Type;
    :cond_d
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v5, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .end local p2    # "type":Ljava/lang/reflect/Type;
    throw v5
    :try_end_3
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 246
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v7    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .restart local p2    # "type":Ljava/lang/reflect/Type;
    :catch_1
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 244
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 245
    .local v0, "e":Lcom/alibaba/fastjson/JSONException;
    throw v0
.end method

.method public createInstance(Ljava/util/Map;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 13
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1143
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 1145
    .local v0, "object":Ljava/lang/Object;
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_3

    .line 1146
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {p0, v2, v1}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 1148
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1149
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1150
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 1152
    .local v5, "value":Ljava/lang/Object;
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatch(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v6

    .line 1153
    .local v6, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-nez v6, :cond_0

    .line 1154
    goto :goto_0

    .line 1157
    :cond_0
    iget-object v7, v6, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1158
    .local v7, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v8, v7, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 1159
    .local v8, "paramType":Ljava/lang/reflect/Type;
    invoke-static {v5, v8, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v5

    .line 1161
    invoke-virtual {v6, v0, v5}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1162
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;
    .end local v6    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v7    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v8    # "paramType":Ljava/lang/reflect/Type;
    goto :goto_0

    .line 1164
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2

    .line 1167
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildMethod:Ljava/lang/reflect/Method;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1170
    .local v1, "builtObj":Ljava/lang/Object;
    nop

    .line 1172
    return-object v1

    .line 1168
    .end local v1    # "builtObj":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 1169
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "build object error"

    invoke-direct {v2, v3, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1175
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v0

    .line 1179
    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1180
    .local v1, "fieldInfoList":[Lcom/alibaba/fastjson/util/FieldInfo;
    array-length v4, v1

    .line 1181
    .local v4, "size":I
    new-array v5, v4, [Ljava/lang/Object;

    .line 1182
    .local v5, "params":[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 1183
    .local v6, "missFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v4, :cond_e

    .line 1184
    aget-object v8, v1, v7

    .line 1185
    .local v8, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v9, v8, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 1187
    .local v9, "param":Ljava/lang/Object;
    if-nez v9, :cond_d

    .line 1188
    iget-object v10, v8, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 1189
    .local v10, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_4

    .line 1190
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_2

    .line 1191
    :cond_4
    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_5

    .line 1192
    const-wide/16 v11, 0x0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    goto :goto_2

    .line 1193
    :cond_5
    sget-object v11, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_6

    .line 1194
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    goto :goto_2

    .line 1195
    :cond_6
    sget-object v11, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_7

    .line 1196
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    goto :goto_2

    .line 1197
    :cond_7
    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_8

    .line 1198
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    goto :goto_2

    .line 1199
    :cond_8
    sget-object v11, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_9

    .line 1200
    const-wide/16 v11, 0x0

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto :goto_2

    .line 1201
    :cond_9
    sget-object v11, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_a

    .line 1202
    const/16 v11, 0x30

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    goto :goto_2

    .line 1203
    :cond_a
    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_b

    .line 1204
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 1206
    :cond_b
    :goto_2
    if-nez v6, :cond_c

    .line 1207
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    move-object v6, v11

    .line 1209
    :cond_c
    iget-object v11, v8, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v6, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    .end local v10    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_d
    aput-object v9, v5, v7

    .line 1183
    .end local v8    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v9    # "param":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1214
    .end local v7    # "i":I
    :cond_e
    if-eqz v6, :cond_10

    .line 1215
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1216
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1217
    .local v8, "key":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 1219
    .local v9, "value":Ljava/lang/Object;
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatch(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v10

    .line 1220
    .local v10, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-eqz v10, :cond_f

    .line 1221
    iget-object v11, v10, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v11, v11, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 1222
    .local v11, "index":Ljava/lang/Integer;
    if-eqz v11, :cond_f

    .line 1223
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aput-object v9, v5, v12

    .line 1226
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/Object;
    .end local v10    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v11    # "index":Ljava/lang/Integer;
    :cond_f
    goto :goto_3

    .line 1229
    :cond_10
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v3, :cond_11

    .line 1231
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v2

    .line 1235
    goto :goto_4

    .line 1232
    :catch_1
    move-exception v2

    .line 1233
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "create instance error, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v8, v8, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 1234
    invoke-virtual {v8}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1236
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_11
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_12

    .line 1238
    :try_start_2
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v2

    .line 1241
    goto :goto_4

    .line 1239
    :catch_2
    move-exception v2

    .line 1240
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "create factory method error, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v8, v8, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1244
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_12
    :goto_4
    return-object v0
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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

    .line 267
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 7
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "features"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "I)TT;"
        }
    .end annotation

    .line 271
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I[I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I[I)Ljava/lang/Object;
    .locals 31
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "object"    # Ljava/lang/Object;
    .param p5, "features"    # I
    .param p6, "setFlags"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "I[I)TT;"
        }
    .end annotation

    .line 362
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v1, p4

    const-class v0, Lcom/alibaba/fastjson/JSON;

    if-eq v10, v0, :cond_98

    const-class v0, Lcom/alibaba/fastjson/JSONObject;

    if-ne v10, v0, :cond_0

    goto/16 :goto_2a

    .line 366
    :cond_0
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object v12, v0

    check-cast v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    .line 367
    .local v12, "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v13

    .line 369
    .local v13, "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v2

    .line 370
    .local v2, "token":I
    const/16 v0, 0x8

    const/4 v14, 0x0

    const/16 v15, 0x10

    if-ne v2, v0, :cond_1

    .line 371
    invoke-virtual {v12, v15}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 372
    return-object v14

    .line 375
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v0

    .line 376
    .local v0, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 377
    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object v7, v0

    goto :goto_0

    .line 379
    :cond_2
    move-object v7, v0

    .end local v0    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .local v7, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    :goto_0
    const/4 v3, 0x0

    .line 382
    .local v3, "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    const/4 v4, 0x0

    .line 384
    .local v4, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v0, 0xd

    if-ne v2, v0, :cond_5

    .line 385
    :try_start_0
    invoke-virtual {v12, v15}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 386
    if-nez v1, :cond_3

    .line 387
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p4    # "object":Ljava/lang/Object;
    .local v0, "object":Ljava/lang/Object;
    goto :goto_1

    .line 386
    .end local v0    # "object":Ljava/lang/Object;
    .restart local p4    # "object":Ljava/lang/Object;
    :cond_3
    move-object v0, v1

    .line 389
    .end local p4    # "object":Ljava/lang/Object;
    .restart local v0    # "object":Ljava/lang/Object;
    :goto_1
    nop

    .line 898
    if-eqz v3, :cond_4

    .line 899
    iput-object v0, v3, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 901
    :cond_4
    invoke-virtual {v9, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 389
    return-object v0

    .line 898
    .end local v0    # "object":Ljava/lang/Object;
    .end local v4    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local p4    # "object":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    move/from16 v28, v2

    move-object v10, v7

    move-object/from16 v2, p6

    goto/16 :goto_29

    .line 392
    .restart local v4    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    const/16 v5, 0xe

    if-ne v2, v5, :cond_9

    .line 393
    :try_start_1
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    .line 394
    .local v0, "mask":I
    iget-object v6, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget v6, v6, Lcom/alibaba/fastjson/util/JavaBeanInfo;->parserFeatures:I

    and-int/2addr v6, v0

    if-nez v6, :cond_7

    sget-object v6, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    .line 395
    invoke-virtual {v12, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v6

    if-nez v6, :cond_7

    and-int v6, p5, v0

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v6, 0x1

    .line 398
    .local v6, "isSupportArrayToBean":Z
    :goto_3
    if-eqz v6, :cond_9

    .line 399
    invoke-virtual/range {p0 .. p4}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialzeArrayMapping(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 898
    if-eqz v3, :cond_8

    .line 899
    iput-object v1, v3, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 901
    :cond_8
    invoke-virtual {v9, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 399
    return-object v5

    .line 403
    .end local v0    # "mask":I
    .end local v6    # "isSupportArrayToBean":Z
    :cond_9
    const/16 v0, 0xc

    const/4 v6, 0x4

    if-eq v2, v0, :cond_17

    if-eq v2, v15, :cond_17

    .line 404
    :try_start_2
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isBlankInput()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_b

    .line 405
    nop

    .line 898
    if-eqz v3, :cond_a

    .line 899
    iput-object v1, v3, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 901
    :cond_a
    invoke-virtual {v9, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 405
    return-object v14

    .line 408
    :cond_b
    if-ne v2, v6, :cond_12

    .line 409
    :try_start_3
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 410
    .local v6, "strVal":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    .line 411
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 412
    nop

    .line 898
    if-eqz v3, :cond_c

    .line 899
    iput-object v1, v3, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 901
    :cond_c
    invoke-virtual {v9, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 412
    return-object v14

    .line 415
    :cond_d
    :try_start_4
    iget-object v0, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    if-eqz v0, :cond_11

    .line 416
    iget-object v0, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->seeAlso()[Ljava/lang/Class;

    move-result-object v15

    array-length v14, v15

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v14, :cond_10

    aget-object v0, v15, v5

    move-object/from16 v16, v0

    .line 417
    .local v16, "seeAlsoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Enum;

    move-object/from16 v20, v4

    move-object/from16 v4, v16

    .end local v16    # "seeAlsoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v4, "seeAlsoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v20, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_f

    .line 419
    :try_start_5
    invoke-static {v4, v6}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 420
    .local v0, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    nop

    .line 898
    if-eqz v3, :cond_e

    .line 899
    iput-object v1, v3, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 901
    :cond_e
    invoke-virtual {v9, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 420
    return-object v0

    .line 421
    .end local v0    # "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :catch_0
    move-exception v0

    .line 416
    .end local v4    # "seeAlsoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_f
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v4, v20

    goto :goto_4

    .end local v20    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v4, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_10
    move-object/from16 v20, v4

    .end local v4    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v20    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_5

    .line 415
    .end local v20    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v4    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_11
    move-object/from16 v20, v4

    .end local v4    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v20    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_5

    .line 427
    .end local v6    # "strVal":Ljava/lang/String;
    .end local v20    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v4    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_12
    move-object/from16 v20, v4

    .end local v4    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v20    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x5

    if-ne v2, v0, :cond_13

    .line 428
    :try_start_6
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCalendar()Ljava/util/Calendar;

    goto :goto_6

    .line 427
    :cond_13
    :goto_5
    nop

    .line 431
    :goto_6
    const/16 v4, 0xe

    if-ne v2, v4, :cond_15

    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCurrent()C

    move-result v0

    const/16 v4, 0x5d

    if-ne v0, v4, :cond_15

    .line 432
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 433
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 434
    nop

    .line 898
    if-eqz v3, :cond_14

    .line 899
    iput-object v1, v3, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 901
    :cond_14
    invoke-virtual {v9, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 434
    const/4 v4, 0x0

    return-object v4

    .line 437
    :cond_15
    :try_start_7
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "syntax error, expect {, actual "

    .line 438
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 439
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->tokenName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ", pos "

    .line 440
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 441
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 443
    .local v0, "buf":Ljava/lang/StringBuffer;
    instance-of v4, v11, Ljava/lang/String;

    if-eqz v4, :cond_16

    .line 444
    const-string v4, ", fieldName "

    .line 445
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 446
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 449
    :cond_16
    const-string v4, ", fastjson-version "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "1.2.44"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 451
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v2    # "token":I
    .end local v3    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v7    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .end local v13    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .end local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .end local p2    # "type":Ljava/lang/reflect/Type;
    .end local p3    # "fieldName":Ljava/lang/Object;
    .end local p4    # "object":Ljava/lang/Object;
    .end local p5    # "features":I
    .end local p6    # "setFlags":[I
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 403
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v20    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2    # "token":I
    .restart local v3    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v4    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v7    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .restart local v13    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .restart local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .restart local p2    # "type":Ljava/lang/reflect/Type;
    .restart local p3    # "fieldName":Ljava/lang/Object;
    .restart local p4    # "object":Ljava/lang/Object;
    .restart local p5    # "features":I
    .restart local p6    # "setFlags":[I
    :cond_17
    move-object/from16 v20, v4

    .line 454
    .end local v4    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v20    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_8
    iget v0, v9, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_f

    const/4 v4, 0x2

    if-ne v0, v4, :cond_18

    .line 455
    const/4 v0, 0x0

    :try_start_9
    iput v0, v9, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_7

    .line 454
    :cond_18
    const/4 v0, 0x0

    .line 458
    :goto_7
    :try_start_a
    iget-object v4, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeKey:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_f

    move-object v14, v4

    .line 459
    .local v14, "typeKey":Ljava/lang/String;
    const/4 v4, 0x0

    move v5, v4

    move-object v4, v3

    move v3, v2

    move-object/from16 v2, p6

    .line 460
    .end local p4    # "object":Ljava/lang/Object;
    .end local p6    # "setFlags":[I
    .local v1, "object":Ljava/lang/Object;
    .local v2, "setFlags":[I
    .local v3, "token":I
    .local v4, "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .local v5, "fieldIndex":I
    :goto_8
    const/16 v18, 0x0

    .line 461
    .local v18, "key":Ljava/lang/String;
    const/16 v19, 0x0

    .line 462
    .local v19, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    const/16 v21, 0x0

    .line 463
    .local v21, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    const/16 v22, 0x0

    .line 464
    .local v22, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v23, 0x0

    .line 465
    .local v23, "feildAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :try_start_b
    iget-object v0, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v0, v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_e

    if-ge v5, v0, :cond_19

    .line 466
    :try_start_c
    iget-object v0, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v0, v0, v5

    .line 467
    .end local v19    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .local v0, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 468
    .end local v21    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .local v6, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v15, v6, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    move-object/from16 v22, v15

    .line 469
    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v15
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-object/from16 v23, v15

    move-object v15, v6

    move-object/from16 v6, v22

    goto :goto_9

    .line 898
    .end local v0    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v5    # "fieldIndex":I
    .end local v6    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v14    # "typeKey":Ljava/lang/String;
    .end local v18    # "key":Ljava/lang/String;
    .end local v20    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v22    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v23    # "feildAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :catchall_1
    move-exception v0

    move/from16 v28, v3

    move-object v3, v4

    move-object v10, v7

    goto/16 :goto_29

    .line 465
    .restart local v5    # "fieldIndex":I
    .restart local v14    # "typeKey":Ljava/lang/String;
    .restart local v18    # "key":Ljava/lang/String;
    .restart local v19    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v20    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v21    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v22    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v23    # "feildAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_19
    move-object/from16 v0, v19

    move-object/from16 v15, v21

    move-object/from16 v6, v22

    .line 472
    .end local v19    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v21    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v22    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v0    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .local v6, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v15, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :goto_9
    const/16 v19, 0x0

    .line 473
    .local v19, "matchField":Z
    const/16 v21, 0x0

    .line 475
    .local v21, "valueParsed":Z
    const/16 v22, 0x0

    .line 476
    .local v22, "fieldValue":Ljava/lang/Object;
    if-eqz v0, :cond_48

    .line 477
    move/from16 p4, v3

    .end local v3    # "token":I
    .local p4, "token":I
    :try_start_d
    iget-object v3, v15, Lcom/alibaba/fastjson/util/FieldInfo;->name_chars:[C

    .line 478
    .local v3, "name_chars":[C
    move/from16 p6, v5

    .end local v5    # "fieldIndex":I
    .local p6, "fieldIndex":I
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, -0x2

    if-eq v6, v5, :cond_44

    const-class v5, Ljava/lang/Integer;

    if-ne v6, v5, :cond_1a

    goto/16 :goto_f

    .line 487
    :cond_1a
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v6, v5, :cond_41

    const-class v5, Ljava/lang/Long;

    if-ne v6, v5, :cond_1b

    goto/16 :goto_e

    .line 496
    :cond_1b
    const-class v5, Ljava/lang/String;

    if-ne v6, v5, :cond_1e

    .line 497
    invoke-virtual {v12, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldString([C)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v22, v5

    .line 499
    iget v5, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v5, :cond_1c

    .line 500
    const/16 v19, 0x1

    .line 501
    const/16 v21, 0x1

    move-object/from16 v10, v22

    goto/16 :goto_11

    .line 502
    :cond_1c
    iget v5, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-ne v5, v10, :cond_1d

    .line 503
    goto/16 :goto_10

    .line 502
    :cond_1d
    move-object/from16 v10, v22

    goto/16 :goto_11

    .line 505
    :cond_1e
    const-class v5, Ljava/util/Date;

    if-ne v6, v5, :cond_21

    iget-object v5, v15, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    if-nez v5, :cond_21

    .line 506
    invoke-virtual {v12, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldDate([C)Ljava/util/Date;

    move-result-object v5

    move-object/from16 v22, v5

    .line 508
    iget v5, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v5, :cond_1f

    .line 509
    const/16 v19, 0x1

    .line 510
    const/16 v21, 0x1

    move-object/from16 v10, v22

    goto/16 :goto_11

    .line 511
    :cond_1f
    iget v5, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-ne v5, v10, :cond_20

    .line 512
    goto/16 :goto_10

    .line 511
    :cond_20
    move-object/from16 v10, v22

    goto/16 :goto_11

    .line 514
    :cond_21
    const-class v5, Ljava/math/BigDecimal;

    if-ne v6, v5, :cond_24

    .line 515
    invoke-virtual {v12, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldDecimal([C)Ljava/math/BigDecimal;

    move-result-object v5

    move-object/from16 v22, v5

    .line 517
    iget v5, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v5, :cond_22

    .line 518
    const/16 v19, 0x1

    .line 519
    const/16 v21, 0x1

    move-object/from16 v10, v22

    goto/16 :goto_11

    .line 520
    :cond_22
    iget v5, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-ne v5, v10, :cond_23

    .line 521
    goto/16 :goto_10

    .line 520
    :cond_23
    move-object/from16 v10, v22

    goto/16 :goto_11

    .line 523
    :cond_24
    const-class v5, Ljava/math/BigInteger;

    if-ne v6, v5, :cond_27

    .line 524
    invoke-virtual {v12, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldBigInteger([C)Ljava/math/BigInteger;

    move-result-object v5

    move-object/from16 v22, v5

    .line 526
    iget v5, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v5, :cond_25

    .line 527
    const/16 v19, 0x1

    .line 528
    const/16 v21, 0x1

    move-object/from16 v10, v22

    goto/16 :goto_11

    .line 529
    :cond_25
    iget v5, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-ne v5, v10, :cond_26

    .line 530
    goto/16 :goto_10

    .line 529
    :cond_26
    move-object/from16 v10, v22

    goto/16 :goto_11

    .line 532
    :cond_27
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v6, v5, :cond_3e

    const-class v5, Ljava/lang/Boolean;

    if-ne v6, v5, :cond_28

    goto/16 :goto_d

    .line 541
    :cond_28
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v6, v5, :cond_3b

    const-class v5, Ljava/lang/Float;

    if-ne v6, v5, :cond_29

    goto/16 :goto_c

    .line 550
    :cond_29
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v6, v5, :cond_38

    const-class v5, Ljava/lang/Double;

    if-ne v6, v5, :cond_2a

    goto/16 :goto_b

    .line 559
    :cond_2a
    invoke-virtual {v6}, Ljava/lang/Class;->isEnum()Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 560
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v5

    instance-of v5, v5, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    if-eqz v5, :cond_2e

    if-eqz v23, :cond_2b

    .line 561
    invoke-interface/range {v23 .. v23}, Lcom/alibaba/fastjson/annotation/JSONField;->deserializeUsing()Ljava/lang/Class;

    move-result-object v5

    const-class v10, Ljava/lang/Void;

    if-ne v5, v10, :cond_2e

    .line 563
    :cond_2b
    instance-of v5, v0, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    if-eqz v5, :cond_49

    .line 564
    move-object v5, v0

    check-cast v5, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    iget-object v5, v5, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->fieldValueDeserilizer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 565
    .local v5, "fieldValueDeserilizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    invoke-virtual {v8, v12, v3, v5}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->scanEnum(Lcom/alibaba/fastjson/parser/JSONLexerBase;[CLcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)Ljava/lang/Enum;

    move-result-object v10

    move-object/from16 v22, v10

    .line 567
    iget v10, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v10, :cond_2c

    .line 568
    const/4 v10, 0x1

    .line 569
    .end local v19    # "matchField":Z
    .local v10, "matchField":Z
    const/16 v19, 0x1

    move/from16 v21, v19

    move/from16 v19, v10

    .end local v21    # "valueParsed":Z
    .local v19, "valueParsed":Z
    goto :goto_a

    .line 570
    .end local v10    # "matchField":Z
    .local v19, "matchField":Z
    .restart local v21    # "valueParsed":Z
    :cond_2c
    iget v10, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-object/from16 v27, v5

    const/4 v5, -0x2

    .end local v5    # "fieldValueDeserilizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .local v27, "fieldValueDeserilizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    if-ne v10, v5, :cond_2d

    .line 571
    goto/16 :goto_10

    .line 573
    .end local v27    # "fieldValueDeserilizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_2d
    :goto_a
    move-object/from16 v10, v22

    goto/16 :goto_11

    .line 574
    :cond_2e
    const-class v5, [I

    if-ne v6, v5, :cond_31

    .line 575
    invoke-virtual {v12, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldIntArray([C)[I

    move-result-object v5

    move-object/from16 v22, v5

    .line 577
    iget v5, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v5, :cond_2f

    .line 578
    const/16 v19, 0x1

    .line 579
    const/16 v21, 0x1

    move-object/from16 v10, v22

    goto/16 :goto_11

    .line 580
    :cond_2f
    iget v5, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v10, -0x2

    if-ne v5, v10, :cond_30

    .line 581
    goto/16 :goto_10

    .line 580
    :cond_30
    move-object/from16 v10, v22

    goto/16 :goto_11

    .line 583
    :cond_31
    const-class v5, [F

    if-ne v6, v5, :cond_34

    .line 584
    invoke-virtual {v12, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldFloatArray([C)[F

    move-result-object v5

    move-object/from16 v22, v5

    .line 586
    iget v5, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v5, :cond_32

    .line 587
    const/16 v19, 0x1

    .line 588
    const/16 v21, 0x1

    move-object/from16 v10, v22

    goto/16 :goto_11

    .line 589
    :cond_32
    iget v5, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v10, -0x2

    if-ne v5, v10, :cond_33

    .line 590
    goto/16 :goto_10

    .line 589
    :cond_33
    move-object/from16 v10, v22

    goto/16 :goto_11

    .line 592
    :cond_34
    const-class v5, [[F

    if-ne v6, v5, :cond_37

    .line 593
    invoke-virtual {v12, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldFloatArray2([C)[[F

    move-result-object v5

    move-object/from16 v22, v5

    .line 595
    iget v5, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v5, :cond_35

    .line 596
    const/16 v19, 0x1

    .line 597
    const/16 v21, 0x1

    move-object/from16 v10, v22

    goto/16 :goto_11

    .line 598
    :cond_35
    iget v5, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v10, -0x2

    if-ne v5, v10, :cond_36

    .line 599
    goto/16 :goto_10

    .line 598
    :cond_36
    move-object/from16 v10, v22

    goto/16 :goto_11

    .line 601
    :cond_37
    invoke-virtual {v12, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchField([C)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 602
    const/16 v19, 0x1

    move-object/from16 v10, v22

    goto/16 :goto_11

    .line 551
    :cond_38
    :goto_b
    invoke-virtual {v12, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldDouble([C)D

    move-result-wide v27

    invoke-static/range {v27 .. v28}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object/from16 v22, v5

    .line 553
    iget v5, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v5, :cond_39

    .line 554
    const/16 v19, 0x1

    .line 555
    const/16 v21, 0x1

    move-object/from16 v10, v22

    goto/16 :goto_11

    .line 556
    :cond_39
    iget v5, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v10, -0x2

    if-ne v5, v10, :cond_3a

    .line 557
    goto/16 :goto_10

    .line 556
    :cond_3a
    move-object/from16 v10, v22

    goto/16 :goto_11

    .line 542
    :cond_3b
    :goto_c
    invoke-virtual {v12, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldFloat([C)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object/from16 v22, v5

    .line 544
    iget v5, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v5, :cond_3c

    .line 545
    const/16 v19, 0x1

    .line 546
    const/16 v21, 0x1

    move-object/from16 v10, v22

    goto/16 :goto_11

    .line 547
    :cond_3c
    iget v5, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v10, -0x2

    if-ne v5, v10, :cond_3d

    .line 548
    goto :goto_10

    .line 547
    :cond_3d
    move-object/from16 v10, v22

    goto/16 :goto_11

    .line 533
    :cond_3e
    :goto_d
    invoke-virtual {v12, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldBoolean([C)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v22, v5

    .line 535
    iget v5, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v5, :cond_3f

    .line 536
    const/16 v19, 0x1

    .line 537
    const/16 v21, 0x1

    move-object/from16 v10, v22

    goto/16 :goto_11

    .line 538
    :cond_3f
    iget v5, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v10, -0x2

    if-ne v5, v10, :cond_40

    .line 539
    goto :goto_10

    .line 538
    :cond_40
    move-object/from16 v10, v22

    goto/16 :goto_11

    .line 488
    :cond_41
    :goto_e
    invoke-virtual {v12, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldLong([C)J

    move-result-wide v27

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v22, v5

    .line 490
    iget v5, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v5, :cond_42

    .line 491
    const/16 v19, 0x1

    .line 492
    const/16 v21, 0x1

    move-object/from16 v10, v22

    goto :goto_11

    .line 493
    :cond_42
    iget v5, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v10, -0x2

    if-ne v5, v10, :cond_43

    .line 494
    goto :goto_10

    .line 493
    :cond_43
    move-object/from16 v10, v22

    goto :goto_11

    .line 479
    :cond_44
    :goto_f
    invoke-virtual {v12, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldInt([C)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v22, v5

    .line 481
    iget v5, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v5, :cond_45

    .line 482
    const/16 v19, 0x1

    .line 483
    const/16 v21, 0x1

    move-object/from16 v10, v22

    goto :goto_11

    .line 484
    :cond_45
    iget v5, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v10, -0x2

    if-ne v5, v10, :cond_47

    .line 485
    nop

    .line 459
    .end local v0    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v3    # "name_chars":[C
    .end local v6    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v18    # "key":Ljava/lang/String;
    .end local v19    # "matchField":Z
    .end local v21    # "valueParsed":Z
    .end local v22    # "fieldValue":Ljava/lang/Object;
    .end local v23    # "feildAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_46
    :goto_10
    move/from16 v28, p4

    move/from16 v29, p6

    move-object v0, v1

    move-object v15, v2

    move-object v10, v7

    const/4 v1, 0x0

    const/16 v2, 0x10

    const/16 v3, 0xd

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v25, 0x4

    goto/16 :goto_28

    .line 484
    .restart local v0    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v3    # "name_chars":[C
    .restart local v6    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v15    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v18    # "key":Ljava/lang/String;
    .restart local v19    # "matchField":Z
    .restart local v21    # "valueParsed":Z
    .restart local v22    # "fieldValue":Ljava/lang/Object;
    .restart local v23    # "feildAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_47
    move-object/from16 v10, v22

    goto :goto_11

    .line 898
    .end local v0    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v3    # "name_chars":[C
    .end local v6    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "typeKey":Ljava/lang/String;
    .end local v15    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v18    # "key":Ljava/lang/String;
    .end local v19    # "matchField":Z
    .end local v20    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v21    # "valueParsed":Z
    .end local v22    # "fieldValue":Ljava/lang/Object;
    .end local v23    # "feildAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local p6    # "fieldIndex":I
    :catchall_2
    move-exception v0

    move/from16 v28, p4

    move-object v3, v4

    move-object v10, v7

    goto/16 :goto_29

    .line 476
    .end local p4    # "token":I
    .restart local v0    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .local v3, "token":I
    .local v5, "fieldIndex":I
    .restart local v6    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v14    # "typeKey":Ljava/lang/String;
    .restart local v15    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v18    # "key":Ljava/lang/String;
    .restart local v19    # "matchField":Z
    .restart local v20    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v21    # "valueParsed":Z
    .restart local v22    # "fieldValue":Ljava/lang/Object;
    .restart local v23    # "feildAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_48
    move/from16 p4, v3

    move/from16 p6, v5

    .line 608
    .end local v3    # "token":I
    .end local v5    # "fieldIndex":I
    .restart local p4    # "token":I
    .restart local p6    # "fieldIndex":I
    :cond_49
    move-object/from16 v10, v22

    .end local v22    # "fieldValue":Ljava/lang/Object;
    .local v10, "fieldValue":Ljava/lang/Object;
    :goto_11
    if-nez v19, :cond_63

    .line 609
    iget-object v3, v9, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-virtual {v12, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v3

    .line 611
    .end local v18    # "key":Ljava/lang/String;
    .local v3, "key":Ljava/lang/String;
    if-nez v3, :cond_4b

    .line 612
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 613
    .end local p4    # "token":I
    .local v5, "token":I
    move-object/from16 v22, v6

    const/16 v6, 0xd

    .end local v6    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v22, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v5, v6, :cond_4a

    .line 614
    const/16 v6, 0x10

    :try_start_e
    invoke-virtual {v12, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 615
    move-object v3, v4

    move/from16 v28, v5

    move-object v10, v7

    move-object/from16 v4, v20

    const/16 p4, 0x0

    goto/16 :goto_1e

    .line 898
    .end local v0    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v3    # "key":Ljava/lang/String;
    .end local v10    # "fieldValue":Ljava/lang/Object;
    .end local v14    # "typeKey":Ljava/lang/String;
    .end local v15    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v19    # "matchField":Z
    .end local v20    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v21    # "valueParsed":Z
    .end local v22    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v23    # "feildAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local p6    # "fieldIndex":I
    :catchall_3
    move-exception v0

    move-object v3, v4

    move/from16 v28, v5

    move-object v10, v7

    goto/16 :goto_29

    .line 617
    .restart local v0    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v10    # "fieldValue":Ljava/lang/Object;
    .restart local v14    # "typeKey":Ljava/lang/String;
    .restart local v15    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v19    # "matchField":Z
    .restart local v20    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v21    # "valueParsed":Z
    .restart local v22    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v23    # "feildAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local p6    # "fieldIndex":I
    :cond_4a
    const/16 v6, 0x10

    if-ne v5, v6, :cond_4c

    .line 618
    sget-object v6, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v12, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    if-eqz v6, :cond_4c

    .line 619
    move/from16 v29, p6

    move-object v0, v1

    move-object v15, v2

    move/from16 v28, v5

    move-object v10, v7

    const/4 v1, 0x0

    const/16 v2, 0x10

    const/16 v3, 0xd

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v25, 0x4

    goto/16 :goto_28

    .line 611
    .end local v5    # "token":I
    .end local v22    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p4    # "token":I
    :cond_4b
    move-object/from16 v22, v6

    .end local v6    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v22    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move/from16 v5, p4

    .line 624
    .end local p4    # "token":I
    .restart local v5    # "token":I
    :cond_4c
    :try_start_f
    const-string v6, "$ref"
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    if-ne v6, v3, :cond_57

    if-eqz v7, :cond_57

    .line 625
    const/4 v6, 0x4

    :try_start_10
    invoke-virtual {v12, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextTokenWithColon(I)V

    .line 626
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v18

    move/from16 v5, v18

    .line 627
    if-ne v5, v6, :cond_56

    .line 628
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v6

    .line 629
    .local v6, "ref":Ljava/lang/String;
    move-object/from16 v26, v10

    .end local v10    # "fieldValue":Ljava/lang/Object;
    .local v26, "fieldValue":Ljava/lang/Object;
    const-string v10, "@"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4d

    .line 630
    iget-object v10, v7, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object v1, v10

    move-object/from16 v27, v15

    goto :goto_15

    .line 631
    :cond_4d
    const-string v10, ".."

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4f

    .line 632
    iget-object v10, v7, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 633
    .local v10, "parentContext":Lcom/alibaba/fastjson/parser/ParseContext;
    move-object/from16 v27, v15

    .end local v15    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .local v27, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v15, v10, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v15, :cond_4e

    .line 634
    iget-object v15, v10, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object v1, v15

    goto :goto_12

    .line 636
    :cond_4e
    new-instance v15, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v15, v10, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 637
    const/4 v15, 0x1

    iput v15, v9, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 639
    .end local v10    # "parentContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :goto_12
    goto :goto_15

    .end local v27    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v15    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_4f
    move-object/from16 v27, v15

    .end local v15    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v27    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    const-string v10, "$"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_52

    .line 640
    move-object v10, v7

    .line 641
    .local v10, "rootContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :goto_13
    iget-object v15, v10, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v15, :cond_50

    .line 642
    iget-object v15, v10, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object v10, v15

    goto :goto_13

    .line 645
    :cond_50
    iget-object v15, v10, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v15, :cond_51

    .line 646
    iget-object v15, v10, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object v1, v15

    goto :goto_14

    .line 648
    :cond_51
    new-instance v15, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v15, v10, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 649
    const/4 v15, 0x1

    iput v15, v9, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 651
    .end local v10    # "rootContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :goto_14
    goto :goto_15

    .line 652
    :cond_52
    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 653
    .local v10, "refObj":Ljava/lang/Object;
    if-eqz v10, :cond_53

    .line 654
    move-object v1, v10

    goto :goto_15

    .line 656
    :cond_53
    new-instance v15, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v15, v7, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 657
    const/4 v15, 0x1

    iput v15, v9, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 660
    .end local v6    # "ref":Ljava/lang/String;
    .end local v10    # "refObj":Ljava/lang/Object;
    :goto_15
    nop

    .line 664
    const/16 v6, 0xd

    invoke-virtual {v12, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 665
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v10

    if-ne v10, v6, :cond_55

    .line 668
    const/16 v6, 0x10

    invoke-virtual {v12, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 670
    invoke-virtual {v9, v7, v1, v11}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 672
    nop

    .line 898
    if-eqz v4, :cond_54

    .line 899
    iput-object v1, v4, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 901
    :cond_54
    invoke-virtual {v9, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 672
    return-object v1

    .line 666
    :cond_55
    :try_start_11
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    const-string v10, "illegal ref"

    invoke-direct {v6, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v1    # "object":Ljava/lang/Object;
    .end local v2    # "setFlags":[I
    .end local v4    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v5    # "token":I
    .end local v7    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .end local v13    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .end local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .end local p2    # "type":Ljava/lang/reflect/Type;
    .end local p3    # "fieldName":Ljava/lang/Object;
    .end local p5    # "features":I
    throw v6

    .line 661
    .end local v26    # "fieldValue":Ljava/lang/Object;
    .end local v27    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v1    # "object":Ljava/lang/Object;
    .restart local v2    # "setFlags":[I
    .restart local v4    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v5    # "token":I
    .restart local v7    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .local v10, "fieldValue":Ljava/lang/Object;
    .restart local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .restart local v13    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .restart local v15    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .restart local p2    # "type":Ljava/lang/reflect/Type;
    .restart local p3    # "fieldName":Ljava/lang/Object;
    .restart local p5    # "features":I
    :cond_56
    move-object/from16 v26, v10

    move-object/from16 v27, v15

    .end local v10    # "fieldValue":Ljava/lang/Object;
    .end local v15    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v26    # "fieldValue":Ljava/lang/Object;
    .restart local v27    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "illegal ref, "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v1    # "object":Ljava/lang/Object;
    .end local v2    # "setFlags":[I
    .end local v4    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v5    # "token":I
    .end local v7    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .end local v13    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .end local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .end local p2    # "type":Ljava/lang/reflect/Type;
    .end local p3    # "fieldName":Ljava/lang/Object;
    .end local p5    # "features":I
    throw v6

    .line 624
    .end local v26    # "fieldValue":Ljava/lang/Object;
    .end local v27    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v1    # "object":Ljava/lang/Object;
    .restart local v2    # "setFlags":[I
    .restart local v4    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v5    # "token":I
    .restart local v7    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v10    # "fieldValue":Ljava/lang/Object;
    .restart local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .restart local v13    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .restart local v15    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .restart local p2    # "type":Ljava/lang/reflect/Type;
    .restart local p3    # "fieldName":Ljava/lang/Object;
    .restart local p5    # "features":I
    :cond_57
    move-object/from16 v26, v10

    move-object/from16 v27, v15

    .line 675
    .end local v10    # "fieldValue":Ljava/lang/Object;
    .end local v15    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v26    # "fieldValue":Ljava/lang/Object;
    .restart local v27    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    if-eqz v14, :cond_58

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    if-nez v6, :cond_59

    :cond_58
    :try_start_12
    sget-object v6, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    if-ne v6, v3, :cond_62

    .line 677
    :cond_59
    const/4 v6, 0x4

    invoke-virtual {v12, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextTokenWithColon(I)V

    .line 678
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v10

    if-ne v10, v6, :cond_61

    .line 679
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v6

    .line 680
    .local v6, "typeName":Ljava/lang/String;
    const/16 v10, 0x10

    invoke-virtual {v12, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 682
    iget-object v10, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v10, v10, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5f

    sget-object v10, Lcom/alibaba/fastjson/parser/Feature;->IgnoreAutoType:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v10

    if-eqz v10, :cond_5a

    move-object/from16 v18, v3

    move/from16 v28, v5

    goto :goto_18

    .line 691
    :cond_5a
    iget-object v10, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    invoke-virtual {v8, v13, v10, v6}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-result-object v10

    .line 692
    .local v10, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    const/4 v15, 0x0

    .line 694
    .local v15, "userType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v10, :cond_5b

    .line 695
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v16

    move-object/from16 p4, v16

    .line 696
    .local p4, "expectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v18, v3

    .end local v3    # "key":Ljava/lang/String;
    .restart local v18    # "key":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getFeatures()I

    move-result v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    move/from16 v28, v5

    move-object/from16 v5, p4

    .end local p4    # "expectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v5, "expectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v28, "token":I
    :try_start_13
    invoke-virtual {v13, v6, v5, v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v3

    move-object v15, v3

    .line 697
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v3

    move-object v10, v3

    goto :goto_16

    .line 694
    .end local v18    # "key":Ljava/lang/String;
    .end local v28    # "token":I
    .restart local v3    # "key":Ljava/lang/String;
    .local v5, "token":I
    :cond_5b
    move-object/from16 v18, v3

    move/from16 v28, v5

    .line 700
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "token":I
    .restart local v18    # "key":Ljava/lang/String;
    .restart local v28    # "token":I
    :goto_16
    invoke-interface {v10, v9, v15, v11}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 701
    .local v3, "typedObject":Ljava/lang/Object;
    instance-of v5, v10, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v5, :cond_5d

    .line 702
    move-object v5, v10

    check-cast v5, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .line 703
    .local v5, "javaBeanDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    if-eqz v14, :cond_5c

    .line 704
    invoke-virtual {v5, v14}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v16

    move-object/from16 p4, v16

    .line 705
    .local p4, "typeKeyFieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    move-object/from16 v16, v5

    move-object/from16 v5, p4

    .end local p4    # "typeKeyFieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .local v5, "typeKeyFieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .local v16, "javaBeanDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    invoke-virtual {v5, v3, v6}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    goto :goto_17

    .line 703
    .end local v16    # "javaBeanDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    .local v5, "javaBeanDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    :cond_5c
    move-object/from16 v16, v5

    .line 708
    .end local v5    # "javaBeanDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    :cond_5d
    :goto_17
    nop

    .line 898
    if-eqz v4, :cond_5e

    .line 899
    iput-object v1, v4, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 901
    :cond_5e
    invoke-virtual {v9, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 708
    return-object v3

    .line 682
    .end local v10    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v15    # "userType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "key":Ljava/lang/String;
    .end local v28    # "token":I
    .local v3, "key":Ljava/lang/String;
    .local v5, "token":I
    :cond_5f
    move-object/from16 v18, v3

    move/from16 v28, v5

    .line 683
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "token":I
    .restart local v18    # "key":Ljava/lang/String;
    .restart local v28    # "token":I
    :goto_18
    :try_start_14
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v3

    const/16 v5, 0xd

    if-ne v3, v5, :cond_60

    .line 684
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 685
    move-object v3, v4

    move-object v10, v7

    move-object/from16 v4, v20

    const/16 p4, 0x0

    goto/16 :goto_1e

    .line 683
    :cond_60
    move/from16 v29, p6

    move-object v0, v1

    move-object v15, v2

    move-object v10, v7

    const/4 v1, 0x0

    const/16 v2, 0x10

    const/16 v3, 0xd

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v25, 0x4

    goto/16 :goto_28

    .line 710
    .end local v6    # "typeName":Ljava/lang/String;
    .end local v18    # "key":Ljava/lang/String;
    .end local v28    # "token":I
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v5    # "token":I
    :cond_61
    move-object/from16 v18, v3

    move/from16 v28, v5

    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "token":I
    .restart local v18    # "key":Ljava/lang/String;
    .restart local v28    # "token":I
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "syntax error"

    invoke-direct {v3, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v1    # "object":Ljava/lang/Object;
    .end local v2    # "setFlags":[I
    .end local v4    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v7    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .end local v13    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .end local v28    # "token":I
    .end local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .end local p2    # "type":Ljava/lang/reflect/Type;
    .end local p3    # "fieldName":Ljava/lang/Object;
    .end local p5    # "features":I
    throw v3

    .line 675
    .end local v18    # "key":Ljava/lang/String;
    .restart local v1    # "object":Ljava/lang/Object;
    .restart local v2    # "setFlags":[I
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v5    # "token":I
    .restart local v7    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .restart local v13    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .restart local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .restart local p2    # "type":Ljava/lang/reflect/Type;
    .restart local p3    # "fieldName":Ljava/lang/Object;
    .restart local p5    # "features":I
    :cond_62
    move-object/from16 v18, v3

    move/from16 v28, v5

    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "token":I
    .restart local v18    # "key":Ljava/lang/String;
    .restart local v28    # "token":I
    goto :goto_19

    .line 898
    .end local v0    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v14    # "typeKey":Ljava/lang/String;
    .end local v18    # "key":Ljava/lang/String;
    .end local v19    # "matchField":Z
    .end local v20    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v21    # "valueParsed":Z
    .end local v22    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v23    # "feildAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v26    # "fieldValue":Ljava/lang/Object;
    .end local v27    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v28    # "token":I
    .end local p6    # "fieldIndex":I
    .restart local v5    # "token":I
    :catchall_4
    move-exception v0

    move/from16 v28, v5

    move-object v3, v4

    move-object v10, v7

    .end local v5    # "token":I
    .restart local v28    # "token":I
    goto/16 :goto_29

    .line 608
    .end local v28    # "token":I
    .restart local v0    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .local v6, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v10, "fieldValue":Ljava/lang/Object;
    .restart local v14    # "typeKey":Ljava/lang/String;
    .local v15, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v18    # "key":Ljava/lang/String;
    .restart local v19    # "matchField":Z
    .restart local v20    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v21    # "valueParsed":Z
    .restart local v23    # "feildAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local p4, "token":I
    .restart local p6    # "fieldIndex":I
    :cond_63
    move-object/from16 v22, v6

    move-object/from16 v26, v10

    move-object/from16 v27, v15

    .end local v6    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "fieldValue":Ljava/lang/Object;
    .end local v15    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v22    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v26    # "fieldValue":Ljava/lang/Object;
    .restart local v27    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move/from16 v28, p4

    .line 715
    .end local p4    # "token":I
    .restart local v28    # "token":I
    :goto_19
    if-nez v1, :cond_66

    if-nez v20, :cond_66

    .line 716
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    .line 717
    if-nez v1, :cond_64

    .line 718
    new-instance v3, Ljava/util/HashMap;

    iget-object v5, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v5, v5

    invoke-direct {v3, v5}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v20, v3

    .line 720
    :cond_64
    invoke-virtual {v9, v7, v1, v11}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 721
    .end local v4    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .local v3, "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    if-nez v2, :cond_65

    .line 722
    :try_start_15
    iget-object v4, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v4, v4

    div-int/lit8 v4, v4, 0x20

    const/4 v5, 0x1

    add-int/2addr v4, v5

    new-array v4, v4, [I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    move-object v2, v4

    move-object v10, v1

    move-object v15, v2

    move-object/from16 v6, v20

    move-object/from16 v20, v3

    goto :goto_1a

    .line 898
    .end local v0    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v14    # "typeKey":Ljava/lang/String;
    .end local v18    # "key":Ljava/lang/String;
    .end local v19    # "matchField":Z
    .end local v20    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v21    # "valueParsed":Z
    .end local v22    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v23    # "feildAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v26    # "fieldValue":Ljava/lang/Object;
    .end local v27    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local p6    # "fieldIndex":I
    :catchall_5
    move-exception v0

    move-object v10, v7

    goto/16 :goto_29

    .line 721
    .restart local v0    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v14    # "typeKey":Ljava/lang/String;
    .restart local v18    # "key":Ljava/lang/String;
    .restart local v19    # "matchField":Z
    .restart local v20    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v21    # "valueParsed":Z
    .restart local v22    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v23    # "feildAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v26    # "fieldValue":Ljava/lang/Object;
    .restart local v27    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local p6    # "fieldIndex":I
    :cond_65
    move-object v10, v1

    move-object v15, v2

    move-object/from16 v6, v20

    move-object/from16 v20, v3

    goto :goto_1a

    .line 898
    .end local v0    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v3    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v14    # "typeKey":Ljava/lang/String;
    .end local v18    # "key":Ljava/lang/String;
    .end local v19    # "matchField":Z
    .end local v20    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v21    # "valueParsed":Z
    .end local v22    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v23    # "feildAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v26    # "fieldValue":Ljava/lang/Object;
    .end local v27    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local p6    # "fieldIndex":I
    .restart local v4    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :catchall_6
    move-exception v0

    move-object v3, v4

    move-object v10, v7

    goto/16 :goto_29

    .line 726
    .restart local v0    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v14    # "typeKey":Ljava/lang/String;
    .restart local v18    # "key":Ljava/lang/String;
    .restart local v19    # "matchField":Z
    .restart local v20    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v21    # "valueParsed":Z
    .restart local v22    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v23    # "feildAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v26    # "fieldValue":Ljava/lang/Object;
    .restart local v27    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local p6    # "fieldIndex":I
    :cond_66
    move-object v10, v1

    move-object v15, v2

    move-object/from16 v6, v20

    move-object/from16 v20, v4

    .end local v1    # "object":Ljava/lang/Object;
    .end local v2    # "setFlags":[I
    .end local v4    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .local v6, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v10, "object":Ljava/lang/Object;
    .local v15, "setFlags":[I
    .local v20, "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :goto_1a
    if-eqz v19, :cond_6d

    .line 727
    if-nez v21, :cond_67

    .line 728
    move-object/from16 v5, p2

    :try_start_16
    invoke-virtual {v0, v9, v10, v5, v6}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    move/from16 v29, p6

    move-object/from16 v24, v6

    move-object/from16 p6, v10

    const/16 p4, 0x0

    const/16 v25, 0x4

    move-object v10, v7

    move-object/from16 v30, v22

    move-object/from16 v22, v0

    move-object/from16 v0, v30

    goto/16 :goto_1c

    .line 898
    .end local v0    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v6    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v14    # "typeKey":Ljava/lang/String;
    .end local v18    # "key":Ljava/lang/String;
    .end local v19    # "matchField":Z
    .end local v21    # "valueParsed":Z
    .end local v22    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v23    # "feildAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v26    # "fieldValue":Ljava/lang/Object;
    .end local v27    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local p6    # "fieldIndex":I
    :catchall_7
    move-exception v0

    move-object v1, v10

    move-object v2, v15

    move-object/from16 v3, v20

    move-object v10, v7

    goto/16 :goto_29

    .line 730
    .restart local v0    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v6    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v14    # "typeKey":Ljava/lang/String;
    .restart local v18    # "key":Ljava/lang/String;
    .restart local v19    # "matchField":Z
    .restart local v21    # "valueParsed":Z
    .restart local v22    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v23    # "feildAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v26    # "fieldValue":Ljava/lang/Object;
    .restart local v27    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local p6    # "fieldIndex":I
    :cond_67
    move-object/from16 v5, p2

    if-nez v10, :cond_68

    .line 731
    move-object/from16 v4, v27

    .end local v27    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .local v4, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v1, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v3, v26

    .end local v26    # "fieldValue":Ljava/lang/Object;
    .local v3, "fieldValue":Ljava/lang/Object;
    invoke-interface {v6, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v22

    goto :goto_1b

    .line 732
    .end local v3    # "fieldValue":Ljava/lang/Object;
    .end local v4    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v26    # "fieldValue":Ljava/lang/Object;
    .restart local v27    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_68
    move-object/from16 v3, v26

    move-object/from16 v4, v27

    .end local v26    # "fieldValue":Ljava/lang/Object;
    .end local v27    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v3    # "fieldValue":Ljava/lang/Object;
    .restart local v4    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    if-nez v3, :cond_69

    .line 733
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v2, v22

    .end local v22    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v2, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v2, v1, :cond_6a

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v2, v1, :cond_6a

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v2, v1, :cond_6a

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v2, v1, :cond_6a

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v2, v1, :cond_6a

    .line 739
    invoke-virtual {v0, v10, v3}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1b

    .line 742
    .end local v2    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v22    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_69
    move-object/from16 v2, v22

    .end local v22    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, v10, v3}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 745
    :cond_6a
    :goto_1b
    if-eqz v15, :cond_6b

    .line 746
    div-int/lit8 v1, p6, 0x20

    .line 747
    .local v1, "flagIndex":I
    rem-int/lit8 v22, p6, 0x20

    .line 748
    .local v22, "bitIndex":I
    aget v26, v15, v1

    const/16 v17, 0x1

    shr-int v27, v17, v22

    or-int v26, v26, v27

    aput v26, v15, v1

    .line 751
    .end local v1    # "flagIndex":I
    .end local v22    # "bitIndex":I
    :cond_6b
    iget v1, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    move-object/from16 v22, v0

    const/4 v0, 0x4

    .end local v0    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .local v22, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-ne v1, v0, :cond_6c

    .line 752
    move-object/from16 v24, v6

    move-object/from16 p6, v10

    const/16 p4, 0x0

    move-object v10, v7

    goto/16 :goto_1d

    .line 751
    :cond_6c
    move/from16 v29, p6

    move-object v0, v2

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v24, v6

    move-object/from16 p6, v10

    const/16 p4, 0x0

    const/16 v25, 0x4

    move-object v10, v7

    goto :goto_1c

    .line 756
    .end local v2    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "fieldValue":Ljava/lang/Object;
    .end local v4    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v0    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .local v22, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v26    # "fieldValue":Ljava/lang/Object;
    .restart local v27    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_6d
    move-object/from16 v5, p2

    move-object/from16 v2, v22

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    move-object/from16 v22, v0

    const/4 v0, 0x4

    .end local v0    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v26    # "fieldValue":Ljava/lang/Object;
    .end local v27    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v2    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "fieldValue":Ljava/lang/Object;
    .restart local v4    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .local v22, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    move-object/from16 v1, p0

    move-object/from16 v25, v2

    .end local v2    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v25, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v2, p1

    .end local v3    # "fieldValue":Ljava/lang/Object;
    .restart local v26    # "fieldValue":Ljava/lang/Object;
    move-object/from16 v3, v18

    .end local v4    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v27    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object v4, v10

    move/from16 v29, p6

    .end local p6    # "fieldIndex":I
    .local v29, "fieldIndex":I
    move-object/from16 v24, v6

    move-object/from16 v0, v25

    const/16 p4, 0x0

    const/16 v25, 0x4

    .end local v6    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v25    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v0, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v24, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 p6, v10

    move-object v10, v7

    .end local v7    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .local v10, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .local p6, "object":Ljava/lang/Object;
    move-object v7, v15

    :try_start_17
    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;[I)Z

    move-result v1

    .line 757
    .local v1, "match":Z
    if-nez v1, :cond_6f

    .line 758
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_6e

    .line 759
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 760
    goto :goto_1d

    .line 758
    :cond_6e
    const/4 v1, 0x0

    const/16 v2, 0x10

    const/16 v3, 0xd

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto/16 :goto_27

    .line 764
    :cond_6f
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v2

    const/16 v3, 0x11

    if-eq v2, v3, :cond_96

    .line 769
    .end local v1    # "match":Z
    :goto_1c
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_70

    .line 770
    const/4 v1, 0x0

    const/16 v3, 0xd

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto/16 :goto_27

    .line 773
    :cond_70
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v1

    const/16 v3, 0xd

    if-ne v1, v3, :cond_94

    .line 774
    invoke-virtual {v12, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_d

    .line 775
    nop

    .line 783
    .end local v0    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "key":Ljava/lang/String;
    .end local v19    # "matchField":Z
    .end local v21    # "valueParsed":Z
    .end local v22    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v23    # "feildAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v26    # "fieldValue":Ljava/lang/Object;
    .end local v27    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v29    # "fieldIndex":I
    :goto_1d
    move-object/from16 v1, p6

    move-object v2, v15

    move-object/from16 v3, v20

    move-object/from16 v4, v24

    .end local v15    # "setFlags":[I
    .end local v20    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v24    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local p6    # "object":Ljava/lang/Object;
    .local v1, "object":Ljava/lang/Object;
    .local v2, "setFlags":[I
    .local v3, "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .local v4, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_1e
    if-nez v1, :cond_90

    .line 784
    if-nez v4, :cond_73

    .line 785
    :try_start_18
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .line 786
    if-nez v3, :cond_71

    .line 787
    invoke-virtual {v9, v10, v1, v11}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    move-object v3, v0

    .line 789
    :cond_71
    nop

    .line 898
    if-eqz v3, :cond_72

    .line 899
    iput-object v1, v3, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 901
    :cond_72
    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 789
    return-object v1

    .line 898
    .end local v4    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v14    # "typeKey":Ljava/lang/String;
    :catchall_8
    move-exception v0

    goto/16 :goto_29

    .line 792
    .restart local v4    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v14    # "typeKey":Ljava/lang/String;
    :cond_73
    :try_start_19
    iget-object v0, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    move-object v5, v0

    .line 794
    .local v5, "paramNames":[Ljava/lang/String;
    const-string v0, ""

    const-wide/16 v16, 0x0

    if-eqz v5, :cond_7f

    .line 795
    :try_start_1a
    array-length v6, v5

    new-array v6, v6, [Ljava/lang/Object;

    .line 796
    .local v6, "params":[Ljava/lang/Object;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1f
    array-length v15, v5

    if-ge v7, v15, :cond_7e

    .line 797
    aget-object v15, v5, v7

    .line 799
    .local v15, "paramName":Ljava/lang/String;
    invoke-interface {v4, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    .line 800
    .local v18, "param":Ljava/lang/Object;
    if-nez v18, :cond_7c

    .line 801
    move-object/from16 v21, v1

    .end local v1    # "object":Ljava/lang/Object;
    .local v21, "object":Ljava/lang/Object;
    :try_start_1b
    iget-object v1, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

    aget-object v1, v1, v7
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    .line 802
    .local v1, "fieldType":Ljava/lang/reflect/Type;
    move-object/from16 v22, v2

    .end local v2    # "setFlags":[I
    .local v22, "setFlags":[I
    :try_start_1c
    iget-object v2, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v2, v2, v7

    .line 803
    .local v2, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    sget-object v11, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v1, v11, :cond_74

    .line 804
    invoke-static/range {p4 .. p4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    move-object/from16 v18, v11

    goto/16 :goto_20

    .line 805
    :cond_74
    sget-object v11, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v1, v11, :cond_75

    .line 806
    invoke-static/range {p4 .. p4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v11

    move-object/from16 v18, v11

    goto :goto_20

    .line 807
    :cond_75
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v11, :cond_76

    .line 808
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v18, v11

    goto :goto_20

    .line 809
    :cond_76
    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v11, :cond_77

    .line 810
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v18, v11

    goto :goto_20

    .line 811
    :cond_77
    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, v11, :cond_78

    .line 812
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v18, v23

    goto :goto_20

    .line 813
    :cond_78
    sget-object v11, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v1, v11, :cond_79

    .line 814
    const-wide/16 v19, 0x0

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    move-object/from16 v18, v11

    goto :goto_20

    .line 815
    :cond_79
    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v11, :cond_7a

    .line 816
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v18, v11

    goto :goto_20

    .line 817
    :cond_7a
    const-class v11, Ljava/lang/String;

    if-ne v1, v11, :cond_7b

    iget v11, v2, Lcom/alibaba/fastjson/util/FieldInfo;->parserFeatures:I

    move-object/from16 v23, v1

    .end local v1    # "fieldType":Ljava/lang/reflect/Type;
    .local v23, "fieldType":Ljava/lang/reflect/Type;
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v1, v1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v1, v11

    if-eqz v1, :cond_7d

    .line 819
    move-object/from16 v18, v0

    goto :goto_20

    .line 817
    .end local v23    # "fieldType":Ljava/lang/reflect/Type;
    .restart local v1    # "fieldType":Ljava/lang/reflect/Type;
    :cond_7b
    move-object/from16 v23, v1

    .end local v1    # "fieldType":Ljava/lang/reflect/Type;
    .restart local v23    # "fieldType":Ljava/lang/reflect/Type;
    goto :goto_20

    .line 898
    .end local v4    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "paramNames":[Ljava/lang/String;
    .end local v6    # "params":[Ljava/lang/Object;
    .end local v7    # "i":I
    .end local v14    # "typeKey":Ljava/lang/String;
    .end local v15    # "paramName":Ljava/lang/String;
    .end local v18    # "param":Ljava/lang/Object;
    .end local v22    # "setFlags":[I
    .end local v23    # "fieldType":Ljava/lang/reflect/Type;
    .local v2, "setFlags":[I
    :catchall_9
    move-exception v0

    move-object/from16 v22, v2

    move-object/from16 v1, v21

    .end local v2    # "setFlags":[I
    .restart local v22    # "setFlags":[I
    goto/16 :goto_29

    .line 800
    .end local v21    # "object":Ljava/lang/Object;
    .end local v22    # "setFlags":[I
    .local v1, "object":Ljava/lang/Object;
    .restart local v2    # "setFlags":[I
    .restart local v4    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v5    # "paramNames":[Ljava/lang/String;
    .restart local v6    # "params":[Ljava/lang/Object;
    .restart local v7    # "i":I
    .restart local v14    # "typeKey":Ljava/lang/String;
    .restart local v15    # "paramName":Ljava/lang/String;
    .restart local v18    # "param":Ljava/lang/Object;
    :cond_7c
    move-object/from16 v21, v1

    move-object/from16 v22, v2

    .line 822
    .end local v1    # "object":Ljava/lang/Object;
    .end local v2    # "setFlags":[I
    .restart local v21    # "object":Ljava/lang/Object;
    .restart local v22    # "setFlags":[I
    :cond_7d
    :goto_20
    aput-object v18, v6, v7

    .line 796
    .end local v15    # "paramName":Ljava/lang/String;
    .end local v18    # "param":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v11, p3

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    goto/16 :goto_1f

    .end local v21    # "object":Ljava/lang/Object;
    .end local v22    # "setFlags":[I
    .restart local v1    # "object":Ljava/lang/Object;
    .restart local v2    # "setFlags":[I
    :cond_7e
    move-object/from16 v21, v1

    move-object/from16 v22, v2

    .end local v1    # "object":Ljava/lang/Object;
    .end local v2    # "setFlags":[I
    .end local v7    # "i":I
    .restart local v21    # "object":Ljava/lang/Object;
    .restart local v22    # "setFlags":[I
    goto/16 :goto_23

    .line 825
    .end local v6    # "params":[Ljava/lang/Object;
    .end local v21    # "object":Ljava/lang/Object;
    .end local v22    # "setFlags":[I
    .restart local v1    # "object":Ljava/lang/Object;
    .restart local v2    # "setFlags":[I
    :cond_7f
    move-object/from16 v21, v1

    move-object/from16 v22, v2

    .end local v1    # "object":Ljava/lang/Object;
    .end local v2    # "setFlags":[I
    .restart local v21    # "object":Ljava/lang/Object;
    .restart local v22    # "setFlags":[I
    iget-object v1, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 826
    .local v1, "fieldInfoList":[Lcom/alibaba/fastjson/util/FieldInfo;
    array-length v2, v1

    .line 827
    .local v2, "size":I
    new-array v6, v2, [Ljava/lang/Object;

    .line 828
    .restart local v6    # "params":[Ljava/lang/Object;
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_21
    if-ge v7, v2, :cond_8a

    .line 829
    aget-object v11, v1, v7

    .line 830
    .local v11, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v15, v11, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v4, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 831
    .local v15, "param":Ljava/lang/Object;
    if-nez v15, :cond_88

    .line 832
    move-object/from16 v18, v1

    .end local v1    # "fieldInfoList":[Lcom/alibaba/fastjson/util/FieldInfo;
    .local v18, "fieldInfoList":[Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v1, v11, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 833
    .local v1, "fieldType":Ljava/lang/reflect/Type;
    move/from16 v23, v2

    .end local v2    # "size":I
    .local v23, "size":I
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_80

    .line 834
    invoke-static/range {p4 .. p4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    move-object v15, v2

    const-wide/16 v19, 0x0

    goto/16 :goto_22

    .line 835
    :cond_80
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_81

    .line 836
    invoke-static/range {p4 .. p4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    move-object v15, v2

    const-wide/16 v19, 0x0

    goto :goto_22

    .line 837
    :cond_81
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_82

    .line 838
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v15, v2

    const-wide/16 v19, 0x0

    goto :goto_22

    .line 839
    :cond_82
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_83

    .line 840
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v15, v2

    const-wide/16 v19, 0x0

    goto :goto_22

    .line 841
    :cond_83
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_84

    .line 842
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    move-object/from16 v15, v24

    const-wide/16 v19, 0x0

    goto :goto_22

    .line 843
    :cond_84
    const/4 v2, 0x0

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_85

    .line 844
    const-wide/16 v19, 0x0

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object v15, v2

    goto :goto_22

    .line 845
    :cond_85
    const-wide/16 v19, 0x0

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_86

    .line 846
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v15, v2

    goto :goto_22

    .line 847
    :cond_86
    const-class v2, Ljava/lang/String;

    if-ne v1, v2, :cond_87

    iget v2, v11, Lcom/alibaba/fastjson/util/FieldInfo;->parserFeatures:I

    move-object/from16 v24, v1

    .end local v1    # "fieldType":Ljava/lang/reflect/Type;
    .local v24, "fieldType":Ljava/lang/reflect/Type;
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v1, v1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_89

    .line 849
    move-object v15, v0

    goto :goto_22

    .line 847
    .end local v24    # "fieldType":Ljava/lang/reflect/Type;
    .restart local v1    # "fieldType":Ljava/lang/reflect/Type;
    :cond_87
    move-object/from16 v24, v1

    .end local v1    # "fieldType":Ljava/lang/reflect/Type;
    .restart local v24    # "fieldType":Ljava/lang/reflect/Type;
    goto :goto_22

    .line 831
    .end local v18    # "fieldInfoList":[Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v23    # "size":I
    .end local v24    # "fieldType":Ljava/lang/reflect/Type;
    .local v1, "fieldInfoList":[Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v2    # "size":I
    :cond_88
    move-object/from16 v18, v1

    move/from16 v23, v2

    const-wide/16 v19, 0x0

    .line 852
    .end local v1    # "fieldInfoList":[Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v2    # "size":I
    .restart local v18    # "fieldInfoList":[Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v23    # "size":I
    :cond_89
    :goto_22
    aput-object v15, v6, v7

    .line 828
    .end local v11    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v15    # "param":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, v18

    move/from16 v2, v23

    goto/16 :goto_21

    .end local v18    # "fieldInfoList":[Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v23    # "size":I
    .restart local v1    # "fieldInfoList":[Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v2    # "size":I
    :cond_8a
    move-object/from16 v18, v1

    move/from16 v23, v2

    .line 856
    .end local v1    # "fieldInfoList":[Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v2    # "size":I
    .end local v7    # "i":I
    :goto_23
    iget-object v0, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_a

    if-eqz v0, :cond_8d

    .line 858
    :try_start_1d
    iget-object v0, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_1
    .catchall {:try_start_1d .. :try_end_1d} :catchall_a

    move-object v1, v0

    .line 862
    .end local v21    # "object":Ljava/lang/Object;
    .local v1, "object":Ljava/lang/Object;
    nop

    .line 864
    if-eqz v5, :cond_8f

    .line 865
    :try_start_1e
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 866
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v7

    .line 867
    .local v7, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-eqz v7, :cond_8b

    .line 868
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v7, v1, v11}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_c

    .line 870
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_8b
    goto :goto_24

    :cond_8c
    goto :goto_25

    .line 859
    .end local v1    # "object":Ljava/lang/Object;
    .restart local v21    # "object":Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 860
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1f
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create instance error, "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 861
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v10    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .end local v13    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .end local v21    # "object":Ljava/lang/Object;
    .end local v22    # "setFlags":[I
    .end local v28    # "token":I
    .end local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .end local p2    # "type":Ljava/lang/reflect/Type;
    .end local p3    # "fieldName":Ljava/lang/Object;
    .end local p5    # "features":I
    throw v1

    .line 872
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v10    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .restart local v13    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .restart local v21    # "object":Ljava/lang/Object;
    .restart local v22    # "setFlags":[I
    .restart local v28    # "token":I
    .restart local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .restart local p2    # "type":Ljava/lang/reflect/Type;
    .restart local p3    # "fieldName":Ljava/lang/Object;
    .restart local p5    # "features":I
    :cond_8d
    iget-object v0, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_a

    if-eqz v0, :cond_8e

    .line 874
    :try_start_20
    iget-object v0, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_2
    .catchall {:try_start_20 .. :try_end_20} :catchall_a

    .line 877
    .end local v21    # "object":Ljava/lang/Object;
    .local v0, "object":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_25

    .line 875
    .end local v0    # "object":Ljava/lang/Object;
    .restart local v21    # "object":Ljava/lang/Object;
    :catch_2
    move-exception v0

    .line 876
    .local v0, "e":Ljava/lang/Exception;
    :try_start_21
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create factory method error, "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v10    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .end local v13    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .end local v21    # "object":Ljava/lang/Object;
    .end local v22    # "setFlags":[I
    .end local v28    # "token":I
    .end local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .end local p2    # "type":Ljava/lang/reflect/Type;
    .end local p3    # "fieldName":Ljava/lang/Object;
    .end local p5    # "features":I
    throw v1
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_a

    .line 872
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v10    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .restart local v13    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .restart local v21    # "object":Ljava/lang/Object;
    .restart local v22    # "setFlags":[I
    .restart local v28    # "token":I
    .restart local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .restart local p2    # "type":Ljava/lang/reflect/Type;
    .restart local p3    # "fieldName":Ljava/lang/Object;
    .restart local p5    # "features":I
    :cond_8e
    move-object/from16 v1, v21

    .line 880
    .end local v21    # "object":Ljava/lang/Object;
    .restart local v1    # "object":Ljava/lang/Object;
    :cond_8f
    :goto_25
    :try_start_22
    iput-object v1, v3, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_26

    .line 898
    .end local v1    # "object":Ljava/lang/Object;
    .end local v4    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "paramNames":[Ljava/lang/String;
    .end local v6    # "params":[Ljava/lang/Object;
    .end local v14    # "typeKey":Ljava/lang/String;
    .restart local v21    # "object":Ljava/lang/Object;
    :catchall_a
    move-exception v0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    goto/16 :goto_29

    .end local v21    # "object":Ljava/lang/Object;
    .end local v22    # "setFlags":[I
    .restart local v1    # "object":Ljava/lang/Object;
    .local v2, "setFlags":[I
    :catchall_b
    move-exception v0

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    .end local v1    # "object":Ljava/lang/Object;
    .end local v2    # "setFlags":[I
    .restart local v21    # "object":Ljava/lang/Object;
    .restart local v22    # "setFlags":[I
    goto/16 :goto_29

    .line 783
    .end local v21    # "object":Ljava/lang/Object;
    .end local v22    # "setFlags":[I
    .restart local v1    # "object":Ljava/lang/Object;
    .restart local v2    # "setFlags":[I
    .restart local v4    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v14    # "typeKey":Ljava/lang/String;
    :cond_90
    move-object/from16 v21, v1

    move-object/from16 v22, v2

    .line 883
    .end local v2    # "setFlags":[I
    .restart local v22    # "setFlags":[I
    :goto_26
    iget-object v0, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildMethod:Ljava/lang/reflect/Method;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_c

    move-object v2, v0

    .line 884
    .local v2, "buildMethod":Ljava/lang/reflect/Method;
    if-nez v2, :cond_92

    .line 885
    nop

    .line 898
    if-eqz v3, :cond_91

    .line 899
    iput-object v1, v3, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 901
    :cond_91
    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 885
    return-object v1

    .line 891
    :cond_92
    const/4 v5, 0x0

    :try_start_23
    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_3
    .catchall {:try_start_23 .. :try_end_23} :catchall_c

    .line 894
    .local v0, "builtObj":Ljava/lang/Object;
    nop

    .line 896
    nop

    .line 898
    if-eqz v3, :cond_93

    .line 899
    iput-object v1, v3, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 901
    :cond_93
    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 896
    return-object v0

    .line 892
    .end local v0    # "builtObj":Ljava/lang/Object;
    :catch_3
    move-exception v0

    .line 893
    .local v0, "e":Ljava/lang/Exception;
    :try_start_24
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string v6, "build object error"

    invoke-direct {v5, v6, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "object":Ljava/lang/Object;
    .end local v3    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v10    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .end local v13    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .end local v22    # "setFlags":[I
    .end local v28    # "token":I
    .end local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .end local p2    # "type":Ljava/lang/reflect/Type;
    .end local p3    # "fieldName":Ljava/lang/Object;
    .end local p5    # "features":I
    throw v5
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_c

    .line 898
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "buildMethod":Ljava/lang/reflect/Method;
    .end local v4    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v14    # "typeKey":Ljava/lang/String;
    .restart local v1    # "object":Ljava/lang/Object;
    .restart local v3    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v10    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .restart local v13    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .restart local v22    # "setFlags":[I
    .restart local v28    # "token":I
    .restart local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .restart local p2    # "type":Ljava/lang/reflect/Type;
    .restart local p3    # "fieldName":Ljava/lang/Object;
    .restart local p5    # "features":I
    :catchall_c
    move-exception v0

    move-object/from16 v2, v22

    goto/16 :goto_29

    .line 778
    .end local v1    # "object":Ljava/lang/Object;
    .end local v3    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .local v0, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v14    # "typeKey":Ljava/lang/String;
    .local v15, "setFlags":[I
    .local v18, "key":Ljava/lang/String;
    .restart local v19    # "matchField":Z
    .restart local v20    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .local v21, "valueParsed":Z
    .local v22, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .local v23, "feildAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v24, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v26    # "fieldValue":Ljava/lang/Object;
    .restart local v27    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v29    # "fieldIndex":I
    .restart local p6    # "object":Ljava/lang/Object;
    :cond_94
    const/4 v1, 0x0

    const/4 v5, 0x0

    :try_start_25
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    const/16 v6, 0x12

    if-eq v4, v6, :cond_95

    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_95

    .line 459
    .end local v0    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "key":Ljava/lang/String;
    .end local v19    # "matchField":Z
    .end local v21    # "valueParsed":Z
    .end local v22    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v23    # "feildAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v26    # "fieldValue":Ljava/lang/Object;
    .end local v27    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :goto_27
    move-object/from16 v0, p6

    move-object/from16 v4, v20

    move-object/from16 v20, v24

    .end local v24    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local p6    # "object":Ljava/lang/Object;
    .local v0, "object":Ljava/lang/Object;
    .local v4, "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .local v20, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_28
    add-int/lit8 v7, v29, 0x1

    move-object/from16 v11, p3

    move-object v1, v0

    move v5, v7

    move-object v7, v10

    move-object v2, v15

    move/from16 v3, v28

    const/4 v0, 0x0

    const/4 v6, 0x4

    const/16 v15, 0x10

    move-object/from16 v10, p2

    .end local v29    # "fieldIndex":I
    .local v7, "fieldIndex":I
    goto/16 :goto_8

    .line 779
    .end local v4    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v7    # "fieldIndex":I
    .local v0, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v18    # "key":Ljava/lang/String;
    .restart local v19    # "matchField":Z
    .local v20, "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v21    # "valueParsed":Z
    .restart local v22    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v23    # "feildAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v24    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v26    # "fieldValue":Ljava/lang/Object;
    .restart local v27    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v29    # "fieldIndex":I
    .restart local p6    # "object":Ljava/lang/Object;
    :cond_95
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error, unexpect token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v3

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v10    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .end local v13    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .end local v15    # "setFlags":[I
    .end local v20    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v28    # "token":I
    .end local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .end local p2    # "type":Ljava/lang/reflect/Type;
    .end local p3    # "fieldName":Ljava/lang/Object;
    .end local p5    # "features":I
    .end local p6    # "object":Ljava/lang/Object;
    throw v1

    .line 765
    .local v1, "match":Z
    .restart local v10    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .restart local v13    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .restart local v15    # "setFlags":[I
    .restart local v20    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v28    # "token":I
    .restart local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .restart local p2    # "type":Ljava/lang/reflect/Type;
    .restart local p3    # "fieldName":Ljava/lang/Object;
    .restart local p5    # "features":I
    .restart local p6    # "object":Ljava/lang/Object;
    :cond_96
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "syntax error, unexpect token \':\'"

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v10    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .end local v13    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .end local v15    # "setFlags":[I
    .end local v20    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v28    # "token":I
    .end local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .end local p2    # "type":Ljava/lang/reflect/Type;
    .end local p3    # "fieldName":Ljava/lang/Object;
    .end local p5    # "features":I
    .end local p6    # "object":Ljava/lang/Object;
    throw v2
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_d

    .line 898
    .end local v0    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "match":Z
    .end local v14    # "typeKey":Ljava/lang/String;
    .end local v18    # "key":Ljava/lang/String;
    .end local v19    # "matchField":Z
    .end local v21    # "valueParsed":Z
    .end local v22    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v23    # "feildAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v24    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v26    # "fieldValue":Ljava/lang/Object;
    .end local v27    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v29    # "fieldIndex":I
    .restart local v10    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .restart local v13    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .restart local v15    # "setFlags":[I
    .restart local v20    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v28    # "token":I
    .restart local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .restart local p2    # "type":Ljava/lang/reflect/Type;
    .restart local p3    # "fieldName":Ljava/lang/Object;
    .restart local p5    # "features":I
    .restart local p6    # "object":Ljava/lang/Object;
    :catchall_d
    move-exception v0

    move-object/from16 v1, p6

    move-object v2, v15

    move-object/from16 v3, v20

    goto :goto_29

    .end local v10    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v15    # "setFlags":[I
    .end local v20    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v28    # "token":I
    .end local p6    # "object":Ljava/lang/Object;
    .local v1, "object":Ljava/lang/Object;
    .local v2, "setFlags":[I
    .local v3, "token":I
    .restart local v4    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .local v7, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    :catchall_e
    move-exception v0

    move/from16 p4, v3

    move-object v10, v7

    move/from16 v28, p4

    move-object v3, v4

    .end local v3    # "token":I
    .end local v7    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v10    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local p4    # "token":I
    goto :goto_29

    .end local v1    # "object":Ljava/lang/Object;
    .end local v4    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v10    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .local v2, "token":I
    .local v3, "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v7    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .local p4, "object":Ljava/lang/Object;
    .local p6, "setFlags":[I
    :catchall_f
    move-exception v0

    move-object v10, v7

    move/from16 v28, v2

    move-object/from16 v2, p6

    .end local v7    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local p4    # "object":Ljava/lang/Object;
    .end local p6    # "setFlags":[I
    .restart local v1    # "object":Ljava/lang/Object;
    .local v2, "setFlags":[I
    .restart local v10    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v28    # "token":I
    :goto_29
    if-eqz v3, :cond_97

    .line 899
    iput-object v1, v3, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 901
    :cond_97
    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    throw v0

    .line 363
    .end local v1    # "object":Ljava/lang/Object;
    .end local v2    # "setFlags":[I
    .end local v3    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v10    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .end local v13    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .end local v28    # "token":I
    .restart local p4    # "object":Ljava/lang/Object;
    .restart local p6    # "setFlags":[I
    :cond_98
    :goto_2a
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserialzeArrayMapping(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 276
    move-object v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 277
    .local v2, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v4, 0xe

    if-ne v3, v4, :cond_10

    .line 281
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    .line 283
    .end local p4    # "object":Ljava/lang/Object;
    .local v3, "object":Ljava/lang/Object;
    const/4 v5, 0x0

    .local v5, "i":I
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v6, v6

    .local v6, "size":I
    :goto_0
    const/16 v7, 0x10

    if-ge v5, v6, :cond_f

    .line 284
    add-int/lit8 v8, v6, -0x1

    const/16 v9, 0x5d

    if-ne v5, v8, :cond_0

    const/16 v8, 0x5d

    goto :goto_1

    :cond_0
    const/16 v8, 0x2c

    .line 285
    .local v8, "seperator":C
    :goto_1
    iget-object v10, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v10, v10, v5

    .line 286
    .local v10, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iget-object v11, v10, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v11, v11, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 287
    .local v11, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v11, v12, :cond_1

    .line 288
    invoke-interface {v2, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanInt(C)I

    move-result v7

    .line 289
    .local v7, "value":I
    invoke-virtual {v10, v3, v7}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;I)V

    .line 290
    .end local v7    # "value":I
    goto/16 :goto_4

    :cond_1
    const-class v12, Ljava/lang/String;

    if-ne v11, v12, :cond_2

    .line 291
    invoke-interface {v2, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString(C)Ljava/lang/String;

    move-result-object v7

    .line 292
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v10, v3, v7}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    .end local v7    # "value":Ljava/lang/String;
    goto/16 :goto_4

    :cond_2
    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v11, v12, :cond_3

    .line 294
    invoke-interface {v2, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLong(C)J

    move-result-wide v12

    .line 295
    .local v12, "value":J
    invoke-virtual {v10, v3, v12, v13}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;J)V

    .line 296
    .end local v12    # "value":J
    goto/16 :goto_4

    :cond_3
    invoke-virtual {v11}, Ljava/lang/Class;->isEnum()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 297
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v7

    .line 300
    .local v7, "ch":C
    const/16 v9, 0x22

    if-eq v7, v9, :cond_6

    const/16 v9, 0x6e

    if-ne v7, v9, :cond_4

    goto :goto_2

    .line 302
    :cond_4
    const/16 v9, 0x30

    if-lt v7, v9, :cond_5

    const/16 v9, 0x39

    if-gt v7, v9, :cond_5

    .line 303
    invoke-interface {v2, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanInt(C)I

    move-result v9

    .line 305
    .local v9, "ordinal":I
    move-object v12, v10

    check-cast v12, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->getFieldValueDeserilizer(Lcom/alibaba/fastjson/parser/ParserConfig;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v12

    check-cast v12, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    .line 306
    .local v12, "enumDeser":Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;
    invoke-virtual {v12, v9}, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->valueOf(I)Ljava/lang/Enum;

    move-result-object v9

    .line 307
    .end local v12    # "enumDeser":Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;
    .local v9, "value":Ljava/lang/Object;
    goto :goto_3

    .line 308
    .end local v9    # "value":Ljava/lang/Object;
    :cond_5
    invoke-virtual {p0, v2, v8}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->scanEnum(Lcom/alibaba/fastjson/parser/JSONLexer;C)Ljava/lang/Enum;

    move-result-object v9

    .restart local v9    # "value":Ljava/lang/Object;
    goto :goto_3

    .line 301
    .end local v9    # "value":Ljava/lang/Object;
    :cond_6
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v9

    invoke-interface {v2, v11, v9, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanEnum(Ljava/lang/Class;Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/Enum;

    move-result-object v9

    .line 311
    .restart local v9    # "value":Ljava/lang/Object;
    :goto_3
    invoke-virtual {v10, v3, v9}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 312
    .end local v7    # "ch":C
    .end local v9    # "value":Ljava/lang/Object;
    goto/16 :goto_4

    :cond_7
    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v11, v12, :cond_8

    .line 313
    invoke-interface {v2, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanBoolean(C)Z

    move-result v7

    .line 314
    .local v7, "value":Z
    invoke-virtual {v10, v3, v7}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Z)V

    .line 315
    .end local v7    # "value":Z
    goto :goto_4

    :cond_8
    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v11, v12, :cond_9

    .line 316
    invoke-interface {v2, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFloat(C)F

    move-result v7

    .line 317
    .local v7, "value":F
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v10, v3, v9}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 318
    .end local v7    # "value":F
    goto :goto_4

    :cond_9
    sget-object v12, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v11, v12, :cond_a

    .line 319
    invoke-interface {v2, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanDouble(C)D

    move-result-wide v12

    .line 320
    .local v12, "value":D
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v10, v3, v7}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 321
    .end local v12    # "value":D
    goto :goto_4

    :cond_a
    const-class v12, Ljava/util/Date;

    if-ne v11, v12, :cond_b

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v12

    const/16 v13, 0x31

    if-ne v12, v13, :cond_b

    .line 322
    invoke-interface {v2, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLong(C)J

    move-result-wide v12

    .line 323
    .local v12, "longValue":J
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v3, v7}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 324
    .end local v12    # "longValue":J
    goto :goto_4

    :cond_b
    const-class v12, Ljava/math/BigDecimal;

    if-ne v11, v12, :cond_c

    .line 325
    invoke-interface {v2, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanDecimal(C)Ljava/math/BigDecimal;

    move-result-object v7

    .line 326
    .local v7, "value":Ljava/math/BigDecimal;
    invoke-virtual {v10, v3, v7}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 327
    .end local v7    # "value":Ljava/math/BigDecimal;
    goto :goto_4

    .line 328
    :cond_c
    invoke-interface {v2, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 329
    iget-object v12, v10, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v12, v12, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    iget-object v13, v10, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v13, v13, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v12, v13}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 330
    .local v12, "value":Ljava/lang/Object;
    invoke-virtual {v10, v3, v12}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 332
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v13

    const/16 v14, 0xf

    if-ne v13, v14, :cond_d

    .line 333
    goto :goto_5

    .line 336
    :cond_d
    if-ne v8, v9, :cond_e

    const/16 v7, 0xf

    :cond_e
    invoke-virtual {p0, v2, v7}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->check(Lcom/alibaba/fastjson/parser/JSONLexer;I)V

    .line 283
    .end local v8    # "seperator":C
    .end local v10    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v11    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "value":Ljava/lang/Object;
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 340
    .end local v5    # "i":I
    .end local v6    # "size":I
    :cond_f
    :goto_5
    invoke-interface {v2, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 342
    return-object v3

    .line 278
    .end local v3    # "object":Ljava/lang/Object;
    .restart local p4    # "object":Ljava/lang/Object;
    :cond_10
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string v4, "error"

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getFastMatchToken()I
    .locals 1

    .line 1136
    const/16 v0, 0xc

    return v0
.end method

.method public getFieldDeserializer(J)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 9
    .param p1, "hash"    # J

    .line 121
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArray:[J

    if-nez v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v0, v0

    new-array v0, v0, [J

    .line 123
    .local v0, "hashArray":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 124
    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    .end local v1    # "i":I
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->sort([J)V

    .line 127
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArray:[J

    .line 130
    .end local v0    # "hashArray":[J
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArray:[J

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 131
    .local v0, "pos":I
    const/4 v1, 0x0

    if-gez v0, :cond_2

    .line 132
    return-object v1

    .line 135
    :cond_2
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArrayMapping:[S

    const/4 v3, -0x1

    if-nez v2, :cond_5

    .line 136
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArray:[J

    array-length v2, v2

    new-array v2, v2, [S

    .line 137
    .local v2, "mapping":[S
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([SS)V

    .line 138
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v6, v5

    if-ge v4, v6, :cond_4

    .line 139
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArray:[J

    aget-object v5, v5, v4

    iget-object v5, v5, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 140
    invoke-static {v5}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v7

    .line 139
    invoke-static {v6, v7, v8}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v5

    .line 141
    .local v5, "p":I
    if-ltz v5, :cond_3

    .line 142
    int-to-short v6, v4

    aput-short v6, v2, v5

    .line 138
    .end local v5    # "p":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 145
    .end local v4    # "i":I
    :cond_4
    iput-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArrayMapping:[S

    .line 148
    .end local v2    # "mapping":[S
    :cond_5
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArrayMapping:[S

    aget-short v2, v2, v0

    .line 149
    .local v2, "setterIndex":I
    if-eq v2, v3, :cond_6

    .line 150
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v1, v1, v2

    return-object v1

    .line 153
    :cond_6
    return-object v1
.end method

.method public getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;[I)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v0

    return-object v0
.end method

.method public getFieldDeserializer(Ljava/lang/String;[I)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "setFlags"    # [I

    .line 86
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 87
    return-object v0

    .line 90
    :cond_0
    const/4 v1, 0x0

    .line 91
    .local v1, "low":I
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .line 93
    .local v2, "high":I
    :goto_0
    if-gt v1, v2, :cond_4

    .line 94
    add-int v3, v1, v2

    ushr-int/lit8 v3, v3, 0x1

    .line 96
    .local v3, "mid":I
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 98
    .local v4, "fieldName":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    .line 100
    .local v5, "cmp":I
    if-gez v5, :cond_1

    .line 101
    add-int/lit8 v1, v3, 0x1

    goto :goto_1

    .line 102
    :cond_1
    if-lez v5, :cond_2

    .line 103
    add-int/lit8 v2, v3, -0x1

    .line 111
    .end local v3    # "mid":I
    .end local v4    # "fieldName":Ljava/lang/String;
    .end local v5    # "cmp":I
    :goto_1
    goto :goto_0

    .line 105
    .restart local v3    # "mid":I
    .restart local v4    # "fieldName":Ljava/lang/String;
    .restart local v5    # "cmp":I
    :cond_2
    invoke-static {v3, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->isSetFlag(I[I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 106
    return-object v0

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v0, v0, v3

    return-object v0

    .line 113
    .end local v3    # "mid":I
    .end local v4    # "fieldName":Ljava/lang/String;
    .end local v5    # "cmp":I
    :cond_4
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->alterNameFieldDeserializers:Ljava/util/Map;

    if-eqz v3, :cond_5

    .line 114
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    return-object v0

    .line 117
    :cond_5
    return-object v0
.end method

.method public getFieldType(I)Ljava/lang/reflect/Type;
    .locals 1
    .param p1, "ordinal"    # I

    .line 1248
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method protected getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    .locals 9
    .param p1, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p2, "beanInfo"    # Lcom/alibaba/fastjson/util/JavaBeanInfo;
    .param p3, "typeName"    # Ljava/lang/String;

    .line 1267
    iget-object v0, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1268
    return-object v1

    .line 1271
    :cond_0
    iget-object v0, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->seeAlso()[Ljava/lang/Class;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 1272
    .local v4, "seeAlsoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v5

    .line 1273
    .local v5, "seeAlsoDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v6, v5, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v6, :cond_2

    .line 1274
    move-object v6, v5

    check-cast v6, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .line 1276
    .local v6, "seeAlsoJavaBeanDeser":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    iget-object v7, v6, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    .line 1277
    .local v7, "subBeanInfo":Lcom/alibaba/fastjson/util/JavaBeanInfo;
    iget-object v8, v7, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1278
    return-object v6

    .line 1281
    :cond_1
    invoke-virtual {p0, p1, v7, p3}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-result-object v8

    .line 1282
    .local v8, "subSeeAlso":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    if-eqz v8, :cond_2

    .line 1283
    return-object v8

    .line 1271
    .end local v4    # "seeAlsoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "seeAlsoDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v6    # "seeAlsoJavaBeanDeser":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    .end local v7    # "subBeanInfo":Lcom/alibaba/fastjson/util/JavaBeanInfo;
    .end local v8    # "subSeeAlso":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1288
    :cond_3
    return-object v1
.end method

.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
    .locals 7
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "object"    # Ljava/lang/Object;
    .param p4, "objectType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 926
    .local p5, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;[I)Z

    move-result v0

    return v0
.end method

.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;[I)Z
    .locals 27
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "object"    # Ljava/lang/Object;
    .param p4, "objectType"    # Ljava/lang/reflect/Type;
    .param p6, "setFlags"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[I)Z"
        }
    .end annotation

    .line 931
    .local p5, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v11, p6

    iget-object v10, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 933
    .local v10, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->DisableFieldSmartMatch:Lcom/alibaba/fastjson/parser/Feature;

    iget v9, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    .line 935
    .local v9, "disableFieldSmartMatchMask":I
    invoke-interface {v10, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->parserFeatures:I

    and-int/2addr v0, v9

    if-eqz v0, :cond_0

    goto :goto_0

    .line 938
    :cond_0
    invoke-virtual {v1, v12, v11}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatch(Ljava/lang/String;[I)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v0

    .local v0, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    goto :goto_1

    .line 936
    .end local v0    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_1
    :goto_0
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v0

    .line 941
    .restart local v0    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :goto_1
    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->SupportNonPublicField:Lcom/alibaba/fastjson/parser/Feature;

    iget v8, v3, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    .line 942
    .local v8, "mask":I
    const/16 v16, 0x0

    const/4 v7, 0x1

    if-nez v0, :cond_c

    .line 943
    invoke-interface {v10, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget v3, v3, Lcom/alibaba/fastjson/util/JavaBeanInfo;->parserFeatures:I

    and-int/2addr v3, v8

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 v18, v0

    move/from16 v20, v8

    move/from16 v25, v9

    move-object/from16 v26, v10

    const/16 v24, 0x1

    goto/16 :goto_7

    .line 945
    :cond_3
    :goto_2
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    if-nez v3, :cond_9

    .line 946
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-direct {v3, v7, v4, v7}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 947
    .local v3, "extraFieldDeserializers":Ljava/util/concurrent/ConcurrentHashMap;
    iget-object v4, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    .local v4, "c":Ljava/lang/Class;
    :goto_3
    if-eqz v4, :cond_8

    const-class v5, Ljava/lang/Object;

    if-eq v4, v5, :cond_8

    .line 948
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    .line 949
    .local v5, "fields":[Ljava/lang/reflect/Field;
    array-length v6, v5

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v6, :cond_7

    move-object/from16 v18, v0

    .end local v0    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .local v18, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    aget-object v0, v5, v7

    .line 950
    .local v0, "field":Ljava/lang/reflect/Field;
    move-object/from16 v19, v5

    .end local v5    # "fields":[Ljava/lang/reflect/Field;
    .local v19, "fields":[Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 951
    .local v5, "fieldName":Ljava/lang/String;
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v20

    if-eqz v20, :cond_4

    .line 952
    goto :goto_5

    .line 954
    :cond_4
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v20

    .line 955
    .local v20, "fieldModifiers":I
    and-int/lit8 v21, v20, 0x10

    if-nez v21, :cond_6

    and-int/lit8 v21, v20, 0x8

    if-eqz v21, :cond_5

    .line 956
    goto :goto_5

    .line 958
    :cond_5
    invoke-virtual {v3, v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "fieldName":Ljava/lang/String;
    .end local v20    # "fieldModifiers":I
    :cond_6
    :goto_5
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v18

    move-object/from16 v5, v19

    goto :goto_4

    .end local v18    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v19    # "fields":[Ljava/lang/reflect/Field;
    .local v0, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .local v5, "fields":[Ljava/lang/reflect/Field;
    :cond_7
    move-object/from16 v18, v0

    move-object/from16 v19, v5

    .line 947
    .end local v0    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v5    # "fields":[Ljava/lang/reflect/Field;
    .restart local v18    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    const/4 v7, 0x1

    goto :goto_3

    .end local v18    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v0    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_8
    move-object/from16 v18, v0

    .line 961
    .end local v0    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v4    # "c":Ljava/lang/Class;
    .restart local v18    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iput-object v3, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    goto :goto_6

    .line 945
    .end local v3    # "extraFieldDeserializers":Ljava/util/concurrent/ConcurrentHashMap;
    .end local v18    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v0    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_9
    move-object/from16 v18, v0

    .line 964
    .end local v0    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v18    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :goto_6
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v12}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 965
    .local v0, "deserOrField":Ljava/lang/Object;
    if-eqz v0, :cond_b

    .line 966
    instance-of v3, v0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    if-eqz v3, :cond_a

    .line 967
    move-object v3, v0

    check-cast v3, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move/from16 v20, v8

    move/from16 v25, v9

    move-object/from16 v26, v10

    const/16 v24, 0x1

    .end local v18    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .local v3, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    goto :goto_8

    .line 969
    .end local v3    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v18    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_a
    move-object v7, v0

    check-cast v7, Ljava/lang/reflect/Field;

    .line 970
    .local v7, "field":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v7, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 971
    new-instance v17, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v3, v17

    move-object/from16 v4, p2

    const/16 v24, 0x1

    move-object/from16 v6, v19

    move-object/from16 v19, v7

    .end local v7    # "field":Ljava/lang/reflect/Field;
    .local v19, "field":Ljava/lang/reflect/Field;
    move-object/from16 v7, v20

    move/from16 v20, v8

    .end local v8    # "mask":I
    .local v20, "mask":I
    move-object/from16 v8, v19

    move/from16 v25, v9

    .end local v9    # "disableFieldSmartMatchMask":I
    .local v25, "disableFieldSmartMatchMask":I
    move/from16 v9, v21

    move-object/from16 v26, v10

    .end local v10    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .local v26, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    move/from16 v10, v22

    move/from16 v11, v23

    invoke-direct/range {v3 .. v11}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    .line 972
    .local v3, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    new-instance v4, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v5

    iget-object v6, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-direct {v4, v5, v6, v3}, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 973
    .end local v18    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .local v4, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iget-object v5, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v12, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v4

    goto :goto_8

    .line 965
    .end local v3    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v4    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v19    # "field":Ljava/lang/reflect/Field;
    .end local v20    # "mask":I
    .end local v25    # "disableFieldSmartMatchMask":I
    .end local v26    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v8    # "mask":I
    .restart local v9    # "disableFieldSmartMatchMask":I
    .restart local v10    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v18    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_b
    move/from16 v20, v8

    move/from16 v25, v9

    move-object/from16 v26, v10

    const/16 v24, 0x1

    .end local v8    # "mask":I
    .end local v9    # "disableFieldSmartMatchMask":I
    .end local v10    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v20    # "mask":I
    .restart local v25    # "disableFieldSmartMatchMask":I
    .restart local v26    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    goto :goto_7

    .line 942
    .end local v18    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v20    # "mask":I
    .end local v25    # "disableFieldSmartMatchMask":I
    .end local v26    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .local v0, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v8    # "mask":I
    .restart local v9    # "disableFieldSmartMatchMask":I
    .restart local v10    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    :cond_c
    move-object/from16 v18, v0

    move/from16 v20, v8

    move/from16 v25, v9

    move-object/from16 v26, v10

    const/16 v24, 0x1

    .line 978
    .end local v0    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v8    # "mask":I
    .end local v9    # "disableFieldSmartMatchMask":I
    .end local v10    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v18    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v20    # "mask":I
    .restart local v25    # "disableFieldSmartMatchMask":I
    .restart local v26    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    :goto_7
    move-object/from16 v3, v18

    .end local v18    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .local v3, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :goto_8
    if-nez v3, :cond_17

    .line 979
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v4, v26

    .end local v26    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .local v4, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v4, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 983
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v5, v0

    const/4 v6, 0x0

    :goto_9
    if-ge v6, v5, :cond_15

    aget-object v7, v0, v6

    .line 984
    .local v7, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iget-object v8, v7, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 985
    .local v8, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-boolean v9, v8, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z

    if-eqz v9, :cond_14

    instance-of v9, v7, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    if-eqz v9, :cond_14

    .line 987
    iget-object v9, v8, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    const-string v10, "parse unwrapped field error."

    if-eqz v9, :cond_12

    .line 988
    move-object v9, v7

    check-cast v9, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    .line 989
    .local v9, "defaultFieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->getFieldValueDeserilizer(Lcom/alibaba/fastjson/parser/ParserConfig;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v11

    .line 990
    .local v11, "fieldValueDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    move-object/from16 v17, v0

    instance-of v0, v11, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v0, :cond_f

    .line 991
    move v0, v5

    move-object v5, v11

    check-cast v5, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .line 992
    .local v5, "javaBeanFieldValueDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    move-object/from16 v18, v3

    .end local v3    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v18    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    invoke-virtual {v5, v12}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v3

    .line 993
    .local v3, "unwrappedFieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-eqz v3, :cond_e

    .line 996
    :try_start_0
    iget-object v0, v8, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 997
    .local v0, "fieldObject":Ljava/lang/Object;
    if-nez v0, :cond_d

    .line 998
    move-object v6, v11

    check-cast v6, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-object/from16 v16, v0

    .end local v0    # "fieldObject":Ljava/lang/Object;
    .local v16, "fieldObject":Ljava/lang/Object;
    iget-object v0, v8, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    invoke-virtual {v6, v2, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 999
    .end local v16    # "fieldObject":Ljava/lang/Object;
    .restart local v0    # "fieldObject":Ljava/lang/Object;
    invoke-virtual {v7, v13, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a

    .line 997
    :cond_d
    move-object/from16 v16, v0

    .line 1001
    :goto_a
    invoke-virtual {v9}, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->getFastMatchToken()I

    move-result v6

    invoke-interface {v4, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 1002
    invoke-virtual {v3, v2, v0, v14, v15}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1003
    return v24

    .line 1004
    .end local v0    # "fieldObject":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1005
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v6, v10, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 993
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "unwrappedFieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v5    # "javaBeanFieldValueDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    :cond_e
    goto :goto_b

    .line 1008
    .end local v18    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .local v3, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_f
    move-object/from16 v18, v3

    move v0, v5

    .end local v3    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v18    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    instance-of v3, v11, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    if-eqz v3, :cond_11

    .line 1009
    move-object v3, v11

    check-cast v3, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    .line 1013
    .local v3, "javaBeanFieldValueDeserializer":Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;
    :try_start_1
    iget-object v0, v8, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1014
    .local v0, "fieldObject":Ljava/util/Map;
    if-nez v0, :cond_10

    .line 1015
    iget-object v5, v8, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->createMap(Ljava/lang/reflect/Type;)Ljava/util/Map;

    move-result-object v5

    move-object v0, v5

    .line 1016
    invoke-virtual {v7, v13, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1019
    :cond_10
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon()V

    .line 1020
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1021
    .local v5, "fieldValue":Ljava/lang/Object;
    invoke-interface {v0, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1024
    nop

    .line 1025
    .end local v5    # "fieldValue":Ljava/lang/Object;
    return v24

    .line 1022
    .end local v0    # "fieldObject":Ljava/util/Map;
    :catch_1
    move-exception v0

    .line 1023
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v5, v10, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 1008
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "javaBeanFieldValueDeserializer":Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;
    :cond_11
    :goto_b
    goto :goto_c

    .line 1027
    .end local v9    # "defaultFieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;
    .end local v11    # "fieldValueDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v18    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .local v3, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_12
    move-object/from16 v17, v0

    move-object/from16 v18, v3

    move v0, v5

    .end local v3    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v18    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iget-object v3, v8, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_13

    .line 1028
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon()V

    .line 1029
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1031
    .local v3, "fieldValue":Ljava/lang/Object;
    :try_start_2
    iget-object v0, v8, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v12, v5, v16

    aput-object v3, v5, v24

    invoke-virtual {v0, v13, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1034
    nop

    .line 1035
    return v24

    .line 1032
    :catch_2
    move-exception v0

    .line 1033
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v5, v10, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 1027
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "fieldValue":Ljava/lang/Object;
    :cond_13
    :goto_c
    goto :goto_d

    .line 985
    .end local v18    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .local v3, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_14
    move-object/from16 v17, v0

    move-object/from16 v18, v3

    move v0, v5

    .line 983
    .end local v3    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v7    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v8    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v18    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :goto_d
    add-int/lit8 v6, v6, 0x1

    move v5, v0

    move-object/from16 v0, v17

    move-object/from16 v3, v18

    goto/16 :goto_9

    .line 1040
    .end local v18    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v3    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_15
    invoke-virtual {v2, v13, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseExtra(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1042
    return v16

    .line 980
    :cond_16
    move-object/from16 v18, v3

    .end local v3    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v18    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setter not found, class "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", property "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1045
    .end local v4    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v18    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v3    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v26    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    :cond_17
    move-object/from16 v18, v3

    move-object/from16 v4, v26

    .end local v3    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v26    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v4    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v18    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    const/4 v0, -0x1

    .line 1046
    .local v0, "fieldIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    iget-object v5, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v6, v5

    if-ge v3, v6, :cond_19

    .line 1047
    aget-object v5, v5, v3

    move-object/from16 v6, v18

    .end local v18    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .local v6, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-ne v5, v6, :cond_18

    .line 1048
    move v0, v3

    .line 1049
    goto :goto_f

    .line 1046
    :cond_18
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v18, v6

    goto :goto_e

    .end local v6    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v18    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_19
    move-object/from16 v6, v18

    .line 1052
    .end local v3    # "i":I
    .end local v18    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v6    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :goto_f
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1a

    move-object/from16 v3, p6

    if-eqz v3, :cond_1b

    const-string v5, "_"

    invoke-virtual {v12, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 1053
    invoke-static {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->isSetFlag(I[I)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 1054
    invoke-virtual {v2, v13, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseExtra(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1055
    return v16

    .line 1052
    :cond_1a
    move-object/from16 v3, p6

    .line 1059
    :cond_1b
    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->getFastMatchToken()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 1061
    invoke-virtual {v6, v2, v13, v14, v15}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    .line 1063
    return v24
.end method

.method protected parseRest(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 8
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "instance"    # Ljava/lang/Object;
    .param p5, "features"    # I

    .line 1252
    const/4 v0, 0x0

    new-array v7, v0, [I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->parseRest(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I[I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected parseRest(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I[I)Ljava/lang/Object;
    .locals 1
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "instance"    # Ljava/lang/Object;
    .param p5, "features"    # I
    .param p6, "setFlags"    # [I

    .line 1261
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I[I)Ljava/lang/Object;

    move-result-object v0

    .line 1263
    .local v0, "value":Ljava/lang/Object;
    return-object v0
.end method

.method protected scanEnum(Lcom/alibaba/fastjson/parser/JSONLexer;C)Ljava/lang/Enum;
    .locals 3
    .param p1, "lexer"    # Lcom/alibaba/fastjson/parser/JSONLexer;
    .param p2, "seperator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/JSONLexer;",
            "C)",
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation

    .line 352
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal enum. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected scanEnum(Lcom/alibaba/fastjson/parser/JSONLexerBase;[CLcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)Ljava/lang/Enum;
    .locals 5
    .param p1, "lexer"    # Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .param p2, "name_chars"    # [C
    .param p3, "fieldValueDeserilizer"    # Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 906
    const/4 v0, 0x0

    .line 907
    .local v0, "enumDeserializer":Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;
    instance-of v1, p3, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    if-eqz v1, :cond_0

    .line 908
    move-object v0, p3

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    .line 911
    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 912
    const/4 v2, -0x1

    iput v2, p1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 913
    return-object v1

    .line 916
    :cond_1
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldSymbol([C)J

    move-result-wide v2

    .line 917
    .local v2, "enumNameHashCode":J
    iget v4, p1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v4, :cond_2

    .line 918
    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->getEnumByHashCode(J)Ljava/lang/Enum;

    move-result-object v1

    return-object v1

    .line 920
    :cond_2
    return-object v1
.end method

.method public smartMatch(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1067
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatch(Ljava/lang/String;[I)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v0

    return-object v0
.end method

.method public smartMatch(Ljava/lang/String;[I)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 13
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "setFlags"    # [I

    .line 1071
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1072
    return-object v0

    .line 1075
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;[I)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v1

    .line 1077
    .local v1, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-nez v1, :cond_9

    .line 1078
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64_lower(Ljava/lang/String;)J

    move-result-wide v2

    .line 1079
    .local v2, "smartKeyHash":J
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArray:[J

    if-nez v4, :cond_2

    .line 1080
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v4, v4

    new-array v4, v4, [J

    .line 1081
    .local v4, "hashArray":[J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v7, v6

    if-ge v5, v7, :cond_1

    .line 1082
    aget-object v6, v6, v5

    iget-object v6, v6, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v6, v6, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-static {v6}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64_lower(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 1081
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1084
    .end local v5    # "i":I
    :cond_1
    invoke-static {v4}, Ljava/util/Arrays;->sort([J)V

    .line 1085
    iput-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArray:[J

    .line 1089
    .end local v4    # "hashArray":[J
    :cond_2
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArray:[J

    invoke-static {v4, v2, v3}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v4

    .line 1090
    .local v4, "pos":I
    const/4 v5, 0x0

    .line 1091
    .local v5, "is":Z
    if-gez v4, :cond_3

    const-string v6, "is"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    move v5, v6

    if-eqz v6, :cond_3

    .line 1092
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64_lower(Ljava/lang/String;)J

    move-result-wide v2

    .line 1093
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArray:[J

    invoke-static {v6, v2, v3}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v4

    .line 1096
    :cond_3
    if-ltz v4, :cond_7

    .line 1097
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArrayMapping:[S

    const/4 v7, -0x1

    if-nez v6, :cond_6

    .line 1098
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArray:[J

    array-length v6, v6

    new-array v6, v6, [S

    .line 1099
    .local v6, "mapping":[S
    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([SS)V

    .line 1100
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v10, v9

    if-ge v8, v10, :cond_5

    .line 1101
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArray:[J

    aget-object v9, v9, v8

    iget-object v9, v9, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v9, v9, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 1102
    invoke-static {v9}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64_lower(Ljava/lang/String;)J

    move-result-wide v11

    .line 1101
    invoke-static {v10, v11, v12}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v9

    .line 1103
    .local v9, "p":I
    if-ltz v9, :cond_4

    .line 1104
    int-to-short v10, v8

    aput-short v10, v6, v9

    .line 1100
    .end local v9    # "p":I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1107
    .end local v8    # "i":I
    :cond_5
    iput-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArrayMapping:[S

    .line 1110
    .end local v6    # "mapping":[S
    :cond_6
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArrayMapping:[S

    aget-short v6, v6, v4

    .line 1111
    .local v6, "deserIndex":I
    if-eq v6, v7, :cond_7

    .line 1112
    invoke-static {v6, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->isSetFlag(I[I)Z

    move-result v7

    if-nez v7, :cond_7

    .line 1113
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v1, v7, v6

    .line 1118
    .end local v6    # "deserIndex":I
    :cond_7
    if-eqz v1, :cond_9

    .line 1119
    iget-object v6, v1, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1120
    .local v6, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget v7, v6, Lcom/alibaba/fastjson/util/FieldInfo;->parserFeatures:I

    sget-object v8, Lcom/alibaba/fastjson/parser/Feature;->DisableFieldSmartMatch:Lcom/alibaba/fastjson/parser/Feature;

    iget v8, v8, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_8

    .line 1121
    return-object v0

    .line 1124
    :cond_8
    iget-object v0, v6, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 1125
    .local v0, "fieldClass":Ljava/lang/Class;
    if-eqz v5, :cond_9

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v7, :cond_9

    const-class v7, Ljava/lang/Boolean;

    if-eq v0, v7, :cond_9

    .line 1126
    const/4 v1, 0x0

    .line 1132
    .end local v0    # "fieldClass":Ljava/lang/Class;
    .end local v2    # "smartKeyHash":J
    .end local v4    # "pos":I
    .end local v5    # "is":Z
    .end local v6    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_9
    return-object v1
.end method
