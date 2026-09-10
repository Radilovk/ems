.class Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1;
.super Ljava/lang/Object;
.source "ApiMgr.java"

# interfaces
.implements Lcom/maning/updatelibrary/InstallUtils$InstallPermissionCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1;->this$2:Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied()V
    .locals 4

    .prologue
    .line 297
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1;->this$2:Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1;

    iget-object v2, v2, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1;->this$1:Lcom/isaigu/gymapp/mgr/ApiMgr$1$1;

    iget-object v2, v2, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1;->this$0:Lcom/isaigu/gymapp/mgr/ApiMgr$1;

    iget-object v2, v2, Lcom/isaigu/gymapp/mgr/ApiMgr$1;->val$parent:Lcom/isaigu/gymapp/BaseActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "\u6e29\u99a8\u63d0\u793a"

    .line 298
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u5fc5\u987b\u6388\u6743\u624d\u80fd\u5b89\u88c5APK\uff0c\u8bf7\u8bbe\u7f6e\u5141\u8bb8\u5b89\u88c5"

    .line 299
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u53d6\u6d88"

    const/4 v3, 0x0

    .line 300
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u53bb\u8bbe\u7f6e"

    new-instance v3, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1$2;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1$2;-><init>(Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1;)V

    .line 301
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 326
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 327
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 328
    return-void
.end method

.method public onGranted()V
    .locals 3

    .prologue
    .line 284
    iget-object v0, p0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1;->this$2:Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1;->this$1:Lcom/isaigu/gymapp/mgr/ApiMgr$1$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1;->this$0:Lcom/isaigu/gymapp/mgr/ApiMgr$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/ApiMgr$1;->val$parent:Lcom/isaigu/gymapp/BaseActivity;

    iget-object v1, p0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1;->this$2:Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1;

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1;->this$1:Lcom/isaigu/gymapp/mgr/ApiMgr$1$1;

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1;->val$path:Ljava/lang/String;

    new-instance v2, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1$1;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1$1;-><init>(Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1$1;)V

    invoke-static {v0, v1, v2}, Lcom/maning/updatelibrary/InstallUtils;->installAPK(Landroid/app/Activity;Ljava/lang/String;Lcom/maning/updatelibrary/InstallUtils$InstallCallBack;)V

    .line 294
    return-void
.end method
