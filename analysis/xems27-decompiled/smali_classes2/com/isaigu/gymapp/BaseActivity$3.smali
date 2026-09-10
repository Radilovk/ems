.class Lcom/isaigu/gymapp/BaseActivity$3;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/BaseActivity;->showDialogWithImage(ILjava/lang/String;JLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/BaseActivity;

.field final synthetic val$calllback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/BaseActivity;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/BaseActivity;

    .line 152
    iput-object p1, p0, Lcom/isaigu/gymapp/BaseActivity$3;->this$0:Lcom/isaigu/gymapp/BaseActivity;

    iput-object p2, p0, Lcom/isaigu/gymapp/BaseActivity$3;->val$calllback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/isaigu/gymapp/BaseActivity$3;->this$0:Lcom/isaigu/gymapp/BaseActivity;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/BaseActivity;->dismissStatusDialog()V

    .line 155
    iget-object v0, p0, Lcom/isaigu/gymapp/BaseActivity$3;->val$calllback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 156
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 158
    :cond_0
    return-void
.end method
