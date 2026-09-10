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
            "Lcom/alibaba/fastjson/util/IdentityHashMap",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/serializer/ObjectSerializer;",
            ">;"
        }
    .end annotation
.end field

.field protected typeKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    .line 54
    sput-boolean v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->awtError:Z

    .line 55
    sput-boolean v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->jdk8Error:Z

    .line 56
    sput-boolean v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->oracleJdbcError:Z

    .line 57
    sput-boolean v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->springfoxError:Z

    .line 58
    sput-boolean v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->guavaError:Z

    .line 59
    sput-boolean v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->jsonnullError:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 249
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;-><init>(I)V

    .line 250
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "tableSize"    # I

    .prologue
    .line 257
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;-><init>(IZ)V

    .line 258
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 3
    .param p1, "tableSize"    # I
    .param p2, "fieldBase"    # Z

    .prologue
    const/4 v2, 0x0

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-boolean v1, Lcom/alibaba/fastjson/util/ASMUtils;->IS_ANDROID:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asm:Z

    .line 63
    sget-object v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    .line 261
    iput-boolean p2, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->fieldBased:Z

    .line 262
    new-instance v1, Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-direct {v1, p1}, Lcom/alibaba/fastjson/util/IdentityHashMap;-><init>(I)V

    iput-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->serializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    .line 265
    :try_start_0
    iget-boolean v1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asm:Z

    if-eqz v1, :cond_0

    .line 266
    new-instance v1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;

    invoke-direct {v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;-><init>()V

    iput-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asmFactory:Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->initSerializers()V

    .line 273
    return-void

    :cond_1
    move v1, v2

    .line 61
    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "eror":Ljava/lang/Throwable;
    iput-boolean v2, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asm:Z

    goto :goto_1
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "fieldBase"    # Z

    .prologue
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

    .prologue
    .line 79
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asmFactory:Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;

    invoke-virtual {v5, p1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->createJavaBeanSerializer(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v4

    .line 81
    .local v4, "serializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, v4, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v5, v5

    if-ge v3, v5, :cond_1

    .line 82
    iget-object v5, v4, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object v1, v5, v3

    .line 83
    .local v1, "fieldDeser":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    iget-object v5, v1, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v0, v5, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 84
    .local v0, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 85
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v2

    .line 86
    .local v2, "fieldSer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    instance-of v5, v2, Lcom/alibaba/fastjson/serializer/EnumSerializer;

    if-nez v5, :cond_0

    .line 87
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeDirect:Z

    .line 81
    .end local v2    # "fieldSer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 92
    .end local v0    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "fieldDeser":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :cond_1
    return-object v4
.end method

.method public static getGlobalInstance()Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .locals 1

    .prologue
    .line 245
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    return-object v0
.end method

.method private getObjectWriter(Ljava/lang/Class;Z)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .locals 27
    .param p2, "create"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Lcom/alibaba/fastjson/serializer/ObjectSerializer;"
        }
    .end annotation

    .prologue
    .line 402
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->serializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    .line 404
    .local v21, "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    if-nez v21, :cond_2

    .line 406
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 407
    .local v5, "classLoader":Ljava/lang/ClassLoader;
    const-class v23, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;

    move-object/from16 v0, v23

    invoke-static {v0, v5}, Lcom/alibaba/fastjson/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_1

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .line 408
    .local v16, "o":Ljava/lang/Object;
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;

    move/from16 v24, v0

    if-eqz v24, :cond_0

    .line 412
    move-object/from16 v0, v16

    check-cast v0, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;

    move-object v3, v0

    .line 413
    .local v3, "autowired":Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;
    invoke-interface {v3}, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;->getAutowiredFor()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_0
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_0

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/reflect/Type;

    .line 414
    .local v10, "forType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 417
    .end local v3    # "autowired":Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;
    .end local v5    # "classLoader":Ljava/lang/ClassLoader;
    .end local v10    # "forType":Ljava/lang/reflect/Type;
    .end local v16    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v23

    .line 421
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->serializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    check-cast v21, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    .line 424
    .restart local v21    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_2
    if-nez v21, :cond_5

    .line 425
    const-class v23, Lcom/alibaba/fastjson/JSON;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 426
    .restart local v5    # "classLoader":Ljava/lang/ClassLoader;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v23

    move-object/from16 v0, v23

    if-eq v5, v0, :cond_5

    .line 428
    :try_start_1
    const-class v23, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;

    move-object/from16 v0, v23

    invoke-static {v0, v5}, Lcom/alibaba/fastjson/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_4

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .line 430
    .restart local v16    # "o":Ljava/lang/Object;
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;

    move/from16 v24, v0

    if-eqz v24, :cond_3

    .line 434
    move-object/from16 v0, v16

    check-cast v0, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;

    move-object v3, v0

    .line 435
    .restart local v3    # "autowired":Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;
    invoke-interface {v3}, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;->getAutowiredFor()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_3

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/reflect/Type;

    .line 436
    .restart local v10    # "forType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 439
    .end local v3    # "autowired":Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;
    .end local v10    # "forType":Ljava/lang/reflect/Type;
    .end local v16    # "o":Ljava/lang/Object;
    :catch_1
    move-exception v23

    .line 443
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->serializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    check-cast v21, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    .line 447
    .end local v5    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v21    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_5
    if-nez v21, :cond_7

    .line 448
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 451
    .local v6, "className":Ljava/lang/String;
    const-class v23, Ljava/util/Map;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 452
    sget-object v21, Lcom/alibaba/fastjson/serializer/MapSerializer;->instance:Lcom/alibaba/fastjson/serializer/MapSerializer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 699
    :cond_6
    :goto_2
    if-nez v21, :cond_7

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->serializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    check-cast v21, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    .end local v6    # "className":Ljava/lang/String;
    .restart local v21    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_7
    move-object/from16 v22, v21

    .end local v21    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .local v22, "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    move-object/from16 v20, v21

    .line 703
    :goto_3
    return-object v20

    .line 453
    .end local v22    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v6    # "className":Ljava/lang/String;
    .restart local v21    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_8
    const-class v23, Ljava/util/List;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 454
    sget-object v21, Lcom/alibaba/fastjson/serializer/ListSerializer;->instance:Lcom/alibaba/fastjson/serializer/ListSerializer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto :goto_2

    .line 455
    :cond_9
    const-class v23, Ljava/util/Collection;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 456
    sget-object v21, Lcom/alibaba/fastjson/serializer/CollectionCodec;->instance:Lcom/alibaba/fastjson/serializer/CollectionCodec;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto :goto_2

    .line 457
    :cond_a
    const-class v23, Ljava/util/Date;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 458
    sget-object v21, Lcom/alibaba/fastjson/serializer/DateCodec;->instance:Lcom/alibaba/fastjson/serializer/DateCodec;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto :goto_2

    .line 459
    :cond_b
    const-class v23, Lcom/alibaba/fastjson/JSONAware;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 460
    sget-object v21, Lcom/alibaba/fastjson/serializer/JSONAwareSerializer;->instance:Lcom/alibaba/fastjson/serializer/JSONAwareSerializer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto :goto_2

    .line 461
    :cond_c
    const-class v23, Lcom/alibaba/fastjson/serializer/JSONSerializable;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 462
    sget-object v21, Lcom/alibaba/fastjson/serializer/JSONSerializableSerializer;->instance:Lcom/alibaba/fastjson/serializer/JSONSerializableSerializer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_2

    .line 463
    :cond_d
    const-class v23, Lcom/alibaba/fastjson/JSONStreamAware;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 464
    sget-object v21, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_2

    .line 465
    :cond_e
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isEnum()Z

    move-result v23

    if-eqz v23, :cond_10

    .line 466
    const-class v23, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v13

    check-cast v13, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 467
    .local v13, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    if-eqz v13, :cond_f

    invoke-interface {v13}, Lcom/alibaba/fastjson/annotation/JSONType;->serializeEnumAsJavaBean()Z

    move-result v23

    if-eqz v23, :cond_f

    .line 468
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_2

    .line 470
    :cond_f
    sget-object v21, Lcom/alibaba/fastjson/serializer/EnumSerializer;->instance:Lcom/alibaba/fastjson/serializer/EnumSerializer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_2

    .line 472
    .end local v13    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    :cond_10
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v18

    .local v18, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v18, :cond_12

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->isEnum()Z

    move-result v23

    if-eqz v23, :cond_12

    .line 473
    const-class v23, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v13

    check-cast v13, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 474
    .restart local v13    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    if-eqz v13, :cond_11

    invoke-interface {v13}, Lcom/alibaba/fastjson/annotation/JSONType;->serializeEnumAsJavaBean()Z

    move-result v23

    if-eqz v23, :cond_11

    .line 475
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_2

    .line 477
    :cond_11
    sget-object v21, Lcom/alibaba/fastjson/serializer/EnumSerializer;->instance:Lcom/alibaba/fastjson/serializer/EnumSerializer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_2

    .line 479
    .end local v13    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    :cond_12
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isArray()Z

    move-result v23

    if-eqz v23, :cond_13

    .line 480
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    .line 481
    .local v8, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v7

    .line 482
    .local v7, "compObjectSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    new-instance v21, Lcom/alibaba/fastjson/serializer/ArraySerializer;

    .end local v21    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    move-object/from16 v0, v21

    invoke-direct {v0, v8, v7}, Lcom/alibaba/fastjson/serializer/ArraySerializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)V

    .restart local v21    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_2

    .line 483
    .end local v7    # "compObjectSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v8    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_13
    const-class v23, Ljava/lang/Throwable;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v23

    if-eqz v23, :cond_14

    .line 484
    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-result-object v4

    .line 485
    .local v4, "beanInfo":Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    iget v0, v4, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    move/from16 v23, v0

    sget-object v24, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v24

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v24, v0

    or-int v23, v23, v24

    move/from16 v0, v23

    iput v0, v4, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    .line 486
    new-instance v21, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .end local v21    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)V

    .restart local v21    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_2

    .line 487
    .end local v4    # "beanInfo":Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    :cond_14
    const-class v23, Ljava/util/TimeZone;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v23

    if-nez v23, :cond_15

    const-class v23, Ljava/util/Map$Entry;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v23

    if-eqz v23, :cond_16

    .line 488
    :cond_15
    sget-object v21, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_2

    .line 489
    :cond_16
    const-class v23, Ljava/lang/Appendable;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v23

    if-eqz v23, :cond_17

    .line 490
    sget-object v21, Lcom/alibaba/fastjson/serializer/AppendableSerializer;->instance:Lcom/alibaba/fastjson/serializer/AppendableSerializer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_2

    .line 491
    :cond_17
    const-class v23, Ljava/nio/charset/Charset;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v23

    if-eqz v23, :cond_18

    .line 492
    sget-object v21, Lcom/alibaba/fastjson/serializer/ToStringSerializer;->instance:Lcom/alibaba/fastjson/serializer/ToStringSerializer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_2

    .line 493
    :cond_18
    const-class v23, Ljava/util/Enumeration;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v23

    if-eqz v23, :cond_19

    .line 494
    sget-object v21, Lcom/alibaba/fastjson/serializer/EnumerationSerializer;->instance:Lcom/alibaba/fastjson/serializer/EnumerationSerializer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_2

    .line 495
    :cond_19
    const-class v23, Ljava/util/Calendar;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v23

    if-nez v23, :cond_1a

    const-class v23, Ljavax/xml/datatype/XMLGregorianCalendar;

    .line 496
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v23

    if-eqz v23, :cond_1b

    .line 497
    :cond_1a
    sget-object v21, Lcom/alibaba/fastjson/serializer/CalendarCodec;->instance:Lcom/alibaba/fastjson/serializer/CalendarCodec;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_2

    .line 498
    :cond_1b
    const-class v23, Ljava/sql/Clob;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v23

    if-eqz v23, :cond_1c

    .line 499
    sget-object v21, Lcom/alibaba/fastjson/serializer/ClobSeriliazer;->instance:Lcom/alibaba/fastjson/serializer/ClobSeriliazer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_2

    .line 500
    :cond_1c
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isPath(Ljava/lang/Class;)Z

    move-result v23

    if-eqz v23, :cond_1d

    .line 501
    sget-object v21, Lcom/alibaba/fastjson/serializer/ToStringSerializer;->instance:Lcom/alibaba/fastjson/serializer/ToStringSerializer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_2

    .line 502
    :cond_1d
    const-class v23, Ljava/util/Iterator;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v23

    if-eqz v23, :cond_1e

    .line 503
    sget-object v21, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_2

    .line 505
    :cond_1e
    const-string v23, "java.awt."

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_20

    .line 506
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/AwtCodec;->support(Ljava/lang/Class;)Z

    move-result v23

    if-eqz v23, :cond_20

    .line 509
    sget-boolean v23, Lcom/alibaba/fastjson/serializer/SerializeConfig;->awtError:Z

    if-nez v23, :cond_20

    .line 511
    const/16 v23, 0x4

    :try_start_2
    move/from16 v0, v23

    new-array v15, v0, [Ljava/lang/String;

    const/16 v23, 0x0

    const-string v24, "java.awt.Color"

    aput-object v24, v15, v23

    const/16 v23, 0x1

    const-string v24, "java.awt.Font"

    aput-object v24, v15, v23

    const/16 v23, 0x2

    const-string v24, "java.awt.Point"

    aput-object v24, v15, v23

    const/16 v23, 0x3

    const-string v24, "java.awt.Rectangle"

    aput-object v24, v15, v23

    .line 517
    .local v15, "names":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v24, v0

    const/16 v23, 0x0

    :goto_4
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_20

    aget-object v14, v15, v23

    .line 518
    .local v14, "name":Ljava/lang/String;
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1f

    .line 519
    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v23

    sget-object v21, Lcom/alibaba/fastjson/serializer/AwtCodec;->instance:Lcom/alibaba/fastjson/serializer/AwtCodec;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v22, v21

    .end local v21    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v22    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    move-object/from16 v20, v21

    .line 520
    goto/16 :goto_3

    .line 517
    .end local v22    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v21    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_1f
    add-int/lit8 v23, v23, 0x1

    goto :goto_4

    .line 523
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "names":[Ljava/lang/String;
    :catch_2
    move-exception v9

    .line 524
    .local v9, "e":Ljava/lang/Throwable;
    const/16 v23, 0x1

    sput-boolean v23, Lcom/alibaba/fastjson/serializer/SerializeConfig;->awtError:Z

    .line 531
    .end local v9    # "e":Ljava/lang/Throwable;
    :cond_20
    sget-boolean v23, Lcom/alibaba/fastjson/serializer/SerializeConfig;->jdk8Error:Z

    if-nez v23, :cond_27

    const-string v23, "java.time."

    .line 532
    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_21

    const-string v23, "java.util.Optional"

    .line 533
    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_21

    const-string v23, "java.util.concurrent.atomic.LongAdder"

    .line 534
    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_21

    const-string v23, "java.util.concurrent.atomic.DoubleAdder"

    .line 535
    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_27

    .line 539
    :cond_21
    const/16 v23, 0xb

    :try_start_3
    move/from16 v0, v23

    new-array v15, v0, [Ljava/lang/String;

    const/16 v23, 0x0

    const-string v24, "java.time.LocalDateTime"

    aput-object v24, v15, v23

    const/16 v23, 0x1

    const-string v24, "java.time.LocalDate"

    aput-object v24, v15, v23

    const/16 v23, 0x2

    const-string v24, "java.time.LocalTime"

    aput-object v24, v15, v23

    const/16 v23, 0x3

    const-string v24, "java.time.ZonedDateTime"

    aput-object v24, v15, v23

    const/16 v23, 0x4

    const-string v24, "java.time.OffsetDateTime"

    aput-object v24, v15, v23

    const/16 v23, 0x5

    const-string v24, "java.time.OffsetTime"

    aput-object v24, v15, v23

    const/16 v23, 0x6

    const-string v24, "java.time.ZoneOffset"

    aput-object v24, v15, v23

    const/16 v23, 0x7

    const-string v24, "java.time.ZoneRegion"

    aput-object v24, v15, v23

    const/16 v23, 0x8

    const-string v24, "java.time.Period"

    aput-object v24, v15, v23

    const/16 v23, 0x9

    const-string v24, "java.time.Duration"

    aput-object v24, v15, v23

    const/16 v23, 0xa

    const-string v24, "java.time.Instant"

    aput-object v24, v15, v23

    .line 552
    .restart local v15    # "names":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v24, v0

    const/16 v23, 0x0

    :goto_5
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_23

    aget-object v14, v15, v23

    .line 553
    .restart local v14    # "name":Ljava/lang/String;
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_22

    .line 554
    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v23

    sget-object v21, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    move-object/from16 v22, v21

    .end local v21    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v22    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    move-object/from16 v20, v21

    .line 555
    goto/16 :goto_3

    .line 552
    .end local v22    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v21    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_22
    add-int/lit8 v23, v23, 0x1

    goto :goto_5

    .line 560
    .end local v14    # "name":Ljava/lang/String;
    :cond_23
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v15, v0, [Ljava/lang/String;

    .end local v15    # "names":[Ljava/lang/String;
    const/16 v23, 0x0

    const-string v24, "java.util.Optional"

    aput-object v24, v15, v23

    const/16 v23, 0x1

    const-string v24, "java.util.OptionalDouble"

    aput-object v24, v15, v23

    const/16 v23, 0x2

    const-string v24, "java.util.OptionalInt"

    aput-object v24, v15, v23

    const/16 v23, 0x3

    const-string v24, "java.util.OptionalLong"

    aput-object v24, v15, v23

    .line 566
    .restart local v15    # "names":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v24, v0

    const/16 v23, 0x0

    :goto_6
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_25

    aget-object v14, v15, v23

    .line 567
    .restart local v14    # "name":Ljava/lang/String;
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_24

    .line 568
    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v23

    sget-object v21, Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    move-object/from16 v22, v21

    .end local v21    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v22    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    move-object/from16 v20, v21

    .line 569
    goto/16 :goto_3

    .line 566
    .end local v22    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v21    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_24
    add-int/lit8 v23, v23, 0x1

    goto :goto_6

    .line 574
    .end local v14    # "name":Ljava/lang/String;
    :cond_25
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v15, v0, [Ljava/lang/String;

    .end local v15    # "names":[Ljava/lang/String;
    const/16 v23, 0x0

    const-string v24, "java.util.concurrent.atomic.LongAdder"

    aput-object v24, v15, v23

    const/16 v23, 0x1

    const-string v24, "java.util.concurrent.atomic.DoubleAdder"

    aput-object v24, v15, v23

    .line 578
    .restart local v15    # "names":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v24, v0

    const/16 v23, 0x0

    :goto_7
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_27

    aget-object v14, v15, v23

    .line 579
    .restart local v14    # "name":Ljava/lang/String;
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_26

    .line 580
    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v23

    sget-object v21, Lcom/alibaba/fastjson/serializer/AdderSerializer;->instance:Lcom/alibaba/fastjson/serializer/AdderSerializer;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v22, v21

    .end local v21    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v22    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    move-object/from16 v20, v21

    .line 581
    goto/16 :goto_3

    .line 578
    .end local v22    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v21    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_26
    add-int/lit8 v23, v23, 0x1

    goto :goto_7

    .line 585
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "names":[Ljava/lang/String;
    :catch_3
    move-exception v9

    .line 587
    .restart local v9    # "e":Ljava/lang/Throwable;
    const/16 v23, 0x1

    sput-boolean v23, Lcom/alibaba/fastjson/serializer/SerializeConfig;->jdk8Error:Z

    .line 591
    .end local v9    # "e":Ljava/lang/Throwable;
    :cond_27
    sget-boolean v23, Lcom/alibaba/fastjson/serializer/SerializeConfig;->oracleJdbcError:Z

    if-nez v23, :cond_29

    const-string v23, "oracle.sql."

    .line 592
    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_29

    .line 594
    const/16 v23, 0x2

    :try_start_4
    move/from16 v0, v23

    new-array v15, v0, [Ljava/lang/String;

    const/16 v23, 0x0

    const-string v24, "oracle.sql.DATE"

    aput-object v24, v15, v23

    const/16 v23, 0x1

    const-string v24, "oracle.sql.TIMESTAMP"

    aput-object v24, v15, v23

    .line 599
    .restart local v15    # "names":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v24, v0

    const/16 v23, 0x0

    :goto_8
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_29

    aget-object v14, v15, v23

    .line 600
    .restart local v14    # "name":Ljava/lang/String;
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_28

    .line 601
    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v23

    sget-object v21, Lcom/alibaba/fastjson/serializer/DateCodec;->instance:Lcom/alibaba/fastjson/serializer/DateCodec;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    move-object/from16 v22, v21

    .end local v21    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v22    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    move-object/from16 v20, v21

    .line 602
    goto/16 :goto_3

    .line 599
    .end local v22    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v21    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_28
    add-int/lit8 v23, v23, 0x1

    goto :goto_8

    .line 605
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "names":[Ljava/lang/String;
    :catch_4
    move-exception v9

    .line 607
    .restart local v9    # "e":Ljava/lang/Throwable;
    const/16 v23, 0x1

    sput-boolean v23, Lcom/alibaba/fastjson/serializer/SerializeConfig;->oracleJdbcError:Z

    .line 611
    .end local v9    # "e":Ljava/lang/Throwable;
    :cond_29
    sget-boolean v23, Lcom/alibaba/fastjson/serializer/SerializeConfig;->springfoxError:Z

    if-nez v23, :cond_2a

    const-string v23, "springfox.documentation.spring.web.json.Json"

    .line 612
    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2a

    .line 614
    :try_start_5
    const-string v23, "springfox.documentation.spring.web.json.Json"

    invoke-static/range {v23 .. v23}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v23

    sget-object v21, Lcom/alibaba/fastjson/support/springfox/SwaggerJsonSerializer;->instance:Lcom/alibaba/fastjson/support/springfox/SwaggerJsonSerializer;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    move-object/from16 v22, v21

    .end local v21    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v22    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    move-object/from16 v20, v21

    .line 616
    goto/16 :goto_3

    .line 617
    .end local v22    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v21    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :catch_5
    move-exception v9

    .line 619
    .local v9, "e":Ljava/lang/ClassNotFoundException;
    const/16 v23, 0x1

    sput-boolean v23, Lcom/alibaba/fastjson/serializer/SerializeConfig;->springfoxError:Z

    .line 623
    .end local v9    # "e":Ljava/lang/ClassNotFoundException;
    :cond_2a
    sget-boolean v23, Lcom/alibaba/fastjson/serializer/SerializeConfig;->guavaError:Z

    if-nez v23, :cond_2c

    const-string v23, "com.google.common.collect."

    .line 624
    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_2c

    .line 626
    const/16 v23, 0x4

    :try_start_6
    move/from16 v0, v23

    new-array v15, v0, [Ljava/lang/String;

    const/16 v23, 0x0

    const-string v24, "com.google.common.collect.HashMultimap"

    aput-object v24, v15, v23

    const/16 v23, 0x1

    const-string v24, "com.google.common.collect.LinkedListMultimap"

    aput-object v24, v15, v23

    const/16 v23, 0x2

    const-string v24, "com.google.common.collect.ArrayListMultimap"

    aput-object v24, v15, v23

    const/16 v23, 0x3

    const-string v24, "com.google.common.collect.TreeMultimap"

    aput-object v24, v15, v23

    .line 633
    .restart local v15    # "names":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v24, v0

    const/16 v23, 0x0

    :goto_9
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_2c

    aget-object v14, v15, v23

    .line 634
    .restart local v14    # "name":Ljava/lang/String;
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2b

    .line 635
    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v23

    sget-object v21, Lcom/alibaba/fastjson/serializer/GuavaCodec;->instance:Lcom/alibaba/fastjson/serializer/GuavaCodec;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    move-object/from16 v22, v21

    .end local v21    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v22    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    move-object/from16 v20, v21

    .line 636
    goto/16 :goto_3

    .line 633
    .end local v22    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v21    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_2b
    add-int/lit8 v23, v23, 0x1

    goto :goto_9

    .line 639
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "names":[Ljava/lang/String;
    :catch_6
    move-exception v9

    .line 641
    .restart local v9    # "e":Ljava/lang/ClassNotFoundException;
    const/16 v23, 0x1

    sput-boolean v23, Lcom/alibaba/fastjson/serializer/SerializeConfig;->guavaError:Z

    .line 645
    .end local v9    # "e":Ljava/lang/ClassNotFoundException;
    :cond_2c
    sget-boolean v23, Lcom/alibaba/fastjson/serializer/SerializeConfig;->jsonnullError:Z

    if-nez v23, :cond_2d

    const-string v23, "net.sf.json.JSONNull"

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2d

    .line 647
    :try_start_7
    const-string v23, "net.sf.json.JSONNull"

    invoke-static/range {v23 .. v23}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v23

    sget-object v21, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    move-object/from16 v22, v21

    .end local v21    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v22    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    move-object/from16 v20, v21

    .line 648
    goto/16 :goto_3

    .line 649
    .end local v22    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v21    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :catch_7
    move-exception v9

    .line 651
    .restart local v9    # "e":Ljava/lang/ClassNotFoundException;
    const/16 v23, 0x1

    sput-boolean v23, Lcom/alibaba/fastjson/serializer/SerializeConfig;->jsonnullError:Z

    .line 655
    .end local v9    # "e":Ljava/lang/ClassNotFoundException;
    :cond_2d
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v12

    .line 656
    .local v12, "interfaces":[Ljava/lang/Class;
    array-length v0, v12

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2e

    const/16 v23, 0x0

    aget-object v23, v12, v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->isAnnotation()Z

    move-result v23

    if-eqz v23, :cond_2e

    .line 657
    sget-object v20, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->instance:Lcom/alibaba/fastjson/serializer/AnnotationSerializer;

    move-object/from16 v22, v21

    .end local v21    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v22    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    goto/16 :goto_3

    .line 660
    .end local v22    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v21    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_2e
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isProxy(Ljava/lang/Class;)Z

    move-result v23

    if-eqz v23, :cond_2f

    .line 661
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v19

    .line 663
    .local v19, "superClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v20

    .line 664
    .local v20, "superWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    move-object/from16 v22, v21

    .line 665
    .end local v21    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v22    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    goto/16 :goto_3

    .line 668
    .end local v19    # "superClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v20    # "superWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v22    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v21    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_2f
    invoke-static/range {p1 .. p1}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v23

    if-eqz v23, :cond_34

    .line 669
    const/4 v11, 0x0

    .line 671
    .local v11, "handlerClass":Ljava/lang/Class;
    array-length v0, v12

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_31

    .line 672
    const/16 v23, 0x1

    aget-object v11, v12, v23

    .line 686
    :cond_30
    :goto_a
    if-eqz v11, :cond_34

    .line 687
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v20

    .line 688
    .restart local v20    # "superWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    move-object/from16 v22, v21

    .line 689
    .end local v21    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v22    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    goto/16 :goto_3

    .line 674
    .end local v20    # "superWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v22    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v21    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_31
    array-length v0, v12

    move/from16 v24, v0

    const/16 v23, 0x0

    :goto_b
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_30

    aget-object v17, v12, v23

    .line 675
    .local v17, "proxiedInterface":Ljava/lang/Class;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v25

    const-string v26, "org.springframework.aop."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_32

    .line 674
    :goto_c
    add-int/lit8 v23, v23, 0x1

    goto :goto_b

    .line 678
    :cond_32
    if-eqz v11, :cond_33

    .line 679
    const/4 v11, 0x0

    .line 680
    goto :goto_a

    .line 682
    :cond_33
    move-object/from16 v11, v17

    goto :goto_c

    .line 693
    .end local v11    # "handlerClass":Ljava/lang/Class;
    .end local v17    # "proxiedInterface":Ljava/lang/Class;
    :cond_34
    if-eqz p2, :cond_6

    .line 694
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v21

    .line 695
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_2
.end method

.method private initSerializers()V
    .locals 2

    .prologue
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
    .locals 4
    .param p2, "filter"    # Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/serializer/SerializeFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 335
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v2

    .line 337
    .local v2, "serializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    instance-of v3, v2, Lcom/alibaba/fastjson/serializer/SerializeFilterable;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 338
    check-cast v0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;

    .line 340
    .local v0, "filterable":Lcom/alibaba/fastjson/serializer/SerializeFilterable;
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    if-eq p0, v3, :cond_1

    .line 341
    sget-object v3, Lcom/alibaba/fastjson/serializer/MapSerializer;->instance:Lcom/alibaba/fastjson/serializer/MapSerializer;

    if-ne v0, v3, :cond_1

    .line 342
    new-instance v1, Lcom/alibaba/fastjson/serializer/MapSerializer;

    invoke-direct {v1}, Lcom/alibaba/fastjson/serializer/MapSerializer;-><init>()V

    .line 343
    .local v1, "newMapSer":Lcom/alibaba/fastjson/serializer/MapSerializer;
    invoke-virtual {p0, p1, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 344
    invoke-virtual {v1, p2}, Lcom/alibaba/fastjson/serializer/MapSerializer;->addFilter(Lcom/alibaba/fastjson/serializer/SerializeFilter;)V

    .line 351
    .end local v0    # "filterable":Lcom/alibaba/fastjson/serializer/SerializeFilterable;
    .end local v1    # "newMapSer":Lcom/alibaba/fastjson/serializer/MapSerializer;
    :cond_0
    :goto_0
    return-void

    .line 349
    .restart local v0    # "filterable":Lcom/alibaba/fastjson/serializer/SerializeFilterable;
    :cond_1
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->addFilter(Lcom/alibaba/fastjson/serializer/SerializeFilter;)V

    goto :goto_0
.end method

.method public clearSerializers()V
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->serializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/IdentityHashMap;->clear()V

    .line 738
    invoke-direct {p0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->initSerializers()V

    .line 739
    return-void
.end method

.method public config(Ljava/lang/Class;Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    .locals 8
    .param p2, "feature"    # Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/serializer/SerializerFeature;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 357
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    invoke-direct {p0, p1, v6}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;Z)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v4

    .line 359
    .local v4, "serializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    if-nez v4, :cond_2

    .line 360
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    invoke-static {p1, v6, v7}, Lcom/alibaba/fastjson/util/TypeUtils;->buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-result-object v0

    .line 362
    .local v0, "beanInfo":Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    if-eqz p3, :cond_1

    .line 363
    iget v6, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    iget v7, p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v6, v7

    iput v6, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    .line 368
    :goto_0
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createJavaBeanSerializer(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v4

    .line 370
    invoke-virtual {p0, p1, v4}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 395
    .end local v0    # "beanInfo":Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    :cond_0
    :goto_1
    return-void

    .line 365
    .restart local v0    # "beanInfo":Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    :cond_1
    iget v6, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    iget v7, p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v6, v7

    iput v6, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    goto :goto_0

    .line 374
    .end local v0    # "beanInfo":Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    :cond_2
    instance-of v6, v4, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-eqz v6, :cond_0

    move-object v1, v4

    .line 375
    check-cast v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .line 376
    .local v1, "javaBeanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    iget-object v0, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    .line 378
    .restart local v0    # "beanInfo":Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    .line 379
    .local v3, "originalFeaturs":I
    if-eqz p3, :cond_3

    .line 380
    iget v6, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    iget v7, p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v6, v7

    iput v6, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    .line 385
    :goto_2
    iget v6, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    if-eq v3, v6, :cond_0

    .line 389
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 390
    .local v5, "serializerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-eq v5, v6, :cond_0

    .line 391
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createJavaBeanSerializer(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v2

    .line 392
    .local v2, "newSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto :goto_1

    .line 382
    .end local v2    # "newSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v5    # "serializerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    iget v6, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    iget v7, p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v6, v7

    iput v6, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    goto :goto_2
.end method

.method public varargs configEnumAsJavaBean([Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Enum;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 723
    .local p1, "enumClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<+Ljava/lang/Enum;>;"
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 724
    .local v0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Enum;>;"
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 723
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 726
    .end local v0    # "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Enum;>;"
    :cond_0
    return-void
.end method

.method public createJavaBeanSerializer(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .locals 21
    .param p1, "beanInfo"    # Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    .prologue
    .line 105
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    .line 107
    .local v10, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asm:Z

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->fieldBased:Z

    if-nez v14, :cond_0

    const/4 v2, 0x1

    .line 109
    .local v2, "asm":Z
    :goto_0
    if-eqz v10, :cond_4

    .line 110
    invoke-interface {v10}, Lcom/alibaba/fastjson/annotation/JSONType;->serializer()Ljava/lang/Class;

    move-result-object v13

    .line 111
    .local v13, "serializerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v14, Ljava/lang/Void;

    if-eq v13, v14, :cond_1

    .line 113
    :try_start_0
    invoke-virtual {v13}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v12

    .line 114
    .local v12, "seralizer":Ljava/lang/Object;
    instance-of v14, v12, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    if-eqz v14, :cond_1

    .line 115
    check-cast v12, Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v12    # "seralizer":Ljava/lang/Object;
    .end local v13    # "serializerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    return-object v12

    .line 107
    .end local v2    # "asm":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 117
    .restart local v2    # "asm":Z
    .restart local v13    # "serializerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v14

    .line 122
    :cond_1
    invoke-interface {v10}, Lcom/alibaba/fastjson/annotation/JSONType;->asm()Z

    move-result v14

    if-nez v14, :cond_2

    .line 123
    const/4 v2, 0x0

    .line 126
    :cond_2
    invoke-interface {v10}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v15

    array-length v0, v15

    move/from16 v16, v0

    const/4 v14, 0x0

    :goto_2
    move/from16 v0, v16

    if-ge v14, v0, :cond_4

    aget-object v6, v15, v14

    .line 127
    .local v6, "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    sget-object v17, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v17

    if-eq v0, v6, :cond_3

    sget-object v17, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v17

    if-eq v0, v6, :cond_3

    sget-object v17, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v17

    if-ne v0, v6, :cond_5

    .line 130
    :cond_3
    const/4 v2, 0x0

    .line 136
    .end local v6    # "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .end local v13    # "serializerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->beanType:Ljava/lang/Class;

    .line 137
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->beanType:Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Class;->getModifiers()I

    move-result v14

    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v14

    if-nez v14, :cond_6

    .line 138
    new-instance v12, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)V

    goto :goto_1

    .line 126
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .restart local v13    # "serializerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 143
    .end local v6    # "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .end local v13    # "serializerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asmFactory:Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;

    iget-object v14, v14, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->classLoader:Lcom/alibaba/fastjson/util/ASMClassLoader;

    invoke-virtual {v14, v4}, Lcom/alibaba/fastjson/util/ASMClassLoader;->isExternalClass(Ljava/lang/Class;)Z

    move-result v14

    if-nez v14, :cond_8

    :cond_7
    const-class v14, Ljava/io/Serializable;

    if-eq v4, v14, :cond_8

    const-class v14, Ljava/lang/Object;

    if-ne v4, v14, :cond_9

    .line 145
    :cond_8
    const/4 v2, 0x0

    .line 148
    :cond_9
    if-eqz v2, :cond_a

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/alibaba/fastjson/util/ASMUtils;->checkName(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 149
    const/4 v2, 0x0

    .line 152
    :cond_a
    if-eqz v2, :cond_b

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->beanType:Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Class;->isInterface()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 153
    const/4 v2, 0x0

    .line 156
    :cond_b
    if-eqz v2, :cond_c

    .line 157
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v14, 0x0

    move v15, v14

    :goto_3
    move/from16 v0, v17

    if-ge v15, v0, :cond_c

    aget-object v8, v16, v15

    .line 158
    .local v8, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v7, v8, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 159
    .local v7, "field":Ljava/lang/reflect/Field;
    if-eqz v7, :cond_d

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v14

    iget-object v0, v8, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d

    .line 160
    const/4 v2, 0x0

    .line 212
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_c
    :goto_4
    if-eqz v2, :cond_19

    .line 214
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createASMSerializer(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassFormatError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 215
    .local v3, "asmSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    if-eqz v3, :cond_19

    move-object v12, v3

    .line 216
    goto/16 :goto_1

    .line 164
    .end local v3    # "asmSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v7    # "field":Ljava/lang/reflect/Field;
    .restart local v8    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_d
    iget-object v11, v8, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 165
    .local v11, "method":Ljava/lang/reflect/Method;
    if-eqz v11, :cond_e

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v14

    iget-object v0, v8, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e

    .line 166
    const/4 v2, 0x0

    .line 167
    goto :goto_4

    .line 170
    :cond_e
    invoke-virtual {v8}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v1

    .line 172
    .local v1, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-nez v1, :cond_10

    .line 157
    :cond_f
    add-int/lit8 v14, v15, 0x1

    move v15, v14

    goto :goto_3

    .line 176
    :cond_10
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->format()Ljava/lang/String;

    move-result-object v9

    .line 177
    .local v9, "format":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_11

    .line 178
    iget-object v14, v8, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v18, Ljava/lang/String;

    move-object/from16 v0, v18

    if-ne v14, v0, :cond_13

    const-string/jumbo v14, "trim"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 186
    :cond_11
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/alibaba/fastjson/util/ASMUtils;->checkName(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 187
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->jsonDirect()Z

    move-result v14

    if-nez v14, :cond_12

    .line 188
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->serializeUsing()Ljava/lang/Class;

    move-result-object v14

    const-class v18, Ljava/lang/Void;

    move-object/from16 v0, v18

    if-ne v14, v0, :cond_12

    .line 189
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->unwrapped()Z

    move-result v14

    if-eqz v14, :cond_14

    .line 191
    :cond_12
    const/4 v2, 0x0

    .line 192
    goto :goto_4

    .line 181
    :cond_13
    const/4 v2, 0x0

    .line 182
    goto :goto_4

    .line 195
    :cond_14
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    const/4 v14, 0x0

    :goto_5
    move/from16 v0, v19

    if-ge v14, v0, :cond_16

    aget-object v6, v18, v14

    .line 196
    .restart local v6    # "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    sget-object v20, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v20

    if-eq v0, v6, :cond_15

    sget-object v20, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v20

    if-eq v0, v6, :cond_15

    sget-object v20, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v20

    if-eq v0, v6, :cond_15

    sget-object v20, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v20

    if-ne v0, v6, :cond_18

    .line 200
    :cond_15
    const/4 v2, 0x0

    .line 205
    .end local v6    # "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    :cond_16
    invoke-static {v11}, Lcom/alibaba/fastjson/util/TypeUtils;->isAnnotationPresentOneToMany(Ljava/lang/reflect/Method;)Z

    move-result v14

    if-nez v14, :cond_17

    invoke-static {v11}, Lcom/alibaba/fastjson/util/TypeUtils;->isAnnotationPresentManyToMany(Ljava/lang/reflect/Method;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 206
    :cond_17
    const/4 v2, 0x1

    .line 207
    goto/16 :goto_4

    .line 195
    .restart local v6    # "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    :cond_18
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 224
    .end local v1    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v6    # "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v9    # "format":Ljava/lang/String;
    .end local v11    # "method":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v5

    .line 225
    .local v5, "e":Ljava/lang/Throwable;
    new-instance v14, Lcom/alibaba/fastjson/JSONException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "create asm serializer error, class "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 218
    .end local v5    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v14

    .line 230
    :cond_19
    :goto_6
    new-instance v12, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)V

    goto/16 :goto_1

    .line 220
    :catch_3
    move-exception v14

    goto :goto_6

    .line 222
    :catch_4
    move-exception v14

    goto :goto_6
.end method

.method public final createJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/alibaba/fastjson/serializer/ObjectSerializer;"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    iget-boolean v3, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->fieldBased:Z

    invoke-static {p1, v1, v2, v3}, Lcom/alibaba/fastjson/util/TypeUtils;->buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;Z)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

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

    .line 101
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createJavaBeanSerializer(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v1

    goto :goto_0
.end method

.method public final get(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .locals 1
    .param p1, "key"    # Ljava/lang/reflect/Type;

    .prologue
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
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/alibaba/fastjson/serializer/ObjectSerializer;"
        }
    .end annotation

    .prologue
    .line 398
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;Z)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v0

    return-object v0
.end method

.method public getTypeKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    return-object v0
.end method

.method public isAsmEnable()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asm:Z

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 711
    check-cast p1, Ljava/lang/reflect/Type;

    .end local p1    # "type":Ljava/lang/Object;
    check-cast p2, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "value"    # Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    .prologue
    .line 715
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->serializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAsmEnable(Z)V
    .locals 1
    .param p1, "asmEnable"    # Z

    .prologue
    .line 238
    sget-boolean v0, Lcom/alibaba/fastjson/util/ASMUtils;->IS_ANDROID:Z

    if-eqz v0, :cond_0

    .line 242
    :goto_0
    return-void

    .line 241
    :cond_0
    iput-boolean p1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asm:Z

    goto :goto_0
.end method

.method public setPropertyNamingStrategy(Lcom/alibaba/fastjson/PropertyNamingStrategy;)V
    .locals 0
    .param p1, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .prologue
    .line 733
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 734
    return-void
.end method

.method public setTypeKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "typeKey"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    .line 76
    return-void
.end method
