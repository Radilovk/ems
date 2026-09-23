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

.field public static final ACTION_GB_CONNECTED:Ljava/lang/String; = "nodomain.freeyourgadget.gadgetbridge.BLUETOOTH_CONNECTED"

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

.method private static deviceMatchesConfigured(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 4

    .line 73
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 74
    const/4 v0, 0x1

    if-eqz p0, :cond_30

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_12

    goto :goto_30

    .line 77
    :cond_12
    const-string v1, "device"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    if-nez v1, :cond_20

    .line 79
    const-string v1, "EXTRA_DEVICE_ADDRESS"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    :cond_20
    if-nez v1, :cond_23

    .line 82
    return v0

    .line 84
    :cond_23
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;->normalizeMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;->normalizeMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 75
    :cond_30
    :goto_30
    return v0
.end method

.method private static isBatteryAction(Ljava/lang/String;)Z
    .registers 2

    .line 69
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

    .line 61
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

    .line 65
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

    .line 55
    const-string v0, "com.mc.xiaomi.heartRateGot"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 56
    const-string v0, "com.mc.miband.heartRateGot"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 57
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

    .line 55
    :goto_1c
    return p0
.end method

.method private static normalizeMac(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 88
    const-string v0, ""

    if-eqz p0, :cond_e

    const-string v1, ":"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method private static parseHeartRate(Landroid/content/Intent;)I
    .registers 3

    .line 92
    const-string v0, "value"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 93
    if-lez v0, :cond_a

    .line 94
    return v0

    .line 96
    :cond_a
    const-string v0, "hr"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 97
    if-lez v0, :cond_13

    .line 98
    return v0

    .line 100
    :cond_13
    const-string v0, "heart"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 101
    if-lez v0, :cond_1c

    .line 102
    return v0

    .line 104
    :cond_1c
    const-string v0, "bpm"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 105
    if-lez p0, :cond_25

    move v1, p0

    :cond_25
    return v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 24
    if-nez p2, :cond_3

    .line 25
    return-void

    .line 27
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 28
    if-nez v0, :cond_a

    .line 29
    return-void

    .line 31
    :cond_a
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onRawEvent(Ljava/lang/String;)V

    .line 32
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;->isHeartRateAction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 33
    const-string v1, "nodomain.freeyourgadget.gadgetbridge.action.REALTIME_HR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 34
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;->deviceMatchesConfigured(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_22

    .line 35
    return-void

    .line 37
    :cond_22
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;->parseHeartRate(Landroid/content/Intent;)I

    move-result p1

    .line 38
    if-lez p1, :cond_2b

    .line 39
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onHeartRate(ILjava/lang/String;)V

    .line 41
    :cond_2b
    goto :goto_62

    :cond_2c
    const-string v1, "nodomain.freeyourgadget.gadgetbridge.BLUETOOTH_CONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 42
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;->deviceMatchesConfigured(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_62

    .line 43
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onBandConnected()V

    goto :goto_62

    .line 45
    :cond_3e
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;->isConnectedAction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 46
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onBandConnected()V

    goto :goto_62

    .line 47
    :cond_48
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;->isDisconnectedAction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_52

    .line 48
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onBandDisconnected()V

    goto :goto_62

    .line 49
    :cond_52
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;->isBatteryAction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_62

    .line 50
    const/4 p1, -0x1

    const-string v0, "value"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onBattery(I)V

    .line 52
    :cond_62
    :goto_62
    return-void
.end method
