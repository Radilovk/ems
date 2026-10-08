.class public final Lcom/isaigu/gymapp/wearable/SignalProbe;
.super Ljava/lang/Object;
.source "SignalProbe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/SignalProbe$Taps;
    }
.end annotation


# static fields
.field private static final EVENT_RSSI:S = 0x3ees

.field private static final EVERY_MS:J = 0x2bcL

.field private static final MAIN:Landroid/os/Handler;

.field static final POLL:Ljava/lang/Runnable;

.field private static final WATCH_MS:J = 0x2328L

.field private static final WINDOW_MS:J = 0x4b0L

.field private static anchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile lastRssi:I

.field private static listening:Z

.field private static mac:Ljava/lang/String;

.field private static watchUntil:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/SignalProbe;->MAIN:Landroid/os/Handler;

    .line 31
    const/high16 v0, -0x80000000

    sput v0, Lcom/isaigu/gymapp/wearable/SignalProbe;->lastRssi:I

    .line 97
    new-instance v0, Lcom/isaigu/gymapp/wearable/SignalProbe$1;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/SignalProbe$1;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/SignalProbe;->POLL:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method static synthetic access$000()Ljava/lang/ref/WeakReference;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/isaigu/gymapp/wearable/SignalProbe;->anchor:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100()J
    .registers 2

    .prologue
    .line 23
    sget-wide v0, Lcom/isaigu/gymapp/wearable/SignalProbe;->watchUntil:J

    return-wide v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/isaigu/gymapp/wearable/SignalProbe;->mac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()I
    .registers 1

    .prologue
    .line 23
    sget v0, Lcom/isaigu/gymapp/wearable/SignalProbe;->lastRssi:I

    return v0
.end method

.method static synthetic access$302(I)I
    .registers 1

    .prologue
    .line 23
    sput p0, Lcom/isaigu/gymapp/wearable/SignalProbe;->lastRssi:I

    return p0
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/isaigu/gymapp/wearable/SignalProbe;->MAIN:Landroid/os/Handler;

    return-object v0
.end method

.method static attach(Lcom/isaigu/gymapp/train/model/TrainItem;Landroid/view/View;I)V
    .registers 7

    .prologue
    .line 42
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    if-nez p0, :cond_7

    .line 53
    :cond_6
    :goto_6
    return-void

    .line 45
    :cond_7
    :try_start_7
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_6

    .line 49
    new-instance v1, Lcom/isaigu/gymapp/wearable/SignalProbe$Taps;

    invoke-direct {v1, p0, v0}, Lcom/isaigu/gymapp/wearable/SignalProbe$Taps;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_15} :catch_16

    goto :goto_6

    .line 50
    :catch_16
    move-exception v0

    .line 51
    const-string v1, "index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "signal attach: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method static begin(Landroid/view/View;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 84
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SignalProbe;->listen()V

    .line 85
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/SignalProbe;->anchor:Ljava/lang/ref/WeakReference;

    .line 86
    sput-object p1, Lcom/isaigu/gymapp/wearable/SignalProbe;->mac:Ljava/lang/String;

    .line 87
    const/high16 v0, -0x80000000

    sput v0, Lcom/isaigu/gymapp/wearable/SignalProbe;->lastRssi:I

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2328

    add-long/2addr v0, v2

    sput-wide v0, Lcom/isaigu/gymapp/wearable/SignalProbe;->watchUntil:J

    .line 89
    sget-object v0, Lcom/isaigu/gymapp/wearable/SignalProbe;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/SignalProbe;->POLL:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 90
    sget-object v0, Lcom/isaigu/gymapp/wearable/SignalProbe;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/SignalProbe;->POLL:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_27} :catch_28

    .line 94
    :goto_27
    return-void

    .line 91
    :catch_28
    move-exception v0

    .line 92
    const-string v1, "index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "signal begin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27
.end method

