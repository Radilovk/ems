.class final Lcom/isaigu/gymapp/wearable/BandMacFinder;
.super Ljava/lang/Object;
.source "BandMacFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/BandMacFinder$Result;,
        Lcom/isaigu/gymapp/wearable/BandMacFinder$Scan;,
        Lcom/isaigu/gymapp/wearable/BandMacFinder$Stop;,
        Lcom/isaigu/gymapp/wearable/BandMacFinder$Deliver;
    }
.end annotation


# static fields
.field private static final SCAN_MS:J = 0x1f40L

.field private static final handler:Landroid/os/Handler;


# instance fields
.field private adapter:Landroid/bluetooth/BluetoothAdapter;

.field private final c:Landroid/content/Context;

.field private final cb:Lcom/isaigu/gymapp/wearable/BandMacFinder$Result;

.field private delivered:Z

.field private final hint:Ljava/lang/String;

.field private scan:Lcom/isaigu/gymapp/wearable/BandMacFinder$Scan;

.field private final seen:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandMacFinder;->handler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/BandMacFinder$Result;)V
    .registers 6

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/BandMacFinder;->seen:Ljava/util/LinkedHashMap;

    .line 41
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/BandMacFinder;->c:Landroid/content/Context;

    .line 42
    if-nez p2, :cond_15

    const-string v0, ""

    :goto_10
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/BandMacFinder;->hint:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/BandMacFinder;->cb:Lcom/isaigu/gymapp/wearable/BandMacFinder$Result;

    .line 44
    return-void

    .line 42
    :cond_15
    const-string v0, ":"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/wearable/BandMacFinder;Landroid/bluetooth/BluetoothDevice;)V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/BandMacFinder;->add(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/wearable/BandMacFinder;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandMacFinder;->hint:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/isaigu/gymapp/wearable/BandMacFinder;)Ljava/util/List;
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/BandMacFinder;->matching()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandMacFinder;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/isaigu/gymapp/wearable/BandMacFinder;)V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/BandMacFinder;->deliver()V

    return-void
.end method

.method private declared-synchronized add(Landroid/bluetooth/BluetoothDevice;)V
    .registers 6

    .prologue
    .line 95
    monitor-enter p0

    :try_start_1
    const-string v0, ""

    .line 96
    const-string v1, ""
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_2d

    .line 98
    :try_start_5
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_c} :catch_30
    .catchall {:try_start_5 .. :try_end_c} :catchall_2d

    move-result-object v1

    .line 102
    :goto_d
    if-eqz v1, :cond_1b

    :try_start_f
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1b

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandMacFinder;->looksLikeBand(Ljava/lang/String;)Z
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_2d

    move-result v2

    if-nez v2, :cond_1d

    .line 106
    :cond_1b
    :goto_1b
    monitor-exit p0

    return-void

    .line 105
    :cond_1d
    :try_start_1d
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/BandMacFinder;->seen:Ljava/util/LinkedHashMap;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_29

    const-string v0, ""

    :cond_29
    invoke-virtual {v2, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_1d .. :try_end_2c} :catchall_2d

    goto :goto_1b

    .line 95
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 100
    :catch_30
    move-exception v2

    goto :goto_d
.end method

.method private deliver()V
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 125
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/BandMacFinder;->delivered:Z

    if-eqz v0, :cond_6

    .line 145
    :goto_5
    return-void

    .line 128
    :cond_6
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/BandMacFinder;->delivered:Z

    .line 130
    :try_start_8
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandMacFinder;->scan:Lcom/isaigu/gymapp/wearable/BandMacFinder$Scan;

    if-eqz v0, :cond_13

    .line 131
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandMacFinder;->adapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandMacFinder;->scan:Lcom/isaigu/gymapp/wearable/BandMacFinder$Scan;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_13} :catch_67

    .line 135
    :cond_13
    :goto_13
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/BandMacFinder;->matching()Ljava/util/List;

    move-result-object v2

    .line 136
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandMacFinder;->hint:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_5a

    .line 138
    monitor-enter p0

    .line 139
    :try_start_27
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandMacFinder;->seen:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 140
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v4, v5

    const/4 v1, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v1

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 142
    :catchall_56
    move-exception v0

    monitor-exit p0
    :try_end_58
    .catchall {:try_start_27 .. :try_end_58} :catchall_56

    throw v0

    :cond_59
    :try_start_59
    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_56

    .line 144
    :cond_5a
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandMacFinder;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/BandMacFinder$Deliver;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/BandMacFinder;->cb:Lcom/isaigu/gymapp/wearable/BandMacFinder$Result;

    invoke-direct {v1, v3, v2}, Lcom/isaigu/gymapp/wearable/BandMacFinder$Deliver;-><init>(Lcom/isaigu/gymapp/wearable/BandMacFinder$Result;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    .line 133
    :catch_67
    move-exception v0

    goto :goto_13
.end method

.method static find(Landroid/content/Context;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/BandMacFinder$Result;)V
    .registers 4

    .prologue
    .line 47
    new-instance v0, Lcom/isaigu/gymapp/wearable/BandMacFinder;

    invoke-direct {v0, p0, p1, p2}, Lcom/isaigu/gymapp/wearable/BandMacFinder;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/BandMacFinder$Result;)V

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/BandMacFinder;->start()V

    .line 48
    return-void
