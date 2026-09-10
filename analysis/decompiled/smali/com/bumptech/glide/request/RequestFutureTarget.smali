.class public Lcom/bumptech/glide/request/RequestFutureTarget;
.super Ljava/lang/Object;
.source "RequestFutureTarget.java"

# interfaces
.implements Lcom/bumptech/glide/request/FutureTarget;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/FutureTarget",
        "<TR;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_WAITER:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;


# instance fields
.field private final assertBackgroundThread:Z

.field private exception:Ljava/lang/Exception;

.field private exceptionReceived:Z

.field private final height:I

.field private isCancelled:Z

.field private final mainHandler:Landroid/os/Handler;

.field private request:Lcom/bumptech/glide/request/Request;

.field private resource:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private resultReceived:Z

.field private final waiter:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;-><init>()V

    sput-object v0, Lcom/bumptech/glide/request/RequestFutureTarget;->DEFAULT_WAITER:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;II)V
    .locals 6
    .param p1, "mainHandler"    # Landroid/os/Handler;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 59
    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    const/4 v4, 0x1

    sget-object v5, Lcom/bumptech/glide/request/RequestFutureTarget;->DEFAULT_WAITER:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/request/RequestFutureTarget;-><init>(Landroid/os/Handler;IIZLcom/bumptech/glide/request/RequestFutureTarget$Waiter;)V

    .line 60
    return-void
.end method

.method constructor <init>(Landroid/os/Handler;IIZLcom/bumptech/glide/request/RequestFutureTarget$Waiter;)V
    .locals 0
    .param p1, "mainHandler"    # Landroid/os/Handler;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "assertBackgroundThread"    # Z
    .param p5, "waiter"    # Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    .prologue
    .line 62
    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->mainHandler:Landroid/os/Handler;

    .line 64
    iput p2, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->width:I

    .line 65
    iput p3, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->height:I

    .line 66
    iput-boolean p4, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->assertBackgroundThread:Z

    .line 67
    iput-object p5, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->waiter:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    .line 68
    return-void
.end method

.method private declared-synchronized doGet(Ljava/lang/Long;)Ljava/lang/Object;
    .locals 4
    .param p1, "timeoutMillis"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    const-wide/16 v2, 0x0

    .line 187
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->assertBackgroundThread:Z

    if-eqz v0, :cond_0

    .line 188
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertBackgroundThread()V

    .line 191
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->isCancelled:Z

    if-eqz v0, :cond_1

    .line 192
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 193
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->exceptionReceived:Z

    if-eqz v0, :cond_2

    .line 194
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->exception:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 195
    :cond_2
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->resultReceived:Z

    if-eqz v0, :cond_3

    .line 196
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->resource:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    :goto_0
    monitor-exit p0

    return-object v0

    .line 199
    :cond_3
    if-nez p1, :cond_5

    .line 200
    :try_start_2
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->waiter:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p0, v2, v3}, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;->waitForTimeout(Ljava/lang/Object;J)V

    .line 205
    :cond_4
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 206
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 201
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 202
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->waiter:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;->waitForTimeout(Ljava/lang/Object;J)V

    goto :goto_1

    .line 207
    :cond_6
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->exceptionReceived:Z

    if-eqz v0, :cond_7

    .line 208
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->exception:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 209
    :cond_7
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->isCancelled:Z

    if-eqz v0, :cond_8

    .line 210
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    .line 211
    :cond_8
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->resultReceived:Z

    if-nez v0, :cond_9

    .line 212
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0

    .line 215
    :cond_9
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->resource:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized cancel(Z)Z
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    const/4 v0, 0x1

    .line 75
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->isCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 85
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 79
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestFutureTarget;->isDone()Z

    move-result v1

    if-nez v1, :cond_2

    .line 80
    .local v0, "result":Z
    :goto_1
    if-eqz v0, :cond_0

    .line 81
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->isCancelled:Z

    .line 82
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestFutureTarget;->clear()V

    .line 83
    iget-object v1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->waiter:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    invoke-virtual {v1, p0}, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;->notifyAll(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 75
    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 79
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 232
    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 233
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/bumptech/glide/request/RequestFutureTarget;->doGet(Ljava/lang/Long;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 3
    .param p1, "time"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/RequestFutureTarget;->doGet(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRequest()Lcom/bumptech/glide/request/Request;
    .locals 1

    .prologue
    .line 145
    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->request:Lcom/bumptech/glide/request/Request;

    return-object v0
.end method

.method public getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .locals 2
    .param p1, "cb"    # Lcom/bumptech/glide/request/target/SizeReadyCallback;

    .prologue
    .line 129
    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    iget v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->width:I

    iget v1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->height:I

    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/request/target/SizeReadyCallback;->onSizeReady(II)V

    .line 130
    return-void
.end method

.method public declared-synchronized isCancelled()Z
    .locals 1

    .prologue
    .line 93
    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->isCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    .prologue
    .line 101
    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->isCancelled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->resultReceived:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 257
    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    return-void
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "placeholder"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 154
    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    return-void
.end method

.method public declared-synchronized onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "errorDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 170
    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->exceptionReceived:Z

    .line 171
    iput-object p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->exception:Ljava/lang/Exception;

    .line 172
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->waiter:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;->notifyAll(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    monitor-exit p0

    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "placeholder"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 162
    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    return-void
.end method

.method public declared-synchronized onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    .local p1, "resource":Ljava/lang/Object;, "TR;"
    .local p2, "glideAnimation":Lcom/bumptech/glide/request/animation/GlideAnimation;, "Lcom/bumptech/glide/request/animation/GlideAnimation<-TR;>;"
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->resultReceived:Z

    .line 182
    iput-object p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->resource:Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->waiter:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;->notifyAll(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 241
    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 249
    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 223
    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->request:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->clear()V

    .line 224
    return-void
.end method

.method public setRequest(Lcom/bumptech/glide/request/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/bumptech/glide/request/Request;

    .prologue
    .line 137
    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TT;TR;>;"
    iput-object p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->request:Lcom/bumptech/glide/request/Request;

    .line 138
    return-void
.end method
