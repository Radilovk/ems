.class public Lcom/alibaba/fastjson/serializer/AnnotationSerializer;
.super Ljava/lang/Object;
.source "AnnotationSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static instance:Lcom/alibaba/fastjson/serializer/AnnotationSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->instance:Lcom/alibaba/fastjson/serializer/AnnotationSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 13
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .param p5, "features"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 22
    .local v1, "objClass":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    .line 23
    .local v2, "interfaces":[Ljava/lang/Class;
    array-length v0, v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    const/4 v3, 0x0

    aget-object v0, v2, v3

    invoke-virtual {v0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    aget-object v4, v2, v3

    .line 25
    .local v4, "annotationClass":Ljava/lang/Class;
    invoke-static {v4}, Lsun/reflect/annotation/AnnotationType;->getInstance(Ljava/lang/Class;)Lsun/reflect/annotation/AnnotationType;

    move-result-object v5

    .line 26
    .local v5, "type":Lsun/reflect/annotation/AnnotationType;
    invoke-virtual {v5}, Lsun/reflect/annotation/AnnotationType;->members()Ljava/util/Map;

    move-result-object v6

    .line 27
    .local v6, "members":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v7

    invoke-direct {v0, v7}, Lcom/alibaba/fastjson/JSONObject;-><init>(I)V

    move-object v7, v0

    .line 28
    .local v7, "json":Lcom/alibaba/fastjson/JSONObject;
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 30
    .local v8, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/reflect/Method;>;>;"
    const/4 v0, 0x0

    move-object v9, v0

    .line 31
    .local v9, "val":Ljava/lang/Object;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/util/Map$Entry;

    .line 34
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :try_start_0
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    new-array v11, v3, [Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v12, p2

    :try_start_1
    invoke-virtual {v0, p2, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    .line 39
    .end local v9    # "val":Ljava/lang/Object;
    .local v0, "val":Ljava/lang/Object;
    move-object v9, v0

    goto :goto_2

    .line 37
    .end local v0    # "val":Ljava/lang/Object;
    .restart local v9    # "val":Ljava/lang/Object;
    :catch_0
    move-exception v0

    goto :goto_2

    .line 35
    :catch_1
    move-exception v0

    goto :goto_1

    .line 37
    :catch_2
    move-exception v0

    move-object v12, p2

    goto :goto_2

    .line 35
    :catch_3
    move-exception v0

    move-object v12, p2

    .line 39
    :goto_1
    nop

    .line 40
    :goto_2
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v9}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v7, v0, v11}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 42
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :cond_0
    move-object v12, p2

    move-object v3, p1

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 43
    return-void

    .line 23
    .end local v4    # "annotationClass":Ljava/lang/Class;
    .end local v5    # "type":Lsun/reflect/annotation/AnnotationType;
    .end local v6    # "members":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .end local v7    # "json":Lcom/alibaba/fastjson/JSONObject;
    .end local v8    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/reflect/Method;>;>;"
    .end local v9    # "val":Ljava/lang/Object;
    :cond_1
    move-object v3, p1

    move-object v12, p2

    .line 45
    return-void
.end method
