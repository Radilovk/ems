.class Lcom/sun/mail/util/TimeoutOutputStream;
.super Ljava/io/OutputStream;
.source "WriteTimeoutSocket.java"


# instance fields
.field private b1:[B

.field private final os:Ljava/io/OutputStream;

.field private final ses:Ljava/util/concurrent/ScheduledExecutorService;

.field private final timeout:I

.field private final timeoutTask:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/concurrent/ScheduledExecutorService;I)V
    .locals 1
    .param p1, "os0"    # Ljava/io/OutputStream;
    .param p2, "ses"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 316
    iput-object p1, p0, Lcom/sun/mail/util/TimeoutOutputStream;->os:Ljava/io/OutputStream;

    .line 317
    iput-object p2, p0, Lcom/sun/mail/util/TimeoutOutputStream;->ses:Ljava/util/concurrent/ScheduledExecutorService;

    .line 318
    iput p3, p0, Lcom/sun/mail/util/TimeoutOutputStream;->timeout:I

    .line 319
    new-instance v0, Lcom/sun/mail/util/TimeoutOutputStream$1;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/TimeoutOutputStream$1;-><init>(Lcom/sun/mail/util/TimeoutOutputStream;)V

    iput-object v0, p0, Lcom/sun/mail/util/TimeoutOutputStream;->timeoutTask:Ljava/util/concurrent/Callable;

    .line 325
    return-void
.end method

.method static synthetic access$0(Lcom/sun/mail/util/TimeoutOutputStream;)Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/sun/mail/util/TimeoutOutputStream;->os:Ljava/io/OutputStream;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    iget-object v0, p0, Lcom/sun/mail/util/TimeoutOutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 366
    return-void
.end method

.method public declared-synchronized write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/TimeoutOutputStream;->b1:[B

    if-nez v0, :cond_0

    .line 330
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/util/TimeoutOutputStream;->b1:[B

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/util/TimeoutOutputStream;->b1:[B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 332
    iget-object v0, p0, Lcom/sun/mail/util/TimeoutOutputStream;->b1:[B

    invoke-virtual {p0, v0}, Lcom/sun/mail/util/TimeoutOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    monitor-exit p0

    return-void

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .locals 6
    .param p1, "bs"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    monitor-enter p0

    if-ltz p2, :cond_0

    :try_start_0
    array-length v1, p1

    if-gt p2, v1, :cond_0

    if-ltz p3, :cond_0

    .line 339
    add-int v1, p2, p3

    array-length v2, p1

    if-gt v1, v2, :cond_0

    add-int v1, p2, p3

    if-gez v1, :cond_1

    .line 340
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 341
    :cond_1
    if-nez p3, :cond_3

    .line 361
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 346
    :cond_3
    const/4 v0, 0x0

    .line 349
    .local v0, "sf":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<Ljava/lang/Object;>;"
    :try_start_1
    iget v1, p0, Lcom/sun/mail/util/TimeoutOutputStream;->timeout:I

    if-lez v1, :cond_4

    .line 350
    iget-object v1, p0, Lcom/sun/mail/util/TimeoutOutputStream;->ses:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lcom/sun/mail/util/TimeoutOutputStream;->timeoutTask:Ljava/util/concurrent/Callable;

    .line 351
    iget v3, p0, Lcom/sun/mail/util/TimeoutOutputStream;->timeout:I

    int-to-long v4, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 350
    invoke-interface {v1, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 356
    :cond_4
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/sun/mail/util/TimeoutOutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 358
    if-eqz v0, :cond_2

    .line 359
    const/4 v1, 0x1

    :try_start_3
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    goto :goto_0

    .line 357
    :catchall_1
    move-exception v1

    .line 358
    if-eqz v0, :cond_5

    .line 359
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 360
    :cond_5
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 352
    :catch_0
    move-exception v1

    goto :goto_1
.end method
