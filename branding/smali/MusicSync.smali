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

.field static liveStrength:I

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

    .line 34
    const/16 v0, 0x50

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->maxStrength:I

    .line 35
    const/16 v0, 0x14

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->minStrength:I

    .line 40
    const-wide/high16 v0, 0x4079000000000000L    # 400.0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static computeStrength()I
    .registers 8

    .line 170
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    .line 171
    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 172
    return v1

    .line 174
    :cond_6
    const/16 v2, 0x400

    new-array v3, v2, [S

    .line 175
    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioRecord;->read([SII)I

    move-result v0

    .line 176
    if-gtz v0, :cond_13

    .line 177
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    return v0

    .line 180
    :cond_13
    invoke-static {v3, v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->measureRms([SI)D

    move-result-wide v2

    .line 181
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/train/utils/MusicSync;->updateEnvelope(D)V

    .line 183
    const-wide v2, 0x3fcc28f5c28f5c29L    # 0.22

    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->minStrength:I

    int-to-double v4, v0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    const-wide v6, 0x3fc5c28f5c28f5c3L    # 0.17

    mul-double v4, v4, v6

    sub-double/2addr v2, v4

    .line 184
    const-wide v4, 0x3fa999999999999aL    # 0.05

    cmpg-double v0, v2, v4

    if-gez v0, :cond_37

    .line 185
    move-wide v2, v4

    .line 187
    :cond_37
    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    sget-wide v6, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    mul-double v6, v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 188
    sget-wide v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    cmpg-double v0, v4, v2

    if-gez v0, :cond_48

    .line 189
    return v1

    .line 192
    :cond_48
    sget-wide v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    sub-double/2addr v4, v2

    .line 193
    const-wide/high16 v6, 0x4044000000000000L    # 40.0

    cmpg-double v0, v4, v6

    if-gez v0, :cond_52

    .line 194
    move-wide v4, v6

    .line 196
    :cond_52
    sget-wide v6, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    sub-double/2addr v6, v2

    div-double/2addr v6, v4

    .line 197
    const-wide/16 v2, 0x0

    cmpg-double v0, v6, v2

    if-gez v0, :cond_5d

    .line 198
    move-wide v6, v2

    .line 200
    :cond_5d
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v6, v2

    if-lez v0, :cond_64

    .line 201
    move-wide v6, v2

    .line 203
    :cond_64
    const-wide v2, 0x3fdeb851eb851eb8L    # 0.48

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 204
    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpg-double v0, v2, v4

    if-gez v0, :cond_77

    .line 205
    return v1

    .line 208
    :cond_77
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->maxStrength:I

    int-to-double v4, v0

    mul-double v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    .line 209
    if-gez v0, :cond_84

    .line 210
    goto :goto_85

    .line 209
    :cond_84
    move v1, v0

    .line 212
    :goto_85
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->maxStrength:I

    if-le v1, v0, :cond_8a

    .line 213
    move v1, v0

    .line 215
    :cond_8a
    return v1
.end method

.method static ensureHandler()V
    .registers 2

    .line 43
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    .line 46
    :cond_f
    return-void
.end method

.method public static getHostActivity()Landroid/app/Activity;
    .registers 1

    .line 286
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getLiveStrength()I
    .registers 1

    .line 282
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    return v0
.end method

.method static hasRecordPermission()Z
    .registers 3

    .line 61
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->permissionContext()Landroid/content/Context;

    move-result-object v0

    .line 62
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 63
    return v1

    .line 65
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

    .line 278
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    return v0
.end method

.method private static measureRms([SI)D
    .registers 9

    .line 142
    nop

    .line 143
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, p1, :cond_12

    .line 144
    aget-short v3, p0, v2

    int-to-long v3, v3

    aget-short v5, p0, v2

    int-to-long v5, v5

    mul-long v3, v3, v5

    add-long/2addr v0, v3

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 146
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

    .line 121
    nop

    .line 122
    nop

    .line 123
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

    .line 133
    const/4 v3, 0x0

    :goto_47
    if-ge v3, v0, :cond_5d

    .line 134
    aget-object v6, v1, v3

    aget v6, v6, v4

    aget-object v7, v1, v3

    aget v7, v7, v5

    const/16 v8, 0x10

    invoke-static {v6, v7, v8, v2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->tryOpen(IIII)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 135
    return v5

    .line 133
    :cond_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    .line 138
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

    .line 54
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    if-eqz v0, :cond_5

    .line 55
    return-object v0

    .line 57
    :cond_5
    invoke-static {}, Lcom/isaigu/gymapp/MainActivity;->getInstance()Lcom/isaigu/gymapp/MainActivity;

    move-result-object v0

    return-object v0
.end method

.method static releaseAudio()V
    .registers 3

    .line 69
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    .line 70
    const/4 v1, 0x0

    sput-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    .line 71
    if-nez v0, :cond_8

    .line 72
    return-void

    .line 75
    :cond_8
    :try_start_8
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    .line 76
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_19

    .line 77
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1a

    .line 80
    :cond_19
    goto :goto_1b

    .line 79
    :catchall_1a
    move-exception v1

    .line 82
    :goto_1b
    :try_start_1b
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    .line 84
    goto :goto_20

    .line 83
    :catchall_1f
    move-exception v0

    .line 85
    :goto_20
    return-void
.end method

.method private static resetAudioLevels()V
    .registers 2

    .line 49
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    .line 50
    const-wide/high16 v0, 0x4079000000000000L    # 400.0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 51
    return-void
.end method

.method static scheduleTick()V
    .registers 4

    .line 219
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-nez v0, :cond_5

    .line 220
    return-void

    .line 222
    :cond_5
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 223
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/train/utils/MusicSync$TickRunnable;

    invoke-direct {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync$TickRunnable;-><init>()V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 224
    return-void
.end method

.method public static setHostActivity(Landroid/app/Activity;)V
    .registers 1

    .line 290
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    .line 291
    return-void
.end method

.method public static setStrengthRange(II)V
    .registers 3

    .line 302
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 v0, 0x64

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->minStrength:I

    .line 303
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->maxStrength:I

    .line 304
    return-void
.end method

.method public static setTargetItem(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 1

    .line 298
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 299
    return-void
.end method

.method public static setTargetMacAddress(Ljava/lang/String;)V
    .registers 1

    .line 294
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->targetMacAddress:Ljava/lang/String;

    .line 295
    return-void
.end method

.method public static start(Landroid/app/Activity;II)V
    .registers 4

    .line 307
    if-nez p0, :cond_3

    .line 308
    return-void

    .line 310
    :cond_3
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    .line 311
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 312
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setStrengthRange(II)V

    .line 313
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->hasRecordPermission()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 314
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->startCapture()V

    .line 315
    return-void

    .line 317
    :cond_15
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showPermission()V

    .line 318
    const/16 p1, 0x4254

    new-instance p2, Lcom/isaigu/gymapp/train/utils/MusicSync$PermissionCallback;

    invoke-direct {p2}, Lcom/isaigu/gymapp/train/utils/MusicSync$PermissionCallback;-><init>()V

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v0, p1, p2}, Lcom/isaigu/gymapp/utils/AndroidUtils;->requestPermission(Landroid/app/Activity;Ljava/lang/String;ILcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;)V

    .line 320
    return-void
.end method

.method static startCapture()V
    .registers 6

    .line 240
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->hasRecordPermission()Z

    move-result v0

    const v1, 0x7f0d010d

    if-nez v0, :cond_d

    .line 241
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 242
    return-void

    .line 244
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 245
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resetAudioLevels()V

    .line 247
    const v0, 0x7f0d010e

    const/4 v2, 0x0

    :try_start_17
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->openMicrophone()Z

    move-result v3

    if-nez v3, :cond_21

    .line 248
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 249
    return-void

    .line 251
    :cond_21
    sget-object v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    .line 252
    if-eqz v3, :cond_49

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2d

    goto :goto_49

    .line 256
    :cond_2d
    invoke-virtual {v3}, Landroid/media/AudioRecord;->startRecording()V

    .line 257
    invoke-virtual {v3}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3e

    .line 258
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 259
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 260
    return-void

    .line 262
    :cond_3e
    sput-boolean v5, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 263
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 264
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showActive(I)V

    .line 265
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->scheduleTick()V

    goto :goto_60

    .line 253
    :cond_49
    :goto_49
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V
    :try_end_4c
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_4c} :catch_57
    .catchall {:try_start_17 .. :try_end_4c} :catchall_4d

    .line 254
    return-void

    .line 270
    :catchall_4d
    move-exception v1

    .line 271
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 272
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 273
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    goto :goto_61

    .line 266
    :catch_57
    move-exception v0

    .line 267
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 268
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 269
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 274
    :goto_60
    nop

    .line 275
    :goto_61
    return-void
.end method

.method public static stop()V
    .registers 1

    .line 323
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 324
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->targetMacAddress:Ljava/lang/String;

    .line 325
    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 326
    return-void
.end method

.method private static stopCaptureOnly()V
    .registers 3

    .line 227
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 229
    :try_start_3
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_d

    .line 230
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 232
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_11

    .line 234
    goto :goto_12

    .line 233
    :catchall_11
    move-exception v1

    .line 235
    :goto_12
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 236
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resetAudioLevels()V

    .line 237
    return-void
.end method

.method private static tryOpen(IIII)Z
    .registers 13

    .line 89
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1, p2, p3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v1

    .line 90
    if-gtz v1, :cond_8

    .line 91
    return v0

    .line 93
    :cond_8
    mul-int/lit8 v1, v1, 0x2

    const/16 v2, 0x1000

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 95
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_41

    .line 96
    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 97
    invoke-virtual {v1, p3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object p3

    .line 98
    invoke-virtual {p3, p1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    .line 99
    invoke-virtual {p1, p2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object p1

    .line 101
    new-instance p2, Landroid/media/AudioRecord$Builder;

    invoke-direct {p2}, Landroid/media/AudioRecord$Builder;-><init>()V

    .line 102
    invoke-virtual {p2, p0}, Landroid/media/AudioRecord$Builder;->setAudioSource(I)Landroid/media/AudioRecord$Builder;

    move-result-object p0

    .line 103
    invoke-virtual {p0, p1}, Landroid/media/AudioRecord$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioRecord$Builder;

    move-result-object p0

    .line 104
    invoke-virtual {p0, v8}, Landroid/media/AudioRecord$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioRecord$Builder;

    move-result-object p0

    .line 105
    invoke-virtual {p0}, Landroid/media/AudioRecord$Builder;->build()Landroid/media/AudioRecord;

    move-result-object p0

    .line 106
    goto :goto_4c

    .line 107
    :cond_41
    new-instance v1, Landroid/media/AudioRecord;

    move-object v3, v1

    move v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioRecord;-><init>(IIIII)V

    move-object p0, v1

    .line 109
    :goto_4c
    invoke-virtual {p0}, Landroid/media/AudioRecord;->getState()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_57

    .line 110
    invoke-virtual {p0}, Landroid/media/AudioRecord;->release()V

    .line 111
    return v0

    .line 113
    :cond_57
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;
    :try_end_59
    .catchall {:try_start_1 .. :try_end_59} :catchall_5a

    .line 114
    return p2

    .line 115
    :catchall_5a
    move-exception p0

    .line 116
    return v0
.end method

.method private static updateEnvelope(D)V
    .registers 8

    .line 150
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    cmpl-double v2, p0, v0

    if-lez v2, :cond_13

    .line 151
    const-wide v2, 0x3fdccccccccccccdL    # 0.45

    sub-double v4, p0, v0

    mul-double v4, v4, v2

    add-double/2addr v0, v4

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    goto :goto_1f

    .line 153
    :cond_13
    const-wide v2, 0x3fbeb851eb851eb8L    # 0.12

    sub-double v4, p0, v0

    mul-double v4, v4, v2

    add-double/2addr v0, v4

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    .line 155
    :goto_1f
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    cmpl-double v2, p0, v0

    if-lez v2, :cond_28

    .line 156
    sput-wide p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    goto :goto_39

    .line 158
    :cond_28
    const-wide v2, 0x3fefbe76c8b43958L    # 0.992

    mul-double v0, v0, v2

    const-wide v2, 0x3f80624dd2f1aa00L    # 0.008000000000000007

    mul-double p0, p0, v2

    add-double/2addr v0, p0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 160
    :goto_39
    sget-wide p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    const-wide/high16 v0, 0x405e000000000000L    # 120.0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_43

    .line 161
    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 163
    :cond_43
    return-void
.end method
