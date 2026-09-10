.class public Lcom/alibaba/fastjson/serializer/EnumerationSerializer;
.super Ljava/lang/Object;
.source "EnumerationSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static instance:Lcom/alibaba/fastjson/serializer/EnumerationSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/alibaba/fastjson/serializer/EnumerationSerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/EnumerationSerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/EnumerationSerializer;->instance:Lcom/alibaba/fastjson/serializer/EnumerationSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 17
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

    .line 13
    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    iget-object v10, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 15
    .local v10, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-nez v8, :cond_0

    .line 16
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 17
    return-void

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    .local v0, "elementType":Ljava/lang/reflect/Type;
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v10, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 22
    instance-of v1, v9, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_1

    .line 23
    move-object v1, v9

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 24
    .local v1, "param":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object v0, v3, v2

    move-object v11, v0

    goto :goto_0

    .line 28
    .end local v1    # "param":Ljava/lang/reflect/ParameterizedType;
    :cond_1
    move-object v11, v0

    .end local v0    # "elementType":Ljava/lang/reflect/Type;
    .local v11, "elementType":Ljava/lang/reflect/Type;
    :goto_0
    move-object v12, v8

    check-cast v12, Ljava/util/Enumeration;

    .line 30
    .local v12, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    iget-object v13, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 31
    .local v13, "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    move-object/from16 v14, p3

    invoke-virtual {v7, v13, v8, v14, v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, "i":I
    const/16 v1, 0x5b

    :try_start_0
    invoke-virtual {v10, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 36
    :goto_1
    invoke-interface {v12}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 37
    invoke-interface {v12}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    .line 38
    .local v15, "item":Ljava/lang/Object;
    add-int/lit8 v16, v0, 0x1

    .end local v0    # "i":I
    .local v16, "i":I
    if-eqz v0, :cond_2

    .line 39
    const/16 v0, 0x2c

    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 42
    :cond_2
    if-nez v15, :cond_3

    .line 43
    invoke-virtual {v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 44
    goto :goto_2

    .line 47
    :cond_3
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v1

    .line 48
    .local v1, "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    add-int/lit8 v0, v16, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v2, p1

    move-object v3, v15

    move-object v5, v11

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 49
    .end local v1    # "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v15    # "item":Ljava/lang/Object;
    nop

    .line 36
    :goto_2
    move/from16 v0, v16

    goto :goto_1

    .line 50
    .end local v16    # "i":I
    .restart local v0    # "i":I
    :cond_4
    const/16 v1, 0x5d

    invoke-virtual {v10, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    nop

    .end local v0    # "i":I
    iput-object v13, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 53
    nop

    .line 54
    return-void

    .line 52
    :catchall_0
    move-exception v0

    iput-object v13, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    throw v0
.end method
