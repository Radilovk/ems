.class Lorg/apache/poi/util/BinaryTree$5;
.super Ljava/util/AbstractCollection;
.source "BinaryTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/util/BinaryTree;->values()Ljava/util/Collection;
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

    .line 1594
    iput-object p1, p0, Lorg/apache/poi/util/BinaryTree$5;->this$0:Lorg/apache/poi/util/BinaryTree;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1641
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree$5;->this$0:Lorg/apache/poi/util/BinaryTree;

    invoke-virtual {v0}, Lorg/apache/poi/util/BinaryTree;->clear()V

    .line 1642
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 1613
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree$5;->this$0:Lorg/apache/poi/util/BinaryTree;

    invoke-virtual {v0, p1}, Lorg/apache/poi/util/BinaryTree;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .line 1597
    new-instance v0, Lorg/apache/poi/util/BinaryTree$5$1;

    sget v1, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/util/BinaryTree$5$1;-><init>(Lorg/apache/poi/util/BinaryTree$5;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 1618
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree$5;->this$0:Lorg/apache/poi/util/BinaryTree;

    iget v0, v0, Lorg/apache/poi/util/BinaryTree;->_size:I

    .line 1620
    .local v0, "old_size":I
    iget-object v1, p0, Lorg/apache/poi/util/BinaryTree$5;->this$0:Lorg/apache/poi/util/BinaryTree;

    invoke-virtual {v1, p1}, Lorg/apache/poi/util/BinaryTree;->removeValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1621
    iget-object v1, p0, Lorg/apache/poi/util/BinaryTree$5;->this$0:Lorg/apache/poi/util/BinaryTree;

    iget v1, v1, Lorg/apache/poi/util/BinaryTree;->_size:I

    if-eq v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .param p1, "c"    # Ljava/util/Collection;

    .line 1626
    const/4 v0, 0x0

    .line 1627
    .local v0, "modified":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1629
    .local v1, "iter":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1631
    iget-object v2, p0, Lorg/apache/poi/util/BinaryTree$5;->this$0:Lorg/apache/poi/util/BinaryTree;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/util/BinaryTree;->removeValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1633
    const/4 v0, 0x1

    goto :goto_0

    .line 1636
    :cond_1
    return v0
.end method

.method public size()I
    .locals 1

    .line 1608
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree$5;->this$0:Lorg/apache/poi/util/BinaryTree;

    invoke-virtual {v0}, Lorg/apache/poi/util/BinaryTree;->size()I

    move-result v0

    return v0
.end method
