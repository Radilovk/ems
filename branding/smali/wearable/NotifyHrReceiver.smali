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

.field public static final ACTION_GB_DISCONNECTED:Ljava/lang/String; = "nodomain.freeyourgadget.gadgetbridge.BLUETOOTH_DISCONNECTED"

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

    .line 82
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 83
    const/4 v0, 0x1

    if-eqz p0, :cond_30

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_12

    goto :goto_30

    .line 86
    :cond_12
    const-string v1, "device"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    if-nez v1, :cond_20

    .line 88
    const-string v1, "EXTRA_DEVICE_ADDRESS"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    :cond_20
    if-nez v1, :cond_23

    .line 91
    return v0

    .line 93
    :cond_23
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->normalizeMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 94
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->normalizeMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 93
    return p0

    .line 84
    :cond_30
    :goto_30
    return v0
.end method

.method private static isBatteryAction(Ljava/lang/String;)Z
    .registers 2

    .line 78
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

    .line 70
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

    .line 74
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

    .line 64
    const-string v0, "com.mc.xiaomi.heartRateGot"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 65
    const-string v0, "com.mc.miband.heartRateGot"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 66
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

    .line 64
    :goto_1c
    return p0
.end method

.method private static parseHeartRate(Landroid/content/Intent;)I
    .registers 3

    .line 98
    const-string v0, "value"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 99
    if-lez v0, :cond_a

    .line 100
    return v0

    .line 102
    :cond_a
    const-string v0, "hr"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 103
    if-lez v0, :cond_13

    .line 104
    return v0

    .line 106
    :cond_13
    const-string v0, "heart"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 107
    if-lez v0, :cond_1c

    .line 108
    return v0

    .line 110
    :cond_1c
    const-string v0, "bpm"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 111
    if-lez p0, :cond_25

    move v1, p0

    :cond_25
    return v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 26
    if-nez p2, :cond_3

    .line 27
    return-void

    .line 29
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 30
    if-nez v0, :cond_a

    .line 31
    return-void

    .line 33
    :cond_a
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onRawEvent(Ljava/lang/String;)V

    .line 34
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;->isHeartRateAction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 35
    const-string v1, "nodomain.freeyourgadget.gadgetbridge.action.REALTIME_HR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 36
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;->deviceMatchesConfigured(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_22

    .line 37
    return-void

    .line 39
    :cond_22
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;->parseHeartRate(Landroid/content/Intent;)I

    move-result p1

    .line 40
    if-lez p1, :cond_34

    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_31

    .line 42
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onBandConnected()V

    .line 44
    :cond_31
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onHeartRate(ILjava/lang/String;)V

    .line 46
    :cond_34
    goto :goto_7d

    :cond_35
    const-string v1, "nodomain.freeyourgadget.gadgetbridge.BLUETOOTH_CONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 47
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;->deviceMatchesConfigured(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_7d

    .line 48
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onBandConnected()V

    goto :goto_7d

    .line 50
    :cond_47
    const-string v1, "nodomain.freeyourgadget.gadgetbridge.BLUETOOTH_DISCONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 51
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;->deviceMatchesConfigured(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_7d

    .line 52
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onBandDisconnected()V

    goto :goto_7d

    .line 54
    :cond_59
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;->isConnectedAction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_63

    .line 55
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onBandConnected()V

    goto :goto_7d

    .line 56
    :cond_63
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;->isDisconnectedAction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6d

    .line 57
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onBandDisconnected()V

    goto :goto_7d

    .line 58
    :cond_6d
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;->isBatteryAction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7d

    .line 59
    const/4 p1, -0x1

    const-string v0, "value"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onBattery(I)V

    .line 61
    :cond_7d
    :goto_7d
    return-void
.end method
