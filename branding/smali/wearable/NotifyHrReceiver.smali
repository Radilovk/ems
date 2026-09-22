.class public final Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotifyHrReceiver.java"


# static fields
.field public static final ACTION_BATTERY:Ljava/lang/String; = "com.mc.xiaomi.batteryStatGot"

.field public static final ACTION_BATTERY_LEGACY:Ljava/lang/String; = "com.mc.miband.batteryStatGot"

.field public static final ACTION_CONNECTED:Ljava/lang/String; = "com.mc.xiaomi.connected"

.field public static final ACTION_CONNECTED_LEGACY:Ljava/lang/String; = "com.mc.miband.connected"

.field public static final ACTION_DISCONNECTED:Ljava/lang/String; = "com.mc.xiaomi.disconnected"

.field public static final ACTION_DISCONNECTED_LEGACY:Ljava/lang/String; = "com.mc.miband.disconnected"

.field public static final ACTION_GB_REALTIME_HR:Ljava/lang/String; = "nodomain.freeyourgadget.gadgetbridge.action.REALTIME_HR"

.field public static final ACTION_HEART_RATE:Ljava/lang/String; = "com.mc.xiaomi.heartRateGot"

.field public static final ACTION_HEART_RATE_LEGACY:Ljava/lang/String; = "com.mc.miband.heartRateGot"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static isBatteryAction(Ljava/lang/String;)Z
    .registers 2

    .line 59
    const-string v0, "com.mc.xiaomi.batteryStatGot"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "com.mc.miband.batteryStatGot"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method private static isConnectedAction(Ljava/lang/String;)Z
    .registers 2

    .line 51
    const-string v0, "com.mc.xiaomi.connected"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "com.mc.miband.connected"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method private static isDisconnectedAction(Ljava/lang/String;)Z
    .registers 2

    .line 55
    const-string v0, "com.mc.xiaomi.disconnected"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "com.mc.miband.disconnected"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method private static isHeartRateAction(Ljava/lang/String;)Z
    .registers 2

    .line 45
    const-string v0, "com.mc.xiaomi.heartRateGot"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 46
    const-string v0, "com.mc.miband.heartRateGot"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 47
    const-string v0, "nodomain.freeyourgadget.gadgetbridge.action.REALTIME_HR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    .line 45
    :goto_1c
    return p0
.end method

.method private static parseHeartRate(Landroid/content/Intent;)I
    .registers 3

    .line 63
    const-string v0, "value"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 64
    if-lez v0, :cond_a

    .line 65
    return v0

    .line 67
    :cond_a
    const-string v0, "hr"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 68
    if-lez v0, :cond_13

    .line 69
    return v0

    .line 71
    :cond_13
    const-string v0, "heart"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 72
    if-lez v0, :cond_1c

    .line 73
    return v0

    .line 75
    :cond_1c
    const-string v0, "bpm"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 76
    if-lez p0, :cond_25

    move v1, p0

    :cond_25
    return v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 22
    if-nez p2, :cond_3

    .line 23
    return-void

    .line 25
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 26
    if-nez p1, :cond_a

    .line 27
    return-void

    .line 29
    :cond_a
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onRawEvent(Ljava/lang/String;)V

    .line 30
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;->isHeartRateAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 31
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;->parseHeartRate(Landroid/content/Intent;)I

    move-result p2

    .line 32
    if-lez p2, :cond_1c

    .line 33
    invoke-static {p2, p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onHeartRate(ILjava/lang/String;)V

    .line 35
    :cond_1c
    goto :goto_41

    :cond_1d
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;->isConnectedAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 36
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onBandConnected()V

    goto :goto_41

    .line 37
    :cond_27
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;->isDisconnectedAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 38
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onBandDisconnected()V

    goto :goto_41

    .line 39
    :cond_31
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;->isBatteryAction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_41

    .line 40
    const/4 p1, -0x1

    const-string v0, "value"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onBattery(I)V

    .line 42
    :cond_41
    :goto_41
    return-void
.end method
