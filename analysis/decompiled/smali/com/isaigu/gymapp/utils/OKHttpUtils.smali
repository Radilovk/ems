.class public Lcom/isaigu/gymapp/utils/OKHttpUtils;
.super Ljava/lang/Object;
.source "OKHttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/utils/OKHttpUtils$RedirectInterceptor;,
        Lcom/isaigu/gymapp/utils/OKHttpUtils$Tls12SocketFactory;,
        Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpsUtils;,
        Lcom/isaigu/gymapp/utils/OKHttpUtils$SSLSocketFactoryCompat;,
        Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;,
        Lcom/isaigu/gymapp/utils/OKHttpUtils$OnDownloadListener;
    }
.end annotation


# static fields
.field private static final client:Lokhttp3/OkHttpClient;

.field private static logEnable:Z

.field private static trustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xa

    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/utils/OKHttpUtils;->logEnable:Z

    .line 59
    new-instance v0, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpsUtils$UnSafeTrustManager;

    invoke-direct {v0}, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpsUtils$UnSafeTrustManager;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/utils/OKHttpUtils;->trustManager:Ljavax/net/ssl/X509TrustManager;

    .line 61
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const-wide/16 v2, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 62
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 63
    invoke-virtual {v0, v4, v5, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 64
    invoke-virtual {v0, v4, v5, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpsUtils$UnSafeHostnameVerifier;

    invoke-direct {v1}, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpsUtils$UnSafeHostnameVerifier;-><init>()V

    .line 65
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/utils/OKHttpUtils;->trustManager:Ljavax/net/ssl/X509TrustManager;

    .line 66
    invoke-static {v1}, Lcom/isaigu/gymapp/utils/OKHttpUtils;->getSslSocketFactory(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/utils/OKHttpUtils;->trustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/utils/OKHttpUtils;->client:Lokhttp3/OkHttpClient;

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/isaigu/gymapp/utils/OKHttpUtils;->logEnable:Z

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-static {p0}, Lcom/isaigu/gymapp/utils/OKHttpUtils;->getNameFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/utils/OKHttpUtils$OnDownloadListener;)V
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "saveDir"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/isaigu/gymapp/utils/OKHttpUtils$OnDownloadListener;

    .prologue
    .line 289
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 290
    .local v0, "request":Lokhttp3/Request;
    sget-object v1, Lcom/isaigu/gymapp/utils/OKHttpUtils;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/utils/OKHttpUtils$2;

    invoke-direct {v2, p2, p1, p0}, Lcom/isaigu/gymapp/utils/OKHttpUtils$2;-><init>(Lcom/isaigu/gymapp/utils/OKHttpUtils$OnDownloadListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 397
    return-void
.end method

.method public static getClient()Lokhttp3/OkHttpClient;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/isaigu/gymapp/utils/OKHttpUtils;->client:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method private static getNameFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 421
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, "name":Ljava/lang/String;
    return-object v0
.end method

.method private static getSslSocketFactory(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 6
    .param p0, "trustManager"    # Ljavax/net/ssl/X509TrustManager;

    .prologue
    .line 74
    const/4 v2, 0x0

    .line 76
    .local v2, "sslContext":Ljavax/net/ssl/SSLContext;
    :try_start_0
    const-string v3, "SSL"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 78
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v2, v3, v4, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    .line 85
    :goto_0
    new-instance v1, Lcom/isaigu/gymapp/utils/OKHttpUtils$Tls12SocketFactory;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/isaigu/gymapp/utils/OKHttpUtils$Tls12SocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 86
    .local v1, "socketFactory":Ljavax/net/ssl/SSLSocketFactory;
    return-object v1

    .line 79
    .end local v1    # "socketFactory":Ljavax/net/ssl/SSLSocketFactory;
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/security/KeyManagementException;
    :try_start_2
    invoke-virtual {v0}, Ljava/security/KeyManagementException;->printStackTrace()V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 82
    .end local v0    # "e":Ljava/security/KeyManagementException;
    :catch_1
    move-exception v0

    .line 83
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method public static httpGetJson(Ljava/lang/String;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, "callback":Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;, "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/isaigu/gymapp/utils/OKHttpUtils;->httpGetJson(Ljava/lang/String;Ljava/util/Map;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 242
    return-void
.end method

.method public static httpGetJson(Ljava/lang/String;Ljava/util/Map;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "callback":Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;, "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback<TT;>;"
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 226
    .local v0, "builder":Lokhttp3/Request$Builder;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 227
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 228
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    .line 231
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v3, "Accept"

    const-string v4, "application/json"

    invoke-virtual {v0, v3, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 232
    const-string v3, "Content-Type"

    const-string v4, "application/json;charset=utf-8"

    invoke-virtual {v0, v3, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 233
    invoke-virtual {v3, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 234
    invoke-virtual {v3}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    .line 236
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 237
    .local v2, "request":Lokhttp3/Request;
    invoke-static {v2, p2}, Lcom/isaigu/gymapp/utils/OKHttpUtils;->httpRequest(Lokhttp3/Request;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 238
    return-void
.end method

.method public static httpPostJson(Ljava/lang/String;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, "callback":Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;, "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback<TT;>;"
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/isaigu/gymapp/utils/OKHttpUtils;->httpPostJson(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 219
    return-void
.end method

.method public static httpPostJson(Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p2, "callback":Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;, "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/isaigu/gymapp/utils/OKHttpUtils;->httpPostJson(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 214
    return-void
.end method

.method public static httpPostJson(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .locals 8
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p2, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "callback":Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;, "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback<TT;>;"
    const-string v5, "application/json; charset=utf-8"

    invoke-static {v5}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    .line 194
    .local v3, "mediaType":Lokhttp3/MediaType;
    invoke-static {v3, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 195
    .local v0, "body":Lokhttp3/RequestBody;
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 196
    .local v1, "builder":Lokhttp3/Request$Builder;
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 197
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 198
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    .line 201
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v1, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 202
    const-string v5, "Accept"

    const-string v6, "application/json"

    invoke-virtual {v1, v5, v6}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 203
    const-string v5, "Content-Type"

    const-string v6, "application/json;charset=utf-8"

    invoke-virtual {v1, v5, v6}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 204
    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 207
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v4

    .line 208
    .local v4, "request":Lokhttp3/Request;
    invoke-static {v4, p3}, Lcom/isaigu/gymapp/utils/OKHttpUtils;->httpRequest(Lokhttp3/Request;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 209
    return-void
.end method

.method public static httpRequest(Lokhttp3/Request;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .locals 4
    .param p0, "request"    # Lokhttp3/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lokhttp3/Request;",
            "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "callback":Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;, "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback<TT;>;"
    if-eqz p0, :cond_1

    .line 130
    :try_start_0
    sget-boolean v1, Lcom/isaigu/gymapp/utils/OKHttpUtils;->logEnable:Z

    if-eqz v1, :cond_0

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http request : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lokhttp3/Request;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 133
    :cond_0
    sget-object v1, Lcom/isaigu/gymapp/utils/OKHttpUtils;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/utils/OKHttpUtils$1;

    invoke-direct {v2, p1}, Lcom/isaigu/gymapp/utils/OKHttpUtils$1;-><init>(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    invoke-interface {v1, v2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :cond_1
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 185
    if-eqz p1, :cond_1

    .line 186
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;->httpResponse(ZLjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static isExistDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "saveDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 407
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 408
    .local v0, "downloadFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 409
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 411
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 412
    .local v1, "savePath":Ljava/lang/String;
    return-object v1
.end method

.method public static setLogEnable(Z)V
    .locals 0
    .param p0, "logEnable"    # Z

    .prologue
    .line 90
    sput-boolean p0, Lcom/isaigu/gymapp/utils/OKHttpUtils;->logEnable:Z

    .line 91
    return-void
.end method

.method public static uploadFile(Ljava/lang/String;Ljava/io/File;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p2, "callback":Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;, "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/isaigu/gymapp/utils/OKHttpUtils;->uploadFile(Ljava/lang/String;Ljava/io/File;Ljava/util/Map;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 252
    return-void
.end method

.method public static uploadFile(Ljava/lang/String;Ljava/io/File;Ljava/util/Map;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .locals 9
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 263
    .local p2, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "callback":Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;, "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback<TT;>;"
    if-eqz p0, :cond_0

    const-string v6, ""

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    if-nez p1, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    new-instance v6, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v6}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v7, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v6, v7}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v5

    .line 267
    .local v5, "requestBody":Lokhttp3/MultipartBody$Builder;
    const-string v6, "image/*"

    invoke-static {v6}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v6

    invoke-static {v6, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 268
    .local v0, "body":Lokhttp3/RequestBody;
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 269
    .local v3, "filename":Ljava/lang/String;
    const-string v6, "file"

    invoke-virtual {v5, v6, v3, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 271
    new-instance v6, Lokhttp3/Request$Builder;

    invoke-direct {v6}, Lokhttp3/Request$Builder;-><init>()V

    .line 272
    invoke-virtual {v6, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v6

    .line 273
    invoke-virtual {v5}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v7

    invoke-virtual {v6, v7}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 274
    .local v1, "builder":Lokhttp3/Request$Builder;
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 275
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 276
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_1

    .line 280
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v4

    .line 281
    .local v4, "request":Lokhttp3/Request;
    invoke-static {v4, p3}, Lcom/isaigu/gymapp/utils/OKHttpUtils;->httpRequest(Lokhttp3/Request;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    goto :goto_0
.end method
