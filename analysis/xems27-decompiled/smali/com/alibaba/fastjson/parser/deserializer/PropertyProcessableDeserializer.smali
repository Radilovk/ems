.class public Lcom/alibaba/fastjson/parser/deserializer/PropertyProcessableDeserializer;
.super Ljava/lang/Object;
.source "PropertyProcessableDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# instance fields
.field public final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lcom/alibaba/fastjson/parser/deserializer/PropertyProcessable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Lcom/alibaba/fastjson/parser/deserializer/PropertyProcessable;",
            ">;)V"
        }
    .end annotation

    .line 15
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/alibaba/fastjson/parser/deserializer/PropertyProcessable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/PropertyProcessableDeserializer;->type:Ljava/lang/Class;

    .line 17
    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
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

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/PropertyProcessableDeserializer;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/PropertyProcessable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .local v0, "processable":Lcom/alibaba/fastjson/parser/deserializer/PropertyProcessable;
    nop

    .line 27
    invoke-virtual {p1, v0, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse(Lcom/alibaba/fastjson/parser/deserializer/PropertyProcessable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 29
    .local v1, "object":Ljava/lang/Object;
    return-object v1

    .line 23
    .end local v0    # "processable":Lcom/alibaba/fastjson/parser/deserializer/PropertyProcessable;
    .end local v1    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "craete instance error"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFastMatchToken()I
    .locals 1

    .line 33
    const/16 v0, 0xc

    return v0
.end method
