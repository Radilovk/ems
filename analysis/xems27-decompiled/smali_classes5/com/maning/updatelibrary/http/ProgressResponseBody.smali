.class public Lcom/maning/updatelibrary/http/ProgressResponseBody;
.super Lokhttp3/ResponseBody;
.source "ProgressResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maning/updatelibrary/http/ProgressResponseBody$ProgressListener;
    }
.end annotation


# instance fields
.field private bufferedSource:Lokio/BufferedSource;

.field private mUIHandler:Landroid/os/Handler;

.field private final progressListener:Lcom/maning/updatelibrary/http/AbsFileProgressCallback;

.field private final responseBody:Lokhttp3/ResponseBody;


# direct methods
.method public constructor <init>(Lokhttp3/ResponseBody;Lcom/maning/updatelibrary/http/AbsFileProgressCallback;)V
    .locals 2
    .param p1, "mResponseBody"    # Lokhttp3/ResponseBody;
    .param p2, "mProgressListener"    # Lcom/maning/updatelibrary/http/AbsFileProgressCallback;

    .line 27
    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/maning/updatelibrary/http/ProgressResponseBody;->mUIHandler:Landroid/os/Handler;

    .line 28
    iput-object p1, p0, Lcom/maning/updatelibrary/http/ProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    .line 29
    iput-object p2, p0, Lcom/maning/updatelibrary/http/ProgressResponseBody;->progressListener:Lcom/maning/updatelibrary/http/AbsFileProgressCallback;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/maning/updatelibrary/http/ProgressResponseBody;)Lokhttp3/ResponseBody;
    .locals 1
    .param p0, "x0"    # Lcom/maning/updatelibrary/http/ProgressResponseBody;

    .line 20
    iget-object v0, p0, Lcom/maning/updatelibrary/http/ProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    return-object v0
.end method

.method static synthetic access$100(Lcom/maning/updatelibrary/http/ProgressResponseBody;)Lcom/maning/updatelibrary/http/AbsFileProgressCallback;
    .locals 1
    .param p0, "x0"    # Lcom/maning/updatelibrary/http/ProgressResponseBody;

    .line 20
    iget-object v0, p0, Lcom/maning/updatelibrary/http/ProgressResponseBody;->progressListener:Lcom/maning/updatelibrary/http/AbsFileProgressCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/maning/updatelibrary/http/ProgressResponseBody;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/maning/updatelibrary/http/ProgressResponseBody;

    .line 20
    iget-object v0, p0, Lcom/maning/updatelibrary/http/ProgressResponseBody;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private source(Lokio/Source;)Lokio/Source;
    .locals 1
    .param p1, "source"    # Lokio/Source;

    .line 51
    new-instance v0, Lcom/maning/updatelibrary/http/ProgressResponseBody$1;

    invoke-direct {v0, p0, p1}, Lcom/maning/updatelibrary/http/ProgressResponseBody$1;-><init>(Lcom/maning/updatelibrary/http/ProgressResponseBody;Lokio/Source;)V

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/maning/updatelibrary/http/ProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/maning/updatelibrary/http/ProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public source()Lokio/BufferedSource;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/maning/updatelibrary/http/ProgressResponseBody;->bufferedSource:Lokio/BufferedSource;

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/maning/updatelibrary/http/ProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/maning/updatelibrary/http/ProgressResponseBody;->source(Lokio/Source;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcom/maning/updatelibrary/http/ProgressResponseBody;->bufferedSource:Lokio/BufferedSource;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/maning/updatelibrary/http/ProgressResponseBody;->bufferedSource:Lokio/BufferedSource;

    return-object v0
.end method
