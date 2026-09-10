.class Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1$2$1;
.super Ljava/lang/Object;
.source "ApiMgr.java"

# interfaces
.implements Lcom/maning/updatelibrary/InstallUtils$InstallPermissionCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$4:Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1$2;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1$2;)V
    .locals 0
    .param p1, "this$4"    # Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1$2;

    .line 307
    iput-object p1, p0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1$2$1;->this$4:Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied()V
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1$2$1;->this$4:Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1$2;

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1$2;->this$3:Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1;->this$2:Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1;->this$1:Lcom/isaigu/gymapp/mgr/ApiMgr$1$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1;->this$0:Lcom/isaigu/gymapp/mgr/ApiMgr$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/ApiMgr$1;->val$parent:Lcom/isaigu/gymapp/BaseActivity;

    const-string v1, "\u4e0d\u5141\u8bb8\u5b89\u88c5\u548b\u641e\uff1f\u5f3a\u5236\u66f4\u65b0\u5c31\u9000\u51fa\u5e94\u7528\u7a0b\u5e8f\u5427\uff01"

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method public onGranted()V
    .locals 3

    .line 310
    iget-object v0, p0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1$2$1;->this$4:Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1$2;

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1$2;->this$3:Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1;->this$2:Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1;->this$1:Lcom/isaigu/gymapp/mgr/ApiMgr$1$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1;->this$0:Lcom/isaigu/gymapp/mgr/ApiMgr$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/ApiMgr$1;->val$parent:Lcom/isaigu/gymapp/BaseActivity;

    iget-object v1, p0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1$2$1;->this$4:Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1$2;

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1$2;->this$3:Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1;

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1;->this$2:Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1;

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1;->this$1:Lcom/isaigu/gymapp/mgr/ApiMgr$1$1;

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1;->val$path:Ljava/lang/String;

    new-instance v2, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1$2$1$1;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1$2$1$1;-><init>(Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1$2$1;)V

    invoke-static {v0, v1, v2}, Lcom/maning/updatelibrary/InstallUtils;->installAPK(Landroid/app/Activity;Ljava/lang/String;Lcom/maning/updatelibrary/InstallUtils$InstallCallBack;)V

    .line 320
    return-void
.end method
