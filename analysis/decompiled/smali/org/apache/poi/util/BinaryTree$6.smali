.class Lorg/apache/poi/util/BinaryTree$6;
.super Ljava/util/AbstractSet;
.source "BinaryTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/util/BinaryTree;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/util/BinaryTree;


# direct methods
.method constructor <init>(Lorg/apache/poi/util/BinaryTree;)V
    .locals 0

    .prologue
    .line 1666
    iput-object p1, p0, Lorg/apache/poi/util/BinaryTree$6;->this$0:Lorg/apache/poi/util/BinaryTree;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1719
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree$6;->this$0:Lorg/apache/poi/util/BinaryTree;

    invoke-virtual {v0}, Lorg/apache/poi/util/BinaryTree;->clear()V

    .line 1720
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 1680
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_0

    .line 1689
    :goto_0
    return v4

    :cond_0
    move-object v0, p1

    .line 1684
    check-cast v0, Ljava/util/Map$Entry;

    .line 1685
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 1686
    .local v2, "value":Ljava/lang/Object;
    iget-object v5, p0, Lorg/apache/poi/util/BinaryTree$6;->this$0:Lorg/apache/poi/util/BinaryTree;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    sget v6, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    invoke-virtual {v5, v3, v6}, Lorg/apache/poi/util/BinaryTree;->lookup(Ljava/lang/Comparable;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    .line 1689
    .local v1, "node":Lorg/apache/poi/util/BinaryTree$Node;
    if-eqz v1, :cond_1

    sget v3, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    invoke-virtual {v1, v3}, Lorg/apache/poi/util/BinaryTree$Node;->getData(I)Ljava/lang/Comparable;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 1669
    new-instance v0, Lorg/apache/poi/util/BinaryTree$6$1;

    sget v1, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/util/BinaryTree$6$1;-><init>(Lorg/apache/poi/util/BinaryTree$6;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 1695
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_0

    move v3, v4

    .line 1709
    :goto_0
    return v3

    :cond_0
    move-object v0, p1

    .line 1699
    check-cast v0, Ljava/util/Map$Entry;

    .line 1700
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 1701
    .local v2, "value":Ljava/lang/Object;
    iget-object v5, p0, Lorg/apache/poi/util/BinaryTree$6;->this$0:Lorg/apache/poi/util/BinaryTree;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    sget v6, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    invoke-virtual {v5, v3, v6}, Lorg/apache/poi/util/BinaryTree;->lookup(Ljava/lang/Comparable;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    .line 1704
    .local v1, "node":Lorg/apache/poi/util/BinaryTree$Node;
    if-eqz v1, :cond_1

    sget v3, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    invoke-virtual {v1, v3}, Lorg/apache/poi/util/BinaryTree$Node;->getData(I)Ljava/lang/Comparable;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1706
    iget-object v3, p0, Lorg/apache/poi/util/BinaryTree$6;->this$0:Lorg/apache/poi/util/BinaryTree;

    invoke-virtual {v3, v1}, Lorg/apache/poi/util/BinaryTree;->doRedBlackDelete(Lorg/apache/poi/util/BinaryTree$Node;)V

    .line 1707
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    .line 1709
    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1714
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree$6;->this$0:Lorg/apache/poi/util/BinaryTree;

    invoke-virtual {v0}, Lorg/apache/poi/util/BinaryTree;->size()I

    move-result v0

    return v0
.end method
