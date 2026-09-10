.class Lcom/maning/updatelibrary/http/DownloadFileUtils$4$3;
.super Ljava/lang/Object;
.source "DownloadFileUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maning/updatelibrary/http/DownloadFileUtils$4;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/maning/updatelibrary/http/DownloadFileUtils$4;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/maning/updatelibrary/http/DownloadFileUtils$4;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "this$1"    # Lcom/maning/updatelibrary/http/DownloadFileUtils$4;

    .line 268
    iput-object p1, p0, Lcom/maning/updatelibrary/http/DownloadFileUtils$4$3;->this$1:Lcom/maning/updatelibrary/http/DownloadFileUtils$4;

    iput-object p2, p0, Lcom/maning/updatelibrary/http/DownloadFileUtils$4$3;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 271
    invoke-static {}, Lcom/maning/updatelibrary/http/DownloadFileUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailure:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/maning/updatelibrary/http/DownloadFileUtils$4$3;->val$e:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/maning/updatelibrary/http/DownloadFileUtils$4$3;->val$e:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Socket closed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/maning/updatelibrary/http/DownloadFileUtils$4$3;->this$1:Lcom/maning/updatelibrary/http/DownloadFileUtils$4;

    iget-object v0, v0, Lcom/maning/updatelibrary/http/DownloadFileUtils$4;->val$fileProgressCallback:Lcom/maning/updatelibrary/http/AbsFileProgressCallback;

    invoke-virtual {v0}, Lcom/maning/updatelibrary/http/AbsFileProgressCallback;->onCancle()V

    goto :goto_0

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/maning/updatelibrary/http/DownloadFileUtils$4$3;->this$1:Lcom/maning/updatelibrary/http/DownloadFileUtils$4;

    iget-object v0, v0, Lcom/maning/updatelibrary/http/DownloadFileUtils$4;->val$fileProgressCallback:Lcom/maning/updatelibrary/http/AbsFileProgressCallback;

    iget-object v1, p0, Lcom/maning/updatelibrary/http/DownloadFileUtils$4$3;->val$e:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maning/updatelibrary/http/AbsFileProgressCallback;->onFailed(Ljava/lang/String;)V

    .line 279
    :goto_0
    return-void
.end method
