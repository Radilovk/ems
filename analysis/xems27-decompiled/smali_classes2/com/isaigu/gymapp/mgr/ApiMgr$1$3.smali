.class Lcom/isaigu/gymapp/mgr/ApiMgr$1$3;
.super Ljava/lang/Object;
.source "ApiMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/mgr/ApiMgr$1;->onDownloadFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/mgr/ApiMgr$1;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/mgr/ApiMgr$1;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/mgr/ApiMgr$1;

    .line 345
    iput-object p1, p0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$3;->this$0:Lcom/isaigu/gymapp/mgr/ApiMgr$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 347
    iget-object v0, p0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$3;->this$0:Lcom/isaigu/gymapp/mgr/ApiMgr$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/ApiMgr$1;->val$parent:Lcom/isaigu/gymapp/BaseActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5ba2\u6237\u7aefV"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$3;->this$0:Lcom/isaigu/gymapp/mgr/ApiMgr$1;

    iget-object v2, v2, Lcom/isaigu/gymapp/mgr/ApiMgr$1;->val$apkVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u4e0b\u8f7d\u5931\u8d25,\u8bf7\u91cd\u8bd5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c004a

    invoke-virtual {v0, v2, v1}, Lcom/isaigu/gymapp/BaseActivity;->showLoadingDialogWithImage(ILjava/lang/String;)V

    .line 348
    return-void
.end method
