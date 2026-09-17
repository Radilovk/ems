.class public Lcom/isaigu/gymapp/beta/MusicReactiveController;
.super Ljava/lang/Object;
.source "MusicReactiveController.java"


# static fields
.field private static final AUDIO_SCALE:D = 5000.0

.field private static final PERMISSION_REQUEST:I = 0x4254

.field private static final SAMPLE_RATE:I = 0xac44

.field private static final TICK_MS:J = 0x32L

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

    sput-boolean v0, Lcom/isaigu/gymapp/beta/MusicReactiveController;->running:Z

    const/16 v0, 0x14

    sput v0, Lcom/isaigu/gymapp/beta/MusicReactiveController;->minStrength:I

    const/16 v0, 0x50

    sput v0, Lcom/isaigu/gymapp/beta/MusicReactiveController;->maxStrength:I

    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/beta/MusicReactiveController;->lastAppliedStrength:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyStrength(I)V
    .locals 5
    .param p0, "target"    # I

    sget-object v0, Lcom/isaigu/gymapp/beta/MusicReactiveController;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_has_manager

    return-void

    :cond_has_manager
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->notEmptyItems()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/beta/MusicReactiveController$StrengthApplier;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/beta/MusicReactiveController$StrengthApplier;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    sput p0, Lcom/isaigu/gymapp/beta/MusicReactiveController;->lastAppliedStrength:I

    return-void
.end method

