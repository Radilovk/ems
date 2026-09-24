.class Lcom/isaigu/gymapp/dialog/BlockProgramEditor$3;
.super Ljava/lang/Object;
.source "BlockProgramEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->show(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/isaigu/gymapp/train/model/TrainItem;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$onDone:Ljava/lang/Runnable;

.field final synthetic val$sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

.field final synthetic val$target:Ljava/util/ArrayList;

.field final synthetic val$working:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/isaigu/gymapp/widget/XemsUi$Shell;Ljava/lang/Runnable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 87
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$3;->val$target:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$3;->val$working:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$3;->val$sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iput-object p4, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$3;->val$onDone:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 90
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$3;->val$target:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 91
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$3;->val$target:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$3;->val$working:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 92
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$3;->val$sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 93
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$3;->val$onDone:Ljava/lang/Runnable;

    if-eqz v0, :cond_1c

    .line 94
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$3;->val$onDone:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 96
    :cond_1c
    return-void
.end method
