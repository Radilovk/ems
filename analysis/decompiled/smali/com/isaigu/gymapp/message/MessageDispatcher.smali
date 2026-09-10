.class public Lcom/isaigu/gymapp/message/MessageDispatcher;
.super Ljava/lang/Object;
.source "MessageDispatcher.java"


# static fields
.field private static actionMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Short;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/isaigu/gymapp/message/ActionCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private static eventMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Short;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/isaigu/gymapp/message/EventCallback;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/message/MessageDispatcher;->eventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/message/MessageDispatcher;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static attachActionListener(SLcom/isaigu/gymapp/message/ActionListener;)V
    .locals 6
    .param p0, "action"    # S
    .param p1, "listener"    # Lcom/isaigu/gymapp/message/ActionListener;

    .prologue
    .line 85
    sget-object v4, Lcom/isaigu/gymapp/message/MessageDispatcher;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 86
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/isaigu/gymapp/message/ActionCallback;>;"
    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/isaigu/gymapp/message/ActionCallback;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .restart local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/isaigu/gymapp/message/ActionCallback;>;"
    sget-object v4, Lcom/isaigu/gymapp/message/MessageDispatcher;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 91
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/message/ActionCallback;

    .line 92
    .local v1, "callback":Lcom/isaigu/gymapp/message/ActionCallback;
    iget-object v4, v1, Lcom/isaigu/gymapp/message/ActionCallback;->listener:Lcom/isaigu/gymapp/message/ActionListener;

    if-ne v4, p1, :cond_1

    iget-short v4, v1, Lcom/isaigu/gymapp/message/ActionCallback;->action:S

    if-ne v4, p0, :cond_1

    .line 98
    .end local v1    # "callback":Lcom/isaigu/gymapp/message/ActionCallback;
    :goto_1
    return-void

    .line 90
    .restart local v1    # "callback":Lcom/isaigu/gymapp/message/ActionCallback;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 96
    .end local v1    # "callback":Lcom/isaigu/gymapp/message/ActionCallback;
    :cond_2
    new-instance v2, Lcom/isaigu/gymapp/message/ActionCallback;

    invoke-direct {v2, p0, p1}, Lcom/isaigu/gymapp/message/ActionCallback;-><init>(SLcom/isaigu/gymapp/message/ActionListener;)V

    .line 97
    .local v2, "functionCallback":Lcom/isaigu/gymapp/message/ActionCallback;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V
    .locals 6
    .param p0, "event"    # S
    .param p1, "listener"    # Lcom/isaigu/gymapp/message/EventListener;

    .prologue
    .line 20
    sget-object v4, Lcom/isaigu/gymapp/message/MessageDispatcher;->eventMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 21
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/isaigu/gymapp/message/EventCallback;>;"
    if-nez v0, :cond_0

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/isaigu/gymapp/message/EventCallback;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .restart local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/isaigu/gymapp/message/EventCallback;>;"
    sget-object v4, Lcom/isaigu/gymapp/message/MessageDispatcher;->eventMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 26
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/message/EventCallback;

    .line 27
    .local v1, "callback":Lcom/isaigu/gymapp/message/EventCallback;
    iget-short v4, v1, Lcom/isaigu/gymapp/message/EventCallback;->event:S

    if-ne v4, p0, :cond_1

    iget-object v4, v1, Lcom/isaigu/gymapp/message/EventCallback;->listener:Lcom/isaigu/gymapp/message/EventListener;

    if-ne v4, p1, :cond_1

    .line 33
    .end local v1    # "callback":Lcom/isaigu/gymapp/message/EventCallback;
    :goto_1
    return-void

    .line 25
    .restart local v1    # "callback":Lcom/isaigu/gymapp/message/EventCallback;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 31
    .end local v1    # "callback":Lcom/isaigu/gymapp/message/EventCallback;
    :cond_2
    new-instance v3, Lcom/isaigu/gymapp/message/EventCallback;

    invoke-direct {v3, p0, p1}, Lcom/isaigu/gymapp/message/EventCallback;-><init>(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 32
    .local v3, "runnable":Lcom/isaigu/gymapp/message/EventCallback;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static detachActionListener(Lcom/isaigu/gymapp/message/ActionListener;)V
    .locals 6
    .param p0, "listener"    # Lcom/isaigu/gymapp/message/ActionListener;

    .prologue
    .line 102
    sget-object v4, Lcom/isaigu/gymapp/message/MessageDispatcher;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 103
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Short;Ljava/util/ArrayList<Lcom/isaigu/gymapp/message/ActionCallback;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 104
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/isaigu/gymapp/message/ActionCallback;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 105
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/message/ActionCallback;

    .line 106
    .local v2, "functionCallback":Lcom/isaigu/gymapp/message/ActionCallback;
    iget-object v5, v2, Lcom/isaigu/gymapp/message/ActionCallback;->listener:Lcom/isaigu/gymapp/message/ActionListener;

    if-ne v5, p0, :cond_1

    .line 107
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 104
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 111
    .end local v0    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/isaigu/gymapp/message/ActionCallback;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Short;Ljava/util/ArrayList<Lcom/isaigu/gymapp/message/ActionCallback;>;>;"
    .end local v2    # "functionCallback":Lcom/isaigu/gymapp/message/ActionCallback;
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method public static detachAll()V
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/isaigu/gymapp/message/MessageDispatcher;->eventMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 137
    sget-object v0, Lcom/isaigu/gymapp/message/MessageDispatcher;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 138
    return-void
.end method

.method public static detachAllAction()V
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/isaigu/gymapp/message/MessageDispatcher;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 132
    return-void
.end method

.method public static detachAllEvent()V
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/isaigu/gymapp/message/MessageDispatcher;->eventMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 127
    return-void
.end method

.method public static detachEventListener(Lcom/isaigu/gymapp/message/EventListener;)V
    .locals 6
    .param p0, "listener"    # Lcom/isaigu/gymapp/message/EventListener;

    .prologue
    .line 37
    sget-object v4, Lcom/isaigu/gymapp/message/MessageDispatcher;->eventMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 38
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Short;Ljava/util/ArrayList<Lcom/isaigu/gymapp/message/EventCallback;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 39
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/isaigu/gymapp/message/EventCallback;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 40
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/message/EventCallback;

    .line 41
    .local v2, "functionCallback":Lcom/isaigu/gymapp/message/EventCallback;
    iget-object v5, v2, Lcom/isaigu/gymapp/message/EventCallback;->listener:Lcom/isaigu/gymapp/message/EventListener;

    if-ne v5, p0, :cond_1

    .line 42
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 39
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 46
    .end local v0    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/isaigu/gymapp/message/EventCallback;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Short;Ljava/util/ArrayList<Lcom/isaigu/gymapp/message/EventCallback;>;>;"
    .end local v2    # "functionCallback":Lcom/isaigu/gymapp/message/EventCallback;
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method public static detachEventListener(Lcom/isaigu/gymapp/message/EventListener;S)V
    .locals 6
    .param p0, "listener"    # Lcom/isaigu/gymapp/message/EventListener;
    .param p1, "event"    # S

    .prologue
    .line 50
    sget-object v4, Lcom/isaigu/gymapp/message/MessageDispatcher;->eventMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 51
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Short;Ljava/util/ArrayList<Lcom/isaigu/gymapp/message/EventCallback;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Short;

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    if-ne p1, v4, :cond_0

    .line 52
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 53
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/isaigu/gymapp/message/EventCallback;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 54
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/message/EventCallback;

    .line 55
    .local v2, "functionCallback":Lcom/isaigu/gymapp/message/EventCallback;
    iget-object v4, v2, Lcom/isaigu/gymapp/message/EventCallback;->listener:Lcom/isaigu/gymapp/message/EventListener;

    if-ne v4, p0, :cond_1

    iget-short v4, v2, Lcom/isaigu/gymapp/message/EventCallback;->event:S

    if-ne v4, p1, :cond_1

    .line 56
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 53
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 61
    .end local v0    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/isaigu/gymapp/message/EventCallback;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Short;Ljava/util/ArrayList<Lcom/isaigu/gymapp/message/EventCallback;>;>;"
    .end local v2    # "functionCallback":Lcom/isaigu/gymapp/message/EventCallback;
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method public static dispatchActionMessage(Lcom/isaigu/gymapp/message/DataDecoder;)V
    .locals 5
    .param p0, "decoder"    # Lcom/isaigu/gymapp/message/DataDecoder;

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/isaigu/gymapp/message/DataDecoder;->getShort()S

    move-result v0

    .line 117
    .local v0, "action":S
    sget-object v3, Lcom/isaigu/gymapp/message/MessageDispatcher;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 118
    .local v1, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/isaigu/gymapp/message/ActionCallback;>;"
    if-eqz v1, :cond_0

    .line 119
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 120
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/message/ActionCallback;

    invoke-virtual {v3, p0}, Lcom/isaigu/gymapp/message/ActionCallback;->handleActionMessage(Lcom/isaigu/gymapp/message/DataDecoder;)V

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public static dispatchEventMessage(Lcom/isaigu/gymapp/message/DataBundle;)V
    .locals 4
    .param p0, "dataBundle"    # Lcom/isaigu/gymapp/message/DataBundle;

    .prologue
    .line 71
    sget-object v2, Lcom/isaigu/gymapp/message/MessageDispatcher;->eventMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/message/DataBundle;->getEvent()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 72
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/isaigu/gymapp/message/EventCallback;>;"
    if-eqz v0, :cond_1

    .line 73
    monitor-enter v0

    .line 74
    if-eqz v0, :cond_0

    .line 75
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 76
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/message/EventCallback;

    invoke-virtual {v2, p0}, Lcom/isaigu/gymapp/message/EventCallback;->handleEventMessage(Lcom/isaigu/gymapp/message/DataBundle;)V

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v1    # "i":I
    :cond_0
    monitor-exit v0

    .line 81
    :cond_1
    return-void

    .line 79
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static dispatchEventMessage(S)V
    .locals 2
    .param p0, "event"    # S

    .prologue
    .line 65
    new-instance v0, Lcom/isaigu/gymapp/message/DataBundle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/isaigu/gymapp/message/DataBundle;-><init>(SLjava/lang/String;)V

    .line 66
    .local v0, "bundle":Lcom/isaigu/gymapp/message/DataBundle;
    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(Lcom/isaigu/gymapp/message/DataBundle;)V

    .line 67
    return-void
.end method
