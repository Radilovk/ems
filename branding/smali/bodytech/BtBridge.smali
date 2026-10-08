.class public final Lcom/isaigu/gymapp/bodytech/BtBridge;
.super Ljava/lang/Object;
.source "BtBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;,
        Lcom/isaigu/gymapp/bodytech/BtBridge$SlideAnchor;,
        Lcom/isaigu/gymapp/bodytech/BtBridge$Link;,
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

.field static final LINK_BEAT_MS:J = 0x5dcL

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
    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtBridge;->main:Landroid/os/Handler;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtBridge;->KIND:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtBridge;->DEVS:Ljava/util/Map;

    .line 55
    new-instance v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Beat;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bodytech/BtBridge$Beat;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtBridge;->BEAT:Lcom/isaigu/gymapp/bodytech/BtBridge$Beat;

    .line 80
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtBridge;->TAGS:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .registers 0

    .prologue
    .line 39
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtBridge;->startBeat()V

    return-void
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtBridge;->main:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/Map;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtBridge;->DEVS:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .registers 1

    .prologue
    .line 39
    sput-boolean p0, Lcom/isaigu/gymapp/bodytech/BtBridge;->beating:Z

    return p0
.end method

.method static app()Landroid/content/Context;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 405
    :try_start_1
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 406
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

    .line 407
    if-eqz v0, :cond_1f

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->load(Landroid/content/Context;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1f} :catch_20

    .line 410
    :cond_1f
    :goto_1f
    return-object v0

    .line 409
    :catch_20
    move-exception v0

    move-object v0, v1

    .line 410
    goto :goto_1f
.end method

