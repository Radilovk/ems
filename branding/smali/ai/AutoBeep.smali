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
.field private static final END_HZ:I = 0x294

.field private static final END_MS:I = 0x578

.field private static final LONG_HZ:I = 0x497

.field private static final LONG_MS:I = 0x28a

.field private static final RATE:I = 0x5622

.field private static final SHORT:Ljava/lang/Runnable;

.field private static final SHORT_HZ:I = 0x370

.field private static final SHORT_MS:I = 0x82

.field private static endPcm:[S

.field private static final handler:Landroid/os/Handler;

.field private static longPcm:[S

.field private static shortPcm:[S


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoBeep;->handler:Landroid/os/Handler;

    .line 27
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoBeep$Beep;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/ai/AutoBeep$Beep;-><init>(Z)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoBeep;->SHORT:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Z)V
    .registers 1

    .prologue
    .line 17
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoBeep;->play(Z)V

    return-void
.end method

.method public static cancel()V
    .registers 2

    .prologue
    .line 47
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoBeep;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoBeep;->SHORT:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 48
    return-void
.end method

.method public static countdown(J)V
    .registers 12

    .prologue
    .line 36
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBeep;->cancel()V

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 38
    const/4 v0, 0x3

    :goto_8
    const/4 v1, 0x1

    if-lt v0, v1, :cond_28

    .line 39
    int-to-long v4, v0

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    sub-long v4, p0, v4

    sub-long/2addr v4, v2

    .line 40
    const-wide/16 v6, -0x96

    cmp-long v1, v4, v6

    if-ltz v1, :cond_25

    .line 41
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoBeep;->handler:Landroid/os/Handler;

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoBeep;->SHORT:Ljava/lang/Runnable;

    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-virtual {v1, v6, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38
    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 44
    :cond_28
    return-void
.end method

.method public static end()V
    .registers 8

    .prologue
    .line 58
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBeep;->cancel()V

    .line 60
    :try_start_3
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBeep;->endPcm()[S

    move-result-object v7

    .line 61
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/16 v2, 0x5622

    const/4 v3, 0x4

    const/4 v4, 0x2

    array-length v5, v7

    mul-int/lit8 v5, v5, 0x2

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 63
    const/4 v1, 0x0

    array-length v2, v7

    invoke-virtual {v0, v7, v1, v2}, Landroid/media/AudioTrack;->write([SII)I

    .line 64
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 65
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoBeep;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/isaigu/gymapp/ai/AutoBeep$Release;

    invoke-direct {v2, v0}, Lcom/isaigu/gymapp/ai/AutoBeep$Release;-><init>(Landroid/media/AudioTrack;)V

    const-wide/16 v4, 0x6a4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_29} :catch_2a

    .line 69
    :goto_29
    return-void

    .line 66
    :catch_2a
    move-exception v0

    .line 67
    const-string v1, "auto"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beep end: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29
.end method

.method private static declared-synchronized endPcm()[S
    .registers 3

    .prologue
    .line 72
    const-class v1, Lcom/isaigu/gymapp/ai/AutoBeep;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoBeep;->endPcm:[S

    if-nez v0, :cond_11

    .line 73
    const/16 v0, 0x294

    const/16 v2, 0x578

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AutoBeep;->tone(II)[S

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoBeep;->endPcm:[S

    .line 75
    :cond_11
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoBeep;->endPcm:[S
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    monitor-exit v1

    return-object v0

    .line 72
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static go()V
    .registers 1

    .prologue
    .line 52
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBeep;->cancel()V

    .line 53
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoBeep;->play(Z)V

    .line 54
    return-void
.end method

.method private static declared-synchronized pcm(Z)[S
    .registers 4

    .prologue
    .line 125
    const-class v1, Lcom/isaigu/gymapp/ai/AutoBeep;

    monitor-enter v1

    if-eqz p0, :cond_17

    .line 126
    :try_start_5
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoBeep;->longPcm:[S

    if-nez v0, :cond_13

    .line 127
    const/16 v0, 0x497

    const/16 v2, 0x28a

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AutoBeep;->tone(II)[S

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoBeep;->longPcm:[S

    .line 129
    :cond_13
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoBeep;->longPcm:[S
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_28

    .line 134
    :goto_15
    monitor-exit v1

    return-object v0

    .line 131
    :cond_17
    :try_start_17
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoBeep;->shortPcm:[S

    if-nez v0, :cond_25

    .line 132
    const/16 v0, 0x370

    const/16 v2, 0x82

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AutoBeep;->tone(II)[S

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoBeep;->shortPcm:[S

    .line 134
    :cond_25
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoBeep;->shortPcm:[S
    :try_end_27
    .catchall {:try_start_17 .. :try_end_27} :catchall_28

    goto :goto_15

    .line 125
    :catchall_28
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static play(Z)V
    .registers 9

    .prologue
    .line 113
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoBeep;->pcm(Z)[S

    move-result-object v7

    .line 114
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/16 v2, 0x5622

    const/4 v3, 0x4

    const/4 v4, 0x2

    array-length v5, v7

    mul-int/lit8 v5, v5, 0x2

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 116
    const/4 v1, 0x0

    array-length v2, v7

    invoke-virtual {v0, v7, v1, v2}, Landroid/media/AudioTrack;->write([SII)I

    .line 117
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 118
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

    .line 122
    :goto_2c
    return-void

    .line 118
    :cond_2d
    const/16 v0, 0x82

    goto :goto_25

    .line 119
    :catch_30
    move-exception v0

    .line 120
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
    .line 139
    mul-int/lit16 v0, p1, 0x5622

    div-int/lit16 v1, v0, 0x3e8

    .line 140
    const/16 v2, 0xb0

    .line 141
    new-array v3, v1, [S

    .line 142
    const/4 v0, 0x0

    :goto_9
    if-ge v0, v1, :cond_46

    .line 143
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

    .line 144
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

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 146
    :cond_46
    return-object v3
.end method
