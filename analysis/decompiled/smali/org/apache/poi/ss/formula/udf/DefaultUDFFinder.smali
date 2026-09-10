.class public final Lorg/apache/poi/ss/formula/udf/DefaultUDFFinder;
.super Ljava/lang/Object;
.source "DefaultUDFFinder.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/udf/UDFFinder;


# instance fields
.field private final _functionsByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/formula/functions/FreeRefFunction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/String;[Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V
    .locals 5
    .param p1, "functionNames"    # [Ljava/lang/String;
    .param p2, "functionImpls"    # [Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    array-length v2, p1

    .line 35
    .local v2, "nFuncs":I
    array-length v3, p2

    if-eq v3, v2, :cond_0

    .line 36
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Mismatch in number of function names and implementations"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 39
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    mul-int/lit8 v3, v2, 0x3

    div-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 40
    .local v1, "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_1

    .line 41
    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p2, v0

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_1
    iput-object v1, p0, Lorg/apache/poi/ss/formula/udf/DefaultUDFFinder;->_functionsByName:Ljava/util/Map;

    .line 44
    return-void
.end method


# virtual methods
.method public findFunction(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/FreeRefFunction;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/poi/ss/formula/udf/DefaultUDFFinder;->_functionsByName:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-object v0
.end method
