.class public Lcom/isaigu/gymapp/train/utils/MusicSync;
.super Ljava/lang/Object;
.source "MusicSync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/train/utils/MusicSync$PermissionCallback;
    }
.end annotation


# static fields
.field private static final APPLY_MIN_DELTA:I = 0x2

.field private static final APPLY_MIN_INTERVAL_MS:J = 0x32L

.field private static final ATTACK:D = 0.75

.field private static final AUDIO_BUFFER_SAMPLES:I = 0x200

.field static final ERROR_DENIED:I = 0x7f0d010d

.field static final ERROR_MIC:I = 0x7f0d010e

.field private static final PEAK_DECAY:D = 0.985

.field static final PERMISSION_REQUEST:I = 0x4254

.field private static final RELEASE:D = 0.4

.field private static final SAMPLE_INTERVAL_MS:J = 0x14L

.field private static final UI_INTERVAL_MS:J = 0x32L

.field private static final audioBuffer:[S

.field private static audioRecord:Landroid/media/AudioRecord;

.field private static audioThread:Ljava/lang/Thread;

.field private static handler:Landroid/os/Handler;

.field private static hostActivity:Landroid/app/Activity;

.field private static lastAppliedStrength:I

.field private static lastApplyMs:J

.field private static lastUiMs:J

.field static volatile liveStrength:I

.field private static maLabelRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field static running:Z

.field private static seekBarRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/isaigu/gymapp/widget/CircleSeekBar;",
            ">;"
        }
    .end annotation
.end field

.field private static sensitivity:I

.field private static volatile smoothedRms:D

.field static volatile strengthCeiling:I

.field private static targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

.field private static volatile trackedPeakRms:D


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 50
    const/16 v0, 0x14

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    .line 55
    const/16 v0, 0x64

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->strengthCeiling:I

    .line 58
    const-wide v0, 0x4072c00000000000L    # 300.0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 61
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastAppliedStrength:I

    .line 62
    const/16 v0, 0x200

    new-array v0, v0, [S

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioBuffer:[S

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)V
    .registers 1

    .line 29
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->applyStrengthToSlider(I)V

    return-void
.end method

.method static synthetic access$100()V
    .registers 0

    .line 29
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->maybeUpdateUi()V

    return-void
.end method

.method static synthetic access$200()Landroid/media/AudioRecord;
    .registers 1

    .line 29
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/AudioRecord;)I
    .registers 1

    .line 29
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->sampleMusicPercent(Landroid/media/AudioRecord;)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(I)V
    .registers 1

    .line 29
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->maybeApplyMusicLevel(I)V

    return-void
.end method

.method private static applyStrengthToSlider(I)V
    .registers 5

    .line 131
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clampPercent(I)I

    move-result p0

    .line 132
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 133
    if-nez v0, :cond_9

    .line 134
    return-void

    .line 137
    :cond_9
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    .line 138
    if-nez v1, :cond_10

    .line 139
    return-void

    .line 141
    :cond_10
    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 142
    if-nez v1, :cond_17

    .line 143
    return-void

    .line 146
    :cond_17
    iput p0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 147
    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastAppliedStrength:I

    .line 149
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->seekBarRef:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/widget/CircleSeekBar;

    goto :goto_28

    :cond_27
    move-object v1, v2

    .line 150
    :goto_28
    if-eqz v1, :cond_31

    .line 151
    mul-int/lit8 v3, p0, 0x4b

    div-int/lit8 v3, v3, 0x64

    invoke-virtual {v1, v3}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setCurProcess(I)V

    .line 154
    :cond_31
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->maLabelRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_3c

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    .line 155
    :cond_3c
    if-eqz v2, :cond_52

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " %"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    :cond_52
    iget-object p0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz p0, :cond_5f

    iget-object p0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean p0, p0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-eqz p0, :cond_5f

    .line 160
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V

    .line 162
    :cond_5f
    return-void
.end method

