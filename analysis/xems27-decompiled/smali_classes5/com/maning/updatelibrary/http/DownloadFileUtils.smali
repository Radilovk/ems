.class public Lcom/maning/updatelibrary/http/DownloadFileUtils;
.super Ljava/lang/Object;
.source "DownloadFileUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/maning/updatelibrary/http/DownloadFileUtils;

.field private static mCallHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lokhttp3/Call;",
            ">;"
        }
    .end annotation
.end field

.field private static mUIHandler:Landroid/os/Handler;


# instance fields
.field private defaultFileProgressCallback:Lcom/maning/updatelibrary/http/AbsFileProgressCallback;

.field private downloadModel:Lcom/maning/updatelibrary/http/DownloadModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    const-class v0, Lcom/maning/updatelibrary/http/DownloadFileUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/maning/updatelibrary/http/DownloadFileUtils;->TAG:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/maning/updatelibrary/http/DownloadFileUtils;->mCallHashMap:Ljava/util/HashMap;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/maning/updatelibrary/http/DownloadFileUtils;->mUIHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/maning/updatelibrary/http/DownloadFileUtils$1;

    invoke-direct {v0, p0}, Lcom/maning/updatelibrary/http/DownloadFileUtils$1;-><init>(Lcom/maning/updatelibrary/http/DownloadFileUtils;)V

    iput-object v0, p0, Lcom/maning/updatelibrary/http/DownloadFileUtils;->defaultFileProgressCallback:Lcom/maning/updatelibrary/http/AbsFileProgressCallback;

    .line 90
    new-instance v0, Lcom/maning/updatelibrary/http/DownloadModel;

    invoke-direct {v0}, Lcom/maning/updatelibrary/http/DownloadModel;-><init>()V

    iput-object v0, p0, Lcom/maning/updatelibrary/http/DownloadFileUtils;->downloadModel:Lcom/maning/updatelibrary/http/DownloadModel;

    .line 91
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lcom/maning/updatelibrary/http/DownloadFileUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .line 39
    sget-object v0, Lcom/maning/updatelibrary/http/DownloadFileUtils;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 39
    invoke-static {p0}, Lcom/maning/updatelibrary/http/DownloadFileUtils;->checkDownloadFilePath(Ljava/lang/String;)V

    return-void
.end method

