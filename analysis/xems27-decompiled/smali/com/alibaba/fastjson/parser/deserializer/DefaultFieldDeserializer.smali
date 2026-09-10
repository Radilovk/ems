.class public Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
.source "DefaultFieldDeserializer.java"


# instance fields
.field protected fieldValueDeserilizer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V
    .locals 0
    .param p1, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "fieldInfo"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ")V"
        }
    .end annotation

    .line 26
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 27
    return-void
.end method


# virtual methods
.method public getFastMatchToken()I
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->fieldValueDeserilizer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    if-eqz v0, :cond_0

    .line 125
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v0

    return v0

    .line 128
    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public getFieldValueDeserilizer(Lcom/alibaba/fastjson/parser/ParserConfig;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .locals 5
    .param p1, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 30
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->fieldValueDeserilizer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    if-nez v0, :cond_1

    .line 31
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v0

    .line 32
    .local v0, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->deserializeUsing()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Void;

    if-eq v1, v2, :cond_0

    .line 33
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->deserializeUsing()Ljava/lang/Class;

    move-result-object v1

    .line 35
    .local v1, "deserializeUsing":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    iput-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->fieldValueDeserilizer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    nop

    .line 39
    .end local v1    # "deserializeUsing":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 36
    .restart local v1    # "deserializeUsing":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 37
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string v4, "create deserializeUsing ObjectDeserializer error"

    invoke-direct {v3, v4, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 40
    .end local v1    # "deserializeUsing":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v1, v2}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->fieldValueDeserilizer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 44
    .end local v0    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->fieldValueDeserilizer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    return-object v0
.end method

.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 10
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "objectType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 49
    .local p4, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->fieldValueDeserilizer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    if-nez v0, :cond_0

    .line 50
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->getFieldValueDeserilizer(Lcom/alibaba/fastjson/parser/ParserConfig;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->fieldValueDeserilizer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 54
    .local v0, "fieldValueDeserilizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 55
    .local v1, "fieldType":Ljava/lang/reflect/Type;
    instance-of v2, p3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_2

    .line 56
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v2

    .line 57
    .local v2, "objContext":Lcom/alibaba/fastjson/parser/ParseContext;
    if-eqz v2, :cond_1

    .line 58
    iput-object p3, v2, Lcom/alibaba/fastjson/parser/ParseContext;->type:Ljava/lang/reflect/Type;

    .line 60
    :cond_1
    if-eq v1, p3, :cond_2

    .line 61
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->clazz:Ljava/lang/Class;

    invoke-static {v3, p3, v1}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 62
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    move-object v7, v1

    goto :goto_0

    .line 68
    .end local v2    # "objContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_2
    move-object v7, v1

    .end local v1    # "fieldType":Ljava/lang/reflect/Type;
    .local v7, "fieldType":Ljava/lang/reflect/Type;
    :goto_0
    instance-of v1, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget v1, v1, Lcom/alibaba/fastjson/util/FieldInfo;->parserFeatures:I

    if-eqz v1, :cond_3

    .line 69
    move-object v1, v0

    check-cast v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .line 70
    .local v1, "javaBeanDeser":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget v3, v3, Lcom/alibaba/fastjson/util/FieldInfo;->parserFeatures:I

    invoke-virtual {v1, p1, v7, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 71
    .local v1, "value":Ljava/lang/Object;
    goto :goto_1

    .line 72
    .end local v1    # "value":Ljava/lang/Object;
    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    if-eqz v1, :cond_4

    instance-of v1, v0, Lcom/alibaba/fastjson/parser/deserializer/ContextObjectDeserializer;

    if-eqz v1, :cond_4

    .line 73
    move-object v1, v0

    check-cast v1, Lcom/alibaba/fastjson/parser/deserializer/ContextObjectDeserializer;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v4, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v5, v2, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget v6, v2, Lcom/alibaba/fastjson/util/FieldInfo;->parserFeatures:I

    .line 74
    move-object v2, p1

    move-object v3, v7

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/parser/deserializer/ContextObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "value":Ljava/lang/Object;
    goto :goto_1

    .line 80
    .end local v1    # "value":Ljava/lang/Object;
    :cond_4
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v0, p1, v7, v1}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 84
    .restart local v1    # "value":Ljava/lang/Object;
    :goto_1
    instance-of v2, v1, [B

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    .line 85
    const-string v4, "gzip"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    const-string v4, "gzip,base64"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 86
    :cond_5
    move-object v2, v1

    check-cast v2, [B

    check-cast v2, [B

    .line 87
    .local v2, "bytes":[B
    const/4 v4, 0x0

    .line 89
    .local v4, "gzipIn":Ljava/util/zip/GZIPInputStream;
    :try_start_0
    new-instance v5, Ljava/util/zip/GZIPInputStream;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v5, v6}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v5

    .line 91
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 93
    .local v5, "byteOut":Ljava/io/ByteArrayOutputStream;
    :goto_2
    const/16 v6, 0x400

    new-array v6, v6, [B

    .line 94
    .local v6, "buf":[B
    invoke-virtual {v4, v6}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v8

    .line 95
    .local v8, "len":I
    const/4 v9, -0x1

    if-ne v8, v9, :cond_6

    .line 96
    nop

    .line 102
    .end local v6    # "buf":[B
    .end local v8    # "len":I
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    move-object v1, v6

    .line 106
    .end local v5    # "byteOut":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 98
    .restart local v5    # "byteOut":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "buf":[B
    .restart local v8    # "len":I
    :cond_6
    if-lez v8, :cond_7

    .line 99
    invoke-virtual {v5, v6, v3, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v6    # "buf":[B
    .end local v8    # "len":I
    :cond_7
    goto :goto_2

    .line 104
    .end local v5    # "byteOut":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v3

    .line 105
    .local v3, "ex":Ljava/io/IOException;
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string v6, "unzip bytes error."

    invoke-direct {v5, v6, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 109
    .end local v2    # "bytes":[B
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v4    # "gzipIn":Ljava/util/zip/GZIPInputStream;
    :cond_8
    :goto_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getResolveStatus()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_9

    .line 110
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-result-object v2

    .line 111
    .local v2, "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    iput-object p0, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->fieldDeserializer:Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 112
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 113
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    .line 114
    .end local v2    # "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    goto :goto_4

    .line 115
    :cond_9
    if-nez p2, :cond_a

    .line 116
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {p4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 118
    :cond_a
    invoke-virtual {p0, p2, v1}, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    :goto_4
    return-void
.end method

.method public parseFieldUnwrapped(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 2
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "objectType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 132
    .local p4, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "TODO"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
