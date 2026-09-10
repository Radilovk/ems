.class Lorg/apache/poi/util/BinaryTree$2;
.super Ljava/util/AbstractSet;
.source "BinaryTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/util/BinaryTree;->keySetByValue()Ljava/util/Set;
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

    .line 280
    iput-object p1, p0, Lorg/apache/poi/util/BinaryTree$2;->this$0:Lorg/apache/poi/util/BinaryTree;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 312
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree$2;->this$0:Lorg/apache/poi/util/BinaryTree;

    invoke-virtual {v0}, Lorg/apache/poi/util/BinaryTree;->clear()V

    .line 313
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 299
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree$2;->this$0:Lorg/apache/poi/util/BinaryTree;

    invoke-virtual {v0, p1}, Lorg/apache/poi/util/BinaryTree;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .line 283
    new-instance v0, Lorg/apache/poi/util/BinaryTree$2$1;

    sget v1, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/util/BinaryTree$2$1;-><init>(Lorg/apache/poi/util/BinaryTree$2;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 304
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree$2;->this$0:Lorg/apache/poi/util/BinaryTree;

    iget v0, v0, Lorg/apache/poi/util/BinaryTree;->_size:I

    .line 306
    .local v0, "old_size":I
    iget-object v1, p0, Lorg/apache/poi/util/BinaryTree$2;->this$0:Lorg/apache/poi/util/BinaryTree;

    invoke-virtual {v1, p1}, Lorg/apache/poi/util/BinaryTree;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    iget-object v1, p0, Lorg/apache/poi/util/BinaryTree$2;->this$0:Lorg/apache/poi/util/BinaryTree;

    iget v1, v1, Lorg/apache/poi/util/BinaryTree;->_size:I

    if-eq v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public size()I
    .locals 1

    .line 294
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree$2;->this$0:Lorg/apache/poi/util/BinaryTree;

    invoke-virtual {v0}, Lorg/apache/poi/util/BinaryTree;->size()I

    move-result v0

    return v0
.end method
