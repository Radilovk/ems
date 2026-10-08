.class public final Lcom/isaigu/gymapp/wearable/SignalProbe;
.super Ljava/lang/Object;
.source "SignalProbe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/SignalProbe$Taps;,
        Lcom/isaigu/gymapp/wearable/SignalProbe$Poll;,
        Lcom/isaigu/gymapp/wearable/SignalProbe$Reading;
    }
.end annotation


# static fields
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

.field private static mac:Ljava/lang/String;

.field private static watchUntil:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/SignalProbe;->MAIN:Landroid/os/Handler;

    .line 28
    const/high16 v0, -0x80000000

    sput v0, Lcom/isaigu/gymapp/wearable/SignalProbe;->lastRssi:I

    .line 115
    new-instance v0, Lcom/isaigu/gymapp/wearable/SignalProbe$Poll;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/SignalProbe$Poll;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/SignalProbe;->POLL:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method static synthetic access$000()Ljava/lang/ref/WeakReference;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/isaigu/gymapp/wearable/SignalProbe;->anchor:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100()J
    .registers 2

    .prologue
    .line 22
    sget-wide v0, Lcom/isaigu/gymapp/wearable/SignalProbe;->watchUntil:J

    return-wide v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/isaigu/gymapp/wearable/SignalProbe;->mac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()I
    .registers 1

    .prologue
    .line 22
    sget v0, Lcom/isaigu/gymapp/wearable/SignalProbe;->lastRssi:I

    return v0
.end method

.method static synthetic access$302(I)I
    .registers 1

    .prologue
    .line 22
    sput p0, Lcom/isaigu/gymapp/wearable/SignalProbe;->lastRssi:I

    return p0
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/isaigu/gymapp/wearable/SignalProbe;->MAIN:Landroid/os/Handler;

    return-object v0
.end method

.method static attach(Lcom/isaigu/gymapp/train/model/TrainItem;Landroid/view/View;I)V
    .registers 7

    .prologue
    .line 39
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    if-nez p0, :cond_7

    .line 50
    :cond_6
    :goto_6
    return-void

    .line 42
    :cond_7
    :try_start_7
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_6

    .line 46
    new-instance v1, Lcom/isaigu/gymapp/wearable/SignalProbe$Taps;

    invoke-direct {v1, p0, v0}, Lcom/isaigu/gymapp/wearable/SignalProbe$Taps;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_15} :catch_16

    goto :goto_6

    .line 47
    :catch_16
    move-exception v0

    .line 48
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
    .line 81
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/SignalProbe;->anchor:Ljava/lang/ref/WeakReference;

    .line 82
    sput-object p1, Lcom/isaigu/gymapp/wearable/SignalProbe;->mac:Ljava/lang/String;

    .line 83
    const/high16 v0, -0x80000000

    sput v0, Lcom/isaigu/gymapp/wearable/SignalProbe;->lastRssi:I

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2328

    add-long/2addr v0, v2

    sput-wide v0, Lcom/isaigu/gymapp/wearable/SignalProbe;->watchUntil:J

    .line 85
    sget-object v0, Lcom/isaigu/gymapp/wearable/SignalProbe;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/SignalProbe;->POLL:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 86
    sget-object v0, Lcom/isaigu/gymapp/wearable/SignalProbe;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/SignalProbe;->POLL:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_24} :catch_25

    .line 90
    :goto_24
    return-void

    .line 87
    :catch_25
    move-exception v0

    .line 88
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

    goto :goto_24
.end method

.method static device(Ljava/lang/String;)Lcom/clj/fastble/data/BleDevice;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 141
    if-nez p0, :cond_5

    move-object v0, v1

    .line 155
    :goto_4
    return-object v0

    .line 144
    :cond_5
    :try_start_5
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/BleManager;->getAllConnectedDevice()Ljava/util/List;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_45

    .line 146
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clj/fastble/data/BleDevice;

    .line 147
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_28} :catch_2c

    move-result v3

    if-eqz v3, :cond_13

    goto :goto_4

    .line 152
    :catch_2c
    move-exception v0

    .line 153
    const-string v2, "index"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "signal device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_45
    move-object v0, v1

    .line 155
    goto :goto_4
.end method

.method static percent(I)I
    .registers 4

    .prologue
    .line 135
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

    .line 118
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_17

    .line 119
    const-string v0, "\u0411\u043b\u0438\u0437\u043e\u0441\u0442 \u0434\u043e \u043a\u043e\u0441\u0442\u044e\u043c\u0430\u2026"

    const-string v1, "Closeness to the suit\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->show(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 131
    :goto_16
    return-void

    .line 123
    :cond_17
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/SignalProbe;->percent(I)I

    move-result v2

    .line 124
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    const/4 v0, 0x0

    move v1, v0

    :goto_22
    const/16 v0, 0xa

    if-ge v1, v0, :cond_36

    .line 126
    mul-int/lit8 v0, v1, 0xa

    if-ge v0, v2, :cond_33

    const/16 v0, 0x25ae

    :goto_2c
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_22

    .line 126
    :cond_33
    const/16 v0, 0x25af

    goto :goto_2c

    .line 128
    :cond_36
    const/16 v0, 0x3c

    if-lt v2, v0, :cond_65

    const v3, -0xb350b0

    .line 129
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

    .line 130
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    .line 129
    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->show(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;IJ)V

    goto :goto_16

    .line 128
    :cond_65
    const/16 v0, 0x1e

    if-ge v2, v0, :cond_3d

    const v3, -0xadae

    goto :goto_3d
.end method
