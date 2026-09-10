.class public Lorg/apache/commons/lang3/concurrent/Memoizer;
.super Ljava/lang/Object;
.source "Memoizer.java"

# interfaces
.implements Lorg/apache/commons/lang3/concurrent/Computable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/lang3/concurrent/Computable",
        "<TI;TO;>;"
    }
.end annotation


# instance fields
.field private final cache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<TI;",
            "Ljava/util/concurrent/Future",
            "<TO;>;>;"
        }
    .end annotation
.end field

.field private final computable:Lorg/apache/commons/lang3/concurrent/Computable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/lang3/concurrent/Computable",
            "<TI;TO;>;"
        }
    .end annotation
.end field

.field private final recalculate:Z


# direct methods
.method public constructor <init>(Lorg/apache/commons/lang3/concurrent/Computable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/concurrent/Computable",
            "<TI;TO;>;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lorg/apache/commons/lang3/concurrent/Memoizer;, "Lorg/apache/commons/lang3/concurrent/Memoizer<TI;TO;>;"
    .local p1, "computable":Lorg/apache/commons/lang3/concurrent/Computable;, "Lorg/apache/commons/lang3/concurrent/Computable<TI;TO;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/lang3/concurrent/Memoizer;-><init>(Lorg/apache/commons/lang3/concurrent/Computable;Z)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/lang3/concurrent/Computable;Z)V
    .locals 1
    .param p2, "recalculate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/concurrent/Computable",
            "<TI;TO;>;Z)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lorg/apache/commons/lang3/concurrent/Memoizer;, "Lorg/apache/commons/lang3/concurrent/Memoizer<TI;TO;>;"
    .local p1, "computable":Lorg/apache/commons/lang3/concurrent/Computable;, "Lorg/apache/commons/lang3/concurrent/Computable<TI;TO;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/Memoizer;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 91
    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/Memoizer;->computable:Lorg/apache/commons/lang3/concurrent/Computable;

    .line 92
    iput-boolean p2, p0, Lorg/apache/commons/lang3/concurrent/Memoizer;->recalculate:Z

    .line 93
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/lang3/concurrent/Memoizer;)Lorg/apache/commons/lang3/concurrent/Computable;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/lang3/concurrent/Memoizer;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/Memoizer;->computable:Lorg/apache/commons/lang3/concurrent/Computable;

    return-object v0
.end method

.method private launderException(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 157
    .local p0, "this":Lorg/apache/commons/lang3/concurrent/Memoizer;, "Lorg/apache/commons/lang3/concurrent/Memoizer<TI;TO;>;"
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    .line 158
    check-cast p1, Ljava/lang/RuntimeException;

    .end local p1    # "throwable":Ljava/lang/Throwable;
    return-object p1

    .line 159
    .restart local p1    # "throwable":Ljava/lang/Throwable;
    :cond_0
    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_1

    .line 160
    check-cast p1, Ljava/lang/Error;

    .end local p1    # "throwable":Ljava/lang/Throwable;
    throw p1

    .line 162
    .restart local p1    # "throwable":Ljava/lang/Throwable;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unchecked exception"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public compute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)TO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lorg/apache/commons/lang3/concurrent/Memoizer;, "Lorg/apache/commons/lang3/concurrent/Memoizer<TI;TO;>;"
    .local p1, "arg":Ljava/lang/Object;, "TI;"
    :goto_0
    iget-object v4, p0, Lorg/apache/commons/lang3/concurrent/Memoizer;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 117
    .local v2, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TO;>;"
    if-nez v2, :cond_0

    .line 118
    new-instance v1, Lorg/apache/commons/lang3/concurrent/Memoizer$1;

    invoke-direct {v1, p0, p1}, Lorg/apache/commons/lang3/concurrent/Memoizer$1;-><init>(Lorg/apache/commons/lang3/concurrent/Memoizer;Ljava/lang/Object;)V

    .line 125
    .local v1, "eval":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TO;>;"
    new-instance v3, Ljava/util/concurrent/FutureTask;

    invoke-direct {v3, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 126
    .local v3, "futureTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TO;>;"
    iget-object v4, p0, Lorg/apache/commons/lang3/concurrent/Memoizer;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TO;>;"
    check-cast v2, Ljava/util/concurrent/Future;

    .line 127
    .restart local v2    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TO;>;"
    if-nez v2, :cond_0

    .line 128
    move-object v2, v3

    .line 129
    invoke-virtual {v3}, Ljava/util/concurrent/FutureTask;->run()V

    .line 133
    .end local v1    # "eval":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TO;>;"
    .end local v3    # "futureTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TO;>;"
    :cond_0
    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    return-object v4

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    iget-object v4, p0, Lorg/apache/commons/lang3/concurrent/Memoizer;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    :catch_1
    move-exception v0

    .line 137
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    iget-boolean v4, p0, Lorg/apache/commons/lang3/concurrent/Memoizer;->recalculate:Z

    if-eqz v4, :cond_1

    .line 138
    iget-object v4, p0, Lorg/apache/commons/lang3/concurrent/Memoizer;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 141
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/commons/lang3/concurrent/Memoizer;->launderException(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method
