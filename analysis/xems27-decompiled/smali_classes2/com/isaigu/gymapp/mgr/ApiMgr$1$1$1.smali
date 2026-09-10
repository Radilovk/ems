.class Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1;
.super Ljava/lang/Object;
.source "ApiMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/mgr/ApiMgr$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/mgr/ApiMgr$1$1;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/mgr/ApiMgr$1$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/isaigu/gymapp/mgr/ApiMgr$1$1;

    .line 280
    iput-object p1, p0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1;->this$1:Lcom/isaigu/gymapp/mgr/ApiMgr$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1;->this$1:Lcom/isaigu/gymapp/mgr/ApiMgr$1$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1;->this$0:Lcom/isaigu/gymapp/mgr/ApiMgr$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/ApiMgr$1;->val$parent:Lcom/isaigu/gymapp/BaseActivity;

    new-instance v1, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1;-><init>(Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1;)V

    invoke-static {v0, v1}, Lcom/maning/updatelibrary/InstallUtils;->checkInstallPermission(Landroid/app/Activity;Lcom/maning/updatelibrary/InstallUtils$InstallPermissionCallBack;)V

    .line 332
    return-void
.end method