.method private static captureCeilingFromSlider()V
    .registers 3

    .line 98
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 99
    const/16 v1, 0x64

    if-nez v0, :cond_9

    .line 100
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->strengthCeiling:I

    .line 101
    return-void

    .line 104
    :cond_9
    :try_start_9
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 105
    if-nez v0, :cond_12

    .line 106
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->strengthCeiling:I

    .line 107
    return-void

    .line 109
    :cond_12
    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 110
    if-nez v0, :cond_1b

    .line 111
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->strengthCeiling:I

    .line 112
    return-void

    .line 114
    :cond_1b
    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clampPercent(I)I

    move-result v0

    .line 115
    const/4 v2, 0x1

    if-ge v0, v2, :cond_25

    .line 116
    const/4 v0, 0x1

    .line 118
    :cond_25
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->strengthCeiling:I
    :try_end_27
    .catchall {:try_start_9 .. :try_end_27} :catchall_28

    .line 121
    goto :goto_2b

    .line 119
    :catchall_28
    move-exception v0

    .line 120
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->strengthCeiling:I

    .line 122
    :goto_2b
    return-void
.end method

.method private static clampPercent(I)I
    .registers 2

    .line 87
    if-gez p0, :cond_4

    .line 88
    const/4 p0, 0x0

    return p0

    .line 90
    :cond_4
    const/16 v0, 0x64

    if-le p0, v0, :cond_9

    .line 91
    return v0

    .line 93
    :cond_9
    return p0
.end method

.method static ensureHandler()V
    .registers 2

    .line 65
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    .line 68
    :cond_f
    return-void
.end method

.method public static getEffectiveStrength()I
    .registers 1

    .line 293
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastAppliedStrength:I

    if-gez v0, :cond_5

    const/4 v0, 0x0

    :cond_5
    return v0
.end method

.method public static getHostActivity()Landroid/app/Activity;
    .registers 1

    .line 462
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getLiveStrength()I
    .registers 1

    .line 458
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    return v0
.end method

.method public static getStrengthCeiling()I
    .registers 1

    .line 288
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->strengthCeiling:I

    return v0
.end method

.method static hasRecordPermission()Z
    .registers 2

    .line 214
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->permissionContext()Landroid/content/Context;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_10

    .line 216
    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 215
    :goto_11
    return v0
.end method

.method public static isRunning()Z
    .registers 1

    .line 454
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    return v0
.end method

.method private static maybeApplyMusicLevel(I)V
    .registers 8

    .line 165
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clampPercent(I)I

    move-result p0

    .line 166
    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 167
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->scaleToCeiling(I)I

    move-result p0

    .line 168
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastAppliedStrength:I

    if-ne p0, v0, :cond_f

    .line 169
    return-void

    .line 171
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 172
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastAppliedStrength:I

    sub-int v2, p0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x2

    const-wide/16 v4, 0x32

    if-ge v2, v3, :cond_29

    sget-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastApplyMs:J

    sub-long v2, v0, v2

    cmp-long v6, v2, v4

    if-gez v6, :cond_29

    .line 174
    return-void

    .line 176
    :cond_29
    sget-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastApplyMs:J

    sub-long v2, v0, v2

    cmp-long v6, v2, v4

    if-gez v6, :cond_32

    .line 177
    return-void

    .line 179
    :cond_32
    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastApplyMs:J

    .line 180
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 181
    nop

    .line 182
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/train/utils/MusicSync$1;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/utils/MusicSync$1;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 191
    return-void
.end method

