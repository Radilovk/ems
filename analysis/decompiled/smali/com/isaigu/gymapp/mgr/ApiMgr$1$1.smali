.class Lcom/isaigu/gymapp/mgr/ApiMgr$1$1;
.super Ljava/lang/Object;
.source "ApiMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/mgr/ApiMgr$1;->onDownloadSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/mgr/ApiMgr$1;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/mgr/ApiMgr$1;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/mgr/ApiMgr$1;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1;->this$0:Lcom/isaigu/gymapp/mgr/ApiMgr$1;

    iput-object p2, p0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 277
    iget-object v0, p0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1;->this$0:Lcom/isaigu/gymapp/mgr/ApiMgr$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/ApiMgr$1;->val$parent:Lcom/isaigu/gymapp/BaseActivity;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/BaseActivity;->dismissLoadingDialog()V

    .line 278
    iget-object v0, p0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1;->this$0:Lcom/isaigu/gymapp/mgr/ApiMgr$1;

    iget-object v1, v0, Lcom/isaigu/gymapp/mgr/ApiMgr$1;->val$parent:Lcom/isaigu/gymapp/BaseActivity;

    const v2, 0x7f03003f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u4e0b\u8f7d\u5ba2\u6237\u7aefV"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1;->this$0:Lcom/isaigu/gymapp/mgr/ApiMgr$1;

    iget-object v3, v3, Lcom/isaigu/gymapp/mgr/ApiMgr$1;->val$apkVersion:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\u5b8c\u6210\uff01"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x5dc

    new-instance v6, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1;

    invoke-direct {v6, p0}, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1$1;-><init>(Lcom/isaigu/gymapp/mgr/ApiMgr$1$1;)V

    invoke-virtual/range {v1 .. v6}, Lcom/isaigu/gymapp/BaseActivity;->showDialogWithImage(ILjava/lang/String;JLjava/lang/Runnable;)V

    .line 332
    return-void
.end method
