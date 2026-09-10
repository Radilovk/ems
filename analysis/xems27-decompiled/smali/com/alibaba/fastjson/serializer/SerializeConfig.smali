.class public Lcom/alibaba/fastjson/serializer/SerializeConfig;
.super Ljava/lang/Object;
.source "SerializeConfig.java"


# static fields
.field private static awtError:Z

.field public static final globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

.field private static guavaError:Z

.field private static jdk8Error:Z

.field private static jsonnullError:Z

.field private static oracleJdbcError:Z

.field private static springfoxError:Z


# instance fields
.field private asm:Z

.field private asmFactory:Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;

.field private final fieldBased:Z

.field public propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field private final serializers:Lcom/alibaba/fastjson/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson/util/IdentityHashMap<",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/serializer/ObjectSerializer;",
            ">;"
        }
    .end annotation
.end field

.field protected typeKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->awtError:Z

    .line 55
    sput-boolean v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->jdk8Error:Z

    .line 56
    sput-boolean v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->oracleJdbcError:Z

    .line 57
    sput-boolean v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->springfoxError:Z

    .line 58
    sput-boolean v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->guavaError:Z

    .line 59
    sput-boolean v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->jsonnullError:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 249
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;-><init>(I)V

    .line 250
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "tableSize"    # I

    .line 257
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;-><init>(IZ)V

    .line 258
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2
    .param p1, "tableSize"    # I
    .param p2, "fieldBase"    # Z

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-boolean v0, Lcom/alibaba/fastjson/util/ASMUtils;->IS_ANDROID:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asm:Z

    .line 63
    sget-object v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    .line 261
    iput-boolean p2, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->fieldBased:Z

    .line 262
    new-instance v0, Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/util/IdentityHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->serializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    .line 265
    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asm:Z

    if-eqz v0, :cond_0

    .line 266
    new-instance v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asmFactory:Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    :cond_0
    goto :goto_0

    .line 268
    :catchall_0
    move-exception v0

    .line 269
    .local v0, "eror":Ljava/lang/Throwable;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asm:Z

    .line 272
    .end local v0    # "eror":Ljava/lang/Throwable;
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->initSerializers()V

    .line 273
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "fieldBase"    # Z

    .line 253
    const/16 v0, 0x2000

    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;-><init>(IZ)V

    .line 254
    return-void
.end method

