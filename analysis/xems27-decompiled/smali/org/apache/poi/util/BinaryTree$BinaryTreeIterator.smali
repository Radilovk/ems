.class abstract Lorg/apache/poi/util/BinaryTree$BinaryTreeIterator;
.super Ljava/lang/Object;
.source "BinaryTree.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/util/BinaryTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BinaryTreeIterator"
.end annotation


# instance fields
.field private _expected_modifications:I

.field protected _last_returned_node:Lorg/apache/poi/util/BinaryTree$Node;

.field private _next_node:Lorg/apache/poi/util/BinaryTree$Node;

.field private _type:I

.field final synthetic this$0:Lorg/apache/poi/util/BinaryTree;


# direct methods
.method constructor <init>(Lorg/apache/poi/util/BinaryTree;I)V
    .locals 1
    .param p2, "type"    # I

    .line 1741
    iput-object p1, p0, Lorg/apache/poi/util/BinaryTree$BinaryTreeIterator;->this$0:Lorg/apache/poi/util/BinaryTree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1742
    iput p2, p0, Lorg/apache/poi/util/BinaryTree$BinaryTreeIterator;->_type:I

    .line 1743
    iget v0, p1, Lorg/apache/poi/util/BinaryTree;->_modifications:I

    iput v0, p0, Lorg/apache/poi/util/BinaryTree$BinaryTreeIterator;->_expected_modifications:I

    .line 1744
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/util/BinaryTree$BinaryTreeIterator;->_last_returned_node:Lorg/apache/poi/util/BinaryTree$Node;

    .line 1745
    iget-object p1, p1, Lorg/apache/poi/util/BinaryTree;->_root:[Lorg/apache/poi/util/BinaryTree$Node;

    iget v0, p0, Lorg/apache/poi/util/BinaryTree$BinaryTreeIterator;->_type:I

    aget-object p1, p1, v0

    invoke-static {p1, v0}, Lorg/apache/poi/util/BinaryTree;->leastNode(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/util/BinaryTree$BinaryTreeIterator;->_next_node:Lorg/apache/poi/util/BinaryTree$Node;

    .line 1746
    return-void
.end method


# virtual methods
.method protected abstract doGetNext()Ljava/lang/Object;
.end method

.method public hasNext()Z
    .locals 1

    .line 1763
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree$BinaryTreeIterator;->_next_node:Lorg/apache/poi/util/BinaryTree$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;,
            Ljava/util/ConcurrentModificationException;
        }
    .end annotation

    .line 1781
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree$BinaryTreeIterator;->_next_node:Lorg/apache/poi/util/BinaryTree$Node;

    if-eqz v0, :cond_1

    .line 1785
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree$BinaryTreeIterator;->this$0:Lorg/apache/poi/util/BinaryTree;

    iget v0, v0, Lorg/apache/poi/util/BinaryTree;->_modifications:I

    iget v1, p0, Lorg/apache/poi/util/BinaryTree$BinaryTreeIterator;->_expected_modifications:I

    if-ne v0, v1, :cond_0

    .line 1789
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree$BinaryTreeIterator;->_next_node:Lorg/apache/poi/util/BinaryTree$Node;

    iput-object v0, p0, Lorg/apache/poi/util/BinaryTree$BinaryTreeIterator;->_last_returned_node:Lorg/apache/poi/util/BinaryTree$Node;

    .line 1790
    iget v1, p0, Lorg/apache/poi/util/BinaryTree$BinaryTreeIterator;->_type:I

    invoke-static {v0, v1}, Lorg/apache/poi/util/BinaryTree;->nextGreater(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/util/BinaryTree$BinaryTreeIterator;->_next_node:Lorg/apache/poi/util/BinaryTree$Node;

    .line 1791
    invoke-virtual {p0}, Lorg/apache/poi/util/BinaryTree$BinaryTreeIterator;->doGetNext()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1787
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1783
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/util/ConcurrentModificationException;
        }
    .end annotation

    .line 1817
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree$BinaryTreeIterator;->_last_returned_node:Lorg/apache/poi/util/BinaryTree$Node;

    if-eqz v0, :cond_1

    .line 1821
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree$BinaryTreeIterator;->this$0:Lorg/apache/poi/util/BinaryTree;

    iget v0, v0, Lorg/apache/poi/util/BinaryTree;->_modifications:I

    iget v1, p0, Lorg/apache/poi/util/BinaryTree$BinaryTreeIterator;->_expected_modifications:I

    if-ne v0, v1, :cond_0

    .line 1825
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree$BinaryTreeIterator;->this$0:Lorg/apache/poi/util/BinaryTree;

    iget-object v1, p0, Lorg/apache/poi/util/BinaryTree$BinaryTreeIterator;->_last_returned_node:Lorg/apache/poi/util/BinaryTree$Node;

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BinaryTree;->doRedBlackDelete(Lorg/apache/poi/util/BinaryTree$Node;)V

    .line 1826
    iget v0, p0, Lorg/apache/poi/util/BinaryTree$BinaryTreeIterator;->_expected_modifications:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/util/BinaryTree$BinaryTreeIterator;->_expected_modifications:I

    .line 1827
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/util/BinaryTree$BinaryTreeIterator;->_last_returned_node:Lorg/apache/poi/util/BinaryTree$Node;

    .line 1828
    return-void

    .line 1823
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1819
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
