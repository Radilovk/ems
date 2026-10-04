.class public final Lcom/isaigu/gymapp/ai/AutoSession;
.super Ljava/lang/Object;
.source "AutoSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/AutoSession$Stage;,
        Lcom/isaigu/gymapp/ai/AutoSession$Row;,
        Lcom/isaigu/gymapp/ai/AutoSession$Finished;,
        Lcom/isaigu/gymapp/ai/AutoSession$Ticker;,
        Lcom/isaigu/gymapp/ai/AutoSession$GoNow;
    }
.end annotation


# static fields
.field private static final CALIB_RISE_PER_S:D = 5.0

.field static final FORECAST_MS:J = 0x1388L

.field private static final GUARD_TOAST_GAP_MS:J = 0xdacL

.field public static final INFO:I = 0x0

.field public static final LIMIT:I = 0x1

.field public static final OWNER_BAND:Ljava/lang/String; = "auto"

.field private static final PREFS:Ljava/lang/String; = "auto_session"

.field public static final SAFETY:I = 0x2

.field private static final TICK_MS:J = 0xfaL

.field private static final TIPS_PREFS:Ljava/lang/String; = "auto_tips"

.field private static beepsForGoMs:J

.field private static calPw:I

.field private static energy:Lcom/isaigu/gymapp/ai/AiEnergy;

.field private static engine:Lcom/isaigu/gymapp/ai/AutoEngine;

.field private static epocClosed:Z

.field private static forecast:Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;

.field private static forecastDouble:Z

.field private static forecastMs:J

.field private static forecastScale:D

.field private static final goNow:Ljava/lang/Runnable;

.field private static final handler:Landroid/os/Handler;

.field private static hrNearMs:J

.field private static input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

.field private static lastApplied:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

.field private static lastBandHr:I

.field private static lastBandHrMs:J

.field private static lastGuardToastMs:J

.field private static lastHookMs:J

.field private static lastNotice:Ljava/lang/String;

.field private static lastNoticeKind:I

.field private static lastNoticeMs:J

.field private static lastTickMs:J

.field private static manager:Lcom/isaigu/gymapp/train/TrainItemManager;

.field private static panelRoot:Landroid/view/View;

.field private static plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

.field private static recorded:Z

.field private static restCount:I

