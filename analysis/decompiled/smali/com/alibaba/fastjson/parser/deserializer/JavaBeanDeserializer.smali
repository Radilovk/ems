.class public Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
.super Ljava/lang/Object;
.source "JavaBeanDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# instance fields
.field private final alterNameFieldDeserializers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
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
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
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
    .locals 9
    .param p1, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p2, "beanInfo"    # Lcom/alibaba/fastjson/util/JavaBeanInfo;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iget-object v6, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->clazz:Ljava/lang/Class;

    iput-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    .line 54
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "alterNameFieldDeserializers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;>;"
    iget-object v6, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v6, v6

    new-array v6, v6, [Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    iput-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 58
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v6, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v5, v6

    .local v5, "size":I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 59
    iget-object v6, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v2, v6, v3

    .line 60
    .local v2, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-virtual {p1, p1, p2, v2}, Lcom/alibaba/fastjson/parser/ParserConfig;->createFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v1

    .line 62
    .local v1, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aput-object v1, v6, v3

    .line 64
    iget-object v7, v2, Lcom/alibaba/fastjson/util/FieldInfo;->alternateNames:[Ljava/lang/String;

    array-length v8, v7

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v8, :cond_1

    aget-object v4, v7, v6

    .line 65
    .local v4, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "alterNameFieldDeserializers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 68
    .restart local v0    # "alterNameFieldDeserializers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;>;"
    :cond_0
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 58
    .end local v4    # "name":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 71
    .end local v1    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v2    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_2
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->alterNameFieldDeserializers:Ljava/util/Map;

    .line 73
    iget-object v6, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v6, v6

    new-array v6, v6, [Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    iput-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 74
    const/4 v3, 0x0

    iget-object v6, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v5, v6

    :goto_2
    if-ge v3, v5, :cond_3

    .line 75
    iget-object v6, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v2, v6, v3

    .line 76
    .restart local v2    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v6, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v1

    .line 77
    .restart local v1    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aput-object v1, v6, v3

    .line 74
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 79
    .end local v1    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v2    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
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
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
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
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .prologue
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

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 157
    if-nez p1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return v2

    .line 161
    :cond_1
    div-int/lit8 v1, p0, 0x20

    .line 162
    .local v1, "flagIndex":I
    rem-int/lit8 v0, p0, 0x20

    .line 163
    .local v0, "bitIndex":I
    array-length v4, p1

    if-ge v1, v4, :cond_0

    .line 164
    aget v4, p1, v1

    shl-int v5, v3, v0

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    move v2, v3

    .line 165
    goto :goto_0
.end method

.method protected static parseArray(Ljava/util/Collection;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)V
    .locals 10
    .param p0, "collection"    # Ljava/util/Collection;
    .param p1, "deser"    # Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .param p2, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p3, "type"    # Ljava/lang/reflect/Type;
    .param p4, "fieldName"    # Ljava/lang/Object;

    .prologue
    const/16 v9, 0x5b

    const/16 v8, 0xf

    const/16 v7, 0x10

    const/16 v6, 0xe

    .line 1298
    iget-object v3, p2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    check-cast v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    .line 1299
    .local v3, "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    .line 1300
    .local v4, "token":I
    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 1301
    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 1302
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    .line 1353
    :goto_0
    return-void

    .line 1306
    :cond_0
    if-eq v4, v6, :cond_1

    .line 1307
    invoke-virtual {p2, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->throwException(I)V

    .line 1309
    :cond_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCurrent()C

    move-result v0

    .line 1310
    .local v0, "ch":C
    if-ne v0, v9, :cond_2

    .line 1311
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1312
    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->setToken(I)V

    .line 1317
    :goto_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v5

    if-ne v5, v8, :cond_3

    .line 1318
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    goto :goto_0

    .line 1314
    :cond_2
    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    goto :goto_1

    .line 1322
    :cond_3
    const/4 v1, 0x0

    .line 1324
    .local v1, "index":I
    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, p2, p3, v5}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1325
    .local v2, "item":Ljava/lang/Object;
    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1326
    add-int/lit8 v1, v1, 0x1

    .line 1327
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v5

    if-ne v5, v7, :cond_5

    .line 1328
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCurrent()C

    move-result v0

    .line 1329
    if-ne v0, v9, :cond_4

    .line 1330
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1331
    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->setToken(I)V

    goto :goto_2

    .line 1333
    :cond_4
    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    goto :goto_2

    .line 1340
    :cond_5
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    .line 1341
    if-eq v4, v8, :cond_6

    .line 1342
    invoke-virtual {p2, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->throwException(I)V

    .line 1345
    :cond_6
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCurrent()C

    move-result v0

    .line 1346
    const/16 v5, 0x2c

    if-ne v0, v5, :cond_7

    .line 1347
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1348
    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->setToken(I)V

    goto :goto_0

    .line 1350
    :cond_7
    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    goto :goto_0
.end method


# virtual methods
.method protected check(Lcom/alibaba/fastjson/parser/JSONLexer;I)V
    .locals 2
    .param p1, "lexer"    # Lcom/alibaba/fastjson/parser/JSONLexer;
    .param p2, "token"    # I

    .prologue
    .line 346
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 347
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_0
    return-void
.end method

.method public createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 23
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 173
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->isInterface()Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v2, p2

    .line 175
    check-cast v2, Ljava/lang/Class;

    .line 176
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    .line 177
    .local v9, "loader":Ljava/lang/ClassLoader;
    new-instance v10, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v10}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 178
    .local v10, "obj":Lcom/alibaba/fastjson/JSONObject;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v2, v18, v19

    move-object/from16 v0, v18

    invoke-static {v9, v0, v10}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v16

    .line 263
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "loader":Ljava/lang/ClassLoader;
    .end local v10    # "obj":Lcom/alibaba/fastjson/JSONObject;
    .end local p2    # "type":Ljava/lang/reflect/Type;
    :goto_0
    return-object v16

    .line 183
    .restart local p2    # "type":Ljava/lang/reflect/Type;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 184
    const/16 v16, 0x0

    goto :goto_0

    .line 187
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructorParameterSize:I

    move/from16 v18, v0

    if-lez v18, :cond_2

    .line 188
    const/16 v16, 0x0

    goto :goto_0

    .line 193
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 194
    .local v3, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructorParameterSize:I

    move/from16 v18, v0

    if-nez v18, :cond_5

    .line 195
    if-eqz v3, :cond_4

    .line 196
    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    .line 250
    .end local p2    # "type":Ljava/lang/reflect/Type;
    .local v11, "object":Ljava/lang/Object;
    :goto_1
    if-eqz p1, :cond_d

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object/from16 v18, v0

    sget-object v19, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    .line 251
    invoke-interface/range {v18 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    const/16 v18, 0x0

    :goto_2
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_d

    aget-object v7, v19, v18

    .line 253
    .local v7, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v0, v7, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    move-object/from16 v21, v0

    const-class v22, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 255
    :try_start_1
    const-string v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v7, v11, v0}, Lcom/alibaba/fastjson/util/FieldInfo;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 252
    :cond_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 198
    .end local v7    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v11    # "object":Ljava/lang/Object;
    .restart local p2    # "type":Ljava/lang/reflect/Type;
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .restart local v11    # "object":Ljava/lang/Object;
    goto :goto_1

    .line 201
    .end local v11    # "object":Ljava/lang/Object;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v4

    .line 202
    .local v4, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    if-eqz v4, :cond_6

    iget-object v0, v4, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 v18, v0

    if-nez v18, :cond_7

    .line 203
    :cond_6
    new-instance v18, Lcom/alibaba/fastjson/JSONException;

    const-string v19, "can\'t create non-static inner class instance."

    invoke-direct/range {v18 .. v19}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_2
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 244
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local p2    # "type":Ljava/lang/reflect/Type;
    :catch_0
    move-exception v6

    .line 245
    .local v6, "e":Lcom/alibaba/fastjson/JSONException;
    throw v6

    .line 207
    .end local v6    # "e":Lcom/alibaba/fastjson/JSONException;
    .restart local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v4    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local p2    # "type":Ljava/lang/reflect/Type;
    :cond_7
    :try_start_3
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v18, v0

    if-eqz v18, :cond_a

    .line 208
    check-cast p2, Ljava/lang/Class;

    .end local p2    # "type":Ljava/lang/reflect/Type;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    .line 213
    .local v17, "typeName":Ljava/lang/String;
    const/16 v18, 0x24

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 214
    .local v8, "lastIndex":I
    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 216
    .local v13, "parentClassName":Ljava/lang/String;
    iget-object v5, v4, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 217
    .local v5, "ctxObj":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    .line 219
    .local v15, "parentName":Ljava/lang/String;
    const/4 v12, 0x0

    .line 220
    .local v12, "param":Ljava/lang/Object;
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_b

    .line 221
    iget-object v14, v4, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 222
    .local v14, "parentContext":Lcom/alibaba/fastjson/parser/ParseContext;
    if-eqz v14, :cond_9

    iget-object v0, v14, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    const-string v18, "java.util.ArrayList"

    .line 224
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_8

    const-string v18, "java.util.List"

    .line 225
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_8

    const-string v18, "java.util.Collection"

    .line 226
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_8

    const-string v18, "java.util.Map"

    .line 227
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_8

    const-string v18, "java.util.HashMap"

    .line 228
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 229
    :cond_8
    iget-object v0, v14, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    .line 230
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 231
    iget-object v12, v14, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 238
    .end local v12    # "param":Ljava/lang/Object;
    .end local v14    # "parentContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_9
    :goto_3
    if-nez v12, :cond_c

    .line 239
    new-instance v18, Lcom/alibaba/fastjson/JSONException;

    const-string v19, "can\'t create non-static inner class instance."

    invoke-direct/range {v18 .. v19}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_3
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 246
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v5    # "ctxObj":Ljava/lang/Object;
    .end local v8    # "lastIndex":I
    .end local v13    # "parentClassName":Ljava/lang/String;
    .end local v15    # "parentName":Ljava/lang/String;
    .end local v17    # "typeName":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 247
    .local v6, "e":Ljava/lang/Exception;
    new-instance v18, Lcom/alibaba/fastjson/JSONException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "create instance error, class "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18

    .line 210
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v4    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local p2    # "type":Ljava/lang/reflect/Type;
    :cond_a
    :try_start_4
    new-instance v18, Lcom/alibaba/fastjson/JSONException;

    const-string v19, "can\'t create non-static inner class instance."

    invoke-direct/range {v18 .. v19}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 235
    .end local p2    # "type":Ljava/lang/reflect/Type;
    .restart local v5    # "ctxObj":Ljava/lang/Object;
    .restart local v8    # "lastIndex":I
    .restart local v12    # "param":Ljava/lang/Object;
    .restart local v13    # "parentClassName":Ljava/lang/String;
    .restart local v15    # "parentName":Ljava/lang/String;
    .restart local v17    # "typeName":Ljava/lang/String;
    :cond_b
    move-object v12, v5

    goto :goto_3

    .line 242
    .end local v12    # "param":Ljava/lang/Object;
    :cond_c
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v12, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v11

    .restart local v11    # "object":Ljava/lang/Object;
    goto/16 :goto_1

    .line 256
    .end local v4    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v5    # "ctxObj":Ljava/lang/Object;
    .end local v8    # "lastIndex":I
    .end local v13    # "parentClassName":Ljava/lang/String;
    .end local v15    # "parentName":Ljava/lang/String;
    .end local v17    # "typeName":Ljava/lang/String;
    .restart local v7    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :catch_2
    move-exception v6

    .line 257
    .restart local v6    # "e":Ljava/lang/Exception;
    new-instance v18, Lcom/alibaba/fastjson/JSONException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "create instance error, class "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18

    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_d
    move-object/from16 v16, v11

    .line 263
    goto/16 :goto_0
.end method

.method public createInstance(Ljava/util/Map;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 24
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
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

    .prologue
    .line 1143
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v15, 0x0

    .line 1145
    .local v15, "object":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    move-object/from16 v21, v0

    if-nez v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    move-object/from16 v21, v0

    if-nez v21, :cond_3

    .line 1146
    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v15

    .line 1148
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_0
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1149
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1150
    .local v13, "key":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    .line 1152
    .local v20, "value":Ljava/lang/Object;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatch(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v8

    .line 1153
    .local v8, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-eqz v8, :cond_0

    .line 1157
    iget-object v9, v8, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1158
    .local v9, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v0, v9, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    move-object/from16 v17, v0

    .line 1159
    .local v17, "paramType":Ljava/lang/reflect/Type;
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v20

    .line 1161
    move-object/from16 v0, v20

    invoke-virtual {v8, v15, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1164
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v9    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v13    # "key":Ljava/lang/String;
    .end local v17    # "paramType":Ljava/lang/reflect/Type;
    .end local v20    # "value":Ljava/lang/Object;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildMethod:Ljava/lang/reflect/Method;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    .line 1167
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildMethod:Ljava/lang/reflect/Method;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v15, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .local v4, "builtObj":Ljava/lang/Object;
    move-object v15, v4

    .line 1244
    .end local v4    # "builtObj":Ljava/lang/Object;
    .end local v15    # "object":Ljava/lang/Object;
    :cond_2
    :goto_1
    return-object v15

    .line 1168
    .restart local v15    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v5

    .line 1169
    .local v5, "e":Ljava/lang/Exception;
    new-instance v21, Lcom/alibaba/fastjson/JSONException;

    const-string v22, "build object error"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v21

    .line 1179
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v10, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1180
    .local v10, "fieldInfoList":[Lcom/alibaba/fastjson/util/FieldInfo;
    array-length v0, v10

    move/from16 v19, v0

    .line 1181
    .local v19, "size":I
    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 1182
    .local v18, "params":[Ljava/lang/Object;
    const/4 v14, 0x0

    .line 1183
    .local v14, "missFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    move/from16 v0, v19

    if-ge v11, v0, :cond_e

    .line 1184
    aget-object v9, v10, v11

    .line 1185
    .restart local v9    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v0, v9, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 1187
    .local v16, "param":Ljava/lang/Object;
    if-nez v16, :cond_6

    .line 1188
    iget-object v7, v9, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 1189
    .local v7, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v21, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-ne v7, v0, :cond_7

    .line 1190
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 1206
    .end local v16    # "param":Ljava/lang/Object;
    :cond_4
    :goto_3
    if-nez v14, :cond_5

    .line 1207
    new-instance v14, Ljava/util/HashMap;

    .end local v14    # "missFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 1209
    .restart local v14    # "missFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_5
    iget-object v0, v9, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    .end local v7    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    aput-object v16, v18, v11

    .line 1183
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1191
    .restart local v7    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v16    # "param":Ljava/lang/Object;
    :cond_7
    sget-object v21, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-ne v7, v0, :cond_8

    .line 1192
    const-wide/16 v22, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .local v16, "param":Ljava/lang/Long;
    goto :goto_3

    .line 1193
    .local v16, "param":Ljava/lang/Object;
    :cond_8
    sget-object v21, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-ne v7, v0, :cond_9

    .line 1194
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v16

    .local v16, "param":Ljava/lang/Short;
    goto :goto_3

    .line 1195
    .local v16, "param":Ljava/lang/Object;
    :cond_9
    sget-object v21, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-ne v7, v0, :cond_a

    .line 1196
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v16

    .local v16, "param":Ljava/lang/Byte;
    goto :goto_3

    .line 1197
    .local v16, "param":Ljava/lang/Object;
    :cond_a
    sget-object v21, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-ne v7, v0, :cond_b

    .line 1198
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    .local v16, "param":Ljava/lang/Float;
    goto :goto_3

    .line 1199
    .local v16, "param":Ljava/lang/Object;
    :cond_b
    sget-object v21, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-ne v7, v0, :cond_c

    .line 1200
    const-wide/16 v22, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    .local v16, "param":Ljava/lang/Double;
    goto :goto_3

    .line 1201
    .local v16, "param":Ljava/lang/Object;
    :cond_c
    sget-object v21, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-ne v7, v0, :cond_d

    .line 1202
    const/16 v21, 0x30

    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v16

    .local v16, "param":Ljava/lang/Character;
    goto :goto_3

    .line 1203
    .local v16, "param":Ljava/lang/Object;
    :cond_d
    sget-object v21, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-ne v7, v0, :cond_4

    .line 1204
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .local v16, "param":Ljava/lang/Boolean;
    goto :goto_3

    .line 1214
    .end local v7    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v16    # "param":Ljava/lang/Boolean;
    :cond_e
    if-eqz v14, :cond_10

    .line 1215
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_f
    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_10

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1216
    .restart local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1217
    .restart local v13    # "key":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    .line 1219
    .restart local v20    # "value":Ljava/lang/Object;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatch(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v8

    .line 1220
    .restart local v8    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-eqz v8, :cond_f

    .line 1221
    iget-object v0, v8, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 1222
    .local v12, "index":Ljava/lang/Integer;
    if-eqz v12, :cond_f

    .line 1223
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v22

    aput-object v20, v18, v22

    goto :goto_4

    .line 1229
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v12    # "index":Ljava/lang/Integer;
    .end local v13    # "key":Ljava/lang/String;
    .end local v20    # "value":Ljava/lang/Object;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    move-object/from16 v21, v0

    if-eqz v21, :cond_11

    .line 1231
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v15

    goto/16 :goto_1

    .line 1232
    :catch_1
    move-exception v5

    .line 1233
    .restart local v5    # "e":Ljava/lang/Exception;
    new-instance v21, Lcom/alibaba/fastjson/JSONException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "create instance error, "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    move-object/from16 v23, v0

    .line 1234
    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v21

    .line 1236
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    .line 1238
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v15

    goto/16 :goto_1

    .line 1239
    :catch_2
    move-exception v5

    .line 1240
    .restart local v5    # "e":Ljava/lang/Exception;
    new-instance v21, Lcom/alibaba/fastjson/JSONException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "create factory method error, "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v21
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

    .prologue
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

    .prologue
    const/4 v4, 0x0

    .line 271
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I[I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I[I)Ljava/lang/Object;
    .locals 62
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

    .prologue
    .line 362
    const-class v4, Lcom/alibaba/fastjson/JSON;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_0

    const-class v4, Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_1

    .line 363
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v43, p4

    .line 896
    .end local p4    # "object":Ljava/lang/Object;
    .local v43, "object":Ljava/lang/Object;
    :goto_0
    return-object v20

    .line 366
    .end local v43    # "object":Ljava/lang/Object;
    .restart local p4    # "object":Ljava/lang/Object;
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object/from16 v38, v0

    check-cast v38, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    .line 367
    .local v38, "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v16

    .line 369
    .local v16, "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    invoke-virtual/range {v38 .. v38}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v55

    .line 370
    .local v55, "token":I
    const/16 v4, 0x8

    move/from16 v0, v55

    if-ne v0, v4, :cond_2

    .line 371
    const/16 v4, 0x10

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 372
    const/16 v20, 0x0

    move-object/from16 v43, p4

    .end local p4    # "object":Ljava/lang/Object;
    .restart local v43    # "object":Ljava/lang/Object;
    goto :goto_0

    .line 375
    .end local v43    # "object":Ljava/lang/Object;
    .restart local p4    # "object":Ljava/lang/Object;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v17

    .line 376
    .local v17, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    if-eqz p4, :cond_3

    if-eqz v17, :cond_3

    .line 377
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object/from16 v17, v0

    .line 379
    :cond_3
    const/4 v15, 0x0

    .line 382
    .local v15, "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    const/4 v9, 0x0

    .line 384
    .local v9, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v4, 0xd

    move/from16 v0, v55

    if-ne v0, v4, :cond_6

    .line 385
    const/16 v4, 0x10

    :try_start_0
    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 386
    if-nez p4, :cond_4

    .line 387
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p4

    .line 898
    :cond_4
    if-eqz v15, :cond_5

    .line 899
    move-object/from16 v0, p4

    iput-object v0, v15, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 901
    :cond_5
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    move-object/from16 v43, p4

    .end local p4    # "object":Ljava/lang/Object;
    .restart local v43    # "object":Ljava/lang/Object;
    move-object/from16 v20, p4

    .line 389
    goto :goto_0

    .line 392
    .end local v43    # "object":Ljava/lang/Object;
    .restart local p4    # "object":Ljava/lang/Object;
    :cond_6
    const/16 v4, 0xe

    move/from16 v0, v55

    if-ne v0, v4, :cond_a

    .line 393
    :try_start_1
    sget-object v4, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v4, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v39, v0

    .line 394
    .local v39, "mask":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->parserFeatures:I

    and-int v4, v4, v39

    if-nez v4, :cond_7

    sget-object v4, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    .line 395
    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v4

    if-nez v4, :cond_7

    and-int v4, p5, v39

    if-eqz v4, :cond_9

    :cond_7
    const/16 v36, 0x1

    .line 398
    .local v36, "isSupportArrayToBean":Z
    :goto_1
    if-eqz v36, :cond_a

    .line 399
    invoke-virtual/range {p0 .. p4}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialzeArrayMapping(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v20

    .line 898
    if-eqz v15, :cond_8

    .line 899
    move-object/from16 v0, p4

    iput-object v0, v15, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 901
    :cond_8
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    move-object/from16 v43, p4

    .line 399
    .end local p4    # "object":Ljava/lang/Object;
    .restart local v43    # "object":Ljava/lang/Object;
    goto/16 :goto_0

    .line 395
    .end local v36    # "isSupportArrayToBean":Z
    .end local v43    # "object":Ljava/lang/Object;
    .restart local p4    # "object":Ljava/lang/Object;
    :cond_9
    const/16 v36, 0x0

    goto :goto_1

    .line 403
    .end local v39    # "mask":I
    :cond_a
    const/16 v4, 0xc

    move/from16 v0, v55

    if-eq v0, v4, :cond_17

    const/16 v4, 0x10

    move/from16 v0, v55

    if-eq v0, v4, :cond_17

    .line 404
    :try_start_2
    invoke-virtual/range {v38 .. v38}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isBlankInput()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-eqz v4, :cond_c

    .line 405
    const/16 v20, 0x0

    .line 898
    if-eqz v15, :cond_b

    .line 899
    move-object/from16 v0, p4

    iput-object v0, v15, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 901
    :cond_b
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    move-object/from16 v43, p4

    .line 405
    .end local p4    # "object":Ljava/lang/Object;
    .restart local v43    # "object":Ljava/lang/Object;
    goto/16 :goto_0

    .line 408
    .end local v43    # "object":Ljava/lang/Object;
    .restart local p4    # "object":Ljava/lang/Object;
    :cond_c
    const/4 v4, 0x4

    move/from16 v0, v55

    if-ne v0, v4, :cond_11

    .line 409
    :try_start_3
    invoke-virtual/range {v38 .. v38}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v54

    .line 410
    .local v54, "strVal":Ljava/lang/String;
    invoke-virtual/range {v54 .. v54}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_e

    .line 411
    invoke-virtual/range {v38 .. v38}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 412
    const/16 v20, 0x0

    .line 898
    if-eqz v15, :cond_d

    .line 899
    move-object/from16 v0, p4

    iput-object v0, v15, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 901
    :cond_d
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    move-object/from16 v43, p4

    .line 412
    .end local p4    # "object":Ljava/lang/Object;
    .restart local v43    # "object":Ljava/lang/Object;
    goto/16 :goto_0

    .line 415
    .end local v43    # "object":Ljava/lang/Object;
    .restart local p4    # "object":Ljava/lang/Object;
    :cond_e
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    if-eqz v4, :cond_12

    .line 416
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONType;->seeAlso()[Ljava/lang/Class;

    move-result-object v5

    array-length v7, v5

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v7, :cond_12

    aget-object v52, v5, v4

    .line 417
    .local v52, "seeAlsoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v8, Ljava/lang/Enum;

    move-object/from16 v0, v52

    invoke-virtual {v8, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v8

    if-eqz v8, :cond_10

    .line 419
    :try_start_5
    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v20

    .line 898
    .local v20, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    if-eqz v15, :cond_f

    .line 899
    move-object/from16 v0, p4

    iput-object v0, v15, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 901
    :cond_f
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    move-object/from16 v43, p4

    .line 420
    .end local p4    # "object":Ljava/lang/Object;
    .restart local v43    # "object":Ljava/lang/Object;
    goto/16 :goto_0

    .line 421
    .end local v20    # "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    .end local v43    # "object":Ljava/lang/Object;
    .restart local p4    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v8

    .line 416
    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 427
    .end local v52    # "seeAlsoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v54    # "strVal":Ljava/lang/String;
    :cond_11
    const/4 v4, 0x5

    move/from16 v0, v55

    if-ne v0, v4, :cond_12

    .line 428
    :try_start_6
    invoke-virtual/range {v38 .. v38}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCalendar()Ljava/util/Calendar;

    .line 431
    :cond_12
    const/16 v4, 0xe

    move/from16 v0, v55

    if-ne v0, v4, :cond_14

    invoke-virtual/range {v38 .. v38}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCurrent()C

    move-result v4

    const/16 v5, 0x5d

    if-ne v4, v5, :cond_14

    .line 432
    invoke-virtual/range {v38 .. v38}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 433
    invoke-virtual/range {v38 .. v38}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 434
    const/16 v20, 0x0

    .line 898
    if-eqz v15, :cond_13

    .line 899
    move-object/from16 v0, p4

    iput-object v0, v15, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 901
    :cond_13
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    move-object/from16 v43, p4

    .line 434
    .end local p4    # "object":Ljava/lang/Object;
    .restart local v43    # "object":Ljava/lang/Object;
    goto/16 :goto_0

    .line 437
    .end local v43    # "object":Ljava/lang/Object;
    .restart local p4    # "object":Ljava/lang/Object;
    :cond_14
    :try_start_7
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "syntax error, expect {, actual "

    .line 438
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 439
    invoke-virtual/range {v38 .. v38}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->tokenName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ", pos "

    .line 440
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 441
    invoke-virtual/range {v38 .. v38}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 443
    .local v12, "buf":Ljava/lang/StringBuffer;
    move-object/from16 v0, p3

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_15

    .line 444
    const-string v4, ", fieldName "

    .line 445
    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 446
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 449
    :cond_15
    const-string v4, ", fastjson-version "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "1.2.44"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 451
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 898
    .end local v12    # "buf":Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v15, :cond_16

    .line 899
    move-object/from16 v0, p4

    iput-object v0, v15, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 901
    :cond_16
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    throw v4

    .line 454
    :cond_17
    :try_start_8
    move-object/from16 v0, p1

    iget v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_18

    .line 455
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 458
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeKey:Ljava/lang/String;

    move-object/from16 v56, v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 459
    .local v56, "typeKey":Ljava/lang/String;
    const/16 v27, 0x0

    .local v27, "fieldIndex":I
    move-object/from16 v33, v9

    .line 460
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v33, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_4
    const/4 v6, 0x0

    .line 461
    .local v6, "key":Ljava/lang/String;
    const/16 v25, 0x0

    .line 462
    .local v25, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    const/16 v28, 0x0

    .line 463
    .local v28, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    const/16 v24, 0x0

    .line 464
    .local v24, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v23, 0x0

    .line 465
    .local v23, "feildAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v4, v4

    move/from16 v0, v27

    if-ge v0, v4, :cond_19

    .line 466
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v25, v4, v27

    .line 467
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v28, v0

    .line 468
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    move-object/from16 v24, v0

    .line 469
    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v23

    .line 472
    :cond_19
    const/16 v41, 0x0

    .line 473
    .local v41, "matchField":Z
    const/16 v61, 0x0

    .line 475
    .local v61, "valueParsed":Z
    const/16 v31, 0x0

    .line 476
    .local v31, "fieldValue":Ljava/lang/Object;
    if-eqz v25, :cond_1b

    .line 477
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name_chars:[C

    move-object/from16 v42, v0

    .line 478
    .local v42, "name_chars":[C
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-eq v0, v4, :cond_1a

    const-class v4, Ljava/lang/Integer;

    move-object/from16 v0, v24

    if-ne v0, v4, :cond_20

    .line 479
    :cond_1a
    move-object/from16 v0, v38

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldInt([C)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    .line 481
    .local v31, "fieldValue":Ljava/lang/Integer;
    move-object/from16 v0, v38

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v4, :cond_1e

    .line 482
    const/16 v41, 0x1

    .line 483
    const/16 v61, 0x1

    .line 608
    .end local v31    # "fieldValue":Ljava/lang/Integer;
    .end local v42    # "name_chars":[C
    :cond_1b
    :goto_5
    if-nez v41, :cond_53

    .line 609
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v6

    .line 611
    if-nez v6, :cond_3f

    .line 612
    invoke-virtual/range {v38 .. v38}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v55

    .line 613
    const/16 v4, 0xd

    move/from16 v0, v55

    if-ne v0, v4, :cond_3e

    .line 614
    const/16 v4, 0x10

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object/from16 v9, v33

    .line 783
    .end local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_6
    if-nez p4, :cond_75

    .line 784
    if-nez v9, :cond_5f

    .line 785
    :try_start_a
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p4

    .line 786
    if-nez v15, :cond_1c

    .line 787
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v15

    .line 898
    :cond_1c
    if-eqz v15, :cond_1d

    .line 899
    move-object/from16 v0, p4

    iput-object v0, v15, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 901
    :cond_1d
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    move-object/from16 v43, p4

    .end local p4    # "object":Ljava/lang/Object;
    .restart local v43    # "object":Ljava/lang/Object;
    move-object/from16 v20, p4

    .line 789
    goto/16 :goto_0

    .line 484
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v43    # "object":Ljava/lang/Object;
    .restart local v31    # "fieldValue":Ljava/lang/Integer;
    .restart local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v42    # "name_chars":[C
    .restart local p4    # "object":Ljava/lang/Object;
    :cond_1e
    :try_start_b
    move-object/from16 v0, v38

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_1b

    move-object/from16 v9, v33

    .line 459
    .end local v31    # "fieldValue":Ljava/lang/Integer;
    .end local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v42    # "name_chars":[C
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1f
    :goto_7
    add-int/lit8 v27, v27, 0x1

    move-object/from16 v33, v9

    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 487
    .local v31, "fieldValue":Ljava/lang/Object;
    .restart local v42    # "name_chars":[C
    :cond_20
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-eq v0, v4, :cond_21

    const-class v4, Ljava/lang/Long;

    move-object/from16 v0, v24

    if-ne v0, v4, :cond_23

    .line 488
    :cond_21
    move-object/from16 v0, v38

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldLong([C)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    .line 490
    .local v31, "fieldValue":Ljava/lang/Long;
    move-object/from16 v0, v38

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v4, :cond_22

    .line 491
    const/16 v41, 0x1

    .line 492
    const/16 v61, 0x1

    goto :goto_5

    .line 493
    :cond_22
    move-object/from16 v0, v38

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_1b

    move-object/from16 v9, v33

    .line 494
    .end local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_7

    .line 496
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v31, "fieldValue":Ljava/lang/Object;
    .restart local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_23
    const-class v4, Ljava/lang/String;

    move-object/from16 v0, v24

    if-ne v0, v4, :cond_25

    .line 497
    move-object/from16 v0, v38

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldString([C)Ljava/lang/String;

    move-result-object v31

    .line 499
    .local v31, "fieldValue":Ljava/lang/String;
    move-object/from16 v0, v38

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v4, :cond_24

    .line 500
    const/16 v41, 0x1

    .line 501
    const/16 v61, 0x1

    goto/16 :goto_5

    .line 502
    :cond_24
    move-object/from16 v0, v38

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_1b

    move-object/from16 v9, v33

    .line 503
    .end local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_7

    .line 505
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v31, "fieldValue":Ljava/lang/Object;
    .restart local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_25
    const-class v4, Ljava/util/Date;

    move-object/from16 v0, v24

    if-ne v0, v4, :cond_27

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    if-nez v4, :cond_27

    .line 506
    move-object/from16 v0, v38

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldDate([C)Ljava/util/Date;

    move-result-object v31

    .line 508
    .local v31, "fieldValue":Ljava/util/Date;
    move-object/from16 v0, v38

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v4, :cond_26

    .line 509
    const/16 v41, 0x1

    .line 510
    const/16 v61, 0x1

    goto/16 :goto_5

    .line 511
    :cond_26
    move-object/from16 v0, v38

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_1b

    move-object/from16 v9, v33

    .line 512
    .end local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_7

    .line 514
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v31, "fieldValue":Ljava/lang/Object;
    .restart local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_27
    const-class v4, Ljava/math/BigDecimal;

    move-object/from16 v0, v24

    if-ne v0, v4, :cond_29

    .line 515
    move-object/from16 v0, v38

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldDecimal([C)Ljava/math/BigDecimal;

    move-result-object v31

    .line 517
    .local v31, "fieldValue":Ljava/math/BigDecimal;
    move-object/from16 v0, v38

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v4, :cond_28

    .line 518
    const/16 v41, 0x1

    .line 519
    const/16 v61, 0x1

    goto/16 :goto_5

    .line 520
    :cond_28
    move-object/from16 v0, v38

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_1b

    move-object/from16 v9, v33

    .line 521
    .end local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_7

    .line 523
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v31, "fieldValue":Ljava/lang/Object;
    .restart local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_29
    const-class v4, Ljava/math/BigInteger;

    move-object/from16 v0, v24

    if-ne v0, v4, :cond_2b

    .line 524
    move-object/from16 v0, v38

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldBigInteger([C)Ljava/math/BigInteger;

    move-result-object v31

    .line 526
    .local v31, "fieldValue":Ljava/math/BigInteger;
    move-object/from16 v0, v38

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v4, :cond_2a

    .line 527
    const/16 v41, 0x1

    .line 528
    const/16 v61, 0x1

    goto/16 :goto_5

    .line 529
    :cond_2a
    move-object/from16 v0, v38

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_1b

    move-object/from16 v9, v33

    .line 530
    .end local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_7

    .line 532
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v31, "fieldValue":Ljava/lang/Object;
    .restart local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2b
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-eq v0, v4, :cond_2c

    const-class v4, Ljava/lang/Boolean;

    move-object/from16 v0, v24

    if-ne v0, v4, :cond_2e

    .line 533
    :cond_2c
    move-object/from16 v0, v38

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldBoolean([C)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    .line 535
    .local v31, "fieldValue":Ljava/lang/Boolean;
    move-object/from16 v0, v38

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v4, :cond_2d

    .line 536
    const/16 v41, 0x1

    .line 537
    const/16 v61, 0x1

    goto/16 :goto_5

    .line 538
    :cond_2d
    move-object/from16 v0, v38

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_1b

    move-object/from16 v9, v33

    .line 539
    .end local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_7

    .line 541
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v31, "fieldValue":Ljava/lang/Object;
    .restart local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2e
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-eq v0, v4, :cond_2f

    const-class v4, Ljava/lang/Float;

    move-object/from16 v0, v24

    if-ne v0, v4, :cond_31

    .line 542
    :cond_2f
    move-object/from16 v0, v38

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldFloat([C)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v31

    .line 544
    .local v31, "fieldValue":Ljava/lang/Float;
    move-object/from16 v0, v38

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v4, :cond_30

    .line 545
    const/16 v41, 0x1

    .line 546
    const/16 v61, 0x1

    goto/16 :goto_5

    .line 547
    :cond_30
    move-object/from16 v0, v38

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_1b

    move-object/from16 v9, v33

    .line 548
    .end local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_7

    .line 550
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v31, "fieldValue":Ljava/lang/Object;
    .restart local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_31
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-eq v0, v4, :cond_32

    const-class v4, Ljava/lang/Double;

    move-object/from16 v0, v24

    if-ne v0, v4, :cond_34

    .line 551
    :cond_32
    move-object/from16 v0, v38

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldDouble([C)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v31

    .line 553
    .local v31, "fieldValue":Ljava/lang/Double;
    move-object/from16 v0, v38

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v4, :cond_33

    .line 554
    const/16 v41, 0x1

    .line 555
    const/16 v61, 0x1

    goto/16 :goto_5

    .line 556
    :cond_33
    move-object/from16 v0, v38

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_1b

    move-object/from16 v9, v33

    .line 557
    .end local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_7

    .line 559
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v31, "fieldValue":Ljava/lang/Object;
    .restart local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_34
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->isEnum()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 560
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v4

    instance-of v4, v4, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    if-eqz v4, :cond_37

    if-eqz v23, :cond_35

    .line 561
    invoke-interface/range {v23 .. v23}, Lcom/alibaba/fastjson/annotation/JSONField;->deserializeUsing()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/Void;

    if-ne v4, v5, :cond_37

    .line 563
    :cond_35
    move-object/from16 v0, v25

    instance-of v4, v0, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    if-eqz v4, :cond_1b

    .line 564
    move-object/from16 v0, v25

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    move-object v4, v0

    iget-object v0, v4, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->fieldValueDeserilizer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-object/from16 v32, v0

    .line 565
    .local v32, "fieldValueDeserilizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v42

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->scanEnum(Lcom/alibaba/fastjson/parser/JSONLexerBase;[CLcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)Ljava/lang/Enum;

    move-result-object v31

    .line 567
    .local v31, "fieldValue":Ljava/lang/Enum;
    move-object/from16 v0, v38

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v4, :cond_36

    .line 568
    const/16 v41, 0x1

    .line 569
    const/16 v61, 0x1

    goto/16 :goto_5

    .line 570
    :cond_36
    move-object/from16 v0, v38

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_1b

    move-object/from16 v9, v33

    .line 571
    .end local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_7

    .line 574
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v32    # "fieldValueDeserilizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .local v31, "fieldValue":Ljava/lang/Object;
    .restart local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_37
    const-class v4, [I

    move-object/from16 v0, v24

    if-ne v0, v4, :cond_39

    .line 575
    move-object/from16 v0, v38

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldIntArray([C)[I

    move-result-object v31

    .line 577
    .local v31, "fieldValue":[I
    move-object/from16 v0, v38

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v4, :cond_38

    .line 578
    const/16 v41, 0x1

    .line 579
    const/16 v61, 0x1

    goto/16 :goto_5

    .line 580
    :cond_38
    move-object/from16 v0, v38

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_1b

    move-object/from16 v9, v33

    .line 581
    .end local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_7

    .line 583
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v31, "fieldValue":Ljava/lang/Object;
    .restart local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_39
    const-class v4, [F

    move-object/from16 v0, v24

    if-ne v0, v4, :cond_3b

    .line 584
    move-object/from16 v0, v38

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldFloatArray([C)[F

    move-result-object v31

    .line 586
    .local v31, "fieldValue":[F
    move-object/from16 v0, v38

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v4, :cond_3a

    .line 587
    const/16 v41, 0x1

    .line 588
    const/16 v61, 0x1

    goto/16 :goto_5

    .line 589
    :cond_3a
    move-object/from16 v0, v38

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_1b

    move-object/from16 v9, v33

    .line 590
    .end local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_7

    .line 592
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v31, "fieldValue":Ljava/lang/Object;
    .restart local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3b
    const-class v4, [[F

    move-object/from16 v0, v24

    if-ne v0, v4, :cond_3d

    .line 593
    move-object/from16 v0, v38

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldFloatArray2([C)[[F

    move-result-object v31

    .line 595
    .local v31, "fieldValue":[[F
    move-object/from16 v0, v38

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v4, :cond_3c

    .line 596
    const/16 v41, 0x1

    .line 597
    const/16 v61, 0x1

    goto/16 :goto_5

    .line 598
    :cond_3c
    move-object/from16 v0, v38

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_1b

    move-object/from16 v9, v33

    .line 599
    .end local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_7

    .line 601
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v31, "fieldValue":Ljava/lang/Object;
    .restart local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3d
    move-object/from16 v0, v38

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchField([C)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 602
    const/16 v41, 0x1

    goto/16 :goto_5

    .line 617
    .end local v31    # "fieldValue":Ljava/lang/Object;
    .end local v42    # "name_chars":[C
    :cond_3e
    const/16 v4, 0x10

    move/from16 v0, v55

    if-ne v0, v4, :cond_3f

    .line 618
    sget-object v4, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v4

    if-eqz v4, :cond_3f

    move-object/from16 v9, v33

    .line 619
    .end local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_7

    .line 624
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3f
    const-string v4, "$ref"

    if-ne v4, v6, :cond_4a

    if-eqz v17, :cond_4a

    .line 625
    const/4 v4, 0x4

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextTokenWithColon(I)V

    .line 626
    invoke-virtual/range {v38 .. v38}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v55

    .line 627
    const/4 v4, 0x4

    move/from16 v0, v55

    if-ne v0, v4, :cond_47

    .line 628
    invoke-virtual/range {v38 .. v38}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v49

    .line 629
    .local v49, "ref":Ljava/lang/String;
    const-string v4, "@"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 630
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 p4, v0

    .line 664
    :goto_8
    const/16 v4, 0xd

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 665
    invoke-virtual/range {v38 .. v38}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_48

    .line 666
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "illegal ref"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 898
    .end local v41    # "matchField":Z
    .end local v49    # "ref":Ljava/lang/String;
    .end local v61    # "valueParsed":Z
    :catchall_1
    move-exception v4

    move-object/from16 v9, v33

    .end local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_3

    .line 631
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v41    # "matchField":Z
    .restart local v49    # "ref":Ljava/lang/String;
    .restart local v61    # "valueParsed":Z
    :cond_40
    const-string v4, ".."

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 632
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object/from16 v48, v0

    .line 633
    .local v48, "parentContext":Lcom/alibaba/fastjson/parser/ParseContext;
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v4, :cond_41

    .line 634
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 p4, v0

    goto :goto_8

    .line 636
    :cond_41
    new-instance v4, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    invoke-direct {v4, v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 637
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    goto :goto_8

    .line 639
    .end local v48    # "parentContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_42
    const-string v4, "$"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 640
    move-object/from16 v51, v17

    .line 641
    .local v51, "rootContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :goto_9
    move-object/from16 v0, v51

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v4, :cond_43

    .line 642
    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object/from16 v51, v0

    goto :goto_9

    .line 645
    :cond_43
    move-object/from16 v0, v51

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v4, :cond_44

    .line 646
    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 p4, v0

    goto :goto_8

    .line 648
    :cond_44
    new-instance v4, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-object/from16 v0, v51

    move-object/from16 v1, v49

    invoke-direct {v4, v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 649
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    goto/16 :goto_8

    .line 652
    .end local v51    # "rootContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_45
    move-object/from16 v0, p1

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v50

    .line 653
    .local v50, "refObj":Ljava/lang/Object;
    if-eqz v50, :cond_46

    .line 654
    move-object/from16 p4, v50

    goto/16 :goto_8

    .line 656
    :cond_46
    new-instance v4, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-object/from16 v0, v17

    move-object/from16 v1, v49

    invoke-direct {v4, v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 657
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    goto/16 :goto_8

    .line 661
    .end local v49    # "ref":Ljava/lang/String;
    .end local v50    # "refObj":Ljava/lang/Object;
    :cond_47
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "illegal ref, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v55 .. v55}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 668
    .restart local v49    # "ref":Ljava/lang/String;
    :cond_48
    const/16 v4, 0x10

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 670
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 898
    if-eqz v15, :cond_49

    .line 899
    move-object/from16 v0, p4

    iput-object v0, v15, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 901
    :cond_49
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    move-object/from16 v43, p4

    .end local p4    # "object":Ljava/lang/Object;
    .restart local v43    # "object":Ljava/lang/Object;
    move-object/from16 v20, p4

    .line 672
    goto/16 :goto_0

    .line 675
    .end local v43    # "object":Ljava/lang/Object;
    .end local v49    # "ref":Ljava/lang/String;
    .restart local p4    # "object":Ljava/lang/Object;
    :cond_4a
    if-eqz v56, :cond_4b

    :try_start_c
    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4c

    :cond_4b
    sget-object v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    if-ne v4, v6, :cond_53

    .line 677
    :cond_4c
    const/4 v4, 0x4

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextTokenWithColon(I)V

    .line 678
    invoke-virtual/range {v38 .. v38}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_52

    .line 679
    invoke-virtual/range {v38 .. v38}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v58

    .line 680
    .local v58, "typeName":Ljava/lang/String;
    const/16 v4, 0x10

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 682
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    move-object/from16 v0, v58

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    sget-object v4, Lcom/alibaba/fastjson/parser/Feature;->IgnoreAutoType:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 683
    :cond_4d
    invoke-virtual/range {v38 .. v38}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_7b

    .line 684
    invoke-virtual/range {v38 .. v38}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    move-object/from16 v9, v33

    .line 685
    .end local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_6

    .line 691
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v58

    invoke-virtual {v0, v1, v4, v2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-result-object v18

    .line 692
    .local v18, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    const/16 v60, 0x0

    .line 694
    .local v60, "userType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v18, :cond_4f

    .line 695
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v22

    .line 696
    .local v22, "expectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {v38 .. v38}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getFeatures()I

    move-result v4

    move-object/from16 v0, v16

    move-object/from16 v1, v58

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v60

    .line 697
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v4

    move-object/from16 v0, v60

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v18

    .line 700
    .end local v22    # "expectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4f
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v60

    move-object/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v59

    .line 701
    .local v59, "typedObject":Ljava/lang/Object;
    move-object/from16 v0, v18

    instance-of v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v4, :cond_50

    .line 702
    move-object/from16 v0, v18

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-object/from16 v37, v0

    .line 703
    .local v37, "javaBeanDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    if-eqz v56, :cond_50

    .line 704
    move-object/from16 v0, v37

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v57

    .line 705
    .local v57, "typeKeyFieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 898
    .end local v37    # "javaBeanDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    .end local v57    # "typeKeyFieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_50
    if-eqz v15, :cond_51

    .line 899
    move-object/from16 v0, p4

    iput-object v0, v15, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 901
    :cond_51
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    move-object/from16 v43, p4

    .end local p4    # "object":Ljava/lang/Object;
    .restart local v43    # "object":Ljava/lang/Object;
    move-object/from16 v20, v59

    .line 708
    goto/16 :goto_0

    .line 710
    .end local v18    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v43    # "object":Ljava/lang/Object;
    .end local v58    # "typeName":Ljava/lang/String;
    .end local v59    # "typedObject":Ljava/lang/Object;
    .end local v60    # "userType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p4    # "object":Ljava/lang/Object;
    :cond_52
    :try_start_d
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "syntax error"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 715
    :cond_53
    if-nez p4, :cond_7a

    if-nez v33, :cond_7a

    .line 716
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p4

    .line 717
    if-nez p4, :cond_79

    .line 718
    new-instance v9, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v4, v4

    invoke-direct {v9, v4}, Ljava/util/HashMap;-><init>(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 720
    .end local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_a
    :try_start_e
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v15

    .line 721
    if-nez p6, :cond_54

    .line 722
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v4, v4

    div-int/lit8 v4, v4, 0x20

    add-int/lit8 v4, v4, 0x1

    new-array v0, v4, [I

    move-object/from16 p6, v0

    .line 726
    :cond_54
    :goto_b
    if-eqz v41, :cond_5b

    .line 727
    if-nez v61, :cond_56

    .line 728
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    .line 769
    :cond_55
    invoke-virtual/range {v38 .. v38}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    const/16 v5, 0x10

    if-eq v4, v5, :cond_1f

    .line 773
    invoke-virtual/range {v38 .. v38}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_5d

    .line 774
    const/16 v4, 0x10

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    goto/16 :goto_6

    .line 730
    :cond_56
    if-nez p4, :cond_59

    .line 731
    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v9, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    :cond_57
    :goto_c
    if-eqz p6, :cond_58

    .line 746
    div-int/lit8 v34, v27, 0x20

    .line 747
    .local v34, "flagIndex":I
    rem-int/lit8 v11, v27, 0x20

    .line 748
    .local v11, "bitIndex":I
    aget v4, p6, v34

    const/4 v5, 0x1

    shr-int/2addr v5, v11

    or-int/2addr v4, v5

    aput v4, p6, v34

    .line 751
    .end local v11    # "bitIndex":I
    .end local v34    # "flagIndex":I
    :cond_58
    move-object/from16 v0, v38

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_55

    goto/16 :goto_6

    .line 732
    :cond_59
    if-nez v31, :cond_5a

    .line 733
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-eq v0, v4, :cond_57

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-eq v0, v4, :cond_57

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-eq v0, v4, :cond_57

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-eq v0, v4, :cond_57

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-eq v0, v4, :cond_57

    .line 739
    move-object/from16 v0, v25

    move-object/from16 v1, p4

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_c

    .line 742
    :cond_5a
    move-object/from16 v0, v25

    move-object/from16 v1, p4

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_c

    :cond_5b
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p4

    move-object/from16 v8, p2

    move-object/from16 v10, p6

    .line 756
    invoke-virtual/range {v4 .. v10}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;[I)Z

    move-result v40

    .line 757
    .local v40, "match":Z
    if-nez v40, :cond_5c

    .line 758
    invoke-virtual/range {v38 .. v38}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_1f

    .line 759
    invoke-virtual/range {v38 .. v38}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    goto/16 :goto_6

    .line 764
    :cond_5c
    invoke-virtual/range {v38 .. v38}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    const/16 v5, 0x11

    if-ne v4, v5, :cond_55

    .line 765
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "syntax error, unexpect token \':\'"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 778
    .end local v40    # "match":Z
    :cond_5d
    invoke-virtual/range {v38 .. v38}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    const/16 v5, 0x12

    if-eq v4, v5, :cond_5e

    invoke-virtual/range {v38 .. v38}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1f

    .line 779
    :cond_5e
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "syntax error, unexpect token "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v38 .. v38}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v7

    invoke-static {v7}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 792
    :cond_5f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;

    move-object/from16 v46, v0

    .line 794
    .local v46, "paramNames":[Ljava/lang/String;
    if-eqz v46, :cond_68

    .line 795
    move-object/from16 v0, v46

    array-length v4, v0

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v47, v0

    .line 796
    .local v47, "params":[Ljava/lang/Object;
    const/16 v35, 0x0

    .local v35, "i":I
    :goto_d
    move-object/from16 v0, v46

    array-length v4, v0

    move/from16 v0, v35

    if-ge v0, v4, :cond_71

    .line 797
    aget-object v45, v46, v35

    .line 799
    .local v45, "paramName":Ljava/lang/String;
    move-object/from16 v0, v45

    invoke-interface {v9, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    .line 800
    .local v44, "param":Ljava/lang/Object;
    if-nez v44, :cond_60

    .line 801
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

    aget-object v30, v4, v35

    .line 802
    .local v30, "fieldType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v28, v4, v35

    .line 803
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v30

    if-ne v0, v4, :cond_61

    .line 804
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v44

    .line 822
    .end local v30    # "fieldType":Ljava/lang/reflect/Type;
    .end local v44    # "param":Ljava/lang/Object;
    :cond_60
    :goto_e
    aput-object v44, v47, v35

    .line 796
    add-int/lit8 v35, v35, 0x1

    goto :goto_d

    .line 805
    .restart local v30    # "fieldType":Ljava/lang/reflect/Type;
    .restart local v44    # "param":Ljava/lang/Object;
    :cond_61
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v30

    if-ne v0, v4, :cond_62

    .line 806
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v44

    .local v44, "param":Ljava/lang/Short;
    goto :goto_e

    .line 807
    .local v44, "param":Ljava/lang/Object;
    :cond_62
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v30

    if-ne v0, v4, :cond_63

    .line 808
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    .local v44, "param":Ljava/lang/Integer;
    goto :goto_e

    .line 809
    .local v44, "param":Ljava/lang/Object;
    :cond_63
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v30

    if-ne v0, v4, :cond_64

    .line 810
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v44

    .local v44, "param":Ljava/lang/Long;
    goto :goto_e

    .line 811
    .local v44, "param":Ljava/lang/Object;
    :cond_64
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v30

    if-ne v0, v4, :cond_65

    .line 812
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v44

    .local v44, "param":Ljava/lang/Float;
    goto :goto_e

    .line 813
    .local v44, "param":Ljava/lang/Object;
    :cond_65
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v30

    if-ne v0, v4, :cond_66

    .line 814
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v44

    .local v44, "param":Ljava/lang/Double;
    goto :goto_e

    .line 815
    .local v44, "param":Ljava/lang/Object;
    :cond_66
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v30

    if-ne v0, v4, :cond_67

    .line 816
    sget-object v44, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .local v44, "param":Ljava/lang/Boolean;
    goto :goto_e

    .line 817
    .local v44, "param":Ljava/lang/Object;
    :cond_67
    const-class v4, Ljava/lang/String;

    move-object/from16 v0, v30

    if-ne v0, v4, :cond_60

    move-object/from16 v0, v28

    iget v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->parserFeatures:I

    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v5, v5, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_60

    .line 819
    const-string v44, ""

    .local v44, "param":Ljava/lang/String;
    goto :goto_e

    .line 825
    .end local v30    # "fieldType":Ljava/lang/reflect/Type;
    .end local v35    # "i":I
    .end local v44    # "param":Ljava/lang/String;
    .end local v45    # "paramName":Ljava/lang/String;
    .end local v47    # "params":[Ljava/lang/Object;
    :cond_68
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v29, v0

    .line 826
    .local v29, "fieldInfoList":[Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v53, v0

    .line 827
    .local v53, "size":I
    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    .line 828
    .restart local v47    # "params":[Ljava/lang/Object;
    const/16 v35, 0x0

    .restart local v35    # "i":I
    :goto_f
    move/from16 v0, v35

    move/from16 v1, v53

    if-ge v0, v1, :cond_71

    .line 829
    aget-object v28, v29, v35

    .line 830
    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    .line 831
    .local v44, "param":Ljava/lang/Object;
    if-nez v44, :cond_69

    .line 832
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    move-object/from16 v30, v0

    .line 833
    .restart local v30    # "fieldType":Ljava/lang/reflect/Type;
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v30

    if-ne v0, v4, :cond_6a

    .line 834
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v44

    .line 852
    .end local v30    # "fieldType":Ljava/lang/reflect/Type;
    .end local v44    # "param":Ljava/lang/Object;
    :cond_69
    :goto_10
    aput-object v44, v47, v35

    .line 828
    add-int/lit8 v35, v35, 0x1

    goto :goto_f

    .line 835
    .restart local v30    # "fieldType":Ljava/lang/reflect/Type;
    .restart local v44    # "param":Ljava/lang/Object;
    :cond_6a
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v30

    if-ne v0, v4, :cond_6b

    .line 836
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v44

    .local v44, "param":Ljava/lang/Short;
    goto :goto_10

    .line 837
    .local v44, "param":Ljava/lang/Object;
    :cond_6b
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v30

    if-ne v0, v4, :cond_6c

    .line 838
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    .local v44, "param":Ljava/lang/Integer;
    goto :goto_10

    .line 839
    .local v44, "param":Ljava/lang/Object;
    :cond_6c
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v30

    if-ne v0, v4, :cond_6d

    .line 840
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v44

    .local v44, "param":Ljava/lang/Long;
    goto :goto_10

    .line 841
    .local v44, "param":Ljava/lang/Object;
    :cond_6d
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v30

    if-ne v0, v4, :cond_6e

    .line 842
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v44

    .local v44, "param":Ljava/lang/Float;
    goto :goto_10

    .line 843
    .local v44, "param":Ljava/lang/Object;
    :cond_6e
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v30

    if-ne v0, v4, :cond_6f

    .line 844
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v44

    .local v44, "param":Ljava/lang/Double;
    goto :goto_10

    .line 845
    .local v44, "param":Ljava/lang/Object;
    :cond_6f
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v30

    if-ne v0, v4, :cond_70

    .line 846
    sget-object v44, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .local v44, "param":Ljava/lang/Boolean;
    goto :goto_10

    .line 847
    .local v44, "param":Ljava/lang/Object;
    :cond_70
    const-class v4, Ljava/lang/String;

    move-object/from16 v0, v30

    if-ne v0, v4, :cond_69

    move-object/from16 v0, v28

    iget v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->parserFeatures:I

    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v5, v5, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_69

    .line 849
    const-string v44, ""

    .local v44, "param":Ljava/lang/String;
    goto :goto_10

    .line 856
    .end local v29    # "fieldInfoList":[Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v30    # "fieldType":Ljava/lang/reflect/Type;
    .end local v44    # "param":Ljava/lang/String;
    .end local v53    # "size":I
    :cond_71
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v4, :cond_73

    .line 858
    :try_start_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-result-object p4

    .line 864
    if-eqz v46, :cond_74

    .line 865
    :try_start_10
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_72
    :goto_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_74

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map$Entry;

    .line 866
    .local v21, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v26

    .line 867
    .local v26, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-eqz v26, :cond_72

    .line 868
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v26

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_11

    .line 859
    .end local v21    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v26    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :catch_1
    move-exception v19

    .line 860
    .local v19, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create instance error, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 861
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-direct {v4, v5, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 872
    .end local v19    # "e":Ljava/lang/Exception;
    :cond_73
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-eqz v4, :cond_74

    .line 874
    :try_start_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    move-object/from16 v0, v47

    invoke-virtual {v4, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    move-result-object p4

    .line 880
    :cond_74
    :try_start_12
    move-object/from16 v0, p4

    iput-object v0, v15, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 883
    .end local v35    # "i":I
    .end local v46    # "paramNames":[Ljava/lang/String;
    .end local v47    # "params":[Ljava/lang/Object;
    :cond_75
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v13, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildMethod:Ljava/lang/reflect/Method;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 884
    .local v13, "buildMethod":Ljava/lang/reflect/Method;
    if-nez v13, :cond_77

    .line 898
    if-eqz v15, :cond_76

    .line 899
    move-object/from16 v0, p4

    iput-object v0, v15, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 901
    :cond_76
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    move-object/from16 v43, p4

    .end local p4    # "object":Ljava/lang/Object;
    .restart local v43    # "object":Ljava/lang/Object;
    move-object/from16 v20, p4

    .line 885
    goto/16 :goto_0

    .line 875
    .end local v13    # "buildMethod":Ljava/lang/reflect/Method;
    .end local v43    # "object":Ljava/lang/Object;
    .restart local v35    # "i":I
    .restart local v46    # "paramNames":[Ljava/lang/String;
    .restart local v47    # "params":[Ljava/lang/Object;
    .restart local p4    # "object":Ljava/lang/Object;
    :catch_2
    move-exception v19

    .line 876
    .restart local v19    # "e":Ljava/lang/Exception;
    :try_start_13
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create factory method error, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-direct {v4, v5, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 891
    .end local v19    # "e":Ljava/lang/Exception;
    .end local v35    # "i":I
    .end local v46    # "paramNames":[Ljava/lang/String;
    .end local v47    # "params":[Ljava/lang/Object;
    .restart local v13    # "buildMethod":Ljava/lang/reflect/Method;
    :cond_77
    const/4 v4, 0x0

    :try_start_14
    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, p4

    invoke-virtual {v13, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    move-result-object v14

    .line 898
    .local v14, "builtObj":Ljava/lang/Object;
    if-eqz v15, :cond_78

    .line 899
    move-object/from16 v0, p4

    iput-object v0, v15, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 901
    :cond_78
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    move-object/from16 v43, p4

    .end local p4    # "object":Ljava/lang/Object;
    .restart local v43    # "object":Ljava/lang/Object;
    move-object/from16 v20, v14

    .line 896
    goto/16 :goto_0

    .line 892
    .end local v14    # "builtObj":Ljava/lang/Object;
    .end local v43    # "object":Ljava/lang/Object;
    .restart local p4    # "object":Ljava/lang/Object;
    :catch_3
    move-exception v19

    .line 893
    .restart local v19    # "e":Ljava/lang/Exception;
    :try_start_15
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "build object error"

    move-object/from16 v0, v19

    invoke-direct {v4, v5, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v13    # "buildMethod":Ljava/lang/reflect/Method;
    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_79
    move-object/from16 v9, v33

    .end local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_a

    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_7a
    move-object/from16 v9, v33

    .end local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_b

    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_7b
    move-object/from16 v9, v33

    .end local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_7
.end method

.method public deserialzeArrayMapping(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
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

    .prologue
    .line 276
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 277
    .local v7, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v13

    const/16 v16, 0xe

    move/from16 v0, v16

    if-eq v13, v0, :cond_0

    .line 278
    new-instance v13, Lcom/alibaba/fastjson/JSONException;

    const-string v16, "error"

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 281
    :cond_0
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p4

    .line 283
    const/4 v6, 0x0

    .local v6, "i":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v12, v13

    .local v12, "size":I
    :goto_0
    if-ge v6, v12, :cond_e

    .line 284
    add-int/lit8 v13, v12, -0x1

    if-ne v6, v13, :cond_1

    const/16 v11, 0x5d

    .line 285
    .local v11, "seperator":C
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v5, v13, v6

    .line 286
    .local v5, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iget-object v13, v5, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v4, v13, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 287
    .local v4, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v4, v13, :cond_2

    .line 288
    invoke-interface {v7, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanInt(C)I

    move-result v14

    .line 289
    .local v14, "value":I
    move-object/from16 v0, p4

    invoke-virtual {v5, v0, v14}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;I)V

    .line 283
    .end local v14    # "value":I
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 284
    .end local v4    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v11    # "seperator":C
    :cond_1
    const/16 v11, 0x2c

    goto :goto_1

    .line 290
    .restart local v4    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v11    # "seperator":C
    :cond_2
    const-class v13, Ljava/lang/String;

    if-ne v4, v13, :cond_3

    .line 291
    invoke-interface {v7, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString(C)Ljava/lang/String;

    move-result-object v14

    .line 292
    .local v14, "value":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-virtual {v5, v0, v14}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 293
    .end local v14    # "value":Ljava/lang/String;
    :cond_3
    sget-object v13, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v4, v13, :cond_4

    .line 294
    invoke-interface {v7, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLong(C)J

    move-result-wide v14

    .line 295
    .local v14, "value":J
    move-object/from16 v0, p4

    invoke-virtual {v5, v0, v14, v15}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;J)V

    goto :goto_2

    .line 296
    .end local v14    # "value":J
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Class;->isEnum()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 297
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v2

    .line 300
    .local v2, "ch":C
    const/16 v13, 0x22

    if-eq v2, v13, :cond_5

    const/16 v13, 0x6e

    if-ne v2, v13, :cond_6

    .line 301
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v13

    invoke-interface {v7, v4, v13, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanEnum(Ljava/lang/Class;Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/Enum;

    move-result-object v14

    .line 311
    .local v14, "value":Ljava/lang/Enum;
    :goto_3
    move-object/from16 v0, p4

    invoke-virtual {v5, v0, v14}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 302
    .end local v14    # "value":Ljava/lang/Enum;
    :cond_6
    const/16 v13, 0x30

    if-lt v2, v13, :cond_7

    const/16 v13, 0x39

    if-gt v2, v13, :cond_7

    .line 303
    invoke-interface {v7, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanInt(C)I

    move-result v10

    .local v10, "ordinal":I
    move-object v13, v5

    .line 305
    check-cast v13, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->getFieldValueDeserilizer(Lcom/alibaba/fastjson/parser/ParserConfig;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    .line 306
    .local v3, "enumDeser":Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;
    invoke-virtual {v3, v10}, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->valueOf(I)Ljava/lang/Enum;

    move-result-object v14

    .line 307
    .restart local v14    # "value":Ljava/lang/Enum;
    goto :goto_3

    .line 308
    .end local v3    # "enumDeser":Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;
    .end local v10    # "ordinal":I
    .end local v14    # "value":Ljava/lang/Enum;
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->scanEnum(Lcom/alibaba/fastjson/parser/JSONLexer;C)Ljava/lang/Enum;

    move-result-object v14

    .restart local v14    # "value":Ljava/lang/Enum;
    goto :goto_3

    .line 312
    .end local v2    # "ch":C
    .end local v14    # "value":Ljava/lang/Enum;
    :cond_8
    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v4, v13, :cond_9

    .line 313
    invoke-interface {v7, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanBoolean(C)Z

    move-result v14

    .line 314
    .local v14, "value":Z
    move-object/from16 v0, p4

    invoke-virtual {v5, v0, v14}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Z)V

    goto :goto_2

    .line 315
    .end local v14    # "value":Z
    :cond_9
    sget-object v13, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v4, v13, :cond_a

    .line 316
    invoke-interface {v7, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFloat(C)F

    move-result v14

    .line 317
    .local v14, "value":F
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-virtual {v5, v0, v13}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 318
    .end local v14    # "value":F
    :cond_a
    sget-object v13, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v4, v13, :cond_b

    .line 319
    invoke-interface {v7, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanDouble(C)D

    move-result-wide v14

    .line 320
    .local v14, "value":D
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-virtual {v5, v0, v13}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 321
    .end local v14    # "value":D
    :cond_b
    const-class v13, Ljava/util/Date;

    if-ne v4, v13, :cond_c

    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v13

    const/16 v16, 0x31

    move/from16 v0, v16

    if-ne v13, v0, :cond_c

    .line 322
    invoke-interface {v7, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLong(C)J

    move-result-wide v8

    .line 323
    .local v8, "longValue":J
    new-instance v13, Ljava/util/Date;

    invoke-direct {v13, v8, v9}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, p4

    invoke-virtual {v5, v0, v13}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 324
    .end local v8    # "longValue":J
    :cond_c
    const-class v13, Ljava/math/BigDecimal;

    if-ne v4, v13, :cond_d

    .line 325
    invoke-interface {v7, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanDecimal(C)Ljava/math/BigDecimal;

    move-result-object v14

    .line 326
    .local v14, "value":Ljava/math/BigDecimal;
    move-object/from16 v0, p4

    invoke-virtual {v5, v0, v14}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 328
    .end local v14    # "value":Ljava/math/BigDecimal;
    :cond_d
    const/16 v13, 0xe

    invoke-interface {v7, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 329
    iget-object v13, v5, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v13, v13, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    iget-object v0, v5, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 330
    .local v14, "value":Ljava/lang/Object;
    move-object/from16 v0, p4

    invoke-virtual {v5, v0, v14}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 332
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v13

    const/16 v16, 0xf

    move/from16 v0, v16

    if-ne v13, v0, :cond_f

    .line 340
    .end local v4    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v11    # "seperator":C
    .end local v14    # "value":Ljava/lang/Object;
    :cond_e
    const/16 v13, 0x10

    invoke-interface {v7, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 342
    return-object p4

    .line 336
    .restart local v4    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v11    # "seperator":C
    .restart local v14    # "value":Ljava/lang/Object;
    :cond_f
    const/16 v13, 0x5d

    if-ne v11, v13, :cond_10

    const/16 v13, 0xf

    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v13}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->check(Lcom/alibaba/fastjson/parser/JSONLexer;I)V

    goto/16 :goto_2

    :cond_10
    const/16 v13, 0x10

    goto :goto_4
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 1136
    const/16 v0, 0xc

    return v0
.end method

.method public getFieldDeserializer(J)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 11
    .param p1, "hash"    # J

    .prologue
    const/4 v6, 0x0

    const/4 v10, -0x1

    .line 121
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArray:[J

    if-nez v7, :cond_1

    .line 122
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v7, v7

    new-array v0, v7, [J

    .line 123
    .local v0, "hashArray":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v7, v7

    if-ge v1, v7, :cond_0

    .line 124
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v7, v7, v1

    iget-object v7, v7, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-static {v7}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v0, v1

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->sort([J)V

    .line 127
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArray:[J

    .line 130
    .end local v0    # "hashArray":[J
    .end local v1    # "i":I
    :cond_1
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArray:[J

    invoke-static {v7, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v4

    .line 131
    .local v4, "pos":I
    if-gez v4, :cond_3

    .line 153
    :cond_2
    :goto_1
    return-object v6

    .line 135
    :cond_3
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArrayMapping:[S

    if-nez v7, :cond_6

    .line 136
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArray:[J

    array-length v7, v7

    new-array v2, v7, [S

    .line 137
    .local v2, "mapping":[S
    invoke-static {v2, v10}, Ljava/util/Arrays;->fill([SS)V

    .line 138
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v7, v7

    if-ge v1, v7, :cond_5

    .line 139
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArray:[J

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v8, v8, v1

    iget-object v8, v8, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v8, v8, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 140
    invoke-static {v8}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v8

    .line 139
    invoke-static {v7, v8, v9}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v3

    .line 141
    .local v3, "p":I
    if-ltz v3, :cond_4

    .line 142
    int-to-short v7, v1

    aput-short v7, v2, v3

    .line 138
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 145
    .end local v3    # "p":I
    :cond_5
    iput-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArrayMapping:[S

    .line 148
    .end local v1    # "i":I
    .end local v2    # "mapping":[S
    :cond_6
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArrayMapping:[S

    aget-short v5, v7, v4

    .line 149
    .local v5, "setterIndex":I
    if-eq v5, v10, :cond_2

    .line 150
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v6, v6, v5

    goto :goto_1
.end method

.method public getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
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

    .prologue
    const/4 v5, 0x0

    .line 86
    if-nez p1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-object v5

    .line 90
    :cond_1
    const/4 v3, 0x0

    .line 91
    .local v3, "low":I
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v6, v6

    add-int/lit8 v2, v6, -0x1

    .line 93
    .local v2, "high":I
    :goto_1
    if-gt v3, v2, :cond_4

    .line 94
    add-int v6, v3, v2

    ushr-int/lit8 v4, v6, 0x1

    .line 96
    .local v4, "mid":I
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v6, v6, v4

    iget-object v6, v6, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v1, v6, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 98
    .local v1, "fieldName":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 100
    .local v0, "cmp":I
    if-gez v0, :cond_2

    .line 101
    add-int/lit8 v3, v4, 0x1

    goto :goto_1

    .line 102
    :cond_2
    if-lez v0, :cond_3

    .line 103
    add-int/lit8 v2, v4, -0x1

    goto :goto_1

    .line 105
    :cond_3
    invoke-static {v4, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->isSetFlag(I[I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 109
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v5, v5, v4

    goto :goto_0

    .line 113
    .end local v0    # "cmp":I
    .end local v1    # "fieldName":Ljava/lang/String;
    .end local v4    # "mid":I
    :cond_4
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->alterNameFieldDeserializers:Ljava/util/Map;

    if-eqz v6, :cond_0

    .line 114
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->alterNameFieldDeserializers:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    goto :goto_0
.end method

.method public getFieldType(I)Ljava/lang/reflect/Type;
    .locals 1
    .param p1, "ordinal"    # I

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method protected getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    .locals 10
    .param p1, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p2, "beanInfo"    # Lcom/alibaba/fastjson/util/JavaBeanInfo;
    .param p3, "typeName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1267
    iget-object v6, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    if-nez v6, :cond_1

    move-object v2, v5

    .line 1288
    :cond_0
    :goto_0
    return-object v2

    .line 1271
    :cond_1
    iget-object v6, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-interface {v6}, Lcom/alibaba/fastjson/annotation/JSONType;->seeAlso()[Ljava/lang/Class;

    move-result-object v7

    array-length v8, v7

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v8, :cond_3

    aget-object v0, v7, v6

    .line 1272
    .local v0, "seeAlsoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    .line 1273
    .local v1, "seeAlsoDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v9, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v9, :cond_2

    move-object v2, v1

    .line 1274
    check-cast v2, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .line 1276
    .local v2, "seeAlsoJavaBeanDeser":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    iget-object v3, v2, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    .line 1277
    .local v3, "subBeanInfo":Lcom/alibaba/fastjson/util/JavaBeanInfo;
    iget-object v9, v3, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    invoke-virtual {v9, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1281
    invoke-virtual {p0, p1, v3, p3}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-result-object v4

    .line 1282
    .local v4, "subSeeAlso":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    if-eqz v4, :cond_2

    move-object v2, v4

    .line 1283
    goto :goto_0

    .line 1271
    .end local v2    # "seeAlsoJavaBeanDeser":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    .end local v3    # "subBeanInfo":Lcom/alibaba/fastjson/util/JavaBeanInfo;
    .end local v4    # "subSeeAlso":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v0    # "seeAlsoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "seeAlsoDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_3
    move-object v2, v5

    .line 1288
    goto :goto_0
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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
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
    .locals 34
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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[I)Z"
        }
    .end annotation

    .prologue
    .line 931
    .local p5, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object/from16 v31, v0

    .line 933
    .local v31, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    sget-object v6, Lcom/alibaba/fastjson/parser/Feature;->DisableFieldSmartMatch:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v6, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v17, v0

    .line 935
    .local v17, "disableFieldSmartMatchMask":I
    move-object/from16 v0, v31

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(I)Z

    move-result v6

    if-nez v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget v6, v6, Lcom/alibaba/fastjson/util/JavaBeanInfo;->parserFeatures:I

    and-int v6, v6, v17

    if-eqz v6, :cond_3

    .line 936
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v21

    .line 941
    .local v21, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :goto_0
    sget-object v6, Lcom/alibaba/fastjson/parser/Feature;->SupportNonPublicField:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v6, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v32, v0

    .line 942
    .local v32, "mask":I
    if-nez v21, :cond_8

    .line 943
    invoke-interface/range {v31 .. v32}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(I)Z

    move-result v6

    if-nez v6, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget v6, v6, Lcom/alibaba/fastjson/util/JavaBeanInfo;->parserFeatures:I

    and-int v6, v6, v32

    if-eqz v6, :cond_8

    .line 945
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    if-nez v6, :cond_7

    .line 946
    new-instance v19, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v6, 0x1

    const/high16 v7, 0x3f400000    # 0.75f

    const/4 v8, 0x1

    move-object/from16 v0, v19

    invoke-direct {v0, v6, v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 947
    .local v19, "extraFieldDeserializers":Ljava/util/concurrent/ConcurrentHashMap;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    .local v14, "c":Ljava/lang/Class;
    :goto_1
    if-eqz v14, :cond_6

    const-class v6, Ljava/lang/Object;

    if-eq v14, v6, :cond_6

    .line 948
    invoke-virtual {v14}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v28

    .line 949
    .local v28, "fields":[Ljava/lang/reflect/Field;
    move-object/from16 v0, v28

    array-length v7, v0

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v7, :cond_5

    aget-object v10, v28, v6

    .line 950
    .local v10, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v24

    .line 951
    .local v24, "fieldName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 949
    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 938
    .end local v10    # "field":Ljava/lang/reflect/Field;
    .end local v14    # "c":Ljava/lang/Class;
    .end local v19    # "extraFieldDeserializers":Ljava/util/concurrent/ConcurrentHashMap;
    .end local v21    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v24    # "fieldName":Ljava/lang/String;
    .end local v28    # "fields":[Ljava/lang/reflect/Field;
    .end local v32    # "mask":I
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatch(Ljava/lang/String;[I)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v21

    .restart local v21    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    goto :goto_0

    .line 954
    .restart local v10    # "field":Ljava/lang/reflect/Field;
    .restart local v14    # "c":Ljava/lang/Class;
    .restart local v19    # "extraFieldDeserializers":Ljava/util/concurrent/ConcurrentHashMap;
    .restart local v24    # "fieldName":Ljava/lang/String;
    .restart local v28    # "fields":[Ljava/lang/reflect/Field;
    .restart local v32    # "mask":I
    :cond_4
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v23

    .line 955
    .local v23, "fieldModifiers":I
    and-int/lit8 v8, v23, 0x10

    if-nez v8, :cond_2

    and-int/lit8 v8, v23, 0x8

    if-nez v8, :cond_2

    .line 958
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 947
    .end local v10    # "field":Ljava/lang/reflect/Field;
    .end local v23    # "fieldModifiers":I
    .end local v24    # "fieldName":Ljava/lang/String;
    :cond_5
    invoke-virtual {v14}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v14

    goto :goto_1

    .line 961
    .end local v28    # "fields":[Ljava/lang/reflect/Field;
    :cond_6
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    .line 964
    .end local v14    # "c":Ljava/lang/Class;
    .end local v19    # "extraFieldDeserializers":Ljava/util/concurrent/ConcurrentHashMap;
    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 965
    .local v16, "deserOrField":Ljava/lang/Object;
    if-eqz v16, :cond_8

    .line 966
    move-object/from16 v0, v16

    instance-of v6, v0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    if-eqz v6, :cond_9

    move-object/from16 v21, v16

    .line 967
    check-cast v21, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 978
    .end local v16    # "deserOrField":Ljava/lang/Object;
    :cond_8
    :goto_4
    if-nez v21, :cond_11

    .line 979
    sget-object v6, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v31

    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 980
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setter not found, class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", property "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6

    .restart local v16    # "deserOrField":Ljava/lang/Object;
    :cond_9
    move-object/from16 v10, v16

    .line 969
    check-cast v10, Ljava/lang/reflect/Field;

    .line 970
    .restart local v10    # "field":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v10, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 971
    new-instance v5, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v6, p2

    invoke-direct/range {v5 .. v13}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    .line 972
    .local v5, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    new-instance v21, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    .end local v21    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    move-object/from16 v0, v21

    invoke-direct {v0, v6, v7, v5}, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 973
    .restart local v21    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-interface {v6, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 983
    .end local v5    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v10    # "field":Ljava/lang/reflect/Field;
    .end local v16    # "deserOrField":Ljava/lang/Object;
    :cond_a
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v8, v7

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v8, :cond_10

    aget-object v20, v7, v6

    .line 984
    .local v20, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 985
    .restart local v5    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-boolean v9, v5, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z

    if-eqz v9, :cond_f

    move-object/from16 v0, v20

    instance-of v9, v0, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    if-eqz v9, :cond_f

    .line 987
    iget-object v9, v5, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-eqz v9, :cond_e

    move-object/from16 v15, v20

    .line 988
    check-cast v15, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    .line 989
    .local v15, "defaultFieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v9

    invoke-virtual {v15, v9}, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->getFieldValueDeserilizer(Lcom/alibaba/fastjson/parser/ParserConfig;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v27

    .line 990
    .local v27, "fieldValueDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    move-object/from16 v0, v27

    instance-of v9, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v9, :cond_c

    move-object/from16 v30, v27

    .line 991
    check-cast v30, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .line 992
    .local v30, "javaBeanFieldValueDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v33

    .line 993
    .local v33, "unwrappedFieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-eqz v33, :cond_f

    .line 996
    :try_start_0
    iget-object v6, v5, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    .line 997
    .local v25, "fieldObject":Ljava/lang/Object;
    if-nez v25, :cond_b

    .line 998
    check-cast v27, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .end local v27    # "fieldValueDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    iget-object v6, v5, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v25

    .line 999
    move-object/from16 v0, v20

    move-object/from16 v1, p3

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1001
    :cond_b
    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->getFastMatchToken()I

    move-result v6

    move-object/from16 v0, v31

    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 1002
    move-object/from16 v0, v33

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1003
    const/4 v6, 0x1

    .line 1063
    .end local v5    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v15    # "defaultFieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;
    .end local v20    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v25    # "fieldObject":Ljava/lang/Object;
    .end local v30    # "javaBeanFieldValueDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    .end local v33    # "unwrappedFieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :goto_6
    return v6

    .line 1004
    .restart local v5    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v15    # "defaultFieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;
    .restart local v20    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v30    # "javaBeanFieldValueDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    .restart local v33    # "unwrappedFieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :catch_0
    move-exception v18

    .line 1005
    .local v18, "e":Ljava/lang/Exception;
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    const-string v7, "parse unwrapped field error."

    move-object/from16 v0, v18

    invoke-direct {v6, v7, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 1008
    .end local v18    # "e":Ljava/lang/Exception;
    .end local v30    # "javaBeanFieldValueDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    .end local v33    # "unwrappedFieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v27    # "fieldValueDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_c
    move-object/from16 v0, v27

    instance-of v9, v0, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    if-eqz v9, :cond_f

    move-object/from16 v30, v27

    .line 1009
    check-cast v30, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    .line 1013
    .local v30, "javaBeanFieldValueDeserializer":Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;
    :try_start_1
    iget-object v6, v5, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Map;

    .line 1014
    .local v25, "fieldObject":Ljava/util/Map;
    if-nez v25, :cond_d

    .line 1015
    iget-object v6, v5, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->createMap(Ljava/lang/reflect/Type;)Ljava/util/Map;

    move-result-object v25

    .line 1016
    move-object/from16 v0, v20

    move-object/from16 v1, p3

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1019
    :cond_d
    invoke-interface/range {v31 .. v31}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon()V

    .line 1020
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    .line 1021
    .local v26, "fieldValue":Ljava/lang/Object;
    move-object/from16 v0, v25

    move-object/from16 v1, p2

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1025
    const/4 v6, 0x1

    goto :goto_6

    .line 1022
    .end local v25    # "fieldObject":Ljava/util/Map;
    .end local v26    # "fieldValue":Ljava/lang/Object;
    :catch_1
    move-exception v18

    .line 1023
    .restart local v18    # "e":Ljava/lang/Exception;
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    const-string v7, "parse unwrapped field error."

    move-object/from16 v0, v18

    invoke-direct {v6, v7, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 1027
    .end local v15    # "defaultFieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;
    .end local v18    # "e":Ljava/lang/Exception;
    .end local v27    # "fieldValueDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v30    # "javaBeanFieldValueDeserializer":Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;
    :cond_e
    iget-object v9, v5, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v9, v9

    const/4 v11, 0x2

    if-ne v9, v11, :cond_f

    .line 1028
    invoke-interface/range {v31 .. v31}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon()V

    .line 1029
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    .line 1031
    .restart local v26    # "fieldValue":Ljava/lang/Object;
    :try_start_2
    iget-object v6, v5, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    const/4 v8, 0x1

    aput-object v26, v7, v8

    move-object/from16 v0, p3

    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1035
    const/4 v6, 0x1

    goto :goto_6

    .line 1032
    :catch_2
    move-exception v18

    .line 1033
    .restart local v18    # "e":Ljava/lang/Exception;
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    const-string v7, "parse unwrapped field error."

    move-object/from16 v0, v18

    invoke-direct {v6, v7, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 983
    .end local v18    # "e":Ljava/lang/Exception;
    .end local v26    # "fieldValue":Ljava/lang/Object;
    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    .line 1040
    .end local v5    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v20    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_10
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseExtra(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1042
    const/4 v6, 0x0

    goto/16 :goto_6

    .line 1045
    :cond_11
    const/16 v22, -0x1

    .line 1046
    .local v22, "fieldIndex":I
    const/16 v29, 0x0

    .local v29, "i":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v6, v6

    move/from16 v0, v29

    if-ge v0, v6, :cond_12

    .line 1047
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v6, v6, v29

    move-object/from16 v0, v21

    if-ne v6, v0, :cond_13

    .line 1048
    move/from16 v22, v29

    .line 1052
    :cond_12
    const/4 v6, -0x1

    move/from16 v0, v22

    if-eq v0, v6, :cond_14

    if-eqz p6, :cond_14

    const-string v6, "_"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 1053
    move/from16 v0, v22

    move-object/from16 v1, p6

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->isSetFlag(I[I)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 1054
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseExtra(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1055
    const/4 v6, 0x0

    goto/16 :goto_6

    .line 1046
    :cond_13
    add-int/lit8 v29, v29, 0x1

    goto :goto_7

    .line 1059
    :cond_14
    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->getFastMatchToken()I

    move-result v6

    move-object/from16 v0, v31

    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 1061
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    .line 1063
    const/4 v6, 0x1

    goto/16 :goto_6
.end method

.method protected parseRest(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 7
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "instance"    # Ljava/lang/Object;
    .param p5, "features"    # I

    .prologue
    .line 1252
    const/4 v0, 0x0

    new-array v6, v0, [I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->parseRest(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I[I)Ljava/lang/Object;

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

    .prologue
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
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 352
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal enum. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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

    .prologue
    const/4 v1, 0x0

    .line 906
    const/4 v0, 0x0

    .line 907
    .local v0, "enumDeserializer":Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;
    instance-of v4, p3, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    if-eqz v4, :cond_0

    move-object v0, p3

    .line 908
    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    .line 911
    :cond_0
    if-nez v0, :cond_2

    .line 912
    const/4 v4, -0x1

    iput v4, p1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 920
    :cond_1
    :goto_0
    return-object v1

    .line 916
    :cond_2
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldSymbol([C)J

    move-result-wide v2

    .line 917
    .local v2, "enumNameHashCode":J
    iget v4, p1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v4, :cond_1

    .line 918
    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->getEnumByHashCode(J)Ljava/lang/Enum;

    move-result-object v1

    goto :goto_0
.end method

.method public smartMatch(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1067
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatch(Ljava/lang/String;[I)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v0

    return-object v0
.end method

.method public smartMatch(Ljava/lang/String;[I)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 18
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "setFlags"    # [I

    .prologue
    .line 1071
    if-nez p1, :cond_1

    .line 1072
    const/4 v4, 0x0

    .line 1132
    :cond_0
    :goto_0
    return-object v4

    .line 1075
    :cond_1
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;[I)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v4

    .line 1077
    .local v4, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-nez v4, :cond_0

    .line 1078
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64_lower(Ljava/lang/String;)J

    move-result-wide v12

    .line 1079
    .local v12, "smartKeyHash":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArray:[J

    if-nez v14, :cond_3

    .line 1080
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v14, v14

    new-array v6, v14, [J

    .line 1081
    .local v6, "hashArray":[J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v14, v14

    if-ge v7, v14, :cond_2

    .line 1082
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v14, v14, v7

    iget-object v14, v14, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v14, v14, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-static {v14}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64_lower(Ljava/lang/String;)J

    move-result-wide v14

    aput-wide v14, v6, v7

    .line 1081
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1084
    :cond_2
    invoke-static {v6}, Ljava/util/Arrays;->sort([J)V

    .line 1085
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArray:[J

    .line 1089
    .end local v6    # "hashArray":[J
    .end local v7    # "i":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArray:[J

    invoke-static {v14, v12, v13}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v11

    .line 1090
    .local v11, "pos":I
    const/4 v8, 0x0

    .line 1091
    .local v8, "is":Z
    if-gez v11, :cond_4

    const-string v14, "is"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1092
    const/4 v14, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64_lower(Ljava/lang/String;)J

    move-result-wide v12

    .line 1093
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArray:[J

    invoke-static {v14, v12, v13}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v11

    .line 1096
    :cond_4
    if-ltz v11, :cond_8

    .line 1097
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArrayMapping:[S

    if-nez v14, :cond_7

    .line 1098
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArray:[J

    array-length v14, v14

    new-array v9, v14, [S

    .line 1099
    .local v9, "mapping":[S
    const/4 v14, -0x1

    invoke-static {v9, v14}, Ljava/util/Arrays;->fill([SS)V

    .line 1100
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v14, v14

    if-ge v7, v14, :cond_6

    .line 1101
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArray:[J

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v15, v15, v7

    iget-object v15, v15, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v15, v15, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 1102
    invoke-static {v15}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64_lower(Ljava/lang/String;)J

    move-result-wide v16

    .line 1101
    move-wide/from16 v0, v16

    invoke-static {v14, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v10

    .line 1103
    .local v10, "p":I
    if-ltz v10, :cond_5

    .line 1104
    int-to-short v14, v7

    aput-short v14, v9, v10

    .line 1100
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1107
    .end local v10    # "p":I
    :cond_6
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArrayMapping:[S

    .line 1110
    .end local v7    # "i":I
    .end local v9    # "mapping":[S
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArrayMapping:[S

    aget-short v2, v14, v11

    .line 1111
    .local v2, "deserIndex":I
    const/4 v14, -0x1

    if-eq v2, v14, :cond_8

    .line 1112
    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->isSetFlag(I[I)Z

    move-result v14

    if-nez v14, :cond_8

    .line 1113
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v4, v14, v2

    .line 1118
    .end local v2    # "deserIndex":I
    :cond_8
    if-eqz v4, :cond_0

    .line 1119
    iget-object v5, v4, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1120
    .local v5, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget v14, v5, Lcom/alibaba/fastjson/util/FieldInfo;->parserFeatures:I

    sget-object v15, Lcom/alibaba/fastjson/parser/Feature;->DisableFieldSmartMatch:Lcom/alibaba/fastjson/parser/Feature;

    iget v15, v15, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v14, v15

    if-eqz v14, :cond_9

    .line 1121
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1124
    :cond_9
    iget-object v3, v5, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 1125
    .local v3, "fieldClass":Ljava/lang/Class;
    if-eqz v8, :cond_0

    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v3, v14, :cond_0

    const-class v14, Ljava/lang/Boolean;

    if-eq v3, v14, :cond_0

    .line 1126
    const/4 v4, 0x0

    goto/16 :goto_0
.end method
