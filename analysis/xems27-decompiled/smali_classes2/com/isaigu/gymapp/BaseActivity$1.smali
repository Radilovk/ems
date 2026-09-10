.class Lcom/isaigu/gymapp/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/BaseActivity;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/BaseActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/BaseActivity;

    .line 78
    iput-object p1, p0, Lcom/isaigu/gymapp/BaseActivity$1;->this$0:Lcom/isaigu/gymapp/BaseActivity;

    iput-object p2, p0, Lcom/isaigu/gymapp/BaseActivity$1;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/isaigu/gymapp/BaseActivity$1;->this$0:Lcom/isaigu/gymapp/BaseActivity;

    invoke-static {v0}, Lcom/isaigu/gymapp/BaseActivity;->access$000(Lcom/isaigu/gymapp/BaseActivity;)Landroid/widget/Toast;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/BaseActivity$1;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/isaigu/gymapp/BaseActivity$1;->this$0:Lcom/isaigu/gymapp/BaseActivity;

    invoke-static {v0}, Lcom/isaigu/gymapp/BaseActivity;->access$000(Lcom/isaigu/gymapp/BaseActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 82
    return-void
.end method
