.class public final Lcom/isaigu/gymapp/bodytech/BtLoad;
.super Ljava/lang/Object;
.source "BtLoad.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/bodytech/BtLoad$Wait;,
        Lcom/isaigu/gymapp/bodytech/BtLoad$Tick;,
        Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;
    }
.end annotation


# static fields
.field private static final BANNERS:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;",
            ">;"
        }
    .end annotation
.end field

.field static final GIVE_UP_MS:J = 0x4e20L

.field static final TICK_MS:J = 0xc8L

.field private static final WAITING:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            "Lcom/isaigu/gymapp/bodytech/BtLoad$Wait;",
            ">;"
        }
    .end annotation
.end field

.field private static final main:Landroid/os/Handler;

.field private static ticking:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtLoad;->main:Landroid/os/Handler;

    .line 40
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtLoad;->WAITING:Ljava/util/WeakHashMap;

    .line 41
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtLoad;->BANNERS:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .registers 1

    .prologue
    .line 35
    sput-boolean p0, Lcom/isaigu/gymapp/bodytech/BtLoad;->ticking:Z

    return p0
.end method

.method static synthetic access$100()Ljava/util/WeakHashMap;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtLoad;->WAITING:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 1

    .prologue
    .line 35
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtLoad;->refresh(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    return-void
.end method

.method static synthetic access$300()V
    .registers 0

    .prologue
    .line 35
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtLoad;->tick()V

    return-void
.end method

.method static cancel(Lcom/clj/fastble/data/BleDevice;)V
    .registers 7

    .prologue
    .line 82
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    .line 99
    :cond_8
    return-void

    .line 85
    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 86
    const-class v3, Lcom/isaigu/gymapp/bodytech/BtLoad;

    monitor-enter v3

    .line 87
    :try_start_11
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtLoad;->WAITING:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1b
    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 88
    invoke-virtual {p0}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bodytech/BtLoad$Wait;

    iget-object v1, v1, Lcom/isaigu/gymapp/bodytech/BtLoad$Wait;->d:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 89
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 95
    :catchall_47
    move-exception v0

    monitor-exit v3
    :try_end_49
    .catchall {:try_start_11 .. :try_end_49} :catchall_47

    throw v0

    .line 92
    :cond_4a
    :try_start_4a
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 93
    sget-object v4, Lcom/isaigu/gymapp/bodytech/BtLoad;->WAITING:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4e

    .line 95
    :cond_60
    monitor-exit v3
    :try_end_61
    .catchall {:try_start_4a .. :try_end_61} :catchall_47

    .line 96
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_65
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 97
    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtLoad;->refresh(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    goto :goto_65
.end method

.method public static hold(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/clj/fastble/data/BleDevice;)Z
    .registers 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 59
    if-eqz p0, :cond_16

    :try_start_4
    iget-object v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v2, :cond_16

    if-eqz p1, :cond_16

    iget-object v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v2, :cond_18

    :cond_16
    move v0, v1

    .line 76
    :goto_17
    return v0

    .line 62
    :cond_18
    const-class v2, Lcom/isaigu/gymapp/bodytech/BtLoad;

    monitor-enter v2
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_1b} :catch_28

    .line 63
    :try_start_1b
    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtLoad;->WAITING:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 64
    monitor-exit v2

    goto :goto_17

    .line 70
    :catchall_25
    move-exception v0

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_1b .. :try_end_27} :catchall_25

    :try_start_27
    throw v0
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_28} :catch_28

    .line 74
    :catch_28
    move-exception v0

    .line 75
    const-string v2, "xems-bt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load hold: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 76
    goto :goto_17

    .line 66
    :cond_43
    :try_start_43
    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtBridge;->loadPercent(Lcom/clj/fastble/data/BleDevice;)I

    move-result v3

    if-gez v3, :cond_4c

    .line 67
    monitor-exit v2

    move v0, v1

    goto :goto_17

    .line 69
    :cond_4c
    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtLoad;->WAITING:Ljava/util/WeakHashMap;

    new-instance v4, Lcom/isaigu/gymapp/bodytech/BtLoad$Wait;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-direct {v4, p1, v6, v7}, Lcom/isaigu/gymapp/bodytech/BtLoad$Wait;-><init>(Lcom/clj/fastble/data/BleDevice;J)V

    invoke-virtual {v3, p0, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_43 .. :try_end_5b} :catchall_25

    .line 71
    :try_start_5b
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->xemsRefresh()V

    .line 72
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtLoad;->tick()V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_61} :catch_28

    goto :goto_17