.method public static cancle(Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/Object;

    .line 374
    :try_start_0
    sget-object v0, Lcom/maning/updatelibrary/http/DownloadFileUtils;->mCallHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/maning/updatelibrary/http/DownloadFileUtils;->mCallHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 375
    sget-object v0, Lcom/maning/updatelibrary/http/DownloadFileUtils;->mCallHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    sget-object v0, Lcom/maning/updatelibrary/http/DownloadFileUtils;->mCallHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Call;

    .line 378
    .local v0, "call":Lokhttp3/Call;
    if-eqz v0, :cond_1

    .line 380
    invoke-interface {v0}, Lokhttp3/Call;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 381
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 384
    :cond_0
    sget-object v1, Lcom/maning/updatelibrary/http/DownloadFileUtils;->mCallHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    .end local v0    # "call":Lokhttp3/Call;
    :cond_1
    goto :goto_0

    .line 388
    :catch_0
    move-exception v0

    .line 391
    :goto_0
    return-void
.end method

.method public static cancleAll()V
    .locals 6

    .line 398
    :try_start_0
    sget-object v0, Lcom/maning/updatelibrary/http/DownloadFileUtils;->mCallHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/maning/updatelibrary/http/DownloadFileUtils;->mCallHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 400
    sget-object v0, Lcom/maning/updatelibrary/http/DownloadFileUtils;->mCallHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 401
    .local v0, "keyEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Object;Lokhttp3/Call;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 403
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lokhttp3/Call;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 405
    .local v3, "key":Ljava/lang/Object;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokhttp3/Call;

    .line 406
    .local v4, "call":Lokhttp3/Call;
    if-eqz v4, :cond_1

    .line 408
    invoke-interface {v4}, Lokhttp3/Call;->isCanceled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 409
    invoke-interface {v4}, Lokhttp3/Call;->cancel()V

    .line 412
    :cond_0
    sget-object v5, Lcom/maning/updatelibrary/http/DownloadFileUtils;->mCallHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lokhttp3/Call;>;"
    .end local v3    # "key":Ljava/lang/Object;
    .end local v4    # "call":Lokhttp3/Call;
    :cond_1
    goto :goto_0

    .line 418
    .end local v0    # "keyEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Object;Lokhttp3/Call;>;>;"
    :cond_2
    goto :goto_1

    .line 416
    :catch_0
    move-exception v0

    .line 419
    :goto_1
    return-void
.end method

.method private static checkDownloadFilePath(Ljava/lang/String;)V
    .locals 3
    .param p0, "localFilePath"    # Ljava/lang/String;

    .line 303
    new-instance v0, Ljava/io/File;

    .line 304
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 303
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 305
    .local v0, "path":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 306
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 307
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 309
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 311
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    goto :goto_0

    .line 312
    :catch_0
    move-exception v2

    .line 313
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 316
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    return-void
.end method

.method public static getOkhttpDefaultBuilder()Lokhttp3/OkHttpClient$Builder;
    .locals 8
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 326
    new-instance v0, Lcom/maning/updatelibrary/http/DownloadFileUtils$5;

    invoke-direct {v0}, Lcom/maning/updatelibrary/http/DownloadFileUtils$5;-><init>()V

    .line 341
    .local v0, "trustManager":Ljavax/net/ssl/X509TrustManager;
    const/4 v1, 0x0

    .line 343
    .local v1, "sslContext":Ljavax/net/ssl/SSLContext;
    :try_start_0
    const-string v2, "SSL"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    move-object v1, v2

    .line 344
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 347
    :catch_0
    move-exception v2

    .line 348
    .local v2, "e":Ljava/security/KeyManagementException;
    invoke-virtual {v2}, Ljava/security/KeyManagementException;->printStackTrace()V

    goto :goto_1

    .line 345
    .end local v2    # "e":Ljava/security/KeyManagementException;
    :catch_1
    move-exception v2

    .line 346
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 349
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    nop

    .line 350
    :goto_1
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 351
    .local v2, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    new-instance v3, Lcom/maning/updatelibrary/http/DownloadFileUtils$6;

    invoke-direct {v3}, Lcom/maning/updatelibrary/http/DownloadFileUtils$6;-><init>()V

    .line 358
    .local v3, "DO_NOT_VERIFY":Ljavax/net/ssl/HostnameVerifier;
    new-instance v4, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v4}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 359
    .local v4, "builder":Lokhttp3/OkHttpClient$Builder;
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x7530

    invoke-virtual {v4, v6, v7, v5}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 360
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v5}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 361
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v5}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 362
    invoke-virtual {v4, v2, v0}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 363
    invoke-virtual {v4, v3}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 364
    return-object v4
.end method

