.class Lcom/maning/updatelibrary/http/ProgressResponseBody$1;
.super Lokio/ForwardingSource;
.source "ProgressResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maning/updatelibrary/http/ProgressResponseBody;->source(Lokio/Source;)Lokio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maning/updatelibrary/http/ProgressResponseBody;

.field totalBytesRead:J


# direct methods
.method constructor <init>(Lcom/maning/updatelibrary/http/ProgressResponseBody;Lokio/Source;)V
    .locals 2
    .param p1, "this$0"    # Lcom/maning/updatelibrary/http/ProgressResponseBody;
    .param p2, "x0"    # Lokio/Source;

    .line 51
    iput-object p1, p0, Lcom/maning/updatelibrary/http/ProgressResponseBody$1;->this$0:Lcom/maning/updatelibrary/http/ProgressResponseBody;

    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/maning/updatelibrary/http/ProgressResponseBody$1;->totalBytesRead:J

    return-void
.end method


# virtual methods
.method public read(Lokio/Buffer;J)J
    .locals 7
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide v0

    .line 58
    .local v0, "bytesRead":J
    iget-wide v2, p0, Lcom/maning/updatelibrary/http/ProgressResponseBody$1;->totalBytesRead:J

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-eqz v6, :cond_0

    move-wide v4, v0

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    :goto_0
    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/maning/updatelibrary/http/ProgressResponseBody$1;->totalBytesRead:J

    .line 60
    move-wide v2, v0

    .line 61
    .local v2, "finalBytesRead":J
    iget-object v4, p0, Lcom/maning/updatelibrary/http/ProgressResponseBody$1;->this$0:Lcom/maning/updatelibrary/http/ProgressResponseBody;

    invoke-static {v4}, Lcom/maning/updatelibrary/http/ProgressResponseBody;->access$200(Lcom/maning/updatelibrary/http/ProgressResponseBody;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/maning/updatelibrary/http/ProgressResponseBody$1$1;

    invoke-direct {v5, p0, v2, v3}, Lcom/maning/updatelibrary/http/ProgressResponseBody$1$1;-><init>(Lcom/maning/updatelibrary/http/ProgressResponseBody$1;J)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 67
    return-wide v0
.end method
