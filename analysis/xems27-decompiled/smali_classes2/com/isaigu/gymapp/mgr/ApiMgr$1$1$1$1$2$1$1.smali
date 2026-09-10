.class Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1$2$1$1;
.super Ljava/lang/Object;
.source "ApiMgr.java"

# interfaces
.implements Lcom/maning/updatelibrary/InstallUtils$InstallCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1$2$1;->onGranted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$5:Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1$2$1;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1$2$1;)V
    .locals 0
    .param p1, "this$5"    # Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1$2$1;

    .line 310
    iput-object p1, p0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1$2$1$1;->this$5:Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .line 317
    iget-object v0, p0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1$2$1$1;->this$5:Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1$2$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1$2$1;->this$4:Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1$2;

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1$2;->this$3:Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1;->this$2:Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1;->this$1:Lcom/isaigu/gymapp/mgr/ApiMgr$1$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1;->this$0:Lcom/isaigu/gymapp/mgr/ApiMgr$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/ApiMgr$1;->val$parent:Lcom/isaigu/gymapp/BaseActivity;

    const-string v1, "\u5b89\u88c5\u5931\u8d25"

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1$2$1$1;->this$5:Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1$2$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1$2$1;->this$4:Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1$2;

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1$2;->this$3:Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1;->this$2:Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1;->this$1:Lcom/isaigu/gymapp/mgr/ApiMgr$1$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1;->this$0:Lcom/isaigu/gymapp/mgr/ApiMgr$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/ApiMgr$1;->val$parent:Lcom/isaigu/gymapp/BaseActivity;

    const-string v1, "\u6b63\u5728\u5b89\u88c5\u7a0b\u5e8f"

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 315
    return-void
.end method
