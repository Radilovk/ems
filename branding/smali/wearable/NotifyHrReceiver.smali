.class public final Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotifyHrReceiver.java"


# static fields
.field public static final ACTION_CONNECTED:Ljava/lang/String; = "com.mc.xiaomi.connected"

.field public static final ACTION_DISCONNECTED:Ljava/lang/String; = "com.mc.xiaomi.disconnected"

.field public static final ACTION_HEART_RATE:Ljava/lang/String; = "com.mc.xiaomi.heartRateGot"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 15
    if-nez p2, :cond_3

    .line 16
    return-void

    .line 18
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 19
    const-string v0, "com.mc.xiaomi.heartRateGot"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 20
    const/4 p1, -0x1

    const-string v0, "value"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onHeartRate(I)V

    goto :goto_31

    .line 21
    :cond_1a
    const-string p2, "com.mc.xiaomi.connected"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_26

    .line 22
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onBandConnected()V

    goto :goto_31

    .line 23
    :cond_26
    const-string p2, "com.mc.xiaomi.disconnected"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 24
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onBandDisconnected()V

    .line 26
    :cond_31
    :goto_31
    return-void
.end method
