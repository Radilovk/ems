.class Lcom/maning/updatelibrary/http/ProgressResponseBody$1$1;
.super Ljava/lang/Object;
.source "ProgressResponseBody.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maning/updatelibrary/http/ProgressResponseBody$1;->read(Lokio/Buffer;J)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/maning/updatelibrary/http/ProgressResponseBody$1;

.field final synthetic val$finalBytesRead:J


# direct methods
.method constructor <init>(Lcom/maning/updatelibrary/http/ProgressResponseBody$1;J)V
    .locals 0
    .param p1, "this$1"    # Lcom/maning/updatelibrary/http/ProgressResponseBody$1;

    .line 61
    iput-object p1, p0, Lcom/maning/updatelibrary/http/ProgressResponseBody$1$1;->this$1:Lcom/maning/updatelibrary/http/ProgressResponseBody$1;

    iput-wide p2, p0, Lcom/maning/updatelibrary/http/ProgressResponseBody$1$1;->val$finalBytesRead:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 64
    iget-object v0, p0, Lcom/maning/updatelibrary/http/ProgressResponseBody$1$1;->this$1:Lcom/maning/updatelibrary/http/ProgressResponseBody$1;

    iget-object v0, v0, Lcom/maning/updatelibrary/http/ProgressResponseBody$1;->this$0:Lcom/maning/updatelibrary/http/ProgressResponseBody;

    invoke-static {v0}, Lcom/maning/updatelibrary/http/ProgressResponseBody;->access$100(Lcom/maning/updatelibrary/http/ProgressResponseBody;)Lcom/maning/updatelibrary/http/AbsFileProgressCallback;

    move-result-object v1

    iget-object v0, p0, Lcom/maning/updatelibrary/http/ProgressResponseBody$1$1;->this$1:Lcom/maning/updatelibrary/http/ProgressResponseBody$1;

    iget-wide v2, v0, Lcom/maning/updatelibrary/http/ProgressResponseBody$1;->totalBytesRead:J

    iget-object v0, p0, Lcom/maning/updatelibrary/http/ProgressResponseBody$1$1;->this$1:Lcom/maning/updatelibrary/http/ProgressResponseBody$1;

    iget-object v0, v0, Lcom/maning/updatelibrary/http/ProgressResponseBody$1;->this$0:Lcom/maning/updatelibrary/http/ProgressResponseBody;

    invoke-static {v0}, Lcom/maning/updatelibrary/http/ProgressResponseBody;->access$000(Lcom/maning/updatelibrary/http/ProgressResponseBody;)Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/maning/updatelibrary/http/ProgressResponseBody$1$1;->val$finalBytesRead:J

    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-virtual/range {v1 .. v6}, Lcom/maning/updatelibrary/http/AbsFileProgressCallback;->onProgress(JJZ)V

    .line 65
    return-void
.end method
