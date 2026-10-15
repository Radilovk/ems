.class public final Lcom/isaigu/gymapp/bodytech/WiBridge;
.super Ljava/lang/Object;
.source "WiBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;,
        Lcom/isaigu/gymapp/bodytech/WiBridge$Setup;,
        Lcom/isaigu/gymapp/bodytech/WiBridge$Beat;,
        Lcom/isaigu/gymapp/bodytech/WiBridge$RunNotify;,
        Lcom/isaigu/gymapp/bodytech/WiBridge$Read;,
        Lcom/isaigu/gymapp/bodytech/WiBridge$Ack;,
        Lcom/isaigu/gymapp/bodytech/WiBridge$Item;
    }
.end annotation


# static fields
.field private static final BEAT:Lcom/isaigu/gymapp/bodytech/WiBridge$Beat;

.field private static final DEVS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;",
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

.field static final LINK_SETUP_MS:J = 0x5dcL

.field static final TAG:Ljava/lang/String; = "xems-wiems"

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

    sput-object v0, Lcom/isaigu/gymapp/bodytech/WiBridge;->main:Landroid/os/Handler;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/bodytech/WiBridge;->KIND:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/bodytech/WiBridge;->DEVS:Ljava/util/Map;

    .line 48
    new-instance v0, Lcom/isaigu/gymapp/bodytech/WiBridge$Beat;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bodytech/WiBridge$Beat;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/bodytech/WiBridge;->BEAT:Lcom/isaigu/gymapp/bodytech/WiBridge$Beat;

    .line 49
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/bodytech/WiBridge;->TAGS:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/isaigu/gymapp/bodytech/WiBridge;->DEVS:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/isaigu/gymapp/bodytech/WiBridge;->main:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .registers 1

    .prologue
    .line 36
    sput-boolean p0, Lcom/isaigu/gymapp/bodytech/WiBridge;->beating:Z

    return p0
.end method

