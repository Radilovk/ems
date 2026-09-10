.class Lcom/isaigu/gymapp/mgr/ApiMgr$1$2;
.super Ljava/lang/Object;
.source "ApiMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/mgr/ApiMgr$1;->onDownloading(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/mgr/ApiMgr$1;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/mgr/ApiMgr$1;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/mgr/ApiMgr$1;

    .line 338
    iput-object p1, p0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$2;->this$0:Lcom/isaigu/gymapp/mgr/ApiMgr$1;

    iput p2, p0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$2;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 340
    iget-object v0, p0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$2;->this$0:Lcom/isaigu/gymapp/mgr/ApiMgr$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/ApiMgr$1;->val$parent:Lcom/isaigu/gymapp/BaseActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6b63\u5728\u4e0b\u8f7d\u5ba2\u6237\u7aefV"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$2;->this$0:Lcom/isaigu/gymapp/mgr/ApiMgr$1;

    iget-object v2, v2, Lcom/isaigu/gymapp/mgr/ApiMgr$1;->val$apkVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/mgr/ApiMgr$1$2;->val$progress:I

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->showLoadingDialogWithText(Ljava/lang/String;I)V

    .line 341
    return-void
.end method