.end method

.method public static mark(Lcom/isaigu/gymapp/train/model/TrainItem;Landroid/view/View;)V
    .registers 8

    .prologue
    .line 182
    if-nez p1, :cond_3

    .line 206
    :cond_2
    :goto_2
    return-void

    .line 185
    :cond_3
    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtLoad;->percent(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v1

    .line 186
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtLoad;->BANNERS:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;

    .line 187
    if-gez v1, :cond_3a

    .line 188
    if-eqz v0, :cond_2

    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 190
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtLoad;->BANNERS:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_1f} :catch_20

    goto :goto_2

    .line 203
    :catch_20
    move-exception v0

    .line 204
    const-string v1, "xems-bt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load mark: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 194
    :cond_3a
    if-nez v0, :cond_57

    .line 195
    :try_start_3c
    new-instance v0, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {v0, v2}, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;-><init>(F)V

    .line 196
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtLoad;->BANNERS:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-virtual {p1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 199
    :cond_57
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->setBounds(IIII)V

    .line 200
    const-string v2, "\u0417\u0430\u0440\u0435\u0436\u0434\u0430\u043d\u0435 \u043d\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430\u2026"

    const-string v3, "Loading the program\u2026"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430 \u0442\u0440\u044a\u0433\u0432\u0430 \u0441\u0430\u043c\u0430"

    const-string v4, "The training starts by itself"

    .line 201
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 200
    invoke-virtual {v0, v2, v3, v1}, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 202
    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtLoad$Banner;->invalidateSelf()V
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_7a} :catch_20

    goto :goto_2
.end method

.method static percent(Lcom/isaigu/gymapp/train/model/TrainItem;)I
    .registers 3

    .prologue
    .line 104
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtLoad;

    monitor-enter v1

    .line 105
    :try_start_3
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtLoad;->WAITING:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bodytech/BtLoad$Wait;

    .line 106
    monitor-exit v1

    .line 107
    if-nez v0, :cond_13

    .line 108
    const/4 v0, -0x1

    .line 111
    :cond_f
    :goto_f
    return v0

    .line 106
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0

    .line 110
    :cond_13
    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtLoad$Wait;->d:Lcom/clj/fastble/data/BleDevice;

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->loadPercent(Lcom/clj/fastble/data/BleDevice;)I

    move-result v0

    .line 111
    if-gez v0, :cond_f

    const/16 v0, 0x64

    goto :goto_f
.end method

.method private static refresh(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 5

    .prologue
    .line 173
    :try_start_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->xemsRefresh()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 177
    :goto_3
    return-void

    .line 174
    :catch_4
    move-exception v0

    .line 175
    const-string v1, "xems-bt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load refresh: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private static tick()V
    .registers 4

    .prologue
    .line 115
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtLoad;

    monitor-enter v1

    .line 116
    :try_start_3
    sget-boolean v0, Lcom/isaigu/gymapp/bodytech/BtLoad;->ticking:Z

    if-eqz v0, :cond_9

    .line 117
    monitor-exit v1

    .line 122
    :goto_8
    return-void

    .line 119
    :cond_9
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/bodytech/BtLoad;->ticking:Z

    .line 120
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1a

    .line 121
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtLoad;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtLoad$Tick;

    invoke-direct {v1}, Lcom/isaigu/gymapp/bodytech/BtLoad$Tick;-><init>()V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8

    .line 120
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method
