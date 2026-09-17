.class public Lcom/isaigu/gymapp/train/utils/MusicSync;
.super Ljava/lang/Object;
.source "MusicSync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/train/utils/MusicSync$TickRunnable;,
        Lcom/isaigu/gymapp/train/utils/MusicSync$PermissionCallback;
    }
.end annotation


# static fields
.field private static final ACTIVE_LEVEL:D = 0.1

.field private static final ATTACK:D = 0.45

.field private static final CURVE:D = 0.48

.field static final ERROR_DENIED:I = 0x7f0d010d

.field static final ERROR_MIC:I = 0x7f0d010e

.field private static final PEAK_DECAY:D = 0.992

.field static final PERMISSION_REQUEST:I = 0x4254

.field private static final RELEASE:D = 0.12

.field private static audioRecord:Landroid/media/AudioRecord;

.field private static handler:Landroid/os/Handler;

.field private static hostActivity:Landroid/app/Activity;

.field static lastAppliedStrength:I

.field private static manager:Lcom/isaigu/gymapp/train/TrainItemManager;

.field private static maxStrength:I

.field private static minStrength:I

.field static running:Z

.field private static smoothedRms:D

.field private static targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

.field private static targetMacAddress:Ljava/lang/String;

.field private static trackedPeakRms:D


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 37
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastAppliedStrength:I

    .line 41
    const/16 v0, 0x50

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->maxStrength:I

    .line 42
    const/16 v0, 0x14

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->minStrength:I

    .line 46
    const-wide/high16 v0, 0x4079000000000000L    # 400.0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)V
    .registers 1

    .line 23
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->applyStrength(I)V

    return-void
.end method