.end method

.method static looksLikeBand(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 51
    if-nez p0, :cond_26

    const-string v0, ""

    .line 52
    :goto_4
    const-string v1, "band"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string v1, "xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string v1, "mi "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string v1, "redmi watch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    :cond_24
    const/4 v0, 0x1

    :goto_25
    return v0

    .line 51
    :cond_26
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 52
    :cond_2d
    const/4 v0, 0x0

    goto :goto_25
.end method

.method private declared-synchronized matching()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    .line 110
    monitor-enter p0

    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 111
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 112
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandMacFinder;->seen:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_16
    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 113
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v5, v6

    const/4 v6, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v5, v6

    .line 114
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v6, ":"

    const-string v7, ""

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 117
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/BandMacFinder;->hint:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v8, :cond_16

    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/BandMacFinder;->hint:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_83

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/BandMacFinder;->hint:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 118
    :cond_83
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_86
    .catchall {:try_start_2 .. :try_end_86} :catchall_87

    goto :goto_16

    .line 110
    :catchall_87
    move-exception v0

    monitor-exit p0

    throw v0

    .line 121
    :cond_8a
    :try_start_8a
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandMacFinder;->hint:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_8f
    .catchall {:try_start_8a .. :try_end_8f} :catchall_87

    move-result v0

    if-lt v0, v8, :cond_95

    move-object v0, v2

    :goto_93
    monitor-exit p0

    return-object v0

    :cond_95
    move-object v0, v3

    goto :goto_93
.end method

.method private start()V
    .registers 5

    .prologue
    .line 57
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/BandMacFinder;->adapter:Landroid/bluetooth/BluetoothAdapter;

    .line 58
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandMacFinder;->adapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandMacFinder;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_16

    .line 59
    :cond_12
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/BandMacFinder;->deliver()V

    .line 92
    :goto_15
    return-void

    .line 62
    :cond_16
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandMacFinder;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_48

    .line 64
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 65
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/BandMacFinder;->add(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_31} :catch_32

    goto :goto_22

    .line 75
    :catch_32
    move-exception v0

    .line 76
    const-string v1, "xems"

    const-string v2, "BandMacFinder.bonded"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    :cond_3a
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/BandMacFinder;->matching()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_70

    .line 79
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/BandMacFinder;->deliver()V

    goto :goto_15

    .line 68
    :cond_48
    :try_start_48
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandMacFinder;->c:Landroid/content/Context;

    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 69
    if-eqz v0, :cond_3a

    .line 70
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothManager;->getConnectedDevices(I)Ljava/util/List;

    move-result-object v2

    .line 71
    const/4 v0, 0x0

    move v1, v0

    :goto_5b
    if-eqz v2, :cond_3a

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3a

    .line 72
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/BandMacFinder;->add(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_6c} :catch_32

    .line 71
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5b

    .line 83
    :cond_70
    :try_start_70
    new-instance v0, Lcom/isaigu/gymapp/wearable/BandMacFinder$Scan;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/BandMacFinder$Scan;-><init>(Lcom/isaigu/gymapp/wearable/BandMacFinder;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/BandMacFinder;->scan:Lcom/isaigu/gymapp/wearable/BandMacFinder$Scan;

    .line 84
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandMacFinder;->adapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandMacFinder;->scan:Lcom/isaigu/gymapp/wearable/BandMacFinder$Scan;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 85
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandMacFinder;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/BandMacFinder$Stop;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/BandMacFinder$Stop;-><init>(Lcom/isaigu/gymapp/wearable/BandMacFinder;)V

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_8d} :catch_8e

    goto :goto_15

    .line 88
    :catch_8e
    move-exception v0

    .line 89
    const-string v1, "xems"

    const-string v2, "BandMacFinder.scan"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    :cond_96
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/BandMacFinder;->deliver()V

    goto/16 :goto_15
.end method
