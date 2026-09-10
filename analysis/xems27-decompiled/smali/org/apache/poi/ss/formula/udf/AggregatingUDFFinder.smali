.class public Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;
.super Ljava/lang/Object;
.source "AggregatingUDFFinder.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/udf/UDFFinder;


# instance fields
.field private final _usedToolPacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/apache/poi/ss/formula/udf/UDFFinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lorg/apache/poi/ss/formula/udf/UDFFinder;)V
    .locals 2
    .param p1, "usedToolPacks"    # [Lorg/apache/poi/ss/formula/udf/UDFFinder;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;->_usedToolPacks:Ljava/util/Collection;

    .line 37
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

    .line 64
    iget-object v0, p0, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;->_usedToolPacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method public findFunction(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/FreeRefFunction;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;->_usedToolPacks:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/formula/udf/UDFFinder;

    .line 50
    .local v1, "pack":Lorg/apache/poi/ss/formula/udf/UDFFinder;
    invoke-interface {v1, p1}, Lorg/apache/poi/ss/formula/udf/UDFFinder;->findFunction(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    move-result-object v2

    .line 51
    .local v2, "evaluatorForFunction":Lorg/apache/poi/ss/formula/functions/FreeRefFunction;
    if-eqz v2, :cond_0

    .line 52
    return-object v2

    .line 54
    .end local v1    # "pack":Lorg/apache/poi/ss/formula/udf/UDFFinder;
    :cond_0
    goto :goto_0

    .line 55
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "evaluatorForFunction":Lorg/apache/poi/ss/formula/functions/FreeRefFunction;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