.method static gatt(Ljava/lang/String;)Landroid/bluetooth/BluetoothGatt;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 143
    if-nez p0, :cond_5

    move-object v2, v3

    .line 158
    :goto_4
    return-object v2

    .line 146
    :cond_5
    :try_start_5
    const-string v1, "com.isaigu.gymapp.mgr.BleMgr"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 147
    const-string v2, "getController"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 148
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getmGattMap"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 149
    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_80

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 150
    instance-of v1, v2, Landroid/bluetooth/BluetoothGatt;

    if-eqz v1, :cond_3a

    move-object v0, v2

    check-cast v0, Landroid/bluetooth/BluetoothGatt;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_3a

    move-object v0, v2

    check-cast v0, Landroid/bluetooth/BluetoothGatt;

    move-object v1, v0

    .line 151
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 152
    check-cast v2, Landroid/bluetooth/BluetoothGatt;
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_66} :catch_67

    goto :goto_4

    .line 155
    :catch_67
    move-exception v1

    .line 156
    const-string v2, "index"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "signal gatt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_80
    move-object v2, v3

    .line 158
    goto :goto_4
.end method

.method static listen()V
    .registers 7

    .prologue
    .line 163
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/SignalProbe;->listening:Z

    if-eqz v0, :cond_5

    .line 189
    :goto_4
    return-void

    .line 167
    :cond_5
    :try_start_5
    const-string v0, "com.isaigu.gymapp.message.EventListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 168
    const-string v1, "com.isaigu.gymapp.message.DataBundle"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 169
    const-string v2, "getInt"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 170
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    new-instance v4, Lcom/isaigu/gymapp/wearable/SignalProbe$2;

    invoke-direct {v4, v1}, Lcom/isaigu/gymapp/wearable/SignalProbe$2;-><init>(Ljava/lang/reflect/Method;)V

    invoke-static {v2, v3, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    .line 183
    const-string v2, "com.isaigu.gymapp.message.MessageDispatcher"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 184
    const-string v3, "attachEventListener"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0x3ee

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/SignalProbe;->listening:Z
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_64} :catch_65

    goto :goto_4

    .line 186
    :catch_65
    move-exception v0

    .line 187
    const-string v1, "index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "signal listen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method static percent(I)I
    .registers 4

    .prologue
    .line 137
    const/4 v0, 0x0

    const/16 v1, 0x64

    add-int/lit8 v2, p0, 0x5a

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static show(Landroid/view/View;I)V
    .registers 10

    .prologue
    const-wide/16 v4, 0x5dc

    const/16 v3, -0x3ef9

    .line 120
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_17

    .line 121
    const-string v0, "\u0411\u043b\u0438\u0437\u043e\u0441\u0442 \u0434\u043e \u043a\u043e\u0441\u0442\u044e\u043c\u0430\u2026"

    const-string v1, "Closeness to the suit\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->show(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 133
    :goto_16
    return-void

    .line 125
    :cond_17
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/SignalProbe;->percent(I)I

    move-result v2

    .line 126
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    const/4 v0, 0x0

    move v1, v0

    :goto_22
    const/16 v0, 0xa

    if-ge v1, v0, :cond_36

    .line 128
    mul-int/lit8 v0, v1, 0xa

    if-ge v0, v2, :cond_33

    const/16 v0, 0x25ae

    :goto_2c
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_22

    .line 128
    :cond_33
    const/16 v0, 0x25af

    goto :goto_2c

    .line 130
    :cond_36
    const/16 v0, 0x3c

    if-lt v2, v0, :cond_65

    const v3, -0xb350b0

    .line 131
    :cond_3d
    :goto_3d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0411\u043b\u0438\u0437\u043e\u0441\u0442 \u0434\u043e \u043a\u043e\u0441\u0442\u044e\u043c\u0430: "

    const-string v7, "Closeness to the suit: "

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " %"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    .line 131
    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->show(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;IJ)V

    goto :goto_16

    .line 130
    :cond_65
    const/16 v0, 0x1e

    if-ge v2, v0, :cond_3d

    const v3, -0xadae

    goto :goto_3d
.end method
