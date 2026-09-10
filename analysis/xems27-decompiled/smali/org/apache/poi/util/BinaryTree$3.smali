.class Lorg/apache/poi/util/BinaryTree$3;
.super Ljava/util/AbstractCollection;
.source "BinaryTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/util/BinaryTree;->valuesByValue()Ljava/util/Collection;
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

    .line 343
    iput-object p1, p0, Lorg/apache/poi/util/BinaryTree$3;->this$0:Lorg/apache/poi/util/BinaryTree;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 390
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree$3;->this$0:Lorg/apache/poi/util/BinaryTree;

    invoke-virtual {v0}, Lorg/apache/poi/util/BinaryTree;->clear()V

    .line 391
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 362
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree$3;->this$0:Lorg/apache/poi/util/BinaryTree;

    invoke-virtual {v0, p1}, Lorg/apache/poi/util/BinaryTree;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .line 346
    new-instance v0, Lorg/apache/poi/util/BinaryTree$3$1;

    sget v1, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/util/BinaryTree$3$1;-><init>(Lorg/apache/poi/util/BinaryTree$3;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 367
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree$3;->this$0:Lorg/apache/poi/util/BinaryTree;

    iget v0, v0, Lorg/apache/poi/util/BinaryTree;->_size:I

    .line 369
    .local v0, "old_size":I
    iget-object v1, p0, Lorg/apache/poi/util/BinaryTree$3;->this$0:Lorg/apache/poi/util/BinaryTree;

    invoke-virtual {v1, p1}, Lorg/apache/poi/util/BinaryTree;->removeValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object v1, p0, Lorg/apache/poi/util/BinaryTree$3;->this$0:Lorg/apache/poi/util/BinaryTree;

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

    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, "modified":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 378
    .local v1, "iter":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 380
    iget-object v2, p0, Lorg/apache/poi/util/BinaryTree$3;->this$0:Lorg/apache/poi/util/BinaryTree;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/util/BinaryTree;->removeValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 382
    const/4 v0, 0x1

    goto :goto_0

    .line 385
    :cond_1
    return v0
.end method

.method public size()I
    .locals 1

    .line 357
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree$3;->this$0:Lorg/apache/poi/util/BinaryTree;

    invoke-virtual {v0}, Lorg/apache/poi/util/BinaryTree;->size()I

    move-result v0

    return v0
.end method
