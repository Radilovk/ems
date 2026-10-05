.class public final Lcom/isaigu/gymapp/bodytech/BtBridge;
.super Ljava/lang/Object;
.source "BtBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;,
        Lcom/isaigu/gymapp/bodytech/BtBridge$Beat;,
        Lcom/isaigu/gymapp/bodytech/BtBridge$Ack;,
        Lcom/isaigu/gymapp/bodytech/BtBridge$Item;
    }
.end annotation


# static fields
.field private static final BEAT:Lcom/isaigu/gymapp/bodytech/BtBridge$Beat;

.field static final CHR:Ljava/lang/String; = "0000fe51-0000-1000-8000-00805f9b34fb"

.field private static final DEVS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;",
            ">;"
        }
    .end annotation
.end field

.field private static final KIND:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static final SVC:Ljava/lang/String; = "0000fe50-0000-1000-8000-00805f9b34fb"

.field static final SYNC_EVERY_MS:J = 0x1194L

.field static final TAG:Ljava/lang/String; = "xems-bt"

.field static final TICK_MS:J = 0x1f4L

.field private static beating:Z

.field private static config:Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;

.field private static final main:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtBridge;->main:Landroid/os/Handler;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtBridge;->KIND:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtBridge;->DEVS:Ljava/util/Map;

    .line 48
    new-instance v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Beat;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bodytech/BtBridge$Beat;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtBridge;->BEAT:Lcom/isaigu/gymapp/bodytech/BtBridge$Beat;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .registers 0

    .prologue
    .line 34
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtBridge;->startBeat()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/Map;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtBridge;->DEVS:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtBridge;->main:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .registers 1

    .prologue
    .line 34
    sput-boolean p0, Lcom/isaigu/gymapp/bodytech/BtBridge;->beating:Z

    return p0
.end method

.method static app()Landroid/content/Context;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 176
    :try_start_1
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 177
    const-string v2, "currentApplication"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 178
    if-eqz v0, :cond_1f

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->load(Landroid/content/Context;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1f} :catch_20

    .line 181
    :cond_1f
    :goto_1f
    return-object v0

    .line 180
    :catch_20
    move-exception v0

    move-object v0, v1

    .line 181
    goto :goto_1f
.end method

