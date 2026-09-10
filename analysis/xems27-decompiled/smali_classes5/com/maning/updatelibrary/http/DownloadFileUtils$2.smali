.class Lcom/maning/updatelibrary/http/DownloadFileUtils$2;
.super Ljava/lang/Object;
.source "DownloadFileUtils.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maning/updatelibrary/http/DownloadFileUtils;->startDonwload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maning/updatelibrary/http/DownloadFileUtils;

.field final synthetic val$fileProgressCallback:Lcom/maning/updatelibrary/http/AbsFileProgressCallback;


# direct methods
.method constructor <init>(Lcom/maning/updatelibrary/http/DownloadFileUtils;Lcom/maning/updatelibrary/http/AbsFileProgressCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maning/updatelibrary/http/DownloadFileUtils;

    .line 204
    iput-object p1, p0, Lcom/maning/updatelibrary/http/DownloadFileUtils$2;->this$0:Lcom/maning/updatelibrary/http/DownloadFileUtils;

    iput-object p2, p0, Lcom/maning/updatelibrary/http/DownloadFileUtils$2;->val$fileProgressCallback:Lcom/maning/updatelibrary/http/AbsFileProgressCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 5
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    .line 208
    .local v0, "originalResponse":Lokhttp3/Response;
    invoke-virtual {v0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v1

    new-instance v2, Lcom/maning/updatelibrary/http/ProgressResponseBody;

    .line 209
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    iget-object v4, p0, Lcom/maning/updatelibrary/http/DownloadFileUtils$2;->val$fileProgressCallback:Lcom/maning/updatelibrary/http/AbsFileProgressCallback;

    invoke-direct {v2, v3, v4}, Lcom/maning/updatelibrary/http/ProgressResponseBody;-><init>(Lokhttp3/ResponseBody;Lcom/maning/updatelibrary/http/AbsFileProgressCallback;)V

    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v1

    .line 210
    invoke-virtual {v1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v1

    .line 208
    return-object v1
.end method
