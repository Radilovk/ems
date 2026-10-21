.class final Lcom/isaigu/gymapp/bodytech/BtBridge$GateOff;
.super Lcom/clj/fastble/callback/BleWriteCallback;
.source "BtBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/BtBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GateOff"
.end annotation


# instance fields
.field final gen:I

.field final v:Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;I)V
    .registers 3

    .prologue
    .line 775
    invoke-direct {p0}, Lcom/clj/fastble/callback/BleWriteCallback;-><init>()V

    .line 776
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$GateOff;->v:Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    .line 777
    iput p2, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$GateOff;->gen:I

    .line 778
    return-void
.end method


# virtual methods
.method public onWriteFailure(Lcom/clj/fastble/exception/BleException;)V
    .registers 5

    .prologue
    .line 790
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$GateOff;->v:Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    monitor-enter v1

    .line 791
    :try_start_3
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$GateOff;->v:Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->gateBusy:Z

    .line 792
    monitor-exit v1

    .line 793
    return-void

    .line 792
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public onWriteSuccess(II[B)V
    .registers 10

    .prologue
    .line 782
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$GateOff;->v:Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    monitor-enter v1

    .line 783
    :try_start_3
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$GateOff;->v:Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$GateOff;->v:Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    iget-object v2, v2, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$GateOff;->gen:I

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->gateOff(I)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->add(Ljava/util/List;Lcom/clj/fastble/callback/BleWriteCallback;[BZ)V

    .line 784
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$GateOff;->v:Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->gateBusy:Z

    .line 785
    monitor-exit v1

    .line 786
    return-void

    .line 785
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method
