.class Lorg/apache/poi/util/BinaryTree$6$1;
.super Lorg/apache/poi/util/BinaryTree$BinaryTreeIterator;
.source "BinaryTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/util/BinaryTree$6;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/poi/util/BinaryTree$6;


# direct methods
.method constructor <init>(Lorg/apache/poi/util/BinaryTree$6;I)V
    .locals 1
    .param p2, "x0"    # I

    .prologue
    .line 1670
    iput-object p1, p0, Lorg/apache/poi/util/BinaryTree$6$1;->this$1:Lorg/apache/poi/util/BinaryTree$6;

    iget-object v0, p1, Lorg/apache/poi/util/BinaryTree$6;->this$0:Lorg/apache/poi/util/BinaryTree;

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/util/BinaryTree$BinaryTreeIterator;-><init>(Lorg/apache/poi/util/BinaryTree;I)V

    return-void
.end method


# virtual methods
.method protected doGetNext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1673
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree$6$1;->_last_returned_node:Lorg/apache/poi/util/BinaryTree$Node;

    return-object v0
.end method
