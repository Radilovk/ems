.class public final Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotifyHrReceiver.java"


# static fields
.field public static final ACTION_GB_CONNECTED:Ljava/lang/String; = "nodomain.freeyourgadget.gadgetbridge.BLUETOOTH_CONNECTED"

.field public static final ACTION_GB_DISCONNECTED:Ljava/lang/String; = "nodomain.freeyourgadget.gadgetbridge.BLUETOOTH_DISCONNECTED"

.field public static final ACTION_GB_REALTIME_HR:Ljava/lang/String; = "nodomain.freeyourgadget.gadgetbridge.action.REALTIME_HR"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static deviceMatchesConfigured(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 4

    .line 47
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 48
    const/4 v0, 0x1

    if-eqz p0, :cond_30

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_12

    goto :goto_30

    .line 51
    :cond_12
    const-string v1, "device"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    if-nez v1, :cond_20

    .line 53
    const-string v1, "EXTRA_DEVICE_ADDRESS"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    :cond_20
    if-nez v1, :cond_23

    .line 56
    return v0

    .line 58
    :cond_23
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->normalizeMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 59
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->normalizeMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 58
    return p0

    .line 49
    :cond_30
    :goto_30
    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 18
    if-nez p2, :cond_3

    .line 19
    return-void

    .line 21
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 22
    if-nez v0, :cond_a

    .line 23
    return-void

    .line 25
    :cond_a
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onRawEvent(Ljava/lang/String;)V

    .line 26
    const-string v1, "nodomain.freeyourgadget.gadgetbridge.action.REALTIME_HR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 27
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;->deviceMatchesConfigured(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_1c

    .line 28
    return-void

    .line 30
    :cond_1c
    const/4 p1, -0x1

    const-string v1, "hr"

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 31
    if-lez p1, :cond_2b

    .line 32
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onBandConnected()V

    .line 33
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onHeartRate(ILjava/lang/String;)V

    .line 35
    :cond_2b
    goto :goto_4f

    :cond_2c
    const-string v1, "nodomain.freeyourgadget.gadgetbridge.BLUETOOTH_CONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 36
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;->deviceMatchesConfigured(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 37
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onBandConnected()V

    goto :goto_4f

    .line 39
    :cond_3e
    const-string v1, "nodomain.freeyourgadget.gadgetbridge.BLUETOOTH_DISCONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 40
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;->deviceMatchesConfigured(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 41
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onBandDisconnected()V

    .line 44
    :cond_4f
    :goto_4f
    return-void
.end method
