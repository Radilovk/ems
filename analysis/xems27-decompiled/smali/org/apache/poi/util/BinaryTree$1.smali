.class Lorg/apache/poi/util/BinaryTree$1;
.super Ljava/util/AbstractSet;
.source "BinaryTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/util/BinaryTree;->entrySetByValue()Ljava/util/Set;
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

    .line 197
    iput-object p1, p0, Lorg/apache/poi/util/BinaryTree$1;->this$0:Lorg/apache/poi/util/BinaryTree;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 249
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree$1;->this$0:Lorg/apache/poi/util/BinaryTree;

    invoke-virtual {v0}, Lorg/apache/poi/util/BinaryTree;->clear()V

    .line 250
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 211
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 213
    return v1

    .line 215
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 216
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 217
    .local v2, "key":Ljava/lang/Object;
    iget-object v3, p0, Lorg/apache/poi/util/BinaryTree$1;->this$0:Lorg/apache/poi/util/BinaryTree;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Comparable;

    sget v5, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    invoke-virtual {v3, v4, v5}, Lorg/apache/poi/util/BinaryTree;->lookup(Ljava/lang/Comparable;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v3

    .line 220
    .local v3, "node":Lorg/apache/poi/util/BinaryTree$Node;
    if-eqz v3, :cond_1

    sget v4, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    invoke-virtual {v3, v4}, Lorg/apache/poi/util/BinaryTree$Node;->getData(I)Ljava/lang/Comparable;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .line 200
    new-instance v0, Lorg/apache/poi/util/BinaryTree$1$1;

    sget v1, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/util/BinaryTree$1$1;-><init>(Lorg/apache/poi/util/BinaryTree$1;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 225
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 227
    return v1

    .line 229
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 230
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 231
    .local v2, "key":Ljava/lang/Object;
    iget-object v3, p0, Lorg/apache/poi/util/BinaryTree$1;->this$0:Lorg/apache/poi/util/BinaryTree;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Comparable;

    sget v5, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    invoke-virtual {v3, v4, v5}, Lorg/apache/poi/util/BinaryTree;->lookup(Ljava/lang/Comparable;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v3

    .line 234
    .local v3, "node":Lorg/apache/poi/util/BinaryTree$Node;
    if-eqz v3, :cond_1

    sget v4, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    invoke-virtual {v3, v4}, Lorg/apache/poi/util/BinaryTree$Node;->getData(I)Ljava/lang/Comparable;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 236
    iget-object v1, p0, Lorg/apache/poi/util/BinaryTree$1;->this$0:Lorg/apache/poi/util/BinaryTree;

    invoke-virtual {v1, v3}, Lorg/apache/poi/util/BinaryTree;->doRedBlackDelete(Lorg/apache/poi/util/BinaryTree$Node;)V

    .line 237
    const/4 v1, 0x1

    return v1

    .line 239
    :cond_1
    return v1
.end method

.method public size()I
    .locals 1

    .line 244
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree$1;->this$0:Lorg/apache/poi/util/BinaryTree;

    invoke-virtual {v0}, Lorg/apache/poi/util/BinaryTree;->size()I

    move-result v0

    return v0
.end method
