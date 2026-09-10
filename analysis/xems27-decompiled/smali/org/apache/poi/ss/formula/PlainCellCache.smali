.class final Lorg/apache/poi/ss/formula/PlainCellCache;
.super Ljava/lang/Object;
.source "PlainCellCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/PlainCellCache$Loc;
    }
.end annotation


# instance fields
.field private _plainValueEntriesByLoc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/formula/PlainCellCache$Loc;",
            "Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/PlainCellCache;->_plainValueEntriesByLoc:Ljava/util/Map;

    .line 82
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/apache/poi/ss/formula/PlainCellCache;->_plainValueEntriesByLoc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 88
    return-void
.end method

.method public get(Lorg/apache/poi/ss/formula/PlainCellCache$Loc;)Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;
    .locals 1
    .param p1, "key"    # Lorg/apache/poi/ss/formula/PlainCellCache$Loc;

    .line 90
    iget-object v0, p0, Lorg/apache/poi/ss/formula/PlainCellCache;->_plainValueEntriesByLoc:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;

    return-object v0
.end method

.method public put(Lorg/apache/poi/ss/formula/PlainCellCache$Loc;Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;)V
    .locals 1
    .param p1, "key"    # Lorg/apache/poi/ss/formula/PlainCellCache$Loc;
    .param p2, "cce"    # Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;

    .line 84
    iget-object v0, p0, Lorg/apache/poi/ss/formula/PlainCellCache;->_plainValueEntriesByLoc:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method

.method public remove(Lorg/apache/poi/ss/formula/PlainCellCache$Loc;)V
    .locals 1
    .param p1, "key"    # Lorg/apache/poi/ss/formula/PlainCellCache$Loc;

    .line 93
    iget-object v0, p0, Lorg/apache/poi/ss/formula/PlainCellCache;->_plainValueEntriesByLoc:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-void
.end method
