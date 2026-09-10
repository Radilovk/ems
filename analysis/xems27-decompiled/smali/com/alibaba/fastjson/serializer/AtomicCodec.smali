.class public Lcom/alibaba/fastjson/serializer/AtomicCodec;
.super Ljava/lang/Object;
.source "AtomicCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/AtomicCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/alibaba/fastjson/serializer/AtomicCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/AtomicCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/AtomicCodec;->instance:Lcom/alibaba/fastjson/serializer/AtomicCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
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

    .line 95
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 96
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 97
    const/4 v0, 0x0

    return-object v0

    .line 100
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 101
    .local v0, "array":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;)V

    .line 103
    const-class v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    if-ne p2, v1, :cond_2

    .line 104
    new-instance v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;-><init>(I)V

    .line 105
    .local v1, "atomicArray":Ljava/util/concurrent/atomic/AtomicIntegerArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 106
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONArray;->getInteger(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->set(II)V

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    .end local v2    # "i":I
    :cond_1
    return-object v1

    .line 112
    .end local v1    # "atomicArray":Ljava/util/concurrent/atomic/AtomicIntegerArray;
    :cond_2
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>(I)V

    .line 113
    .local v1, "atomicArray":Ljava/util/concurrent/atomic/AtomicLongArray;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 114
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONArray;->getLong(I)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLongArray;->set(IJ)V

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 117
    .end local v2    # "i":I
    :cond_3
    return-object v1
.end method

.method public getFastMatchToken()I
    .locals 1

    .line 121
    const/16 v0, 0xe

    return v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 8
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

    .line 39
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 41
    .local v0, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    instance-of v1, p2, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v1, :cond_0

    .line 42
    move-object v1, p2

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 43
    .local v1, "val":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 44
    return-void

    .line 47
    .end local v1    # "val":Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_0
    instance-of v1, p2, Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v1, :cond_1

    .line 48
    move-object v1, p2

    check-cast v1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 49
    .local v1, "val":Ljava/util/concurrent/atomic/AtomicLong;
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 50
    return-void

    .line 53
    .end local v1    # "val":Ljava/util/concurrent/atomic/AtomicLong;
    :cond_1
    instance-of v1, p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v1, :cond_3

    .line 54
    move-object v1, p2

    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    .local v1, "val":Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "true"

    goto :goto_0

    :cond_2
    const-string v2, "false"

    :goto_0
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 56
    return-void

    .line 59
    .end local v1    # "val":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_3
    if-nez p2, :cond_4

    .line 60
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 61
    return-void

    .line 64
    :cond_4
    instance-of v1, p2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    const/16 v2, 0x2c

    const/16 v3, 0x5d

    const/16 v4, 0x5b

    if-eqz v1, :cond_7

    .line 65
    move-object v1, p2

    check-cast v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 66
    .local v1, "array":Ljava/util/concurrent/atomic/AtomicIntegerArray;
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->length()I

    move-result v5

    .line 67
    .local v5, "len":I
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 68
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v5, :cond_6

    .line 69
    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v6

    .line 70
    .local v6, "val":I
    if-eqz v4, :cond_5

    .line 71
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 73
    :cond_5
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 68
    .end local v6    # "val":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 75
    .end local v4    # "i":I
    :cond_6
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 77
    return-void

    .line 80
    .end local v1    # "array":Ljava/util/concurrent/atomic/AtomicIntegerArray;
    .end local v5    # "len":I
    :cond_7
    move-object v1, p2

    check-cast v1, Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 81
    .local v1, "array":Ljava/util/concurrent/atomic/AtomicLongArray;
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v5

    .line 82
    .restart local v5    # "len":I
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 83
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v5, :cond_9

    .line 84
    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v6

    .line 85
    .local v6, "val":J
    if-eqz v4, :cond_8

    .line 86
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 88
    :cond_8
    invoke-virtual {v0, v6, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 83
    .end local v6    # "val":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 90
    .end local v4    # "i":I
    :cond_9
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 91
    return-void
.end method
