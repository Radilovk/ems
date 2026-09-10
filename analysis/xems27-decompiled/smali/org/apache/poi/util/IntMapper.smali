.class public Lorg/apache/poi/util/IntMapper;
.super Ljava/lang/Object;
.source "IntMapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final _default_size:I = 0xa


# instance fields
.field private elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private valueKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    .local p0, "this":Lorg/apache/poi/util/IntMapper;, "Lorg/apache/poi/util/IntMapper<TT;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/apache/poi/util/IntMapper;-><init>(I)V

    .line 51
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 54
    .local p0, "this":Lorg/apache/poi/util/IntMapper;, "Lorg/apache/poi/util/IntMapper<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/util/IntMapper;->elements:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/util/IntMapper;->valueKeyMap:Ljava/util/Map;

    .line 57
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 69
    .local p0, "this":Lorg/apache/poi/util/IntMapper;, "Lorg/apache/poi/util/IntMapper<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/apache/poi/util/IntMapper;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 70
    .local v0, "index":I
    iget-object v1, p0, Lorg/apache/poi/util/IntMapper;->elements:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v1, p0, Lorg/apache/poi/util/IntMapper;->valueKeyMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const/4 v1, 0x1

    return v1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 80
    .local p0, "this":Lorg/apache/poi/util/IntMapper;, "Lorg/apache/poi/util/IntMapper<TT;>;"
    iget-object v0, p0, Lorg/apache/poi/util/IntMapper;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getIndex(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 84
    .local p0, "this":Lorg/apache/poi/util/IntMapper;, "Lorg/apache/poi/util/IntMapper<TT;>;"
    .local p1, "o":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/apache/poi/util/IntMapper;->valueKeyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 85
    .local v0, "i":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 86
    const/4 v1, -0x1

    return v1

    .line 87
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 91
    .local p0, "this":Lorg/apache/poi/util/IntMapper;, "Lorg/apache/poi/util/IntMapper<TT;>;"
    iget-object v0, p0, Lorg/apache/poi/util/IntMapper;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 76
    .local p0, "this":Lorg/apache/poi/util/IntMapper;, "Lorg/apache/poi/util/IntMapper<TT;>;"
    iget-object v0, p0, Lorg/apache/poi/util/IntMapper;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
