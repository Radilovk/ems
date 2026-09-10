.class final Lcom/isaigu/gymapp/mgr/ApiMgr$1;
.super Ljava/lang/Object;
.source "ApiMgr.java"

# interfaces
.implements Lcom/isaigu/gymapp/utils/OKHttpUtils$OnDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/mgr/ApiMgr;->downloadApk(Lcom/isaigu/gymapp/BaseActivity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$apkVersion:Ljava/lang/String;

.field final synthetic val$parent:Lcom/isaigu/gymapp/BaseActivity;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/BaseActivity;Ljava/lang/String;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/isaigu/gymapp/mgr/ApiMgr$1;->val$parent:Lcom/isaigu/gymapp/BaseActivity;

    iput-object p2, p0, Lcom/isaigu/gymapp/mgr/ApiMgr$1;->val$apkVersion:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFailed()V
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/isaigu/gymapp/mgr/ApiMgr$1;->val$parent:Lcom/isaigu/gymapp/BaseActivity;

    new-instance v1, Lcom/isaigu/gymapp/mgr/ApiMgr$1$3;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/mgr/ApiMgr$1$3;-><init>(Lcom/isaigu/gymapp/mgr/ApiMgr$1;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 350
    return-void
.end method

.method public onDownloadSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 277
    iget-object v0, p0, Lcom/isaigu/gymapp/mgr/ApiMgr$1;->val$parent:Lcom/isaigu/gymapp/BaseActivity;

    new-instance v1, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/mgr/ApiMgr$1$1;-><init>(Lcom/isaigu/gymapp/mgr/ApiMgr$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 336
    return-void
.end method

.method public onDownloading(I)V
    .locals 2
    .param p1, "progress"    # I

    .line 338
    iget-object v0, p0, Lcom/isaigu/gymapp/mgr/ApiMgr$1;->val$parent:Lcom/isaigu/gymapp/BaseActivity;

    new-instance v1, Lcom/isaigu/gymapp/mgr/ApiMgr$1$2;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/mgr/ApiMgr$1$2;-><init>(Lcom/isaigu/gymapp/mgr/ApiMgr$1;I)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 343
    return-void
.end method
