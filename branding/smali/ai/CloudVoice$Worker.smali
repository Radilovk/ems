.class final Lcom/isaigu/gymapp/ai/CloudVoice$Worker;
.super Ljava/lang/Object;
.source "CloudVoice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/CloudVoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Worker"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 195
    :cond_1
    :goto_1
    const-class v1, Lcom/isaigu/gymapp/ai/CloudVoice;

    monitor-enter v1

    .line 196
    :cond_4
    :try_start_4
    # getter for: Lcom/isaigu/gymapp/ai/CloudVoice;->QUEUE:Ljava/util/LinkedList;
    invoke-static {}, Lcom/isaigu/gymapp/ai/CloudVoice;->access$000()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_28

    move-result v0

    if-eqz v0, :cond_2b

    .line 198
    :try_start_e
    const-class v0, Lcom/isaigu/gymapp/ai/CloudVoice;

    const-wide/16 v4, 0x7530

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_15} :catch_25
    .catchall {:try_start_e .. :try_end_15} :catchall_28

    .line 202
    :try_start_15
    # getter for: Lcom/isaigu/gymapp/ai/CloudVoice;->QUEUE:Ljava/util/LinkedList;
    invoke-static {}, Lcom/isaigu/gymapp/ai/CloudVoice;->access$000()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 203
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/ai/CloudVoice;->worker:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/CloudVoice;->access$102(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 204
    monitor-exit v1

    :goto_24
    return-void

    .line 199
    :catch_25
    move-exception v0

    .line 200
    monitor-exit v1

    goto :goto_24

    .line 208
    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_15 .. :try_end_2a} :catchall_28

    throw v0

    .line 207
    :cond_2b
    :try_start_2b
    # getter for: Lcom/isaigu/gymapp/ai/CloudVoice;->QUEUE:Ljava/util/LinkedList;
    invoke-static {}, Lcom/isaigu/gymapp/ai/CloudVoice;->access$000()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/CloudVoice$Item;

    .line 208
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_2b .. :try_end_36} :catchall_28

    .line 210
    const/4 v1, 0x1

    # setter for: Lcom/isaigu/gymapp/ai/CloudVoice;->playing:Z
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/CloudVoice;->access$202(Z)Z

    .line 212
    :try_start_3a
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/CloudVoice;->play(Lcom/isaigu/gymapp/ai/CloudVoice$Item;)Z
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3d} :catch_5c
    .catchall {:try_start_3a .. :try_end_3d} :catchall_7a

    move-result v1

    .line 216
    # setter for: Lcom/isaigu/gymapp/ai/CloudVoice;->playing:Z
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/CloudVoice;->access$202(Z)Z

    .line 218
    :goto_41
    iget v3, v0, Lcom/isaigu/gymapp/ai/CloudVoice$Item;->gen:I

    # getter for: Lcom/isaigu/gymapp/ai/CloudVoice;->gen:I
    invoke-static {}, Lcom/isaigu/gymapp/ai/CloudVoice;->access$300()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 221
    if-nez v1, :cond_7f

    .line 222
    # getter for: Lcom/isaigu/gymapp/ai/CloudVoice;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/CloudVoice;->access$400()Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lcom/isaigu/gymapp/ai/CloudVoice$Local;

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/CloudVoice$Item;->text:Ljava/lang/String;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/CloudVoice$Item;->id:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Lcom/isaigu/gymapp/ai/CloudVoice$Local;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 213
    :catch_5c
    move-exception v1

    .line 214
    :try_start_5d
    const-string v3, "voice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "play: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_75
    .catchall {:try_start_5d .. :try_end_75} :catchall_7a

    .line 216
    # setter for: Lcom/isaigu/gymapp/ai/CloudVoice;->playing:Z
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/CloudVoice;->access$202(Z)Z

    move v1, v2

    .line 217
    goto :goto_41

    .line 216
    :catchall_7a
    move-exception v0

    # setter for: Lcom/isaigu/gymapp/ai/CloudVoice;->playing:Z
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/CloudVoice;->access$202(Z)Z

    .line 217
    throw v0

    .line 224
    :cond_7f
    # getter for: Lcom/isaigu/gymapp/ai/CloudVoice;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/CloudVoice;->access$400()Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lcom/isaigu/gymapp/ai/CloudVoice$Done;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/CloudVoice$Item;->id:Ljava/lang/String;

    invoke-direct {v3, v0}, Lcom/isaigu/gymapp/ai/CloudVoice$Done;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1
.end method
