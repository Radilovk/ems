.class public Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;
.super Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;
.source "IndexedUDFFinder.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final _funcMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lorg/apache/poi/ss/formula/udf/UDFFinder;)V
    .locals 1
    .param p1, "usedToolPacks"    # [Lorg/apache/poi/ss/formula/udf/UDFFinder;

    .line 34
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;-><init>([Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;->_funcMap:Ljava/util/HashMap;

    .line 36
    return-void
.end method


# virtual methods
.method public findFunction(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/FreeRefFunction;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 39
    invoke-super {p0, p1}, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;->findFunction(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    move-result-object v0

    .line 40
    .local v0, "func":Lorg/apache/poi/ss/formula/functions/FreeRefFunction;
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;->getFunctionIndex(Ljava/lang/String;)I

    move-result v1

    .line 42
    .local v1, "idx":I
    iget-object v2, p0, Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;->_funcMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .end local v1    # "idx":I
    :cond_0
    return-object v0
.end method

.method public getFunctionIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public getFunctionName(I)Ljava/lang/String;
    .locals 2
    .param p1, "idx"    # I

    .line 48
    iget-object v0, p0, Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;->_funcMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
