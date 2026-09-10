.class Lorg/apache/poi/util/BinaryTree$2$1;
.super Lorg/apache/poi/util/BinaryTree$BinaryTreeIterator;
.source "BinaryTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/util/BinaryTree$2;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/poi/util/BinaryTree$2;


# direct methods
.method constructor <init>(Lorg/apache/poi/util/BinaryTree$2;I)V
    .locals 0
    .param p2, "x0"    # I

    .line 284
    iput-object p1, p0, Lorg/apache/poi/util/BinaryTree$2$1;->this$1:Lorg/apache/poi/util/BinaryTree$2;

    iget-object p1, p1, Lorg/apache/poi/util/BinaryTree$2;->this$0:Lorg/apache/poi/util/BinaryTree;

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/util/BinaryTree$BinaryTreeIterator;-><init>(Lorg/apache/poi/util/BinaryTree;I)V

    return-void
.end method


# virtual methods
.method protected doGetNext()Ljava/lang/Object;
    .locals 2

    .line 287
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree$2$1;->_last_returned_node:Lorg/apache/poi/util/BinaryTree$Node;

    sget v1, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BinaryTree$Node;->getData(I)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method
