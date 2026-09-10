.class Lcom/maning/updatelibrary/http/DownloadFileUtils$1;
.super Lcom/maning/updatelibrary/http/AbsFileProgressCallback;
.source "DownloadFileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maning/updatelibrary/http/DownloadFileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maning/updatelibrary/http/DownloadFileUtils;


# direct methods
.method constructor <init>(Lcom/maning/updatelibrary/http/DownloadFileUtils;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maning/updatelibrary/http/DownloadFileUtils;

    .line 57
    iput-object p1, p0, Lcom/maning/updatelibrary/http/DownloadFileUtils$1;->this$0:Lcom/maning/updatelibrary/http/DownloadFileUtils;

    invoke-direct {p0}, Lcom/maning/updatelibrary/http/AbsFileProgressCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancle()V
    .locals 0

    .line 82
    return-void
.end method

.method public onFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMsg"    # Ljava/lang/String;

    .line 72
    return-void
.end method

.method public onProgress(JJZ)V
    .locals 0
    .param p1, "bytesRead"    # J
    .param p3, "contentLength"    # J
    .param p5, "done"    # Z

    .line 67
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 77
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .line 62
    return-void
.end method
