.class public Lorg/apache/commons/mail/resolver/DataSourceClassPathResolver;
.super Lorg/apache/commons/mail/resolver/DataSourceBaseResolver;
.source "DataSourceClassPathResolver.java"


# instance fields
.field private final classPathBase:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lorg/apache/commons/mail/resolver/DataSourceBaseResolver;-><init>()V

    .line 42
    const-string v0, "/"

    iput-object v0, p0, Lorg/apache/commons/mail/resolver/DataSourceClassPathResolver;->classPathBase:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "classPathBase"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Lorg/apache/commons/mail/resolver/DataSourceBaseResolver;-><init>()V

    .line 52
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/mail/resolver/DataSourceClassPathResolver;->classPathBase:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "classPathBase"    # Ljava/lang/String;
    .param p2, "lenient"    # Z

    .line 63
    invoke-direct {p0, p2}, Lorg/apache/commons/mail/resolver/DataSourceBaseResolver;-><init>(Z)V

    .line 64
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/mail/resolver/DataSourceClassPathResolver;->classPathBase:Ljava/lang/String;

    .line 65
    return-void
.end method

.method private getResourceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "resourceLocation"    # Ljava/lang/String;

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/mail/resolver/DataSourceClassPathResolver;->getClassPathBase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "//"

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getClassPathBase()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/apache/commons/mail/resolver/DataSourceClassPathResolver;->classPathBase:Ljava/lang/String;

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

    .line 78
    invoke-virtual {p0}, Lorg/apache/commons/mail/resolver/DataSourceClassPathResolver;->isLenient()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/mail/resolver/DataSourceClassPathResolver;->resolve(Ljava/lang/String;Z)Ljavax/activation/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Ljava/lang/String;Z)Ljavax/activation/DataSource;
    .locals 8
    .param p1, "resourceLocation"    # Ljava/lang/String;
    .param p2, "isLenient"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    const-class v0, Lorg/apache/commons/mail/resolver/DataSourceClassPathResolver;

    const/4 v1, 0x0

    .line 88
    .local v1, "result":Ljavax/activation/DataSource;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/mail/resolver/DataSourceClassPathResolver;->isCid(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/commons/mail/resolver/DataSourceClassPathResolver;->isHttpUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 90
    invoke-static {}, Ljavax/activation/FileTypeMap;->getDefaultFileTypeMap()Ljavax/activation/FileTypeMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljavax/activation/FileTypeMap;->getContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "mimeType":Ljava/lang/String;
    invoke-direct {p0, p1}, Lorg/apache/commons/mail/resolver/DataSourceClassPathResolver;->getResourceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, "resourceName":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 94
    .local v5, "is":Ljava/io/InputStream;
    if-eqz v5, :cond_0

    .line 96
    new-instance v6, Ljavax/mail/util/ByteArrayDataSource;

    invoke-direct {v6, v5, v3}, Ljavax/mail/util/ByteArrayDataSource;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 99
    .local v6, "ds":Ljavax/mail/util/ByteArrayDataSource;
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljavax/mail/util/ByteArrayDataSource;->setName(Ljava/lang/String;)V

    .line 100
    move-object v1, v6

    .line 101
    .end local v6    # "ds":Ljavax/mail/util/ByteArrayDataSource;
    goto :goto_0

    .line 104
    :cond_0
    if-eqz p2, :cond_1

    .line 106
    return-object v2

    .line 108
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The following class path resource was not found : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "result":Ljavax/activation/DataSource;
    .end local p1    # "resourceLocation":Ljava/lang/String;
    .end local p2    # "isLenient":Z
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v4    # "resourceName":Ljava/lang/String;
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v1    # "result":Ljavax/activation/DataSource;
    .restart local p1    # "resourceLocation":Ljava/lang/String;
    .restart local p2    # "isLenient":Z
    :cond_2
    :goto_0
    return-object v1

    .line 115
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/io/IOException;
    if-eqz p2, :cond_3

    .line 119
    return-object v2

    .line 121
    :cond_3
    throw v0
.end method
