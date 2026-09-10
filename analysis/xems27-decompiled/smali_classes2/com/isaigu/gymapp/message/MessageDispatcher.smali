.class public Lcom/isaigu/gymapp/message/MessageDispatcher;
.super Ljava/lang/Object;
.source "MessageDispatcher.java"


# static fields
.field private static actionMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Short;",
            "Ljava/util/ArrayList<",
            "Lcom/isaigu/gymapp/message/ActionCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private static eventMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Short;",
            "Ljava/util/ArrayList<",
            "Lcom/isaigu/gymapp/message/EventCallback;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

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

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static attachActionListener(SLcom/isaigu/gymapp/message/ActionListener;)V
    .locals 4
    .param p0, "action"    # S
    .param p1, "listener"    # Lcom/isaigu/gymapp/message/ActionListener;

    .line 85
    sget-object v0, Lcom/isaigu/gymapp/message/MessageDispatcher;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 86
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/isaigu/gymapp/message/ActionCallback;>;"
    if-nez v0, :cond_0

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 88
    sget-object v1, Lcom/isaigu/gymapp/message/MessageDispatcher;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 91
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/message/ActionCallback;

    .line 92
    .local v2, "callback":Lcom/isaigu/gymapp/message/ActionCallback;
    iget-object v3, v2, Lcom/isaigu/gymapp/message/ActionCallback;->listener:Lcom/isaigu/gymapp/message/ActionListener;

    if-ne v3, p1, :cond_1

    iget-short v3, v2, Lcom/isaigu/gymapp/message/ActionCallback;->action:S

    if-ne v3, p0, :cond_1

    .line 93
    return-void

    .line 90
    .end local v2    # "callback":Lcom/isaigu/gymapp/message/ActionCallback;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Lcom/isaigu/gymapp/message/ActionCallback;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/message/ActionCallback;-><init>(SLcom/isaigu/gymapp/message/ActionListener;)V

    .line 97
    .local v1, "functionCallback":Lcom/isaigu/gymapp/message/ActionCallback;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method public static attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V
    .locals 4
    .param p0, "event"    # S
    .param p1, "listener"    # Lcom/isaigu/gymapp/message/EventListener;

    .line 20
    sget-object v0, Lcom/isaigu/gymapp/message/MessageDispatcher;->eventMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 21
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/isaigu/gymapp/message/EventCallback;>;"
    if-nez v0, :cond_0

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 23
    sget-object v1, Lcom/isaigu/gymapp/message/MessageDispatcher;->eventMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/message/EventCallback;

    .line 27
    .local v2, "callback":Lcom/isaigu/gymapp/message/EventCallback;
    iget-short v3, v2, Lcom/isaigu/gymapp/message/EventCallback;->event:S

    if-ne v3, p0, :cond_1

    iget-object v3, v2, Lcom/isaigu/gymapp/message/EventCallback;->listener:Lcom/isaigu/gymapp/message/EventListener;

    if-ne v3, p1, :cond_1

    .line 28
    return-void

    .line 25
    .end local v2    # "callback":Lcom/isaigu/gymapp/message/EventCallback;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Lcom/isaigu/gymapp/message/EventCallback;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/message/EventCallback;-><init>(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 32
    .local v1, "runnable":Lcom/isaigu/gymapp/message/EventCallback;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method

.method public static detachActionListener(Lcom/isaigu/gymapp/message/ActionListener;)V
    .locals 6
    .param p0, "listener"    # Lcom/isaigu/gymapp/message/ActionListener;

    .line 102
    sget-object v0, Lcom/isaigu/gymapp/message/MessageDispatcher;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 103
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Short;Ljava/util/ArrayList<Lcom/isaigu/gymapp/message/ActionCallback;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 104
    .local v2, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/isaigu/gymapp/message/ActionCallback;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_1

    .line 105
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/message/ActionCallback;

    .line 106
    .local v4, "functionCallback":Lcom/isaigu/gymapp/message/ActionCallback;
    iget-object v5, v4, Lcom/isaigu/gymapp/message/ActionCallback;->listener:Lcom/isaigu/gymapp/message/ActionListener;

    if-ne v5, p0, :cond_0

    .line 107
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 104
    .end local v4    # "functionCallback":Lcom/isaigu/gymapp/message/ActionCallback;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 110
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Short;Ljava/util/ArrayList<Lcom/isaigu/gymapp/message/ActionCallback;>;>;"
    .end local v2    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/isaigu/gymapp/message/ActionCallback;>;"
    .end local v3    # "i":I
    :cond_1
    goto :goto_0

    .line 111
    :cond_2
    return-void
