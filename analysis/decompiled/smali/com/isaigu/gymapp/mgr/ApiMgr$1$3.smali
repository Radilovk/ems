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

    .prologue
    .line 343
    iput-object p1, p0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$3;->this$0:Lcom/isaigu/gymapp/mgr/ApiMgr$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 345
    iget-object v0, p0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$3;->this$0:Lcom/isaigu/gymapp/mgr/ApiMgr$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/ApiMgr$1;->val$parent:Lcom/isaigu/gymapp/BaseActivity;

    const v1, 0x7f03003d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5ba2\u6237\u7aefV"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$3;->this$0:Lcom/isaigu/gymapp/mgr/ApiMgr$1;

    iget-object v3, v3, Lcom/isaigu/gymapp/mgr/ApiMgr$1;->val$apkVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u4e0b\u8f7d\u5931\u8d25,\u8bf7\u91cd\u8bd5"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->showLoadingDialogWithImage(ILjava/lang/String;)V

    .line 346
    return-void
.end method
