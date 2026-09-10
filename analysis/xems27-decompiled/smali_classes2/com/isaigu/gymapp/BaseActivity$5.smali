.class Lcom/isaigu/gymapp/BaseActivity$5;
.super Lcom/isaigu/gymapp/widget/NoDoubleClickListener;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/BaseActivity;->showMessageDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/BaseActivity;

.field final synthetic val$okCallback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/BaseActivity;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/BaseActivity;

    .line 223
    iput-object p1, p0, Lcom/isaigu/gymapp/BaseActivity$5;->this$0:Lcom/isaigu/gymapp/BaseActivity;

    iput-object p2, p0, Lcom/isaigu/gymapp/BaseActivity$5;->val$okCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 225
    iget-object v0, p0, Lcom/isaigu/gymapp/BaseActivity$5;->val$okCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 226
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/BaseActivity$5;->this$0:Lcom/isaigu/gymapp/BaseActivity;

    invoke-static {v0}, Lcom/isaigu/gymapp/BaseActivity;->access$100(Lcom/isaigu/gymapp/BaseActivity;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->cancel()V

    .line 229
    return-void
.end method
