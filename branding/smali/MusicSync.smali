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
.field static final ERROR_DENIED:I = 0x7f0d010d

.field static final ERROR_MIC:I = 0x7f0d010e

.field static final PERMISSION_REQUEST:I = 0x4254

.field private static audioRecord:Landroid/media/AudioRecord;

.field private static handler:Landroid/os/Handler;

.field private static hostActivity:Landroid/app/Activity;

.field static lastAppliedStrength:I

.field private static manager:Lcom/isaigu/gymapp/train/TrainItemManager;

.field private static maxStrength:I

.field private static minStrength:I

.field static running:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastAppliedStrength:I

    .line 31
    const/16 v0, 0x50

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->maxStrength:I

    .line 32
    const/16 v0, 0x14

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->minStrength:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)V
    .registers 1

    .line 21
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->applyStrength(I)V

    return-void
.end method

.method private static applyStrength(I)V
    .registers 4

    .line 130
    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastAppliedStrength:I

    .line 131
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showActive(I)V

    .line 133
    :try_start_5
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 134
    if-eqz v0, :cond_33

    .line 135
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->notEmptyItems()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 136
    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 137
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/train/TrainItem;

    .line 138
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/TrainItem;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 139
    goto :goto_11

    .line 141
    :cond_26
    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/TrainItem;->getStrength()I

    move-result v2

    .line 142
    if-ne v2, p0, :cond_2d

    .line 143
    goto :goto_11

    .line 145
    :cond_2d
    sub-int v2, p0, v2

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/train/TrainItem;->addStrenth(I)V
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_34

    .line 146
    goto :goto_11

    .line 149
    :cond_33
    goto :goto_35

    .line 148
    :catchall_34
    move-exception p0

    .line 150
    :goto_35
    return-void
.end method

