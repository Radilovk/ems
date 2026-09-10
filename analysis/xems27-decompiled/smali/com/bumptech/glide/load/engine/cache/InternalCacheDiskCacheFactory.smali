.class public final Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;
.super Ljava/lang/Object;
.source "InternalCacheDiskCacheFactory.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;


# instance fields
.field private final context:Landroid/content/Context;

.field private final diskCacheName:Ljava/lang/String;

.field private final diskCacheSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "diskCacheSize"    # I

    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "diskCacheName"    # Ljava/lang/String;
    .param p3, "diskCacheSize"    # I

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;->context:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;->diskCacheName:Ljava/lang/String;

    .line 25
    iput p3, p0, Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;->diskCacheSize:I

    .line 26
    return-void
.end method


# virtual methods
.method public build()Lcom/bumptech/glide/load/engine/cache/DiskCache;
    .locals 3

    .line 30
    const/4 v0, 0x0

    .line 33
    .local v0, "diskCache":Lcom/bumptech/glide/load/engine/cache/DiskCache;
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;->diskCacheName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 34
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/bumptech/glide/Glide;->getPhotoCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .local v1, "cacheDir":Ljava/io/File;
    goto :goto_0

    .line 36
    .end local v1    # "cacheDir":Ljava/io/File;
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->getPhotoCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 39
    .restart local v1    # "cacheDir":Ljava/io/File;
    :goto_0
    if-eqz v1, :cond_1

    .line 40
    iget v2, p0, Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;->diskCacheSize:I

    invoke-static {v1, v2}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->get(Ljava/io/File;I)Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v0

    .line 43
    :cond_1
    if-nez v0, :cond_2

    .line 44
    new-instance v2, Lcom/bumptech/glide/load/engine/cache/DiskCacheAdapter;

    invoke-direct {v2}, Lcom/bumptech/glide/load/engine/cache/DiskCacheAdapter;-><init>()V

    move-object v0, v2

    .line 46
    :cond_2
    return-object v0
.end method
