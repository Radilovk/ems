.class public final Lcom/isaigu/gymapp/bodytech/BtBeep;
.super Ljava/lang/Object;
.source "BtBeep.java"


# static fields
.field static final ATTACK_MS:I = 0x8

.field static final GAP_MS:I = 0x78

.field static final HIGH:I = 0x527

.field static final LONG_MS:I = 0x190

.field static final LOST_GAP_MS:J = 0x1388L

.field static final LOW:I = 0x370

.field static final RATE:I = 0x5dc0

.field static final RELEASE_MS:I = 0x8

.field static final SHORT_MS:I = 0x78

.field private static final TAG:Ljava/lang/String; = "BtBeep"

.field private static lastLost:J

.field private static track:Landroid/media/AudioTrack;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized lost()V
    .registers 8

    .prologue
    .line 42
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtBeep;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 43
    sget-wide v4, Lcom/isaigu/gymapp/bodytech/BtBeep;->lastLost:J
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1b

    sub-long v4, v2, v4

    const-wide/16 v6, 0x1388

    cmp-long v0, v4, v6

    if-gez v0, :cond_13

    .line 46
    :goto_11
    monitor-exit v1

    return-void

    .line 44
    :cond_13
    :try_start_13
    sput-wide v2, Lcom/isaigu/gymapp/bodytech/BtBeep;->lastLost:J

    .line 45
    const-string v0, "..."

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtBeep;->play(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1b

    goto :goto_11

    .line 42
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static ms(C)I
    .registers 2

    .prologue
    .line 73
    const/16 v0, 0x57

    if-ne p0, v0, :cond_7

    const/16 v0, 0x320

    :goto_6
    return v0

    :cond_7
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_e

    const/16 v0, 0x78

    goto :goto_6

    :cond_e
    const/16 v0, 0x190

    goto :goto_6
.end method

.method public static pause()V
    .registers 1

    .prologue
    .line 33
    const-string v0, "L"

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtBeep;->play(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method static pcm(Ljava/lang/String;)[S
    .registers 21

    .prologue
    .line 50
    const/4 v3, 0x0

    .line 51
    const/4 v2, 0x0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_23

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/isaigu/gymapp/bodytech/BtBeep;->ms(C)I

    move-result v5

    add-int/lit8 v4, v2, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_21

    const/16 v4, 0x78

    :goto_1c
    add-int/2addr v4, v5

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_21
    const/4 v4, 0x0

    goto :goto_1c

    .line 52
    :cond_23
    mul-int/lit16 v2, v3, 0x5dc0

    div-int/lit16 v2, v2, 0x3e8

    new-array v8, v2, [S

    .line 53
    const/4 v3, 0x0

    .line 54
    const/4 v2, 0x0

    :goto_2b
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_c4

    .line 55
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/isaigu/gymapp/bodytech/BtBeep;->ms(C)I

    move-result v4

    mul-int/lit16 v4, v4, 0x5dc0

    div-int/lit16 v9, v4, 0x3e8

    .line 56
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x48

    if-ne v4, v5, :cond_ba

    const/16 v4, 0x527

    .line 57
    :goto_4b
    const/16 v10, 0xc0

    .line 58
    const/16 v11, 0xc0

    .line 59
    const/4 v5, 0x0

    :goto_50
    if-ge v5, v9, :cond_bd

    .line 60
    const-wide v6, -0x3ffe666666666666L    # -2.2

    int-to-double v12, v5

    mul-double/2addr v6, v12

    int-to-double v12, v9

    div-double/2addr v6, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    .line 61
    if-ge v5, v10, :cond_65

    int-to-double v12, v5

    int-to-double v14, v10

    div-double/2addr v12, v14

    mul-double/2addr v6, v12

    .line 62
    :cond_65
    sub-int v12, v9, v11

    if-le v5, v12, :cond_6f

    sub-int v12, v9, v5

    int-to-double v12, v12

    int-to-double v14, v11

    div-double/2addr v12, v14

    mul-double/2addr v6, v12

    .line 63
    :cond_6f
    const-wide v12, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v14, v4

    mul-double/2addr v12, v14

    int-to-double v14, v5

    mul-double/2addr v12, v14

    const-wide v14, 0x40d7700000000000L    # 24000.0

    div-double/2addr v12, v14

    .line 64
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    const-wide v16, 0x3fd999999999999aL    # 0.4

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    mul-double v18, v18, v12

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    add-double v14, v14, v16

    const-wide v16, 0x3fc999999999999aL    # 0.2

    const-wide/high16 v18, 0x4008000000000000L    # 3.0

    mul-double v12, v12, v18

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double v12, v12, v16

    add-double/2addr v12, v14

    .line 65
    add-int v14, v3, v5

    const-wide v16, 0x3ff999999999999aL    # 1.6

    div-double v12, v12, v16

    mul-double/2addr v6, v12

    const-wide v12, 0x40d57c0000000000L    # 22000.0

    mul-double/2addr v6, v12

    double-to-int v6, v6

    int-to-short v6, v6

    aput-short v6, v8, v14

    .line 59
    add-int/lit8 v5, v5, 0x1

    goto :goto_50

    .line 56
    :cond_ba
    const/16 v4, 0x370

    goto :goto_4b

    .line 67
    :cond_bd
    add-int/lit16 v4, v9, 0xb40

    add-int/2addr v3, v4

    .line 54
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2b

    .line 69
    :cond_c4
    return-object v8
.end method

.method private static declared-synchronized play(Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 78
    const-class v6, Lcom/isaigu/gymapp/bodytech/BtBeep;

    monitor-enter v6

    :try_start_3
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtBeep;->release()V

    .line 79
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtBeep;->pcm(Ljava/lang/String;)[S

    move-result-object v7

    .line 80
    new-instance v0, Landroid/media/AudioTrack;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x1

    .line 81
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v2, 0x4

    .line 82
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    new-instance v2, Landroid/media/AudioFormat$Builder;

    invoke-direct {v2}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v3, 0x2

    .line 83
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    const/16 v3, 0x5dc0

    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    const/4 v3, 0x4

    .line 84
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v2

    array-length v3, v7

    mul-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    .line 86
    const/4 v1, 0x0

    array-length v2, v7

    invoke-virtual {v0, v7, v1, v2}, Landroid/media/AudioTrack;->write([SII)I

    .line 87
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 88
    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtBeep;->track:Landroid/media/AudioTrack;
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_4a} :catch_4c
    .catchall {:try_start_3 .. :try_end_4a} :catchall_66

    .line 92
    :goto_4a
    monitor-exit v6

    return-void

    .line 89
    :catch_4c
    move-exception v0

    .line 90
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

    .line 78
    :catchall_66
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method private static release()V
    .registers 4

    .prologue
    .line 96
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtBeep;->track:Landroid/media/AudioTrack;

    if-eqz v0, :cond_e

    .line 97
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtBeep;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 98
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtBeep;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_e} :catch_12

    .line 103
    :cond_e
    :goto_e
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtBeep;->track:Landroid/media/AudioTrack;

    .line 104
    return-void

    .line 100
    :catch_12
    move-exception v0

    .line 101
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
    .line 28
    const-string v0, "H"

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtBeep;->play(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static stop()V
    .registers 1

    .prologue
    .line 38
    const-string v0, "W"

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtBeep;->play(Ljava/lang/String;)V

    .line 39
    return-void
.end method
