.class final Lcom/isaigu/gymapp/wearable/SessionUploader$Start;
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
    name = "Start"
.end annotation


# instance fields
.field final user:Lcom/isaigu/gymapp/bean/TrainUser;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bean/TrainUser;)V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/SessionUploader$Start;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 46
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 51
    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivityForPermissions()Landroid/app/Activity;

    move-result-object v1

    .line 52
    if-nez v1, :cond_8

    .line 71
    :cond_7
    :goto_7
    return-void

    .line 55
    :cond_8
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/SessionUploader$Start;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/ReportBridge;->lookupFields(Lcom/isaigu/gymapp/bean/TrainUser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3e

    const-string v2, "xems_client_cards"

    const/4 v3, 0x0

    .line 56
    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/SessionUploader$Start;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v4, v4, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    .line 57
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3f

    :cond_3e
    const/4 v0, 0x1

    .line 58
    :cond_3f
    if-eqz v0, :cond_7

    .line 61
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionUploader$Start;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 62
    # getter for: Lcom/isaigu/gymapp/wearable/SessionUploader;->RUNNING:Ljava/util/Set;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SessionUploader;->access$000()Ljava/util/Set;

    move-result-object v2

    monitor-enter v2
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4e} :catch_5d

    .line 63
    :try_start_4e
    # getter for: Lcom/isaigu/gymapp/wearable/SessionUploader;->RUNNING:Ljava/util/Set;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SessionUploader;->access$000()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    .line 64
    monitor-exit v2

    goto :goto_7

    .line 66
    :catchall_5a
    move-exception v0

    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_4e .. :try_end_5c} :catchall_5a

    :try_start_5c
    throw v0
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5d} :catch_5d

    .line 68
    :catch_5d
    move-exception v0

    .line 69
    const-string v1, "report"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "session upload start: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 66
    :cond_77
    :try_start_77
    monitor-exit v2
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_5a

    .line 67
    :try_start_78
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/isaigu/gymapp/wearable/SessionUploader$Work;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionUploader$Start;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-direct {v2, v1, v3}, Lcom/isaigu/gymapp/wearable/SessionUploader$Work;-><init>(Landroid/content/Context;Lcom/isaigu/gymapp/bean/TrainUser;)V

    const-string v1, "xems-session-up"

    invoke-direct {v0, v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_8d} :catch_5d

    goto/16 :goto_7
.end method
