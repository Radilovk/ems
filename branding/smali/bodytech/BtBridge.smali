.class public final Lcom/isaigu/gymapp/bodytech/BtBridge;
.super Ljava/lang/Object;
.source "BtBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;,
        Lcom/isaigu/gymapp/bodytech/BtBridge$SlideAnchor;,
        Lcom/isaigu/gymapp/bodytech/BtBridge$Beat;,
        Lcom/isaigu/gymapp/bodytech/BtBridge$SlideEnd;,
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

.field private static final TAGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<[B",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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

    .line 73
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtBridge;->TAGS:Ljava/util/Map;

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

.method static synthetic access$100()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtBridge;->main:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/Map;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtBridge;->DEVS:Ljava/util/Map;

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

    .line 312
    :try_start_1
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 313
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

    .line 314
    if-eqz v0, :cond_1f

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->load(Landroid/content/Context;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1f} :catch_20

    .line 317
    :cond_1f
    :goto_1f
    return-object v0

    .line 316
    :catch_20
    move-exception v0

    move-object v0, v1

    .line 317
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
    .line 324
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtBridge;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v2

    .line 325
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtBridge;->DEVS:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    .line 326
    if-nez v0, :cond_1e

    .line 327
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtBridge;->app()Landroid/content/Context;

    .line 328
    new-instance v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;-><init>(Lcom/clj/fastble/data/BleDevice;)V

    .line 329
    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtBridge;->DEVS:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    :cond_1e
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->gattOf(Lcom/clj/fastble/data/BleDevice;)Ljava/lang/Object;

    move-result-object v2

    .line 334
    if-eqz v2, :cond_31

    .line 335
    iget-object v3, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->gatt:Ljava/lang/Object;

    if-eqz v3, :cond_2f

    iget-object v3, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->gatt:Ljava/lang/Object;

    if-eq v3, v2, :cond_2f

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->relink()V

    .line 336
    :cond_2f
    iput-object v2, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->gatt:Ljava/lang/Object;

    .line 338
    :cond_31
    iput-object p0, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->d:Lcom/clj/fastble/data/BleDevice;
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_35

    .line 339
    monitor-exit v1

    return-object v0

    .line 324
    :catchall_35
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static gattOf(Lcom/clj/fastble/data/BleDevice;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 344
    :try_start_0
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/clj/fastble/BleManager;->getBluetoothGatt(Lcom/clj/fastble/data/BleDevice;)Landroid/bluetooth/BluetoothGatt;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    .line 346
    :goto_8
    return-object v0

    .line 345
    :catch_9
    move-exception v0

    .line 346
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static declared-synchronized isBodytech(Lcom/clj/fastble/data/BleDevice;)Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 281
    const-class v3, Lcom/isaigu/gymapp/bodytech/BtBridge;

    monitor-enter v3

    :try_start_5
    invoke-virtual {p0}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_45

    move-result-object v4

    .line 282
    if-nez v4, :cond_d

    .line 292
    :cond_b
    :goto_b
    monitor-exit v3

    return v1

    .line 283
    :cond_d
    :try_start_d
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtBridge;->KIND:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 284
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_b

    .line 286
    :cond_1c
    invoke-virtual {p0}, Lcom/clj/fastble/data/BleDevice;->getScanRecord()[B

    move-result-object v5

    .line 287
    if-eqz v5, :cond_48

    const v0, 0xfe50

    invoke-static {v5, v0}, Lcom/isaigu/gymapp/bodytech/BtProto;->has16([BI)Z

    move-result v0

    if-eqz v0, :cond_48

    move v1, v2

    .line 290
    :cond_2c
    :goto_2c
    if-eqz v1, :cond_37

    invoke-static {v4}, Lcom/isaigu/gymapp/bodytech/BtBridge;->known(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    invoke-static {v4}, Lcom/isaigu/gymapp/bodytech/BtBridge;->remember(Ljava/lang/String;)V

    .line 291
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

    .line 281
    :catchall_45
    move-exception v0

    monitor-exit v3

    throw v0

    .line 288
    :cond_48
    if-eqz v5, :cond_53

    const v0, 0xfff0

    :try_start_4d
    invoke-static {v5, v0}, Lcom/isaigu/gymapp/bodytech/BtProto;->has16([BI)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 289
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
    .line 254
    const-class v2, Lcom/isaigu/gymapp/bodytech/BtBridge;

    monitor-enter v2

    if-nez p0, :cond_8

    const/4 v0, 0x0

    .line 258
    :goto_6
    monitor-exit v2

    return v0

    .line 255
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

    .line 256
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

    .line 258
    :cond_35
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->known(Ljava/lang/String;)Z
    :try_end_38
    .catchall {:try_start_8 .. :try_end_38} :catchall_3a

    move-result v0

    goto :goto_6

    .line 254
    :catchall_3a
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static known(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 296
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtBridge;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 297
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

.method public static legValue(Ljava/lang/String;[II)I
    .registers 9

    .prologue
    const/4 v2, -0x1

    .line 239
    if-nez p0, :cond_4

    .line 248
    :goto_3
    return v2

    .line 240
    :cond_4
    const/4 v1, 0x0

    .line 241
    :try_start_5
    const-class v3, Lcom/isaigu/gymapp/bodytech/BtBridge;

    monitor-enter v3
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_8} :catch_3a

    .line 242
    :try_start_8
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtBridge;->DEVS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    .line 243
    iget-object v5, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->d:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v5}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3e

    :goto_2a
    move-object v1, v0

    .line 244
    goto :goto_12

    .line 245
    :cond_2c
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_37

    .line 246
    if-eqz v1, :cond_3c

    :try_start_2f
    iget-object v0, v1, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    invoke-virtual {v0, p1, p2}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->legValue([II)I
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_34} :catch_3a

    move-result v0

    :goto_35
    move v2, v0

    goto :goto_3

    .line 245
    :catchall_37
    move-exception v0

    :try_start_38
    monitor-exit v3
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    :try_start_39
    throw v0
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_3a} :catch_3a

    .line 247
    :catch_3a
    move-exception v0

    goto :goto_3

    :cond_3c
    move v0, v2

    .line 246
    goto :goto_35

    :cond_3e
    move-object v0, v1

    goto :goto_2a
.end method

.method public static loadPercent(Lcom/clj/fastble/data/BleDevice;)I
    .registers 6

    .prologue
    const/4 v1, -0x1

    .line 221
    if-eqz p0, :cond_9

    :try_start_3
    invoke-virtual {p0}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    :cond_9
    move v0, v1

    .line 232
    :goto_a
    return v0

    .line 223
    :cond_b
    const-class v2, Lcom/isaigu/gymapp/bodytech/BtBridge;

    monitor-enter v2
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_e} :catch_22

    .line 224
    :try_start_e
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtBridge;->DEVS:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    .line 225
    monitor-exit v2

    .line 226
    if-nez v0, :cond_25

    move v0, v1

    goto :goto_a

    .line 225
    :catchall_1f
    move-exception v0

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_1f

    :try_start_21
    throw v0

    .line 231
    :catch_22
    move-exception v0

    move v0, v1

    .line 232
    goto :goto_a

    .line 227
    :cond_25
    monitor-enter v0
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_26} :catch_22

    .line 228
    :try_start_26
    iget-boolean v2, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->loading:Z

    if-nez v2, :cond_2d

    monitor-exit v0

    move v0, v1

    goto :goto_a

    .line 229
    :cond_2d
    iget v2, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->loadTotal:I

    if-gtz v2, :cond_35

    const/4 v2, 0x0

    :goto_32
    monitor-exit v0

    move v0, v2

    goto :goto_a

    :cond_35
    const/16 v2, 0x63

    iget v3, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->loadDone:I

    mul-int/lit8 v3, v3, 0x64

    iget v4, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->loadTotal:I

    div-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_32

    .line 230
    :catchall_43
    move-exception v2

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_26 .. :try_end_45} :catchall_43

    :try_start_45
    throw v2
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_46} :catch_22
.end method

.method public static phase(Lcom/clj/fastble/data/BleDevice;I)V
    .registers 3

    .prologue
    .line 68
    if-eqz p0, :cond_8

    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->isBodytech(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 70
    :cond_8
    :goto_8
    return-void

    .line 69
    :cond_9
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->dev(Lcom/clj/fastble/data/BleDevice;)Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    move-result-object v0

    iput p1, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->enqPhase:I

    goto :goto_8
.end method

.method private static prefs()Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 306
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtBridge;->app()Landroid/content/Context;

    move-result-object v0

    .line 307
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

.method public static program(Ljava/lang/String;[I[IIIIIIZ)Ljava/lang/String;
    .registers 20

    .prologue
    .line 192
    const/4 v1, 0x0

    .line 193
    :try_start_1
    const-class v2, Lcom/isaigu/gymapp/bodytech/BtBridge;

    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_3e

    .line 194
    :try_start_4
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtBridge;->DEVS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_94

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    .line 195
    if-eqz p0, :cond_28

    iget-object v4, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->d:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v4}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 196
    :cond_28
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v4

    iget-object v5, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->d:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v4, v5}, Lcom/clj/fastble/BleManager;->isConnected(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v4

    if-eqz v4, :cond_e

    move-object v10, v0

    .line 201
    :goto_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_4 .. :try_end_36} :catchall_3b

    .line 202
    if-nez v10, :cond_5a

    :try_start_38
    const-string v0, "no_suit"
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_3a} :catch_3e

    .line 211
    :goto_3a
    return-object v0

    .line 201
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

    .line 209
    :catch_3e
    move-exception v0

    .line 210
    const-string v1, "xems-bt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "program: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string v0, "no_suit"

    goto :goto_3a

    .line 203
    :cond_5a
    :try_start_5a
    iget-object v0, v10, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->training()Z

    move-result v0

    if-eqz v0, :cond_65

    const-string v0, "training"

    goto :goto_3a

    .line 204
    :cond_65
    invoke-virtual {v10}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->begin()V

    .line 205
    if-eqz p8, :cond_87

    iget-object v0, v10, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v9}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programOn([I[IIIIIIJ)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->add(Ljava/util/List;Lcom/clj/fastble/callback/BleWriteCallback;[BZ)V

    .line 208
    :goto_84
    const-string v0, "ok"

    goto :goto_3a

    .line 207
    :cond_87
    iget-object v0, v10, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testOff()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->add(Ljava/util/List;Lcom/clj/fastble/callback/BleWriteCallback;[BZ)V
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_93} :catch_3e

    goto :goto_84

    :cond_94
    move-object v10, v1

    goto :goto_35
.end method

.method private static remember(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 301
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtBridge;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 302
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

    .line 303
    :cond_25
    return-void
.end method

.method public static reply(Lcom/clj/fastble/data/BleDevice;[BLcom/isaigu/gymapp/train/listener/OnReceiveCommandListener;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    .line 264
    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    :try_start_5
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->isBodytech(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v1

    if-nez v1, :cond_d

    :cond_b
    const/4 v0, 0x0

    .line 270
    :cond_c
    :goto_c
    return v0

    .line 265
    :cond_d
    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtProto;->batteryRaw([B)I

    move-result v1

    .line 266
    if-lez v1, :cond_c

    if-eqz p2, :cond_c

    invoke-static {v1}, Lcom/isaigu/gymapp/bodytech/BtProto;->percent(I)I

    move-result v1

    invoke-interface {p2, v1}, Lcom/isaigu/gymapp/train/listener/OnReceiveCommandListener;->onReceiveBattery(I)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_1c} :catch_1d

    goto :goto_c

    .line 268
    :catch_1d
    move-exception v1

    .line 269
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

.method public static reset(Lcom/clj/fastble/data/BleDevice;)V
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 105
    if-eqz p0, :cond_9

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->isBodytech(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 117
    :cond_9
    :goto_9
    return-void

    .line 106
    :cond_a
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->dev(Lcom/clj/fastble/data/BleDevice;)Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->begin()V

    .line 108
    iget-object v1, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->ran()Z

    move-result v6

    .line 109
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtLoad;->cancel(Lcom/clj/fastble/data/BleDevice;)V

    .line 110
    iget-object v1, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed()Z

    move-result v7

    .line 111
    iget-object v1, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->reset()Ljava/util/List;

    move-result-object v1

    .line 112
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v7, :cond_34

    iget-object v7, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    invoke-virtual {v7}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed()Z

    move-result v7

    if-eqz v7, :cond_34

    const/4 v5, 0x1

    :cond_34
    invoke-virtual/range {v0 .. v5}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->add(Ljava/util/List;Lcom/clj/fastble/callback/BleWriteCallback;[BZZ)V

    .line 113
    if-eqz v6, :cond_9

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtBeep;->stop()V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3c} :catch_3d

    goto :goto_9

    .line 114
    :catch_3d
    move-exception v0

    .line 115
    const-string v1, "xems-bt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public static sending(Lcom/clj/fastble/data/BleDevice;[B)V
    .registers 6

    .prologue
    .line 91
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 100
    :cond_4
    :goto_4
    return-void

    .line 93
    :cond_5
    :try_start_5
    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtBridge;->TAGS:Ljava/util/Map;

    monitor-enter v1
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_8} :catch_27

    .line 94
    :try_start_8
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtBridge;->TAGS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 95
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_41

    .line 96
    if-eqz v0, :cond_4

    :try_start_13
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->isBodytech(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->dev(Lcom/clj/fastble/data/BleDevice;)Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase(I)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_26} :catch_27

    goto :goto_4

    .line 97
    :catch_27
    move-exception v0

    .line 98
    const-string v1, "xems-bt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sending: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 95
    :catchall_41
    move-exception v0

    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    :try_start_43
    throw v0
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_44} :catch_27
.end method

.method private static declared-synchronized startBeat()V
    .registers 6

    .prologue
    .line 556
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtBridge;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/isaigu/gymapp/bodytech/BtBridge;->beating:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_16

    if-eqz v0, :cond_9

    .line 559
    :goto_7
    monitor-exit v1

    return-void

    .line 557
    :cond_9
    const/4 v0, 0x1

    :try_start_a
    sput-boolean v0, Lcom/isaigu/gymapp/bodytech/BtBridge;->beating:Z

    .line 558
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtBridge;->main:Landroid/os/Handler;

    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtBridge;->BEAT:Lcom/isaigu/gymapp/bodytech/BtBridge$Beat;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_16

    goto :goto_7

    .line 556
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static tag(Lcom/clj/fastble/data/BleDevice;[B)V
    .registers 6

    .prologue
    .line 78
    if-eqz p0, :cond_a

    if-eqz p1, :cond_a

    :try_start_4
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->isBodytech(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 86
    :cond_a
    :goto_a
    return-void

    .line 79
    :cond_b
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->dev(Lcom/clj/fastble/data/BleDevice;)Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->enqPhase:I

    .line 80
    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtBridge;->TAGS:Ljava/util/Map;

    monitor-enter v1
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_14} :catch_22

    .line 81
    :try_start_14
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtBridge;->TAGS:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    monitor-exit v1

    goto :goto_a

    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_1f

    :try_start_21
    throw v0
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_22} :catch_22

    .line 83
    :catch_22
    move-exception v0

    .line 84
    const-string v1, "xems-bt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method public static test(Ljava/lang/String;IIIIIIIIZ)Ljava/lang/String;
    .registers 22

    .prologue
    .line 162
    const/4 v1, 0x0

    .line 163
    :try_start_1
    const-class v2, Lcom/isaigu/gymapp/bodytech/BtBridge;

    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_3d

    .line 164
    :try_start_4
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtBridge;->DEVS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_96

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    .line 165
    if-eqz p0, :cond_28

    iget-object v4, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->d:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v4}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 166
    :cond_28
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v4

    iget-object v5, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->d:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v4, v5}, Lcom/clj/fastble/BleManager;->isConnected(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 171
    :goto_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_3a

    .line 172
    if-nez v0, :cond_59

    :try_start_37
    const-string v0, "no_suit"
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_39} :catch_3d

    .line 181
    :goto_39
    return-object v0

    .line 171
    :catchall_3a
    move-exception v0

    :try_start_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    :try_start_3c
    throw v0
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3d} :catch_3d

    .line 179
    :catch_3d
    move-exception v0

    .line 180
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

    .line 181
    const-string v0, "no_suit"

    goto :goto_39

    .line 173
    :cond_59
    :try_start_59
    iget-object v1, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->training()Z

    move-result v1

    if-eqz v1, :cond_64

    const-string v0, "training"

    goto :goto_39

    .line 174
    :cond_64
    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->begin()V

    .line 175
    if-eqz p9, :cond_89

    iget-object v1, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v11}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testOn(IIIIIIIIJ)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->add(Ljava/util/List;Lcom/clj/fastble/callback/BleWriteCallback;[BZ)V

    .line 178
    :goto_86
    const-string v0, "ok"

    goto :goto_39

    .line 177
    :cond_89
    iget-object v1, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testOff()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->add(Ljava/util/List;Lcom/clj/fastble/callback/BleWriteCallback;[BZ)V
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_95} :catch_3d

    goto :goto_86

    :cond_96
    move-object v0, v1

    goto :goto_34
.end method

.method public static test(Ljava/lang/String;IIIIIZZ)Ljava/lang/String;
    .registers 18

    .prologue
    .line 155
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v9, p7

    invoke-static/range {v0 .. v9}, Lcom/isaigu/gymapp/bodytech/BtBridge;->test(Ljava/lang/String;IIIIIIIIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static write(Lcom/clj/fastble/data/BleDevice;[BLcom/clj/fastble/callback/BleWriteCallback;)Z
    .registers 15

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 126
    if-eqz p0, :cond_a

    if-eqz p1, :cond_a

    :try_start_6
    array-length v0, p1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_c

    :cond_a
    move v0, v8

    .line 145
    :goto_b
    return v0

    .line 127
    :cond_c
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x36

    if-ne v0, v1, :cond_17

    move v0, v8

    goto :goto_b

    .line 128
    :cond_17
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->isBodytech(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v0

    if-nez v0, :cond_1f

    move v0, v8

    goto :goto_b

    .line 129
    :cond_1f
    array-length v0, p1

    add-int/lit8 v0, v0, -0x4

    new-array v1, v0, [B

    .line 130
    const/4 v0, 0x3

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->dev(Lcom/clj/fastble/data/BleDevice;)Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->begin()V

    .line 133
    iget-object v2, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed()Z

    move-result v10

    .line 134
    iget-object v2, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed()Z

    move-result v2

    .line 135
    iget-object v3, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    const/4 v4, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v3, v4, v1, v6, v7}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->command(I[BJ)Ljava/util/List;

    move-result-object v1

    .line 136
    const/4 v4, 0x0

    if-nez v2, :cond_8a

    iget-object v2, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed()Z

    move-result v2

    if-eqz v2, :cond_8a

    move v5, v9

    :goto_58
    move-object v2, p2

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->add(Ljava/util/List;Lcom/clj/fastble/callback/BleWriteCallback;[BZZ)V

    .line 137
    iget-object v1, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->takeSlide()[J

    move-result-object v1

    .line 138
    if-eqz v1, :cond_7b

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/isaigu/gymapp/bodytech/BtBridge$SlideAnchor;

    const/4 v3, 0x1

    aget-wide v4, v1, v3

    const/4 v3, 0x0

    aget-wide v6, v1, v3

    move-object v3, v0

    invoke-direct/range {v2 .. v7}, Lcom/isaigu/gymapp/bodytech/BtBridge$SlideAnchor;-><init>(Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;JJ)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v11, v2, v1, v3}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->add(Ljava/util/List;Lcom/clj/fastble/callback/BleWriteCallback;[BZ)V

    .line 139
    :cond_7b
    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed()Z

    move-result v0

    .line 140
    if-nez v10, :cond_8c

    if-eqz v0, :cond_8c

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtBeep;->start()V

    :cond_88
    :goto_88
    move v0, v9

    .line 142
    goto :goto_b

    :cond_8a
    move v5, v8

    .line 136
    goto :goto_58

    .line 141
    :cond_8c
    if-eqz v10, :cond_88

    if-nez v0, :cond_88

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtBeep;->pause()V
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_93} :catch_94

    goto :goto_88

    .line 143
    :catch_94
    move-exception v0

    .line 144
    const-string v1, "xems-bt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "write: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 145
    goto/16 :goto_b
.end method
