.class public Lcom/isaigu/gymapp/train/utils/MusicSync;
.super Ljava/lang/Object;
.source "MusicSync.java"


# static fields
.field private static audioRecord:Landroid/media/AudioRecord;

.field private static handler:Landroid/os/Handler;

.field private static lastAppliedStrength:I

.field private static manager:Lcom/isaigu/gymapp/train/TrainItemManager;

.field private static maxStrength:I

.field private static minStrength:I

.field private static running:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    const/16 v0, 0x14

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->minStrength:I

    const/16 v0, 0x50

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->maxStrength:I

    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastAppliedStrength:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyStrength(I)V
    .locals 2

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastAppliedStrength:I

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showActive(I)V

    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-eqz v0, :cond_skip_apply

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->notEmptyItems()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/train/utils/MusicSync$StrengthApplier;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/utils/MusicSync$StrengthApplier;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_skip_apply
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_all

    :catch_all
    return-void
.end method

.method private static computeStrength()I
    .locals 10

    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_no_record

    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastAppliedStrength:I

    return v0

    :cond_no_record
    const/16 v1, 0x400

    new-array v1, v1, [S

    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioRecord;->read([SII)I

    move-result v0

    if-gtz v0, :cond_has_data

    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastAppliedStrength:I

    return v0

    :cond_has_data
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    :goto_sum
    if-ge v2, v0, :cond_done_sum

    aget-short v5, v1, v2

    int-to-long v6, v5

    int-to-long v8, v5

    mul-long v6, v6, v8

    add-long/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_sum

    :cond_done_sum
    int-to-double v0, v0

    div-double/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x4087700000000000L

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->maxStrength:I

    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->minStrength:I

    sub-int/2addr v2, v3

    int-to-double v4, v2

    mul-double v0, v0, v4

    double-to-int v0, v0

    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->minStrength:I

    add-int/2addr v0, v1

    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->minStrength:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->maxStrength:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private static ensureHandler()V
    .locals 2

    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_skip_create

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    :cond_skip_create
    return-void
.end method

.method private static releaseAudio()V
    .locals 3

    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_skip_release

    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_done

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_stop

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    :cond_stop
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    :cond_done
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    :cond_skip_release
    return-void
.end method

.method private static scheduleTick()V
    .locals 4

    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_skip_schedule

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/train/utils/MusicSync$TickRunnable;

    invoke-direct {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync$TickRunnable;-><init>()V

    const-wide/32 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_skip_schedule
    return-void
.end method

.method private static startCapture()V
    .locals 12

    :try_start_0
    const/16 v0, 0x10

    const/4 v1, 0x2

    const v2, 0xac44

    invoke-static {v2, v0, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v3

    if-gtz v3, :cond_buffer_ok

    const v0, 0x7f0d010e

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    return-void

    :cond_buffer_ok
    new-instance v6, Landroid/media/AudioRecord;

    const/4 v7, 0x1

    const v8, 0xac44

    const/16 v9, 0x10

    const/4 v10, 0x2

    move v11, v3

    invoke-direct/range {v6 .. v11}, Landroid/media/AudioRecord;-><init>(IIIII)V

    sput-object v6, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v6}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_state_ok

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    const v0, 0x7f0d010e

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    return-void

    :cond_state_ok
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastAppliedStrength:I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showActive(I)V

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->scheduleTick()V

    return-void
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_all

    :catch_all
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    const v0, 0x7f0d010e

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    return v0
.end method

.method static synthetic access$100()V
    .locals 0

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->scheduleTick()V

    return-void
.end method

.method static synthetic access$200()I
    .locals 1

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->computeStrength()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(I)V
    .locals 0

    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->applyStrength(I)V

    return-void
.end method

.method static synthetic access$400()V
    .locals 0

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->startCapture()V

    return-void
.end method


# virtual methods
.method public static isRunning()Z
    .locals 1

    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    return v0
.end method

.method public static setManager(Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .locals 0

    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    return-void
.end method

.method public static setStrengthRange(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 v0, 0x64

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->minStrength:I

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->maxStrength:I

    return-void
.end method

.method public static start(Landroid/app/Activity;II)V
    .locals 3

    if-eqz p0, :cond_start_ok

    return-void

    :cond_start_ok
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stop()V

    invoke-static {p1, p2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setStrengthRange(II)V

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_request_permission

    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showPermission()V

    new-instance v1, Lcom/isaigu/gymapp/train/utils/MusicSync$PermissionCallback;

    invoke-direct {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync$PermissionCallback;-><init>()V

    const/16 v2, 0x4254

    invoke-static {p0, v0, v2, v1}, Lcom/isaigu/gymapp/utils/AndroidUtils;->requestPermission(Landroid/app/Activity;Ljava/lang/String;ILcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;)V

    goto :goto_end

    :cond_request_permission
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->startCapture()V

    :goto_end
    return-void
.end method

.method public static stop()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_no_handler

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_no_handler
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_all

    :catch_all
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastAppliedStrength:I

    return-void
.end method
