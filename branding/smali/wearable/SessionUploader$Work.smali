.class final Lcom/isaigu/gymapp/wearable/SessionUploader$Work;
.super Ljava/lang/Object;
.source "SessionUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/SessionUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Work"
.end annotation


# instance fields
.field final c:Landroid/content/Context;

.field final user:Lcom/isaigu/gymapp/bean/TrainUser;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/isaigu/gymapp/bean/TrainUser;)V
    .registers 3

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/SessionUploader$Work;->c:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/SessionUploader$Work;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 81
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 85
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionUploader$Work;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 86
    const/4 v1, 0x0

    .line 88
    :try_start_9
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionUploader$Work;->c:Landroid/content/Context;

    # invokes: Lcom/isaigu/gymapp/wearable/SessionUploader;->upload(Landroid/content/Context;Ljava/lang/String;)Z
    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/SessionUploader;->access$100(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_e} :catch_32
    .catchall {:try_start_9 .. :try_end_e} :catchall_5d

    move-result v0

    .line 92
    # getter for: Lcom/isaigu/gymapp/wearable/SessionUploader;->RUNNING:Ljava/util/Set;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SessionUploader;->access$000()Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 93
    :try_start_14
    # getter for: Lcom/isaigu/gymapp/wearable/SessionUploader;->RUNNING:Ljava/util/Set;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SessionUploader;->access$000()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 94
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_2f

    .line 96
    :goto_1c
    if-eqz v0, :cond_2e

    .line 97
    # getter for: Lcom/isaigu/gymapp/wearable/SessionUploader;->H:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SessionUploader;->access$200()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/wearable/SessionUploader$Start;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/SessionUploader$Work;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/SessionUploader$Start;-><init>(Lcom/isaigu/gymapp/bean/TrainUser;)V

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 99
    :cond_2e
    return-void

    .line 94
    :catchall_2f
    move-exception v0

    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v0

    .line 89
    :catch_32
    move-exception v0

    .line 90
    :try_start_33
    const-string v3, "report"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "session upload: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_33 .. :try_end_4b} :catchall_5d

    .line 92
    # getter for: Lcom/isaigu/gymapp/wearable/SessionUploader;->RUNNING:Ljava/util/Set;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SessionUploader;->access$000()Ljava/util/Set;

    move-result-object v3

    monitor-enter v3

    .line 93
    :try_start_50
    # getter for: Lcom/isaigu/gymapp/wearable/SessionUploader;->RUNNING:Ljava/util/Set;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SessionUploader;->access$000()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 94
    monitor-exit v3

    move v0, v1

    .line 95
    goto :goto_1c

    .line 94
    :catchall_5a
    move-exception v0

    monitor-exit v3
    :try_end_5c
    .catchall {:try_start_50 .. :try_end_5c} :catchall_5a

    throw v0

    .line 92
    :catchall_5d
    move-exception v0

    # getter for: Lcom/isaigu/gymapp/wearable/SessionUploader;->RUNNING:Ljava/util/Set;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SessionUploader;->access$000()Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 93
    :try_start_63
    # getter for: Lcom/isaigu/gymapp/wearable/SessionUploader;->RUNNING:Ljava/util/Set;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SessionUploader;->access$000()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 94
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_63 .. :try_end_6b} :catchall_6c

    .line 95
    throw v0

    .line 94
    :catchall_6c
    move-exception v0

    :try_start_6d
    monitor-exit v1
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw v0
.end method
