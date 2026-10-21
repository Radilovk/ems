.class final Lcom/isaigu/gymapp/bodytech/BtBridge$Gate;
.super Ljava/lang/Object;
.source "BtBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/BtBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Gate"
.end annotation


# instance fields
.field final gen:I

.field k:J

.field final period:J

.field final start:J

.field final v:Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;IJ)V
    .registers 8

    .prologue
    .line 741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 738
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Gate;->start:J

    .line 742
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Gate;->v:Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    .line 743
    iput p2, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Gate;->gen:I

    .line 744
    iput-wide p3, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Gate;->period:J

    .line 745
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 750
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Gate;->v:Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->gate()[I

    move-result-object v0

    .line 751
    if-eqz v0, :cond_11

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Gate;->gen:I

    if-eq v0, v1, :cond_12

    .line 767
    :cond_11
    :goto_11
    return-void

    .line 752
    :cond_12
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Gate;->v:Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    monitor-enter v1
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_15} :catch_22

    .line 753
    :try_start_15
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Gate;->v:Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->gateGen:I

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Gate;->gen:I

    if-eq v0, v2, :cond_3c

    monitor-exit v1

    goto :goto_11

    .line 761
    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_1f

    :try_start_21
    throw v0
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_22} :catch_22

    .line 764
    :catch_22
    move-exception v0

    .line 765
    const-string v1, "xems-bt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 754
    :cond_3c
    :try_start_3c
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Gate;->v:Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->gateBusy:Z

    if-nez v0, :cond_67

    .line 755
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Gate;->v:Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Gate;->gen:I

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->gateOn(I)Ljava/util/List;

    move-result-object v0

    .line 756
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_67

    .line 757
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Gate;->v:Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->gateBusy:Z

    .line 758
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Gate;->v:Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    new-instance v3, Lcom/isaigu/gymapp/bodytech/BtBridge$GateOff;

    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Gate;->v:Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    iget v5, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Gate;->gen:I

    invoke-direct {v3, v4, v5}, Lcom/isaigu/gymapp/bodytech/BtBridge$GateOff;-><init>(Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->add(Ljava/util/List;Lcom/clj/fastble/callback/BleWriteCallback;[BZ)V

    .line 761
    :cond_67
    monitor-exit v1
    :try_end_68
    .catchall {:try_start_3c .. :try_end_68} :catchall_1f

    .line 762
    :try_start_68
    iget-wide v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Gate;->k:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Gate;->k:J

    .line 763
    # getter for: Lcom/isaigu/gymapp/bodytech/BtBridge;->main:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtBridge;->access$000()Landroid/os/Handler;

    move-result-object v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Gate;->start:J

    iget-wide v4, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Gate;->k:J

    iget-wide v6, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Gate;->period:J

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_7e} :catch_22

    goto :goto_11
.end method