.method static computeStrength()I
    .registers 10

    .line 153
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    .line 154
    if-nez v0, :cond_7

    .line 155
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastAppliedStrength:I

    return v0

    .line 157
    :cond_7
    const/16 v1, 0x400

    new-array v2, v1, [S

    .line 158
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/AudioRecord;->read([SII)I

    move-result v0

    .line 159
    if-gtz v0, :cond_15

    .line 160
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastAppliedStrength:I

    return v0

    .line 162
    :cond_15
    const-wide/16 v4, 0x0

    .line 163
    nop

    :goto_18
    if-ge v3, v0, :cond_26

    .line 164
    aget-short v1, v2, v3

    int-to-long v6, v1

    aget-short v1, v2, v3

    int-to-long v8, v1

    mul-long v6, v6, v8

    add-long/2addr v4, v6

    .line 163
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 166
    :cond_26
    long-to-double v1, v4

    int-to-double v3, v0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 167
    const-wide v2, 0x4087700000000000L    # 750.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 168
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->maxStrength:I

    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->minStrength:I

    sub-int/2addr v2, v3

    .line 169
    int-to-double v4, v2

    mul-double v0, v0, v4

    double-to-int v0, v0

    add-int/2addr v0, v3

    .line 170
    if-ge v0, v3, :cond_46

    .line 171
    goto :goto_47

    .line 170
    :cond_46
    move v3, v0

    .line 173
    :goto_47
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->maxStrength:I

    if-le v3, v0, :cond_4c

    .line 174
    move v3, v0

    .line 176
    :cond_4c
    return v3
.end method

.method static ensureHandler()V
    .registers 2

    .line 36
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    .line 39
    :cond_f
    return-void
.end method

.method public static getHostActivity()Landroid/app/Activity;
    .registers 1

    .line 229
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static hasRecordPermission()Z
    .registers 3

    .line 49
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->permissionContext()Landroid/content/Context;

    move-result-object v0

    .line 50
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 51
    return v1

    .line 53
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

    .line 225
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    return v0
.end method

.method private static openMicrophone()Z
    .registers 9

    .line 109
    nop

    .line 110
    nop

    .line 111
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

    .line 121
    const/4 v3, 0x0

    :goto_47
    if-ge v3, v0, :cond_5d

    .line 122
    aget-object v6, v1, v3

    aget v6, v6, v4

    aget-object v7, v1, v3

    aget v7, v7, v5

    const/16 v8, 0x10

    invoke-static {v6, v7, v8, v2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->tryOpen(IIII)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 123
    return v5

    .line 121
    :cond_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    .line 126
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

    .line 42
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    if-eqz v0, :cond_5

    .line 43
    return-object v0

    .line 45
    :cond_5
    invoke-static {}, Lcom/isaigu/gymapp/MainActivity;->getInstance()Lcom/isaigu/gymapp/MainActivity;

    move-result-object v0

    return-object v0
.end method

.method static releaseAudio()V
    .registers 3

    .line 57
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    .line 58
    const/4 v1, 0x0

    sput-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    .line 59
    if-nez v0, :cond_8

    .line 60
    return-void

    .line 63
    :cond_8
    :try_start_8
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    .line 64
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_19

    .line 65
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1a

    .line 68
    :cond_19
    goto :goto_1b

    .line 67
    :catchall_1a
    move-exception v1

    .line 70
    :goto_1b
    :try_start_1b
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    .line 72
    goto :goto_20

    .line 71
    :catchall_1f
    move-exception v0

    .line 73
    :goto_20
    return-void
.end method

.method static scheduleTick()V
    .registers 4

    .line 180
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-nez v0, :cond_5

    .line 181
    return-void

    .line 183
    :cond_5
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 184
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/train/utils/MusicSync$TickRunnable;

    invoke-direct {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync$TickRunnable;-><init>()V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 185
    return-void
.end method

.method public static setHostActivity(Landroid/app/Activity;)V
    .registers 1

    .line 233
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    .line 234
    return-void
.end method

.method public static setManager(Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 1

    .line 237
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 238
    return-void
.end method

.method public static setStrengthRange(II)V
    .registers 3

    .line 241
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 v0, 0x64

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->minStrength:I

    .line 242
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->maxStrength:I

    .line 243
    return-void
.end method

.method public static start(Landroid/app/Activity;II)V
    .registers 4

    .line 246
    if-nez p0, :cond_3

    .line 247
    return-void

    .line 249
    :cond_3
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    .line 250
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stop()V

    .line 251
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setStrengthRange(II)V

    .line 252
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->hasRecordPermission()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 253
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->startCapture()V

    .line 254
    return-void

    .line 256
    :cond_15
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showPermission()V

    .line 257
    const/16 p1, 0x4254

    new-instance p2, Lcom/isaigu/gymapp/train/utils/MusicSync$PermissionCallback;

    invoke-direct {p2}, Lcom/isaigu/gymapp/train/utils/MusicSync$PermissionCallback;-><init>()V

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v0, p1, p2}, Lcom/isaigu/gymapp/utils/AndroidUtils;->requestPermission(Landroid/app/Activity;Ljava/lang/String;ILcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;)V

    .line 259
    return-void
.end method

.method static startCapture()V
    .registers 6

    .line 188
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->hasRecordPermission()Z

    move-result v0

    const v1, 0x7f0d010d

    if-nez v0, :cond_d

    .line 189
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 190
    return-void

    .line 192
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 194
    const/4 v0, 0x0

    const v2, 0x7f0d010e

    :try_start_14
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->openMicrophone()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 195
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 196
    return-void

    .line 198
    :cond_1e
    sget-object v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    .line 199
    if-eqz v3, :cond_47

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2a

    goto :goto_47

    .line 203
    :cond_2a
    invoke-virtual {v3}, Landroid/media/AudioRecord;->startRecording()V

    .line 204
    invoke-virtual {v3}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3b

    .line 205
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 206
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 207
    return-void

    .line 209
    :cond_3b
    sput-boolean v5, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 210
    const/4 v3, -0x1

    sput v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastAppliedStrength:I

    .line 211
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showActive(I)V

    .line 212
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->scheduleTick()V

    goto :goto_5e

    .line 200
    :cond_47
    :goto_47
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V
    :try_end_4a
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_4a} :catch_55
    .catchall {:try_start_14 .. :try_end_4a} :catchall_4b

    .line 201
    return-void

    .line 217
    :catchall_4b
    move-exception v1

    .line 218
    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 219
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 220
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    goto :goto_5f

    .line 213
    :catch_55
    move-exception v2

    .line 214
    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 215
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 216
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 221
    :goto_5e
    nop

    .line 222
    :goto_5f
    return-void
.end method

.method public static stop()V
    .registers 2

    .line 262
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 264
    :try_start_3
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_d

    .line 265
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 267
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_11

    .line 269
    goto :goto_12

    .line 268
    :catchall_11
    move-exception v0

    .line 270
    :goto_12
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastAppliedStrength:I

    .line 271
    return-void
.end method

.method private static tryOpen(IIII)Z
    .registers 13

    .line 77
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1, p2, p3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v1

    .line 78
    if-gtz v1, :cond_8

    .line 79
    return v0

    .line 81
    :cond_8
    mul-int/lit8 v1, v1, 0x2

    const/16 v2, 0x1000

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 83
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_41

    .line 84
    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 85
    invoke-virtual {v1, p3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object p3

    .line 86
    invoke-virtual {p3, p1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    .line 87
    invoke-virtual {p1, p2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    .line 88
    invoke-virtual {p1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object p1

    .line 89
    new-instance p2, Landroid/media/AudioRecord$Builder;

    invoke-direct {p2}, Landroid/media/AudioRecord$Builder;-><init>()V

    .line 90
    invoke-virtual {p2, p0}, Landroid/media/AudioRecord$Builder;->setAudioSource(I)Landroid/media/AudioRecord$Builder;

    move-result-object p0

    .line 91
    invoke-virtual {p0, p1}, Landroid/media/AudioRecord$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioRecord$Builder;

    move-result-object p0

    .line 92
    invoke-virtual {p0, v8}, Landroid/media/AudioRecord$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioRecord$Builder;

    move-result-object p0

    .line 93
    invoke-virtual {p0}, Landroid/media/AudioRecord$Builder;->build()Landroid/media/AudioRecord;

    move-result-object p0

    .line 94
    goto :goto_4c

    .line 95
    :cond_41
    new-instance v1, Landroid/media/AudioRecord;

    move-object v3, v1

    move v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioRecord;-><init>(IIIII)V

    move-object p0, v1

    .line 97
    :goto_4c
    invoke-virtual {p0}, Landroid/media/AudioRecord;->getState()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_57

    .line 98
    invoke-virtual {p0}, Landroid/media/AudioRecord;->release()V

    .line 99
    return v0

    .line 101
    :cond_57
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;
    :try_end_59
    .catchall {:try_start_1 .. :try_end_59} :catchall_5a

    .line 102
    return p2

    .line 103
    :catchall_5a
    move-exception p0

    .line 104
    return v0
.end method
