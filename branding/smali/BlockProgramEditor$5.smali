.class Lcom/isaigu/gymapp/dialog/BlockProgramEditor$5;
.super Ljava/lang/Object;
.source "BlockProgramEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->blockCard(Landroid/app/Activity;Ljava/util/ArrayList;I[ILjava/lang/Runnable;Lcom/isaigu/gymapp/widget/XemsUi$Shell;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$index:I

.field final synthetic val$rebuild:Ljava/lang/Runnable;

.field final synthetic val$working:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;ILjava/lang/Runnable;)V
    .registers 4

    .line 134
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$5;->val$working:Ljava/util/ArrayList;

    iput p2, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$5;->val$index:I

    iput-object p3, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$5;->val$rebuild:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 137
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$5;->val$working:Ljava/util/ArrayList;

    iget v0, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$5;->val$index:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 138
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$5;->val$rebuild:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 139
    return-void
.end method
