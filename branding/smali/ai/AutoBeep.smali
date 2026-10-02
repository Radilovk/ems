.class public final Lcom/isaigu/gymapp/ai/AutoBeep;
.super Ljava/lang/Object;
.source "AutoBeep.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/AutoBeep$Release;,
        Lcom/isaigu/gymapp/ai/AutoBeep$Beep;
    }
.end annotation


# static fields
.field private static final LONG_HZ:I = 0x497

.field private static final LONG_MS:I = 0x28a

.field private static final RATE:I = 0x5622

.field private static final SHORT:Ljava/lang/Runnable;

.field private static final SHORT_HZ:I = 0x370

.field private static final SHORT_MS:I = 0x82

.field private static final handler:Landroid/os/Handler;

.field private static longPcm:[S

.field private static shortPcm:[S


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoBeep;->handler:Landroid/os/Handler;

    .line 24
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoBeep$Beep;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/ai/AutoBeep$Beep;-><init>(Z)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoBeep;->SHORT:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Z)V
    .registers 1

    .prologue
    .line 16
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoBeep;->play(Z)V

    return-void
.end method

.method public static cancel()V
    .registers 2

    .prologue
    .line 43
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoBeep;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoBeep;->SHORT:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 44
    return-void
.end method

.method public static countdown(J)V
    .registers 12

    .prologue
    .line 32
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBeep;->cancel()V

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 34
    const/4 v0, 0x3

    :goto_8
    const/4 v1, 0x1

    if-lt v0, v1, :cond_28

    .line 35
    int-to-long v4, v0

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    sub-long v4, p0, v4

    sub-long/2addr v4, v2

    .line 36
    const-wide/16 v6, -0x96

    cmp-long v1, v4, v6

    if-ltz v1, :cond_25

    .line 37
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoBeep;->handler:Landroid/os/Handler;

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoBeep;->SHORT:Ljava/lang/Runnable;

    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-virtual {v1, v6, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 34
    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 40
    :cond_28
    return-void
.end method

.method public static go()V
    .registers 1

    .prologue
    .line 48
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBeep;->cancel()V

    .line 49
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoBeep;->play(Z)V

    .line 50
    return-void
.end method

.method private static declared-synchronized pcm(Z)[S
    .registers 4

    .prologue
    .line 99
    const-class v1, Lcom/isaigu/gymapp/ai/AutoBeep;

    monitor-enter v1

    if-eqz p0, :cond_17

    .line 100
    :try_start_5
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoBeep;->longPcm:[S

    if-nez v0, :cond_13

    .line 101
    const/16 v0, 0x497

    const/16 v2, 0x28a

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AutoBeep;->tone(II)[S

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoBeep;->longPcm:[S

    .line 103
    :cond_13
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoBeep;->longPcm:[S
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_28

    .line 108
    :goto_15
    monitor-exit v1

    return-object v0

    .line 105
    :cond_17
    :try_start_17
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoBeep;->shortPcm:[S

    if-nez v0, :cond_25

    .line 106
    const/16 v0, 0x370

    const/16 v2, 0x82

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AutoBeep;->tone(II)[S

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoBeep;->shortPcm:[S

    .line 108
    :cond_25
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoBeep;->shortPcm:[S
    :try_end_27
    .catchall {:try_start_17 .. :try_end_27} :catchall_28

    goto :goto_15

    .line 99
    :catchall_28
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static play(Z)V
    .registers 9

    .prologue
    .line 87
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoBeep;->pcm(Z)[S

    move-result-object v7

    .line 88
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/16 v2, 0x5622

    const/4 v3, 0x4

    const/4 v4, 0x2

    array-length v5, v7

    mul-int/lit8 v5, v5, 0x2

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 90
    const/4 v1, 0x0

    array-length v2, v7

    invoke-virtual {v0, v7, v1, v2}, Landroid/media/AudioTrack;->write([SII)I

    .line 91
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 92
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoBeep;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/isaigu/gymapp/ai/AutoBeep$Release;

    invoke-direct {v2, v0}, Lcom/isaigu/gymapp/ai/AutoBeep$Release;-><init>(Landroid/media/AudioTrack;)V

    if-eqz p0, :cond_2d

    const/16 v0, 0x28a

    :goto_25
    int-to-long v4, v0

    const-wide/16 v6, 0x12c

    add-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2c} :catch_30

    .line 96
    :goto_2c
    return-void

    .line 92
    :cond_2d
    const/16 v0, 0x82

    goto :goto_25

    .line 93
    :catch_30
    move-exception v0

    .line 94
    const-string v1, "auto"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beep: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c
.end method

.method static tone(II)[S
    .registers 12

    .prologue
    .line 113
    mul-int/lit16 v0, p1, 0x5622

    div-int/lit16 v1, v0, 0x3e8

    .line 114
    const/16 v2, 0xb0

    .line 115
    new-array v3, v1, [S

    .line 116
    const/4 v0, 0x0

    :goto_9
    if-ge v0, v1, :cond_46

    .line 117
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-int/lit8 v6, v1, -0x1

    sub-int/2addr v6, v0

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-double v6, v6

    int-to-double v8, v2

    div-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 118
    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v8, p0

    mul-double/2addr v6, v8

    int-to-double v8, v0

    mul-double/2addr v6, v8

    const-wide v8, 0x40d5888000000000L    # 22050.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    const-wide v6, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v4, v6

    const-wide v6, 0x40dfffc000000000L    # 32767.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    int-to-short v4, v4

    aput-short v4, v3, v0

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 120
    :cond_46
    return-object v3
.end method