.method private final createASMSerializer(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    .locals 6
    .param p1, "beanInfo"    # Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asmFactory:Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->createJavaBeanSerializer(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v0

    .line 81
    .local v0, "serializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 82
    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object v2, v2, v1

    .line 83
    .local v2, "fieldDeser":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    iget-object v3, v2, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 84
    .local v3, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->isEnum()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 85
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v4

    .line 86
    .local v4, "fieldSer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    instance-of v5, v4, Lcom/alibaba/fastjson/serializer/EnumSerializer;

    if-nez v5, :cond_0

    .line 87
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeDirect:Z

    .line 81
    .end local v2    # "fieldDeser":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v3    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "fieldSer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static getGlobalInstance()Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .locals 1

    .line 245
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    return-object v0
.end method

.method private getObjectWriter(Ljava/lang/Class;Z)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .locals 22
    .param p2, "create"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Lcom/alibaba/fastjson/serializer/ObjectSerializer;"
        }
    .end annotation

    .line 402
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->serializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    .line 404
    .local v3, "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    if-nez v3, :cond_3

    .line 406
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 407
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    const-class v4, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;

    invoke-static {v4, v0}, Lcom/alibaba/fastjson/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 408
    .local v5, "o":Ljava/lang/Object;
    instance-of v6, v5, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;

    if-nez v6, :cond_0

    .line 409
    goto :goto_0

    .line 412
    :cond_0
    move-object v6, v5

    check-cast v6, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;

    .line 413
    .local v6, "autowired":Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;
    invoke-interface {v6}, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;->getAutowiredFor()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Type;

    .line 414
    .local v8, "forType":Ljava/lang/reflect/Type;
    invoke-virtual {v1, v8, v6}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    nop

    .end local v8    # "forType":Ljava/lang/reflect/Type;
    goto :goto_1

    .line 416
    .end local v5    # "o":Ljava/lang/Object;
    .end local v6    # "autowired":Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;
    :cond_1
    goto :goto_0

    .line 419
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    :cond_2
    goto :goto_2

    .line 417
    :catch_0
    move-exception v0

    .line 421
    :goto_2
    iget-object v0, v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->serializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    .line 424
    :cond_3
    if-nez v3, :cond_7

    .line 425
    const-class v0, Lcom/alibaba/fastjson/JSON;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 426
    .local v4, "classLoader":Ljava/lang/ClassLoader;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eq v4, v0, :cond_7

    .line 428
    :try_start_1
    const-class v0, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;

    invoke-static {v0, v4}, Lcom/alibaba/fastjson/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 430
    .restart local v5    # "o":Ljava/lang/Object;
    instance-of v6, v5, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;

    if-nez v6, :cond_4

    .line 431
    goto :goto_3

    .line 434
    :cond_4
    move-object v6, v5

    check-cast v6, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;

    .line 435
    .restart local v6    # "autowired":Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;
    invoke-interface {v6}, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;->getAutowiredFor()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Type;

    .line 436
    .restart local v8    # "forType":Ljava/lang/reflect/Type;
    invoke-virtual {v1, v8, v6}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 437
    nop

    .end local v8    # "forType":Ljava/lang/reflect/Type;
    goto :goto_4

    .line 438
    .end local v5    # "o":Ljava/lang/Object;
    .end local v6    # "autowired":Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;
    :cond_5
    goto :goto_3

    .line 441
    :cond_6
    goto :goto_5

    .line 439
    :catch_1
    move-exception v0

    .line 443
    :goto_5
    iget-object v0, v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->serializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    .line 447
    .end local v4    # "classLoader":Ljava/lang/ClassLoader;
    :cond_7
    if-nez v3, :cond_3a

    .line 448
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 451
    .local v4, "className":Ljava/lang/String;
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 452
    sget-object v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->instance:Lcom/alibaba/fastjson/serializer/MapSerializer;

    move-object v3, v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_17

    .line 453
    :cond_8
    const-class v0, Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 454
    sget-object v0, Lcom/alibaba/fastjson/serializer/ListSerializer;->instance:Lcom/alibaba/fastjson/serializer/ListSerializer;

    move-object v3, v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_17

    .line 455
    :cond_9
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 456
    sget-object v0, Lcom/alibaba/fastjson/serializer/CollectionCodec;->instance:Lcom/alibaba/fastjson/serializer/CollectionCodec;

    move-object v3, v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_17

    .line 457
    :cond_a
    const-class v0, Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 458
    sget-object v0, Lcom/alibaba/fastjson/serializer/DateCodec;->instance:Lcom/alibaba/fastjson/serializer/DateCodec;

    move-object v3, v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_17

    .line 459
    :cond_b
    const-class v0, Lcom/alibaba/fastjson/JSONAware;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 460
    sget-object v0, Lcom/alibaba/fastjson/serializer/JSONAwareSerializer;->instance:Lcom/alibaba/fastjson/serializer/JSONAwareSerializer;

    move-object v3, v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_17

    .line 461
    :cond_c
    const-class v0, Lcom/alibaba/fastjson/serializer/JSONSerializable;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 462
    sget-object v0, Lcom/alibaba/fastjson/serializer/JSONSerializableSerializer;->instance:Lcom/alibaba/fastjson/serializer/JSONSerializableSerializer;

    move-object v3, v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_17

    .line 463
    :cond_d
    const-class v0, Lcom/alibaba/fastjson/JSONStreamAware;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 464
    sget-object v0, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    move-object v3, v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_17

    .line 465
    :cond_e
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 466
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {v2, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 467
    .local v0, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->serializeEnumAsJavaBean()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 468
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v5

    move-object v3, v5

    invoke-virtual {v1, v2, v5}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto :goto_6

    .line 470
    :cond_f
    sget-object v5, Lcom/alibaba/fastjson/serializer/EnumSerializer;->instance:Lcom/alibaba/fastjson/serializer/EnumSerializer;

    move-object v3, v5

    invoke-virtual {v1, v2, v5}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 472
    .end local v0    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    :goto_6
    goto/16 :goto_17

    :cond_10
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    move-object v5, v0

    .local v5, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_12

    invoke-virtual {v5}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 473
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {v5, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 474
    .restart local v0    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    if-eqz v0, :cond_11

    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->serializeEnumAsJavaBean()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 475
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v6

    move-object v3, v6

    invoke-virtual {v1, v2, v6}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto :goto_7

    .line 477
    :cond_11
    sget-object v6, Lcom/alibaba/fastjson/serializer/EnumSerializer;->instance:Lcom/alibaba/fastjson/serializer/EnumSerializer;

    move-object v3, v6

    invoke-virtual {v1, v2, v6}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 479
    .end local v0    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    :goto_7
    goto/16 :goto_17

    :cond_12
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 480
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 481
    .local v0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v6

    .line 482
    .local v6, "compObjectSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    new-instance v7, Lcom/alibaba/fastjson/serializer/ArraySerializer;

    invoke-direct {v7, v0, v6}, Lcom/alibaba/fastjson/serializer/ArraySerializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)V

    move-object v3, v7

    invoke-virtual {v1, v2, v7}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 483
    .end local v0    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "compObjectSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    goto/16 :goto_17

    :cond_13
    const-class v0, Ljava/lang/Throwable;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 484
    const/4 v0, 0x0

    iget-object v6, v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    invoke-static {v2, v0, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-result-object v0

    .line 485
    .local v0, "beanInfo":Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    iget v6, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v6, v7

    iput v6, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    .line 486
    new-instance v6, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    invoke-direct {v6, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)V

    move-object v3, v6

    invoke-virtual {v1, v2, v6}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 487
    .end local v0    # "beanInfo":Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    goto/16 :goto_17

    :cond_14
    const-class v0, Ljava/util/TimeZone;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_38

    const-class v0, Ljava/util/Map$Entry;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto/16 :goto_16

    .line 489
    :cond_15
    const-class v0, Ljava/lang/Appendable;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 490
    sget-object v0, Lcom/alibaba/fastjson/serializer/AppendableSerializer;->instance:Lcom/alibaba/fastjson/serializer/AppendableSerializer;

    move-object v3, v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_17

    .line 491
    :cond_16
    const-class v0, Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 492
    sget-object v0, Lcom/alibaba/fastjson/serializer/ToStringSerializer;->instance:Lcom/alibaba/fastjson/serializer/ToStringSerializer;

    move-object v3, v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_17

    .line 493
    :cond_17
    const-class v0, Ljava/util/Enumeration;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 494
    sget-object v0, Lcom/alibaba/fastjson/serializer/EnumerationSerializer;->instance:Lcom/alibaba/fastjson/serializer/EnumerationSerializer;

    move-object v3, v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_17

    .line 495
    :cond_18
    const-class v0, Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_37

    const-class v0, Ljavax/xml/datatype/XMLGregorianCalendar;

    .line 496
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto/16 :goto_15

    .line 498
    :cond_19
    const-class v0, Ljava/sql/Clob;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 499
    sget-object v0, Lcom/alibaba/fastjson/serializer/ClobSeriliazer;->instance:Lcom/alibaba/fastjson/serializer/ClobSeriliazer;

    move-object v3, v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_17

    .line 500
    :cond_1a
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isPath(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 501
    sget-object v0, Lcom/alibaba/fastjson/serializer/ToStringSerializer;->instance:Lcom/alibaba/fastjson/serializer/ToStringSerializer;

    move-object v3, v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_17

    .line 502
    :cond_1b
    const-class v0, Ljava/util/Iterator;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 503
    sget-object v0, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    move-object v3, v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_17

    .line 505
    :cond_1c
    const-string v0, "java.awt."

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_1f

    .line 506
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/AwtCodec;->support(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 509
    sget-boolean v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->awtError:Z

    if-nez v0, :cond_1f

    .line 511
    :try_start_2
    const-string v0, "java.awt.Color"

    const-string v8, "java.awt.Font"

    const-string v9, "java.awt.Point"

    const-string v10, "java.awt.Rectangle"

    filled-new-array {v0, v8, v9, v10}, [Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, "names":[Ljava/lang/String;
    array-length v8, v0

    const/4 v9, 0x0

    :goto_8
    if-ge v9, v8, :cond_1e

    aget-object v10, v0, v9

    .line 518
    .local v10, "name":Ljava/lang/String;
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1d

    .line 519
    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Lcom/alibaba/fastjson/serializer/AwtCodec;->instance:Lcom/alibaba/fastjson/serializer/AwtCodec;

    move-object v3, v9

    invoke-virtual {v1, v8, v9}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 520
    return-object v3

    .line 517
    .end local v10    # "name":Ljava/lang/String;
    :cond_1d
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 526
    .end local v0    # "names":[Ljava/lang/String;
    :cond_1e
    goto :goto_9

    .line 523
    :catchall_0
    move-exception v0

    .line 524
    .local v0, "e":Ljava/lang/Throwable;
    sput-boolean v7, Lcom/alibaba/fastjson/serializer/SerializeConfig;->awtError:Z

    .line 531
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1f
    :goto_9
    sget-boolean v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->jdk8Error:Z

    if-nez v0, :cond_27

    .line 532
    const-string v0, "java.time."

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v8, "java.util.concurrent.atomic.DoubleAdder"

    const-string v9, "java.util.concurrent.atomic.LongAdder"

    const-string v10, "java.util.Optional"

    if-nez v0, :cond_20

    .line 533
    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 534
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 535
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 539
    :cond_20
    :try_start_3
    const-string v11, "java.time.LocalDateTime"

    const-string v12, "java.time.LocalDate"

    const-string v13, "java.time.LocalTime"

    const-string v14, "java.time.ZonedDateTime"

    const-string v15, "java.time.OffsetDateTime"

    const-string v16, "java.time.OffsetTime"

    const-string v17, "java.time.ZoneOffset"

    const-string v18, "java.time.ZoneRegion"

    const-string v19, "java.time.Period"

    const-string v20, "java.time.Duration"

    const-string v21, "java.time.Instant"

    filled-new-array/range {v11 .. v21}, [Ljava/lang/String;

    move-result-object v0

    .line 552
    .local v0, "names":[Ljava/lang/String;
    array-length v11, v0

    const/4 v12, 0x0

    :goto_a
    if-ge v12, v11, :cond_22

    aget-object v13, v0, v12

    .line 553
    .local v13, "name":Ljava/lang/String;
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_21

    .line 554
    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    move-object v3, v9

    invoke-virtual {v1, v8, v9}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 555
    return-object v3

    .line 552
    .end local v13    # "name":Ljava/lang/String;
    :cond_21
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 560
    .end local v0    # "names":[Ljava/lang/String;
    :cond_22
    const-string v0, "java.util.OptionalDouble"

    const-string v11, "java.util.OptionalInt"

    const-string v12, "java.util.OptionalLong"

    filled-new-array {v10, v0, v11, v12}, [Ljava/lang/String;

    move-result-object v0

    .line 566
    .restart local v0    # "names":[Ljava/lang/String;
    array-length v10, v0

    const/4 v11, 0x0

    :goto_b
    if-ge v11, v10, :cond_24

    aget-object v12, v0, v11

    .line 567
    .local v12, "name":Ljava/lang/String;
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_23

    .line 568
    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;

    move-object v3, v9

    invoke-virtual {v1, v8, v9}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 569
    return-object v3

    .line 566
    .end local v12    # "name":Ljava/lang/String;
    :cond_23
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    .line 574
    .end local v0    # "names":[Ljava/lang/String;
    :cond_24
    filled-new-array {v9, v8}, [Ljava/lang/String;

    move-result-object v0

    .line 578
    .restart local v0    # "names":[Ljava/lang/String;
    array-length v8, v0

    const/4 v9, 0x0

    :goto_c
    if-ge v9, v8, :cond_26

    aget-object v10, v0, v9

    .line 579
    .restart local v10    # "name":Ljava/lang/String;
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_25

    .line 580
    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Lcom/alibaba/fastjson/serializer/AdderSerializer;->instance:Lcom/alibaba/fastjson/serializer/AdderSerializer;

    move-object v3, v9

    invoke-virtual {v1, v8, v9}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 581
    return-object v3

    .line 578
    .end local v10    # "name":Ljava/lang/String;
    :cond_25
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 588
    .end local v0    # "names":[Ljava/lang/String;
    :cond_26
    goto :goto_d

    .line 585
    :catchall_1
    move-exception v0

    .line 587
    .local v0, "e":Ljava/lang/Throwable;
    sput-boolean v7, Lcom/alibaba/fastjson/serializer/SerializeConfig;->jdk8Error:Z

    .line 591
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_27
    :goto_d
    sget-boolean v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->oracleJdbcError:Z

    if-nez v0, :cond_2a

    .line 592
    const-string v0, "oracle.sql."

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 594
    :try_start_4
    const-string v0, "oracle.sql.DATE"

    const-string v8, "oracle.sql.TIMESTAMP"

    filled-new-array {v0, v8}, [Ljava/lang/String;

    move-result-object v0

    .line 599
    .local v0, "names":[Ljava/lang/String;
    array-length v8, v0

    const/4 v9, 0x0

    :goto_e
    if-ge v9, v8, :cond_29

    aget-object v10, v0, v9

    .line 600
    .restart local v10    # "name":Ljava/lang/String;
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_28

    .line 601
    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Lcom/alibaba/fastjson/serializer/DateCodec;->instance:Lcom/alibaba/fastjson/serializer/DateCodec;

    move-object v3, v9

    invoke-virtual {v1, v8, v9}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 602
    return-object v3

    .line 599
    .end local v10    # "name":Ljava/lang/String;
    :cond_28
    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    .line 608
    .end local v0    # "names":[Ljava/lang/String;
    :cond_29
    goto :goto_f

    .line 605
    :catchall_2
    move-exception v0

    .line 607
    .local v0, "e":Ljava/lang/Throwable;
    sput-boolean v7, Lcom/alibaba/fastjson/serializer/SerializeConfig;->oracleJdbcError:Z

    .line 611
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2a
    :goto_f
    sget-boolean v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->springfoxError:Z

    if-nez v0, :cond_2b

    .line 612
    const-string v0, "springfox.documentation.spring.web.json.Json"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 614
    :try_start_5
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v8, Lcom/alibaba/fastjson/support/springfox/SwaggerJsonSerializer;->instance:Lcom/alibaba/fastjson/support/springfox/SwaggerJsonSerializer;

    move-object v3, v8

    invoke-virtual {v1, v0, v8}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    .line 616
    return-object v3

    .line 617
    :catch_2
    move-exception v0

    .line 619
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    sput-boolean v7, Lcom/alibaba/fastjson/serializer/SerializeConfig;->springfoxError:Z

    .line 623
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_2b
    sget-boolean v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->guavaError:Z

    if-nez v0, :cond_2e

    .line 624
    const-string v0, "com.google.common.collect."

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 626
    :try_start_6
    const-string v0, "com.google.common.collect.HashMultimap"

    const-string v8, "com.google.common.collect.LinkedListMultimap"

    const-string v9, "com.google.common.collect.ArrayListMultimap"

    const-string v10, "com.google.common.collect.TreeMultimap"

    filled-new-array {v0, v8, v9, v10}, [Ljava/lang/String;

    move-result-object v0

    .line 633
    .local v0, "names":[Ljava/lang/String;
    array-length v8, v0

    const/4 v9, 0x0

    :goto_10
    if-ge v9, v8, :cond_2d

    aget-object v10, v0, v9

    .line 634
    .restart local v10    # "name":Ljava/lang/String;
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2c

    .line 635
    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Lcom/alibaba/fastjson/serializer/GuavaCodec;->instance:Lcom/alibaba/fastjson/serializer/GuavaCodec;

    move-object v3, v9

    invoke-virtual {v1, v8, v9}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_3

    .line 636
    return-object v3

    .line 633
    .end local v10    # "name":Ljava/lang/String;
    :cond_2c
    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    .line 642
    .end local v0    # "names":[Ljava/lang/String;
    :cond_2d
    goto :goto_11

    .line 639
    :catch_3
    move-exception v0

    .line 641
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    sput-boolean v7, Lcom/alibaba/fastjson/serializer/SerializeConfig;->guavaError:Z

    .line 645
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_2e
    :goto_11
    sget-boolean v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->jsonnullError:Z

    if-nez v0, :cond_2f

    const-string v0, "net.sf.json.JSONNull"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2f

    .line 647
    :try_start_7
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v8, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    move-object v3, v8

    invoke-virtual {v1, v0, v8}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_4

    .line 648
    return-object v3

    .line 649
    :catch_4
    move-exception v0

    .line 651
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    sput-boolean v7, Lcom/alibaba/fastjson/serializer/SerializeConfig;->jsonnullError:Z

    .line 655
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_2f
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 656
    .local v0, "interfaces":[Ljava/lang/Class;
    array-length v8, v0

    if-ne v8, v7, :cond_30

    aget-object v8, v0, v6

    invoke-virtual {v8}, Ljava/lang/Class;->isAnnotation()Z

    move-result v8

    if-eqz v8, :cond_30

    .line 657
    sget-object v6, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->instance:Lcom/alibaba/fastjson/serializer/AnnotationSerializer;

    return-object v6

    .line 660
    :cond_30
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isProxy(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_31

    .line 661
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    .line 663
    .local v6, "superClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v7

    .line 664
    .local v7, "superWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    invoke-virtual {v1, v2, v7}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 665
    return-object v7

    .line 668
    .end local v6    # "superClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "superWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_31
    invoke-static/range {p1 .. p1}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_36

    .line 669
    const/4 v8, 0x0

    .line 671
    .local v8, "handlerClass":Ljava/lang/Class;
    array-length v9, v0

    const/4 v10, 0x2

    if-ne v9, v10, :cond_32

    .line 672
    aget-object v6, v0, v7

    .end local v8    # "handlerClass":Ljava/lang/Class;
    .local v6, "handlerClass":Ljava/lang/Class;
    goto :goto_14

    .line 674
    .end local v6    # "handlerClass":Ljava/lang/Class;
    .restart local v8    # "handlerClass":Ljava/lang/Class;
    :cond_32
    array-length v7, v0

    :goto_12
    if-ge v6, v7, :cond_35

    aget-object v9, v0, v6

    .line 675
    .local v9, "proxiedInterface":Ljava/lang/Class;
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "org.springframework.aop."

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_33

    .line 676
    goto :goto_13

    .line 678
    :cond_33
    if-eqz v8, :cond_34

    .line 679
    const/4 v6, 0x0

    .line 680
    .end local v8    # "handlerClass":Ljava/lang/Class;
    .restart local v6    # "handlerClass":Ljava/lang/Class;
    goto :goto_14

    .line 682
    .end local v6    # "handlerClass":Ljava/lang/Class;
    .restart local v8    # "handlerClass":Ljava/lang/Class;
    :cond_34
    move-object v8, v9

    .line 674
    .end local v9    # "proxiedInterface":Ljava/lang/Class;
    :goto_13
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_35
    move-object v6, v8

    .line 686
    .end local v8    # "handlerClass":Ljava/lang/Class;
    .restart local v6    # "handlerClass":Ljava/lang/Class;
    :goto_14
    if-eqz v6, :cond_36

    .line 687
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v7

    .line 688
    .restart local v7    # "superWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    invoke-virtual {v1, v2, v7}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 689
    return-object v7

    .line 693
    .end local v6    # "handlerClass":Ljava/lang/Class;
    .end local v7    # "superWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_36
    if-eqz p2, :cond_39

    .line 694
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v3

    .line 695
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto :goto_17

    .line 497
    .end local v0    # "interfaces":[Ljava/lang/Class;
    :cond_37
    :goto_15
    sget-object v0, Lcom/alibaba/fastjson/serializer/CalendarCodec;->instance:Lcom/alibaba/fastjson/serializer/CalendarCodec;

    move-object v3, v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto :goto_17

    .line 488
    :cond_38
    :goto_16
    sget-object v0, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    move-object v3, v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 699
    .end local v5    # "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_39
    :goto_17
    if-nez v3, :cond_3a

    .line 700
    iget-object v0, v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->serializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    .line 703
    .end local v4    # "className":Ljava/lang/String;
    :cond_3a
    return-object v3
.end method

.method private initSerializers()V
    .locals 2

    .line 276
    const-class v0, Ljava/lang/Boolean;

    sget-object v1, Lcom/alibaba/fastjson/serializer/BooleanCodec;->instance:Lcom/alibaba/fastjson/serializer/BooleanCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 277
    const-class v0, Ljava/lang/Character;

    sget-object v1, Lcom/alibaba/fastjson/serializer/CharacterCodec;->instance:Lcom/alibaba/fastjson/serializer/CharacterCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 278
    const-class v0, Ljava/lang/Byte;

    sget-object v1, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 279
    const-class v0, Ljava/lang/Short;

    sget-object v1, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 280
    const-class v0, Ljava/lang/Integer;

    sget-object v1, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 281
    const-class v0, Ljava/lang/Long;

    sget-object v1, Lcom/alibaba/fastjson/serializer/LongCodec;->instance:Lcom/alibaba/fastjson/serializer/LongCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 282
    const-class v0, Ljava/lang/Float;

    sget-object v1, Lcom/alibaba/fastjson/serializer/FloatCodec;->instance:Lcom/alibaba/fastjson/serializer/FloatCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 283
    const-class v0, Ljava/lang/Double;

    sget-object v1, Lcom/alibaba/fastjson/serializer/DoubleSerializer;->instance:Lcom/alibaba/fastjson/serializer/DoubleSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 284
    const-class v0, Ljava/math/BigDecimal;

    sget-object v1, Lcom/alibaba/fastjson/serializer/BigDecimalCodec;->instance:Lcom/alibaba/fastjson/serializer/BigDecimalCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 285
    const-class v0, Ljava/math/BigInteger;

    sget-object v1, Lcom/alibaba/fastjson/serializer/BigIntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/BigIntegerCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 286
    const-class v0, Ljava/lang/String;

    sget-object v1, Lcom/alibaba/fastjson/serializer/StringCodec;->instance:Lcom/alibaba/fastjson/serializer/StringCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 287
    const-class v0, [B

    sget-object v1, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 288
    const-class v0, [S

    sget-object v1, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 289
    const-class v0, [I

    sget-object v1, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 290
    const-class v0, [J

    sget-object v1, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 291
    const-class v0, [F

    sget-object v1, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 292
    const-class v0, [D

    sget-object v1, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 293
    const-class v0, [Z

    sget-object v1, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 294
    const-class v0, [C

    sget-object v1, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 295
    const-class v0, [Ljava/lang/Object;

    sget-object v1, Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;->instance:Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 296
    const-class v0, Ljava/lang/Class;

    sget-object v1, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 298
    const-class v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 299
    const-class v0, Ljava/util/Currency;

    new-instance v1, Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-direct {v1}, Lcom/alibaba/fastjson/serializer/MiscCodec;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 300
    const-class v0, Ljava/util/TimeZone;

    sget-object v1, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 301
    const-class v0, Ljava/net/InetAddress;

    sget-object v1, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 302
    const-class v0, Ljava/net/Inet4Address;

    sget-object v1, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 303
    const-class v0, Ljava/net/Inet6Address;

    sget-object v1, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 304
    const-class v0, Ljava/net/InetSocketAddress;

    sget-object v1, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 305
    const-class v0, Ljava/io/File;

    sget-object v1, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 306
    const-class v0, Ljava/lang/Appendable;

    sget-object v1, Lcom/alibaba/fastjson/serializer/AppendableSerializer;->instance:Lcom/alibaba/fastjson/serializer/AppendableSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 307
    const-class v0, Ljava/lang/StringBuffer;

    sget-object v1, Lcom/alibaba/fastjson/serializer/AppendableSerializer;->instance:Lcom/alibaba/fastjson/serializer/AppendableSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 308
    const-class v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/fastjson/serializer/AppendableSerializer;->instance:Lcom/alibaba/fastjson/serializer/AppendableSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 309
    const-class v0, Ljava/nio/charset/Charset;

    sget-object v1, Lcom/alibaba/fastjson/serializer/ToStringSerializer;->instance:Lcom/alibaba/fastjson/serializer/ToStringSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 310
    const-class v0, Ljava/util/regex/Pattern;

    sget-object v1, Lcom/alibaba/fastjson/serializer/ToStringSerializer;->instance:Lcom/alibaba/fastjson/serializer/ToStringSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 311
    const-class v0, Ljava/util/Locale;

    sget-object v1, Lcom/alibaba/fastjson/serializer/ToStringSerializer;->instance:Lcom/alibaba/fastjson/serializer/ToStringSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 312
    const-class v0, Ljava/net/URI;

    sget-object v1, Lcom/alibaba/fastjson/serializer/ToStringSerializer;->instance:Lcom/alibaba/fastjson/serializer/ToStringSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 313
    const-class v0, Ljava/net/URL;

    sget-object v1, Lcom/alibaba/fastjson/serializer/ToStringSerializer;->instance:Lcom/alibaba/fastjson/serializer/ToStringSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 314
    const-class v0, Ljava/util/UUID;

    sget-object v1, Lcom/alibaba/fastjson/serializer/ToStringSerializer;->instance:Lcom/alibaba/fastjson/serializer/ToStringSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 317
    const-class v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v1, Lcom/alibaba/fastjson/serializer/AtomicCodec;->instance:Lcom/alibaba/fastjson/serializer/AtomicCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 318
    const-class v0, Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v1, Lcom/alibaba/fastjson/serializer/AtomicCodec;->instance:Lcom/alibaba/fastjson/serializer/AtomicCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 319
    const-class v0, Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v1, Lcom/alibaba/fastjson/serializer/AtomicCodec;->instance:Lcom/alibaba/fastjson/serializer/AtomicCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 320
    const-class v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/alibaba/fastjson/serializer/ReferenceCodec;->instance:Lcom/alibaba/fastjson/serializer/ReferenceCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 321
    const-class v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    sget-object v1, Lcom/alibaba/fastjson/serializer/AtomicCodec;->instance:Lcom/alibaba/fastjson/serializer/AtomicCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 322
    const-class v0, Ljava/util/concurrent/atomic/AtomicLongArray;

    sget-object v1, Lcom/alibaba/fastjson/serializer/AtomicCodec;->instance:Lcom/alibaba/fastjson/serializer/AtomicCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 324
    const-class v0, Ljava/lang/ref/WeakReference;

    sget-object v1, Lcom/alibaba/fastjson/serializer/ReferenceCodec;->instance:Lcom/alibaba/fastjson/serializer/ReferenceCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 325
    const-class v0, Ljava/lang/ref/SoftReference;

    sget-object v1, Lcom/alibaba/fastjson/serializer/ReferenceCodec;->instance:Lcom/alibaba/fastjson/serializer/ReferenceCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 327
    const-class v0, Ljava/util/LinkedList;

    sget-object v1, Lcom/alibaba/fastjson/serializer/CollectionCodec;->instance:Lcom/alibaba/fastjson/serializer/CollectionCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 328
    return-void
.end method


# virtual methods
.method public addFilter(Ljava/lang/Class;Lcom/alibaba/fastjson/serializer/SerializeFilter;)V
    .locals 3
    .param p2, "filter"    # Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/serializer/SerializeFilter;",
            ")V"
        }
    .end annotation

    .line 335
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v0

    .line 337
    .local v0, "serializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    instance-of v1, v0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;

    if-eqz v1, :cond_1

    .line 338
    move-object v1, v0

    check-cast v1, Lcom/alibaba/fastjson/serializer/SerializeFilterable;

    .line 340
    .local v1, "filterable":Lcom/alibaba/fastjson/serializer/SerializeFilterable;
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    if-eq p0, v2, :cond_0

    .line 341
    sget-object v2, Lcom/alibaba/fastjson/serializer/MapSerializer;->instance:Lcom/alibaba/fastjson/serializer/MapSerializer;

    if-ne v1, v2, :cond_0

    .line 342
    new-instance v2, Lcom/alibaba/fastjson/serializer/MapSerializer;

    invoke-direct {v2}, Lcom/alibaba/fastjson/serializer/MapSerializer;-><init>()V

    .line 343
    .local v2, "newMapSer":Lcom/alibaba/fastjson/serializer/MapSerializer;
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 344
    invoke-virtual {v2, p2}, Lcom/alibaba/fastjson/serializer/MapSerializer;->addFilter(Lcom/alibaba/fastjson/serializer/SerializeFilter;)V

    .line 345
    return-void

    .line 349
    .end local v2    # "newMapSer":Lcom/alibaba/fastjson/serializer/MapSerializer;
    :cond_0
    invoke-virtual {v1, p2}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->addFilter(Lcom/alibaba/fastjson/serializer/SerializeFilter;)V

    .line 351
    .end local v1    # "filterable":Lcom/alibaba/fastjson/serializer/SerializeFilterable;
    :cond_1
    return-void
.end method

.method public clearSerializers()V
    .locals 1

    .line 737
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->serializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/IdentityHashMap;->clear()V

    .line 738
    invoke-direct {p0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->initSerializers()V

    .line 739
    return-void
.end method

.method public config(Ljava/lang/Class;Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    .locals 6
    .param p2, "feature"    # Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/serializer/SerializerFeature;",
            "Z)V"
        }
    .end annotation

    .line 357
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;Z)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v0

    .line 359
    .local v0, "serializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    if-nez v0, :cond_1

    .line 360
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    invoke-static {p1, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-result-object v1

    .line 362
    .local v1, "beanInfo":Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    if-eqz p3, :cond_0

    .line 363
    iget v2, v1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    iget v3, p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v2, v3

    iput v2, v1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    goto :goto_0

    .line 365
    :cond_0
    iget v2, v1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    iget v3, p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    not-int v3, v3

    and-int/2addr v2, v3

    iput v2, v1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    .line 368
    :goto_0
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createJavaBeanSerializer(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v0

    .line 370
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 371
    return-void

    .line 374
    .end local v1    # "beanInfo":Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    :cond_1
    instance-of v1, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-eqz v1, :cond_4

    .line 375
    move-object v1, v0

    check-cast v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .line 376
    .local v1, "javaBeanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    iget-object v2, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    .line 378
    .local v2, "beanInfo":Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    iget v3, v2, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    .line 379
    .local v3, "originalFeaturs":I
    if-eqz p3, :cond_2

    .line 380
    iget v4, v2, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    iget v5, p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v4, v5

    iput v4, v2, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    goto :goto_1

    .line 382
    :cond_2
    iget v4, v2, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    iget v5, p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    not-int v5, v5

    and-int/2addr v4, v5

    iput v4, v2, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    .line 385
    :goto_1
    iget v4, v2, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    if-ne v3, v4, :cond_3

    .line 386
    return-void

    .line 389
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 390
    .local v4, "serializerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-eq v4, v5, :cond_4

    .line 391
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createJavaBeanSerializer(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v5

    .line 392
    .local v5, "newSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    invoke-virtual {p0, p1, v5}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 395
    .end local v1    # "javaBeanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    .end local v2    # "beanInfo":Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    .end local v3    # "originalFeaturs":I
    .end local v4    # "serializerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "newSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_4
    return-void
.end method

.method public varargs configEnumAsJavaBean([Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Enum;",
            ">;)V"
        }
    .end annotation

    .line 723
    .local p1, "enumClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<+Ljava/lang/Enum;>;"
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 724
    .local v2, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Enum;>;"
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 723
    .end local v2    # "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Enum;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 726
    :cond_0
    return-void
.end method

.method public createJavaBeanSerializer(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .locals 17
    .param p1, "beanInfo"    # Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    .line 105
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v2, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    .line 107
    .local v3, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    iget-boolean v0, v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asm:Z

    if-eqz v0, :cond_0

    iget-boolean v0, v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->fieldBased:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    .line 109
    .local v5, "asm":Z
    if-eqz v3, :cond_6

    .line 110
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONType;->serializer()Ljava/lang/Class;

    move-result-object v6

    .line 111
    .local v6, "serializerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Void;

    if-eq v6, v0, :cond_2

    .line 113
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 114
    .local v0, "seralizer":Ljava/lang/Object;
    instance-of v7, v0, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    if-eqz v7, :cond_1

    .line 115
    move-object v7, v0

    check-cast v7, Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v7

    .line 119
    .end local v0    # "seralizer":Ljava/lang/Object;
    :cond_1
    goto :goto_1

    .line 117
    :catchall_0
    move-exception v0

    .line 122
    :cond_2
    :goto_1
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONType;->asm()Z

    move-result v0

    if-nez v0, :cond_3

    .line 123
    const/4 v0, 0x0

    move v5, v0

    .line 126
    :cond_3
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v0

    array-length v7, v0

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_6

    aget-object v9, v0, v8

    .line 127
    .local v9, "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    sget-object v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eq v10, v9, :cond_5

    sget-object v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eq v10, v9, :cond_5

    sget-object v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v10, v9, :cond_4

    goto :goto_3

    .line 126
    .end local v9    # "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 130
    .restart local v9    # "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    :cond_5
    :goto_3
    const/4 v5, 0x0

    .line 136
    .end local v6    # "serializerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    :cond_6
    iget-object v6, v2, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->beanType:Ljava/lang/Class;

    .line 137
    .local v6, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, v2, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->beanType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 138
    new-instance v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)V

    return-object v0

    .line 143
    :cond_7
    if-eqz v5, :cond_8

    iget-object v0, v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asmFactory:Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->classLoader:Lcom/alibaba/fastjson/util/ASMClassLoader;

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/util/ASMClassLoader;->isExternalClass(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    const-class v0, Ljava/io/Serializable;

    if-eq v6, v0, :cond_9

    const-class v0, Ljava/lang/Object;

    if-ne v6, v0, :cond_a

    .line 145
    :cond_9
    const/4 v5, 0x0

    .line 148
    :cond_a
    if-eqz v5, :cond_b

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->checkName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 149
    const/4 v5, 0x0

    .line 152
    :cond_b
    if-eqz v5, :cond_c

    iget-object v0, v2, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->beanType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 153
    const/4 v5, 0x0

    .line 156
    :cond_c
    if-eqz v5, :cond_19

    .line 157
    iget-object v0, v2, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v7, v0

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v7, :cond_19

    aget-object v9, v0, v8

    .line 158
    .local v9, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v10, v9, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 159
    .local v10, "field":Ljava/lang/reflect/Field;
    if-eqz v10, :cond_d

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    iget-object v12, v9, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    .line 160
    const/4 v5, 0x0

    .line 161
    goto/16 :goto_c

    .line 164
    :cond_d
    iget-object v11, v9, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 165
    .local v11, "method":Ljava/lang/reflect/Method;
    if-eqz v11, :cond_e

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v12

    iget-object v13, v9, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_e

    .line 166
    const/4 v5, 0x0

    .line 167
    goto/16 :goto_c

    .line 170
    :cond_e
    invoke-virtual {v9}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v12

    .line 172
    .local v12, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-nez v12, :cond_f

    .line 173
    move-object/from16 v16, v0

    goto/16 :goto_9

    .line 176
    :cond_f
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->format()Ljava/lang/String;

    move-result-object v13

    .line 177
    .local v13, "format":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_11

    .line 178
    iget-object v14, v9, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v15, Ljava/lang/String;

    if-ne v14, v15, :cond_10

    const-string v14, "trim"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    goto :goto_5

    .line 181
    :cond_10
    const/4 v5, 0x0

    .line 182
    goto/16 :goto_c

    .line 186
    :cond_11
    :goto_5
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/alibaba/fastjson/util/ASMUtils;->checkName(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_18

    .line 187
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->jsonDirect()Z

    move-result v14

    if-nez v14, :cond_18

    .line 188
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->serializeUsing()Ljava/lang/Class;

    move-result-object v14

    const-class v15, Ljava/lang/Void;

    if-ne v14, v15, :cond_18

    .line 189
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->unwrapped()Z

    move-result v14

    if-eqz v14, :cond_12

    goto :goto_b

    .line 195
    :cond_12
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v14

    array-length v15, v14

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v15, :cond_15

    move-object/from16 v16, v0

    aget-object v0, v14, v4

    .line 196
    .local v0, "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eq v1, v0, :cond_14

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eq v1, v0, :cond_14

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eq v1, v0, :cond_14

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v1, v0, :cond_13

    goto :goto_7

    .line 195
    .end local v0    # "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    :cond_13
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, v16

    goto :goto_6

    .line 200
    .restart local v0    # "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    :cond_14
    :goto_7
    const/4 v5, 0x0

    .line 201
    goto :goto_8

    .line 195
    .end local v0    # "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    :cond_15
    move-object/from16 v16, v0

    .line 205
    :goto_8
    invoke-static {v11}, Lcom/alibaba/fastjson/util/TypeUtils;->isAnnotationPresentOneToMany(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {v11}, Lcom/alibaba/fastjson/util/TypeUtils;->isAnnotationPresentManyToMany(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_a

    .line 157
    .end local v9    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v10    # "field":Ljava/lang/reflect/Field;
    .end local v11    # "method":Ljava/lang/reflect/Method;
    .end local v12    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v13    # "format":Ljava/lang/String;
    :cond_16
    :goto_9
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, v16

    goto/16 :goto_4

    .line 206
    .restart local v9    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v10    # "field":Ljava/lang/reflect/Field;
    .restart local v11    # "method":Ljava/lang/reflect/Method;
    .restart local v12    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v13    # "format":Ljava/lang/String;
    :cond_17
    :goto_a
    const/4 v5, 0x1

    .line 207
    goto :goto_c

    .line 191
    :cond_18
    :goto_b
    const/4 v5, 0x0

    .line 212
    .end local v9    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v10    # "field":Ljava/lang/reflect/Field;
    .end local v11    # "method":Ljava/lang/reflect/Method;
    .end local v12    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v13    # "format":Ljava/lang/String;
    :cond_19
    :goto_c
    if-eqz v5, :cond_1b

    .line 214
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createASMSerializer(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassFormatError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 215
    .local v0, "asmSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    if-eqz v0, :cond_1a

    .line 216
    return-object v0

    .line 215
    .end local v0    # "asmSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_1a
    goto :goto_d

    .line 224
    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 225
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create asm serializer error, class "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 222
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    goto :goto_d

    .line 220
    :catch_1
    move-exception v0

    goto :goto_d

    .line 218
    :catch_2
    move-exception v0

    .line 230
    :cond_1b
    :goto_d
    new-instance v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)V

    return-object v0
.end method

.method public final createJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/alibaba/fastjson/serializer/ObjectSerializer;"
        }
    .end annotation

    .line 96
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    iget-boolean v1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->fieldBased:Z

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;Z)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-result-object v0

    .line 97
    .local v0, "beanInfo":Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v1, v1

    if-nez v1, :cond_0

    const-class v1, Ljava/lang/Iterable;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    sget-object v1, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    return-object v1

    .line 101
    :cond_0
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createJavaBeanSerializer(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v1

    return-object v1
.end method

.method public final get(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .locals 1
    .param p1, "key"    # Ljava/lang/reflect/Type;

    .line 707
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->serializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    return-object v0
.end method

.method public getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/alibaba/fastjson/serializer/ObjectSerializer;"
        }
    .end annotation

    .line 398
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;Z)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v0

    return-object v0
.end method

.method public getTypeKey()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    return-object v0
.end method

.method public isAsmEnable()Z
    .locals 1

    .line 234
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asm:Z

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 711
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/Type;

    move-object v1, p2

    check-cast v1, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "value"    # Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    .line 715
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->serializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAsmEnable(Z)V
    .locals 1
    .param p1, "asmEnable"    # Z

    .line 238
    sget-boolean v0, Lcom/alibaba/fastjson/util/ASMUtils;->IS_ANDROID:Z

    if-eqz v0, :cond_0

    .line 239
    return-void

    .line 241
    :cond_0
    iput-boolean p1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asm:Z

    .line 242
    return-void
.end method

.method public setPropertyNamingStrategy(Lcom/alibaba/fastjson/PropertyNamingStrategy;)V
    .locals 0
    .param p1, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 733
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 734
    return-void
.end method

.method public setTypeKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "typeKey"    # Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    .line 76
    return-void
.end method
