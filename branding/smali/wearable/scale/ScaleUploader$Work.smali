.class final Lcom/isaigu/gymapp/wearable/scale/ScaleUploader$Work;
.super Ljava/lang/Object;
.source "ScaleUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Work"
.end annotation


# instance fields
.field final age:I

.field final c:Landroid/content/Context;

.field final heightCm:I

.field final male:Z

.field final userId:J


# direct methods
.method constructor <init>(Landroid/content/Context;JZII)V
    .registers 7

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader$Work;->c:Landroid/content/Context;

    .line 48
    iput-wide p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader$Work;->userId:J

    .line 49
    iput-boolean p4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader$Work;->male:Z

    .line 50
    iput p5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader$Work;->age:I

    .line 51
    iput p6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader$Work;->heightCm:I

    .line 52
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader$Work;->c:Landroid/content/Context;

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader$Work;->userId:J

    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader$Work;->male:Z

    iget v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader$Work;->age:I

    iget v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader$Work;->heightCm:I

    invoke-static/range {v1 .. v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->upload(Landroid/content/Context;JZII)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_20
    .catchall {:try_start_0 .. :try_end_d} :catchall_4c

    .line 61
    sget-object v1, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->RUNNING:Ljava/util/Set;

    monitor-enter v1

    .line 62
    :try_start_10
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->RUNNING:Ljava/util/Set;

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader$Work;->userId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 63
    monitor-exit v1

    .line 65
    :goto_1c
    return-void

    .line 63
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_1d

    throw v0

    .line 58
    :catch_20
    move-exception v0

    .line 59
    :try_start_21
    const-string v1, "scale"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_21 .. :try_end_39} :catchall_4c

    .line 61
    sget-object v1, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->RUNNING:Ljava/util/Set;

    monitor-enter v1

    .line 62
    :try_start_3c
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->RUNNING:Ljava/util/Set;

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader$Work;->userId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 63
    monitor-exit v1

    goto :goto_1c

    :catchall_49
    move-exception v0

    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_3c .. :try_end_4b} :catchall_49

    throw v0

    .line 61
    :catchall_4c
    move-exception v0

    sget-object v1, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->RUNNING:Ljava/util/Set;

    monitor-enter v1

    .line 62
    :try_start_50
    sget-object v2, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->RUNNING:Ljava/util/Set;

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader$Work;->userId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 63
    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_50 .. :try_end_5c} :catchall_5d

    .line 64
    throw v0

    .line 63
    :catchall_5d
    move-exception v0

    :try_start_5e
    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw v0
.end method