.method static synthetic access$100()Landroid/app/Activity;
    .registers 1

    .line 23
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private static applyStrength(I)V
    .registers 2

    .line 221
    if-gez p0, :cond_3

    .line 222
    const/4 p0, 0x0

    .line 224
    :cond_3
    const/16 v0, 0x64

    if-le p0, v0, :cond_9

    .line 225
    const/16 p0, 0x64

    .line 227
    :cond_9
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showActive(I)V

    .line 228
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 229
    if-nez v0, :cond_17

    .line 230
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;->attachManager(Landroid/app/Activity;)Z

    .line 231
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 233
    :cond_17
    if-nez v0, :cond_1a

    .line 234
    return-void

    .line 237
    :cond_1a
    :try_start_1a
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resolveTargetItem(Lcom/isaigu/gymapp/train/TrainItemManager;)Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 238
    if-nez v0, :cond_21

    .line 239
    return-void

    .line 241
    :cond_21
    invoke-static {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->applyStrengthToItem(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 242
    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastAppliedStrength:I
    :try_end_29
    .catchall {:try_start_1a .. :try_end_29} :catchall_2a

    .line 245
    :cond_29
    goto :goto_2b

    .line 244
    :catchall_2a
    move-exception p0

    .line 246
    :goto_2b
    return-void
.end method

.method private static applyStrengthToItem(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z
    .registers 5

    .line 191
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 192
    return v0

    .line 194
    :cond_4
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setMaSelected(Z)V

    .line 195
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setHzSelected(Z)V

    .line 196
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseMaSelected(Z)V

    .line 197
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseHzSelected(Z)V

    .line 198
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    .line 199
    if-nez v2, :cond_18

    .line 200
    return v0

    .line 202
    :cond_18
    invoke-virtual {v2}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 203
    if-nez v2, :cond_1f

    .line 204
    return v0

    .line 206
    :cond_1f
    iget v0, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 207
    if-ne v0, p1, :cond_24

    .line 208
    return v1

    .line 210
    :cond_24
    sub-int/2addr p1, v0

    .line 211
    const/16 v0, -0x14

    const/16 v2, 0x14

    if-le p1, v2, :cond_2e

    .line 212
    const/16 p1, 0x14

    goto :goto_32

    .line 213
    :cond_2e
    if-ge p1, v0, :cond_32

    .line 214
    const/16 p1, -0x14

    .line 216
    :cond_32
    :goto_32
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addStrenth(I)V

    .line 217
    return v1
.end method

.method static computeStrength()I
    .registers 8

    .line 278
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    .line 279
    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 280
    return v1

    .line 282
    :cond_6
    const/16 v2, 0x400

    new-array v3, v2, [S

    .line 283
    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioRecord;->read([SII)I

    move-result v0

    .line 284
    if-gtz v0, :cond_16

    .line 285
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastAppliedStrength:I

    if-ltz v0, :cond_15

    move v1, v0

    :cond_15
    return v1

    .line 288
    :cond_16
    invoke-static {v3, v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->measureRms([SI)D

    move-result-wide v2

    .line 289
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/train/utils/MusicSync;->updateEnvelope(D)V

    .line 292
    const-wide v2, 0x3fcc28f5c28f5c29L    # 0.22

    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->minStrength:I

    int-to-double v4, v0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    const-wide v6, 0x3fc5c28f5c28f5c3L    # 0.17

    mul-double v4, v4, v6

    sub-double/2addr v2, v4

    .line 293
    const-wide v4, 0x3fa999999999999aL    # 0.05

    cmpg-double v0, v2, v4

    if-gez v0, :cond_3a

    .line 294
    move-wide v2, v4

    .line 296
    :cond_3a
    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    sget-wide v6, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    mul-double v6, v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 297
    sget-wide v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    cmpg-double v0, v4, v2

    if-gez v0, :cond_4b

    .line 298
    return v1

    .line 301
    :cond_4b
    sget-wide v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    sub-double/2addr v4, v2

    .line 302
    const-wide/high16 v6, 0x4044000000000000L    # 40.0

    cmpg-double v0, v4, v6

    if-gez v0, :cond_55

    .line 303
    move-wide v4, v6

    .line 305
    :cond_55
    sget-wide v6, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    sub-double/2addr v6, v2

    div-double/2addr v6, v4

    .line 306
    const-wide/16 v2, 0x0

    cmpg-double v0, v6, v2

    if-gez v0, :cond_60

    .line 307
    move-wide v6, v2

    .line 309
    :cond_60
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v6, v2

    if-lez v0, :cond_67

    .line 310
    move-wide v6, v2

    .line 312
    :cond_67
    const-wide v2, 0x3fdeb851eb851eb8L    # 0.48

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 313
    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpg-double v0, v2, v4

    if-gez v0, :cond_7a

    .line 314
    return v1

    .line 317
    :cond_7a
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->maxStrength:I

    int-to-double v4, v0

    mul-double v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    .line 318
    if-gez v0, :cond_87

    .line 319
    goto :goto_88

    .line 318
    :cond_87
    move v1, v0

    .line 321
    :goto_88
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->maxStrength:I

    if-le v1, v0, :cond_8d

    .line 322
    move v1, v0

    .line 324
    :cond_8d
    return v1
.end method

.method static ensureHandler()V
    .registers 2

    .line 49
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    .line 52
    :cond_f
    return-void
.end method

.method public static getHostActivity()Landroid/app/Activity;
    .registers 1

    .line 379
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getManager()Lcom/isaigu/gymapp/train/TrainItemManager;
    .registers 1

    .line 399
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    return-object v0
.end method

.method static hasRecordPermission()Z
    .registers 3

    .line 67
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->permissionContext()Landroid/content/Context;

    move-result-object v0

    .line 68
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 69
    return v1

    .line 71
    :cond_8
    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1
.end method

.method public static isRunning()Z
    .registers 1

    .line 375
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    return v0
.end method

.method private static matchesMac(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    .registers 2

    .line 148
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->targetMacAddress:Ljava/lang/String;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_25

    .line 151
    :cond_b
    if-eqz p0, :cond_23

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    if-nez v0, :cond_18

    goto :goto_23

    .line 154
    :cond_18
    iget-object p0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object p0, p0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->targetMacAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 152
    :cond_23
    :goto_23
    const/4 p0, 0x0

    return p0

    .line 149
    :cond_25
    :goto_25
    const/4 p0, 0x1

    return p0
.end method

.method private static measureRms([SI)D
    .registers 9

    .line 249
    nop

    .line 250
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, p1, :cond_12

    .line 251
    aget-short v3, p0, v2

    int-to-long v3, v3

    aget-short v5, p0, v2

    int-to-long v5, v5

    mul-long v3, v3, v5

    add-long/2addr v0, v3

    .line 250
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 253
    :cond_12
    long-to-double v0, v0

    int-to-double p0, p1

    div-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static openMicrophone()Z
    .registers 9

    .line 127
    nop

    .line 128
    nop

    .line 129
    const/16 v0, 0x8

    new-array v1, v0, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_68

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_70

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_78

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_80

    const/4 v6, 0x3

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_88

    const/4 v6, 0x4

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_90

    const/4 v6, 0x5

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_98

    const/4 v6, 0x6

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_a0

    const/4 v6, 0x7

    aput-object v3, v1, v6

    .line 139
    const/4 v3, 0x0

    :goto_47
    if-ge v3, v0, :cond_5d

    .line 140
    aget-object v6, v1, v3

    aget v6, v6, v4

    aget-object v7, v1, v3

    aget v7, v7, v5

    const/16 v8, 0x10

    invoke-static {v6, v7, v8, v2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->tryOpen(IIII)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 141
    return v5

    .line 139
    :cond_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    .line 144
    :cond_5d
    const v0, 0xac44

    const/16 v1, 0xc

    invoke-static {v5, v0, v1, v2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->tryOpen(IIII)Z

    move-result v0

    return v0

    nop

    :array_68
    .array-data 4
        0x1
        0xac44
    .end array-data

    :array_70
    .array-data 4
        0x1
        0x3e80
    .end array-data

    :array_78
    .array-data 4
        0x1
        0x1f40
    .end array-data

    :array_80
    .array-data 4
        0x0
        0xac44
    .end array-data

    :array_88
    .array-data 4
        0x0
        0x3e80
    .end array-data

    :array_90
    .array-data 4
        0x6
        0xac44
    .end array-data

    :array_98
    .array-data 4
        0x6
        0x3e80
    .end array-data

    :array_a0
    .array-data 4
        0x5
        0xac44
    .end array-data
.end method

.method private static permissionContext()Landroid/content/Context;
    .registers 1

    .line 60
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    if-eqz v0, :cond_5

    .line 61
    return-object v0

    .line 63
    :cond_5
    invoke-static {}, Lcom/isaigu/gymapp/MainActivity;->getInstance()Lcom/isaigu/gymapp/MainActivity;

    move-result-object v0

    return-object v0
.end method

.method static releaseAudio()V
    .registers 3

    .line 75
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    .line 76
    const/4 v1, 0x0

    sput-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    .line 77
    if-nez v0, :cond_8

    .line 78
    return-void

    .line 81
    :cond_8
    :try_start_8
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    .line 82
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_19

    .line 83
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1a

    .line 86
    :cond_19
    goto :goto_1b

    .line 85
    :catchall_1a
    move-exception v1

    .line 88
    :goto_1b
    :try_start_1b
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    .line 90
    goto :goto_20

    .line 89
    :catchall_1f
    move-exception v0

    .line 91
    :goto_20
    return-void
.end method

.method private static resetAudioLevels()V
    .registers 2

    .line 55
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    .line 56
    const-wide/high16 v0, 0x4079000000000000L    # 400.0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 57
    return-void
.end method

.method private static resolveTargetItem(Lcom/isaigu/gymapp/train/TrainItemManager;)Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 5

    .line 158
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 159
    if-eqz v0, :cond_5

    .line 160
    return-object v0

    .line 162
    :cond_5
    const/4 v0, 0x0

    if-nez p0, :cond_9

    .line 163
    return-object v0

    .line 165
    :cond_9
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object p0

    .line 166
    if-nez p0, :cond_10

    .line 167
    return-object v0

    .line 169
    :cond_10
    nop

    .line 170
    const/4 v1, 0x0

    :goto_12
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_34

    .line 171
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 172
    if-eqz v2, :cond_31

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 173
    goto :goto_31

    .line 175
    :cond_27
    if-nez v0, :cond_2a

    .line 176
    move-object v0, v2

    .line 178
    :cond_2a
    invoke-static {v2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->matchesMac(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 179
    return-object v2

    .line 170
    :cond_31
    :goto_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 182
    :cond_34
    return-object v0
.end method

.method static scheduleTick()V
    .registers 4

    .line 328
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-nez v0, :cond_5

    .line 329
    return-void

    .line 331
    :cond_5
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 332
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/train/utils/MusicSync$TickRunnable;

    invoke-direct {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync$TickRunnable;-><init>()V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 333
    return-void
.end method

.method public static setHostActivity(Landroid/app/Activity;)V
    .registers 1

    .line 383
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    .line 384
    return-void
.end method

.method public static setManager(Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 1

    .line 387
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 388
    return-void
.end method

.method public static setStrengthRange(II)V
    .registers 3

    .line 403
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 v0, 0x64

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->minStrength:I

    .line 404
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->maxStrength:I

    .line 405
    return-void
.end method

.method public static setTargetItem(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 1

    .line 395
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 396
    return-void
.end method

.method public static setTargetMacAddress(Ljava/lang/String;)V
    .registers 1

    .line 391
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->targetMacAddress:Ljava/lang/String;

    .line 392
    return-void
.end method

.method public static start(Landroid/app/Activity;II)V
    .registers 4

    .line 408
    if-nez p0, :cond_3

    .line 409
    return-void

    .line 411
    :cond_3
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    .line 412
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stop()V

    .line 413
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setStrengthRange(II)V

    .line 414
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;->attachManager(Landroid/app/Activity;)Z

    .line 415
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->hasRecordPermission()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 416
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->startCapture()V

    .line 417
    return-void

    .line 419
    :cond_18
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showPermission()V

    .line 420
    const/16 p1, 0x4254

    new-instance p2, Lcom/isaigu/gymapp/train/utils/MusicSync$PermissionCallback;

    invoke-direct {p2}, Lcom/isaigu/gymapp/train/utils/MusicSync$PermissionCallback;-><init>()V

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v0, p1, p2}, Lcom/isaigu/gymapp/utils/AndroidUtils;->requestPermission(Landroid/app/Activity;Ljava/lang/String;ILcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;)V

    .line 422
    return-void
.end method

.method static startCapture()V
    .registers 6

    .line 336
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->hasRecordPermission()Z

    move-result v0

    const v1, 0x7f0d010d

    if-nez v0, :cond_d

    .line 337
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 338
    return-void

    .line 340
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 341
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resetAudioLevels()V

    .line 343
    const v0, 0x7f0d010e

    const/4 v2, 0x0

    :try_start_17
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->openMicrophone()Z

    move-result v3

    if-nez v3, :cond_21

    .line 344
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 345
    return-void

    .line 347
    :cond_21
    sget-object v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    .line 348
    if-eqz v3, :cond_4d

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2d

    goto :goto_4d

    .line 352
    :cond_2d
    invoke-virtual {v3}, Landroid/media/AudioRecord;->startRecording()V

    .line 353
    invoke-virtual {v3}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3e

    .line 354
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 355
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 356
    return-void

    .line 358
    :cond_3e
    sput-boolean v5, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 359
    const/4 v3, -0x1

    sput v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastAppliedStrength:I

    .line 360
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showActive(I)V

    .line 361
    invoke-static {v2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->applyStrength(I)V

    .line 362
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->scheduleTick()V

    goto :goto_64

    .line 349
    :cond_4d
    :goto_4d
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V
    :try_end_50
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_50} :catch_5b
    .catchall {:try_start_17 .. :try_end_50} :catchall_51

    .line 350
    return-void

    .line 367
    :catchall_51
    move-exception v1

    .line 368
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 369
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 370
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    goto :goto_65

    .line 363
    :catch_5b
    move-exception v0

    .line 364
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 365
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 366
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 371
    :goto_64
    nop

    .line 372
    :goto_65
    return-void
.end method

.method public static stop()V
    .registers 2

    .line 425
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 427
    const/4 v0, 0x0

    :try_start_4
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_d

    .line 428
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 430
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_11

    .line 432
    goto :goto_12

    .line 431
    :catchall_11
    move-exception v1

    .line 433
    :goto_12
    const/4 v1, -0x1

    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastAppliedStrength:I

    .line 434
    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->targetMacAddress:Ljava/lang/String;

    .line 435
    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 436
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resetAudioLevels()V

    .line 437
    return-void
.end method

.method private static tryOpen(IIII)Z
    .registers 13

    .line 95
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1, p2, p3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v1

    .line 96
    if-gtz v1, :cond_8

    .line 97
    return v0

    .line 99
    :cond_8
    mul-int/lit8 v1, v1, 0x2

    const/16 v2, 0x1000

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 101
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_41

    .line 102
    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 103
    invoke-virtual {v1, p3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object p3

    .line 104
    invoke-virtual {p3, p1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    .line 105
    invoke-virtual {p1, p2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object p1

    .line 107
    new-instance p2, Landroid/media/AudioRecord$Builder;

    invoke-direct {p2}, Landroid/media/AudioRecord$Builder;-><init>()V

    .line 108
    invoke-virtual {p2, p0}, Landroid/media/AudioRecord$Builder;->setAudioSource(I)Landroid/media/AudioRecord$Builder;

    move-result-object p0

    .line 109
    invoke-virtual {p0, p1}, Landroid/media/AudioRecord$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioRecord$Builder;

    move-result-object p0

    .line 110
    invoke-virtual {p0, v8}, Landroid/media/AudioRecord$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioRecord$Builder;

    move-result-object p0

    .line 111
    invoke-virtual {p0}, Landroid/media/AudioRecord$Builder;->build()Landroid/media/AudioRecord;

    move-result-object p0

    .line 112
    goto :goto_4c

    .line 113
    :cond_41
    new-instance v1, Landroid/media/AudioRecord;

    move-object v3, v1

    move v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioRecord;-><init>(IIIII)V

    move-object p0, v1

    .line 115
    :goto_4c
    invoke-virtual {p0}, Landroid/media/AudioRecord;->getState()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_57

    .line 116
    invoke-virtual {p0}, Landroid/media/AudioRecord;->release()V

    .line 117
    return v0

    .line 119
    :cond_57
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;
    :try_end_59
    .catchall {:try_start_1 .. :try_end_59} :catchall_5a

    .line 120
    return p2

    .line 121
    :catchall_5a
    move-exception p0

    .line 122
    return v0
.end method

.method private static updateEnvelope(D)V
    .registers 8

    .line 257
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    cmpl-double v2, p0, v0

    if-lez v2, :cond_13

    .line 258
    const-wide v2, 0x3fdccccccccccccdL    # 0.45

    sub-double v4, p0, v0

    mul-double v4, v4, v2

    add-double/2addr v0, v4

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    goto :goto_1f

    .line 260
    :cond_13
    const-wide v2, 0x3fbeb851eb851eb8L    # 0.12

    sub-double v4, p0, v0

    mul-double v4, v4, v2

    add-double/2addr v0, v4

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    .line 262
    :goto_1f
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    cmpl-double v2, p0, v0

    if-lez v2, :cond_28

    .line 263
    sput-wide p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    goto :goto_39

    .line 265
    :cond_28
    const-wide v2, 0x3fefbe76c8b43958L    # 0.992

    mul-double v0, v0, v2

    const-wide v2, 0x3f80624dd2f1aa00L    # 0.008000000000000007

    mul-double p0, p0, v2

    add-double/2addr v0, p0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 267
    :goto_39
    sget-wide p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    const-wide/high16 v0, 0x405e000000000000L    # 120.0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_43

    .line 268
    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 270
    :cond_43
    return-void
.end method
