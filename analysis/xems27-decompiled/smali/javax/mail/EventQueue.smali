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
            "Ljava/util/WeakHashMap<",
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
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljavax/mail/EventQueue$QueueElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "ex"    # Ljava/util/concurrent/Executor;

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

    const-class v0, Ljavax/mail/EventQueue;

    monitor-enter v0

    .line 137
    :try_start_0
    invoke-static {}, Ljavax/mail/Session;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 138
    .local v1, "cl":Ljava/lang/ClassLoader;
    sget-object v2, Ljavax/mail/EventQueue;->appq:Ljava/util/WeakHashMap;

    if-nez v2, :cond_0

    .line 139
    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v2, Ljavax/mail/EventQueue;->appq:Ljava/util/WeakHashMap;

    .line 140
    :cond_0
    sget-object v2, Ljavax/mail/EventQueue;->appq:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/mail/EventQueue;

    .line 141
    .local v2, "q":Ljavax/mail/EventQueue;
    if-nez v2, :cond_1

    .line 142
    new-instance v3, Ljavax/mail/EventQueue;

    invoke-direct {v3, p0}, Ljavax/mail/EventQueue;-><init>(Ljava/util/concurrent/Executor;)V

    move-object v2, v3

    .line 143
    sget-object v3, Ljavax/mail/EventQueue;->appq:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :cond_1
    monitor-exit v0

    return-object v2

    .line 136
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .end local v2    # "q":Ljavax/mail/EventQueue;
    .end local p0    # "ex":Ljava/util/concurrent/Executor;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method declared-synchronized enqueue(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V
    .locals 2
    .param p1, "event"    # Ljavax/mail/event/MailEvent;
    .param p2, "vector"    # Ljava/util/Vector;

    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Ljavax/mail/EventQueue;->q:Ljava/util/concurrent/BlockingQueue;

    if-nez v0, :cond_1

    .line 108
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Ljavax/mail/EventQueue;->q:Ljava/util/concurrent/BlockingQueue;

    .line 109
    iget-object v0, p0, Ljavax/mail/EventQueue;->executor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Ljavax/mail/EventQueue;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 111
    goto :goto_0

    .line 112
    .end local p0    # "this":Ljavax/mail/EventQueue;
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "JavaMail-EventQueue"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 113
    .local v0, "qThread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 114
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 117
    .end local v0    # "qThread":Ljava/lang/Thread;
    :cond_1
    :goto_0
    iget-object v0, p0, Ljavax/mail/EventQueue;->q:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Ljavax/mail/EventQueue$QueueElement;

    invoke-direct {v1, p1, p2}, Ljavax/mail/EventQueue$QueueElement;-><init>(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    .line 106
    .end local p1    # "event":Ljavax/mail/event/MailEvent;
    .end local p2    # "vector":Ljava/util/Vector;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public run()V
    .locals 7

    .line 153
    iget-object v0, p0, Ljavax/mail/EventQueue;->q:Ljava/util/concurrent/BlockingQueue;

    .line 154
    .local v0, "bq":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljavax/mail/EventQueue$QueueElement;>;"
    if-nez v0, :cond_0

    .line 155
    return-void

    .line 160
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/EventQueue$QueueElement;

    .line 161
    .local v1, "qe":Ljavax/mail/EventQueue$QueueElement;
    iget-object v2, v1, Ljavax/mail/EventQueue$QueueElement;->event:Ljavax/mail/event/MailEvent;

    .line 162
    .local v2, "e":Ljavax/mail/event/MailEvent;
    iget-object v3, v1, Ljavax/mail/EventQueue$QueueElement;->vector:Ljava/util/Vector;

    .line 164
    .local v3, "v":Ljava/util/Vector;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v4, v5, :cond_1

    .line 173
    .end local v4    # "i":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 158
    .end local v1    # "qe":Ljavax/mail/EventQueue$QueueElement;
    .end local v2    # "e":Ljavax/mail/event/MailEvent;
    .end local v3    # "v":Ljava/util/Vector;
    goto :goto_0

    .line 166
    .restart local v1    # "qe":Ljavax/mail/EventQueue$QueueElement;
    .restart local v2    # "e":Ljavax/mail/event/MailEvent;
    .restart local v3    # "v":Ljava/util/Vector;
    .restart local v4    # "i":I
    :cond_1
    :try_start_1
    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljavax/mail/event/MailEvent;->dispatch(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    goto :goto_2

    :catchall_0
    move-exception v5

    .line 168
    .local v5, "t":Ljava/lang/Throwable;
    :try_start_2
    instance-of v6, v5, Ljava/lang/InterruptedException;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v6, :cond_2

    .line 169
    goto :goto_3

    .line 164
    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 175
    .end local v1    # "qe":Ljavax/mail/EventQueue$QueueElement;
    .end local v2    # "e":Ljavax/mail/event/MailEvent;
    .end local v3    # "v":Ljava/util/Vector;
    .end local v4    # "i":I
    :catch_0
    move-exception v1

    .line 178
    :goto_3
    return-void
.end method

.method declared-synchronized terminateQueue()V
    .locals 4

    monitor-enter p0

    .line 124
    :try_start_0
    iget-object v0, p0, Ljavax/mail/EventQueue;->q:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

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
    .end local p0    # "this":Ljavax/mail/EventQueue;
    :cond_0
    monitor-exit p0

    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
