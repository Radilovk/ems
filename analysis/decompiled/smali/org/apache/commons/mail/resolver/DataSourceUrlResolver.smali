.class public Lorg/apache/commons/mail/resolver/DataSourceUrlResolver;
.super Lorg/apache/commons/mail/resolver/DataSourceBaseResolver;
.source "DataSourceUrlResolver.java"


# instance fields
.field private final baseUrl:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 0
    .param p1, "baseUrl"    # Ljava/net/URL;

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/apache/commons/mail/resolver/DataSourceBaseResolver;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/apache/commons/mail/resolver/DataSourceUrlResolver;->baseUrl:Ljava/net/URL;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Z)V
    .locals 0
    .param p1, "baseUrl"    # Ljava/net/URL;
    .param p2, "lenient"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p2}, Lorg/apache/commons/mail/resolver/DataSourceBaseResolver;-><init>(Z)V

    .line 56
    iput-object p1, p0, Lorg/apache/commons/mail/resolver/DataSourceUrlResolver;->baseUrl:Ljava/net/URL;

    .line 57
    return-void
.end method


# virtual methods
.method protected createUrl(Ljava/lang/String;)Ljava/net/URL;
    .locals 4
    .param p1, "resourceLocation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lorg/apache/commons/mail/resolver/DataSourceUrlResolver;->baseUrl:Ljava/net/URL;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 130
    :goto_0
    return-object v0

    .line 119
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 121
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No resource defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/commons/mail/resolver/DataSourceUrlResolver;->isFileUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lorg/apache/commons/mail/resolver/DataSourceUrlResolver;->isHttpUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 127
    :cond_3
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_4
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Lorg/apache/commons/mail/resolver/DataSourceUrlResolver;->getBaseUrl()Ljava/net/URL;

    move-result-object v1

    const-string v2, "&amp;"

    const-string v3, "&"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getBaseUrl()Ljava/net/URL;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/commons/mail/resolver/DataSourceUrlResolver;->baseUrl:Ljava/net/URL;

    return-object v0
.end method

.method public resolve(Ljava/lang/String;)Ljavax/activation/DataSource;
    .locals 1
    .param p1, "resourceLocation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0}, Lorg/apache/commons/mail/resolver/DataSourceUrlResolver;->isLenient()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/mail/resolver/DataSourceUrlResolver;->resolve(Ljava/lang/String;Z)Ljavax/activation/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Ljava/lang/String;Z)Ljavax/activation/DataSource;
    .locals 5
    .param p1, "resourceLocation"    # Ljava/lang/String;
    .param p2, "isLenient"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    const/4 v1, 0x0

    .line 82
    .local v1, "result":Ljavax/activation/DataSource;
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/mail/resolver/DataSourceUrlResolver;->isCid(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 84
    invoke-virtual {p0, p1}, Lorg/apache/commons/mail/resolver/DataSourceUrlResolver;->createUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    .line 85
    .local v3, "url":Ljava/net/URL;
    new-instance v2, Ljavax/activation/URLDataSource;

    invoke-direct {v2, v3}, Ljavax/activation/URLDataSource;-><init>(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v1    # "result":Ljavax/activation/DataSource;
    .local v2, "result":Ljavax/activation/DataSource;
    :try_start_1
    invoke-interface {v2}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .end local v2    # "result":Ljavax/activation/DataSource;
    .end local v3    # "url":Ljava/net/URL;
    .restart local v1    # "result":Ljavax/activation/DataSource;
    :cond_0
    move-object v2, v1

    .end local v1    # "result":Ljavax/activation/DataSource;
    .restart local v2    # "result":Ljavax/activation/DataSource;
    move-object v4, v1

    .line 95
    :goto_0
    return-object v4

    .line 91
    .end local v2    # "result":Ljavax/activation/DataSource;
    .restart local v1    # "result":Ljavax/activation/DataSource;
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    if-eqz p2, :cond_1

    .line 95
    const/4 v4, 0x0

    move-object v2, v1

    .end local v1    # "result":Ljavax/activation/DataSource;
    .restart local v2    # "result":Ljavax/activation/DataSource;
    goto :goto_0

    .line 97
    .end local v2    # "result":Ljavax/activation/DataSource;
    .restart local v1    # "result":Ljavax/activation/DataSource;
    :cond_1
    throw v0

    .line 91
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "result":Ljavax/activation/DataSource;
    .restart local v2    # "result":Ljavax/activation/DataSource;
    .restart local v3    # "url":Ljava/net/URL;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "result":Ljavax/activation/DataSource;
    .restart local v1    # "result":Ljavax/activation/DataSource;
    goto :goto_1
.end method
