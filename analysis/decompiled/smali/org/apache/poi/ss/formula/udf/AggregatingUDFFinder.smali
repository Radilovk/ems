.class public Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;
.super Ljava/lang/Object;
.source "AggregatingUDFFinder.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/udf/UDFFinder;


# instance fields
.field private final _usedToolPacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/poi/ss/formula/udf/UDFFinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lorg/apache/poi/ss/formula/udf/UDFFinder;)V
    .locals 2
    .param p1, "usedToolPacks"    # [Lorg/apache/poi/ss/formula/udf/UDFFinder;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;->_usedToolPacks:Ljava/util/Collection;

    .line 37
    iget-object v0, p0, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;->_usedToolPacks:Ljava/util/Collection;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 38
    return-void
.end method


# virtual methods
.method public add(Lorg/apache/poi/ss/formula/udf/UDFFinder;)V
    .locals 1
    .param p1, "toolPack"    # Lorg/apache/poi/ss/formula/udf/UDFFinder;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;->_usedToolPacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method public findFunction(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/FreeRefFunction;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v3, p0, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;->_usedToolPacks:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/formula/udf/UDFFinder;

    .line 50
    .local v2, "pack":Lorg/apache/poi/ss/formula/udf/UDFFinder;
    invoke-interface {v2, p1}, Lorg/apache/poi/ss/formula/udf/UDFFinder;->findFunction(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    move-result-object v0

    .line 51
    .local v0, "evaluatorForFunction":Lorg/apache/poi/ss/formula/functions/FreeRefFunction;
    if-eqz v0, :cond_0

    .line 55
    .end local v0    # "evaluatorForFunction":Lorg/apache/poi/ss/formula/functions/FreeRefFunction;
    .end local v2    # "pack":Lorg/apache/poi/ss/formula/udf/UDFFinder;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
