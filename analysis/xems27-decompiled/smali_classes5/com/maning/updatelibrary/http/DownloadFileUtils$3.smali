.class Lcom/maning/updatelibrary/http/DownloadFileUtils$3;
.super Ljava/lang/Object;
.source "DownloadFileUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 213
    iput-object p1, p0, Lcom/maning/updatelibrary/http/DownloadFileUtils$3;->this$0:Lcom/maning/updatelibrary/http/DownloadFileUtils;

    iput-object p2, p0, Lcom/maning/updatelibrary/http/DownloadFileUtils$3;->val$fileProgressCallback:Lcom/maning/updatelibrary/http/AbsFileProgressCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/maning/updatelibrary/http/DownloadFileUtils$3;->val$fileProgressCallback:Lcom/maning/updatelibrary/http/AbsFileProgressCallback;

    invoke-virtual {v0}, Lcom/maning/updatelibrary/http/AbsFileProgressCallback;->onStart()V

    .line 217
    return-void
.end method