.method private static maybeUpdateUi()V
    .registers 7

    .line 360
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 361
    sget-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x32

    cmp-long v6, v2, v4

    if-gez v6, :cond_f

    .line 362
    return-void

    .line 364
    :cond_f
    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    .line 365
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 366
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getEffectiveStrength()I

    move-result v0

    .line 367
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->strengthCeiling:I

    .line 368
    sget-object v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/isaigu/gymapp/train/utils/MusicSync$2;

    invoke-direct {v3, v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicSync$2;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 376
    return-void
.end method

.method private static measureRms([SI)D
    .registers 9

    .line 297
    nop

    .line 298
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, p1, :cond_12

    .line 299
    aget-short v3, p0, v2

    int-to-long v3, v3

    aget-short v5, p0, v2

    int-to-long v5, v5

    mul-long v3, v3, v5

    add-long/2addr v0, v3

    .line 298
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 301
    :cond_12
    long-to-double v0, v0

    int-to-double p0, p1

    div-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static openMicrophone()Z
    .registers 7

    .line 274
    const/4 v0, 0x3

    new-array v1, v0, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_32

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_3a

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_42

    aput-object v3, v1, v2

    .line 279
    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v0, :cond_30

    .line 280
    aget-object v3, v1, v2

    aget v3, v3, v4

    aget-object v6, v1, v2

    aget v6, v6, v5

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/train/utils/MusicSync;->tryOpen(II)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 281
    return v5

    .line 279
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 284
    :cond_30
    return v4

    nop

    :array_32
    .array-data 4
        0x1
        0xac44
    .end array-data

    :array_3a
    .array-data 4
        0x1
        0x3e80
    .end array-data

    :array_42
    .array-data 4
        0x0
        0xac44
    .end array-data
.end method

.method private static permissionContext()Landroid/content/Context;
    .registers 1

    .line 207
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    if-eqz v0, :cond_5

    .line 208
    return-object v0

    .line 210
    :cond_5
    invoke-static {}, Lcom/isaigu/gymapp/MainActivity;->getInstance()Lcom/isaigu/gymapp/MainActivity;

    move-result-object v0

    return-object v0
.end method

.method public static registerUi(Lcom/isaigu/gymapp/widget/CircleSeekBar;Landroid/widget/TextView;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 5

    .line 79
    const/4 v0, 0x0

    if-eqz p0, :cond_9

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_a

    :cond_9
    move-object v1, v0

    :goto_a
    sput-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->seekBarRef:Ljava/lang/ref/WeakReference;

    .line 80
    if-eqz p1, :cond_13

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :cond_13
    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->maLabelRef:Ljava/lang/ref/WeakReference;

    .line 81
    if-eqz p2, :cond_19

    .line 82
    sput-object p2, Lcom/isaigu/gymapp/train/utils/MusicSync;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 84
    :cond_19
    return-void
.end method

.method static releaseAudio()V
    .registers 3

    .line 220
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    .line 221
    const/4 v1, 0x0

    sput-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    .line 222
    if-nez v0, :cond_8

    .line 223
    return-void

    .line 226
    :cond_8
    :try_start_8
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    .line 227
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_19

    .line 228
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1a

    .line 231
    :cond_19
    goto :goto_1b

    .line 230
    :catchall_1a
    move-exception v1

    .line 233
    :goto_1b
    :try_start_1b
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    .line 235
    goto :goto_20

    .line 234
    :catchall_1f
    move-exception v0

    .line 236
    :goto_20
    return-void
.end method

.method private static resetAudioLevels()V
    .registers 2

    .line 71
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    .line 72
    const-wide v0, 0x4072c00000000000L    # 300.0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 73
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    .line 74
    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastApplyMs:J

    .line 75
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastAppliedStrength:I

    .line 76
    return-void
.end method

.method private static sampleMusicPercent(Landroid/media/AudioRecord;)I
    .registers 10

    .line 325
    if-nez p0, :cond_5

    .line 326
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    return p0

    .line 328
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioBuffer:[S

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/media/AudioRecord;->read([SII)I

    move-result p0

    .line 329
    if-gtz p0, :cond_12

    .line 330
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    return p0

    .line 333
    :cond_12
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioBuffer:[S

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->measureRms([SI)D

    move-result-wide v0

    .line 334
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->updateEnvelope(D)V

    .line 336
    const-wide v0, 0x3fc70a3d70a3d70aL    # 0.18

    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    int-to-double v3, p0

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v5

    const-wide v7, 0x3fc1eb851eb851ecL    # 0.14

    mul-double v3, v3, v7

    sub-double/2addr v0, v3

    .line 337
    const-wide v3, 0x3fa999999999999aL    # 0.05

    cmpg-double p0, v0, v3

    if-gez p0, :cond_38

    .line 338
    move-wide v0, v3

    .line 340
    :cond_38
    const-wide v3, 0x4041800000000000L    # 35.0

    sget-wide v7, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    mul-double v7, v7, v0

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 341
    sget-wide v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    cmpg-double p0, v3, v0

    if-gtz p0, :cond_4c

    .line 342
    return v2

    .line 345
    :cond_4c
    sget-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    sub-double/2addr v2, v0

    .line 346
    const-wide/high16 v7, 0x4039000000000000L    # 25.0

    cmpg-double p0, v2, v7

    if-gez p0, :cond_56

    .line 347
    move-wide v2, v7

    .line 349
    :cond_56
    sget-wide v7, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    sub-double/2addr v7, v0

    div-double/2addr v7, v2

    .line 350
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    cmpg-double p0, v7, v2

    if-gez p0, :cond_64

    .line 351
    move-wide v7, v2

    goto :goto_69

    .line 352
    :cond_64
    cmpl-double p0, v7, v0

    if-lez p0, :cond_69

    .line 353
    move-wide v7, v0

    .line 356
    :cond_69
    :goto_69
    mul-double v7, v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p0, v0

    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clampPercent(I)I

    move-result p0

    return p0
.end method

.method private static scaleToCeiling(I)I
    .registers 2

    .line 126
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->strengthCeiling:I

    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clampPercent(I)I

    move-result p0

    mul-int v0, v0, p0

    div-int/lit8 v0, v0, 0x64

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clampPercent(I)I

    move-result p0

    return p0
.end method

.method private static selectStrengthMode(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 2

    .line 194
    if-nez p0, :cond_3

    .line 195
    return-void

    .line 198
    :cond_3
    const/4 v0, 0x1

    :try_start_4
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setMaSelected(Z)V

    .line 199
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setHzSelected(Z)V

    .line 200
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseMaSelected(Z)V

    .line 201
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseHzSelected(Z)V
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_12

    .line 203
    goto :goto_13

    .line 202
    :catchall_12
    move-exception p0

    .line 204
    :goto_13
    return-void
.end method

.method public static setHostActivity(Landroid/app/Activity;)V
    .registers 1

    .line 466
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    .line 467
    return-void
.end method

.method public static setSensitivity(I)V
    .registers 2

    .line 477
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 v0, 0x64

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    .line 478
    return-void
.end method

.method public static setTargetItem(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 1

    .line 470
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 471
    return-void
.end method

.method public static setTargetMacAddress(Ljava/lang/String;)V
    .registers 1

    .line 474
    return-void
.end method

.method public static start(Landroid/app/Activity;II)V
    .registers 4

    .line 481
    if-nez p0, :cond_3

    .line 482
    return-void

    .line 484
    :cond_3
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    .line 485
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 486
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSensitivity(I)V

    .line 487
    sget-object p1, Lcom/isaigu/gymapp/train/utils/MusicSync;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->selectStrengthMode(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 488
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->hasRecordPermission()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 489
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->startCapture()V

    .line 490
    return-void

    .line 492
    :cond_1a
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showPermission()V

    .line 493
    const/16 p1, 0x4254

    new-instance p2, Lcom/isaigu/gymapp/train/utils/MusicSync$PermissionCallback;

    invoke-direct {p2}, Lcom/isaigu/gymapp/train/utils/MusicSync$PermissionCallback;-><init>()V

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v0, p1, p2}, Lcom/isaigu/gymapp/utils/AndroidUtils;->requestPermission(Landroid/app/Activity;Ljava/lang/String;ILcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;)V

    .line 495
    return-void
.end method

.method static startCapture()V
    .registers 6

    .line 397
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->hasRecordPermission()Z

    move-result v0

    const v1, 0x7f0d010d

    if-nez v0, :cond_d

    .line 398
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 399
    return-void

    .line 401
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 402
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->selectStrengthMode(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 403
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->captureCeilingFromSlider()V

    .line 404
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resetAudioLevels()V

    .line 406
    const v0, 0x7f0d010e

    const/4 v2, 0x0

    :try_start_1f
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->openMicrophone()Z

    move-result v3

    if-nez v3, :cond_29

    .line 407
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 408
    return-void

    .line 410
    :cond_29
    sget-object v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    .line 411
    if-eqz v3, :cond_61

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_35

    goto :goto_61

    .line 415
    :cond_35
    invoke-virtual {v3}, Landroid/media/AudioRecord;->startRecording()V

    .line 416
    invoke-virtual {v3}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_46

    .line 417
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 418
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 419
    return-void

    .line 421
    :cond_46
    sput-boolean v5, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 422
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 423
    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->strengthCeiling:I

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showActive(II)V

    .line 424
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/isaigu/gymapp/train/utils/MusicSync$3;

    invoke-direct {v4}, Lcom/isaigu/gymapp/train/utils/MusicSync$3;-><init>()V

    const-string v5, "MusicSyncMic"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioThread:Ljava/lang/Thread;

    .line 441
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_78

    .line 412
    :cond_61
    :goto_61
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V
    :try_end_64
    .catch Ljava/lang/SecurityException; {:try_start_1f .. :try_end_64} :catch_6f
    .catchall {:try_start_1f .. :try_end_64} :catchall_65

    .line 413
    return-void

    .line 446
    :catchall_65
    move-exception v1

    .line 447
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 448
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 449
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    goto :goto_79

    .line 442
    :catch_6f
    move-exception v0

    .line 443
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 444
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 445
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 450
    :goto_78
    nop

    .line 451
    :goto_79
    return-void
.end method

.method public static stop()V
    .registers 0

    .line 498
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 499
    return-void
.end method

.method private static stopCaptureOnly()V
    .registers 5

    .line 379
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 380
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioThread:Ljava/lang/Thread;

    .line 381
    const/4 v2, 0x0

    sput-object v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioThread:Ljava/lang/Thread;

    .line 382
    if-eqz v1, :cond_11

    .line 384
    const-wide/16 v3, 0x190

    :try_start_c
    invoke-virtual {v1, v3, v4}, Ljava/lang/Thread;->join(J)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_10

    .line 386
    goto :goto_11

    .line 385
    :catchall_10
    move-exception v1

    .line 388
    :cond_11
    :goto_11
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_18

    .line 389
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 391
    :cond_18
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 392
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 393
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resetAudioLevels()V

    .line 394
    return-void
.end method

.method private static tryOpen(II)Z
    .registers 13

    .line 240
    const/4 v0, 0x2

    const/16 v1, 0x10

    const/4 v2, 0x0

    :try_start_4
    invoke-static {p1, v1, v0}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v3

    .line 242
    if-gtz v3, :cond_b

    .line 243
    return v2

    .line 245
    :cond_b
    const/16 v4, 0x400

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 247
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_42

    .line 248
    new-instance v3, Landroid/media/AudioFormat$Builder;

    invoke-direct {v3}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 249
    invoke-virtual {v3, v0}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 250
    invoke-virtual {v0, p1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    .line 251
    invoke-virtual {p1, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    .line 252
    invoke-virtual {p1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object p1

    .line 253
    new-instance v0, Landroid/media/AudioRecord$Builder;

    invoke-direct {v0}, Landroid/media/AudioRecord$Builder;-><init>()V

    .line 254
    invoke-virtual {v0, p0}, Landroid/media/AudioRecord$Builder;->setAudioSource(I)Landroid/media/AudioRecord$Builder;

    move-result-object p0

    .line 255
    invoke-virtual {p0, p1}, Landroid/media/AudioRecord$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioRecord$Builder;

    move-result-object p0

    .line 256
    invoke-virtual {p0, v10}, Landroid/media/AudioRecord$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioRecord$Builder;

    move-result-object p0

    .line 257
    invoke-virtual {p0}, Landroid/media/AudioRecord$Builder;->build()Landroid/media/AudioRecord;

    move-result-object p0

    .line 258
    goto :goto_4e

    .line 259
    :cond_42
    new-instance v0, Landroid/media/AudioRecord;

    const/16 v8, 0x10

    const/4 v9, 0x2

    move-object v5, v0

    move v6, p0

    move v7, p1

    invoke-direct/range {v5 .. v10}, Landroid/media/AudioRecord;-><init>(IIIII)V

    move-object p0, v0

    .line 262
    :goto_4e
    invoke-virtual {p0}, Landroid/media/AudioRecord;->getState()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_59

    .line 263
    invoke-virtual {p0}, Landroid/media/AudioRecord;->release()V

    .line 264
    return v2

    .line 266
    :cond_59
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;
    :try_end_5b
    .catchall {:try_start_4 .. :try_end_5b} :catchall_5c

    .line 267
    return v0

    .line 268
    :catchall_5c
    move-exception p0

    .line 269
    return v2
.end method

.method private static updateEnvelope(D)V
    .registers 8

    .line 305
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    cmpl-double v2, p0, v0

    if-lez v2, :cond_14

    .line 306
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    sget-wide v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    sub-double v4, p0, v4

    mul-double v4, v4, v2

    add-double/2addr v0, v4

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    goto :goto_24

    .line 308
    :cond_14
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    const-wide v2, 0x3fd999999999999aL    # 0.4

    sget-wide v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    sub-double v4, p0, v4

    mul-double v4, v4, v2

    add-double/2addr v0, v4

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    .line 310
    :goto_24
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    cmpl-double v2, p0, v0

    if-lez v2, :cond_2d

    .line 311
    sput-wide p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    goto :goto_40

    .line 313
    :cond_2d
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    const-wide v2, 0x3fef851eb851eb85L    # 0.985

    mul-double v0, v0, v2

    const-wide v2, 0x3f8eb851eb851ec0L    # 0.015000000000000013

    mul-double p0, p0, v2

    add-double/2addr v0, p0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 315
    :goto_40
    sget-wide p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_4a

    .line 316
    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 318
    :cond_4a
    return-void
.end method
