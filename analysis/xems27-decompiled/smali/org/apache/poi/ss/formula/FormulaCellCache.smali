.class final Lorg/apache/poi/ss/formula/FormulaCellCache;
.super Ljava/lang/Object;
.source "FormulaCellCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/FormulaCellCache$IEntryOperation;
    }
.end annotation


# instance fields
.field private final _formulaEntriesByCell:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/FormulaCellCache;->_formulaEntriesByCell:Ljava/util/Map;

    .line 39
    return-void
.end method


# virtual methods
.method public applyOperation(Lorg/apache/poi/ss/formula/FormulaCellCache$IEntryOperation;)V
    .locals 2
    .param p1, "operation"    # Lorg/apache/poi/ss/formula/FormulaCellCache$IEntryOperation;

    .line 68
    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaCellCache;->_formulaEntriesByCell:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 69
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    invoke-interface {p1, v1}, Lorg/apache/poi/ss/formula/FormulaCellCache$IEntryOperation;->processEntry(Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;)V

    goto :goto_0

    .line 72
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaCellCache;->_formulaEntriesByCell:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 50
    return-void
.end method

.method public get(Lorg/apache/poi/ss/formula/EvaluationCell;)Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    .locals 2
    .param p1, "cell"    # Lorg/apache/poi/ss/formula/EvaluationCell;

    .line 56
    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaCellCache;->_formulaEntriesByCell:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getIdentityKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    return-object v0
.end method

.method public getCacheEntries()[Lorg/apache/poi/ss/formula/CellCacheEntry;
    .locals 2

    .line 43
    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaCellCache;->_formulaEntriesByCell:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    .line 44
    .local v0, "result":[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaCellCache;->_formulaEntriesByCell:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 45
    return-object v0
.end method

.method public put(Lorg/apache/poi/ss/formula/EvaluationCell;Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;)V
    .locals 2
    .param p1, "cell"    # Lorg/apache/poi/ss/formula/EvaluationCell;
    .param p2, "entry"    # Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    .line 60
    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaCellCache;->_formulaEntriesByCell:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getIdentityKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public remove(Lorg/apache/poi/ss/formula/EvaluationCell;)Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    .locals 2
    .param p1, "cell"    # Lorg/apache/poi/ss/formula/EvaluationCell;

    .line 64
    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaCellCache;->_formulaEntriesByCell:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getIdentityKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    return-object v0
.end method
