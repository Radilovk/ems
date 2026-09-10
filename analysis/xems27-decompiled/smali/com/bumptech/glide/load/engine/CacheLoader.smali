.class Lcom/bumptech/glide/load/engine/CacheLoader;
.super Ljava/lang/Object;
.source "CacheLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CacheLoader"


# instance fields
.field private final diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/cache/DiskCache;)V
    .locals 0
    .param p1, "diskCache"    # Lcom/bumptech/glide/load/engine/cache/DiskCache;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/CacheLoader;->diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    .line 18
    return-void
.end method


# virtual methods
.method public load(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/ResourceDecoder;II)Lcom/bumptech/glide/load/engine/Resource;
    .locals 6
    .param p1, "key"    # Lcom/bumptech/glide/load/Key;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/ResourceDecoder<",
            "Ljava/io/File;",
            "TZ;>;II)",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TZ;>;"
        }
    .end annotation

    .line 21
    .local p2, "decoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/File;TZ;>;"
    const-string v0, "CacheLoader"

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/CacheLoader;->diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->get(Lcom/bumptech/glide/load/Key;)Ljava/io/File;

    move-result-object v1

    .line 22
    .local v1, "fromCache":Ljava/io/File;
    if-nez v1, :cond_0

    .line 23
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    const/4 v2, 0x0

    .line 28
    .local v2, "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TZ;>;"
    const/4 v3, 0x3

    :try_start_0
    invoke-interface {p2, v1, p3, p4}, Lcom/bumptech/glide/load/ResourceDecoder;->decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 33
    goto :goto_0

    .line 29
    :catch_0
    move-exception v4

    .line 30
    .local v4, "e":Ljava/io/IOException;
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 31
    const-string v5, "Exception decoding image from cache"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    if-nez v2, :cond_3

    .line 35
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 36
    const-string v3, "Failed to decode image from cache or not present in cache"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/CacheLoader;->diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->delete(Lcom/bumptech/glide/load/Key;)V

    .line 40
    :cond_3
    return-object v2
.end method
