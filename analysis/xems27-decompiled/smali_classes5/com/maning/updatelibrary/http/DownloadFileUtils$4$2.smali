.class Lcom/maning/updatelibrary/http/DownloadFileUtils$4$2;
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


# direct methods
.method constructor <init>(Lcom/maning/updatelibrary/http/DownloadFileUtils$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/maning/updatelibrary/http/DownloadFileUtils$4;

    .line 260
    iput-object p1, p0, Lcom/maning/updatelibrary/http/DownloadFileUtils$4$2;->this$1:Lcom/maning/updatelibrary/http/DownloadFileUtils$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/maning/updatelibrary/http/DownloadFileUtils$4$2;->this$1:Lcom/maning/updatelibrary/http/DownloadFileUtils$4;

    iget-object v0, v0, Lcom/maning/updatelibrary/http/DownloadFileUtils$4;->val$fileProgressCallback:Lcom/maning/updatelibrary/http/AbsFileProgressCallback;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/maning/updatelibrary/http/AbsFileProgressCallback;->onSuccess(Ljava/lang/String;)V

    .line 265
    return-void
.end method
