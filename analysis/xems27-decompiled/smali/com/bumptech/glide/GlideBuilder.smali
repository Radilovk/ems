.class public Lcom/bumptech/glide/GlideBuilder;
.super Ljava/lang/Object;
.source "GlideBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Glide"


# instance fields
.field private bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final context:Landroid/content/Context;

.field private decodeFormat:Lcom/bumptech/glide/load/DecodeFormat;

.field private diskCacheFactory:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;

.field private diskCacheService:Ljava/util/concurrent/ExecutorService;

.field private engine:Lcom/bumptech/glide/load/engine/Engine;

.field private memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

.field private sourceService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->context:Landroid/content/Context;

    .line 40
    return-void
.end method


# virtual methods
.method createGlide()Lcom/bumptech/glide/Glide;
    .locals 8

    .line 180
    iget-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->sourceService:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 181
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 182
    .local v0, "cores":I
    new-instance v2, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;

    invoke-direct {v2, v0}, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;-><init>(I)V

    iput-object v2, p0, Lcom/bumptech/glide/GlideBuilder;->sourceService:Ljava/util/concurrent/ExecutorService;

    .line 184
    .end local v0    # "cores":I
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->diskCacheService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    .line 185
    new-instance v0, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->diskCacheService:Ljava/util/concurrent/ExecutorService;

    .line 188
    :cond_1
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    iget-object v1, p0, Lcom/bumptech/glide/GlideBuilder;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;-><init>(Landroid/content/Context;)V

    .line 189
    .local v0, "calculator":Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;
    iget-object v1, p0, Lcom/bumptech/glide/GlideBuilder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    if-nez v1, :cond_4

    .line 190
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_3

    .line 191
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->getBitmapPoolSize()I

    move-result v1

    .line 192
    .local v1, "size":I
    sget-boolean v2, Lcom/bumptech/glide/load/DecodeFormat;->REQUIRE_ARGB_8888:Z

    if-eqz v2, :cond_2

    .line 193
    new-instance v2, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;-><init>(ILjava/util/Set;)V

    iput-object v2, p0, Lcom/bumptech/glide/GlideBuilder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    goto :goto_0

    .line 195
    :cond_2
    new-instance v2, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;

    invoke-direct {v2, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;-><init>(I)V

    iput-object v2, p0, Lcom/bumptech/glide/GlideBuilder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 197
    .end local v1    # "size":I
    :goto_0
    goto :goto_1

    .line 198
    :cond_3
    new-instance v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPoolAdapter;

    invoke-direct {v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPoolAdapter;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/GlideBuilder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 202
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/bumptech/glide/GlideBuilder;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    if-nez v1, :cond_5

    .line 203
    new-instance v1, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->getMemoryCacheSize()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;-><init>(I)V

    iput-object v1, p0, Lcom/bumptech/glide/GlideBuilder;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 206
    :cond_5
    iget-object v1, p0, Lcom/bumptech/glide/GlideBuilder;->diskCacheFactory:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;

    if-nez v1, :cond_6

    .line 207
    new-instance v1, Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;

    iget-object v2, p0, Lcom/bumptech/glide/GlideBuilder;->context:Landroid/content/Context;

    const/high16 v3, 0xfa00000

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/bumptech/glide/GlideBuilder;->diskCacheFactory:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;

    .line 210
    :cond_6
    iget-object v1, p0, Lcom/bumptech/glide/GlideBuilder;->engine:Lcom/bumptech/glide/load/engine/Engine;

    if-nez v1, :cond_7

    .line 211
    new-instance v1, Lcom/bumptech/glide/load/engine/Engine;

    iget-object v2, p0, Lcom/bumptech/glide/GlideBuilder;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    iget-object v3, p0, Lcom/bumptech/glide/GlideBuilder;->diskCacheFactory:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;

    iget-object v4, p0, Lcom/bumptech/glide/GlideBuilder;->diskCacheService:Ljava/util/concurrent/ExecutorService;

    iget-object v5, p0, Lcom/bumptech/glide/GlideBuilder;->sourceService:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bumptech/glide/load/engine/Engine;-><init>(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V

    iput-object v1, p0, Lcom/bumptech/glide/GlideBuilder;->engine:Lcom/bumptech/glide/load/engine/Engine;

    .line 214
    :cond_7
    iget-object v1, p0, Lcom/bumptech/glide/GlideBuilder;->decodeFormat:Lcom/bumptech/glide/load/DecodeFormat;

    if-nez v1, :cond_8

    .line 215
    sget-object v1, Lcom/bumptech/glide/load/DecodeFormat;->DEFAULT:Lcom/bumptech/glide/load/DecodeFormat;

    iput-object v1, p0, Lcom/bumptech/glide/GlideBuilder;->decodeFormat:Lcom/bumptech/glide/load/DecodeFormat;

    .line 218
    :cond_8
    new-instance v1, Lcom/bumptech/glide/Glide;

    iget-object v3, p0, Lcom/bumptech/glide/GlideBuilder;->engine:Lcom/bumptech/glide/load/engine/Engine;

    iget-object v4, p0, Lcom/bumptech/glide/GlideBuilder;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    iget-object v5, p0, Lcom/bumptech/glide/GlideBuilder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iget-object v6, p0, Lcom/bumptech/glide/GlideBuilder;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/bumptech/glide/GlideBuilder;->decodeFormat:Lcom/bumptech/glide/load/DecodeFormat;

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/bumptech/glide/Glide;-><init>(Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/content/Context;Lcom/bumptech/glide/load/DecodeFormat;)V

    return-object v1
.end method

.method public setBitmapPool(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/GlideBuilder;
    .locals 0
    .param p1, "bitmapPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 50
    iput-object p1, p0, Lcom/bumptech/glide/GlideBuilder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 51
    return-object p0
.end method

.method public setDecodeFormat(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/GlideBuilder;
    .locals 2
    .param p1, "decodeFormat"    # Lcom/bumptech/glide/load/DecodeFormat;

    .line 162
    sget-boolean v0, Lcom/bumptech/glide/load/DecodeFormat;->REQUIRE_ARGB_8888:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bumptech/glide/load/DecodeFormat;->ALWAYS_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    if-eq p1, v0, :cond_0

    .line 163
    sget-object v0, Lcom/bumptech/glide/load/DecodeFormat;->ALWAYS_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    iput-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->decodeFormat:Lcom/bumptech/glide/load/DecodeFormat;

    .line 164
    const/4 v0, 0x5

    const-string v1, "Glide"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    const-string v0, "Unsafe to use RGB_565 on KitKat or Lollipop, ignoring setDecodeFormat"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 168
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/GlideBuilder;->decodeFormat:Lcom/bumptech/glide/load/DecodeFormat;

    .line 170
    :cond_1
    :goto_0
    return-object p0
.end method

.method public setDiskCache(Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;)Lcom/bumptech/glide/GlideBuilder;
    .locals 0
    .param p1, "diskCacheFactory"    # Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;

    .line 95
    iput-object p1, p0, Lcom/bumptech/glide/GlideBuilder;->diskCacheFactory:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;

    .line 96
    return-object p0
.end method

.method public setDiskCache(Lcom/bumptech/glide/load/engine/cache/DiskCache;)Lcom/bumptech/glide/GlideBuilder;
    .locals 1
    .param p1, "diskCache"    # Lcom/bumptech/glide/load/engine/cache/DiskCache;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 78
    new-instance v0, Lcom/bumptech/glide/GlideBuilder$1;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/GlideBuilder$1;-><init>(Lcom/bumptech/glide/GlideBuilder;Lcom/bumptech/glide/load/engine/cache/DiskCache;)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/GlideBuilder;->setDiskCache(Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;)Lcom/bumptech/glide/GlideBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setDiskCacheService(Ljava/util/concurrent/ExecutorService;)Lcom/bumptech/glide/GlideBuilder;
    .locals 0
    .param p1, "service"    # Ljava/util/concurrent/ExecutorService;

    .line 135
    iput-object p1, p0, Lcom/bumptech/glide/GlideBuilder;->diskCacheService:Ljava/util/concurrent/ExecutorService;

    .line 136
    return-object p0
.end method

.method setEngine(Lcom/bumptech/glide/load/engine/Engine;)Lcom/bumptech/glide/GlideBuilder;
    .locals 0
    .param p1, "engine"    # Lcom/bumptech/glide/load/engine/Engine;

    .line 175
    iput-object p1, p0, Lcom/bumptech/glide/GlideBuilder;->engine:Lcom/bumptech/glide/load/engine/Engine;

    .line 176
    return-object p0
.end method

.method public setMemoryCache(Lcom/bumptech/glide/load/engine/cache/MemoryCache;)Lcom/bumptech/glide/GlideBuilder;
    .locals 0
    .param p1, "memoryCache"    # Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 62
    iput-object p1, p0, Lcom/bumptech/glide/GlideBuilder;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 63
    return-object p0
.end method

.method public setResizeService(Ljava/util/concurrent/ExecutorService;)Lcom/bumptech/glide/GlideBuilder;
    .locals 0
    .param p1, "service"    # Ljava/util/concurrent/ExecutorService;

    .line 115
    iput-object p1, p0, Lcom/bumptech/glide/GlideBuilder;->sourceService:Ljava/util/concurrent/ExecutorService;

    .line 116
    return-object p0
.end method
