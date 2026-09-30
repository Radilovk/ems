.class final Lcom/isaigu/gymapp/wearable/SuitReconnect$Back;
.super Ljava/lang/Object;
.source "SuitReconnect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/SuitReconnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Back"
.end annotation


# instance fields
.field private final device:Lcom/clj/fastble/data/BleDevice;

.field private final lost:Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;Lcom/clj/fastble/data/BleDevice;)V
    .registers 3

    .prologue
    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Back;->lost:Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;

    .line 287
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Back;->device:Lcom/clj/fastble/data/BleDevice;

    .line 288
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 292
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Back;->lost:Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;->connecting:Z

    .line 293
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Back;->lost:Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 295
    :try_start_9
    # getter for: Lcom/isaigu/gymapp/wearable/SuitReconnect;->LOST:Ljava/util/List;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SuitReconnect;->access$100()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Back;->lost:Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_2d

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-nez v1, :cond_2d

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Back;->lost:Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;->mac:Ljava/lang/String;

    iget-object v2, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    .line 296
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 297
    :cond_2d
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Back;->device:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v0, v1}, Lcom/clj/fastble/BleManager;->disconnect(Lcom/clj/fastble/data/BleDevice;)V

    .line 310
    :goto_36
    return-void

    .line 300
    :cond_37
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Back;->device:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->xemsRebind(Lcom/clj/fastble/data/BleDevice;)V

    .line 301
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Back;->lost:Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;->doneAt:J

    .line 302
    const-string v1, "suit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "back "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Back;->lost:Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;

    iget-object v3, v3, Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;->mac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " s left"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u2713 \u041a\u043e\u0441\u0442\u044e\u043c\u044a\u0442 \u043d\u0430 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # invokes: Lcom/isaigu/gymapp/wearable/SuitReconnect;->who(Lcom/isaigu/gymapp/train/model/TrainItem;)Ljava/lang/String;
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/SuitReconnect;->access$400(Lcom/isaigu/gymapp/train/model/TrainItem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u0435 \u0441\u0432\u044a\u0440\u0437\u0430\u043d \u043e\u0442\u043d\u043e\u0432\u043e \u2014 \u043d\u0430\u0442\u0438\u0441\u043d\u0438 \u25b6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u2713 Suit of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 304
    # invokes: Lcom/isaigu/gymapp/wearable/SuitReconnect;->who(Lcom/isaigu/gymapp/train/model/TrainItem;)Ljava/lang/String;
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/SuitReconnect;->access$400(Lcom/isaigu/gymapp/train/model/TrainItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " connected again \u2014 tap \u25b6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 303
    # invokes: Lcom/isaigu/gymapp/wearable/SuitReconnect;->tip(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/SuitReconnect;->access$500(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->xemsRefresh()V

    .line 306
    # invokes: Lcom/isaigu/gymapp/wearable/SuitReconnect;->tick()V
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SuitReconnect;->access$200()V
    :try_end_b5
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_b5} :catch_b6

    goto :goto_36

    .line 307
    :catch_b6
    move-exception v0

    .line 308
    const-string v1, "suit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "back: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_36
.end method
