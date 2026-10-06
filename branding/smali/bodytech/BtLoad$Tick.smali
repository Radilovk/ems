.class final Lcom/isaigu/gymapp/bodytech/BtLoad$Tick;
.super Ljava/lang/Object;
.source "BtLoad.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/BtLoad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Tick"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    .line 127
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 128
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 129
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 130
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 131
    const-class v5, Lcom/isaigu/gymapp/bodytech/BtLoad;

    monitor-enter v5

    .line 132
    const/4 v0, 0x0

    :try_start_17
    # setter for: Lcom/isaigu/gymapp/bodytech/BtLoad;->ticking:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtLoad;->access$002(Z)Z

    .line 133
    # getter for: Lcom/isaigu/gymapp/bodytech/BtLoad;->WAITING:Ljava/util/WeakHashMap;
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtLoad;->access$100()Ljava/util/WeakHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_26
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 134
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 135
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bodytech/BtLoad$Wait;

    .line 136
    iget-object v9, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v9, :cond_58

    iget-object v9, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v9, v9, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-eqz v9, :cond_58

    iget-object v9, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v9, v9, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-nez v9, :cond_58

    iget-wide v10, v0, Lcom/isaigu/gymapp/bodytech/BtLoad$Wait;->since:J

    sub-long v10, v6, v10

    const-wide/16 v12, 0x4e20

    cmp-long v9, v10, v12

    if-lez v9, :cond_5f

    .line 137
    :cond_58
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 150
    :catchall_5c
    move-exception v0

    monitor-exit v5
    :try_end_5e
    .catchall {:try_start_17 .. :try_end_5e} :catchall_5c

    throw v0

    .line 138
    :cond_5f
    :try_start_5f
    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtLoad$Wait;->d:Lcom/clj/fastble/data/BleDevice;

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->loadPercent(Lcom/clj/fastble/data/BleDevice;)I

    move-result v0

    if-gez v0, :cond_6b

    .line 139
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 141
    :cond_6b
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 144
    :cond_6f
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_73
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 145
    # getter for: Lcom/isaigu/gymapp/bodytech/BtLoad;->WAITING:Ljava/util/WeakHashMap;
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtLoad;->access$100()Ljava/util/WeakHashMap;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_73

    .line 147
    :cond_87
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 148
    # getter for: Lcom/isaigu/gymapp/bodytech/BtLoad;->WAITING:Ljava/util/WeakHashMap;
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtLoad;->access$100()Ljava/util/WeakHashMap;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8b

    .line 150
    :cond_9f
    monitor-exit v5
    :try_end_a0
    .catchall {:try_start_5f .. :try_end_a0} :catchall_5c

    .line 151
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 152
    # invokes: Lcom/isaigu/gymapp/bodytech/BtLoad;->refresh(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtLoad;->access$200(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    goto :goto_a4

    .line 154
    :cond_b4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 156
    :try_start_c4
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->start()V
    :try_end_c7
    .catch Ljava/lang/Throwable; {:try_start_c4 .. :try_end_c7} :catch_cb

    .line 160
    :goto_c7
    # invokes: Lcom/isaigu/gymapp/bodytech/BtLoad;->refresh(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtLoad;->access$200(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    goto :goto_b8

    .line 157
    :catch_cb
    move-exception v2

    .line 158
    const-string v3, "xems-bt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load start: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c7

    .line 162
    :cond_e5
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 163
    # invokes: Lcom/isaigu/gymapp/bodytech/BtLoad;->refresh(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtLoad;->access$200(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    goto :goto_e9

    .line 165
    :cond_f9
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_102

    .line 166
    # invokes: Lcom/isaigu/gymapp/bodytech/BtLoad;->tick()V
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtLoad;->access$300()V

    .line 168
    :cond_102
    return-void
.end method
