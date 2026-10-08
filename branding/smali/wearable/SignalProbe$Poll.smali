.class final Lcom/isaigu/gymapp/wearable/SignalProbe$Poll;
.super Ljava/lang/Object;
.source "SignalProbe.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/SignalProbe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Poll"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 96
    :try_start_0
    # getter for: Lcom/isaigu/gymapp/wearable/SignalProbe;->anchor:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SignalProbe;->access$000()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1f

    # getter for: Lcom/isaigu/gymapp/wearable/SignalProbe;->anchor:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SignalProbe;->access$000()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 97
    :goto_10
    if-eqz v0, :cond_1e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # getter for: Lcom/isaigu/gymapp/wearable/SignalProbe;->watchUntil:J
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SignalProbe;->access$100()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_21

    .line 112
    :cond_1e
    :goto_1e
    return-void

    .line 96
    :cond_1f
    const/4 v0, 0x0

    goto :goto_10

    .line 100
    :cond_21
    # getter for: Lcom/isaigu/gymapp/wearable/SignalProbe;->mac:Ljava/lang/String;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SignalProbe;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/SignalProbe;->device(Ljava/lang/String;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    .line 101
    if-nez v1, :cond_5e

    .line 102
    const-string v1, "\u041a\u043e\u0441\u0442\u044e\u043c\u044a\u0442 \u043d\u0435 \u0435 \u0441\u0432\u044a\u0440\u0437\u0430\u043d"

    const-string v2, "The suit is not connected"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u041d\u044f\u043c\u0430 \u0441\u0438\u0433\u043d\u0430\u043b"

    const-string v3, "No signal"

    .line 103
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, -0xadae

    const-wide/16 v4, 0x9c4

    .line 102
    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->show(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;IJ)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_43} :catch_44

    goto :goto_1e

    .line 109
    :catch_44
    move-exception v0

    .line 110
    const-string v1, "index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "signal poll: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    .line 106
    :cond_5e
    :try_start_5e
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v2

    new-instance v3, Lcom/isaigu/gymapp/wearable/SignalProbe$Reading;

    invoke-direct {v3}, Lcom/isaigu/gymapp/wearable/SignalProbe$Reading;-><init>()V

    invoke-virtual {v2, v1, v3}, Lcom/clj/fastble/BleManager;->readRssi(Lcom/clj/fastble/data/BleDevice;Lcom/clj/fastble/callback/BleRssiCallback;)V

    .line 107
    # getter for: Lcom/isaigu/gymapp/wearable/SignalProbe;->lastRssi:I
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SignalProbe;->access$300()I

    move-result v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/SignalProbe;->show(Landroid/view/View;I)V

    .line 108
    # getter for: Lcom/isaigu/gymapp/wearable/SignalProbe;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SignalProbe;->access$400()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_7a} :catch_44

    goto :goto_1e
.end method
