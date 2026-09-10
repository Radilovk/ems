.class public Lorg/apache/commons/mail/resolver/DataSourceClassPathResolver;
.super Lorg/apache/commons/mail/resolver/DataSourceBaseResolver;
.source "DataSourceClassPathResolver.java"


# instance fields
.field private final classPathBase:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
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

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/apache/commons/mail/resolver/DataSourceBaseResolver;-><init>()V

    .line 52
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p1    # "classPathBase":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lorg/apache/commons/mail/resolver/DataSourceClassPathResolver;->classPathBase:Ljava/lang/String;

    .line 53
    return-void

    .line 52
    .restart local p1    # "classPathBase":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "classPathBase"    # Ljava/lang/String;
    .param p2, "lenient"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p2}, Lorg/apache/commons/mail/resolver/DataSourceBaseResolver;-><init>(Z)V

    .line 64
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p1    # "classPathBase":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lorg/apache/commons/mail/resolver/DataSourceClassPathResolver;->classPathBase:Ljava/lang/String;

    .line 65
    return-void

    .line 64
    .restart local p1    # "classPathBase":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getResourceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "resourceLocation"    # Ljava/lang/String;

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/mail/resolver/DataSourceClassPathResolver;->getClassPathBase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

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

    .prologue
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

    .prologue
    .line 78
    invoke-virtual {p0}, Lorg/apache/commons/mail/resolver/DataSourceClassPathResolver;->isLenient()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/mail/resolver/DataSourceClassPathResolver;->resolve(Ljava/lang/String;Z)Ljavax/activation/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Ljava/lang/String;Z)Ljavax/activation/DataSource;
    .locals 11
    .param p1, "resourceLocation"    # Ljava/lang/String;
    .param p2, "isLenient"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 84
    const/4 v5, 0x0

    .line 88
    .local v5, "result":Ljavax/activation/DataSource;
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/mail/resolver/DataSourceClassPathResolver;->isCid(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/mail/resolver/DataSourceClassPathResolver;->isHttpUrl(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 90
    invoke-static {}, Ljavax/activation/FileTypeMap;->getDefaultFileTypeMap()Ljavax/activation/FileTypeMap;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljavax/activation/FileTypeMap;->getContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "mimeType":Ljava/lang/String;
    invoke-direct {p0, p1}, Lorg/apache/commons/mail/resolver/DataSourceClassPathResolver;->getResourceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, "resourceName":Ljava/lang/String;
    const-class v8, Lorg/apache/commons/mail/resolver/DataSourceClassPathResolver;

    invoke-virtual {v8, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 94
    .local v2, "is":Ljava/io/InputStream;
    if-eqz v2, :cond_1

    .line 96
    new-instance v0, Ljavax/mail/util/ByteArrayDataSource;

    invoke-direct {v0, v2, v3}, Ljavax/mail/util/ByteArrayDataSource;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 99
    .local v0, "ds":Ljavax/mail/util/ByteArrayDataSource;
    const-class v8, Lorg/apache/commons/mail/resolver/DataSourceClassPathResolver;

    invoke-virtual {v8, v4}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljavax/mail/util/ByteArrayDataSource;->setName(Ljava/lang/String;)V

    .line 100
    move-object v5, v0

    .end local v0    # "ds":Ljavax/mail/util/ByteArrayDataSource;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v4    # "resourceName":Ljava/lang/String;
    :cond_0
    move-object v6, v5

    .end local v5    # "result":Ljavax/activation/DataSource;
    .local v6, "result":Ljavax/activation/DataSource;
    move-object v7, v5

    .line 119
    :goto_0
    return-object v7

    .line 104
    .end local v6    # "result":Ljavax/activation/DataSource;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "mimeType":Ljava/lang/String;
    .restart local v4    # "resourceName":Ljava/lang/String;
    .restart local v5    # "result":Ljavax/activation/DataSource;
    :cond_1
    if-eqz p2, :cond_2

    move-object v6, v5

    .line 106
    .end local v5    # "result":Ljavax/activation/DataSource;
    .restart local v6    # "result":Ljavax/activation/DataSource;
    goto :goto_0

    .line 108
    .end local v6    # "result":Ljavax/activation/DataSource;
    .restart local v5    # "result":Ljavax/activation/DataSource;
    :cond_2
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The following class path resource was not found : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v4    # "resourceName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Ljava/io/IOException;
    if-eqz p2, :cond_3

    move-object v6, v5

    .line 119
    .end local v5    # "result":Ljavax/activation/DataSource;
    .restart local v6    # "result":Ljavax/activation/DataSource;
    goto :goto_0

    .line 121
    .end local v6    # "result":Ljavax/activation/DataSource;
    .restart local v5    # "result":Ljavax/activation/DataSource;
    :cond_3
    throw v1
.end method
