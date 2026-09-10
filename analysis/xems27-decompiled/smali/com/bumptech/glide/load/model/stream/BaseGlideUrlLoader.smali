.class public abstract Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;
.super Ljava/lang/Object;
.source "BaseGlideUrlLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/stream/StreamModelLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/stream/StreamModelLoader<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final concreteLoader:Lcom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final modelCache:Lcom/bumptech/glide/load/model/ModelCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelCache<",
            "TT;",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    .local p0, "this":Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;, "Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelCache;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelCache;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/model/ModelCache<",
            "TT;",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            ">;)V"
        }
    .end annotation

    .line 29
    .local p0, "this":Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;, "Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader<TT;>;"
    .local p2, "modelCache":Lcom/bumptech/glide/load/model/ModelCache;, "Lcom/bumptech/glide/load/model/ModelCache<TT;Lcom/bumptech/glide/load/model/GlideUrl;>;"
    const-class v0, Lcom/bumptech/glide/load/model/GlideUrl;

    const-class v1, Ljava/io/InputStream;

    invoke-static {v0, v1, p1}, Lcom/bumptech/glide/Glide;->buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;-><init>(Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelCache;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/model/ModelLoader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .line 33
    .local p0, "this":Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;, "Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader<TT;>;"
    .local p1, "concreteLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<Lcom/bumptech/glide/load/model/GlideUrl;Ljava/io/InputStream;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;-><init>(Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelCache;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/bumptech/glide/load/model/ModelCache<",
            "TT;",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            ">;)V"
        }
    .end annotation

    .line 36
    .local p0, "this":Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;, "Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader<TT;>;"
    .local p1, "concreteLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<Lcom/bumptech/glide/load/model/GlideUrl;Ljava/io/InputStream;>;"
    .local p2, "modelCache":Lcom/bumptech/glide/load/model/ModelCache;, "Lcom/bumptech/glide/load/model/ModelCache<TT;Lcom/bumptech/glide/load/model/GlideUrl;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;->concreteLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    .line 38
    iput-object p2, p0, Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;->modelCache:Lcom/bumptech/glide/load/model/ModelCache;

    .line 39
    return-void
.end method


# virtual methods
.method public getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;
    .locals 3
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)",
            "Lcom/bumptech/glide/load/data/DataFetcher<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 43
    .local p0, "this":Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;, "Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader<TT;>;"
    .local p1, "model":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 44
    .local v0, "result":Lcom/bumptech/glide/load/model/GlideUrl;
    iget-object v1, p0, Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;->modelCache:Lcom/bumptech/glide/load/model/ModelCache;

    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {v1, p1, p2, p3}, Lcom/bumptech/glide/load/model/ModelCache;->get(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/bumptech/glide/load/model/GlideUrl;

    .line 48
    :cond_0
    if-nez v0, :cond_2

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;->getUrl(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "stringURL":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    const/4 v2, 0x0

    return-object v2

    .line 54
    :cond_1
    new-instance v2, Lcom/bumptech/glide/load/model/GlideUrl;

    invoke-direct {v2, v1}, Lcom/bumptech/glide/load/model/GlideUrl;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 56
    iget-object v2, p0, Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;->modelCache:Lcom/bumptech/glide/load/model/ModelCache;

    if-eqz v2, :cond_2

    .line 57
    invoke-virtual {v2, p1, p2, p3, v0}, Lcom/bumptech/glide/load/model/ModelCache;->put(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 61
    .end local v1    # "stringURL":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;->concreteLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    invoke-interface {v1, v0, p2, p3}, Lcom/bumptech/glide/load/model/ModelLoader;->getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object v1

    return-object v1
.end method

.method protected abstract getUrl(Ljava/lang/Object;II)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