.method public static declared-synchronized config(Lcom/clj/fastble/data/BleDevice;)Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;
    .registers 7

    .prologue
    .line 61
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtBridge;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->isBodytech(Lcom/clj/fastble/data/BleDevice;)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_22

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    .line 63
    :goto_a
    monitor-exit v1

    return-object v0

    .line 62
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

    .line 63
    :cond_1f
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtBridge;->config:Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_22

    goto :goto_a

    .line 61
    :catchall_22
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized dev(Lcom/clj/fastble/data/BleDevice;)Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;
    .registers 5

    .prologue
    .line 417
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtBridge;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v2

    .line 418
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtBridge;->DEVS:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    .line 419
    if-nez v0, :cond_1e

    .line 420
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtBridge;->app()Landroid/content/Context;

    .line 421
    new-instance v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;-><init>(Lcom/clj/fastble/data/BleDevice;)V

    .line 422
    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtBridge;->DEVS:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    :cond_1e
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->gattOf(Lcom/clj/fastble/data/BleDevice;)Ljava/lang/Object;

    move-result-object v2

    .line 427
    if-eqz v2, :cond_31

    .line 428
    iget-object v3, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->gatt:Ljava/lang/Object;

    if-eqz v3, :cond_2f

    iget-object v3, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->gatt:Ljava/lang/Object;

    if-eq v3, v2, :cond_2f

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->relink()V

    .line 429
    :cond_2f
    iput-object v2, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->gatt:Ljava/lang/Object;

    .line 431
    :cond_31
    iput-object p0, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->d:Lcom/clj/fastble/data/BleDevice;
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_35

    .line 432
    monitor-exit v1

    return-object v0

    .line 417
    :catchall_35
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static dropped(Lcom/clj/fastble/data/BleDevice;ZI)V
    .registers 15

    .prologue
    const-wide/16 v10, 0x0

    .line 326
    if-eqz p0, :cond_115

    :try_start_4
    invoke-virtual {p0}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 327
    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "drop "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/isaigu/gymapp/bodytech/BtBridge;->reason(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_11a

    const-string v0, " by the app"

    :goto_36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 330
    const-class v4, Lcom/isaigu/gymapp/bodytech/BtBridge;

    monitor-enter v4
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_3d} :catch_125

    .line 331
    if-eqz v2, :cond_11e

    :try_start_3f
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtBridge;->DEVS:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    move-object v1, v0

    .line 332
    :goto_48
    monitor-exit v4
    :try_end_49
    .catchall {:try_start_3f .. :try_end_49} :catchall_122

    .line 333
    if-eqz v1, :cond_14e

    .line 334
    :try_start_4b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 335
    monitor-enter v1
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_50} :catch_125

    .line 336
    :try_start_50
    const-string v0, " bodytech up="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v6, v1, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->linkedAt:J

    cmp-long v0, v6, v10

    if-lez v0, :cond_13f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v1, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->linkedAt:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "s"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_76
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " lastAck="

    .line 337
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v6, v1, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->lastAck:J

    cmp-long v0, v6, v10

    if-lez v0, :cond_143

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v1, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->lastAck:J

    sub-long v6, v4, v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "ms"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " lastSync="

    .line 338
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v6, v1, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->lastSync:J

    cmp-long v0, v6, v10

    if-lez v0, :cond_147

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v1, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->lastSync:J

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_c3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " beat="

    .line 339
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, v1, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->started:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " queue="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->q:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " busy="

    .line 340
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, v1, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->busy:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " outputs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " writeFails="

    .line 341
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->writeFails:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 342
    monitor-exit v1
    :try_end_10b
    .catchall {:try_start_50 .. :try_end_10b} :catchall_14b

    .line 346
    :goto_10b
    :try_start_10b
    const-string v0, "suit"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :goto_114
    return-void

    .line 326
    :cond_115
    const-string v0, "?"

    move-object v2, v0

    goto/16 :goto_9

    .line 328
    :cond_11a
    const-string v0, ""
    :try_end_11c
    .catch Ljava/lang/Throwable; {:try_start_10b .. :try_end_11c} :catch_125

    goto/16 :goto_36

    .line 331
    :cond_11e
    const/4 v0, 0x0

    move-object v1, v0

    goto/16 :goto_48

    .line 332
    :catchall_122
    move-exception v0

    :try_start_123
    monitor-exit v4
    :try_end_124
    .catchall {:try_start_123 .. :try_end_124} :catchall_122

    :try_start_124
    throw v0
    :try_end_125
    .catch Ljava/lang/Throwable; {:try_start_124 .. :try_end_125} :catch_125

    .line 347
    :catch_125
    move-exception v0

    .line 348
    const-string v1, "xems-bt"

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

    goto :goto_114

    .line 336
    :cond_13f
    :try_start_13f
    const-string v0, "?"

    goto/16 :goto_76

    .line 337
    :cond_143
    const-string v0, "never"

    goto/16 :goto_9d

    .line 338
    :cond_147
    const-string v0, "never"

    goto/16 :goto_c3

    .line 342
    :catchall_14b
    move-exception v0

    monitor-exit v1
    :try_end_14d
    .catchall {:try_start_13f .. :try_end_14d} :catchall_14b

    :try_start_14d
    throw v0

    .line 344
    :cond_14e
    invoke-static {v2}, Lcom/isaigu/gymapp/bodytech/BtBridge;->isBodytechMac(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15a

    const-string v0, " bodytech (no link state)"

    :goto_156
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10b

    :cond_15a
    const-string v0, " xems"
    :try_end_15c
    .catch Ljava/lang/Throwable; {:try_start_14d .. :try_end_15c} :catch_125

    goto :goto_156
.end method

.method private static gattOf(Lcom/clj/fastble/data/BleDevice;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 437
    :try_start_0
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/clj/fastble/BleManager;->getBluetoothGatt(Lcom/clj/fastble/data/BleDevice;)Landroid/bluetooth/BluetoothGatt;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    .line 439
    :goto_8
    return-object v0

    .line 438
    :catch_9
    move-exception v0

    .line 439
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static declared-synchronized isBodytech(Lcom/clj/fastble/data/BleDevice;)Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 374
    const-class v3, Lcom/isaigu/gymapp/bodytech/BtBridge;

    monitor-enter v3

    :try_start_5
    invoke-virtual {p0}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_45

    move-result-object v4

    .line 375
    if-nez v4, :cond_d

    .line 385
    :cond_b
    :goto_b
    monitor-exit v3

    return v1

    .line 376
    :cond_d
    :try_start_d
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtBridge;->KIND:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 377
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_b

    .line 379
    :cond_1c
    invoke-virtual {p0}, Lcom/clj/fastble/data/BleDevice;->getScanRecord()[B

    move-result-object v5

    .line 380
    if-eqz v5, :cond_48

    const v0, 0xfe50

    invoke-static {v5, v0}, Lcom/isaigu/gymapp/bodytech/BtProto;->has16([BI)Z

    move-result v0

    if-eqz v0, :cond_48

    move v1, v2

    .line 383
    :cond_2c
    :goto_2c
    if-eqz v1, :cond_37

    invoke-static {v4}, Lcom/isaigu/gymapp/bodytech/BtBridge;->known(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    invoke-static {v4}, Lcom/isaigu/gymapp/bodytech/BtBridge;->remember(Ljava/lang/String;)V

    .line 384
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

    .line 374
    :catchall_45
    move-exception v0

    monitor-exit v3

    throw v0

    .line 381
    :cond_48
    if-eqz v5, :cond_53

    const v0, 0xfff0

    :try_start_4d
    invoke-static {v5, v0}, Lcom/isaigu/gymapp/bodytech/BtProto;->has16([BI)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 382
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
    .line 261
    const-class v2, Lcom/isaigu/gymapp/bodytech/BtBridge;

    monitor-enter v2

    if-nez p0, :cond_8

    const/4 v0, 0x0

    .line 265
    :goto_6
    monitor-exit v2

    return v0

    .line 262
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

    .line 263
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

    .line 265
    :cond_35
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->known(Ljava/lang/String;)Z
    :try_end_38
    .catchall {:try_start_8 .. :try_end_38} :catchall_3a

    move-result v0

    goto :goto_6

    .line 261
    :catchall_3a
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static known(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 389
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtBridge;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 390
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

    .line 246
    if-nez p0, :cond_4

    .line 255
    :goto_3
    return v2

    .line 247
    :cond_4
    const/4 v1, 0x0

    .line 248
    :try_start_5
    const-class v3, Lcom/isaigu/gymapp/bodytech/BtBridge;

    monitor-enter v3
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_8} :catch_3a

    .line 249
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

    .line 250
    iget-object v5, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->d:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v5}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3e

    :goto_2a
    move-object v1, v0

    .line 251
    goto :goto_12

    .line 252
    :cond_2c
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_37

    .line 253
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

    .line 252
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

    .line 254
    :catch_3a
    move-exception v0

    goto :goto_3

    :cond_3c
    move v0, v2

    .line 253
    goto :goto_35

    :cond_3e
    move-object v0, v1

    goto :goto_2a
.end method

.method public static linked(Lcom/clj/fastble/data/BleDevice;)V
    .registers 7

    .prologue
    .line 290
    if-nez p0, :cond_3

    .line 300
    :cond_2
    :goto_2
    return-void

    .line 291
    :cond_3
    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->isBodytech(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v1

    .line 292
    const-string v2, "suit"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "linked "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_5e

    const-string v0, " bodytech"

    :goto_20
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    if-eqz v1, :cond_2

    .line 294
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->dev(Lcom/clj/fastble/data/BleDevice;)Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    move-result-object v0

    .line 295
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->linkedAt:J

    .line 296
    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtBridge;->main:Landroid/os/Handler;

    new-instance v2, Lcom/isaigu/gymapp/bodytech/BtBridge$Link;

    invoke-direct {v2, v0}, Lcom/isaigu/gymapp/bodytech/BtBridge$Link;-><init>(Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;)V

    const-wide/16 v4, 0x5dc

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_43} :catch_44

    goto :goto_2

    .line 297
    :catch_44
    move-exception v0

    .line 298
    const-string v1, "xems-bt"

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

    goto :goto_2

    .line 292
    :cond_5e
    :try_start_5e
    const-string v0, " xems"
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_60} :catch_44

    goto :goto_20
.end method

.method public static loadPercent(Lcom/clj/fastble/data/BleDevice;)I
    .registers 6

    .prologue
    const/4 v1, -0x1

    .line 228
    if-eqz p0, :cond_9

    :try_start_3
    invoke-virtual {p0}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    :cond_9
    move v0, v1

    .line 239
    :goto_a
    return v0

    .line 230
    :cond_b
    const-class v2, Lcom/isaigu/gymapp/bodytech/BtBridge;

    monitor-enter v2
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_e} :catch_22

    .line 231
    :try_start_e
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtBridge;->DEVS:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    .line 232
    monitor-exit v2

    .line 233
    if-nez v0, :cond_25

    move v0, v1

    goto :goto_a

    .line 232
    :catchall_1f
    move-exception v0

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_1f

    :try_start_21
    throw v0

    .line 238
    :catch_22
    move-exception v0

    move v0, v1

    .line 239
    goto :goto_a

    .line 234
    :cond_25
    monitor-enter v0
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_26} :catch_22

    .line 235
    :try_start_26
    iget-boolean v2, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->loading:Z

    if-nez v2, :cond_2d

    monitor-exit v0

    move v0, v1

    goto :goto_a

    .line 236
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

    .line 237
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
    .line 75
    if-eqz p0, :cond_8

    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->isBodytech(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 77
    :cond_8
    :goto_8
    return-void

    .line 76
    :cond_9
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->dev(Lcom/clj/fastble/data/BleDevice;)Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    move-result-object v0

    iput p1, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->enqPhase:I

    goto :goto_8
.end method

.method private static prefs()Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 399
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtBridge;->app()Landroid/content/Context;

    move-result-object v0

    .line 400
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
    .line 199
    const/4 v1, 0x0

    .line 200
    :try_start_1
    const-class v2, Lcom/isaigu/gymapp/bodytech/BtBridge;

    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_3e

    .line 201
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

    .line 202
    if-eqz p0, :cond_28

    iget-object v4, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->d:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v4}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 203
    :cond_28
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v4

    iget-object v5, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->d:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v4, v5}, Lcom/clj/fastble/BleManager;->isConnected(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v4

    if-eqz v4, :cond_e

    move-object v10, v0

    .line 208
    :goto_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_4 .. :try_end_36} :catchall_3b

    .line 209
    if-nez v10, :cond_5a

    :try_start_38
    const-string v0, "no_suit"
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_3a} :catch_3e

    .line 218
    :goto_3a
    return-object v0

    .line 208
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

    .line 216
    :catch_3e
    move-exception v0

    .line 217
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

    .line 218
    const-string v0, "no_suit"

    goto :goto_3a

    .line 210
    :cond_5a
    :try_start_5a
    iget-object v0, v10, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->training()Z

    move-result v0

    if-eqz v0, :cond_65

    const-string v0, "training"

    goto :goto_3a

    .line 211
    :cond_65
    invoke-virtual {v10}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->begin()V

    .line 212
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

    .line 215
    :goto_84
    const-string v0, "ok"

    goto :goto_3a

    .line 214
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

