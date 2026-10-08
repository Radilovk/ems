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
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 115
    :try_start_0
    # getter for: Lcom/isaigu/gymapp/wearable/SignalProbe;->anchor:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SignalProbe;->access$100()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_17

    # getter for: Lcom/isaigu/gymapp/wearable/SignalProbe;->anchor:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SignalProbe;->access$100()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 116
    :goto_10
    # getter for: Lcom/isaigu/gymapp/wearable/SignalProbe;->watching:Z
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SignalProbe;->access$000()Z

    move-result v1

    if-nez v1, :cond_19

    .line 137
    :goto_16
    return-void

    .line 115
    :cond_17
    const/4 v0, 0x0

    goto :goto_10

    .line 119
    :cond_19
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_40

    .line 120
    :cond_21
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/wearable/SignalProbe;->watching:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/SignalProbe;->access$002(Z)Z
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_16

    .line 134
    :catch_26
    move-exception v0

    .line 135
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

    goto :goto_16

    .line 123
    :cond_40
    :try_start_40
    # getter for: Lcom/isaigu/gymapp/wearable/SignalProbe;->mac:Ljava/lang/String;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SignalProbe;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/SignalProbe;->device(Ljava/lang/String;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    .line 124
    if-nez v1, :cond_71

    .line 125
    const/high16 v1, -0x80000000

    # setter for: Lcom/isaigu/gymapp/wearable/SignalProbe;->lastRssi:I
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/SignalProbe;->access$302(I)I

    .line 126
    const-string v1, "\u041a\u043e\u0441\u0442\u044e\u043c\u044a\u0442 \u043d\u0435 \u0435 \u0441\u0432\u044a\u0440\u0437\u0430\u043d"

    const-string v2, "The suit is not connected"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u041d\u044f\u043c\u0430 \u0441\u0438\u0433\u043d\u0430\u043b \u00b7 \u043a\u043b\u0438\u043a\u043d\u0438 \u0438\u043a\u043e\u043d\u0430\u0442\u0430 \u0437\u0430 \u0441\u043a\u0440\u0438\u0432\u0430\u043d\u0435"

    const-string v3, "No signal \u00b7 tap the icon to hide"

    .line 127
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, -0xadae

    const-wide/16 v4, 0x5dc

    .line 126
    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->show(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 133
    :goto_67
    # getter for: Lcom/isaigu/gymapp/wearable/SignalProbe;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SignalProbe;->access$400()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_16

    .line 130
    :cond_71
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v2

    new-instance v3, Lcom/isaigu/gymapp/wearable/SignalProbe$Reading;

    invoke-direct {v3}, Lcom/isaigu/gymapp/wearable/SignalProbe$Reading;-><init>()V

    invoke-virtual {v2, v1, v3}, Lcom/clj/fastble/BleManager;->readRssi(Lcom/clj/fastble/data/BleDevice;Lcom/clj/fastble/callback/BleRssiCallback;)V

    .line 131
    # getter for: Lcom/isaigu/gymapp/wearable/SignalProbe;->lastRssi:I
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SignalProbe;->access$300()I

    move-result v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/SignalProbe;->show(Landroid/view/View;I)V
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_84} :catch_26

    goto :goto_67
.end method
