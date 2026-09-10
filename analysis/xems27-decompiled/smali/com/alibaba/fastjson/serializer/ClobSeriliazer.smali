.class public Lcom/alibaba/fastjson/serializer/ClobSeriliazer;
.super Ljava/lang/Object;
.source "ClobSeriliazer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/ClobSeriliazer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/alibaba/fastjson/serializer/ClobSeriliazer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/ClobSeriliazer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/ClobSeriliazer;->instance:Lcom/alibaba/fastjson/serializer/ClobSeriliazer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 6
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

    .line 17
    if-nez p2, :cond_0

    .line 18
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeNull()V

    .line 19
    return-void

    .line 22
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/sql/Clob;

    .line 23
    .local v0, "clob":Ljava/sql/Clob;
    invoke-interface {v0}, Ljava/sql/Clob;->getCharacterStream()Ljava/io/Reader;

    move-result-object v1

    .line 25
    .local v1, "reader":Ljava/io/Reader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 28
    .local v2, "buf":Ljava/lang/StringBuilder;
    const/16 v3, 0x800

    :try_start_1
    new-array v3, v3, [C

    .line 30
    .local v3, "chars":[C
    :goto_0
    array-length v4, v3

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/io/Reader;->read([CII)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 31
    .local v4, "len":I
    if-gez v4, :cond_1

    .line 32
    nop

    .line 38
    .end local v3    # "chars":[C
    .end local v4    # "len":I
    nop

    .line 40
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 41
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    .line 42
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 45
    .end local v0    # "clob":Ljava/sql/Clob;
    .end local v1    # "reader":Ljava/io/Reader;
    .end local v2    # "buf":Ljava/lang/StringBuilder;
    .end local v3    # "text":Ljava/lang/String;
    nop

    .line 46
    return-void

    .line 34
    .restart local v0    # "clob":Ljava/sql/Clob;
    .restart local v1    # "reader":Ljava/io/Reader;
    .restart local v2    # "buf":Ljava/lang/StringBuilder;
    .local v3, "chars":[C
    .restart local v4    # "len":I
    :cond_1
    :try_start_3
    invoke-virtual {v2, v3, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    .line 35
    nop

    .end local v4    # "len":I
    goto :goto_0

    .line 36
    .end local v3    # "chars":[C
    :catch_0
    move-exception v3

    .line 37
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_4
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "read string from reader error"

    invoke-direct {v4, v5, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p1    # "serializer":Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .end local p2    # "object":Ljava/lang/Object;
    .end local p3    # "fieldName":Ljava/lang/Object;
    .end local p4    # "fieldType":Ljava/lang/reflect/Type;
    .end local p5    # "features":I
    throw v4
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    .line 43
    .end local v0    # "clob":Ljava/sql/Clob;
    .end local v1    # "reader":Ljava/io/Reader;
    .end local v2    # "buf":Ljava/lang/StringBuilder;
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local p1    # "serializer":Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .restart local p2    # "object":Ljava/lang/Object;
    .restart local p3    # "fieldName":Ljava/lang/Object;
    .restart local p4    # "fieldType":Ljava/lang/reflect/Type;
    .restart local p5    # "features":I
    :catch_1
    move-exception v0

    .line 44
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "write clob error"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