.method private startDonwload()V
    .locals 10

    .line 174
    iget-object v0, p0, Lcom/maning/updatelibrary/http/DownloadFileUtils;->downloadModel:Lcom/maning/updatelibrary/http/DownloadModel;

    if-eqz v0, :cond_2

    .line 179
    invoke-virtual {v0}, Lcom/maning/updatelibrary/http/DownloadModel;->getHttpUrl()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "httpUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/maning/updatelibrary/http/DownloadFileUtils;->downloadModel:Lcom/maning/updatelibrary/http/DownloadModel;

    invoke-virtual {v1}, Lcom/maning/updatelibrary/http/DownloadModel;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 182
    .local v1, "tag":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 183
    move-object v1, v0

    .line 186
    :cond_0
    iget-object v2, p0, Lcom/maning/updatelibrary/http/DownloadFileUtils;->downloadModel:Lcom/maning/updatelibrary/http/DownloadModel;

    invoke-virtual {v2}, Lcom/maning/updatelibrary/http/DownloadModel;->getHeadersMap()Ljava/util/Map;

    move-result-object v2

    .line 188
    .local v2, "headersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/maning/updatelibrary/http/DownloadFileUtils;->downloadModel:Lcom/maning/updatelibrary/http/DownloadModel;

    invoke-virtual {v3}, Lcom/maning/updatelibrary/http/DownloadModel;->getDownloadPath()Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, "downloadPath":Ljava/lang/String;
    iget-object v4, p0, Lcom/maning/updatelibrary/http/DownloadFileUtils;->downloadModel:Lcom/maning/updatelibrary/http/DownloadModel;

    invoke-virtual {v4}, Lcom/maning/updatelibrary/http/DownloadModel;->getFileProgressCallback()Lcom/maning/updatelibrary/http/AbsFileProgressCallback;

    move-result-object v4

    .line 193
    .local v4, "fileProgressCallback":Lcom/maning/updatelibrary/http/AbsFileProgressCallback;
    invoke-static {}, Lcom/maning/updatelibrary/http/DownloadFileUtils;->getOkhttpDefaultBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v5

    .line 195
    .local v5, "okhttpBuilder":Lokhttp3/OkHttpClient$Builder;
    new-instance v6, Lokhttp3/Request$Builder;

    invoke-direct {v6}, Lokhttp3/Request$Builder;-><init>()V

    .line 197
    .local v6, "requestBuild":Lokhttp3/Request$Builder;
    invoke-virtual {v6, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 199
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 200
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 201
    .local v8, "key":Ljava/lang/String;
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 202
    .end local v8    # "key":Ljava/lang/String;
    goto :goto_0

    .line 204
    :cond_1
    new-instance v7, Lcom/maning/updatelibrary/http/DownloadFileUtils$2;

    invoke-direct {v7, p0, v4}, Lcom/maning/updatelibrary/http/DownloadFileUtils$2;-><init>(Lcom/maning/updatelibrary/http/DownloadFileUtils;Lcom/maning/updatelibrary/http/AbsFileProgressCallback;)V

    invoke-virtual {v5, v7}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 213
    sget-object v7, Lcom/maning/updatelibrary/http/DownloadFileUtils;->mUIHandler:Landroid/os/Handler;

    new-instance v8, Lcom/maning/updatelibrary/http/DownloadFileUtils$3;

    invoke-direct {v8, p0, v4}, Lcom/maning/updatelibrary/http/DownloadFileUtils$3;-><init>(Lcom/maning/updatelibrary/http/DownloadFileUtils;Lcom/maning/updatelibrary/http/AbsFileProgressCallback;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 219
    invoke-virtual {v5}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v7

    invoke-virtual {v6}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v8

    invoke-virtual {v7, v8}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v7

    .line 221
    .local v7, "call":Lokhttp3/Call;
    sget-object v8, Lcom/maning/updatelibrary/http/DownloadFileUtils;->mCallHashMap:Ljava/util/HashMap;

    invoke-virtual {v8, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    new-instance v8, Lcom/maning/updatelibrary/http/DownloadFileUtils$4;

    invoke-direct {v8, p0, v4, v3}, Lcom/maning/updatelibrary/http/DownloadFileUtils$4;-><init>(Lcom/maning/updatelibrary/http/DownloadFileUtils;Lcom/maning/updatelibrary/http/AbsFileProgressCallback;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 299
    return-void

    .line 175
    .end local v0    # "httpUrl":Ljava/lang/String;
    .end local v1    # "tag":Ljava/lang/Object;
    .end local v2    # "headersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "downloadPath":Ljava/lang/String;
    .end local v4    # "fileProgressCallback":Lcom/maning/updatelibrary/http/AbsFileProgressCallback;
    .end local v5    # "okhttpBuilder":Lokhttp3/OkHttpClient$Builder;
    .end local v6    # "requestBuild":Lokhttp3/Request$Builder;
    .end local v7    # "call":Lokhttp3/Call;
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "OkhttpRequestModel\u521d\u59cb\u5316\u5931\u8d25"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static with()Lcom/maning/updatelibrary/http/DownloadFileUtils;
    .locals 1

    .line 99
    new-instance v0, Lcom/maning/updatelibrary/http/DownloadFileUtils;

    invoke-direct {v0}, Lcom/maning/updatelibrary/http/DownloadFileUtils;-><init>()V

    sput-object v0, Lcom/maning/updatelibrary/http/DownloadFileUtils;->instance:Lcom/maning/updatelibrary/http/DownloadFileUtils;

    .line 100
    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/maning/updatelibrary/http/DownloadFileUtils;
    .locals 1
    .param p1, "headerKey"    # Ljava/lang/String;
    .param p2, "headerValue"    # Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/maning/updatelibrary/http/DownloadFileUtils;->downloadModel:Lcom/maning/updatelibrary/http/DownloadModel;

    invoke-virtual {v0}, Lcom/maning/updatelibrary/http/DownloadModel;->getHeadersMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/maning/updatelibrary/http/DownloadFileUtils;->instance:Lcom/maning/updatelibrary/http/DownloadFileUtils;

    return-object v0
.end method

.method public downloadPath(Ljava/lang/String;)Lcom/maning/updatelibrary/http/DownloadFileUtils;
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/maning/updatelibrary/http/DownloadFileUtils;->downloadModel:Lcom/maning/updatelibrary/http/DownloadModel;

    invoke-virtual {v0, p1}, Lcom/maning/updatelibrary/http/DownloadModel;->setDownloadPath(Ljava/lang/String;)V

    .line 122
    sget-object v0, Lcom/maning/updatelibrary/http/DownloadFileUtils;->instance:Lcom/maning/updatelibrary/http/DownloadFileUtils;

    return-object v0
.end method

.method public execute(Lcom/maning/updatelibrary/http/AbsFileProgressCallback;)V
    .locals 1
    .param p1, "fileProgressCallback"    # Lcom/maning/updatelibrary/http/AbsFileProgressCallback;

    .line 165
    if-nez p1, :cond_0

    .line 166
    iget-object p1, p0, Lcom/maning/updatelibrary/http/DownloadFileUtils;->defaultFileProgressCallback:Lcom/maning/updatelibrary/http/AbsFileProgressCallback;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/maning/updatelibrary/http/DownloadFileUtils;->downloadModel:Lcom/maning/updatelibrary/http/DownloadModel;

    invoke-virtual {v0, p1}, Lcom/maning/updatelibrary/http/DownloadModel;->setFileProgressCallback(Lcom/maning/updatelibrary/http/AbsFileProgressCallback;)V

    .line 170
    invoke-direct {p0}, Lcom/maning/updatelibrary/http/DownloadFileUtils;->startDonwload()V

    .line 171
    return-void
.end method

.method public headers(Ljava/util/Map;)Lcom/maning/updatelibrary/http/DownloadFileUtils;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/maning/updatelibrary/http/DownloadFileUtils;"
        }
    .end annotation

    .line 143
    .local p1, "headersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/maning/updatelibrary/http/DownloadFileUtils;->downloadModel:Lcom/maning/updatelibrary/http/DownloadModel;

    invoke-virtual {v0, p1}, Lcom/maning/updatelibrary/http/DownloadModel;->setHeadersMap(Ljava/util/Map;)V

    .line 144
    sget-object v0, Lcom/maning/updatelibrary/http/DownloadFileUtils;->instance:Lcom/maning/updatelibrary/http/DownloadFileUtils;

    return-object v0
.end method

.method public tag(Ljava/lang/Object;)Lcom/maning/updatelibrary/http/DownloadFileUtils;
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/maning/updatelibrary/http/DownloadFileUtils;->downloadModel:Lcom/maning/updatelibrary/http/DownloadModel;

    invoke-virtual {v0, p1}, Lcom/maning/updatelibrary/http/DownloadModel;->setTag(Ljava/lang/Object;)V

    .line 133
    sget-object v0, Lcom/maning/updatelibrary/http/DownloadFileUtils;->instance:Lcom/maning/updatelibrary/http/DownloadFileUtils;

    return-object v0
.end method

.method public url(Ljava/lang/String;)Lcom/maning/updatelibrary/http/DownloadFileUtils;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/maning/updatelibrary/http/DownloadFileUtils;->downloadModel:Lcom/maning/updatelibrary/http/DownloadModel;

    invoke-virtual {v0, p1}, Lcom/maning/updatelibrary/http/DownloadModel;->setHttpUrl(Ljava/lang/String;)V

    .line 111
    sget-object v0, Lcom/maning/updatelibrary/http/DownloadFileUtils;->instance:Lcom/maning/updatelibrary/http/DownloadFileUtils;

    return-object v0
.end method
