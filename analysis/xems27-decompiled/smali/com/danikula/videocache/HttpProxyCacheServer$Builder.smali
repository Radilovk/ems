.class public final Lcom/danikula/videocache/HttpProxyCacheServer$Builder;
.super Ljava/lang/Object;
.source "HttpProxyCacheServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danikula/videocache/HttpProxyCacheServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final DEFAULT_MAX_SIZE:J = 0x20000000L


# instance fields
.field private cacheRoot:Ljava/io/File;

.field private diskUsage:Lcom/danikula/videocache/file/DiskUsage;

.field private fileNameGenerator:Lcom/danikula/videocache/file/FileNameGenerator;

.field private sourceInfoStorage:Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    invoke-static {p1}, Lcom/danikula/videocache/sourcestorage/SourceInfoStorageFactory;->newSourceInfoStorage(Landroid/content/Context;)Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;->sourceInfoStorage:Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;

    .line 356
    invoke-static {p1}, Lcom/danikula/videocache/StorageUtils;->getIndividualCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;->cacheRoot:Ljava/io/File;

    .line 357
    new-instance v0, Lcom/danikula/videocache/file/TotalSizeLruDiskUsage;

    const-wide/32 v1, 0x20000000

    invoke-direct {v0, v1, v2}, Lcom/danikula/videocache/file/TotalSizeLruDiskUsage;-><init>(J)V

    iput-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;->diskUsage:Lcom/danikula/videocache/file/DiskUsage;

    .line 358
    new-instance v0, Lcom/danikula/videocache/file/Md5FileNameGenerator;

    invoke-direct {v0}, Lcom/danikula/videocache/file/Md5FileNameGenerator;-><init>()V

    iput-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;->fileNameGenerator:Lcom/danikula/videocache/file/FileNameGenerator;

    .line 359
    return-void
.end method

.method static synthetic access$000(Lcom/danikula/videocache/HttpProxyCacheServer$Builder;)Lcom/danikula/videocache/Config;
    .locals 1
    .param p0, "x0"    # Lcom/danikula/videocache/HttpProxyCacheServer$Builder;

    .line 345
    invoke-direct {p0}, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;->buildConfig()Lcom/danikula/videocache/Config;

    move-result-object v0

    return-object v0
.end method

.method private buildConfig()Lcom/danikula/videocache/Config;
    .locals 5

    .line 439
    new-instance v0, Lcom/danikula/videocache/Config;

    iget-object v1, p0, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;->cacheRoot:Ljava/io/File;

    iget-object v2, p0, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;->fileNameGenerator:Lcom/danikula/videocache/file/FileNameGenerator;

    iget-object v3, p0, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;->diskUsage:Lcom/danikula/videocache/file/DiskUsage;

    iget-object v4, p0, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;->sourceInfoStorage:Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/danikula/videocache/Config;-><init>(Ljava/io/File;Lcom/danikula/videocache/file/FileNameGenerator;Lcom/danikula/videocache/file/DiskUsage;Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;)V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/danikula/videocache/HttpProxyCacheServer;
    .locals 3

    .line 434
    invoke-direct {p0}, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;->buildConfig()Lcom/danikula/videocache/Config;

    move-result-object v0

    .line 435
    .local v0, "config":Lcom/danikula/videocache/Config;
    new-instance v1, Lcom/danikula/videocache/HttpProxyCacheServer;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/danikula/videocache/HttpProxyCacheServer;-><init>(Lcom/danikula/videocache/Config;Lcom/danikula/videocache/HttpProxyCacheServer$1;)V

    return-object v1
.end method

.method public cacheDirectory(Ljava/io/File;)Lcom/danikula/videocache/HttpProxyCacheServer$Builder;
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .line 374
    invoke-static {p1}, Lcom/danikula/videocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;->cacheRoot:Ljava/io/File;

    .line 375
    return-object p0
.end method

.method public diskUsage(Lcom/danikula/videocache/file/DiskUsage;)Lcom/danikula/videocache/HttpProxyCacheServer$Builder;
    .locals 1
    .param p1, "diskUsage"    # Lcom/danikula/videocache/file/DiskUsage;

    .line 424
    invoke-static {p1}, Lcom/danikula/videocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danikula/videocache/file/DiskUsage;

    iput-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;->diskUsage:Lcom/danikula/videocache/file/DiskUsage;

    .line 425
    return-object p0
.end method

.method public fileNameGenerator(Lcom/danikula/videocache/file/FileNameGenerator;)Lcom/danikula/videocache/HttpProxyCacheServer$Builder;
    .locals 1
    .param p1, "fileNameGenerator"    # Lcom/danikula/videocache/file/FileNameGenerator;

    .line 385
    invoke-static {p1}, Lcom/danikula/videocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danikula/videocache/file/FileNameGenerator;

    iput-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;->fileNameGenerator:Lcom/danikula/videocache/file/FileNameGenerator;

    .line 386
    return-object p0
.end method

.method public maxCacheFilesCount(I)Lcom/danikula/videocache/HttpProxyCacheServer$Builder;
    .locals 1
    .param p1, "count"    # I

    .line 414
    new-instance v0, Lcom/danikula/videocache/file/TotalCountLruDiskUsage;

    invoke-direct {v0, p1}, Lcom/danikula/videocache/file/TotalCountLruDiskUsage;-><init>(I)V

    iput-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;->diskUsage:Lcom/danikula/videocache/file/DiskUsage;

    .line 415
    return-object p0
.end method

.method public maxCacheSize(J)Lcom/danikula/videocache/HttpProxyCacheServer$Builder;
    .locals 1
    .param p1, "maxSize"    # J

    .line 401
    new-instance v0, Lcom/danikula/videocache/file/TotalSizeLruDiskUsage;

    invoke-direct {v0, p1, p2}, Lcom/danikula/videocache/file/TotalSizeLruDiskUsage;-><init>(J)V

    iput-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;->diskUsage:Lcom/danikula/videocache/file/DiskUsage;

    .line 402
    return-object p0
.end method