.field private static final restRing:[I

.field private static final restRingMs:[J

.field private static final rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/AutoSession$Row;",
            ">;"
        }
    .end annotation
.end field

.field private static script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

.field private static seenCorridorExt:I

.field private static seenDoseExt:I

.field private static seenDoseStop:Z

.field private static seenRaiseLocked:Z

.field private static final seenTips:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

.field private static final ticker:Ljava/lang/Runnable;

.field private static tipsOn:Z

.field private static written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

.field private static zeroed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x28

    .line 70
    const/16 v0, 0x15e

    sput v0, Lcom/isaigu/gymapp/ai/AutoSession;->calPw:I

    .line 74
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    .line 76
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Input;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    .line 88
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->lastNotice:Ljava/lang/String;

    .line 102
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AutoSession;->tipsOn:Z

    .line 103
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->seenTips:Ljava/util/Set;

    .line 106
    new-array v0, v1, [I

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->restRing:[I

    .line 107
    new-array v0, v1, [J

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->restRingMs:[J

    .line 109
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/ai/AutoSession;->lastBandHr:I

    .line 112
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->handler:Landroid/os/Handler;

    .line 113
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoSession$Ticker;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AutoSession$Ticker;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->ticker:Ljava/lang/Runnable;

    .line 114
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoSession$GoNow;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AutoSession$GoNow;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->goNow:Ljava/lang/Runnable;

    .line 120
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->forecastScale:D

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static acceptStrength(Lcom/isaigu/gymapp/ai/AutoSession$Row;IZ)V
    .registers 11

    .prologue
    .line 1799
    iput p1, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenStrength:I

    .line 1800
    iput p1, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->lastStrength:I

    .line 1801
    if-nez p2, :cond_30

    .line 1802
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    .line 1803
    :goto_c
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phiMax:D

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->rowFrac(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;D)D

    move-result-wide v0

    .line 1804
    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    if-lez v2, :cond_30

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_30

    .line 1805
    const-wide v2, 0x3fb999999999999aL    # 0.1

    int-to-double v4, p1

    iget v6, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    int-to-double v6, v6

    mul-double/2addr v0, v6

    div-double v0, v4, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->user:D

    .line 1808
    :cond_30
    return-void

    .line 1802
    :cond_31
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    goto :goto_c
.end method

.method static synthetic access$000(II)[I
    .registers 3

    .prologue
    .line 31
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AutoSession;->full(II)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()V
    .registers 0

    .prologue
    .line 31
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->tick()V

    return-void
.end method

.method static synthetic access$200()Lcom/isaigu/gymapp/ai/AutoSession$Stage;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    return-object v0
.end method

.method static synthetic access$300()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400()Lcom/isaigu/gymapp/ai/AutoModel$Plan;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    return-object v0
.end method

.method static synthetic access$500()Lcom/isaigu/gymapp/ai/AutoEngine;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    return-object v0
.end method

.method static synthetic access$600()Landroid/view/View;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->panelRoot:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700()Z
    .registers 1

    .prologue
    .line 31
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leaderRunning()Z

    move-result v0

    return v0
.end method

.method private static acquireBand(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 2020
    if-eqz p0, :cond_d

    :try_start_2
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoSession;->isBandConfigured(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2021
    const-string v0, "auto"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->acquire(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_d} :catch_e

    .line 2026
    :cond_d
    :goto_d
    return-void

    .line 2023
    :catch_e
    move-exception v0

    .line 2024
    const-string v1, "auto"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireBand: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public static adjustCalibration(II)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 602
    move v1, v2

    :goto_2
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2e

    .line 603
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 604
    if-ltz p0, :cond_16

    if-ne v1, p0, :cond_1a

    :cond_16
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-eqz v3, :cond_1e

    .line 602
    :cond_1a
    :goto_1a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 607
    :cond_1e
    const/16 v3, 0x64

    iget v4, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->lastStrength:I

    add-int/2addr v4, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 608
    iput v3, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->lastStrength:I

    goto :goto_1a

    .line 610
    :cond_2e
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_39

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    :goto_34
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->writeRows(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)V

    .line 611
    return-void

    .line 610
    :cond_39
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->calibrationCmd()Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v0

    goto :goto_34
.end method

.method private static applyCycle(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)V
    .registers 13

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 1343
    if-nez p0, :cond_6

    .line 1362
    :cond_5
    :goto_5
    return-void

    .line 1346
    :cond_6
    sput-object p0, Lcom/isaigu/gymapp/ai/AutoSession;->lastApplied:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 1347
    sput-boolean v6, Lcom/isaigu/gymapp/ai/AutoSession;->zeroed:Z

    .line 1348
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 1349
    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->raiseBudget:D

    goto :goto_10

    .line 1351
    :cond_21
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AutoSession;->writeRows(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)V

    .line 1353
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v2, v4

    :goto_2b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 1354
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-eqz v1, :cond_5f

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-wide v6, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phiMax:D

    :goto_3f
    invoke-static {p0, v6, v7}, Lcom/isaigu/gymapp/ai/AutoEngine;->rowFrac(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;D)D

    move-result-wide v6

    .line 1355
    iget v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    if-lez v1, :cond_6e

    cmpl-double v1, v6, v4

    if-lez v1, :cond_6e

    iget v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenStrength:I

    if-ltz v1, :cond_6e

    .line 1356
    iget v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenStrength:I

    int-to-double v10, v1

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    int-to-double v0, v0

    mul-double/2addr v0, v6

    div-double v0, v10, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    move-wide v0, v2

    :goto_5d
    move-wide v2, v0

    .line 1358
    goto :goto_2b

    .line 1354
    :cond_5f
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-wide v6, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phiMax:D

    goto :goto_3f

    .line 1359
    :cond_64
    cmpl-double v0, v2, v4

    if-lez v0, :cond_5

    .line 1360
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->setUserScale(D)V

    goto :goto_5

    :cond_6e
    move-wide v0, v2

    goto :goto_5d
.end method

.method static attach(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 2

    .prologue
    .line 129
    sput-object p0, Lcom/isaigu/gymapp/ai/AutoSession;->panelRoot:Landroid/view/View;

    .line 130
    sput-object p1, Lcom/isaigu/gymapp/ai/AutoSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 131
    return-void
.end method

.method private static bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1966
    if-eqz p0, :cond_11

    :try_start_3
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_10} :catch_12

    move-result-object v0

    .line 1968
    :cond_11
    :goto_11
    return-object v0

    .line 1967
    :catch_12
    move-exception v1

    goto :goto_11
.end method

.method public static beginCalibration()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 537
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-nez v0, :cond_8

    .line 538
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->buildPlan()V

    .line 540
    :cond_8
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    .line 541
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->calibrationCmd()Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v3

    .line 542
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 543
    iput v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    .line 544
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    iput-wide v6, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->user:D

    .line 545
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->zoneOffset:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 546
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->zoneRatio:[I

    const/16 v5, 0x64

    invoke-static {v1, v5}, Ljava/util/Arrays;->fill([II)V

    .line 547
    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    iput-wide v6, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->raiseBudget:D

    .line 548
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoSession;->strengthOf(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v1

    .line 549
    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-nez v5, :cond_4b

    const/16 v5, 0xa

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_48
    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->lastStrength:I

    goto :goto_16

    :cond_4b
    move v1, v2

    goto :goto_48

    .line 551
    :cond_4d
    const/16 v0, 0xe10

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoSession;->setWorkLengthAll(I)V

    .line 552
    const/4 v0, 0x1

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/ai/AutoSession;->writeRows(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)V

    .line 554
    :try_start_56
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-eqz v0, :cond_5f

    .line 555
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->startAll()V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_5f} :catch_63

    .line 560
    :cond_5f
    :goto_5f
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->startTicker()V

    .line 561
    return-void

    .line 557
    :catch_63
    move-exception v0

    .line 558
    const-string v1, "auto"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startAll: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5f
.end method

.method public static beginSetup(Landroid/content/Context;)V
    .registers 15

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 347
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoSession;->loadOptions(Landroid/content/Context;)V

    .line 348
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoSession;->loadTips(Landroid/content/Context;)V

    .line 349
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 350
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->items()Ljava/util/List;

    move-result-object v0

    .line 351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 352
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_19
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_179

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 353
    new-instance v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    invoke-direct {v7}, Lcom/isaigu/gymapp/ai/AutoSession$Row;-><init>()V

    .line 354
    iput-object v0, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 355
    new-instance v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-direct {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Input;-><init>()V

    iput-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    .line 356
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v8

    .line 357
    if-eqz v8, :cond_161

    .line 358
    iget-wide v10, v8, Lcom/isaigu/gymapp/ai/AiProfile;->userId:J

    iput-wide v10, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->userId:J

    .line 359
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-eqz v2, :cond_47

    .line 360
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v9, v8, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    iput-object v9, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 362
    :cond_47
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    if-eqz v2, :cond_55

    .line 363
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v9, v8, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    .line 365
    :cond_55
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    if-eqz v2, :cond_63

    .line 366
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v9, v8, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    iput-wide v10, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->weightKg:D

    .line 368
    :cond_63
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget v9, v8, Lcom/isaigu/gymapp/ai/AiProfile;->heightCm:I

    iput v9, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    .line 369
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AiProfile;->fatPct:Ljava/lang/Double;

    if-eqz v2, :cond_77

    .line 370
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v9, v8, Lcom/isaigu/gymapp/ai/AiProfile;->fatPct:Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    iput-wide v10, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fatPct:D

    .line 372
    :cond_77
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v9, v8, Lcom/isaigu/gymapp/ai/AiProfile;->channelFat:[D

    iput-object v9, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->channelFat:[D

    .line 373
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-wide v10, v8, Lcom/isaigu/gymapp/ai/AiProfile;->readiness:D

    iput-wide v10, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->readiness:D

    .line 374
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-wide v10, v8, Lcom/isaigu/gymapp/ai/AiProfile;->leanKg:D

    iput-wide v10, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->leanKg:D

    .line 375
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-wide v10, v8, Lcom/isaigu/gymapp/ai/AiProfile;->skeletalKg:D

    iput-wide v10, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->skeletalKg:D

    .line 376
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v9, v8, Lcom/isaigu/gymapp/ai/AiProfile;->chMuscle:[D

    iput-object v9, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->chMuscle:[D

    .line 377
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-boolean v9, v8, Lcom/isaigu/gymapp/ai/AiProfile;->muscleLow:Z

    iput-boolean v9, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->muscleLow:Z

    .line 378
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-boolean v9, v8, Lcom/isaigu/gymapp/ai/AiProfile;->fatObese:Z

    iput-boolean v9, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fatObese:Z

    .line 379
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-boolean v9, v8, Lcom/isaigu/gymapp/ai/AiProfile;->measured:Z

    iput-boolean v9, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->measured:Z

    .line 380
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v9, v8, Lcom/isaigu/gymapp/ai/AiProfile;->scaleFocus:Ljava/lang/String;

    iput-object v9, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->scaleFocus:Ljava/lang/String;

    .line 381
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AiProfile;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-eqz v2, :cond_b7

    .line 382
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v9, v8, Lcom/isaigu/gymapp/ai/AiProfile;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    iput-object v9, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    .line 384
    :cond_b7
    sget-object v9, Lcom/isaigu/gymapp/ai/AiScreening;->CONTRAINDICATIONS:[Ljava/lang/String;

    array-length v10, v9

    move v2, v3

    :goto_bb
    if-ge v2, v10, :cond_d5

    aget-object v11, v9, v2

    .line 385
    iget-object v12, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v12, v12, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v12, v12, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    iget-object v13, v8, Lcom/isaigu/gymapp/ai/AiProfile;->contraindications:Ljava/util/Set;

    invoke-interface {v13, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v12, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    add-int/lit8 v2, v2, 0x1

    goto :goto_bb

    .line 387
    :cond_d5
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    new-instance v9, Ljava/util/HashSet;

    iget-object v10, v8, Lcom/isaigu/gymapp/ai/AiProfile;->focus:Ljava/util/Set;

    invoke-direct {v9, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v9, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->focus:Ljava/util/Set;

    .line 388
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    new-instance v9, Ljava/util/HashSet;

    iget-object v10, v8, Lcom/isaigu/gymapp/ai/AiProfile;->cond:Ljava/util/Set;

    invoke-direct {v9, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v9, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->cond:Ljava/util/Set;

    .line 389
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AiProfile;->cond:Ljava/util/Set;

    const-string v9, "diastasis"

    invoke-interface {v2, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fc

    .line 390
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    const/4 v9, 0x1

    iput-boolean v9, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->diastasis:Z

    .line 392
    :cond_fc
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_124

    .line 393
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v9, v8, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->goalOf(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-result-object v9

    iput-object v9, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    .line 394
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v9, v8, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->kindOf(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    move-result-object v9

    iput-object v9, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    .line 395
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v9, Lcom/isaigu/gymapp/ai/AiModel$Goal;->DRAIN:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v2, v9, :cond_147

    .line 396
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    const-string v8, "drain"

    iput-object v8, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    .line 408
    :cond_124
    :goto_124
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoSession;->nameOf(Lcom/isaigu/gymapp/train/model/TrainItem;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->name:Ljava/lang/String;

    .line 409
    iget-wide v8, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->userId:J

    invoke-static {p0, v8, v9}, Lcom/isaigu/gymapp/ai/AutoHistory;->of(Landroid/content/Context;J)Lcom/isaigu/gymapp/ai/AutoHistory$Info;

    move-result-object v0

    .line 410
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget v8, v0, Lcom/isaigu/gymapp/ai/AutoHistory$Info;->sessions:I

    iput v8, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    .line 411
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoHistory$Info;->lastActiveMs:J

    invoke-static {v8, v9, v4, v5}, Lcom/isaigu/gymapp/ai/AutoHistory;->hoursSince(JJ)D

    move-result-wide v8

    iput-wide v8, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->hoursSinceActive:D

    .line 412
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_19

    .line 397
    :cond_147
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v9, Lcom/isaigu/gymapp/ai/AiModel$Goal;->CELLULITE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v2, v9, :cond_154

    .line 398
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    const-string v8, "cellulite"

    iput-object v8, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    goto :goto_124

    .line 399
    :cond_154
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v8, Lcom/isaigu/gymapp/ai/AiModel$Goal;->MASSAGE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v2, v8, :cond_124

    .line 400
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    const-string v8, "recovery"

    iput-object v8, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    goto :goto_124

    .line 404
    :cond_161
    sget-object v8, Lcom/isaigu/gymapp/ai/AiScreening;->CONTRAINDICATIONS:[Ljava/lang/String;

    array-length v9, v8

    move v2, v3

    :goto_165
    if-ge v2, v9, :cond_124

    aget-object v10, v8, v2

    .line 405
    iget-object v11, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v11, v11, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v11, v11, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v11, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    add-int/lit8 v2, v2, 0x1

    goto :goto_165

    .line 415
    :cond_179
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a4

    move-object v0, v1

    .line 416
    :goto_182
    if-eqz v0, :cond_18b

    .line 417
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AutoSession;->copyClient(Lcom/isaigu/gymapp/ai/AutoModel$Input;Lcom/isaigu/gymapp/ai/AutoModel$Input;)V

    .line 419
    :cond_18b
    sput-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    .line 420
    sput-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    .line 421
    sput v3, Lcom/isaigu/gymapp/ai/AutoSession;->restCount:I

    .line 422
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->SETUP:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    .line 423
    sput-boolean v3, Lcom/isaigu/gymapp/ai/AutoSession;->recorded:Z

    .line 424
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->panelRoot:Landroid/view/View;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->activityOf(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoSession;->acquireBand(Landroid/app/Activity;)V

    .line 425
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->startTicker()V

    .line 426
    return-void

    .line 415
    :cond_1a4
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    goto :goto_182
.end method

.method public static buildPlan()V
    .registers 8

    .prologue
    const v2, 0x7fffffff

    const/4 v7, 0x0

    .line 499
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->syncLeaderInput()V

    .line 500
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v4

    .line 502
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 503
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/ai/AutoSession;->copyOptions(Lcom/isaigu/gymapp/ai/AutoModel$Input;Lcom/isaigu/gymapp/ai/AutoModel$Input;)V

    .line 504
    if-eqz v4, :cond_6a

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-static {v4, v3, v6}, Lcom/isaigu/gymapp/ai/AutoCatalog;->blockReason(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Ljava/lang/String;

    move-result-object v3

    :goto_35
    iput-object v3, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    .line 505
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-nez v3, :cond_53

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget v3, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    if-gtz v3, :cond_53

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v0, v3, :cond_53

    .line 506
    const-string v3, "\u041d\u044f\u043c\u0430 \u0440\u044a\u0441\u0442 \u0432 \u043f\u0440\u043e\u0444\u0438\u043b\u0430"

    const-string v6, "No height in the client record"

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    .line 509
    :cond_53
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-nez v3, :cond_c4

    if-eqz v4, :cond_c4

    .line 510
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-static {v4, v3, v0}, Lcom/isaigu/gymapp/ai/AutoPlanner;->maxSeconds(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v0, v1

    :goto_68
    move v1, v0

    .line 512
    goto :goto_16

    .line 504
    :cond_6a
    const/4 v3, 0x0

    goto :goto_35

    .line 513
    :cond_6c
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->restHrEstimate()I

    move-result v0

    .line 514
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/ai/AutoPlanner;->build(Lcom/isaigu/gymapp/ai/AutoModel$Input;I)Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    .line 515
    if-eq v1, v2, :cond_90

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->activeS:I

    if-le v2, v1, :cond_90

    .line 516
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->totalSeconds:Ljava/lang/Integer;

    .line 517
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/AutoPlanner;->build(Lcom/isaigu/gymapp/ai/AutoModel$Input;I)Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    .line 519
    :cond_90
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_96
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 520
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v3, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->activeS:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->totalSeconds:Ljava/lang/Integer;

    .line 521
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_bb

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    :goto_b8
    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    goto :goto_96

    :cond_bb
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    const/4 v3, -0x1

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AutoPlanner;->build(Lcom/isaigu/gymapp/ai/AutoModel$Input;I)Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v1

    goto :goto_b8

    .line 523
    :cond_c3
    return-void

    :cond_c4
    move v0, v1

    goto :goto_68
.end method

.method static calibrationCmd()Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;
    .registers 10

    .prologue
    const/4 v5, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 565
    const/4 v1, 0x0

    .line 566
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    .line 567
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "WARMUP"

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 570
    if-eqz v1, :cond_30

    iget v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    iget v4, v1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    if-le v3, v4, :cond_8d

    :cond_30
    :goto_30
    move-object v1, v0

    .line 573
    goto :goto_c

    .line 574
    :cond_32
    if-nez v1, :cond_3f

    .line 575
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-object v1, v0

    .line 577
    :cond_3f
    iget-object v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 578
    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 579
    iget-wide v4, v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->sigma:D

    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_4d

    .line 584
    :goto_61
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;-><init>()V

    .line 585
    iget v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    iput v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    .line 586
    iget v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    iput v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pwUs:I

    .line 587
    iget v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    iput v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    .line 588
    iget v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    iput v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->offS:I

    .line 589
    iget v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    iput v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->rampUpMs:I

    .line 590
    iget v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampDownMs:I

    iput v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->rampDownMs:I

    .line 591
    iput-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    .line 592
    iput-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->ceiling:D

    .line 593
    iput-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->phi:D

    .line 594
    iput-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->env:D

    .line 595
    iput-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->scale:D

    .line 596
    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->base:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 597
    return-object v0

    :cond_8b
    move-object v1, v0

    goto :goto_61

    :cond_8d
    move-object v0, v1

    goto :goto_30
.end method

.method public static canNext()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 804
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->mainKeysOwned()Z

    move-result v1

    if-nez v1, :cond_8

    .line 809
    :cond_7
    :goto_7
    return v0

    .line 807
    :cond_8
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v1

    .line 808
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v2

    .line 809
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->isRestBeforeCooldown()Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v2, v1, :cond_2c

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v1, :cond_7

    :cond_2c
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static canStart()Z
    .registers 3

    .prologue
    .line 614
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 615
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-nez v2, :cond_6

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->lastStrength:I

    if-lez v0, :cond_6

    .line 616
    const/4 v0, 0x1

    .line 619
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public static close()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 755
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-eq v0, v1, :cond_d

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_10

    .line 756
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->end()V

    .line 758
    :cond_10
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->stopTicker()V

    .line 759
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoHints;->hide()V

    .line 760
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiRamp;->clear()V

    .line 761
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoLook;->restore()V

    .line 762
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leaderRunning()Z

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoLook;->unbindMainKeys(Z)V

    .line 763
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBoard;->detach()V

    .line 764
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    .line 765
    sput-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 766
    sput-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    .line 767
    sput-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    .line 768
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 769
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->releaseBand()V

    .line 770
    return-void
.end method

.method public static conflict()Ljava/lang/String;
    .registers 2

    .prologue
    .line 320
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 321
    const-string v0, "\u041f\u044a\u0440\u0432\u043e \u0441\u043f\u0440\u0438 \u043a\u0430\u0440\u0442\u0430\u0442\u0430 \u043e\u0442 \u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438."

    const-string v1, "Stop the Workouts map first."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 343
    :goto_e
    return-object v0

    .line 323
    :cond_f
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-eq v0, v1, :cond_20

    .line 324
    const-string v0, "\u0417\u0430\u0442\u0432\u043e\u0440\u0438 AI \u0441\u0435\u0441\u0438\u044f\u0442\u0430 \u043f\u0440\u0435\u0434\u0438 \u0410\u0432\u0442\u043e."

    const-string v1, "Close the AI session before Auto."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 327
    :cond_20
    :try_start_20
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->isSyncActive()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 328
    :cond_2c
    const-string v0, "\u0421\u043f\u0440\u0438 \u043c\u0443\u0437\u0438\u043a\u0430\u043b\u043d\u0430\u0442\u0430 \u0441\u0438\u043d\u0445\u0440\u043e\u043d\u0438\u0437\u0430\u0446\u0438\u044f: \u0432 \u0410\u0432\u0442\u043e \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430 \u0434\u044a\u0440\u0436\u0438 \u0447\u0435\u0441\u0442\u043e\u0442\u0430\u0442\u0430 \u0438 \u043f\u0430\u0443\u0437\u0438\u0442\u0435."

    const-string v1, "Stop music sync: in Auto the program holds frequency and pauses."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_33} :catch_35

    move-result-object v0

    goto :goto_e

    .line 331
    :catch_35
    move-exception v0

    .line 334
    :cond_36
    :try_start_36
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->isArmed()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 335
    const-string v0, "\u0418\u0437\u043a\u043b\u044e\u0447\u0438 \u0431\u043b\u043e\u043a\u043e\u0432\u0430\u0442\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u043d\u0430 \u0442\u0430\u0439\u043c\u0435\u0440\u0430 \u043f\u0440\u0435\u0434\u0438 \u0410\u0432\u0442\u043e."

    const-string v1, "Disarm the timer block program before Auto."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_43} :catch_45

    move-result-object v0

    goto :goto_e

    .line 338
    :catch_45
    move-exception v0

    .line 340
    :cond_46
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    if-nez v0, :cond_55

    .line 341
    const-string v0, "\u0414\u043e\u0431\u0430\u0432\u0438 \u0443\u0447\u0430\u0441\u0442\u043d\u0438\u043a \u0438 \u0441\u0432\u044a\u0440\u0436\u0438 \u043a\u043e\u0441\u0442\u044e\u043c\u0430."

    const-string v1, "Add a participant and connect the suit."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 343
    :cond_55
    const/4 v0, 0x0

    goto :goto_e
.end method

.method static copyClient(Lcom/isaigu/gymapp/ai/AutoModel$Input;Lcom/isaigu/gymapp/ai/AutoModel$Input;)V
    .registers 4

    .prologue
    .line 430
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 431
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    iput v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    .line 432
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->weightKg:D

    iput-wide v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->weightKg:D

    .line 433
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    iput v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    .line 434
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fatPct:D

    iput-wide v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fatPct:D

    .line 435
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->channelFat:[D

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->channelFat:[D

    .line 436
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->readiness:D

    iput-wide v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->readiness:D

    .line 437
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->leanKg:D

    iput-wide v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->leanKg:D

    .line 438
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->skeletalKg:D

    iput-wide v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->skeletalKg:D

    .line 439
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->chMuscle:[D

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->chMuscle:[D

    .line 440
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->muscleLow:Z

    iput-boolean v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->muscleLow:Z

    .line 441
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fatObese:Z

    iput-boolean v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fatObese:Z

    .line 442
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->measured:Z

    iput-boolean v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->measured:Z

    .line 443
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->scaleFocus:Ljava/lang/String;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->scaleFocus:Ljava/lang/String;

    .line 444
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    .line 445
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    iput v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    .line 446
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->hoursSinceActive:D

    iput-wide v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->hoursSinceActive:D

    .line 447
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    .line 448
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    .line 449
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->focus:Ljava/util/Set;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->focus:Ljava/util/Set;

    .line 450
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->cond:Ljava/util/Set;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->cond:Ljava/util/Set;

    .line 451
    return-void
.end method

.method private static copyOptions(Lcom/isaigu/gymapp/ai/AutoModel$Input;Lcom/isaigu/gymapp/ai/AutoModel$Input;)V
    .registers 3

    .prologue
    .line 455
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    .line 456
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    .line 457
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    .line 458
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    .line 459
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->intensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->intensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    .line 460
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->variant:I

    iput v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->variant:I

    .line 461
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->doublePulse:Z

    iput-boolean v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->doublePulse:Z

    .line 462
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->exercises:Z

    iput-boolean v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->exercises:Z

    .line 463
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->totalSeconds:Ljava/lang/Integer;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->totalSeconds:Ljava/lang/Integer;

    .line 464
    return-void
.end method

.method public static currentExercise()I
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 1321
    :try_start_1
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v1, v2, :cond_15

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v1, :cond_15

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v1, v2, :cond_16

    .line 1327
    :cond_15
    :goto_15
    return v0

    .line 1324
    :cond_16
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getExercise()Ljava/lang/String;

    move-result-object v1

    .line 1325
    if-eqz v1, :cond_15

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->index(Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_21} :catch_23

    move-result v0

    goto :goto_15

    .line 1326
    :catch_23
    move-exception v1

    goto :goto_15
.end method

.method private static currentMet()D
    .registers 2

    .prologue
    .line 1314
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->currentExercise()I

    move-result v0

    .line 1315
    if-ltz v0, :cond_b

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->met(I)D

    move-result-wide v0

    :goto_a
    return-wide v0

    :cond_b
    const-wide/16 v0, 0x0

    goto :goto_a
.end method

.method static end()V
    .registers 4

    .prologue
    .line 740
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v0, :cond_d

    .line 741
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->stop(J)V

    .line 743
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBeep;->cancel()V

    .line 744
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->goNow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 745
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->zeroOutput()V

    .line 746
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->stopDevice()V

    .line 747
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_27

    .line 748
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->finishToReport()V

    .line 752
    :cond_26
    :goto_26
    return-void

    .line 749
    :cond_27
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_26

    .line 750
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->SETUP:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    goto :goto_26
.end method

.method private static engineEvents(J)V
    .registers 10

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    .line 1849
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-nez v0, :cond_b

    .line 1885
    :cond_a
    :goto_a
    return-void

    .line 1852
    :cond_b
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getCorridorExt()I

    move-result v0

    .line 1853
    sget v1, Lcom/isaigu/gymapp/ai/AutoSession;->seenCorridorExt:I

    if-le v0, v1, :cond_189

    .line 1854
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041f\u0443\u043b\u0441\u044a\u0442 \u0435 \u043d\u0430\u0434 \u0437\u043e\u043d\u0430\u0442\u0430 ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2, p0, p1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getHr(J)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->corridorHiHr()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") \u2014 \u043f\u0430\u0443\u0437\u0430\u0442\u0430 \u0441\u0442\u0430\u0432\u0430 +"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HR above the zone ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    .line 1855
    invoke-virtual {v3, p0, p1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getHr(J)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    .line 1856
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->corridorHiHr()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") \u2014 pause +"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1854
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4, p0, p1}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    .line 1860
    :cond_8e
    :goto_8e
    sput v0, Lcom/isaigu/gymapp/ai/AutoSession;->seenCorridorExt:I

    .line 1861
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getDoseExt()I

    move-result v0

    .line 1862
    sget v1, Lcom/isaigu/gymapp/ai/AutoSession;->seenDoseExt:I

    if-le v0, v1, :cond_d3

    .line 1863
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041d\u0430\u0434 \u043f\u043b\u0430\u043d\u043e\u0432\u0430\u0442\u0430 \u0434\u043e\u0437\u0430 \u2014 \u043f\u0430\u0443\u0437\u0430\u0442\u0430 \u0441\u0442\u0430\u0432\u0430 +"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Above the planned dose \u2014 pause +"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4, p0, p1}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    .line 1866
    :cond_d3
    sput v0, Lcom/isaigu/gymapp/ai/AutoSession;->seenDoseExt:I

    .line 1867
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->isRaiseLocked()Z

    move-result v0

    .line 1868
    if-eqz v0, :cond_ec

    sget-boolean v1, Lcom/isaigu/gymapp/ai/AutoSession;->seenRaiseLocked:Z

    if-nez v1, :cond_ec

    .line 1869
    const-string v1, "\u0414\u043e\u0437\u0430\u0442\u0430 \u0435 20 % \u043d\u0430\u0434 \u043f\u043b\u0430\u043d\u0430 \u2014 \u0441\u0438\u043b\u0430\u0442\u0430 \u043d\u0435 \u0441\u0435 \u043a\u0430\u0447\u0432\u0430 \u043f\u043e\u0432\u0435\u0447\u0435 \u0432 \u0442\u0430\u0437\u0438 \u0441\u0435\u0441\u0438\u044f"

    const-string v2, "Dose 20 % above plan \u2014 no more raising this session"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4, p0, p1}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    .line 1872
    :cond_ec
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AutoSession;->seenRaiseLocked:Z

    .line 1873
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->isDoseStopped()Z

    move-result v0

    if-eqz v0, :cond_107

    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoSession;->seenDoseStop:Z

    if-nez v0, :cond_107

    .line 1874
    sput-boolean v4, Lcom/isaigu/gymapp/ai/AutoSession;->seenDoseStop:Z

    .line 1875
    const-string v0, "\u0411\u044e\u0434\u0436\u0435\u0442\u044a\u0442 \u043d\u0430 \u0434\u043e\u0437\u0430\u0442\u0430 \u0435 \u0438\u0437\u0447\u0435\u0440\u043f\u0430\u043d \u2014 \u043a\u044a\u043c \u043e\u0445\u043b\u0430\u0436\u0434\u0430\u043d\u0435"

    const-string v1, "Dose budget used up \u2014 to the cool-down"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, p0, p1}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    .line 1878
    :cond_107
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0, p0, p1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getHr(J)I

    move-result v0

    .line 1879
    if-lez v0, :cond_a

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrUse:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->NONE:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    if-eq v1, v2, :cond_a

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrCap:I

    add-int/lit8 v1, v1, -0x5

    if-lt v0, v1, :cond_a

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrCap:I

    if-ge v0, v1, :cond_a

    sget-wide v2, Lcom/isaigu/gymapp/ai/AutoSession;->hrNearMs:J

    sub-long v2, p0, v2

    const-wide/32 v4, 0xea60

    cmp-long v1, v2, v4

    if-lez v1, :cond_a

    .line 1881
    sput-wide p0, Lcom/isaigu/gymapp/ai/AutoSession;->hrNearMs:J

    .line 1882
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041f\u0443\u043b\u0441\u044a\u0442 \u043d\u0430\u0431\u043b\u0438\u0436\u0430\u0432\u0430 \u0442\u0430\u0432\u0430\u043d\u0430: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrCap:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u2014 \u0437\u0430\u0431\u0430\u0432\u0438 \u0442\u0435\u043c\u043f\u043e\u0442\u043e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HR near the ceiling: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrCap:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u2014 slow down"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, p0, p1}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    goto/16 :goto_a

    .line 1857
    :cond_189
    if-nez v0, :cond_8e

    sget v1, Lcom/isaigu/gymapp/ai/AutoSession;->seenCorridorExt:I

    if-lez v1, :cond_8e

    .line 1858
    const-string v1, "corridor_ok"

    const-string v2, "\u041f\u0443\u043b\u0441\u044a\u0442 \u0435 \u0432 \u0437\u043e\u043d\u0430\u0442\u0430 \u2014 \u043f\u0430\u0443\u0437\u0438\u0442\u0435 \u0441\u0430 \u043e\u0442\u043d\u043e\u0432\u043e \u043d\u043e\u0440\u043c\u0430\u043b\u043d\u0438."

    const-string v3, "HR back in the zone \u2014 normal pauses again."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p0, p1}, Lcom/isaigu/gymapp/ai/AutoSession;->tip(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_8e
.end method

.method private static ensureDeviceRunning()V
    .registers 4

    .prologue
    .line 1990
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 1991
    if-eqz v0, :cond_10

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_10

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v0, :cond_11

    .line 1999
    :cond_10
    :goto_10
    return-void

    .line 1995
    :cond_11
    :try_start_11
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->startAll()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_16} :catch_17

    goto :goto_10

    .line 1996
    :catch_17
    move-exception v0

    .line 1997
    const-string v1, "auto"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startAll: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method private static feedLive(J)V
    .registers 12

    .prologue
    const/4 v7, 0x0

    .line 1427
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-eq v0, v1, :cond_c

    .line 1462
    :cond_b
    :goto_b
    return-void

    .line 1430
    :cond_c
    const/4 v1, 0x0

    .line 1431
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 1432
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-nez v3, :cond_13

    iget v3, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    if-lez v3, :cond_13

    move-object v6, v0

    .line 1437
    :goto_28
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getCurrent()Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v8

    .line 1439
    if-eqz v6, :cond_90

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_90

    if-eqz v8, :cond_90

    .line 1440
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    iget v1, v6, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenStrength:I

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-double v2, v1

    iget v1, v6, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    int-to-double v4, v1

    div-double v1, v2, v4

    iget-object v3, v6, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenZones:[I

    move-wide v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->setLive(D[IJ)V

    .line 1441
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-eqz v0, :cond_cf

    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    .line 1442
    :goto_56
    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phiMax:D

    invoke-static {v8, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->rowFrac(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;D)D

    move-result-wide v0

    .line 1443
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_d2

    iget v2, v6, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenStrength:I

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-double v2, v2

    iget v4, v6, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    int-to-double v4, v4

    mul-double/2addr v0, v4

    div-double v0, v2, v0

    .line 1444
    :goto_6f
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->isDoublePulseOn()Z

    move-result v3

    .line 1445
    sget-wide v4, Lcom/isaigu/gymapp/ai/AutoSession;->forecastScale:D

    sub-double v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v8, 0x3f9eb851eb851eb8L    # 0.03

    cmpl-double v2, v4, v8

    if-gtz v2, :cond_8a

    sget-boolean v2, Lcom/isaigu/gymapp/ai/AutoSession;->forecastDouble:Z

    if-eq v3, v2, :cond_d5

    :cond_8a
    const/4 v2, 0x1

    .line 1446
    :goto_8b
    sput-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->forecastScale:D

    .line 1447
    sput-boolean v3, Lcom/isaigu/gymapp/ai/AutoSession;->forecastDouble:Z

    move v7, v2

    .line 1451
    :cond_90
    sget-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->forecastMs:J

    sub-long v0, p0, v0

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_a6

    if-eqz v7, :cond_b

    sget-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->forecastMs:J

    sub-long v0, p0, v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_b

    .line 1452
    :cond_a6
    sput-wide p0, Lcom/isaigu/gymapp/ai/AutoSession;->forecastMs:J

    .line 1454
    :try_start_a8
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0, p0, p1}, Lcom/isaigu/gymapp/ai/AutoEngine;->forecastFrom(J)Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;

    move-result-object v0

    .line 1455
    if-eqz v0, :cond_b

    .line 1456
    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->forecast:Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;
    :try_end_b2
    .catch Ljava/lang/Throwable; {:try_start_a8 .. :try_end_b2} :catch_b4

    goto/16 :goto_b

    .line 1458
    :catch_b4
    move-exception v0

    .line 1459
    const-string v1, "auto"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forecast: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1441
    :cond_cf
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    goto :goto_56

    .line 1443
    :cond_d2
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_6f

    :cond_d5
    move v2, v7

    .line 1445
    goto :goto_8b

    :cond_d7
    move-object v6, v1

    goto/16 :goto_28
.end method

.method private static finishToReport()V
    .registers 9

    .prologue
    .line 1083
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->REPORT:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    .line 1084
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoLook;->unbindMainKeys(Z)V

    .line 1085
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBoard;->detach()V

    .line 1086
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoHints;->hide()V

    .line 1087
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoLook;->restore()V

    .line 1089
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/ai/AutoSession$Finished;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/AutoSession$Finished;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1090
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoSession;->recorded:Z

    if-nez v0, :cond_64

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v0, :cond_64

    .line 1091
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AutoSession;->recorded:Z

    .line 1092
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->panelRoot:Landroid/view/View;

    if-eqz v0, :cond_62

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->panelRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1093
    :goto_30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1094
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3a
    :goto_3a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 1095
    iget-object v2, v1, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-nez v2, :cond_3a

    iget v2, v1, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    if-lez v2, :cond_3a

    .line 1096
    iget-wide v1, v1, Lcom/isaigu/gymapp/ai/AutoSession$Row;->userId:J

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->isActive()Z

    move-result v3

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AutoEngine;->getImpulseS()D

    move-result-wide v4

    invoke-static/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoHistory;->record(Landroid/content/Context;JZDJ)V

    goto :goto_3a

    .line 1092
    :cond_62
    const/4 v0, 0x0

    goto :goto_30

    .line 1100
    :cond_64
    return-void
.end method

.method private static full(II)[I
    .registers 3

    .prologue
    .line 61
    new-array v0, p0, [I

    .line 62
    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([II)V

    .line 63
    return-object v0
.end method

.method public static getEnergy()Lcom/isaigu/gymapp/ai/AiEnergy;
    .registers 1

    .prologue
    .line 1337
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    return-object v0
.end method

.method public static getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;
    .registers 1

    .prologue
    .line 200
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    return-object v0
.end method

.method static getForecast()Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;
    .registers 1

    .prologue
    .line 691
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->forecast:Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;

    return-object v0
.end method

.method public static getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;
    .registers 1

    .prologue
    .line 192
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    return-object v0
.end method

.method public static getKcal()D
    .registers 2

    .prologue
    .line 1333
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEnergy;->getKcal()D

    move-result-wide v0

    :goto_a
    return-wide v0

    :cond_b
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_a
.end method

.method public static getLastBandHr()I
    .registers 4

    .prologue
    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/isaigu/gymapp/ai/AutoSession;->lastBandHrMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gez v0, :cond_10

    sget v0, Lcom/isaigu/gymapp/ai/AutoSession;->lastBandHr:I

    :goto_f
    return v0

    :cond_10
    const/4 v0, -0x1

    goto :goto_f
.end method

.method public static getLastNotice()Ljava/lang/String;
    .registers 1

    .prologue
    .line 212
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->lastNotice:Ljava/lang/String;

    return-object v0
.end method

.method public static getLastNoticeKind()I
    .registers 1

    .prologue
    .line 285
    sget v0, Lcom/isaigu/gymapp/ai/AutoSession;->lastNoticeKind:I

    return v0
.end method

.method public static getLastNoticeMs()J
    .registers 2

    .prologue
    .line 289
    sget-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->lastNoticeMs:J

    return-wide v0
.end method

.method static getPanelRoot()Landroid/view/View;
    .registers 1

    .prologue
    .line 2075
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->panelRoot:Landroid/view/View;

    return-object v0
.end method

.method public static getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;
    .registers 1

    .prologue
    .line 196
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    return-object v0
.end method

.method static getRows()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/AutoSession$Row;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    return-object v0
.end method

.method static getScript()Lcom/isaigu/gymapp/ai/AutoTemplates$Script;
    .registers 1

    .prologue
    .line 625
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    return-object v0
.end method

.method public static getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;
    .registers 1

    .prologue
    .line 188
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    return-object v0
.end method

.method static getWritten()Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;
    .registers 1

    .prologue
    .line 1005
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    return-object v0
.end method

.method private static goTime(J)J
    .registers 4

    .prologue
    .line 944
    const-wide/16 v0, 0xbb8

    add-long/2addr v0, p0

    return-wide v0
.end method

.method private static guard(J)V
    .registers 24

    .prologue
    .line 1541
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-nez v2, :cond_5

    .line 1786
    :cond_4
    :goto_4
    return-void

    .line 1544
    :cond_5
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v2, v3, :cond_5b

    const/4 v2, 0x1

    move v9, v2

    .line 1545
    :goto_d
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v2, :cond_5e

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    move-object v10, v2

    .line 1546
    :goto_18
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v2, :cond_61

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v3, :cond_61

    const/4 v2, 0x1

    .line 1547
    :goto_27
    if-nez v9, :cond_63

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v3, :cond_63

    .line 1548
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v3

    .line 1549
    if-eqz v3, :cond_63

    iget-object v4, v3, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v4, :cond_63

    iget-object v3, v3, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-nez v3, :cond_63

    if-eqz v2, :cond_63

    .line 1550
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    move-wide/from16 v0, p0

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->userPause(J)V

    .line 1551
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->zeroOutput()V

    .line 1552
    const-string v2, "\u0421\u043f\u0440\u044f\u043d\u043e \u043e\u0442 \u043e\u0441\u043d\u043e\u0432\u043d\u0438\u044f \u0435\u043a\u0440\u0430\u043d \u2014 \u0410\u0432\u0442\u043e \u0435 \u043d\u0430 \u043f\u0430\u0443\u0437\u0430."

    const-string v3, "Stopped from the main screen \u2014 Auto paused."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-wide/from16 v0, p0

    invoke-static {v2, v0, v1, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;JZ)V

    .line 1554
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->show()V

    goto :goto_4

    .line 1544
    :cond_5b
    const/4 v2, 0x0

    move v9, v2

    goto :goto_d

    .line 1545
    :cond_5e
    const/4 v2, 0x0

    move-object v10, v2

    goto :goto_18

    .line 1546
    :cond_61
    const/4 v2, 0x0

    goto :goto_27

    .line 1558
    :cond_63
    if-nez v9, :cond_8a

    if-nez v2, :cond_8a

    .line 1560
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 1561
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoSession;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 1562
    if-eqz v2, :cond_6d

    iget v2, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    if-eqz v2, :cond_6d

    .line 1563
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->zeroOutput()V

    goto/16 :goto_4

    .line 1570
    :cond_8a
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_90
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 1571
    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AutoSession;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v11

    .line 1572
    if-eqz v11, :cond_90

    .line 1575
    iget v3, v11, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v5, v5, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    if-ne v3, v5, :cond_ce

    iget v3, v11, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v5, v5, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pwUs:I

    if-ne v3, v5, :cond_ce

    iget v3, v11, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    const/4 v5, 0x1

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v6, v6, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    .line 1576
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-ne v3, v5, :cond_ce

    iget v3, v11, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    const/4 v5, 0x1

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v6, v6, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->offS:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-eq v3, v5, :cond_112

    :cond_ce
    const/4 v3, 0x1

    .line 1577
    :goto_cf
    iget-boolean v5, v11, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v6, v6, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseHz:I

    if-lez v6, :cond_114

    iget v6, v2, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenStrength:I

    if-lez v6, :cond_114

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 1578
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiSession;->pauseAllowed(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v2

    if-eqz v2, :cond_114

    const/4 v2, 0x1

    :goto_e4
    if-ne v5, v2, :cond_f2

    iget-boolean v2, v11, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v2, :cond_116

    iget v2, v11, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v5, v5, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseHz:I

    if-eq v2, v5, :cond_116

    :cond_f2
    const/4 v2, 0x1

    .line 1580
    :goto_f3
    if-nez v3, :cond_f7

    if-eqz v2, :cond_90

    .line 1583
    :cond_f7
    if-nez v9, :cond_fd

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-nez v4, :cond_118

    .line 1584
    :cond_fd
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-static {v2, v9}, Lcom/isaigu/gymapp/ai/AutoSession;->writeRows(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)V

    .line 1585
    const-string v2, "\u041f\u0440\u0438 \u043a\u0430\u043b\u0438\u0431\u0440\u0438\u0440\u0430\u043d\u0435 \u0447\u0435\u0441\u0442\u043e\u0442\u0430\u0442\u0430 \u0438 \u043f\u0430\u0443\u0437\u0438\u0442\u0435 \u0441\u0430 \u043d\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430."

    const-string v3, "During calibration frequency and pauses belong to the program."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-wide/from16 v0, p0

    invoke-static {v2, v3, v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    goto/16 :goto_4

    .line 1576
    :cond_112
    const/4 v3, 0x0

    goto :goto_cf

    .line 1578
    :cond_114
    const/4 v2, 0x0

    goto :goto_e4

    :cond_116
    const/4 v2, 0x0

    goto :goto_f3

    .line 1589
    :cond_118
    if-eqz v2, :cond_162

    if-nez v3, :cond_162

    .line 1590
    iget-boolean v2, v11, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 1591
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->isDoublePulseAvailable()Z

    move-result v3

    if-eqz v3, :cond_14c

    .line 1592
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    move-wide/from16 v0, p0

    invoke-virtual {v3, v2, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->setDoublePulse(ZJ)V

    .line 1593
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    move-wide/from16 v0, p0

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->refresh(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v2

    .line 1594
    sput-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->lastApplied:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 1595
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->writeRows(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)V

    .line 1596
    const-string v2, "double_main"

    const-string v3, "\u0414\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441: \u043b\u0435\u043a \u043d\u0438\u0441\u043a\u043e\u0447\u0435\u0441\u0442\u043e\u0442\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441 \u0432 \u043f\u0430\u0443\u0437\u0430\u0442\u0430. \u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430 \u0440\u0435\u0448\u0430\u0432\u0430 \u0432 \u043a\u043e\u0438 \u0444\u0430\u0437\u0438."

    const-string v4, "Double impulse: a light low-frequency pulse in the pause. The program decides in which phases."

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-wide/from16 v0, p0

    invoke-static {v2, v3, v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->tip(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_4

    .line 1599
    :cond_14c
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->writeRows(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)V

    .line 1600
    const-string v2, "\u0422\u0430\u0437\u0438 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 / \u0444\u0430\u0437\u0430 \u043d\u044f\u043c\u0430 \u0434\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441."

    const-string v3, "No double impulse in this program / phase."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-wide/from16 v0, p0

    invoke-static {v2, v3, v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    goto/16 :goto_4

    .line 1605
    :cond_162
    iget v2, v11, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v3, v3, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    if-eq v2, v3, :cond_241

    iget v4, v11, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 1606
    :goto_16c
    iget v2, v11, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    const/4 v3, 0x1

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v5, v5, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-eq v2, v3, :cond_244

    iget v5, v11, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 1607
    :goto_17b
    iget v2, v11, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    const/4 v3, 0x1

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v6, v6, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->offS:I

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-eq v2, v3, :cond_247

    .line 1608
    const/4 v2, 0x1

    iget v3, v11, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AutoEngine;->getOffExtension()I

    move-result v6

    sub-int/2addr v3, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1609
    :goto_196
    iget v2, v11, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v3, v3, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pwUs:I

    if-eq v2, v3, :cond_24a

    iget v7, v11, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 1610
    :goto_1a0
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    move-wide/from16 v8, p0

    invoke-virtual/range {v3 .. v9}, Lcom/isaigu/gymapp/ai/AutoEngine;->userParams(IIIIJ)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v8

    .line 1611
    const/4 v2, 0x0

    invoke-static {v8, v2}, Lcom/isaigu/gymapp/ai/AutoSession;->writeRows(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)V

    .line 1612
    sput-object v8, Lcom/isaigu/gymapp/ai/AutoSession;->lastApplied:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 1613
    if-lez v4, :cond_1b4

    iget v2, v8, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    if-ne v2, v4, :cond_1c8

    :cond_1b4
    if-lez v5, :cond_1ba

    iget v2, v8, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    if-ne v2, v5, :cond_1c8

    :cond_1ba
    if-lez v6, :cond_1c2

    iget v2, v8, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->offS:I

    iget v3, v11, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    if-ne v2, v3, :cond_1c8

    :cond_1c2
    if-lez v7, :cond_24d

    iget v2, v8, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pwUs:I

    if-eq v2, v7, :cond_24d

    :cond_1c8
    const/4 v2, 0x1

    move v3, v2

    .line 1615
    :goto_1ca
    if-eqz v10, :cond_251

    iget-object v2, v10, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Window;->hz:Z

    if-nez v2, :cond_251

    iget-object v2, v10, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Window;->on:Z

    if-nez v2, :cond_251

    iget-object v2, v10, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Window;->off:Z

    if-nez v2, :cond_251

    iget-object v2, v10, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Window;->pw:Z

    if-nez v2, :cond_251

    const/4 v2, 0x1

    .line 1616
    :goto_1e5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v8, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Hz \u00b7 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v8, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v8, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->offS:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " s \u00b7 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v8, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pwUs:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u00b5s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1617
    if-eqz v2, :cond_253

    .line 1618
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0412 \u0442\u0430\u0437\u0438 \u0444\u0430\u0437\u0430 \u043f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438\u0442\u0435 \u0441\u0430 \u0444\u0438\u043a\u0441\u0438\u0440\u0430\u043d\u0438: "

    const-string v5, "Parameters are fixed in this phase: "

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-wide/from16 v0, p0

    invoke-static {v2, v3, v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    goto/16 :goto_4

    .line 1605
    :cond_241
    const/4 v4, -0x1

    goto/16 :goto_16c

    .line 1606
    :cond_244
    const/4 v5, -0x1

    goto/16 :goto_17b

    .line 1608
    :cond_247
    const/4 v6, -0x1

    goto/16 :goto_196

    .line 1609
    :cond_24a
    const/4 v7, -0x1

    goto/16 :goto_1a0

    .line 1613
    :cond_24d
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_1ca

    .line 1615
    :cond_251
    const/4 v2, 0x0

    goto :goto_1e5

    .line 1620
    :cond_253
    if-eqz v3, :cond_28a

    .line 1621
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u041b\u0438\u043c\u0438\u0442 \u043d\u0430 \u0444\u0430\u0437\u0430\u0442\u0430: "

    const-string v5, "Phase limit: "

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v10, v8}, Lcom/isaigu/gymapp/ai/AutoSession;->windowText(Lcom/isaigu/gymapp/ai/AutoModel$Phase;Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u2192 \u0441\u0435\u0433\u0430 "

    const-string v5, " \u2192 now "

    .line 1622
    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 1621
    move-wide/from16 v0, p0

    invoke-static {v2, v3, v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    goto/16 :goto_4

    .line 1624
    :cond_28a
    const-string v2, "params"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u041f\u0440\u0438\u0435\u0442\u043e: "

    const-string v6, "Taken: "

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". \u0412\u0430\u0436\u0438 \u0434\u043e \u043a\u0440\u0430\u044f \u043d\u0430 \u0444\u0430\u0437\u0430\u0442\u0430; \u043f\u0440\u043e\u0437\u043e\u0440\u0435\u0446: "

    const-string v5, ". Holds until the phase ends; window: "

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1625
    invoke-static {v10, v8}, Lcom/isaigu/gymapp/ai/AutoSession;->windowText(Lcom/isaigu/gymapp/ai/AutoModel$Phase;Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1624
    move-wide/from16 v0, p0

    invoke-static {v2, v3, v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->tip(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_4

    .line 1630
    :cond_2c0
    const/4 v13, 0x0

    .line 1631
    const/4 v4, 0x0

    .line 1632
    const/4 v11, 0x0

    .line 1633
    const/4 v10, 0x0

    .line 1634
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move v5, v10

    move-object v3, v11

    move v6, v13

    :cond_2cd
    :goto_2cd
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7c2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 1635
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoSession;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v14

    .line 1636
    if-eqz v14, :cond_2cd

    .line 1639
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-eqz v2, :cond_31e

    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    .line 1640
    :goto_2e8
    iget-object v7, v14, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v7, :cond_7ea

    iget-object v7, v14, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v7, v7, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v7, :cond_7ea

    iget-object v7, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenZones:[I

    if-eqz v7, :cond_7ea

    .line 1641
    const/16 v7, 0xa

    new-array v12, v7, [I

    .line 1642
    const/4 v11, 0x0

    .line 1643
    const/4 v7, 0x0

    move v10, v7

    :goto_2fd
    const/16 v7, 0xa

    if-ge v10, v7, :cond_323

    iget-object v7, v14, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v7, v7, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v7, v7

    if-ge v10, v7, :cond_323

    .line 1644
    iget-object v7, v14, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v7, v7, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    aget v7, v7, v10

    aput v7, v12, v10

    .line 1645
    aget v7, v12, v10

    iget-object v13, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenZones:[I

    aget v13, v13, v10

    if-eq v7, v13, :cond_321

    const/4 v7, 0x1

    :goto_319
    or-int/2addr v11, v7

    .line 1643
    add-int/lit8 v7, v10, 0x1

    move v10, v7

    goto :goto_2fd

    .line 1639
    :cond_31e
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    goto :goto_2e8

    .line 1645
    :cond_321
    const/4 v7, 0x0

    goto :goto_319

    .line 1647
    :cond_323
    if-eqz v11, :cond_3af

    if-eqz v9, :cond_3af

    iget-object v7, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-nez v7, :cond_3af

    .line 1650
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-static {v8, v2}, Lcom/isaigu/gymapp/ai/AutoSession;->stepZonesRaw(Lcom/isaigu/gymapp/ai/AutoSession$Row;Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[I

    move-result-object v6

    .line 1651
    const/4 v2, 0x0

    :goto_332
    const/16 v7, 0xa

    if-ge v2, v7, :cond_378

    .line 1652
    aget v7, v12, v2

    iget-object v10, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenZones:[I

    aget v10, v10, v2

    if-ne v7, v10, :cond_341

    .line 1651
    :goto_33e
    add-int/lit8 v2, v2, 0x1

    goto :goto_332

    .line 1655
    :cond_341
    aget v7, v6, v2

    if-lez v7, :cond_371

    .line 1656
    iget-object v7, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->zoneRatio:[I

    const/4 v10, 0x0

    const/16 v11, 0x12c

    aget v13, v12, v2

    int-to-double v0, v13

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    mul-double v16, v16, v18

    aget v13, v6, v2

    int-to-double v0, v13

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v13, v0

    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    aput v10, v7, v2

    .line 1657
    iget-object v7, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->zoneOffset:[I

    const/4 v10, 0x0

    aput v10, v7, v2

    goto :goto_33e

    .line 1659
    :cond_371
    iget-object v7, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->zoneOffset:[I

    aget v10, v12, v2

    aput v10, v7, v2

    goto :goto_33e

    .line 1662
    :cond_378
    if-nez v5, :cond_7f0

    .line 1663
    const-string v2, "calib_zone"

    .line 1664
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Lcom/isaigu/gymapp/ai/AutoSession;->who(Lcom/isaigu/gymapp/ai/AutoSession$Row;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u0434\u0435\u043b\u044a\u0442 \u043d\u0430 \u0437\u043e\u043d\u0438\u0442\u0435 \u0435 \u0437\u0430\u0434\u0430\u0434\u0435\u043d \u2014 \u043f\u0430\u0437\u0438 \u0441\u0435 \u0434\u043e \u043a\u0440\u0430\u044f."

    const-string v6, "zone shares set \u2014 kept to the end."

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .line 1667
    :goto_39a
    const/4 v3, 0x1

    move v10, v5

    move-object v11, v2

    move-object v12, v4

    move v13, v3

    .line 1706
    :goto_39f
    iget v0, v14, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    move/from16 v16, v0

    .line 1707
    iget v2, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenStrength:I

    move/from16 v0, v16

    if-ne v0, v2, :cond_4a9

    move v5, v10

    move-object v3, v11

    move-object v4, v12

    move v6, v13

    .line 1708
    goto/16 :goto_2cd

    .line 1668
    :cond_3af
    if-eqz v11, :cond_7ea

    .line 1669
    iget-object v6, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-eqz v6, :cond_3d3

    .line 1670
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Lcom/isaigu/gymapp/ai/AutoSession;->who(Lcom/isaigu/gymapp/ai/AutoSession$Row;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1671
    const/4 v2, 0x1

    .line 1703
    :goto_3cd
    const/4 v5, 0x1

    move v10, v2

    move-object v11, v3

    move-object v12, v4

    move v13, v5

    goto :goto_39f

    .line 1674
    :cond_3d3
    sget-object v6, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-static {v8, v6}, Lcom/isaigu/gymapp/ai/AutoSession;->stepZones(Lcom/isaigu/gymapp/ai/AutoSession$Row;Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[I

    move-result-object v11

    .line 1675
    const/16 v6, 0xa

    new-array v7, v6, [I

    .line 1676
    const/4 v6, 0x0

    :goto_3de
    const/16 v10, 0xa

    if-ge v6, v10, :cond_3f9

    .line 1677
    aget v10, v11, v6

    iget-object v13, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->zoneOffset:[I

    aget v13, v13, v6

    add-int/2addr v10, v13

    aget v13, v12, v6

    iget-object v0, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenZones:[I

    move-object/from16 v16, v0

    aget v16, v16, v6

    sub-int v13, v13, v16

    add-int/2addr v10, v13

    aput v10, v7, v6

    .line 1676
    add-int/lit8 v6, v6, 0x1

    goto :goto_3de

    .line 1679
    :cond_3f9
    invoke-static {v7, v11, v2}, Lcom/isaigu/gymapp/ai/AutoLimits;->clampZones([I[ILcom/isaigu/gymapp/ai/AutoModel$Plan;)[I

    move-result-object v13

    .line 1680
    const/4 v6, 0x0

    :goto_3fe
    const/16 v7, 0xa

    if-ge v6, v7, :cond_40f

    .line 1681
    iget-object v7, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->zoneOffset:[I

    aget v10, v13, v6

    aget v16, v11, v6

    sub-int v10, v10, v16

    aput v10, v7, v6

    .line 1680
    add-int/lit8 v6, v6, 0x1

    goto :goto_3fe

    .line 1683
    :cond_40f
    const/4 v6, -0x1

    .line 1684
    const/4 v10, -0x1

    .line 1685
    const/4 v7, 0x0

    :goto_412
    const/16 v16, 0xa

    move/from16 v0, v16

    if-ge v7, v0, :cond_439

    .line 1686
    aget v16, v13, v7

    aget v17, v12, v7

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_425

    if-gez v6, :cond_425

    move v6, v7

    .line 1689
    :cond_425
    aget v16, v12, v7

    iget-object v0, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenZones:[I

    move-object/from16 v17, v0

    aget v17, v17, v7

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_436

    if-gez v10, :cond_436

    move v10, v7

    .line 1685
    :cond_436
    add-int/lit8 v7, v7, 0x1

    goto :goto_412

    .line 1693
    :cond_439
    if-ltz v6, :cond_45b

    .line 1694
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Lcom/isaigu/gymapp/ai/AutoSession;->who(Lcom/isaigu/gymapp/ai/AutoSession$Row;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v12, v6

    aget v7, v13, v6

    invoke-static {v6, v5, v7, v2, v11}, Lcom/isaigu/gymapp/ai/AutoSession;->zoneReason(IIILcom/isaigu/gymapp/ai/AutoModel$Plan;[I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1695
    const/4 v2, 0x1

    goto/16 :goto_3cd

    .line 1696
    :cond_45b
    if-ltz v10, :cond_7e7

    if-nez v5, :cond_7e7

    .line 1697
    const-string v3, "zone"

    .line 1698
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Lcom/isaigu/gymapp/ai/AutoSession;->who(Lcom/isaigu/gymapp/ai/AutoSession$Row;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoCues;->zoneNames()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v10

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v6, v13, v10

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " % \u2014 \u043f\u0430\u0437\u0438 \u0441\u0435 \u0434\u043e \u043a\u0440\u0430\u044f. \u041d\u0430\u0434\u043e\u043b\u0443 \u0441\u0432\u043e\u0431\u043e\u0434\u043d\u043e, \u043d\u0430\u0433\u043e\u0440\u0435 \u0434\u043e +"

    const-string v7, " % \u2014 kept to the end. Down freely, up to +"

    .line 1699
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zoneDelta:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " \u043e\u0442 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430."

    const-string v6, " over the program."

    .line 1700
    invoke-static {v4, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v2, v5

    goto/16 :goto_3cd

    .line 1710
    :cond_4a9
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-eqz v2, :cond_4cb

    .line 1711
    const/4 v13, 0x1

    .line 1712
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Lcom/isaigu/gymapp/ai/AutoSession;->who(Lcom/isaigu/gymapp/ai/AutoSession$Row;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1713
    const/4 v10, 0x1

    move v5, v10

    move-object v3, v11

    move v6, v13

    .line 1714
    goto/16 :goto_2cd

    .line 1716
    :cond_4cb
    iget v2, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenStrength:I

    move/from16 v0, v16

    if-ge v0, v2, :cond_51c

    .line 1717
    move/from16 v0, v16

    invoke-static {v8, v0, v9}, Lcom/isaigu/gymapp/ai/AutoSession;->acceptStrength(Lcom/isaigu/gymapp/ai/AutoSession$Row;IZ)V

    .line 1718
    if-nez v10, :cond_7e1

    .line 1719
    const-string v11, "strength_down"

    .line 1720
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Lcom/isaigu/gymapp/ai/AutoSession;->who(Lcom/isaigu/gymapp/ai/AutoSession$Row;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u0441\u0438\u043b\u0430 "

    const-string v4, "strength "

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u2193"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AutoSession;->limitText(Lcom/isaigu/gymapp/ai/AutoSession$Row;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". \u041d\u0430\u043c\u0430\u043b\u0435\u043d\u0438\u0435\u0442\u043e \u0441\u0435 \u043f\u0430\u0437\u0438 \u0434\u043e \u043a\u0440\u0430\u044f."

    const-string v4, ". A reduction is kept to the end."

    .line 1721
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v5, v10

    move-object v3, v11

    move v6, v13

    goto/16 :goto_2cd

    .line 1726
    :cond_51c
    iget v2, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenStrength:I

    iget-wide v4, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->raiseBudget:D

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v3, v4

    add-int/2addr v2, v3

    move/from16 v0, v16

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1727
    if-nez v9, :cond_7de

    .line 1728
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-eqz v2, :cond_5f1

    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-object v6, v2

    .line 1729
    :goto_535
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v4, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phiMax:D

    invoke-static {v2, v4, v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->rowFrac(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;D)D

    move-result-wide v2

    .line 1730
    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    if-gtz v4, :cond_5f6

    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_5f6

    .line 1732
    const/16 v4, 0x64

    int-to-double v6, v14

    div-double v2, v6, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    move v2, v14

    .line 1743
    :goto_558
    iget v3, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenStrength:I

    iget-wide v4, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->raiseBudget:D

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/2addr v3, v4

    .line 1744
    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenStrength:I

    const/16 v5, 0x64

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1745
    const-wide/16 v4, 0x0

    iget-wide v6, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->raiseBudget:D

    iget v2, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenStrength:I

    sub-int v2, v14, v2

    int-to-double v0, v2

    move-wide/from16 v18, v0

    sub-double v6, v6, v18

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    iput-wide v4, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->raiseBudget:D

    .line 1746
    invoke-static {v8, v14, v9}, Lcom/isaigu/gymapp/ai/AutoSession;->acceptStrength(Lcom/isaigu/gymapp/ai/AutoSession$Row;IZ)V

    .line 1747
    move/from16 v0, v16

    if-ge v14, v0, :cond_770

    .line 1748
    const/4 v13, 0x1

    .line 1749
    const/4 v12, 0x1

    .line 1750
    if-lt v14, v3, :cond_64b

    const/16 v2, 0x64

    if-ge v14, v2, :cond_64b

    .line 1751
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Lcom/isaigu/gymapp/ai/AutoSession;->who(Lcom/isaigu/gymapp/ai/AutoSession$Row;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0441\u0438\u043b\u0430 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " \u2014 \u043f\u043b\u0430\u0432\u043d\u043e: \u043d\u0430\u0439-\u043c\u043d\u043e\u0433\u043e +5 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v9, :cond_644

    const-string v2, "\u0432 \u0441\u0435\u043a\u0443\u043d\u0434\u0430"

    :goto_5b6
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "strength "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " \u2014 gradually: at most +5 per "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1752
    if-eqz v9, :cond_648

    const-string v2, "second"

    :goto_5d7
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1751
    invoke-static {v4, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v10, v12

    :goto_5ec
    move v5, v10

    move-object v3, v11

    move v6, v13

    .line 1775
    goto/16 :goto_2cd

    .line 1728
    :cond_5f1
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-object v6, v2

    goto/16 :goto_535

    .line 1736
    :cond_5f6
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v4, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phiMax:D

    iget-wide v6, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->envMax:D

    invoke-virtual/range {v2 .. v7}, Lcom/isaigu/gymapp/ai/AutoEngine;->rowCeiling(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;DD)D

    move-result-wide v2

    .line 1737
    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_62f

    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    int-to-double v4, v4

    mul-double/2addr v4, v2

    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    if-le v14, v4, :cond_62f

    .line 1738
    const/16 v4, 0x64

    int-to-double v6, v14

    div-double/2addr v6, v2

    const-wide v18, 0x3e112e0be826d695L    # 1.0E-9

    sub-double v6, v6, v18

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    .line 1740
    :cond_62f
    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide v4, 0x3e112e0be826d695L    # 1.0E-9

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v14, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto/16 :goto_558

    .line 1751
    :cond_644
    const-string v2, "\u043d\u0430 \u0438\u043c\u043f\u0443\u043b\u0441"

    goto/16 :goto_5b6

    .line 1752
    :cond_648
    const-string v2, "pulse"

    goto :goto_5d7

    .line 1753
    :cond_64b
    if-nez v9, :cond_750

    .line 1754
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-eqz v2, :cond_744

    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-object v10, v2

    .line 1755
    :goto_654
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v16

    .line 1756
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Lcom/isaigu/gymapp/ai/AutoSession;->who(Lcom/isaigu/gymapp/ai/AutoSession$Row;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0442\u0430\u0432\u0430\u043d \u043d\u0430 \u0441\u0438\u043b\u0430\u0442\u0430 \u0441\u0435\u0433\u0430 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (\u043a\u0430\u043b\u0438\u0431\u0440\u0438\u0440\u0430\u043d\u0435 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u00d7 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v4, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phiMax:D

    iget-wide v6, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->envMax:D

    .line 1757
    invoke-virtual/range {v2 .. v7}, Lcom/isaigu/gymapp/ai/AutoEngine;->rowCeiling(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;DD)D

    move-result-wide v2

    mul-double v2, v2, v20

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " % \u0432 \u201e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1758
    if-eqz v16, :cond_749

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameBg:Ljava/lang/String;

    :goto_6ae
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u201c)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "strength ceiling now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (calibration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u00d7 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v4, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phiMax:D

    iget-wide v6, v10, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->envMax:D

    .line 1760
    invoke-virtual/range {v2 .. v7}, Lcom/isaigu/gymapp/ai/AutoEngine;->rowCeiling(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;DD)D

    move-result-wide v2

    mul-double v2, v2, v20

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " % in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1761
    if-eqz v16, :cond_74d

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameEn:Ljava/lang/String;

    :goto_701
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1756
    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1762
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->isRaiseLocked()Z

    move-result v3

    if-eqz v3, :cond_740

    .line 1763
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u00b7 \u0434\u043e\u0437\u0430\u0442\u0430 \u0435 \u043d\u0430\u0434 \u043f\u043b\u0430\u043d\u0430"

    const-string v4, " \u00b7 dose above plan"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_740
    move v10, v12

    move-object v4, v2

    .line 1765
    goto/16 :goto_5ec

    .line 1754
    :cond_744
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-object v10, v2

    goto/16 :goto_654

    .line 1758
    :cond_749
    const-string v2, ""

    goto/16 :goto_6ae

    .line 1761
    :cond_74d
    const-string v2, ""

    goto :goto_701

    .line 1766
    :cond_750
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Lcom/isaigu/gymapp/ai/AutoSession;->who(Lcom/isaigu/gymapp/ai/AutoSession$Row;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u0441\u0438\u043b\u0430 100 \u2014 \u043c\u0430\u043a\u0441\u0438\u043c\u0443\u043c\u044a\u0442 \u043d\u0430 \u0443\u0440\u0435\u0434\u0430"

    const-string v4, "strength 100 \u2014 the device maximum"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v10, v12

    goto/16 :goto_5ec

    .line 1768
    :cond_770
    if-nez v10, :cond_7db

    .line 1769
    if-eqz v9, :cond_7b6

    const-string v2, "calib_up"

    .line 1770
    :goto_776
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Lcom/isaigu/gymapp/ai/AutoSession;->who(Lcom/isaigu/gymapp/ai/AutoSession$Row;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u0441\u0438\u043b\u0430 "

    const-string v5, "strength "

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u2191"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AutoSession;->limitText(Lcom/isaigu/gymapp/ai/AutoSession$Row;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1771
    if-eqz v9, :cond_7b9

    const-string v3, ". \u041a\u0430\u0447\u0432\u0430\u0439 \u0434\u043e \u0446\u0435\u043b\u0435\u0432\u043e\u0442\u043e \u0443\u0441\u0435\u0449\u0430\u043d\u0435, \u043d\u0430\u0439-\u043c\u043d\u043e\u0433\u043e +5 \u0432 \u0441\u0435\u043a\u0443\u043d\u0434\u0430."

    const-string v5, ". Raise to the target feeling, at most +5 per second."

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1773
    :goto_7ab
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v11, v2

    goto/16 :goto_5ec

    .line 1769
    :cond_7b6
    const-string v2, "strength_up"

    goto :goto_776

    .line 1773
    :cond_7b9
    const-string v3, ". \u041d\u0430\u0433\u043e\u0440\u0435 \u2014 \u0434\u043e \u0442\u0430\u0432\u0430\u043d\u0430 \u043d\u0430 \u0444\u0430\u0437\u0430\u0442\u0430, +5 \u043d\u0430 \u0438\u043c\u043f\u0443\u043b\u0441."

    const-string v5, ". Up \u2014 to the phase ceiling, +5 per pulse."

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_7ab

    .line 1776
    :cond_7c2
    if-eqz v6, :cond_7c9

    .line 1777
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-static {v2, v9}, Lcom/isaigu/gymapp/ai/AutoSession;->writeRows(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)V

    .line 1779
    :cond_7c9
    if-eqz v4, :cond_4

    .line 1780
    if-nez v5, :cond_7d4

    .line 1781
    move-wide/from16 v0, p0

    invoke-static {v3, v4, v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->tip(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_4

    .line 1783
    :cond_7d4
    move-wide/from16 v0, p0

    invoke-static {v4, v5, v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    goto/16 :goto_4

    :cond_7db
    move-object v4, v12

    goto/16 :goto_5ec

    :cond_7de
    move v2, v14

    goto/16 :goto_558

    :cond_7e1
    move v5, v10

    move-object v3, v11

    move-object v4, v12

    move v6, v13

    goto/16 :goto_2cd

    :cond_7e7
    move v2, v5

    goto/16 :goto_3cd

    :cond_7ea
    move v10, v5

    move-object v11, v3

    move-object v12, v4

    move v13, v6

    goto/16 :goto_39f

    :cond_7f0
    move-object v2, v3

    goto/16 :goto_39a
.end method

.method public static isActive()Z
    .registers 2

    .prologue
    .line 182
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isBandConfigured(Landroid/content/Context;)Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 310
    if-eqz p0, :cond_a

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_b

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    .line 312
    :cond_a
    :goto_a
    return v0

    .line 311
    :catch_b
    move-exception v1

    goto :goto_a
.end method

.method public static isNewTip(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 233
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoSession;->tipsOn:Z

    if-eqz v0, :cond_10

    if-eqz p0, :cond_10

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->seenTips:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method static items()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1946
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1947
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_b

    move-object v0, v1

    .line 1961
    :goto_a
    return-object v0

    .line 1951
    :cond_b
    :try_start_b
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    .line 1952
    if-eqz v0, :cond_36

    .line 1953
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 1954
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 1955
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_34} :catch_35

    goto :goto_17

    .line 1959
    :catch_35
    move-exception v0

    :cond_36
    move-object v0, v1

    .line 1961
    goto :goto_a
.end method

.method static leader()Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 2

    .prologue
    .line 1941
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->items()Ljava/util/List;

    move-result-object v0

    .line 1942
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    goto :goto_b
.end method

.method private static leaderRow()Lcom/isaigu/gymapp/ai/AutoSession$Row;
    .registers 4

    .prologue
    .line 1226
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    .line 1227
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 1228
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    if-ne v3, v1, :cond_a

    .line 1232
    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private static leaderRunning()Z
    .registers 2

    .prologue
    .line 1078
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 1079
    if-eqz v0, :cond_12

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_12

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static limitText(Lcom/isaigu/gymapp/ai/AutoSession$Row;Z)Ljava/lang/String;
    .registers 10

    .prologue
    .line 1790
    if-nez p1, :cond_e

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    if-gtz v0, :cond_11

    .line 1791
    :cond_e
    const-string v0, ""

    .line 1795
    :goto_10
    return-object v0

    .line 1793
    :cond_11
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-object v4, v0

    .line 1794
    :goto_18
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    int-to-double v6, v0

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v2, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phiMax:D

    iget-wide v4, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->envMax:D

    invoke-virtual/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->rowCeiling(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;DD)D

    move-result-wide v0

    mul-double/2addr v0, v6

    const-wide v2, 0x3e112e0be826d695L    # 1.0E-9

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 1795
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (\u043b\u0438\u043c\u0438\u0442 \u0441\u0435\u0433\u0430 "

    const-string v3, " (limit now "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x64

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 1793
    :cond_59
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-object v4, v0

    goto :goto_18
.end method

.method private static loadOptions(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 2039
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Input;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    .line 2040
    if-nez p0, :cond_a

    .line 2054
    :goto_9
    return-void

    .line 2044
    :cond_a
    :try_start_a
    const-string v0, "auto_session"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2045
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    const-string v2, "goal"

    const-string v3, "TONE"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    .line 2046
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    const-string v2, "kind"

    const-string v3, "ACTIVE"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    .line 2047
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    const-string v2, "program"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    .line 2048
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    const-string v2, "operator"

    const-string v3, "TRAINER"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiModel$Operator;->valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$Operator;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    .line 2049
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    const-string v2, "intensity"

    const-string v3, "STANDARD"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Intensity;->valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->intensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    .line 2050
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    const-string v2, "double"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->doublePulse:Z

    .line 2051
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    const-string v2, "exercises"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->exercises:Z
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_72} :catch_73

    goto :goto_9

    .line 2052
    :catch_73
    move-exception v0

    goto :goto_9
.end method

.method private static loadTips(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 252
    if-nez p0, :cond_4

    .line 266
    :cond_3
    :goto_3
    return-void

    .line 256
    :cond_4
    :try_start_4
    const-string v1, "auto_tips"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 257
    const-string v2, "on"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/isaigu/gymapp/ai/AutoSession;->tipsOn:Z

    .line 258
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->seenTips:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 259
    const-string v2, "seen"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    :goto_28
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 260
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_37

    .line 261
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession;->seenTips:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_37} :catch_3a

    .line 259
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 264
    :catch_3a
    move-exception v0

    goto :goto_3
.end method

.method public static mainKeyState()I
    .registers 2

    .prologue
    .line 833
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->mainKeysOwned()Z

    move-result v0

    if-nez v0, :cond_8

    .line 834
    const/4 v0, -0x1

    .line 837
    :goto_7
    return v0

    .line 836
    :cond_8
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    .line 837
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v1, :cond_16

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_18

    :cond_16
    const/4 v0, 0x1

    goto :goto_7

    :cond_18
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static mainKeysOwned()Z
    .registers 2

    .prologue
    .line 798
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_20

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v0, :cond_20

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v1, :cond_20

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    .line 799
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v1, :cond_20

    const/4 v0, 0x1

    .line 798
    :goto_1f
    return v0

    .line 799
    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public static mainStartPause()V
    .registers 4

    .prologue
    .line 841
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-eq v0, v1, :cond_b

    .line 858
    :cond_a
    :goto_a
    return-void

    .line 844
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 845
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v2

    .line 846
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v3, :cond_31

    .line 847
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->userPause(J)V

    .line 848
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->zeroOutput()V

    .line 849
    const-string v2, "\u041f\u0430\u0443\u0437\u0430. \u25b6 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0430\u0432\u0430, \u25a0 \u2014 \u043a\u044a\u043c \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435."

    const-string v3, "Paused. \u25b6 resumes, \u25a0 \u2014 to the recovery."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    .line 857
    :goto_2d
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->refresh()V

    goto :goto_a

    .line 851
    :cond_31
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v3, :cond_4a

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->canResume()Z

    move-result v2

    if-nez v2, :cond_4a

    .line 852
    const-string v2, "\u041f\u0443\u043b\u0441\u044a\u0442 \u0435 \u0432\u0438\u0441\u043e\u043a \u2014 \u25b6 \u0441\u0435 \u043e\u0442\u043a\u043b\u044e\u0447\u0432\u0430, \u043a\u043e\u0433\u0430\u0442\u043e \u0441\u043f\u0430\u0434\u043d\u0435."

    const-string v3, "HR is high \u2014 \u25b6 unlocks when it drops."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3, v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    goto :goto_2d

    .line 855
    :cond_4a
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->togglePause()V

    goto :goto_2d
.end method

.method public static mainStop()V
    .registers 5

    .prologue
    .line 865
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-eq v0, v1, :cond_b

    .line 889
    :cond_a
    :goto_a
    return-void

    .line 868
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 869
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    .line 870
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v1, :cond_1d

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_ab

    .line 871
    :cond_1d
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_34

    .line 872
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->cancelCountdown(J)V

    .line 873
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBeep;->cancel()V

    .line 874
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->goNow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 875
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->beepsForGoMs:J

    .line 877
    :cond_34
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_43

    .line 878
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->userPause(J)V

    .line 880
    :cond_43
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->zeroOutput()V

    .line 881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041f\u0430\u0443\u0437\u0430. \u25a0 \u043e\u0449\u0435 \u0432\u0435\u0434\u043d\u044a\u0436 \u2014 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v0

    if-eqz v0, :cond_a5

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 882
    const-string v0, "\u043a\u0440\u0430\u0439."

    :goto_67
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Paused. \u25a0 again \u2014 "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 883
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v0

    if-eqz v0, :cond_a8

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v0

    if-eqz v0, :cond_a8

    const-string v0, "end."

    :goto_90
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 881
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    .line 888
    :goto_a0
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->refresh()V

    goto/16 :goto_a

    .line 882
    :cond_a5
    const-string v0, "\u043a\u044a\u043c \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435."

    goto :goto_67

    .line 883
    :cond_a8
    const-string v0, "to the recovery."

    goto :goto_90

    .line 886
    :cond_ab
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->stop()V

    goto :goto_a0
.end method

.method public static markTip(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 237
    if-eqz p0, :cond_17

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->seenTips:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 238
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->panelRoot:Landroid/view/View;

    if-eqz v0, :cond_18

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->panelRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_14
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoSession;->saveTips(Landroid/content/Context;)V

    .line 240
    :cond_17
    return-void

    .line 238
    :cond_18
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private static nameOf(Lcom/isaigu/gymapp/train/model/TrainItem;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 1979
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 1980
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    if-eqz v1, :cond_13

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_13

    .line 1981
    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    .line 1985
    :goto_12
    return-object v0

    .line 1983
    :cond_13
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    if-eqz v1, :cond_1a

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    goto :goto_12

    :cond_1a
    const-string v0, ""
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_12

    .line 1984
    :catch_1d
    move-exception v0

    .line 1985
    const-string v0, ""

    goto :goto_12
.end method

.method public static next()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 696
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v1, :cond_b

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-eq v1, v2, :cond_c

    .line 708
    :cond_b
    :goto_b
    return v0

    .line 699
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 700
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v1

    .line 701
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v4, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->next(J)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 704
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v4, :cond_2b

    .line 705
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->zeroOutput()V

    .line 707
    :cond_2b
    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->onStateChange(Lcom/isaigu/gymapp/ai/AutoEngine$State;J)V

    .line 708
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static nextFromPanel()V
    .registers 8

    .prologue
    .line 815
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->canNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 829
    :goto_6
    return-void

    .line 818
    :cond_7
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSkippedS()D

    move-result-wide v0

    .line 819
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->next()Z

    move-result v2

    if-eqz v2, :cond_84

    .line 820
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSkippedS()D

    move-result-wide v2

    sub-double v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 821
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getExercise()Ljava/lang/String;

    move-result-object v0

    .line 822
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->isRestBeforeCooldown()Z

    move-result v1

    if-eqz v1, :cond_89

    const-string v0, "\u043a\u044a\u043c \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435\u0442\u043e"

    const-string v1, "to the recovery"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 825
    :goto_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u23ed "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\u041f\u0440\u043e\u043f\u0443\u0441\u043d\u0430\u0442\u043e "

    const-string v5, "Skipped "

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-lez v1, :cond_c6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u2212"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    long-to-double v2, v2

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_70
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 826
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 825
    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    .line 828
    :cond_84
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->refresh()V

    goto/16 :goto_6

    .line 823
    :cond_89
    if-eqz v0, :cond_bc

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_bc

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u043a\u044a\u043c \u201e"

    const-string v5, "to "

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u201c"

    const-string v4, ""

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_35

    .line 824
    :cond_bc
    const-string v0, "\u043a\u044a\u043c \u0441\u043b\u0435\u0434\u0432\u0430\u0449\u0430\u0442\u0430 \u0447\u0430\u0441\u0442"

    const-string v1, "to the next part"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_35

    .line 825
    :cond_c6
    const-string v1, ""

    goto :goto_70
.end method

.method static notice(Ljava/lang/String;IJ)V
    .registers 8

    .prologue
    .line 1819
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 1845
    :cond_8
    :goto_8
    return-void

    .line 1822
    :cond_9
    sget v0, Lcom/isaigu/gymapp/ai/AutoSession;->lastNoticeKind:I

    if-ge p1, v0, :cond_17

    sget-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->lastNoticeMs:J

    sub-long v0, p2, v0

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_8

    .line 1825
    :cond_17
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->lastNotice:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1826
    sput-object p0, Lcom/isaigu/gymapp/ai/AutoSession;->lastNotice:Ljava/lang/String;

    .line 1827
    sput p1, Lcom/isaigu/gymapp/ai/AutoSession;->lastNoticeKind:I

    .line 1828
    sput-wide p2, Lcom/isaigu/gymapp/ai/AutoSession;->lastNoticeMs:J

    .line 1829
    if-nez v0, :cond_47

    .line 1830
    const-string v0, "auto"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notice["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1832
    :cond_47
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoHints;->isShowing()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->isShowing()Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz p1, :cond_8

    .line 1835
    const/4 v0, 0x2

    if-ge p1, v0, :cond_62

    sget-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->lastGuardToastMs:J

    sub-long v0, p2, v0

    const-wide/16 v2, 0xdac

    cmp-long v0, v0, v2

    if-ltz v0, :cond_8

    .line 1838
    :cond_62
    sput-wide p2, Lcom/isaigu/gymapp/ai/AutoSession;->lastGuardToastMs:J

    .line 1840
    :try_start_64
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->panelRoot:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 1841
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->panelRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_76} :catch_77

    goto :goto_8

    .line 1843
    :catch_77
    move-exception v0

    goto :goto_8
.end method

.method private static notice(Ljava/lang/String;JZ)V
    .registers 5

    .prologue
    .line 1811
    if-eqz p3, :cond_7

    const/4 v0, 0x2

    :goto_3
    invoke-static {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    .line 1812
    return-void

    .line 1811
    :cond_7
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private static onCountdown(J)V
    .registers 8

    .prologue
    .line 949
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getGoMs()J

    move-result-wide v0

    .line 950
    sget-wide v2, Lcom/isaigu/gymapp/ai/AutoSession;->beepsForGoMs:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_d

    .line 958
    :goto_c
    return-void

    .line 953
    :cond_d
    sput-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->beepsForGoMs:J

    .line 954
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoBeep;->countdown(J)V

    .line 955
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->handler:Landroid/os/Handler;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->goNow:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 956
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->handler:Landroid/os/Handler;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->goNow:Ljava/lang/Runnable;

    const-wide/16 v4, 0x0

    sub-long/2addr v0, p0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 957
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoHints;->refresh()V

    goto :goto_c
.end method

.method private static onGo(J)V
    .registers 4

    .prologue
    .line 962
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBeep;->go()V

    .line 963
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->beepsForGoMs:J

    .line 964
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->goNow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 965
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getCurrent()Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v0

    .line 966
    if-eqz v0, :cond_19

    .line 967
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoSession;->applyCycle(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)V

    .line 969
    :cond_19
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->ensureDeviceRunning()V

    .line 970
    return-void
.end method

.method public static onHeartRate(I)V
    .registers 5

    .prologue
    .line 157
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 158
    sput p0, Lcom/isaigu/gymapp/ai/AutoSession;->lastBandHr:I

    .line 159
    sput-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->lastBandHrMs:J

    .line 160
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->SETUP:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-eq v2, v3, :cond_14

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v2, v3, :cond_28

    .line 161
    :cond_14
    sget v2, Lcom/isaigu/gymapp/ai/AutoSession;->restCount:I

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->restRing:[I

    array-length v3, v3

    rem-int/2addr v2, v3

    .line 162
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->restRing:[I

    aput p0, v3, v2

    .line 163
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->restRingMs:[J

    aput-wide v0, v3, v2

    .line 164
    sget v2, Lcom/isaigu/gymapp/ai/AutoSession;->restCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/isaigu/gymapp/ai/AutoSession;->restCount:I

    .line 166
    :cond_28
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v2, :cond_37

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v2, v3, :cond_37

    .line 167
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2, v0, v1, p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->onHr(JI)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_37} :catch_38

    .line 172
    :cond_37
    :goto_37
    return-void

    .line 169
    :catch_38
    move-exception v0

    .line 170
    const-string v1, "auto"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onHeartRate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37
.end method

.method public static onPulseCycle(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 7

    .prologue
    .line 135
    if-eqz p0, :cond_12

    :try_start_2
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    if-ne p0, v0, :cond_12

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_12

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-nez v0, :cond_13

    .line 153
    :cond_12
    :goto_12
    return-void

    .line 138
    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 139
    sput-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->lastHookMs:J

    .line 140
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v2

    .line 141
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v3, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->onCycle(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v3

    .line 142
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v4, :cond_51

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v4

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v4, v5, :cond_51

    .line 143
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->onGo(J)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_36} :catch_37

    goto :goto_12

    .line 150
    :catch_37
    move-exception v0

    .line 151
    const-string v1, "auto"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPulseCycle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 144
    :cond_51
    if-eqz v3, :cond_5b

    :try_start_53
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eq v3, v4, :cond_5b

    .line 145
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AutoSession;->applyCycle(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)V

    goto :goto_12

    .line 146
    :cond_5b
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v3, :cond_12

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v3

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v3, v4, :cond_12

    .line 147
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->zeroOutput()V

    .line 148
    invoke-static {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->onStateChange(Lcom/isaigu/gymapp/ai/AutoEngine$State;J)V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_6f} :catch_37

    goto :goto_12
.end method

.method private static onStateChange(Lcom/isaigu/gymapp/ai/AutoEngine$State;J)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 985
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    .line 986
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_66

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq p0, v0, :cond_66

    .line 987
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne p0, v0, :cond_19

    .line 988
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBeep;->end()V

    .line 989
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->flashSetEnd()V

    .line 991
    :cond_19
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->isRestBeforeCooldown()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0410\u043a\u0442\u0438\u0432\u043d\u0430\u0442\u0430 \u0447\u0430\u0441\u0442 \u0441\u0432\u044a\u0440\u0448\u0438. \u0421\u043b\u0435\u0434\u0432\u0430 \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->recoveryS:I

    div-int/lit8 v1, v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u043c\u0438\u043d \u2014 \u043b\u0435\u0433\u043d\u0438 / \u0441\u0435\u0434\u043d\u0438 \u0443\u0434\u043e\u0431\u043d\u043e \u0438 \u043d\u0430\u0442\u0438\u0441\u043d\u0438 \u201e\u25b6 \u0421\u0442\u0430\u0440\u0442\u201c."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The active part is done. Recovery "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->recoveryS:I

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " min next \u2014 get comfortable and press \u25b6 Start."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, p1, p2}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    .line 1001
    :cond_66
    :goto_66
    return-void

    .line 997
    :cond_67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0421\u0435\u0440\u0438\u044f\u0442\u0430 \u0441\u0432\u044a\u0440\u0448\u0438 \u2014 \u043f\u043e\u0447\u0438\u0432\u043a\u0430 \u043f\u043e\u043d\u0435 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestMinS()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " s, \u043f\u043e\u0441\u043b\u0435 \u201e\u25b6 \u0421\u0442\u0430\u0440\u0442\u201c."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set done \u2014 rest at least "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    .line 998
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestMinS()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " s, then \u25b6 Start."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 997
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, p1, p2}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    goto :goto_66
.end method

.method public static ownsOutput()Z
    .registers 2

    .prologue
    .line 176
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-eq v0, v1, :cond_24

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_26

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v0, :cond_26

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    .line 177
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v1, :cond_26

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    .line 178
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v1, :cond_26

    :cond_24
    const/4 v0, 0x1

    .line 176
    :goto_25
    return v0

    .line 178
    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method static paramsNow()[I
    .registers 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1014
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 1015
    if-eqz v4, :cond_e

    iget-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    cmpg-double v0, v6, v8

    if-gtz v0, :cond_10

    .line 1016
    :cond_e
    const/4 v0, 0x0

    .line 1019
    :goto_f
    return-object v0

    .line 1018
    :cond_10
    iget v0, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseHz:I

    if-lez v0, :cond_5c

    iget-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseSigma:D

    cmpl-double v0, v6, v8

    if-lez v0, :cond_5c

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v0, :cond_5c

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->isDoublePulseOn()Z

    move-result v0

    if-eqz v0, :cond_5c

    move v0, v1

    .line 1019
    :goto_27
    const/4 v3, 0x6

    new-array v3, v3, [I

    iget v5, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    aput v5, v3, v2

    iget v5, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pwUs:I

    aput v5, v3, v1

    const/4 v5, 0x2

    iget v6, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    aput v6, v3, v5

    const/4 v5, 0x3

    iget v6, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->offS:I

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v3, v5

    const/4 v5, 0x4

    if-eqz v0, :cond_5e

    iget v1, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseHz:I

    :goto_49
    aput v1, v3, v5

    const/4 v1, 0x5

    .line 1020
    if-eqz v0, :cond_58

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    iget-wide v4, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseSigma:D

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v2, v4

    :cond_58
    aput v2, v3, v1

    move-object v0, v3

    .line 1019
    goto :goto_f

    :cond_5c
    move v0, v2

    .line 1018
    goto :goto_27

    :cond_5e
    move v1, v2

    .line 1019
    goto :goto_49
.end method

.method public static raiseAll()V
    .registers 12

    .prologue
    const/4 v4, 0x1

    const-wide v10, 0x3fa999999999999aL    # 0.05

    const/4 v2, 0x0

    .line 1037
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [I

    move v1, v2

    .line 1038
    :goto_10
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_33

    .line 1039
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 1040
    iget v3, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenStrength:I

    aput v3, v5, v1

    .line 1041
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->user:D

    add-double/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    iput-wide v6, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->user:D

    .line 1038
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    .line 1043
    :cond_33
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v0, :cond_93

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_93

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_93

    .line 1044
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AutoSession;->writeRows(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)V

    move v1, v2

    move v3, v2

    .line 1046
    :goto_4c
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_80

    .line 1047
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 1048
    iget v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenStrength:I

    aget v6, v5, v1

    if-le v2, v6, :cond_68

    move v0, v4

    .line 1046
    :goto_63
    add-int/lit8 v2, v1, 0x1

    move v1, v2

    move v3, v0

    goto :goto_4c

    .line 1050
    :cond_68
    iget v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    if-lez v2, :cond_7e

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-nez v2, :cond_7e

    .line 1051
    const-wide v6, 0x3fb999999999999aL    # 0.1

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->user:D

    sub-double/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    iput-wide v6, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->user:D

    :cond_7e
    move v0, v3

    goto :goto_63

    .line 1054
    :cond_80
    if-eqz v3, :cond_94

    .line 1055
    const-string v0, "btn_raise"

    const-string v1, "+5 % \u0437\u0430 \u0432\u0441\u0438\u0447\u043a\u0438, \u043d\u043e \u043d\u0438\u043a\u043e\u0433\u0430 \u043d\u0430\u0434 \u0442\u0430\u0432\u0430\u043d\u0430 \u043d\u0430 \u0444\u0430\u0437\u0430\u0442\u0430 \u0438 \u043d\u0430\u0439-\u043c\u043d\u043e\u0433\u043e +5 \u043d\u0430 \u0438\u043c\u043f\u0443\u043b\u0441."

    const-string v2, "+5 % for all, never above the phase ceiling and at most +5 per pulse."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1056
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1055
    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->tip(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1062
    :cond_93
    :goto_93
    return-void

    .line 1058
    :cond_94
    const-string v0, "\u0422\u0430\u0432\u0430\u043d\u044a\u0442 \u043d\u0430 \u0441\u0438\u043b\u0430\u0442\u0430 \u0437\u0430 \u0442\u0430\u0437\u0438 \u0444\u0430\u0437\u0430 \u0435 \u0434\u043e\u0441\u0442\u0438\u0433\u043d\u0430\u0442"

    const-string v1, "Strength ceiling of this phase reached"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1059
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1058
    invoke-static {v0, v4, v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    goto :goto_93
.end method

.method public static reduceAll()V
    .registers 8

    .prologue
    .line 1025
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 1026
    const-wide v2, 0x3fc999999999999aL    # 0.2

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->user:D

    const-wide v6, 0x3fb999999999999aL    # 0.1

    sub-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->user:D

    goto :goto_6

    .line 1028
    :cond_26
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v0, :cond_3e

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_3e

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_3e

    .line 1029
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->writeRows(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)V

    .line 1031
    :cond_3e
    const-string v0, "btn_reduce"

    const-string v1, "\u221210 % \u0437\u0430 \u0432\u0441\u0438\u0447\u043a\u0438 \u0440\u0435\u0434\u043e\u0432\u0435. \u041d\u0435 \u0441\u0435 \u0432\u0440\u044a\u0449\u0430 \u0441\u0430\u043c\u043e \u2014 \u0432\u044a\u0440\u043d\u0438 \u0441 \u201e+5 %\u201c \u0438\u043b\u0438 \u0441 + \u043d\u0430 \u0440\u0435\u0434\u0430."

    const-string v2, "\u221210 % for all rows. Not given back automatically \u2014 use +5 % or the row\'s +."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1032
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1031
    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->tip(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1033
    return-void
.end method

.method private static releaseBand()V
    .registers 4

    .prologue
    .line 2030
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->panelRoot:Landroid/view/View;

    if-eqz v0, :cond_10

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->panelRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_a
    const-string v1, "auto"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->release(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_12

    .line 2034
    :goto_f
    return-void

    .line 2030
    :cond_10
    const/4 v0, 0x0

    goto :goto_a

    .line 2031
    :catch_12
    move-exception v0

    .line 2032
    const-string v1, "auto"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseBand: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method public static restHrEstimate()I
    .registers 8

    .prologue
    .line 294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 295
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 296
    const/4 v0, 0x0

    :goto_a
    sget v4, Lcom/isaigu/gymapp/ai/AutoSession;->restCount:I

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoSession;->restRing:[I

    array-length v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v0, v4, :cond_40

    .line 297
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession;->restRingMs:[J

    aget-wide v4, v4, v0

    sub-long v4, v2, v4

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3d

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession;->restRing:[I

    aget v4, v4, v0

    const/16 v5, 0x23

    if-lt v4, v5, :cond_3d

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession;->restRing:[I

    aget v4, v4, v0

    const/16 v5, 0x82

    if-gt v4, v5, :cond_3d

    .line 298
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession;->restRing:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 301
    :cond_40
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_49

    .line 302
    const/4 v0, -0x1

    .line 305
    :goto_48
    return v0

    .line 304
    :cond_49
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 305
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_48
.end method

.method private static rowStrength(Lcom/isaigu/gymapp/ai/AutoSession$Row;Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)I
    .registers 15

    .prologue
    const/4 v0, 0x0

    .line 1366
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 1377
    :goto_5
    return v0

    .line 1369
    :cond_6
    if-eqz p2, :cond_15

    .line 1370
    const/16 v1, 0x64

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->lastStrength:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_5

    .line 1372
    :cond_15
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-object v1, v0

    .line 1373
    :goto_1c
    iget-wide v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phiMax:D

    invoke-static {p1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->rowFrac(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;D)D

    move-result-wide v10

    .line 1374
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v0, :cond_43

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    iget-wide v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phiMax:D

    iget-wide v4, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->envMax:D

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->rowCeiling(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;DD)D

    move-result-wide v6

    .line 1375
    :goto_31
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->user:D

    iget v8, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->lastStrength:I

    move-wide v2, v10

    invoke-static/range {v1 .. v8}, Lcom/isaigu/gymapp/ai/AutoLimits;->rowStrength(IDDDI)I

    move-result v0

    .line 1376
    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->lastStrength:I

    goto :goto_5

    .line 1372
    :cond_3f
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-object v1, v0

    goto :goto_1c

    :cond_43
    move-wide v6, v10

    .line 1374
    goto :goto_31
.end method

.method private static rowZones(Lcom/isaigu/gymapp/ai/AutoSession$Row;Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[I
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 1407
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    .line 1408
    :goto_7
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AutoSession;->stepZones(Lcom/isaigu/gymapp/ai/AutoSession$Row;Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[I

    move-result-object v5

    .line 1410
    const/16 v1, 0xa

    new-array v6, v1, [I

    move v1, v2

    move v3, v2

    .line 1411
    :goto_11
    array-length v4, v6

    if-ge v1, v4, :cond_2d

    .line 1412
    aget v4, v5, v1

    iget-object v7, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->zoneOffset:[I

    aget v7, v7, v1

    add-int/2addr v4, v7

    aput v4, v6, v1

    .line 1413
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->zoneOffset:[I

    aget v4, v4, v1

    if-eqz v4, :cond_2b

    const/4 v4, 0x1

    :goto_24
    or-int/2addr v3, v4

    .line 1411
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 1407
    :cond_28
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    goto :goto_7

    :cond_2b
    move v4, v2

    .line 1413
    goto :goto_24

    .line 1415
    :cond_2d
    if-nez v3, :cond_31

    move-object v0, v5

    .line 1418
    :goto_30
    return-object v0

    :cond_31
    invoke-static {v6, v5, v0}, Lcom/isaigu/gymapp/ai/AutoLimits;->clampZones([I[ILcom/isaigu/gymapp/ai/AutoModel$Plan;)[I

    move-result-object v0

    goto :goto_30
.end method

.method static saveHeight(Landroid/app/Activity;I)V
    .registers 10

    .prologue
    const/4 v7, 0x3

    const/4 v0, 0x0

    .line 475
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iput p1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    .line 476
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->syncLeaderInput()V

    .line 478
    :try_start_9
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    .line 479
    if-eqz v1, :cond_19

    iget-object v2, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v2, :cond_19

    iget-object v2, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-nez v2, :cond_1a

    .line 495
    :cond_19
    :goto_19
    return-void

    .line 482
    :cond_1a
    iget-object v1, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 483
    iput p1, v1, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    .line 484
    const-string v2, "com.isaigu.gymapp.widget.XemsLocalStore"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 485
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    :goto_2b
    if-ge v0, v3, :cond_19

    aget-object v4, v2, v0

    .line 486
    const-string v5, "saveUser"

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_73

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    if-ne v5, v7, :cond_73

    .line 487
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 488
    const/4 v0, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v1, 0x2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v2, v1

    invoke-virtual {v4, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_58} :catch_59

    goto :goto_19

    .line 492
    :catch_59
    move-exception v0

    .line 493
    const-string v1, "auto"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 485
    :cond_73
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b
.end method

.method private static saveOptions(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 2057
    if-nez p0, :cond_3

    .line 2072
    :goto_2
    return-void

    .line 2061
    :cond_3
    :try_start_3
    const-string v0, "auto_session"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "goal"

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    .line 2062
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "kind"

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    .line 2063
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "program"

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    .line 2064
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "operator"

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    .line 2065
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiModel$Operator;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "intensity"

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->intensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    .line 2066
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Intensity;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "double"

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->doublePulse:Z

    .line 2067
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "exercises"

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->exercises:Z

    .line 2068
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2069
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_67} :catch_68

    goto :goto_2

    .line 2070
    :catch_68
    move-exception v0

    goto :goto_2
.end method

.method private static saveTips(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 269
    if-nez p0, :cond_3

    .line 281
    :goto_2
    return-void

    .line 273
    :cond_3
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->seenTips:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 275
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2c

    const-string v1, ","

    :goto_22
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 279
    :catch_2a
    move-exception v0

    goto :goto_2

    .line 275
    :cond_2c
    const-string v1, ""

    goto :goto_22

    .line 277
    :cond_2f
    const-string v0, "auto_tips"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "on"

    sget-boolean v3, Lcom/isaigu/gymapp/ai/AutoSession;->tipsOn:Z

    .line 278
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "seen"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_4f} :catch_2a

    goto :goto_2
.end method

.method static screeningInput(Lcom/isaigu/gymapp/ai/AutoModel$Input;)Lcom/isaigu/gymapp/ai/AiModel$SessionInput;
    .registers 3

    .prologue
    .line 527
    new-instance v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;-><init>()V

    .line 528
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    .line 529
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 530
    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Goal;->MASSAGE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    .line 531
    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Mode;->PASSIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    .line 532
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    .line 533
    return-object v0
.end method

.method public static setDoublePulse(Z)V
    .registers 5

    .prologue
    .line 1065
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v0, :cond_27

    .line 1066
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1067
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2, p0, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->setDoublePulse(ZJ)V

    .line 1068
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v3, :cond_27

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v2, :cond_27

    .line 1069
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->refresh(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v0

    .line 1070
    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->lastApplied:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 1071
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->writeRows(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)V

    .line 1074
    :cond_27
    return-void
.end method

.method public static setTips(Landroid/content/Context;Z)V
    .registers 3

    .prologue
    .line 224
    sput-boolean p1, Lcom/isaigu/gymapp/ai/AutoSession;->tipsOn:Z

    .line 225
    if-eqz p1, :cond_9

    .line 226
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->seenTips:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 228
    :cond_9
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoSession;->saveTips(Landroid/content/Context;)V

    .line 229
    return-void
.end method

.method private static setWorkLengthAll(I)V
    .registers 3

    .prologue
    .line 2002
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->items()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 2003
    iput p0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    goto :goto_8

    .line 2005
    :cond_17
    return-void
.end method

.method private static startEnergy()V
    .registers 14

    .prologue
    const/4 v11, 0x0

    .line 1236
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    .line 1237
    sput-boolean v11, Lcom/isaigu/gymapp/ai/AutoSession;->epocClosed:Z

    .line 1238
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AiEnergy;->exerciseMet:D

    .line 1240
    :try_start_a
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leaderRow()Lcom/isaigu/gymapp/ai/AutoSession$Row;

    move-result-object v1

    .line 1241
    if-eqz v1, :cond_57

    iget-object v0, v1, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    if-eqz v0, :cond_57

    iget-object v0, v1, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-object v10, v0

    .line 1242
    :goto_17
    if-eqz v1, :cond_5b

    iget-object v0, v1, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-eqz v0, :cond_5b

    iget-object v0, v1, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    .line 1243
    :goto_1f
    iget-object v1, v10, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    if-eqz v1, :cond_2a

    iget-object v1, v10, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Screening;->hrLoweringMedication:Z

    if-eqz v1, :cond_2a

    const/4 v11, 0x1

    .line 1244
    :cond_2a
    iget-object v1, v10, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    iget v2, v10, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    iget-wide v3, v10, Lcom/isaigu/gymapp/ai/AutoModel$Input;->weightKg:D

    iget-object v5, v10, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    iget-wide v6, v10, Lcom/isaigu/gymapp/ai/AutoModel$Input;->leanKg:D

    iget-wide v8, v10, Lcom/isaigu/gymapp/ai/AutoModel$Input;->skeletalKg:D

    iget-object v10, v10, Lcom/isaigu/gymapp/ai/AutoModel$Input;->chMuscle:[D

    .line 1245
    iget-boolean v12, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrRestMeasured:Z

    if-eqz v12, :cond_5e

    iget v12, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrRest:I

    :goto_3e
    iget v13, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrMax:I

    .line 1244
    invoke-static/range {v1 .. v13}, Lcom/isaigu/gymapp/ai/AiEnergy;->forPerson(Lcom/isaigu/gymapp/ai/AiModel$Sex;IDLcom/isaigu/gymapp/ai/AiModel$Fitness;DD[DZII)Lcom/isaigu/gymapp/ai/AiEnergy;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    .line 1246
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->calibrationCmd()Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pwUs:I

    if-lez v0, :cond_60

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->calibrationCmd()Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pwUs:I

    :goto_54
    sput v0, Lcom/isaigu/gymapp/ai/AutoSession;->calPw:I

    .line 1250
    :goto_56
    return-void

    .line 1241
    :cond_57
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-object v10, v0

    goto :goto_17

    .line 1242
    :cond_5b
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_5d} :catch_63

    goto :goto_1f

    .line 1245
    :cond_5e
    const/4 v12, -0x1

    goto :goto_3e

    .line 1246
    :cond_60
    const/16 v0, 0x15e

    goto :goto_54

    .line 1247
    :catch_63
    move-exception v0

    .line 1248
    const-string v1, "auto"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "energy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_56
.end method

.method public static startNext()Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 908
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v2, :cond_c

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-eq v2, v3, :cond_d

    .line 921
    :cond_c
    :goto_c
    return v0

    .line 911
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 912
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v4

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v4, v5, :cond_29

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->startReady()Z

    move-result v4

    if-nez v4, :cond_29

    .line 913
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->waitReason(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    goto :goto_c

    .line 916
    :cond_29
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->ensureDeviceRunning()V

    .line 917
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->goTime(J)J

    move-result-wide v6

    invoke-virtual {v4, v2, v3, v6, v7}, Lcom/isaigu/gymapp/ai/AutoEngine;->requestGo(JJ)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 920
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->onCountdown(J)V

    move v0, v1

    .line 921
    goto :goto_c
.end method

.method public static startReady()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 893
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-nez v1, :cond_6

    .line 900
    :cond_5
    :goto_5
    return v0

    .line 896
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 897
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v1

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v4, :cond_26

    .line 898
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestLeftS(J)I

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->isRestHrHigh(J)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    .line 900
    :cond_26
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->canResume()Z

    move-result v0

    goto :goto_5
.end method

.method public static startRun(Landroid/content/Context;)V
    .registers 10

    .prologue
    const/4 v3, 0x1

    const/4 v5, -0x1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 629
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->canStart()Z

    move-result v0

    if-nez v0, :cond_11

    .line 687
    :cond_10
    :goto_10
    return-void

    .line 632
    :cond_11
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoSession;->saveOptions(Landroid/content/Context;)V

    .line 633
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 634
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-nez v1, :cond_33

    iget v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->lastStrength:I

    :goto_2c
    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    .line 635
    iput-wide v6, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->user:D

    .line 636
    iput v5, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->lastStrength:I

    goto :goto_1a

    :cond_33
    move v1, v2

    .line 634
    goto :goto_2c

    .line 638
    :cond_35
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iput v5, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->limitAge:I

    .line 639
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->items()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_41
    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 640
    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v4, :cond_41

    .line 641
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v5, v5, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->limitAge:I

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/SafeGuard;->age(Lcom/isaigu/gymapp/bean/TrainUser;)I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->limitAge:I

    goto :goto_41

    .line 644
    :cond_66
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoEngine;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;-><init>(Lcom/isaigu/gymapp/ai/AutoModel$Plan;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    .line 645
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->startEnergy()V

    .line 646
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 647
    sput-object v8, Lcom/isaigu/gymapp/ai/AutoSession;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    .line 648
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->preload(Landroid/content/Context;)V

    .line 650
    :try_start_7b
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoHistory;->cardioMachine(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_18b

    move v0, v3

    :goto_82
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AutoTemplates;->noCardioMachine:Z

    .line 651
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->script(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Ljava/util/List;)Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    .line 652
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    if-eqz v0, :cond_bb

    .line 653
    const-string v0, "auto"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "template "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoSession;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    iget-object v6, v6, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->programId:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " L"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoSession;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    iget v6, v6, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;->level:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bb
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_bb} :catch_18e

    .line 658
    :cond_bb
    :goto_bb
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->setScript(Lcom/isaigu/gymapp/ai/AutoTemplates$Script;)V

    .line 660
    :try_start_c2
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->doublePulseAllowed:Z

    if-eqz v0, :cond_1a9

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->doublePulse:Z

    if-eqz v0, :cond_1a9

    move v0, v3

    :goto_d1
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AutoSession;->forecastDouble:Z

    .line 661
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->forecastScale:D

    .line 662
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    sget-boolean v3, Lcom/isaigu/gymapp/ai/AutoSession;->forecastDouble:Z

    invoke-static {v0, v1, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->forecast(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoTemplates$Script;Z)Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->forecast:Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;

    .line 663
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->forecast:Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;

    iget-wide v6, v1, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->dose:D

    invoke-virtual {v0, v6, v7}, Lcom/isaigu/gymapp/ai/AutoEngine;->setDoseBudget(D)V

    .line 664
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->forecast:Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->zoneDose:[D

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->forecast:Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->zoneExDose:[D

    invoke-virtual {v0, v1, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->setZoneBudget([D[D)V
    :try_end_f9
    .catch Ljava/lang/Throwable; {:try_start_c2 .. :try_end_f9} :catch_1ac

    .line 669
    :goto_f9
    sput v2, Lcom/isaigu/gymapp/ai/AutoSession;->seenCorridorExt:I

    .line 670
    sput v2, Lcom/isaigu/gymapp/ai/AutoSession;->seenDoseExt:I

    .line 671
    sput-boolean v2, Lcom/isaigu/gymapp/ai/AutoSession;->seenRaiseLocked:Z

    .line 672
    sput-boolean v2, Lcom/isaigu/gymapp/ai/AutoSession;->seenDoseStop:Z

    .line 673
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->hrNearMs:J

    .line 674
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->lastNotice:Ljava/lang/String;

    .line 675
    sput v2, Lcom/isaigu/gymapp/ai/AutoSession;->lastNoticeKind:I

    .line 676
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->beepsForGoMs:J

    .line 678
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->totalS:I

    add-int/lit16 v0, v0, 0xe10

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoSession;->setWorkLengthAll(I)V

    .line 679
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    .line 680
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->zeroOutput()V

    .line 681
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->ensureDeviceRunning()V

    .line 682
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AutoSession;->goTime(J)J

    move-result-wide v2

    invoke-virtual {v0, v4, v5, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->startAt(JJ)V

    .line 683
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AutoSession;->onCountdown(J)V

    .line 684
    const-string v0, "auto"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " goal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " T="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->totalS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rows="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    .line 685
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrCap:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 684
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->startTicker()V

    goto/16 :goto_10

    :cond_18b
    move v0, v2

    .line 650
    goto/16 :goto_82

    .line 655
    :catch_18e
    move-exception v0

    .line 656
    const-string v1, "auto"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "template: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_bb

    :cond_1a9
    move v0, v2

    .line 660
    goto/16 :goto_d1

    .line 665
    :catch_1ac
    move-exception v0

    .line 666
    sput-object v8, Lcom/isaigu/gymapp/ai/AutoSession;->forecast:Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;

    .line 667
    const-string v1, "auto"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "forecast: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f9
.end method

.method private static startTicker()V
    .registers 4

    .prologue
    .line 1105
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->ticker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->lastTickMs:J

    .line 1107
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->ticker:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1108
    return-void
.end method

.method private static stepZones(Lcom/isaigu/gymapp/ai/AutoSession$Row;Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[I
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 1382
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AutoSession;->stepZonesRaw(Lcom/isaigu/gymapp/ai/AutoSession$Row;Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[I

    move-result-object v2

    move v0, v1

    .line 1383
    :goto_6
    array-length v3, v2

    if-ge v0, v3, :cond_28

    .line 1384
    const/16 v3, 0x64

    aget v4, v2, v0

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->zoneRatio:[I

    aget v5, v5, v0

    mul-int/2addr v4, v5

    int-to-double v4, v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v2, v0

    .line 1383
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1386
    :cond_28
    return-object v2
.end method

.method private static stepZonesRaw(Lcom/isaigu/gymapp/ai/AutoSession$Row;Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[I
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 1391
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-object v3, v0

    .line 1392
    :goto_8
    if-eqz p1, :cond_e

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->zones:[I

    if-nez v0, :cond_3b

    :cond_e
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zones:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    :goto_16
    move v1, v2

    .line 1393
    :goto_17
    array-length v4, v0

    if-ge v1, v4, :cond_44

    .line 1394
    iget-object v4, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zoneLocked:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_28

    iget-object v4, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zones:[I

    aget v4, v4, v1

    if-nez v4, :cond_28

    .line 1395
    aput v2, v0, v1

    .line 1397
    :cond_28
    aget v4, v0, v1

    iget-object v5, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zoneMax:[I

    aget v5, v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v4, v0, v1

    .line 1393
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 1391
    :cond_37
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-object v3, v0

    goto :goto_8

    .line 1392
    :cond_3b
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->zones:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_16

    .line 1399
    :cond_44
    return-object v0
.end method

.method public static stop()V
    .registers 5

    .prologue
    .line 716
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_a

    .line 717
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->end()V

    .line 736
    :cond_9
    :goto_9
    return-void

    .line 720
    :cond_a
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_9

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v0, :cond_9

    .line 723
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 724
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBeep;->cancel()V

    .line 725
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->handler:Landroid/os/Handler;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->goNow:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 726
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->stopPress(J)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 727
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->end()V

    goto :goto_9

    .line 730
    :cond_2e
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->zeroOutput()V

    .line 731
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0410\u043a\u0442\u0438\u0432\u043d\u0430\u0442\u0430 \u0447\u0430\u0441\u0442 \u0435 \u0441\u043f\u0440\u044f\u043d\u0430 \u2192 \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v3, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->recoveryS:I

    div-int/lit8 v3, v3, 0x3c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u043c\u0438\u043d. \u201e\u25b6 \u0421\u0442\u0430\u0440\u0442\u201c \u0433\u043e \u043f\u0443\u0441\u043a\u0430; \u0432\u0442\u043e\u0440\u043e \u0421\u0422\u041e\u041f \u043f\u0440\u0438\u043a\u043b\u044e\u0447\u0432\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Active part stopped \u2192 recovery "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v4, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->recoveryS:I

    div-int/lit8 v4, v4, 0x3c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " min. \u25b6 Start runs it; a second STOP ends the session."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3, v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    .line 735
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->show()V

    goto :goto_9
.end method

.method private static stopDevice()V
    .registers 4

    .prologue
    .line 2008
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiRamp;->clear()V

    .line 2010
    :try_start_3
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-eqz v0, :cond_c

    .line 2011
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->stopAll()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_c} :catch_d

    .line 2016
    :cond_c
    :goto_c
    return-void

    .line 2013
    :catch_d
    move-exception v0

    .line 2014
    const-string v1, "auto"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopAll: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method private static stopTicker()V
    .registers 2

    .prologue
    .line 1111
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->ticker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1112
    return-void
.end method

.method private static strengthOf(Lcom/isaigu/gymapp/train/model/TrainItem;)I
    .registers 2

    .prologue
    .line 1973
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoSession;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 1974
    if-eqz v0, :cond_9

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method static syncLeaderInput()V
    .registers 3

    .prologue
    .line 468
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 469
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/AutoSession;->copyClient(Lcom/isaigu/gymapp/ai/AutoModel$Input;Lcom/isaigu/gymapp/ai/AutoModel$Input;)V

    .line 471
    :cond_18
    return-void
.end method

.method private static tick()V
    .registers 12

    .prologue
    const/4 v8, 0x1

    const-wide/high16 v10, 0x4014000000000000L    # 5.0

    .line 1155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1156
    const-wide/16 v0, 0x0

    sget-wide v4, Lcom/isaigu/gymapp/ai/AutoSession;->lastTickMs:J

    sub-long v4, v2, v4

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 1157
    sput-wide v2, Lcom/isaigu/gymapp/ai/AutoSession;->lastTickMs:J

    .line 1158
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_42

    .line 1159
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 1160
    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->raiseBudget:D

    mul-double v8, v10, v4

    add-double/2addr v6, v8

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    iput-wide v6, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->raiseBudget:D

    goto :goto_26

    .line 1162
    :cond_3e
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->guard(J)V

    .line 1221
    :cond_41
    :goto_41
    return-void

    .line 1165
    :cond_42
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_41

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v0, :cond_41

    .line 1169
    :try_start_4c
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_73

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_73

    .line 1170
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->userPause(J)V

    .line 1171
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->zeroOutput()V

    .line 1172
    const-string v0, "\u041c\u0443\u0437\u0438\u043a\u0430\u043b\u043d\u0430\u0442\u0430 \u0441\u0438\u043d\u0445\u0440\u043e\u043d\u0438\u0437\u0430\u0446\u0438\u044f \u043f\u043e\u0435 \u0441\u0438\u043b\u0430\u0442\u0430 \u2014 \u0410\u0432\u0442\u043e \u0435 \u043d\u0430 \u043f\u0430\u0443\u0437\u0430."

    const-string v1, "Music sync took the strength \u2014 Auto paused."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;JZ)V

    .line 1174
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->show()V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_73} :catch_1af

    .line 1178
    :cond_73
    :goto_73
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->guard(J)V

    .line 1179
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->feedLive(J)V

    .line 1180
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    .line 1181
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->tick(J)V

    .line 1182
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->traceTick(J)V

    .line 1183
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v1

    .line 1184
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->engineEvents(J)V

    .line 1185
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v4, :cond_156

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v4, :cond_156

    .line 1186
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->onGo(J)V

    .line 1190
    :cond_9d
    :goto_9d
    if-eq v0, v1, :cond_a2

    .line 1191
    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->onStateChange(Lcom/isaigu/gymapp/ai/AutoEngine$State;J)V

    .line 1193
    :cond_a2
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v4, :cond_15f

    .line 1194
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AutoEngine;->getCurrent()Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v4

    .line 1195
    if-eqz v4, :cond_b5

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoSession;->lastApplied:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eq v4, v5, :cond_b5

    .line 1196
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AutoSession;->applyCycle(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)V

    .line 1201
    :cond_b5
    :goto_b5
    invoke-static {v2, v3, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->tickEnergy(JLcom/isaigu/gymapp/ai/AutoEngine$State;)V

    .line 1202
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v1, v4, :cond_c0

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v4, :cond_ea

    :cond_c0
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v4, v5, :cond_ea

    .line 1203
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->zeroOutput()V

    .line 1204
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->stopDevice()V

    .line 1205
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->finishToReport()V

    .line 1206
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBeep;->cancel()V

    .line 1207
    const-string v4, "auto"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "end "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    :cond_ea
    if-eq v0, v1, :cond_41

    .line 1210
    const-string v4, "auto"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \u2192 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v4, :cond_168

    .line 1212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041f\u0443\u043b\u0441\u044a\u0442 \u0441\u0442\u0438\u0433\u043d\u0430 \u0442\u0430\u0432\u0430\u043d\u0430 ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrCap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") \u2014 \u0438\u043c\u043f\u0443\u043b\u0441\u0438\u0442\u0435 \u0441\u043f\u0438\u0440\u0430\u0442, \u0434\u043e\u043a\u0430\u0442\u043e \u0441\u043f\u0430\u0434\u043d\u0435"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HR at the ceiling ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v4, v4, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrCap:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ") \u2014 pulses stop until it drops"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    goto/16 :goto_41

    .line 1187
    :cond_156
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v4, :cond_9d

    .line 1188
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->onCountdown(J)V

    goto/16 :goto_9d

    .line 1198
    :cond_15f
    sget-boolean v4, Lcom/isaigu/gymapp/ai/AutoSession;->zeroed:Z

    if-nez v4, :cond_b5

    .line 1199
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->zeroOutput()V

    goto/16 :goto_b5

    .line 1214
    :cond_168
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v4, :cond_41

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v0, :cond_41

    .line 1215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041f\u0443\u043b\u0441\u044a\u0442 \u0441\u043f\u0430\u0434\u043d\u0430 \u2014 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0430\u0432\u0430\u043c\u0435 \u043f\u043e-\u043c\u0435\u043a\u043e ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getCurrent()Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v0

    if-eqz v0, :cond_1ac

    .line 1216
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->getReentry()D

    move-result-wide v6

    mul-double/2addr v0, v6

    .line 1215
    :goto_18c
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " %, +10 % \u043d\u0430 \u0438\u043c\u043f\u0443\u043b\u0441)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HR is down \u2014 resuming softer (+10 % per pulse)"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8, v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    .line 1218
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->show()V

    goto/16 :goto_41

    .line 1216
    :cond_1ac
    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    goto :goto_18c

    .line 1176
    :catch_1af
    move-exception v0

    goto/16 :goto_73
.end method

.method private static tickEnergy(JLcom/isaigu/gymapp/ai/AutoEngine$State;)V
    .registers 13

    .prologue
    .line 1258
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-nez v0, :cond_9

    .line 1310
    :cond_8
    :goto_8
    return-void

    .line 1261
    :cond_9
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq p2, v0, :cond_11

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne p2, v0, :cond_22

    .line 1262
    :cond_11
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AiEnergy;->exerciseMet:D

    .line 1263
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoSession;->epocClosed:Z

    if-nez v0, :cond_8

    .line 1264
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AutoSession;->epocClosed:Z

    .line 1265
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEnergy;->closeEpoc()V

    goto :goto_8

    .line 1269
    :cond_22
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0, p0, p1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getHr(J)I

    move-result v0

    int-to-double v4, v0

    .line 1270
    const/4 v0, 0x0

    .line 1271
    const-wide/16 v2, 0x0

    .line 1272
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leaderRow()Lcom/isaigu/gymapp/ai/AutoSession$Row;

    move-result-object v6

    .line 1273
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne p2, v1, :cond_10d

    if-eqz v6, :cond_10d

    iget-object v1, v6, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-nez v1, :cond_10d

    iget v1, v6, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    if-lez v1, :cond_10d

    iget-object v1, v6, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v1, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_10d

    .line 1274
    iget-object v1, v6, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoSession;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 1275
    if-eqz v2, :cond_fe

    iget v1, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    if-lez v1, :cond_fe

    .line 1276
    iget-object v1, v6, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v1, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v3, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    .line 1277
    if-nez v3, :cond_60

    iget-boolean v1, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v1, :cond_fe

    iget v1, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    if-lez v1, :cond_fe

    .line 1278
    :cond_60
    new-instance v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;-><init>()V

    .line 1279
    iget-object v0, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v0, :cond_7b

    iget-object v0, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v0, :cond_7b

    .line 1280
    iget-object v0, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->channels:[I

    .line 1282
    :cond_7b
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    if-eqz v0, :cond_8d

    .line 1283
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->disabled:[Z

    .line 1285
    :cond_8d
    iget v0, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    iput v0, v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->hz:I

    .line 1286
    iget v0, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    iput v0, v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pwUs:I

    .line 1287
    if-eqz v3, :cond_e1

    .line 1288
    iget v0, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-double v2, v0

    iput-wide v2, v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->strengthPct:D

    .line 1289
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->onShare:D

    .line 1297
    :goto_a0
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEnergy;->CH_MASS:[D

    array-length v0, v0

    new-array v0, v0, [D

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->toleratedCharge:[D

    .line 1298
    const/4 v0, 0x0

    :goto_a8
    iget-object v2, v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->toleratedCharge:[D

    array-length v2, v2

    if-ge v0, v2, :cond_fd

    .line 1299
    iget-object v2, v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->channels:[I

    if-eqz v2, :cond_f3

    iget-object v2, v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->channels:[I

    array-length v2, v2

    if-ge v0, v2, :cond_f3

    iget-object v2, v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->channels:[I

    aget v2, v2, v0

    int-to-double v2, v2

    .line 1300
    :goto_bb
    iget-object v7, v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->toleratedCharge:[D

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double v8, v2, v8

    .line 1301
    const/4 v2, 0x4

    if-ne v0, v2, :cond_f6

    sget v2, Lcom/isaigu/gymapp/ai/AutoSession;->calPw:I

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiEnergy;->armsSent(I)D

    move-result-wide v2

    :goto_ca
    mul-double/2addr v2, v8

    iget v8, v6, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    int-to-double v8, v8

    mul-double/2addr v2, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v8

    sget v8, Lcom/isaigu/gymapp/ai/AutoSession;->calPw:I

    int-to-double v8, v8

    mul-double/2addr v2, v8

    const-wide v8, 0x4075e00000000000L    # 350.0

    div-double/2addr v2, v8

    aput-wide v2, v7, v0

    .line 1298
    add-int/lit8 v0, v0, 0x1

    goto :goto_a8

    .line 1291
    :cond_e1
    const-wide/16 v8, 0x0

    iput-wide v8, v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->onShare:D

    .line 1292
    iget v0, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    iput v0, v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pauseHz:I

    .line 1293
    iget v0, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    int-to-double v2, v0

    iput-wide v2, v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pauseStrengthPct:D

    .line 1294
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pauseShare:D

    goto :goto_a0

    .line 1299
    :cond_f3
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    goto :goto_bb

    .line 1301
    :cond_f6
    sget v2, Lcom/isaigu/gymapp/ai/AutoSession;->calPw:I

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiEnergy;->channelSent(II)D

    move-result-wide v2

    goto :goto_ca

    :cond_fd
    move-object v0, v1

    .line 1306
    :cond_fe
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->currentMet()D

    move-result-wide v2

    move-object v6, v0

    .line 1308
    :goto_103
    sput-wide v2, Lcom/isaigu/gymapp/ai/AiEnergy;->exerciseMet:D

    .line 1309
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    move-wide v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/isaigu/gymapp/ai/AiEnergy;->tick(JDLcom/isaigu/gymapp/ai/AiEnergy$Stim;)V

    goto/16 :goto_8

    :cond_10d
    move-object v6, v0

    goto :goto_103
.end method

.method static tip(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6

    .prologue
    .line 244
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoSession;->isNewTip(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 249
    :goto_6
    return-void

    .line 247
    :cond_7
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoSession;->markTip(Ljava/lang/String;)V

    .line 248
    const/4 v0, 0x0

    invoke-static {p1, v0, p2, p3}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    goto :goto_6
.end method

.method public static tipsOn()Z
    .registers 1

    .prologue
    .line 219
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoSession;->tipsOn:Z

    return v0
.end method

.method public static togglePause()V
    .registers 4

    .prologue
    .line 774
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-nez v0, :cond_5

    .line 790
    :cond_4
    :goto_4
    return-void

    .line 777
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 778
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v2

    .line 779
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v3, :cond_27

    .line 780
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->cancelCountdown(J)V

    .line 781
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBeep;->cancel()V

    .line 782
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->goNow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 783
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->beepsForGoMs:J

    goto :goto_4

    .line 784
    :cond_27
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v2, v3, :cond_33

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->canResume()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 785
    :cond_33
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->startNext()Z

    goto :goto_4

    .line 786
    :cond_37
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v3, :cond_4

    .line 787
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->userPause(J)V

    .line 788
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->zeroOutput()V

    goto :goto_4
.end method

.method static waitReason(J)Ljava/lang/String;
    .registers 6

    .prologue
    .line 926
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0, p0, p1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestLeftS(J)I

    move-result v0

    .line 927
    if-lez v0, :cond_59

    .line 928
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041e\u0449\u0435 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " s \u043f\u043e\u0447\u0438\u0432\u043a\u0430. \u0421\u043b\u0435\u0434 \u0442\u0430\u0437\u0438 \u0441\u0435\u0440\u0438\u044f \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0442\u0440\u044f\u0431\u0432\u0430 ~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestMinS()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " s, \u0437\u0430 \u0434\u0430 \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0442 \u0435\u043d\u0435\u0440\u0433\u0438\u044f\u0442\u0430 \u0441\u0438 (\u0444\u043e\u0441\u0444\u043e\u043a\u0440\u0435\u0430\u0442\u0438\u043d) \u2014 \u0438\u043d\u0430\u0447\u0435 \u0441\u043b\u0435\u0434\u0432\u0430\u0449\u0430\u0442\u0430 \u0441\u0435\u0440\u0438\u044f \u0442\u0440\u044a\u0433\u0432\u0430 \u0443\u043c\u043e\u0440\u0435\u043d\u0430, \u0441\u0438\u043b\u0430\u0442\u0430 \u043f\u0430\u0434\u0430 \u0438 \u043d\u0430\u0442\u043e\u0432\u0430\u0440\u0432\u0430\u043d\u0435\u0442\u043e \u0441\u0442\u0430\u0432\u0430 \u043e\u043f\u0430\u0441\u043d\u043e."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " s more rest. After this set the muscles need ~"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    .line 931
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestMinS()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " s to refill their energy (phosphocreatine) \u2014 otherwise the next set starts tired."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 928
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 939
    :goto_58
    return-object v0

    .line 934
    :cond_59
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0, p0, p1}, Lcom/isaigu/gymapp/ai/AutoEngine;->isRestHrHigh(J)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041f\u0443\u043b\u0441\u044a\u0442 \u0435 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v1, p0, p1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getHr(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u2014 \u0441\u043b\u0435\u0434\u0432\u0430\u0449\u0430\u0442\u0430 \u0441\u0435\u0440\u0438\u044f \u0442\u0440\u044a\u0433\u0432\u0430 \u043f\u0440\u0438 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestHrLimit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u0438\u043b\u0438 \u043f\u043e-\u043c\u0430\u043b\u043a\u043e. \u041f\u043e\u0447\u0438\u043d\u0438 \u043e\u0449\u0435 \u043c\u0430\u043b\u043a\u043e."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HR is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    .line 937
    invoke-virtual {v2, p0, p1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getHr(J)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u2014 the next set starts at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestHrLimit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or less."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 935
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_58

    .line 939
    :cond_c4
    const-string v0, ""

    goto :goto_58
.end method

.method private static who(Lcom/isaigu/gymapp/ai/AutoSession$Row;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 1889
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_c

    .line 1890
    const-string v0, ""

    .line 1892
    :goto_b
    return-object v0

    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2a

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->name:Ljava/lang/String;

    :goto_1b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0423\u0447\u0430\u0441\u0442\u043d\u0438\u043a "

    const-string v3, "Participant "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b
.end method

.method private static windowText(Lcom/isaigu/gymapp/ai/AutoModel$Phase;Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v8, 0x1

    .line 1913
    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->base:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    if-nez v0, :cond_c

    .line 1914
    :cond_9
    const-string v0, ""

    .line 1935
    :goto_b
    return-object v0

    .line 1916
    :cond_c
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    .line 1917
    iget-object v2, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->base:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 1918
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1919
    iget-boolean v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Window;->hz:Z

    if-eqz v0, :cond_4b

    .line 1920
    iget v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    int-to-double v4, v0

    iget-wide v6, v1, Lcom/isaigu/gymapp/ai/AutoModel$Window;->hzShare:D

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v0, v4

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1921
    iget v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    sub-int/2addr v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u2013"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AutoLimits;->hzMax(Lcom/isaigu/gymapp/ai/AutoModel$Plan;)I

    move-result v5

    iget v6, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    add-int/2addr v0, v6

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " Hz"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1923
    :cond_4b
    iget-boolean v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Window;->on:Z

    if-eqz v0, :cond_8c

    .line 1924
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_106

    const-string v0, " \u00b7 "

    :goto_57
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "ON "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    iget v5, v1, Lcom/isaigu/gymapp/ai/AutoModel$Window;->onMinus:I

    sub-int/2addr v4, v5

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\u2013"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    iget v5, v1, Lcom/isaigu/gymapp/ai/AutoModel$Window;->onPlus:I

    add-int/2addr v4, v5

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    .line 1925
    invoke-static {v5, p0}, Lcom/isaigu/gymapp/ai/AutoLimits;->onMax(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Phase;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " s"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1927
    :cond_8c
    iget-boolean v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Window;->off:Z

    if-eqz v0, :cond_c9

    .line 1928
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_10a

    const-string v0, " \u00b7 "

    :goto_98
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\u043f\u0430\u0443\u0437\u0430 "

    const-string v5, "pause "

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    iget v5, v1, Lcom/isaigu/gymapp/ai/AutoModel$Window;->offMinus:I

    sub-int/2addr v4, v5

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\u2013"

    .line 1929
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    iget v5, v1, Lcom/isaigu/gymapp/ai/AutoModel$Window;->offPlus:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " s"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1931
    :cond_c9
    iget-boolean v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Window;->pw:Z

    if-eqz v0, :cond_100

    .line 1932
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_10d

    const-string v0, " \u00b7 "

    :goto_d5
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    iget v5, v1, Lcom/isaigu/gymapp/ai/AutoModel$Window;->pwDelta:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\u2013"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    .line 1933
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AutoLimits;->pwMax(I)I

    move-result v4

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Window;->pwDelta:I

    add-int/2addr v1, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b5s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1935
    :cond_100
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b

    .line 1924
    :cond_106
    const-string v0, ""

    goto/16 :goto_57

    .line 1928
    :cond_10a
    const-string v0, ""

    goto :goto_98

    .line 1932
    :cond_10d
    const-string v0, ""

    goto :goto_d5
.end method

.method private static writeRows(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)V
    .registers 14

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1468
    if-nez p0, :cond_5

    .line 1514
    :cond_4
    :goto_4
    return-void

    .line 1471
    :cond_5
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->rampUpMs:I

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->rampDownMs:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiRamp;->set(II)V

    .line 1472
    sput-object p0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 1473
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_14
    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 1474
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoSession;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v5

    .line 1475
    if-eqz v5, :cond_14

    .line 1478
    invoke-static {v0, p0, p1}, Lcom/isaigu/gymapp/ai/AutoSession;->rowStrength(Lcom/isaigu/gymapp/ai/AutoSession$Row;Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)I

    move-result v6

    .line 1479
    invoke-static {v0, p0}, Lcom/isaigu/gymapp/ai/AutoSession;->rowZones(Lcom/isaigu/gymapp/ai/AutoSession$Row;Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[I

    move-result-object v7

    .line 1480
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    iput v1, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 1481
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pwUs:I

    iput v1, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 1482
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 1483
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->offS:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 1484
    iput v6, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 1485
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseHz:I

    if-lez v1, :cond_92

    if-lez v6, :cond_92

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiSession;->pauseAllowed(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v1

    if-eqz v1, :cond_92

    move v1, v2

    .line 1486
    :goto_59
    iput-boolean v1, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 1487
    if-eqz v1, :cond_70

    .line 1488
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseHz:I

    iput v1, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    .line 1489
    int-to-double v8, v6

    iget-wide v10, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseSigma:D

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v1, v8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 1491
    :cond_70
    iget-object v1, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v1, :cond_94

    iget-object v1, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v1, :cond_94

    move v1, v3

    .line 1492
    :goto_7b
    array-length v8, v7

    iget-object v9, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v9, v9, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v9, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-ge v1, v8, :cond_94

    .line 1493
    iget-object v8, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v8, v8, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    aget v9, v7, v1

    aput v9, v8, v1

    .line 1492
    add-int/lit8 v1, v1, 0x1

    goto :goto_7b

    :cond_92
    move v1, v3

    .line 1485
    goto :goto_59

    .line 1496
    :cond_94
    iput v6, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenStrength:I

    .line 1497
    iput-object v7, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenZones:[I

    .line 1498
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v1, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_ae

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v1, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-eqz v1, :cond_ae

    .line 1499
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v1, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v5, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iput v5, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 1502
    :cond_ae
    :try_start_ae
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V
    :try_end_b3
    .catch Ljava/lang/Throwable; {:try_start_ae .. :try_end_b3} :catch_b5

    goto/16 :goto_14

    .line 1503
    :catch_b5
    move-exception v0

    .line 1504
    const-string v1, "auto"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onParamsChange: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 1508
    :cond_d0
    :try_start_d0
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->resetApplied()V
    :try_end_d3
    .catch Ljava/lang/Throwable; {:try_start_d0 .. :try_end_d3} :catch_de

    .line 1511
    :goto_d3
    if-nez p1, :cond_4

    .line 1512
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->feedLive(J)V

    goto/16 :goto_4

    .line 1509
    :catch_de
    move-exception v0

    goto :goto_d3
.end method

.method private static zeroOutput()V
    .registers 7

    .prologue
    const/4 v6, 0x0

    .line 1517
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AutoSession;->zeroed:Z

    .line 1518
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_4b

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-object v1, v0

    .line 1519
    :goto_b
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 1520
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AutoSession;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 1521
    if-eqz v3, :cond_11

    .line 1524
    iput v6, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 1525
    iput-boolean v6, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 1526
    iput v6, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenStrength:I

    .line 1528
    :try_start_2b
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_30} :catch_31

    goto :goto_11

    .line 1529
    :catch_31
    move-exception v0

    .line 1530
    const-string v3, "auto"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "zero: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 1518
    :cond_4b
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->calibrationCmd()Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v0

    move-object v1, v0

    goto :goto_b

    .line 1533
    :cond_51
    sput-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 1534
    return-void
.end method

.method private static zoneReason(IIILcom/isaigu/gymapp/ai/AutoModel$Plan;[I)Ljava/lang/String;
    .registers 8

    .prologue
    .line 1897
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoCues;->zoneNames()[Ljava/lang/String;

    move-result-object v0

    .line 1898
    iget-object v1, p3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zoneLocked:[Z

    aget-boolean v1, v1, p0

    if-eqz v1, :cond_30

    .line 1899
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, v0, p0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u0435 \u0437\u0430\u043a\u043b\u044e\u0447\u0435\u043d\u0430 \u043d\u0430 "

    const-string v2, " is locked at "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " %"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1908
    :goto_2f
    return-object v0

    .line 1901
    :cond_30
    iget-object v1, p3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zoneMax:[I

    aget v1, v1, p0

    if-le p1, v1, :cond_60

    .line 1902
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, v0, p0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u043d\u0430\u0439-\u043c\u043d\u043e\u0433\u043e "

    const-string v2, " at most "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zoneMax:[I

    aget v1, v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " %"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    .line 1904
    :cond_60
    if-eqz p4, :cond_bd

    aget v1, p4, p0

    iget v2, p3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zoneDelta:I

    add-int/2addr v1, v2

    if-le p1, v1, :cond_bd

    aget v1, p4, p0

    iget v2, p3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zoneDelta:I

    add-int/2addr v1, v2

    iget-object v2, p3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zoneMax:[I

    aget v2, v2, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ne p2, v1, :cond_bd

    .line 1905
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, v0, p0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " % \u2014 \u043d\u0430\u0433\u043e\u0440\u0435 \u043d\u0430\u0439-\u043c\u043d\u043e\u0433\u043e +"

    const-string v2, " % \u2014 up at most +"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zoneDelta:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u043d\u0430\u0434 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430 ("

    const-string v2, " over the program ("

    .line 1906
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v1, p4, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2f

    .line 1908
    :cond_bd
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, v0, p0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " %"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2f
.end method