.method private static computeStrength()I
    .locals 10

    sget-object v0, Lcom/isaigu/gymapp/beta/MusicReactiveController;->audioRecord:Landroid/media/AudioRecord;

    if-nez v0, :cond_has_record

    sget v0, Lcom/isaigu/gymapp/beta/MusicReactiveController;->lastAppliedStrength:I

    return v0

    :cond_has_record
    const/16 v1, 0x400

    new-array v1, v1, [S

    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioRecord;->read([SII)I

    move-result v0

    if-gtz v0, :cond_has_data

    sget v0, Lcom/isaigu/gymapp/beta/MusicReactiveController;->lastAppliedStrength:I

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

    const-wide v2, 0x40b3880000000000L    # 5000.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    sget v2, Lcom/isaigu/gymapp/beta/MusicReactiveController;->maxStrength:I

    sget v3, Lcom/isaigu/gymapp/beta/MusicReactiveController;->minStrength:I

    sub-int/2addr v2, v3

    int-to-double v4, v2

    mul-double v0, v0, v4

    double-to-int v0, v0

    sget v1, Lcom/isaigu/gymapp/beta/MusicReactiveController;->minStrength:I

    add-int/2addr v0, v1

    sget v1, Lcom/isaigu/gymapp/beta/MusicReactiveController;->minStrength:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget v1, Lcom/isaigu/gymapp/beta/MusicReactiveController;->maxStrength:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private static ensureHandler()V
    .locals 2

    sget-object v0, Lcom/isaigu/gymapp/beta/MusicReactiveController;->handler:Landroid/os/Handler;

    if-nez v0, :cond_done

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/beta/MusicReactiveController;->handler:Landroid/os/Handler;

    :cond_done
    return-void
.end method

.method private static releaseAudio()V
    .locals 1

    sget-object v0, Lcom/isaigu/gymapp/beta/MusicReactiveController;->audioRecord:Landroid/media/AudioRecord;

    if-nez v0, :cond_has_record

    return-void

    :cond_has_record
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/isaigu/gymapp/beta/MusicReactiveController;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/beta/MusicReactiveController;->audioRecord:Landroid/media/AudioRecord;

    return-void
.end method

.method private static scheduleTick()V
    .locals 4

    invoke-static {}, Lcom/isaigu/gymapp/beta/MusicReactiveController;->ensureHandler()V

    sget-object v0, Lcom/isaigu/gymapp/beta/MusicReactiveController;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/beta/MusicReactiveController$TickRunnable;

    invoke-direct {v1}, Lcom/isaigu/gymapp/beta/MusicReactiveController$TickRunnable;-><init>()V

    const-wide/32 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static startCapture()V
    .locals 12

    const/16 v0, 0x10

    const/4 v1, 0x2

    const v2, 0xac44

    invoke-static {v2, v0, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v3

    if-gtz v3, :cond_buffer_ok

    return-void

    :cond_buffer_ok
    new-instance v6, Landroid/media/AudioRecord;

    const/4 v7, 0x1

    const v8, 0xac44

    const/16 v9, 0x10

    const/4 v10, 0x2

    move v11, v3

    invoke-direct/range {v6 .. v11}, Landroid/media/AudioRecord;-><init>(IIIII)V

    sput-object v6, Lcom/isaigu/gymapp/beta/MusicReactiveController;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v6}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v5, 0x1

    if-eq v0, v5, :cond_state_ok

    invoke-static {}, Lcom/isaigu/gymapp/beta/MusicReactiveController;->releaseAudio()V

    return-void

    :cond_state_ok
    sget-object v0, Lcom/isaigu/gymapp/beta/MusicReactiveController;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/beta/MusicReactiveController;->running:Z

    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/beta/MusicReactiveController;->lastAppliedStrength:I

    invoke-static {}, Lcom/isaigu/gymapp/beta/MusicReactiveController;->scheduleTick()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/isaigu/gymapp/beta/MusicReactiveController;->running:Z

    return v0
.end method

.method static synthetic access$100()V
    .locals 0

    invoke-static {}, Lcom/isaigu/gymapp/beta/MusicReactiveController;->scheduleTick()V

    return-void
.end method

.method static synthetic access$200()I
    .locals 1

    invoke-static {}, Lcom/isaigu/gymapp/beta/MusicReactiveController;->computeStrength()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(I)V
    .locals 0
    .param p0, "x0"    # I

    invoke-static {p0}, Lcom/isaigu/gymapp/beta/MusicReactiveController;->applyStrength(I)V

    return-void
.end method

.method static synthetic access$400()V
    .locals 0

    invoke-static {}, Lcom/isaigu/gymapp/beta/MusicReactiveController;->startCapture()V

    return-void
.end method


# virtual methods
.method public static isRunning()Z
    .locals 1

    sget-boolean v0, Lcom/isaigu/gymapp/beta/MusicReactiveController;->running:Z

    return v0
.end method

.method public static setStrengthRange(II)V
    .locals 1
    .param p0, "min"    # I
    .param p1, "max"    # I

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 v0, 0x64

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/beta/MusicReactiveController;->minStrength:I

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/beta/MusicReactiveController;->maxStrength:I

    return-void
.end method

.method public static start(Landroid/app/Activity;Lcom/isaigu/gymapp/train/TrainItemManager;II)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "manager"    # Lcom/isaigu/gymapp/train/TrainItemManager;
    .param p2, "min"    # I
    .param p3, "max"    # I

    if-eqz p0, :cond_end

    if-nez p1, :cond_has_manager

    goto :goto_end

    :cond_has_manager
    invoke-static {}, Lcom/isaigu/gymapp/beta/MusicReactiveController;->stop()V

    invoke-static {p2, p3}, Lcom/isaigu/gymapp/beta/MusicReactiveController;->setStrengthRange(II)V

    sput-object p1, Lcom/isaigu/gymapp/beta/MusicReactiveController;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_granted

    invoke-static {}, Lcom/isaigu/gymapp/beta/MusicReactiveController;->startCapture()V

    goto :goto_end

    :cond_granted
    new-instance v1, Lcom/isaigu/gymapp/beta/MusicReactiveController$PermissionCallback;

    invoke-direct {v1}, Lcom/isaigu/gymapp/beta/MusicReactiveController$PermissionCallback;-><init>()V

    const/16 v2, 0x4254

    invoke-static {p0, v0, v2, v1}, Lcom/isaigu/gymapp/utils/AndroidUtils;->requestPermission(Landroid/app/Activity;Ljava/lang/String;ILcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;)V

    :cond_end
    :goto_end
    return-void
.end method

.method public static stop()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/beta/MusicReactiveController;->running:Z

    sget-object v0, Lcom/isaigu/gymapp/beta/MusicReactiveController;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_no_handler

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_no_handler
    invoke-static {}, Lcom/isaigu/gymapp/beta/MusicReactiveController;->releaseAudio()V

    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/beta/MusicReactiveController;->lastAppliedStrength:I

    return-void
.end method
