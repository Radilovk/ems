.class public Lcom/maning/updatelibrary/http/DownloadModel;
.super Ljava/lang/Object;
.source "DownloadModel.java"


# instance fields
.field private downloadPath:Ljava/lang/String;

.field private fileProgressCallback:Lcom/maning/updatelibrary/http/AbsFileProgressCallback;

.field private headersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private httpUrl:Ljava/lang/String;

.field private tag:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownloadPath()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/maning/updatelibrary/http/DownloadModel;->downloadPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileProgressCallback()Lcom/maning/updatelibrary/http/AbsFileProgressCallback;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/maning/updatelibrary/http/DownloadModel;->fileProgressCallback:Lcom/maning/updatelibrary/http/AbsFileProgressCallback;

    return-object v0
.end method

.method public getHeadersMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/maning/updatelibrary/http/DownloadModel;->headersMap:Ljava/util/Map;

    return-object v0
.end method

.method public getHttpUrl()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/maning/updatelibrary/http/DownloadModel;->httpUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/maning/updatelibrary/http/DownloadModel;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public setDownloadPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "downloadPath"    # Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/maning/updatelibrary/http/DownloadModel;->downloadPath:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setFileProgressCallback(Lcom/maning/updatelibrary/http/AbsFileProgressCallback;)V
    .locals 0
    .param p1, "fileProgressCallback"    # Lcom/maning/updatelibrary/http/AbsFileProgressCallback;

    .line 71
    iput-object p1, p0, Lcom/maning/updatelibrary/http/DownloadModel;->fileProgressCallback:Lcom/maning/updatelibrary/http/AbsFileProgressCallback;

    .line 72
    return-void
.end method

.method public setHeadersMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 47
    .local p1, "headersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/maning/updatelibrary/http/DownloadModel;->headersMap:Ljava/util/Map;

    .line 48
    return-void
.end method

.method public setHttpUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "httpUrl"    # Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/maning/updatelibrary/http/DownloadModel;->httpUrl:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .line 55
    iput-object p1, p0, Lcom/maning/updatelibrary/http/DownloadModel;->tag:Ljava/lang/Object;

    .line 56
    return-void
.end method
