.class public Lcom/bumptech/glide/manager/RequestTracker;
.super Ljava/lang/Object;
.source "RequestTracker.java"


# instance fields
.field private isPaused:Z

.field private final requests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/request/Request;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/manager/RequestTracker;->requests:Ljava/util/Set;

    return-void
.end method

.method private getSnapshot()[Lcom/bumptech/glide/request/Request;
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestTracker;->requests:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lcom/bumptech/glide/request/Request;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/request/Request;

    return-object v0
.end method


# virtual methods
.method addRequest(Lcom/bumptech/glide/request/Request;)V
    .locals 1
    .param p1, "request"    # Lcom/bumptech/glide/request/Request;

    .line 34
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestTracker;->requests:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method public clearRequests()V
    .locals 4

    .line 79
    invoke-direct {p0}, Lcom/bumptech/glide/manager/RequestTracker;->getSnapshot()[Lcom/bumptech/glide/request/Request;

    move-result-object v0

    .local v0, "arr$":[Lcom/bumptech/glide/request/Request;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 80
    .local v3, "request":Lcom/bumptech/glide/request/Request;
    invoke-interface {v3}, Lcom/bumptech/glide/request/Request;->clear()V

    .line 79
    .end local v3    # "request":Lcom/bumptech/glide/request/Request;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .end local v0    # "arr$":[Lcom/bumptech/glide/request/Request;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method

.method public isPaused()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/bumptech/glide/manager/RequestTracker;->isPaused:Z

    return v0
.end method

.method public pauseRequests()V
    .locals 5

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/manager/RequestTracker;->isPaused:Z

    .line 56
    invoke-direct {p0}, Lcom/bumptech/glide/manager/RequestTracker;->getSnapshot()[Lcom/bumptech/glide/request/Request;

    move-result-object v0

    .local v0, "arr$":[Lcom/bumptech/glide/request/Request;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 57
    .local v3, "request":Lcom/bumptech/glide/request/Request;
    invoke-interface {v3}, Lcom/bumptech/glide/request/Request;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 58
    invoke-interface {v3}, Lcom/bumptech/glide/request/Request;->pause()V

    .line 56
    .end local v3    # "request":Lcom/bumptech/glide/request/Request;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    .end local v0    # "arr$":[Lcom/bumptech/glide/request/Request;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    return-void
.end method

.method public removeRequest(Lcom/bumptech/glide/request/Request;)V
    .locals 1
    .param p1, "request"    # Lcom/bumptech/glide/request/Request;

    .line 41
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestTracker;->requests:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method public restartRequests()V
    .locals 5

    .line 88
    invoke-direct {p0}, Lcom/bumptech/glide/manager/RequestTracker;->getSnapshot()[Lcom/bumptech/glide/request/Request;

    move-result-object v0

    .local v0, "arr$":[Lcom/bumptech/glide/request/Request;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 89
    .local v3, "request":Lcom/bumptech/glide/request/Request;
    invoke-interface {v3}, Lcom/bumptech/glide/request/Request;->isComplete()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v3}, Lcom/bumptech/glide/request/Request;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 91
    invoke-interface {v3}, Lcom/bumptech/glide/request/Request;->pause()V

    .line 92
    iget-boolean v4, p0, Lcom/bumptech/glide/manager/RequestTracker;->isPaused:Z

    if-nez v4, :cond_0

    .line 93
    invoke-interface {v3}, Lcom/bumptech/glide/request/Request;->begin()V

    .line 88
    .end local v3    # "request":Lcom/bumptech/glide/request/Request;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "arr$":[Lcom/bumptech/glide/request/Request;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    return-void
.end method

.method public resumeRequests()V
    .locals 5

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/manager/RequestTracker;->isPaused:Z

    .line 68
    invoke-direct {p0}, Lcom/bumptech/glide/manager/RequestTracker;->getSnapshot()[Lcom/bumptech/glide/request/Request;

    move-result-object v0

    .local v0, "arr$":[Lcom/bumptech/glide/request/Request;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 69
    .local v3, "request":Lcom/bumptech/glide/request/Request;
    invoke-interface {v3}, Lcom/bumptech/glide/request/Request;->isComplete()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v3}, Lcom/bumptech/glide/request/Request;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v3}, Lcom/bumptech/glide/request/Request;->isRunning()Z

    move-result v4

    if-nez v4, :cond_0

    .line 70
    invoke-interface {v3}, Lcom/bumptech/glide/request/Request;->begin()V

    .line 68
    .end local v3    # "request":Lcom/bumptech/glide/request/Request;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    .end local v0    # "arr$":[Lcom/bumptech/glide/request/Request;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    return-void
.end method

.method public runRequest(Lcom/bumptech/glide/request/Request;)V
    .locals 1
    .param p1, "request"    # Lcom/bumptech/glide/request/Request;

    .line 26
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestTracker;->requests:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 27
    iget-boolean v0, p0, Lcom/bumptech/glide/manager/RequestTracker;->isPaused:Z

    if-nez v0, :cond_0

    .line 28
    invoke-interface {p1}, Lcom/bumptech/glide/request/Request;->begin()V

    .line 30
    :cond_0
    return-void
.end method