.method static reason(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 354
    sparse-switch p0, :sswitch_data_1e

    .line 363
    const-string v0, "other"

    :goto_5
    return-object v0

    .line 355
    :sswitch_6
    const-string v0, "closed normally"

    goto :goto_5

    .line 356
    :sswitch_9
    const-string v0, "signal lost: distance / interference"

    goto :goto_5

    .line 357
    :sswitch_c
    const-string v0, "the suit closed it"

    goto :goto_5

    .line 358
    :sswitch_f
    const-string v0, "the tablet closed it"

    goto :goto_5

    .line 359
    :sswitch_12
    const-string v0, "link layer timeout"

    goto :goto_5

    .line 360
    :sswitch_15
    const-string v0, "could not set up the link"

    goto :goto_5

    .line 361
    :sswitch_18
    const-string v0, "GATT error 133"

    goto :goto_5

    .line 362
    :sswitch_1b
    const-string v0, "GATT failure"

    goto :goto_5

    .line 354
    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_6
        0x8 -> :sswitch_9
        0x13 -> :sswitch_c
        0x16 -> :sswitch_f
        0x22 -> :sswitch_12
        0x3e -> :sswitch_15
        0x85 -> :sswitch_18
        0x101 -> :sswitch_1b
    .end sparse-switch
.end method

.method private static remember(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 394
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtBridge;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 395
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

    .line 396
    :cond_25
    return-void
.end method

.method public static reply(Lcom/clj/fastble/data/BleDevice;[BLcom/isaigu/gymapp/train/listener/OnReceiveCommandListener;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    .line 271
    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    :try_start_5
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->isBodytech(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v1

    if-nez v1, :cond_d

    :cond_b
    const/4 v0, 0x0

    .line 277
    :cond_c
    :goto_c
    return v0

    .line 272
    :cond_d
    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtProto;->batteryRaw([B)I

    move-result v1

    .line 273
    if-lez v1, :cond_c

    if-eqz p2, :cond_c

    invoke-static {v1}, Lcom/isaigu/gymapp/bodytech/BtProto;->percent(I)I

    move-result v1

    invoke-interface {p2, v1}, Lcom/isaigu/gymapp/train/listener/OnReceiveCommandListener;->onReceiveBattery(I)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_1c} :catch_1d

    goto :goto_c

    .line 275
    :catch_1d
    move-exception v1

    .line 276
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

    .line 112
    if-eqz p0, :cond_9

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->isBodytech(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 124
    :cond_9
    :goto_9
    return-void

    .line 113
    :cond_a
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->dev(Lcom/clj/fastble/data/BleDevice;)Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->begin()V

    .line 115
    iget-object v1, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->ran()Z

    move-result v6

    .line 116
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtLoad;->cancel(Lcom/clj/fastble/data/BleDevice;)V

    .line 117
    iget-object v1, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed()Z

    move-result v7

    .line 118
    iget-object v1, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->reset()Ljava/util/List;

    move-result-object v1

    .line 119
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

    .line 120
    if-eqz v6, :cond_9

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtBeep;->stop()V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3c} :catch_3d

    goto :goto_9

    .line 121
    :catch_3d
    move-exception v0

    .line 122
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
    .line 98
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 107
    :cond_4
    :goto_4
    return-void

    .line 100
    :cond_5
    :try_start_5
    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtBridge;->TAGS:Ljava/util/Map;

    monitor-enter v1
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_8} :catch_27

    .line 101
    :try_start_8
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtBridge;->TAGS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 102
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_41

    .line 103
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

    .line 104
    :catch_27
    move-exception v0

    .line 105
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

    .line 102
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
    .line 656
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtBridge;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/isaigu/gymapp/bodytech/BtBridge;->beating:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_16

    if-eqz v0, :cond_9

    .line 659
    :goto_7
    monitor-exit v1

    return-void

    .line 657
    :cond_9
    const/4 v0, 0x1

    :try_start_a
    sput-boolean v0, Lcom/isaigu/gymapp/bodytech/BtBridge;->beating:Z

    .line 658
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtBridge;->main:Landroid/os/Handler;

    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtBridge;->BEAT:Lcom/isaigu/gymapp/bodytech/BtBridge$Beat;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_16

    goto :goto_7

    .line 656
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static tag(Lcom/clj/fastble/data/BleDevice;[B)V
    .registers 6

    .prologue
    .line 85
    if-eqz p0, :cond_a

    if-eqz p1, :cond_a

    :try_start_4
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->isBodytech(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 93
    :cond_a
    :goto_a
    return-void

    .line 86
    :cond_b
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->dev(Lcom/clj/fastble/data/BleDevice;)Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->enqPhase:I

    .line 87
    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtBridge;->TAGS:Ljava/util/Map;

    monitor-enter v1
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_14} :catch_22

    .line 88
    :try_start_14
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtBridge;->TAGS:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
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

    .line 90
    :catch_22
    move-exception v0

    .line 91
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
    .line 169
    const/4 v1, 0x0

    .line 170
    :try_start_1
    const-class v2, Lcom/isaigu/gymapp/bodytech/BtBridge;

    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_3d

    .line 171
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

    .line 172
    if-eqz p0, :cond_28

    iget-object v4, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->d:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v4}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 173
    :cond_28
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v4

    iget-object v5, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->d:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v4, v5}, Lcom/clj/fastble/BleManager;->isConnected(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 178
    :goto_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_3a

    .line 179
    if-nez v0, :cond_59

    :try_start_37
    const-string v0, "no_suit"
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_39} :catch_3d

    .line 188
    :goto_39
    return-object v0

    .line 178
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

    .line 186
    :catch_3d
    move-exception v0

    .line 187
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

    .line 188
    const-string v0, "no_suit"

    goto :goto_39

    .line 180
    :cond_59
    :try_start_59
    iget-object v1, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->training()Z

    move-result v1

    if-eqz v1, :cond_64

    const-string v0, "training"

    goto :goto_39

    .line 181
    :cond_64
    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->begin()V

    .line 182
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

    .line 185
    :goto_86
    const-string v0, "ok"

    goto :goto_39

    .line 184
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
    .line 162
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

    .line 133
    if-eqz p0, :cond_a

    if-eqz p1, :cond_a

    :try_start_6
    array-length v0, p1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_c

    :cond_a
    move v0, v8

    .line 152
    :goto_b
    return v0

    .line 134
    :cond_c
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x36

    if-ne v0, v1, :cond_17

    move v0, v8

    goto :goto_b

    .line 135
    :cond_17
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->isBodytech(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v0

    if-nez v0, :cond_1f

    move v0, v8

    goto :goto_b

    .line 136
    :cond_1f
    array-length v0, p1

    add-int/lit8 v0, v0, -0x4

    new-array v1, v0, [B

    .line 137
    const/4 v0, 0x3

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->dev(Lcom/clj/fastble/data/BleDevice;)Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->begin()V

    .line 140
    iget-object v2, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed()Z

    move-result v10

    .line 141
    iget-object v2, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed()Z

    move-result v2

    .line 142
    iget-object v3, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    const/4 v4, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v3, v4, v1, v6, v7}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->command(I[BJ)Ljava/util/List;

    move-result-object v1

    .line 143
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

    .line 144
    iget-object v1, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->takeSlide()[J

    move-result-object v1

    .line 145
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

    .line 146
    :cond_7b
    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtBridge$Dev;->tr:Lcom/isaigu/gymapp/bodytech/BtTranslator;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed()Z

    move-result v0

    .line 147
    if-nez v10, :cond_8c

    if-eqz v0, :cond_8c

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtBeep;->start()V

    :cond_88
    :goto_88
    move v0, v9

    .line 149
    goto :goto_b

    :cond_8a
    move v5, v8

    .line 143
    goto :goto_58

    .line 148
    :cond_8c
    if-eqz v10, :cond_88

    if-nez v0, :cond_88

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtBeep;->pause()V
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_93} :catch_94

    goto :goto_88

    .line 150
    :catch_94
    move-exception v0

    .line 151
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

    .line 152
    goto/16 :goto_b
.end method
