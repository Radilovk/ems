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
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 188
    :cond_0
    :goto_0
    const-class v1, Lcom/isaigu/gymapp/ai/CloudVoice;

    monitor-enter v1

    .line 189
    :cond_3
    :try_start_3
    # getter for: Lcom/isaigu/gymapp/ai/CloudVoice;->QUEUE:Ljava/util/LinkedList;
    invoke-static {}, Lcom/isaigu/gymapp/ai/CloudVoice;->access$000()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_27

    move-result v0

    if-eqz v0, :cond_2a

    .line 191
    :try_start_d
    const-class v0, Lcom/isaigu/gymapp/ai/CloudVoice;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_14} :catch_24
    .catchall {:try_start_d .. :try_end_14} :catchall_27

    .line 195
    :try_start_14
    # getter for: Lcom/isaigu/gymapp/ai/CloudVoice;->QUEUE:Ljava/util/LinkedList;
    invoke-static {}, Lcom/isaigu/gymapp/ai/CloudVoice;->access$000()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 196
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/ai/CloudVoice;->worker:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/CloudVoice;->access$102(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 197
    monitor-exit v1

    :goto_23
    return-void

    .line 192
    :catch_24
    move-exception v0

    .line 193
    monitor-exit v1

    goto :goto_23

    .line 201
    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_14 .. :try_end_29} :catchall_27

    throw v0

    .line 200
    :cond_2a
    :try_start_2a
    # getter for: Lcom/isaigu/gymapp/ai/CloudVoice;->QUEUE:Ljava/util/LinkedList;
    invoke-static {}, Lcom/isaigu/gymapp/ai/CloudVoice;->access$000()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/CloudVoice$Item;

    .line 201
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_27

    .line 202
    const/4 v1, 0x0

    .line 204
    :try_start_36
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/CloudVoice;->play(Lcom/isaigu/gymapp/ai/CloudVoice$Item;)Z
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_39} :catch_55

    move-result v1

    .line 208
    :goto_3a
    iget v2, v0, Lcom/isaigu/gymapp/ai/CloudVoice$Item;->gen:I

    # getter for: Lcom/isaigu/gymapp/ai/CloudVoice;->gen:I
    invoke-static {}, Lcom/isaigu/gymapp/ai/CloudVoice;->access$200()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 211
    if-nez v1, :cond_6f

    .line 212
    # getter for: Lcom/isaigu/gymapp/ai/CloudVoice;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/CloudVoice;->access$300()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/ai/CloudVoice$Local;

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/CloudVoice$Item;->text:Ljava/lang/String;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/CloudVoice$Item;->id:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lcom/isaigu/gymapp/ai/CloudVoice$Local;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 205
    :catch_55
    move-exception v2

    .line 206
    const-string v3, "voice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "play: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a

    .line 214
    :cond_6f
    # getter for: Lcom/isaigu/gymapp/ai/CloudVoice;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/CloudVoice;->access$300()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/ai/CloudVoice$Done;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/CloudVoice$Item;->id:Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/isaigu/gymapp/ai/CloudVoice$Done;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
