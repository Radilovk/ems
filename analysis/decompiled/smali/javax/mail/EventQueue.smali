.class Ljavax/mail/EventQueue;
.super Ljava/lang/Object;
.source "EventQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/EventQueue$QueueElement;,
        Ljavax/mail/EventQueue$TerminatorEvent;
    }
.end annotation


# static fields
.field private static appq:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/ClassLoader;",
            "Ljavax/mail/EventQueue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private executor:Ljava/util/concurrent/Executor;

.field private volatile q:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljavax/mail/EventQueue$QueueElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "ex"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Ljavax/mail/EventQueue;->executor:Ljava/util/concurrent/Executor;

    .line 100
    return-void
.end method

.method static declared-synchronized getApplicationEventQueue(Ljava/util/concurrent/Executor;)Ljavax/mail/EventQueue;
    .locals 4
    .param p0, "ex"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 137
    const-class v3, Ljavax/mail/EventQueue;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Ljavax/mail/Session;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 138
    .local v0, "cl":Ljava/lang/ClassLoader;
    sget-object v2, Ljavax/mail/EventQueue;->appq:Ljava/util/WeakHashMap;

    if-nez v2, :cond_0

    .line 139
    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v2, Ljavax/mail/EventQueue;->appq:Ljava/util/WeakHashMap;

    .line 140
    :cond_0
    sget-object v2, Ljavax/mail/EventQueue;->appq:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/EventQueue;

    .line 141
    .local v1, "q":Ljavax/mail/EventQueue;
    if-nez v1, :cond_1

    .line 142
    new-instance v1, Ljavax/mail/EventQueue;

    .end local v1    # "q":Ljavax/mail/EventQueue;
    invoke-direct {v1, p0}, Ljavax/mail/EventQueue;-><init>(Ljava/util/concurrent/Executor;)V

    .line 143
    .restart local v1    # "q":Ljavax/mail/EventQueue;
    sget-object v2, Ljavax/mail/EventQueue;->appq:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :cond_1
    monitor-exit v3

    return-object v1

    .line 137
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v1    # "q":Ljavax/mail/EventQueue;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method declared-synchronized enqueue(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V
    .locals 3
    .param p1, "event"    # Ljavax/mail/event/MailEvent;
    .param p2, "vector"    # Ljava/util/Vector;

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ljavax/mail/EventQueue;->q:Ljava/util/concurrent/BlockingQueue;

    if-nez v1, :cond_0

    .line 108
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v1, p0, Ljavax/mail/EventQueue;->q:Ljava/util/concurrent/BlockingQueue;

    .line 109
    iget-object v1, p0, Ljavax/mail/EventQueue;->executor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_1

    .line 110
    iget-object v1, p0, Ljavax/mail/EventQueue;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 117
    :cond_0
    :goto_0
    iget-object v1, p0, Ljavax/mail/EventQueue;->q:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Ljavax/mail/EventQueue$QueueElement;

    invoke-direct {v2, p1, p2}, Ljavax/mail/EventQueue$QueueElement;-><init>(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    .line 112
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "JavaMail-EventQueue"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 113
    .local v0, "qThread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 114
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 107
    .end local v0    # "qThread":Ljava/lang/Thread;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public run()V
    .locals 7

    .prologue
    .line 153
    iget-object v0, p0, Ljavax/mail/EventQueue;->q:Ljava/util/concurrent/BlockingQueue;

    .line 154
    .local v0, "bq":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljavax/mail/EventQueue$QueueElement;>;"
    if-nez v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 160
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/mail/EventQueue$QueueElement;

    .line 161
    .local v3, "qe":Ljavax/mail/EventQueue$QueueElement;
    iget-object v1, v3, Ljavax/mail/EventQueue$QueueElement;->event:Ljavax/mail/event/MailEvent;

    .line 162
    .local v1, "e":Ljavax/mail/event/MailEvent;
    iget-object v5, v3, Ljavax/mail/EventQueue$QueueElement;->vector:Ljava/util/Vector;

    .line 164
    .local v5, "v":Ljava/util/Vector;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {v5}, Ljava/util/Vector;->size()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    if-lt v2, v6, :cond_1

    .line 173
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 158
    goto :goto_1

    .line 166
    :cond_1
    :try_start_1
    invoke-virtual {v5, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljavax/mail/event/MailEvent;->dispatch(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 164
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 167
    :catch_0
    move-exception v4

    .line 168
    .local v4, "t":Ljava/lang/Throwable;
    :try_start_2
    instance-of v6, v4, Ljava/lang/InterruptedException;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v6, :cond_2

    goto :goto_0

    .line 175
    .end local v1    # "e":Ljavax/mail/event/MailEvent;
    .end local v2    # "i":I
    .end local v3    # "qe":Ljavax/mail/EventQueue$QueueElement;
    .end local v4    # "t":Ljava/lang/Throwable;
    .end local v5    # "v":Ljava/util/Vector;
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method declared-synchronized terminateQueue()V
    .locals 4

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ljavax/mail/EventQueue;->q:Ljava/util/concurrent/BlockingQueue;

    if-eqz v1, :cond_0

    .line 125
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 126
    .local v0, "dummyListeners":Ljava/util/Vector;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 127
    iget-object v1, p0, Ljavax/mail/EventQueue;->q:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Ljavax/mail/EventQueue$QueueElement;

    new-instance v3, Ljavax/mail/EventQueue$TerminatorEvent;

    invoke-direct {v3}, Ljavax/mail/EventQueue$TerminatorEvent;-><init>()V

    invoke-direct {v2, v3, v0}, Ljavax/mail/EventQueue$QueueElement;-><init>(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 128
    const/4 v1, 0x0

    iput-object v1, p0, Ljavax/mail/EventQueue;->q:Ljava/util/concurrent/BlockingQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    .end local v0    # "dummyListeners":Ljava/util/Vector;
    :cond_0
    monitor-exit p0

    return-void

    .line 124
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