.method public static armForStart(Lcom/clj/fastble/data/BleDevice;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 149
    if-eqz p0, :cond_9

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/WiBridge;->isWiems(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 159
    :cond_9
    :goto_9
    return v0

    .line 150
    :cond_a
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/WiBridge;->dev(Lcom/clj/fastble/data/BleDevice;)Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;

    move-result-object v1

    .line 151
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 152
    iget-object v4, v1, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/WiTranslator;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/bodytech/WiTranslator;->running()Z

    move-result v4

    if-eqz v4, :cond_22

    iget-object v4, v1, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/WiTranslator;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/bodytech/WiTranslator;->counting()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 153
    :cond_22
    iget-object v4, v1, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/WiTranslator;

    invoke-virtual {v4, v2, v3}, Lcom/isaigu/gymapp/bodytech/WiTranslator;->arm(J)Ljava/util/List;

    move-result-object v2

    .line 154
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_33

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->add(Ljava/util/List;Lcom/clj/fastble/callback/BleWriteCallback;[B)V

    .line 155
    :cond_33
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/WiBridge;->startBeat()V

    .line 156
    iget-object v1, v1, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/WiTranslator;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bodytech/WiTranslator;->counting()Z
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3b} :catch_3d

    move-result v0

    goto :goto_9

    .line 157
    :catch_3d
    move-exception v1

    .line 158
    const-string v2, "xems-wiems"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "arm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public static declared-synchronized config(Lcom/clj/fastble/data/BleDevice;)Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;
    .registers 7

    .prologue
    .line 94
    const-class v1, Lcom/isaigu/gymapp/bodytech/WiBridge;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/WiBridge;->isWiems(Lcom/clj/fastble/data/BleDevice;)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_22

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    .line 97
    :goto_a
    monitor-exit v1

    return-object v0

    .line 95
    :cond_c
    :try_start_c
    sget-object v0, Lcom/isaigu/gymapp/bodytech/WiBridge;->config:Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;

    if-nez v0, :cond_1f

    new-instance v0, Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;

    const-string v2, "ems"

    const-string v3, "0000180f-0000-1000-8000-00805f9b34fb"

    const-string v4, "00002a19-0000-1000-8000-00805f9b34fb"

    const-string v5, "00002a19-0000-1000-8000-00805f9b34fb"

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/isaigu/gymapp/bodytech/WiBridge;->config:Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;

    .line 97
    :cond_1f
    sget-object v0, Lcom/isaigu/gymapp/bodytech/WiBridge;->config:Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_22

    goto :goto_a

    .line 94
    :catchall_22
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized dev(Lcom/clj/fastble/data/BleDevice;)Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;
    .registers 5

    .prologue
    .line 239
    const-class v1, Lcom/isaigu/gymapp/bodytech/WiBridge;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/isaigu/gymapp/bodytech/WiBridge;->DEVS:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;

    .line 240
    if-nez v0, :cond_1f

    .line 241
    new-instance v0, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;-><init>(Lcom/clj/fastble/data/BleDevice;)V

    .line 242
    sget-object v2, Lcom/isaigu/gymapp/bodytech/WiBridge;->DEVS:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_1f
    iput-object p0, v0, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->d:Lcom/clj/fastble/data/BleDevice;
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_23

    .line 245
    monitor-exit v1

    return-object v0

    .line 239
    :catchall_23
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static dropped(Lcom/clj/fastble/data/BleDevice;)V
    .registers 5

    .prologue
    .line 225
    if-eqz p0, :cond_8

    :try_start_2
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/WiBridge;->isWiems(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 234
    :cond_8
    :goto_8
    return-void

    .line 227
    :cond_9
    const-class v1, Lcom/isaigu/gymapp/bodytech/WiBridge;

    monitor-enter v1
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_c} :catch_20

    .line 228
    :try_start_c
    sget-object v0, Lcom/isaigu/gymapp/bodytech/WiBridge;->DEVS:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;

    .line 229
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_3a

    .line 230
    if-eqz v0, :cond_8

    const/4 v1, 0x0

    :try_start_1c
    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->fail(Lcom/clj/fastble/exception/BleException;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1f} :catch_20

    goto :goto_8

    .line 231
    :catch_20
    move-exception v0

    .line 232
    const-string v1, "xems-wiems"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dropped: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 229
    :catchall_3a
    move-exception v0

    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    :try_start_3c
    throw v0
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3d} :catch_20
.end method

.method public static declared-synchronized isWiems(Lcom/clj/fastble/data/BleDevice;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 55
    const-class v2, Lcom/isaigu/gymapp/bodytech/WiBridge;

    monitor-enter v2

    if-eqz p0, :cond_c

    :try_start_6
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/SuitStandard;->unlocked()Z
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_50

    move-result v0

    if-nez v0, :cond_f

    :cond_c
    move v0, v1

    .line 64
    :cond_d
    :goto_d
    monitor-exit v2

    return v0

    .line 56
    :cond_f
    :try_start_f
    invoke-virtual {p0}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v3

    .line 57
    if-nez v3, :cond_17

    move v0, v1

    goto :goto_d

    .line 58
    :cond_17
    sget-object v0, Lcom/isaigu/gymapp/bodytech/WiBridge;->KIND:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 59
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_d

    .line 60
    :cond_26
    invoke-virtual {p0}, Lcom/clj/fastble/data/BleDevice;->getName()Ljava/lang/String;

    move-result-object v4

    .line 61
    invoke-static {v4}, Lcom/isaigu/gymapp/bodytech/WiProto;->nameIsWiems(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    invoke-static {v3}, Lcom/isaigu/gymapp/bodytech/WiBridge;->known(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    :cond_36
    const/4 v0, 0x1

    .line 62
    :goto_37
    if-eqz v0, :cond_42

    invoke-static {v3}, Lcom/isaigu/gymapp/bodytech/WiBridge;->known(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_42

    invoke-static {v3}, Lcom/isaigu/gymapp/bodytech/WiBridge;->remember(Ljava/lang/String;)V

    .line 63
    :cond_42
    if-nez v4, :cond_46

    if-eqz v0, :cond_d

    :cond_46
    sget-object v1, Lcom/isaigu/gymapp/bodytech/WiBridge;->KIND:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4f
    .catchall {:try_start_f .. :try_end_4f} :catchall_50

    goto :goto_d

    .line 55
    :catchall_50
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_53
    move v0, v1

    .line 61
    goto :goto_37
.end method

.method public static declared-synchronized isWiemsMac(Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 68
    const-class v2, Lcom/isaigu/gymapp/bodytech/WiBridge;

    monitor-enter v2

    if-eqz p0, :cond_b

    :try_start_5
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/SuitStandard;->unlocked()Z
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_40

    move-result v0

    if-nez v0, :cond_e

    :cond_b
    const/4 v0, 0x0

    .line 72
    :goto_c
    monitor-exit v2

    return v0

    .line 69
    :cond_e
    :try_start_e
    sget-object v0, Lcom/isaigu/gymapp/bodytech/WiBridge;->KIND:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 70
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_c

    .line 72
    :cond_3b
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/WiBridge;->known(Ljava/lang/String;)Z
    :try_end_3e
    .catchall {:try_start_e .. :try_end_3e} :catchall_40

    move-result v0

    goto :goto_c

    .line 68
    :catchall_40
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static known(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/WiBridge;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 77
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

.method public static linked(Lcom/clj/fastble/data/BleDevice;)V
    .registers 7

    .prologue
    .line 213
    if-eqz p0, :cond_8

    :try_start_2
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/WiBridge;->isWiems(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 221
    :cond_8
    :goto_8
    return-void

    .line 214
    :cond_9
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/WiBridge;->dev(Lcom/clj/fastble/data/BleDevice;)Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->relink()V

    .line 216
    const-string v1, "suit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "linked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " wiems"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    sget-object v1, Lcom/isaigu/gymapp/bodytech/WiBridge;->main:Landroid/os/Handler;

    new-instance v2, Lcom/isaigu/gymapp/bodytech/WiBridge$Setup;

    invoke-direct {v2, v0}, Lcom/isaigu/gymapp/bodytech/WiBridge$Setup;-><init>(Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;)V

    const-wide/16 v4, 0x5dc

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_3e} :catch_3f

    goto :goto_8

    .line 218
    :catch_3f
    move-exception v0

    .line 219
    const-string v1, "xems-wiems"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "linked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public static loadPercent(Lcom/clj/fastble/data/BleDevice;)I
    .registers 5

    .prologue
    const/4 v0, -0x1

    .line 166
    if-eqz p0, :cond_9

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/WiBridge;->isWiems(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 169
    :cond_9
    :goto_9
    return v0

    .line 167
    :cond_a
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/WiBridge;->dev(Lcom/clj/fastble/data/BleDevice;)Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/WiTranslator;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/isaigu/gymapp/bodytech/WiTranslator;->countdownPercent(J)I
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_17} :catch_19

    move-result v0

    goto :goto_9

    .line 168
    :catch_19
    move-exception v1

    goto :goto_9
.end method

.method public static phase(Lcom/clj/fastble/data/BleDevice;I)V
    .registers 3

    .prologue
    .line 101
    if-eqz p0, :cond_8

    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/WiBridge;->isWiems(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 103
    :cond_8
    :goto_8
    return-void

    .line 102
    :cond_9
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/WiBridge;->dev(Lcom/clj/fastble/data/BleDevice;)Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;

    move-result-object v0

    iput p1, v0, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->enqPhase:I

    goto :goto_8
.end method

.method private static prefs()Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 86
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtBridge;->app()Landroid/content/Context;

    move-result-object v0

    .line 87
    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    const-string v1, "xems_wiems_units"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_7
.end method

.method private static remember(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 81
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/WiBridge;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 82
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

    .line 83
    :cond_25
    return-void
.end method

.method public static reply(Lcom/clj/fastble/data/BleDevice;[BLcom/isaigu/gymapp/train/listener/OnReceiveCommandListener;)Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 199
    if-eqz p0, :cond_a

    :try_start_4
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/WiBridge;->isWiems(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_a
    move v0, v1

    .line 206
    :cond_b
    :goto_b
    return v0

    .line 200
    :cond_c
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/WiBridge;->dev(Lcom/clj/fastble/data/BleDevice;)Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;

    move-result-object v1

    .line 201
    if-eqz p2, :cond_14

    iput-object p2, v1, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->listener:Lcom/isaigu/gymapp/train/listener/OnReceiveCommandListener;

    .line 202
    :cond_14
    if-eqz p1, :cond_b

    array-length v1, p1

    if-ne v1, v0, :cond_b

    if-eqz p2, :cond_b

    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    invoke-interface {p2, v1}, Lcom/isaigu/gymapp/train/listener/OnReceiveCommandListener;->onReceiveBattery(I)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_23} :catch_24

    goto :goto_b

    .line 204
    :catch_24
    move-exception v1

    .line 205
    const-string v2, "xems-wiems"

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

    goto :goto_b
.end method

.method public static reset(Lcom/clj/fastble/data/BleDevice;)V
    .registers 5

    .prologue
    .line 133
    if-eqz p0, :cond_8

    :try_start_2
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/WiBridge;->isWiems(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 141
    :cond_8
    :goto_8
    return-void

    .line 134
    :cond_9
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtLoad;->cancel(Lcom/clj/fastble/data/BleDevice;)V

    .line 135
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/WiBridge;->dev(Lcom/clj/fastble/data/BleDevice;)Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;

    move-result-object v0

    .line 136
    iget-object v1, v0, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/WiTranslator;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bodytech/WiTranslator;->reset()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->add(Ljava/util/List;Lcom/clj/fastble/callback/BleWriteCallback;[B)V

    .line 137
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/WiBridge;->startBeat()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1e} :catch_1f

    goto :goto_8

    .line 138
    :catch_1f
    move-exception v0

    .line 139
    const-string v1, "xems-wiems"

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

    goto :goto_8
.end method

.method public static sending(Lcom/clj/fastble/data/BleDevice;[B)V
    .registers 6

    .prologue
    .line 119
    if-eqz p0, :cond_a

    if-eqz p1, :cond_a

    :try_start_4
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/WiBridge;->isWiems(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 128
    :cond_a
    :goto_a
    return-void

    .line 121
    :cond_b
    sget-object v1, Lcom/isaigu/gymapp/bodytech/WiBridge;->TAGS:Ljava/util/Map;

    monitor-enter v1
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_e} :catch_27

    .line 122
    :try_start_e
    sget-object v0, Lcom/isaigu/gymapp/bodytech/WiBridge;->TAGS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 123
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_41

    .line 124
    if-eqz v0, :cond_a

    :try_start_19
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/WiBridge;->dev(Lcom/clj/fastble/data/BleDevice;)Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/WiTranslator;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/bodytech/WiTranslator;->phase(I)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_26} :catch_27

    goto :goto_a

    .line 125
    :catch_27
    move-exception v0

    .line 126
    const-string v1, "xems-wiems"

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

    goto :goto_a

    .line 123
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
    .line 447
    const-class v1, Lcom/isaigu/gymapp/bodytech/WiBridge;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/isaigu/gymapp/bodytech/WiBridge;->beating:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_16

    if-eqz v0, :cond_9

    .line 450
    :goto_7
    monitor-exit v1

    return-void

    .line 448
    :cond_9
    const/4 v0, 0x1

    :try_start_a
    sput-boolean v0, Lcom/isaigu/gymapp/bodytech/WiBridge;->beating:Z

    .line 449
    sget-object v0, Lcom/isaigu/gymapp/bodytech/WiBridge;->main:Landroid/os/Handler;

    sget-object v2, Lcom/isaigu/gymapp/bodytech/WiBridge;->BEAT:Lcom/isaigu/gymapp/bodytech/WiBridge$Beat;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_16

    goto :goto_7

    .line 447
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static tag(Lcom/clj/fastble/data/BleDevice;[B)V
    .registers 6

    .prologue
    .line 107
    if-eqz p0, :cond_a

    if-eqz p1, :cond_a

    :try_start_4
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/WiBridge;->isWiems(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 115
    :cond_a
    :goto_a
    return-void

    .line 108
    :cond_b
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/WiBridge;->dev(Lcom/clj/fastble/data/BleDevice;)Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->enqPhase:I

    .line 109
    sget-object v1, Lcom/isaigu/gymapp/bodytech/WiBridge;->TAGS:Ljava/util/Map;

    monitor-enter v1
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_14} :catch_22

    .line 110
    :try_start_14
    sget-object v2, Lcom/isaigu/gymapp/bodytech/WiBridge;->TAGS:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
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

    .line 112
    :catch_22
    move-exception v0

    .line 113
    const-string v1, "xems-wiems"

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

.method public static write(Lcom/clj/fastble/data/BleDevice;[BLcom/clj/fastble/callback/BleWriteCallback;)Z
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 176
    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    :try_start_5
    array-length v1, p1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_a

    .line 192
    :cond_9
    :goto_9
    return v0

    .line 177
    :cond_a
    array-length v1, p1

    add-int/lit8 v1, v1, -0x4

    new-array v1, v1, [B

    .line 178
    const/4 v2, 0x3

    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {p1, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    const/4 v2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    .line 180
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/WiBridge;->dev(Lcom/clj/fastble/data/BleDevice;)Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;

    move-result-object v3

    .line 181
    iget-object v4, v3, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/WiTranslator;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v4, v2, v1, v6, v7}, Lcom/isaigu/gymapp/bodytech/WiTranslator;->command(I[BJ)Ljava/util/List;

    move-result-object v1

    .line 182
    const/4 v4, 0x5

    if-ne v2, v4, :cond_38

    .line 183
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v4}, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->add(Ljava/util/List;Lcom/clj/fastble/callback/BleWriteCallback;[B)V

    .line 184
    invoke-virtual {v3, p2, p1}, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->read(Lcom/clj/fastble/callback/BleWriteCallback;[B)V

    .line 188
    :goto_33
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/WiBridge;->startBeat()V

    .line 189
    const/4 v0, 0x1

    goto :goto_9

    .line 186
    :cond_38
    invoke-virtual {v3, v1, p2, p1}, Lcom/isaigu/gymapp/bodytech/WiBridge$Dev;->add(Ljava/util/List;Lcom/clj/fastble/callback/BleWriteCallback;[B)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_3b} :catch_3c

    goto :goto_33

    .line 190
    :catch_3c
    move-exception v1

    .line 191
    const-string v2, "xems-wiems"

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