.end method

.method public static detachAll()V
    .locals 1

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

    .line 131
    sget-object v0, Lcom/isaigu/gymapp/message/MessageDispatcher;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 132
    return-void
.end method

.method public static detachAllEvent()V
    .locals 1

    .line 126
    sget-object v0, Lcom/isaigu/gymapp/message/MessageDispatcher;->eventMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 127
    return-void
.end method

.method public static detachEventListener(Lcom/isaigu/gymapp/message/EventListener;)V
    .locals 6
    .param p0, "listener"    # Lcom/isaigu/gymapp/message/EventListener;

    .line 37
    sget-object v0, Lcom/isaigu/gymapp/message/MessageDispatcher;->eventMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 38
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Short;Ljava/util/ArrayList<Lcom/isaigu/gymapp/message/EventCallback;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 39
    .local v2, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/isaigu/gymapp/message/EventCallback;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_1

    .line 40
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/message/EventCallback;

    .line 41
    .local v4, "functionCallback":Lcom/isaigu/gymapp/message/EventCallback;
    iget-object v5, v4, Lcom/isaigu/gymapp/message/EventCallback;->listener:Lcom/isaigu/gymapp/message/EventListener;

    if-ne v5, p0, :cond_0

    .line 42
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 39
    .end local v4    # "functionCallback":Lcom/isaigu/gymapp/message/EventCallback;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 45
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Short;Ljava/util/ArrayList<Lcom/isaigu/gymapp/message/EventCallback;>;>;"
    .end local v2    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/isaigu/gymapp/message/EventCallback;>;"
    .end local v3    # "i":I
    :cond_1
    goto :goto_0

    .line 46
    :cond_2
    return-void
.end method

.method public static detachEventListener(Lcom/isaigu/gymapp/message/EventListener;S)V
    .locals 6
    .param p0, "listener"    # Lcom/isaigu/gymapp/message/EventListener;
    .param p1, "event"    # S

    .line 50
    sget-object v0, Lcom/isaigu/gymapp/message/MessageDispatcher;->eventMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 51
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Short;Ljava/util/ArrayList<Lcom/isaigu/gymapp/message/EventCallback;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    if-ne p1, v2, :cond_1

    .line 52
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 53
    .local v2, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/isaigu/gymapp/message/EventCallback;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_1

    .line 54
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/message/EventCallback;

    .line 55
    .local v4, "functionCallback":Lcom/isaigu/gymapp/message/EventCallback;
    iget-object v5, v4, Lcom/isaigu/gymapp/message/EventCallback;->listener:Lcom/isaigu/gymapp/message/EventListener;

    if-ne v5, p0, :cond_0

    iget-short v5, v4, Lcom/isaigu/gymapp/message/EventCallback;->event:S

    if-ne v5, p1, :cond_0

    .line 56
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 53
    .end local v4    # "functionCallback":Lcom/isaigu/gymapp/message/EventCallback;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 60
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Short;Ljava/util/ArrayList<Lcom/isaigu/gymapp/message/EventCallback;>;>;"
    .end local v2    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/isaigu/gymapp/message/EventCallback;>;"
    .end local v3    # "i":I
    :cond_1
    goto :goto_0

    .line 61
    :cond_2
    return-void
.end method

.method public static dispatchActionMessage(Lcom/isaigu/gymapp/message/DataDecoder;)V
    .locals 4
    .param p0, "decoder"    # Lcom/isaigu/gymapp/message/DataDecoder;

    .line 115
    invoke-virtual {p0}, Lcom/isaigu/gymapp/message/DataDecoder;->getShort()S

    move-result v0

    .line 117
    .local v0, "action":S
    sget-object v1, Lcom/isaigu/gymapp/message/MessageDispatcher;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 3
    .param p0, "dataBundle"    # Lcom/isaigu/gymapp/message/DataBundle;

    .line 71
    sget-object v0, Lcom/isaigu/gymapp/message/MessageDispatcher;->eventMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/message/DataBundle;->getEvent()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 81
    :cond_1
    :goto_1
    return-void
.end method

.method public static dispatchEventMessage(S)V
    .locals 2
    .param p0, "event"    # S

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
