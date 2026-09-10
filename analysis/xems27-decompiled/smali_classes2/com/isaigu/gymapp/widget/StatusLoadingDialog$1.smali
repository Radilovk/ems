.class Lcom/isaigu/gymapp/widget/StatusLoadingDialog$1;
.super Lcom/isaigu/gymapp/widget/NoDoubleClickListener;
.source "StatusLoadingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->setShowWithStatusImageAndButton(ILjava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/widget/StatusLoadingDialog;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/StatusLoadingDialog;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/widget/StatusLoadingDialog;

    .line 101
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog$1;->this$0:Lcom/isaigu/gymapp/widget/StatusLoadingDialog;

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 103
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog$1;->val$runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 104
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 106
    :cond_0
    return-void
.end method