.method public static declared-synchronized config(Lcom/clj/fastble/data/BleDevice;)Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;
    .registers 7

    .prologue
    .line 54
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtBridge;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->isBodytech(Lcom/clj/fastble/data/BleDevice;)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_22

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    .line 56
    :goto_a
    monitor-exit v1

    return-object v0

    .line 55
    :cond_c
    :try_start_c
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtBridge;->config:Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;

    if-nez v0, :cond_1f

    new-instance v0, Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;

    const-string v2, "ems"

    const-string v3, "0000fe50-0000-1000-8000-00805f9b34fb"

    const-string v4, "0000fe51-0000-1000-8000-00805f9b34fb"

    const-string v5, "0000fe51-0000-1000-8000-00805f9b34fb"

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtBridge;->config:Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;

    .line 56
    :cond_1f
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtBridge;->config:Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_22

    goto :goto_a

    .line 54
    :catchall_22
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized dev(Lcom/clj/fastble/data/BleDevice;)Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;
    .registers 5

    .prologue
    .line 188
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtBridge;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v2

    .line 189
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtBridge;->DEVS:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    .line 190
    if-nez v0, :cond_1e

    .line 191
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtBridge;->app()Landroid/content/Context;

    .line 192
    new-instance v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;-><init>(Lcom/clj/fastble/data/BleDevice;)V

    .line 193
    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtBridge;->DEVS:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_1e
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->gattOf(Lcom/clj/fastble/data/BleDevice;)Ljava/lang/Object;

    move-result-object v2

    .line 198
    if-eqz v2, :cond_31

    .line 199
    iget-object v3, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->gatt:Ljava/lang/Object;

    if-eqz v3, :cond_2f

    iget-object v3, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->gatt:Ljava/lang/Object;

    if-eq v3, v2, :cond_2f

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->relink()V

    .line 200
    :cond_2f
    iput-object v2, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->gatt:Ljava/lang/Object;

    .line 202
    :cond_31
    iput-object p0, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->d:Lcom/clj/fastble/data/BleDevice;
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_35

    .line 203
    monitor-exit v1

    return-object v0

    .line 188
    :catchall_35
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static gattOf(Lcom/clj/fastble/data/BleDevice;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 208
    :try_start_0
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/clj/fastble/BleManager;->getBluetoothGatt(Lcom/clj/fastble/data/BleDevice;)Landroid/bluetooth/BluetoothGatt;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    .line 210
    :goto_8
    return-object v0

    .line 209
    :catch_9
    move-exception v0

    .line 210
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static declared-synchronized isBodytech(Lcom/clj/fastble/data/BleDevice;)Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 145
    const-class v3, Lcom/isaigu/gymapp/bodytech/BtBridge;

    monitor-enter v3

    :try_start_5
    invoke-virtual {p0}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_45

    move-result-object v4

    .line 146
    if-nez v4, :cond_d

    .line 156
    :cond_b
    :goto_b
    monitor-exit v3

    return v1

    .line 147
    :cond_d
    :try_start_d
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtBridge;->KIND:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 148
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_b

    .line 150
    :cond_1c
    invoke-virtual {p0}, Lcom/clj/fastble/data/BleDevice;->getScanRecord()[B

    move-result-object v5

    .line 151
    if-eqz v5, :cond_48

    const v0, 0xfe50

    invoke-static {v5, v0}, Lcom/isaigu/gymapp/bodytech/BtProto;->has16([BI)Z

    move-result v0

    if-eqz v0, :cond_48

    move v1, v2

    .line 154
    :cond_2c
    :goto_2c
    if-eqz v1, :cond_37

    invoke-static {v4}, Lcom/isaigu/gymapp/bodytech/BtBridge;->known(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    invoke-static {v4}, Lcom/isaigu/gymapp/bodytech/BtBridge;->remember(Ljava/lang/String;)V

    .line 155
    :cond_37
    if-nez v5, :cond_3b

    if-eqz v1, :cond_b

    :cond_3b
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtBridge;->KIND:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_d .. :try_end_44} :catchall_45

    goto :goto_b

    .line 145
    :catchall_45
    move-exception v0

    monitor-exit v3

    throw v0

    .line 152
    :cond_48
    if-eqz v5, :cond_53

    const v0, 0xfff0

    :try_start_4d
    invoke-static {v5, v0}, Lcom/isaigu/gymapp/bodytech/BtProto;->has16([BI)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 153
    :cond_53
    invoke-virtual {p0}, Lcom/clj/fastble/data/BleDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtProto;->nameIsBodytech(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_63

    invoke-static {v4}, Lcom/isaigu/gymapp/bodytech/BtBridge;->known(Ljava/lang/String;)Z
    :try_end_60
    .catchall {:try_start_4d .. :try_end_60} :catchall_45

    move-result v0

    if-eqz v0, :cond_66

    :cond_63
    move v0, v2

    :goto_64
    move v1, v0

    goto :goto_2c

    :cond_66
    move v0, v1

    goto :goto_64
.end method

.method public static declared-synchronized isBodytechMac(Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 118
    const-class v2, Lcom/isaigu/gymapp/bodytech/BtBridge;

    monitor-enter v2

    if-nez p0, :cond_8

    const/4 v0, 0x0

    .line 122
    :goto_6
    monitor-exit v2

    return v0

    .line 119
    :cond_8
    :try_start_8
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtBridge;->KIND:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 120
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_6

    .line 122
    :cond_35
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->known(Ljava/lang/String;)Z
    :try_end_38
    .catchall {:try_start_8 .. :try_end_38} :catchall_3a

    move-result v0

    goto :goto_6

    .line 118
    :catchall_3a
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static known(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 160
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtBridge;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 161
    if-eqz v1, :cond_21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mac_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v0, 0x1

    :cond_21
    return v0
.end method

.method public static phase(Lcom/clj/fastble/data/BleDevice;I)V
    .registers 3

    .prologue
    .line 61
    if-eqz p0, :cond_8

    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->isBodytech(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 63
    :cond_8
    :goto_8
    return-void

    .line 62
    :cond_9
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->dev(Lcom/clj/fastble/data/BleDevice;)Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase(I)V

    goto :goto_8
.end method

.method private static prefs()Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 170
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtBridge;->app()Landroid/content/Context;

    move-result-object v0

    .line 171
    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    const-string v1, "xems_bodytech_suits"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_7
.end method

.method private static remember(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 165
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtBridge;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_25

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mac_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 167
    :cond_25
    return-void
.end method

.method public static reply(Lcom/clj/fastble/data/BleDevice;[BLcom/isaigu/gymapp/train/listener/OnReceiveCommandListener;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    .line 128
    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    :try_start_5
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->isBodytech(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v1

    if-nez v1, :cond_d

    :cond_b
    const/4 v0, 0x0

    .line 134
    :cond_c
    :goto_c
    return v0

    .line 129
    :cond_d
    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtProto;->batteryRaw([B)I

    move-result v1

    .line 130
    if-lez v1, :cond_c

    if-eqz p2, :cond_c

    invoke-static {v1}, Lcom/isaigu/gymapp/bodytech/BtProto;->percent(I)I

    move-result v1

    invoke-interface {p2, v1}, Lcom/isaigu/gymapp/train/listener/OnReceiveCommandListener;->onReceiveBattery(I)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_1c} :catch_1d

    goto :goto_c

    .line 132
    :catch_1d
    move-exception v1

    .line 133
    const-string v2, "xems-bt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reply: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method private static declared-synchronized startBeat()V
    .registers 6

    .prologue
    .line 344
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtBridge;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/isaigu/gymapp/bodytech/BtBridge;->beating:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_16

    if-eqz v0, :cond_9

    .line 347
    :goto_7
    monitor-exit v1

    return-void

    .line 345
    :cond_9
    const/4 v0, 0x1

    :try_start_a
    sput-boolean v0, Lcom/isaigu/gymapp/bodytech/BtBridge;->beating:Z

    .line 346
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtBridge;->main:Landroid/os/Handler;

    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtBridge;->BEAT:Lcom/isaigu/gymapp/bodytech/BtBridge$Beat;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_16

    goto :goto_7

    .line 344
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static test(Ljava/lang/String;IIIIIZ)Ljava/lang/String;
    .registers 16

    .prologue
    const/4 v1, 0x0

    .line 94
    .line 95
    :try_start_1
    const-class v2, Lcom/isaigu/gymapp/bodytech/BtBridge;

    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_3e

    .line 96
    :try_start_4
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtBridge;->DEVS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    .line 97
    if-eqz p0, :cond_28

    iget-object v4, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->d:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v4}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 98
    :cond_28
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v4

    iget-object v5, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->d:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v4, v5}, Lcom/clj/fastble/BleManager;->isConnected(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v4

    if-eqz v4, :cond_e

    move-object v8, v0

    .line 103
    :goto_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_4 .. :try_end_36} :catchall_3b

    .line 104
    if-nez v8, :cond_5a

    :try_start_38
    const-string v0, "no_suit"
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_3a} :catch_3e

    .line 112
    :goto_3a
    return-object v0

    .line 103
    :catchall_3b
    move-exception v0

    :try_start_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    :try_start_3d
    throw v0
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3e} :catch_3e

    .line 110
    :catch_3e
    move-exception v0

    .line 111
    const-string v1, "xems-bt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "test: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string v0, "no_suit"

    goto :goto_3a

    .line 105
    :cond_5a
    :try_start_5a
    iget-object v0, v8, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->training()Z

    move-result v0

    if-eqz v0, :cond_65

    const-string v0, "training"

    goto :goto_3a

    .line 106
    :cond_65
    invoke-virtual {v8}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->begin()V

    .line 107
    if-eqz p6, :cond_82

    iget-object v0, v8, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testOn(IIIIIJ)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->add(Ljava/util/List;Lcom/clj/fastble/callback/BleWriteCallback;[BZ)V

    .line 109
    :goto_7f
    const-string v0, "ok"

    goto :goto_3a

    .line 108
    :cond_82
    iget-object v0, v8, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testOff()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->add(Ljava/util/List;Lcom/clj/fastble/callback/BleWriteCallback;[BZ)V
    :try_end_8e
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_8e} :catch_3e

    goto :goto_7f

    :cond_8f
    move-object v8, v1

    goto :goto_35
.end method

.method public static write(Lcom/clj/fastble/data/BleDevice;[BLcom/clj/fastble/callback/BleWriteCallback;)Z
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 72
    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    :try_start_5
    array-length v1, p1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_a

    .line 83
    :cond_9
    :goto_9
    return v0

    .line 73
    :cond_a
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x36

    if-eq v1, v2, :cond_9

    .line 74
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->isBodytech(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 75
    array-length v1, p1

    add-int/lit8 v1, v1, -0x4

    new-array v1, v1, [B

    .line 76
    const/4 v2, 0x3

    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {p1, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->dev(Lcom/clj/fastble/data/BleDevice;)Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    move-result-object v2

    .line 78
    invoke-virtual {v2}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->begin()V

    .line 79
    iget-object v3, v2, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    const/4 v4, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v3, v4, v1, v6, v7}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->command(I[BJ)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, p2, p1, v3}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->add(Ljava/util/List;Lcom/clj/fastble/callback/BleWriteCallback;[BZ)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_3e} :catch_40

    .line 80
    const/4 v0, 0x1

    goto :goto_9

    .line 81
    :catch_40
    move-exception v1

    .line 82
    const-string v2, "xems-bt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method
