.class Lcom/maning/updatelibrary/InstallUtils$1;
.super Lcom/maning/updatelibrary/http/AbsFileProgressCallback;
.source "InstallUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maning/updatelibrary/InstallUtils;->startDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field currentProgress:I

.field final synthetic this$0:Lcom/maning/updatelibrary/InstallUtils;


# direct methods
.method constructor <init>(Lcom/maning/updatelibrary/InstallUtils;)V
    .locals 1
    .param p1, "this$0"    # Lcom/maning/updatelibrary/InstallUtils;

    .line 148
    iput-object p1, p0, Lcom/maning/updatelibrary/InstallUtils$1;->this$0:Lcom/maning/updatelibrary/InstallUtils;

    invoke-direct {p0}, Lcom/maning/updatelibrary/http/AbsFileProgressCallback;-><init>()V

    .line 149
    const/4 v0, 0x0

    iput v0, p0, Lcom/maning/updatelibrary/InstallUtils$1;->currentProgress:I

    return-void
.end method


# virtual methods
.method public onCancle()V
    .locals 1

    .line 191
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/maning/updatelibrary/InstallUtils;->access$002(Z)Z

    .line 192
    invoke-static {}, Lcom/maning/updatelibrary/InstallUtils;->access$100()Lcom/maning/updatelibrary/InstallUtils$DownloadCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    invoke-static {}, Lcom/maning/updatelibrary/InstallUtils;->access$100()Lcom/maning/updatelibrary/InstallUtils$DownloadCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/maning/updatelibrary/InstallUtils$DownloadCallBack;->cancle()V

    .line 195
    :cond_0
    return-void
.end method

.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorMsg"    # Ljava/lang/String;

    .line 175
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/maning/updatelibrary/InstallUtils;->access$002(Z)Z

    .line 176
    invoke-static {}, Lcom/maning/updatelibrary/InstallUtils;->access$100()Lcom/maning/updatelibrary/InstallUtils$DownloadCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    invoke-static {}, Lcom/maning/updatelibrary/InstallUtils;->access$100()Lcom/maning/updatelibrary/InstallUtils$DownloadCallBack;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/maning/updatelibrary/InstallUtils$DownloadCallBack;->onFail(Ljava/lang/Exception;)V

    .line 179
    :cond_0
    return-void
.end method

.method public onProgress(JJZ)V
    .locals 3
    .param p1, "bytesRead"    # J
    .param p3, "contentLength"    # J
    .param p5, "done"    # Z

    .line 161
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/maning/updatelibrary/InstallUtils;->access$002(Z)Z

    .line 162
    invoke-static {}, Lcom/maning/updatelibrary/InstallUtils;->access$100()Lcom/maning/updatelibrary/InstallUtils$DownloadCallBack;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 164
    const-wide/16 v1, 0x64

    mul-long v1, v1, p1

    div-long/2addr v1, p3

    long-to-int v2, v1

    .line 166
    .local v2, "progress":I
    iget v1, p0, Lcom/maning/updatelibrary/InstallUtils$1;->currentProgress:I

    sub-int v1, v2, v1

    if-lt v1, v0, :cond_0

    .line 167
    invoke-static {}, Lcom/maning/updatelibrary/InstallUtils;->access$100()Lcom/maning/updatelibrary/InstallUtils$DownloadCallBack;

    move-result-object v0

    invoke-interface {v0, p3, p4, p1, p2}, Lcom/maning/updatelibrary/InstallUtils$DownloadCallBack;->onLoading(JJ)V

    .line 169
    :cond_0
    iput v2, p0, Lcom/maning/updatelibrary/InstallUtils$1;->currentProgress:I

    .line 171
    .end local v2    # "progress":I
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 183
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/maning/updatelibrary/InstallUtils;->access$002(Z)Z

    .line 184
    invoke-static {}, Lcom/maning/updatelibrary/InstallUtils;->access$100()Lcom/maning/updatelibrary/InstallUtils$DownloadCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    invoke-static {}, Lcom/maning/updatelibrary/InstallUtils;->access$100()Lcom/maning/updatelibrary/InstallUtils$DownloadCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/maning/updatelibrary/InstallUtils$DownloadCallBack;->onStart()V

    .line 187
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .line 153
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/maning/updatelibrary/InstallUtils;->access$002(Z)Z

    .line 154
    invoke-static {}, Lcom/maning/updatelibrary/InstallUtils;->access$100()Lcom/maning/updatelibrary/InstallUtils$DownloadCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    invoke-static {}, Lcom/maning/updatelibrary/InstallUtils;->access$100()Lcom/maning/updatelibrary/InstallUtils$DownloadCallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/maning/updatelibrary/InstallUtils$1;->this$0:Lcom/maning/updatelibrary/InstallUtils;

    invoke-static {v1}, Lcom/maning/updatelibrary/InstallUtils;->access$200(Lcom/maning/updatelibrary/InstallUtils;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/maning/updatelibrary/InstallUtils$DownloadCallBack;->onComplete(Ljava/lang/String;)V

    .line 157
    :cond_0
    return-void
.end method
