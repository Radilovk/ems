.class Lcom/maning/updatelibrary/http/DownloadFileUtils$4$1;
.super Ljava/lang/Object;
.source "DownloadFileUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maning/updatelibrary/http/DownloadFileUtils$4;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/maning/updatelibrary/http/DownloadFileUtils$4;

.field final synthetic val$call:Lokhttp3/Call;

.field final synthetic val$e:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/maning/updatelibrary/http/DownloadFileUtils$4;Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0
    .param p1, "this$1"    # Lcom/maning/updatelibrary/http/DownloadFileUtils$4;

    .line 226
    iput-object p1, p0, Lcom/maning/updatelibrary/http/DownloadFileUtils$4$1;->this$1:Lcom/maning/updatelibrary/http/DownloadFileUtils$4;

    iput-object p2, p0, Lcom/maning/updatelibrary/http/DownloadFileUtils$4$1;->val$call:Lokhttp3/Call;

    iput-object p3, p0, Lcom/maning/updatelibrary/http/DownloadFileUtils$4$1;->val$e:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/maning/updatelibrary/http/DownloadFileUtils$4$1;->val$call:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/maning/updatelibrary/http/DownloadFileUtils$4$1;->this$1:Lcom/maning/updatelibrary/http/DownloadFileUtils$4;

    iget-object v0, v0, Lcom/maning/updatelibrary/http/DownloadFileUtils$4;->val$fileProgressCallback:Lcom/maning/updatelibrary/http/AbsFileProgressCallback;

    invoke-virtual {v0}, Lcom/maning/updatelibrary/http/AbsFileProgressCallback;->onCancle()V

    goto :goto_0

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/maning/updatelibrary/http/DownloadFileUtils$4$1;->this$1:Lcom/maning/updatelibrary/http/DownloadFileUtils$4;

    iget-object v0, v0, Lcom/maning/updatelibrary/http/DownloadFileUtils$4;->val$fileProgressCallback:Lcom/maning/updatelibrary/http/AbsFileProgressCallback;

    iget-object v1, p0, Lcom/maning/updatelibrary/http/DownloadFileUtils$4$1;->val$e:Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maning/updatelibrary/http/AbsFileProgressCallback;->onFailed(Ljava/lang/String;)V

    .line 237
    :goto_0
    return-void
.end method
