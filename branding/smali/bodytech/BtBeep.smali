.class public final Lcom/isaigu/gymapp/bodytech/BtBeep;
.super Ljava/lang/Object;
.source "BtBeep.java"


# static fields
.field static final DASH_MS:I = 0xf0

.field static final DOT_MS:I = 0x78

.field static final EDGE_MS:I = 0x5

.field static final FREQ:I = 0x4b0

.field static final GAP_MS:I = 0x78

.field static final LOST_GAP_MS:J = 0x1388L

.field static final RATE:I = 0x5dc0

.field private static final TAG:Ljava/lang/String; = "BtBeep"

.field private static lastLost:J

.field private static track:Landroid/media/AudioTrack;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized lost()V
    .registers 8

    .prologue
    .line 34
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtBeep;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 35
    sget-wide v4, Lcom/isaigu/gymapp/bodytech/BtBeep;->lastLost:J
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1b

    sub-long v4, v2, v4

    const-wide/16 v6, 0x1388

    cmp-long v0, v4, v6

    if-gez v0, :cond_13

    .line 38
    :goto_11
    monitor-exit v1

    return-void

    .line 36
    :cond_13
    :try_start_13
    sput-wide v2, Lcom/isaigu/gymapp/bodytech/BtBeep;->lastLost:J

    .line 37
    const-string v0, "..."

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtBeep;->play(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1b

    goto :goto_11

    .line 34
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static ms(C)I
    .registers 2

    .prologue
    .line 59
    const/16 v0, 0x2d

    if-ne p0, v0, :cond_7

    const/16 v0, 0xf0

    :goto_6
    return v0

    :cond_7
    const/16 v0, 0x78

    goto :goto_6
.end method

.method static pcm(Ljava/lang/String;)[S
    .registers 15

    .prologue
    .line 42
    const/4 v1, 0x0

    .line 43
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_21

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/isaigu/gymapp/bodytech/BtBeep;->ms(C)I

    move-result v3

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_1f

    const/16 v2, 0x78

    :goto_1a
    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1f
    const/4 v2, 0x0

    goto :goto_1a

    .line 44
    :cond_21
    mul-int/lit16 v0, v1, 0x5dc0

    div-int/lit16 v0, v0, 0x3e8

    new-array v6, v0, [S

    .line 45
    const/4 v1, 0x0

    .line 46
    const/4 v0, 0x0

    :goto_29
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_81

    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/isaigu/gymapp/bodytech/BtBeep;->ms(C)I

    move-result v2

    mul-int/lit16 v2, v2, 0x5dc0

    div-int/lit16 v7, v2, 0x3e8

    .line 48
    const/16 v8, 0x78

    .line 49
    const/4 v2, 0x0

    move v5, v2

    :goto_3f
    if-ge v5, v7, :cond_7b

    .line 50
    if-ge v5, v8, :cond_6c

    int-to-double v2, v5

    int-to-double v10, v8

    div-double/2addr v2, v10

    .line 51
    :goto_46
    add-int v9, v1, v5

    int-to-long v10, v5

    const-wide/16 v12, 0x4b0

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x2

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x5dc0

    div-long/2addr v10, v12

    const-wide/16 v12, 0x2

    rem-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v4, v10, v12

    if-nez v4, :cond_79

    const/4 v4, 0x1

    :goto_5c
    int-to-double v10, v4

    mul-double/2addr v2, v10

    const-wide v10, 0x40cf400000000000L    # 16000.0

    mul-double/2addr v2, v10

    double-to-int v2, v2

    int-to-short v2, v2

    aput-short v2, v6, v9

    .line 49
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_3f

    .line 50
    :cond_6c
    sub-int v2, v7, v8

    if-le v5, v2, :cond_76

    sub-int v2, v7, v5

    int-to-double v2, v2

    int-to-double v10, v8

    div-double/2addr v2, v10

    goto :goto_46

    :cond_76
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_46

    .line 51
    :cond_79
    const/4 v4, -0x1

    goto :goto_5c

    .line 53
    :cond_7b
    add-int/lit16 v2, v7, 0xb40

    add-int/2addr v1, v2

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 55
    :cond_81
    return-object v6
.end method

.method private static declared-synchronized play(Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 64
    const-class v6, Lcom/isaigu/gymapp/bodytech/BtBeep;

    monitor-enter v6

    :try_start_3
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtBeep;->release()V

    .line 65
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtBeep;->pcm(Ljava/lang/String;)[S

    move-result-object v7

    .line 66
    new-instance v0, Landroid/media/AudioTrack;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x1

    .line 67
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v2, 0x4

    .line 68
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    new-instance v2, Landroid/media/AudioFormat$Builder;

    invoke-direct {v2}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v3, 0x2

    .line 69
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    const/16 v3, 0x5dc0

    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    const/4 v3, 0x4

    .line 70
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v2

    array-length v3, v7

    mul-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    .line 72
    const/4 v1, 0x0

    array-length v2, v7

    invoke-virtual {v0, v7, v1, v2}, Landroid/media/AudioTrack;->write([SII)I

    .line 73
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 74
    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtBeep;->track:Landroid/media/AudioTrack;
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_4a} :catch_4c
    .catchall {:try_start_3 .. :try_end_4a} :catchall_66

    .line 78
    :goto_4a
    monitor-exit v6

    return-void

    .line 75
    :catch_4c
    move-exception v0

    .line 76
    :try_start_4d
    const-string v1, "BtBeep"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beep: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catchall {:try_start_4d .. :try_end_65} :catchall_66

    goto :goto_4a

    .line 64
    :catchall_66
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method private static release()V
    .registers 4

    .prologue
    .line 82
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtBeep;->track:Landroid/media/AudioTrack;

    if-eqz v0, :cond_e

    .line 83
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtBeep;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 84
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtBeep;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_e} :catch_12

    .line 89
    :cond_e
    :goto_e
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtBeep;->track:Landroid/media/AudioTrack;

    .line 90
    return-void

    .line 86
    :catch_12
    move-exception v0

    .line 87
    const-string v1, "BtBeep"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "release: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public static start()V
    .registers 1

    .prologue
    .line 26
    const-string v0, "...-"

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtBeep;->play(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static stop()V
    .registers 1

    .prologue
    .line 30
    const-string v0, "-"

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtBeep;->play(Ljava/lang/String;)V

    .line 31
    return-void
.end method
